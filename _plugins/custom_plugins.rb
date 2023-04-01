# Plugin to add environment variables to the `site` object in Liquid templates
# https://gist.github.com/nicolashery/5756478
module Jekyll
  class EnvironmentVariables < Generator
    def generate(site)
      site.config['env'] = {}
      site.config['env']['JEKYLL_ENV'] = ENV['JEKYLL_ENV'] || 'development'
      # Add other environment variables to `site.config` here...
    end
  end
end
