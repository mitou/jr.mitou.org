# Custom Plugins developed for building Mitou Junior website.
# https://jekyllrb.com/docs/plugins/

module Jekyll
  # A plugin to load environment variables automatically.
  # https://gist.github.com/nicolashery/5756478
  class EnvironmentVariables < Generator
    def generate(site)
      site.config['env'] = {}
      site.config['env']['JEKYLL_ENV'] = ENV['JEKYLL_ENV'] || 'development'
      # Add other environment variables to `site.config` here...
    end
  end

  # A plugin to enables to show latest Stats in OGP meta tags.
  # Inspired by: https://github.com/gemfarmer/jekyll-liquify
  module LiquifyFilter
    def liquify(input)
      if input.is_a? String
        Liquid::Template.parse(input).render(@context)
      else
        input
      end
    end
  end
end

# Register LiquifyFilter module to Jekyll template
Liquid::Template.register_filter(Jekyll::LiquifyFilter)

# A plugin to set custom site.data like APIs: {% site.data.apis %}
# https://jekyllrb.com/docs/plugins/generators/
module Reading
  class Generator < Jekyll::Generator

    # Tweak data that Jekyll can access like `{% site.data.foobars %}`
    def generate(site)
      apis = []
      Dir.glob('./**/*.json') do |filepath|
        filepath = filepath[1..]                # Correct path: ./api.json -> /api.json
        next if filepath.start_with? '/_'       # Ignore internal parts like Partial
        next if filepath.start_with? '/vendor/' # Ignore external parts like RubyGem

        # NOTE: Can't get data if set like `key: value`
        #       It seems needed to be like `'key' => 'value'`
        apis << {
          'to_json' => filepath,      # => /api.json
          'to_html' => filepath[..-6] # => /api
        }
      end

      # Now you can get data above by like `{{ site.data.apis | first }}`
      site.data['apis'] = apis
    end
  end
end
