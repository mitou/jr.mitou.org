# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
class CustomChecks < ::HTMLProofer::Check
  BASE_URL  = '_site/'

  def run
    check_meta_tags
    check_json_apis if @runner.current_filename == '_site/api.html'
    check_deadlines if @runner.current_filename == '_site/guideline.html'
  end
end

# Check if meta tags render data correctly
# Example: https://jr.mitou.org/stats
def check_meta_tags
  @html.css('head > meta').each do |node|
    if node.attribute('content') &&
       node.attribute('content').value.include?('site.data')

      add_failure("Failed to render Jekyll data: #{node.attribute('content')}")
    end
  end
end

# Get JSON API URLs from https://jr.mitou.org/apis
# and check if they all return valid JSON data.
def check_json_apis
  @html.css('#index > ul > li').each do |node|
    json_path = node.at_css('a').attribute('href').value
    # e.g. => /projects.json

    next if valid_json?(BASE_URL + json_path)
    add_failure("Invalid JSON format: #{json_path}")
  end
end

def valid_json?(filename)
  JSON.load_file(filename)
  true
rescue JSON::ParserError, TypeError => e
  false
end

# Check proceeding schedule is correct in time order:
# e.g. https://github.com/mitou/jr.mitou.org/pull/180
def check_deadlines
  this_year     = Date.today.year
  prev_text     = ''
  prev_deadline = "#{this_year}-01-23"
  this_deadline = "#{this_year}-01-24"

  # Fetch heading nodes like "1. プロジェクトの計画を立てる"
  @html.search('h3').select{|n| n.text.start_with?(/\d\./)}.each do |node|
    month_and_day = node.children.last.text.scan(/\d+月\d+日/).last
    next if month_and_day.nil? # 〆切の無い heading は省略

    # 〆切のある heading の日付（後半の終端日）が時間軸に沿っているかチェックする
    # 例: "3. 応募フォームから提案書をアップロードする （2024年4月6日 23:59まで）"
    # 例: "6. 追加インタビュー期間 （2024年5月14日〜5月27日）"
    this_deadline = "#{this_year}-%02d-%02d" % month_and_day.scan(/\d+/)
    add_failure(
      <<~ERROR_MESSAGE
        This deadline would be inconsistent with previous one:
          \s prev_deadline: #{prev_text}
          \s this_deadline: #{node.text}
      ERROR_MESSAGE
    ) if prev_deadline > this_deadline
    prev_deadline = this_deadline
    prev_text     = node.text
  end
end
