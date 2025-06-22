task default: 'test'

desc 'Upsert individual project page by project data'
task(:upsert_project_pages_by_data) { ruby "tasks/upsert_project_pages_by_data.rb" }

desc 'Upsert individual project page by project data in English'
task(:upsert_project_pages_by_data_en) { ruby "tasks/upsert_project_pages_by_data_en.rb" }

desc 'Upsert project application by project data'
task(:upsert_project_samples_by_data) { ruby "tasks/upsert_project_samples_by_data.rb" }

desc 'Translate given-year projects with LLM'
task(:convert_ja2en_by_llm) { ruby "tasks/convert_ja2en_by_llm.rb" }

desc 'Upsert news from PR TIMES RSS feed'
task(:upsert_prtimes_news) { ruby "tasks/upsert_prtimes_news.rb" }

desc 'Build the site with Jekyll (flushes cache via clean)'
task(build: [:clean]) { system 'bundle exec jekyll build' unless ENV['SKIP_BUILD'] == 'true' }

desc 'Clean Jekyll cache and build files'
task(:clean) { system 'bundle exec jekyll clean' unless ENV['SKIP_BUILD'] == 'true' }

# cf. GitHub - gjtorikian/html-proofer
# https://github.com/gjtorikian/html-proofer

require 'html-proofer'
task test: [:build] do
  require './tests/custom_checks'
  options = {
    checks: ['Links', 'Images', 'Scripts', 'OpenGraph', 'Favicon', 'CustomChecks'],
    allow_hash_href:  true,
    disable_external: ENV['TEST_EXTERNAL_LINKS'] != 'true',
    enforce_https:    true,

    # NOTE: Ignore file, URL, and response as follows
    ignore_files: [
      /google(.*)\.html/,
    ],
    ignore_urls: [
      # Ignore not-supporting-HTTPS domains and URL params for specific browsers (Chrome).
      /ecomaki.com/,
      /iql-lab.de/,
      /nhiro.org/,
      /meti.go.jp/,
      /#:~:text=/,
      /twitter.com/,  # Skip testing Twitter URLs
      /x.com/,        # Skip testing X.com's URLs
    ],
    #ignore_status_codes: [0, 500, 999],
  }

  HTMLProofer.check_directory('_site', options).run
end
