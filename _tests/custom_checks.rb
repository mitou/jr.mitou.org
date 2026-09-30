# テストを足すときは、次の 'Custom Tests' の節を参照 ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
require 'yaml'

# `rake test` は _config.yml でビルドするので、_site 内の絶対 URL はその `url` で始まる。
SITE_URL = YAML.load_file('_config.yml').fetch('url') # => 'https://jr.mitou.org'

class CustomChecks < ::HTMLProofer::Check
  BASE_PATH = '_site'

  def run
    current_filename = @runner.current_filename
    puts "\tchecking ... " + current_filename.delete_prefix('_site').split('.').first

    check_meta_tags
    check_json_apis      if valid_and_equal_to?(BASE_PATH + '/apis.html')
    check_deadlines      if valid_and_equal_to?(BASE_PATH + '/guideline.html')
    check_yaml_data      if valid_and_equal_to?(BASE_PATH + '/projects/index.html')
    check_navi_text      if valid_and_equal_to?(BASE_PATH + '/projects/2024/qwet.html')
    check_app_order      if valid_and_equal_to?(BASE_PATH + '/applications/abecobe.html')
    check_thumbnails     if valid_and_equal_to?(BASE_PATH + '/projects/showcase.html')
    check_search_results if valid_and_equal_to?(BASE_PATH + '/projects/search.html')
  end

  def valid_and_equal_to?(filename)
    # MEMO: 同じエラーを複数回報告することがあるが、コードをシンプルで明快に保つためこうしている。
    if not File.exist?(filename)
      add_failure("No such page found: #{filename}")
      return false
    end

    @runner.current_filename == filename ? true : false
  end

  # meta タグがデータを正しく描画しているかチェックする
  # 例: https://jr.mitou.org/stats
  def check_meta_tags
    @html.css('head > meta').each do |node|
      if node.attribute('content') &&
         node.attribute('content').value.include?('site.data')

        add_failure("Failed to render Jekyll data: #{node.attribute('content')}")
      end
    end
  end

  # https://jr.mitou.org/apis から JSON API の URL を取得し、
  # すべてが正しい JSON を返すかチェックする。
  def check_json_apis
    @html.css('#index > ul > li').each do |node|
      json_path = node.at_css('a.json').attribute('href').value
      # 例: => /projects.json

      add_failure("Invalid JSON format: #{json_path}") if not valid_json?(BASE_PATH + json_path)

      # JSON が正しければ、その中の列をチェックする。
      # 配列の JSON と配列でない JSON の両方を扱う:
      # - ハッシュの配列の例: https://jr.mitou.org/projects/2025.json
      # - 単一のハッシュの例: https://jr.mitou.org/projects/2025/uminavi.json
      responses = Array(JSON.load_file(BASE_PATH + json_path, symbolize_names: true))
      responses.map{ |item| item[:thumbnail] if item.is_a?(Hash) }.compact.each do |thumbnail|
        # NOTE: `rake test` は `bundle exec jekyll build` を使う (--config の上書きなし) ため、
        #       `site.url` は常に 'https://jr.mitou.org' で、サムネイルは絶対 URL で格納される。
        #       File.exist? でチェックできるよう、ドメインを BASE_PATH に置き換えて
        #       ローカルのファイルパスにする。
        thumbnail.gsub!(SITE_URL, BASE_PATH)

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

  # 選考スケジュールが時系列順になっているかチェックする:
  # 例: https://github.com/mitou/jr.mitou.org/pull/180
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

  # クリエータ／プロジェクトの YAML データをチェックし、壊れていれば CI を落とす
  # 例: https://github.com/mitou/jr.mitou.org/pull/206
  #
  # 各クリエータは、ちょうど 1 つのプロジェクトに属する。これを双方向に検査する:
  # - projects.yml: `creator_ids` のすべての ID が creators.yml に存在し、
  #   各クリエータを参照するプロジェクトは 1 つだけである。
  # - creators.yml: クリエータ ID が重複せず、`project_id` が指すプロジェクトの
  #   `creator_ids` にそのクリエータが含まれている。
  #   (例: プロジェクトの改名後に `project_id` が古い ID のまま残っている)
  def check_yaml_data
    projects    = YAML.load_file("_data/projects.yml", symbolize_names: true)
    creators    = YAML.load_file("_data/creators.yml", symbolize_names: true)
    creator_ids = creators.map{ |creator| creator[:id] }
    referred    = projects.flat_map{ |project| project[:creator_ids].to_a }.tally

    creator_ids.tally.select{ |_, count| count > 1 }.each_key do |creator_id|
      add_failure("Duplicated creator ID in _data/creators.yml: #{creator_id}")
    end

    projects.each do |project|
      missing_ids = project[:creator_ids].to_a - creator_ids
      add_failure(
        <<~ERROR_MESSAGE
          The following creator ID is NOT found in _data/creators.yml
            \s Project ID: #{project[:id]}
            \s Creator ID: #{missing_ids}
        ERROR_MESSAGE
      ) unless missing_ids.empty?
    end

    creators.each do |creator|
      count = referred.fetch(creator[:id], 0)
      add_failure(
        <<~ERROR_MESSAGE
          The following creator is referred to by #{count} projects (must be 1) in _data/projects.yml
            \s Creator ID: #{creator[:id]}
        ERROR_MESSAGE
      ) unless count == 1

      project = projects.find{ |pj| pj[:id] == creator[:project_id] }
      add_failure(
        <<~ERROR_MESSAGE
          The following creator's project_id does NOT match creator_ids in _data/projects.yml
            \s Creator ID: #{creator[:id]}
            \s Project ID: #{creator[:project_id]}
        ERROR_MESSAGE
      ) unless project && project[:creator_ids].to_a.include?(creator[:id])
    end
  end

  # 各 PJ ページのナビゲーションの文字列が文字化けしていないかチェックする
  # 対象とするサンプルの PJ ページ: https://jr.mitou.org/projects/2024/qwet
  def check_navi_text
    projects   = YAML.load_file("_data/projects.yml", symbolize_names: true).select { |project| project[:year] == 2024 }
    prev_text  = @html.css('nav > p.prev').text.strip.lines.last.strip[0..-4]
    next_text  = @html.css('nav > p.next').text.strip.lines.last.strip[0..-4]
    prev_title = projects[-1][:title]
    next_title = projects[ 1][:title]

    add_failure("Unmatched nav text and title:\n\t#{prev_text}\n\t#{prev_title}") unless prev_title.start_with? prev_text
    add_failure("Unmatched nav text and title:\n\t#{next_text}\n\t#{next_title}") unless next_title.start_with? next_text
  end

  # /projects.json のサムネイルのパスが、すべて実在するファイルかチェックする
  def check_thumbnails
    JSON.load_file(BASE_PATH + '/projects.json', symbolize_names: true).each do |project|
      # NOTE: `rake test` は `bundle exec jekyll build` を使う (--config の上書きなし) ため、
      #       `site.url` は常に 'https://jr.mitou.org' で、サムネイルは絶対 URL で格納される。
      #       File.exist? でチェックできるよう、ドメインを BASE_PATH に置き換えて
      #       ローカルのファイルパスにする。
      thumbnail = project[:thumbnail].gsub(SITE_URL, BASE_PATH)
      add_failure(
        <<~ERROR_MESSAGE
          No such thumbnail: #{thumbnail}
            \s Project: #{project[:permalink]}
        ERROR_MESSAGE
      ) unless File.exist?(thumbnail)
    end
  end

  # 提案書サンプルのページに、正しい Next/Prev のナビゲーションリンクがあるかチェックする。
  # ナビゲーションリンクは次のページと同じ順序になるべき: https://jr.mitou.org/applications/#sample
  def check_app_order
    sample_ids = YAML.load_file("_data/applications.yml", symbolize_names: true)
      .select { |application| application[:type] == 'sample' }
      .map    { |application| application[:project_id] }.reverse

    current_id = sample_ids.first # => 1 つ目の提案書サンプル (abecobe)
    prev_id    = @html.css('nav > p.prev > a[href]')[0].attribute_nodes[0].value
    next_id    = @html.css('nav > p.next > a[href]')[0].attribute_nodes[0].value

    add_failure(
      <<~ERROR_MESSAGE
        The 1st sample application (#{sample_ids[0]}) should have following nav links:
          \s current_id: #{current_id}

          \s prev_id: #{prev_id}
          \s correct: #{sample_ids[1]}

          \s next_id: #{next_id}
          \s correct: #{sample_ids[-1]}
      ERROR_MESSAGE
    ) unless sample_ids[1] == prev_id and sample_ids[-1] == next_id
  end

  # ?q=Web で検索したときに、無関係なプロジェクト UmiNavi が出ないことをチェックする。
  #
  # 2 つのアサーション:
  # 1. 全フィールドを検索する (修正前の壊れた挙動) と UmiNavi が出る。
  #    バグが起きる状況がデータ上まだ存在することを確認する。
  #    これが失敗したらメンターのプロフィールが変わったので、このテストを更新する。
  # 2. searchTerms のフィールドだけを検索する (修正後の挙動) と UmiNavi が出ない。
  #    回帰防止: searchTerms のロジックが元に戻ったり壊れたりすると失敗する。
  def check_search_results
    query    = 'Web'
    projects = JSON.load_file(BASE_PATH + '/projects.json', symbolize_names: true)

    # 1. 全フィールドの検索 (修正前の壊れた挙動を再現)
    all_field_results = projects.select do |project|
      project.any? { |_k, v| v.to_s.downcase.include?(query.downcase) }
    end
    add_failure(
      "Expected UmiNavi to appear when searching ALL fields for '?q=#{query}' " \
      "(mentor profile should contain '#{query}'). Update this test if mentor data changed."
    ) unless all_field_results.any? { |p| p[:id] == 'uminavi' }

    # 2. searchTerms に絞った検索 (修正後の挙動を再現)
    restricted_results = projects.select do |project|
      fields = [
        project[:title],
        project[:description],
        project[:year],
        project.dig(:mentor, :name_last),
        Array(project[:creators]).join(' ')
      ]
      fields.any? { |v| v.to_s.downcase.include?(query.downcase) }
    end
    add_failure(
      "Search for '?q=#{query}' should NOT return UmiNavi when using searchTerms"
    ) if restricted_results.any? { |p| p[:id] == 'uminavi' }
  end
end

# HTML-Proofer のカスタムチェック
class TrailingSlash < HTMLProofer::Check
  def run
    @html.css('a').each do |node|
      href = node['href']
      next if href.nil? || href.empty?

      # 外部リンクを除外（httpで始まるものをスキップ）
      next if href.start_with?('http://', 'https://')

      # アンカーがある場合はパス部分のみを取得、ない場合はhref全体
      base_path = href.include?('#') ? href.split('#').first : href

      # base_pathが空の場合（例：#anchorのみ）はスキップ
      next if base_path.nil? || base_path.empty?

      # trailing slashで終わる内部リンクをチェック
      next unless base_path.end_with?('/')

      # ルートパス（/）は除外
      next if base_path == '/'

      # 絶対パスの場合は _site からの相対パスに変換
      file_path = if base_path.start_with?('/')
                    File.join('_site', base_path, 'index.html')
                  else
                    # 相対パスの場合は現在のファイルからの相対位置を計算
                    current_dir = File.dirname(@path)
                    File.join(current_dir, base_path, 'index.html')
                  end

      # ファイルが存在しない場合はエラー
      unless File.exist?(file_path)
        add_failure("Link with trailing slash '#{href}' points to non-existent path (expected: #{file_path})", line: node.line)
      end
    end
  end
end

# HTML-Proofer は `<meta itemprop="thumbnailUrl">` (構造化データ) の画像 URL をチェックしない。
class VideoThumbnails < HTMLProofer::Check
  def run
    @html.css('meta[itemprop="thumbnailUrl"]').each do |node|
      url = node['content']
      next unless url.start_with?("#{SITE_URL}/")

      file_path = File.join('_site', url.delete_prefix(SITE_URL))
      add_failure("No such video thumbnail: #{url}", line: node.line) unless File.exist?(file_path)
    end
  end
end
