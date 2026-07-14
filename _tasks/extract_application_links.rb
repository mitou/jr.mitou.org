# 提案書 PDF から URL 候補を抽出し、_data/application_links.yml の下書きを出力する。
#
# 出力はあくまで「下書き」であり、そのまま使ってはいけない。
# PDF に描かれた文字列は、行末で折り返されたり、途中に空白が入っていたりして、
# そのままでは正しい URL にならないことがある。誤ったリンクを貼ると、リンクが無い状態より
# 悪化する (ユーザーが URL を目で読んで開くという選択肢を奪い、黙って 404 へ飛ばす)。
#
# 出力を PDF と照らし合わせて確認し、_data/application_links.yml に手で反映すること。
# 反映後は次のコマンドで、PDF のテキストと照合できるか検証する。
#
#   bundle exec rake verify_application_links

require 'open3'

PDF_DIR = 'applications'

# 行末で折り返された URL を、次の行と連結する。
# 次の行が URL の続きに見える場合 (URL に使える文字だけで構成され、新しい URL で始まらない) に限る。
def urls_in_page(pdf, page)
  text, = Open3.capture2('pdftotext', '-layout', '-f', page.to_s, '-l', page.to_s, pdf, '-')
  lines = text.lines.map(&:chomp)

  lines.each_with_index.flat_map do |line, i|
    line.scan(%r{https?://\S+}).map do |url|
      continues_to_next_line = line.end_with?(url)
      next_line = lines[i + 1].to_s

      if continues_to_next_line && next_line.match?(%r{\A[\w%\-?=&/.#@]+\z}) && !next_line.match?(%r{\Ahttps?://})
        url += next_line
      end

      url.sub(/[.,)）」』]+\z/, '')
    end
  end
end

Dir.glob(File.join(PDF_DIR, '*.pdf')).sort.each do |pdf|
  project_id = File.basename(pdf, '.pdf')
  pages = `pdfinfo "#{pdf}"`[/Pages:\s+(\d+)/, 1].to_i
  links = (1..pages).flat_map { |page| urls_in_page(pdf, page).map { |url| [page, url] } }.uniq

  next if links.empty?

  puts "- project_id: #{project_id}"
  puts '  links:'
  links.each do |page, url|
    puts "    - page: #{page}"
    puts "      url: #{url}"
  end
end

warn "\n上記は下書きです。必ず PDF を目視して確認してから _data/application_links.yml に反映してください。"
