# _data/application_links.yml に書かれたリンクが、実際に PDF の中から見つかることを検証する。
#
# PDF ビューア (_includes/render-pdf-by-pdfjs.html) は、YAML の URL を PDF のテキストから
# 探して、その位置にリンクを重ねる。つまり「YAML の URL が PDF のテキストと照合できること」が
# リンクを貼れる前提条件になる。ここが崩れると、リンクは黙って貼られなくなる。
#
# 照合は JavaScript 側と同じ正規化ルールで行う (normalize を参照)。
#
#   bundle exec rake verify_application_links

require 'open3'
require 'yaml'

DATA_FILE = '_data/application_links.yml'
PDF_DIR   = 'applications'

# JavaScript 側 (normalizeForMatch) と同じ正規化ルール。
#
#   - 空白と改行を除去する: PDF は行末で URL を折り返すことがあり、
#     さらに URL の途中に空白が入っていることもある (fudey)
#   - 結合文字 (U+0300〜U+036F) を除去する: アンダースコアが結合下線として
#     埋め込まれていることがある (abecobe)
def normalize(str)
  str.gsub(/[[:space:]]/, '').gsub(/[\u{0300}-\u{036F}]/, '')
end

def page_text(pdf, page)
  text, status = Open3.capture2('pdftotext', '-layout', '-f', page.to_s, '-l', page.to_s, pdf, '-')
  raise "pdftotext に失敗しました: #{pdf} p#{page}" unless status.success?

  normalize(text)
end

entries = YAML.load_file(DATA_FILE)
failures = []
checked = 0

entries.each do |entry|
  id  = entry['project_id']
  pdf = File.join(PDF_DIR, "#{id}.pdf")

  unless File.exist?(pdf)
    failures << "#{id}: PDF が見つかりません (#{pdf})"
    next
  end

  entry['links'].each do |link|
    page = link['page']
    url  = link['url']
    key  = normalize(link['match'] || url)
    checked += 1

    unless url.start_with?('http://', 'https://')
      failures << "#{id} p#{page}: URL が http(s) で始まっていません: #{url}"
      next
    end

    unless page_text(pdf, page).include?(key)
      failures << "#{id} p#{page}: PDF のテキストから見つかりません\n" \
                  "    url:   #{url}\n" \
                  "    照合キー: #{link['match'] || url}"
    end
  end
end

puts "\n#{checked} 件のリンクを #{entries.size} 本の PDF で検証しました。"

if failures.empty?
  puts "すべて PDF のテキストと照合できました。"
else
  puts "\n照合できなかったリンクが #{failures.size} 件あります:\n\n"
  failures.each { |f| puts "  - #{f}" }
  puts "\nPDF を目視して、_data/application_links.yml の url または match を修正してください。"
  abort
end
