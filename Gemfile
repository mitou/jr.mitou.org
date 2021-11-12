source "https://rubygems.org"

gem "jekyll"
gem "minima"   # default theme for new Jekyll sites
gem "liquid-c" # Speedup with C implementation
gem 'rake'     # Enable Rakefile to run tasks
gem "webrick", "~> 1.7"

group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-include-cache'
  gem 'jekyll-sitemap'
  gem 'jekyll-minifier'
  gem 'jekyll-liquify'

  # No need this gem because we build by GitHub Actions and serve on Pages.
  # gem 'github-pages'
end

# Gems to use in Development & CI (GitHub Actions)
group :development, :test do
  gem 'pry'
  gem 'html-proofer'
end

# Windows and JRuby does not include zoneinfo files,
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?
