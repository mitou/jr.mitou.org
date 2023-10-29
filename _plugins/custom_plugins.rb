# Plugin to add environment variables to the `site` object in Liquid templates
# https://gist.github.com/nicolashery/5756478

module Jekyll
  # A plugin to load environment variables automatically.
  class EnvironmentVariables < Generator
    def generate(site)
      site.config['env'] = {}
      site.config['env']['JEKYLL_ENV'] = ENV['JEKYLL_ENV'] || 'development'
      # Add other environment variables to `site.config` here...
    end
  end

  # A plugin to use custom tag: {% list_json_apis %}
  class ListJsonAPIsTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super

      @html = '<ul>'
      Dir.glob('./**/*.json') do |filename|
        filename = filename[1..] # Correct path: "./abc.json" -> "/abc.json"
        next if filename.start_with? '/_'

        @html += <<~JSON_API_URL
          <li>
            <a href='#{filename}'>#{filename}</a>
            <small>(<a href='#{filename[..-6]}'>HTML で見る</a>)</small>
          </li>
        JSON_API_URL
      end

      @html += '</ul>'
    end

    def render(context)
      @html
    end
  end
end

Liquid::Template.register_tag('list_json_apis', Jekyll::ListJsonAPIsTag)
