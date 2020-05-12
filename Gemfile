source "https://rubygems.org"

gem "jekyll", "~> 4.0"
gem "minima", "~> 2.5" # default theme for new Jekyll sites

gem 'html-proofer'
gem 'rake'

gem "liquid-c"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-include-cache"
  # gem 'github-pages' # Uncomment this when being compatible with Jekyl 4.0.0+
  # You can check latest available versions: https://pages.github.com/versions/
end

# Windows and JRuby does not include zoneinfo files,
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?

