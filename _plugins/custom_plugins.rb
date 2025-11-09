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
# https://github.com/mitou/jr.mitou.org/pull/239
module Reading
  class Generator < Jekyll::Generator
    priority :low
    safe true

    def generate(site)
      # For general pages like /index.md
      json_pages = site.pages
        .select { |page| page.url.end_with?('.json') && !page.url.start_with?('/assets/') }
        .map    { |page|
        {
          'to_json' => page.url,
          'to_html' => page.url.delete_suffix('.json')
        }
      }

      # For project pages like /projects/YYYY/project_name.json
      json_posts = site.collections.flat_map do |_name, collection|
        collection.docs
          .select { |doc| doc.url && doc.url.end_with?('.json') }
          .map    { |doc|
          {
            'to_json' => doc.url,
            'to_html' => doc.url.delete_suffix('.json')
          }
        }
      end

      apis = (json_pages + json_posts).sort_by { |api| api['to_json'] }
      site.data['apis'] = apis
    end
  end
end
