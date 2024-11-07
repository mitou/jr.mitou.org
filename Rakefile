task default: 'test'

# Upsert individual project page by data
desc 'Upsert project page by project data'
task :upsert_project_pages_by_data do
  ruby "tasks/upsert_project_pages_by_data.rb"
end

# Upsert individual project page by data in English
desc 'Upsert project page by project data in English'
task :upsert_project_pages_by_data_en do
  ruby "tasks/upsert_project_pages_by_data_en.rb"
end

# Translate given-year projects with LLM like OpenAI
desc 'Translate given-year projects with LLM'
task :convert_ja2en_by_llm do
  ruby "tasks/convert_ja2en_by_llm.rb"
end

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
      # Ignore domains that need to access by HTTP not HTTPS.
      /ecomaki.com/,
      /iql-lab.de/,
      /nhiro.org/,
      /twitter.com/,  # Skip testing Twitter URLs
    ],
    #ignore_status_codes: [0, 500, 999],
  }

  HTMLProofer.check_directory('_site', options).run
end

# Enable 'build' to flush cache files via 'clean'
task build: [:clean] do
  system 'JEKYLL_ENV=test bundle exec jekyll build' unless ENV['SKIP_BUILD'] == 'true'
end

task :clean do
  system 'bundle exec jekyll clean' unless ENV['SKIP_BUILD'] == 'true'
end
