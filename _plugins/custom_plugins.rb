# Custom Plugins developed for building MITOU Junior website.
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

# See PR description for technical details and rationale
module Reading
  class Generator < Jekyll::Generator
    priority :low
    safe true

    def generate(site)
      apis = []
      
      site.pages.each do |page|
        if page.url.end_with?('.json')
          next if page.url.start_with?('/assets/')
          
          apis << {
            'to_json' => page.url,
            'to_html' => page.url[..-6]
          }
        end
      end
      
      site.collections.each do |_name, collection|
        collection.docs.each do |doc|
          if doc.url && doc.url.end_with?('.json')
            apis << {
              'to_json' => doc.url,
              'to_html' => doc.url[..-6]
            }
          end
        end
      end
      
      apis.sort_by! { |api| api['to_json'] }
      site.data['apis'] = apis
    end
  end
end
