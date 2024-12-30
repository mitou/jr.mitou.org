# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
require 'yaml'

class CustomChecks < ::HTMLProofer::Check
  BASE_PATH = '_site'

  def run
    current_filename = @runner.current_filename
    puts "\tchecking ... " + current_filename[5..].split('.').first

    check_meta_tags
    check_json_apis if valid_and_equal_to?(BASE_PATH + '/apis.html')
    check_deadlines if valid_and_equal_to?(BASE_PATH + '/guideline.html')
    check_yaml_data if valid_and_equal_to?(BASE_PATH + '/projects/index.html')
    check_navi_text if valid_and_equal_to?(BASE_PATH + '/projects/2024/qwet.html')
  end

  def valid_and_equal_to?(filename)
    # TODO: This should call add_failure() once at maximum but better than ignoring invalid filename.
    self.add_failure("No such file found: #{filename}") if not File.exist?(filename)
    self.add_failure("No redirect file: #{filename} is redirect file") if File.read(filename).include? 'redirect_to'
    @runner.current_filename == filename ? true : false
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

      add_failure("Invalid JSON format: #{json_path}") if not valid_json?(BASE_PATH + json_path)

      # If given JSON is valid, check columns in it
      responses  = JSON.load_file(BASE_PATH + json_path, symbolize_names: true)
      responses.map{|response| response[:thumbnail] }.compact.each do |thumbnail|
        thumbnail.gsub!('https://jr.mitou.org', BASE_PATH)

        add_failure(
          <<~ERROR_MESSAGE
            No such thumbnail: #{thumbnail}
            \s API Endpoint: #{BASE_PATH + json_path}
          ERROR_MESSAGE
        ) if not File.exist? thumbnail
      end
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

  # Check Creators/Projects YAML data and make CI failed if broken
  # e.g.: https://github.com/mitou/jr.mitou.org/pull/206
  def check_yaml_data
    projects    = YAML.load_file("_data/projects.yml", symbolize_names: true)
    creator_ids = YAML.load_file("_data/creators.yml", symbolize_names: true).map{ |creator| creator[:id] }

    projects.each do |project|
      add_failure(
        <<~ERROR_MESSAGE
          The following creator ID is NOT found in _data/creators.yml
            \s Project ID: #{project[:id]}
            \s Creator ID: #{project[:creator_ids]}
        ERROR_MESSAGE
      ) if (project[:creator_ids] & creator_ids).empty?
    end
  end

  # Check if navigation text in each PJ page fails to be encoded. (文字化け)
  # Fetched sample PJ page: https://jr.mitou.org/projects/2024/qwet
  def check_navi_text
    projects  = YAML.load_file("_data/projects.yml", symbolize_names: true).select{ it[:year] == 2024 }
    prev_text = @html.css('nav > p.prev').text
    next_text = @html.css('nav > p.next').text

    add_failure("Failed to render navigation text: #{prev_text}") unless prev_text.include? projects[1][:title]
    add_failure("Failed to render navigation text: #{next_text}") unless next_text.include? projects[1][:title]
  end
end
