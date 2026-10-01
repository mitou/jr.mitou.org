# 未踏ジュニアの Web サイトをビルドするために開発したカスタムプラグイン。
# https://jekyllrb.com/docs/plugins/

module Jekyll
  # 環境変数を自動で読み込むプラグイン。
  # https://gist.github.com/nicolashery/5756478
  class EnvironmentVariables < Generator
    def generate(site)
      site.config['env'] = {}
      site.config['env']['JEKYLL_ENV'] = ENV['JEKYLL_ENV'] || 'development'
      # 他の環境変数は、ここで `site.config` に追加する...
    end
  end

  # 最新の統計を OGP の meta タグに表示するためのプラグイン。
  # 参考: https://github.com/gemfarmer/jekyll-liquify
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

# LiquifyFilter モジュールを Jekyll のテンプレートに登録する
Liquid::Template.register_filter(Jekyll::LiquifyFilter)

# 技術的な詳細と理由は PR の説明を参照
# https://github.com/mitou/jr.mitou.org/pull/239
module Reading
  class Generator < Jekyll::Generator
    priority :low
    safe true

    def generate(site)
      # /index.md のような一般のページ向け
      json_pages = site.pages
        .select { |page| page.url.end_with?('.json') && !page.url.start_with?('/assets/') }
        .map    { |page|
        {
          'to_json' => page.url,
          'to_html' => page.url.delete_suffix('.json')
        }
      }

      # /projects/YYYY/project_name.json のようなプロジェクトページ向け
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
