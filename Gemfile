source 'https://rubygems.org'

# Replace 'git' with 'https' protocol
git_source(:github) {|repo_name| 'https://github.com/' + repo_name }

gem 'jekyll'
gem 'rake'          # Enable Rakefile to run tasks
gem 'ruby-openai'   # Translate project info from JA to EN
gem 'activesupport' # To truncate titles. https://railsguides.jp/active_support_core_extensions.html#truncate


# Declare to install bundled gems to fix warnings:
# https://www.ruby-lang.org/ja/news/2023/12/25/ruby-3-3-0-released/
gem 'csv'
gem 'base64'

group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-include-cache'
  gem 'jekyll-minifier'
  gem 'jekyll-sitemap'

  # No need this gem because we build by GitHub Actions and
  # serve the built results (static files) on GitHub Pages.
  # gem 'github-pages'
end

# Gems to use in Development & CI (GitHub Actions)
group :development, :test do
  gem 'html-proofer'
end

# Windows and JRuby does not include zoneinfo files,
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem 'tzinfo' #, '~> 1.2'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', :install_if => Gem.win_platform? # , '~> 0.1.1'

# Enable to edit jr.mitou.org on Codespaces
gem 'mini_racer'
