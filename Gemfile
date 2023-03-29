source 'https://rubygems.org'

# Replace 'git' with 'https' protocol
git_source(:github) {|repo_name| 'https://github.com/' + repo_name }

gem 'jekyll'
gem 'rake'     # Enable Rakefile to run tasks
gem 'truncato' # https://github.com/jorgemanrubia/truncato

group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-include-cache'
  gem 'jekyll-sitemap'
  gem 'jekyll-minifier'
  gem 'jekyll-liquify'

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
  gem 'tzinfo', '~> 1.2'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.1', :install_if => Gem.win_platform?

# Enable to edit jr.mitou.org on Codespaces
gem 'mini_racer'
