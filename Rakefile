task default: 'test'

desc 'Upsert individual project page by project data'
task(:upsert_project_pages_by_data) { ruby "_tasks/upsert_project_pages_by_data.rb" }

desc 'Upsert individual project page by project data in English'
task(:upsert_project_pages_by_data_en) { ruby "_tasks/upsert_project_pages_by_data_en.rb" }

desc 'Upsert project application by project data'
task(:upsert_project_samples_by_data) { ruby "_tasks/upsert_project_samples_by_data.rb" }

desc 'Translate given-year projects with LLM'
task(:convert_ja2en_by_llm) { ruby "_tasks/convert_ja2en_by_llm.rb" }

desc 'Extract URL candidates from application PDFs (draft for _data/application_links.yml)'
task(:extract_application_links) { ruby "_tasks/extract_application_links.rb" }

desc 'Verify that links in _data/application_links.yml are found in the PDFs'
task(:verify_application_links) { ruby "_tests/verify_application_links.rb" }

desc 'Build the site with Jekyll (flushes cache via clean)'
task(build: [:clean]) { system 'bundle exec jekyll build' unless ENV['SKIP_BUILD'] == 'true' }

desc 'Clean Jekyll cache and build files'
task(:clean) { system 'bundle exec jekyll clean' unless ENV['SKIP_BUILD'] == 'true' }

# 参考: GitHub - gjtorikian/html-proofer
# https://github.com/gjtorikian/html-proofer

require 'html-proofer'
task test: [:build] do
  require './_tests/custom_checks'
  options = {
    checks: ['Links', 'Images', 'Scripts', 'OpenGraph', 'Favicon', 'CustomChecks', 'TrailingSlash', 'VideoThumbnails'],
    allow_hash_href:  true,
    disable_external: ENV['TEST_EXTERNAL_LINKS'] != 'true',
    enforce_https:    true,

    # NOTE: 以下のファイル・URL・レスポンスは検査しない
    ignore_files: [
      /google(.*)\.html/,
    ],
    ignore_urls: [
      # HTTPS 非対応のドメインと、特定ブラウザ (Chrome) 向けの URL パラメータは検査しない
      /ecomaki.com/,
      /iql-lab.de/,
      /nhiro.org/,
      /meti.go.jp/,
      /#:~:text=/,
      /twitter.com/,  # Twitter の URL は検査しない
      /x.com/,        # X.com の URL は検査しない
      %r{/mentors/#}, # メンターページへのアンカーリンクは検査しない
    ],
    #ignore_status_codes: [0, 500, 999],
  }

  HTMLProofer.check_directory('_site', options).run
end
