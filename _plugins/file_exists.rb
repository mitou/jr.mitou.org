module Jekyll
  class FileExistsTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
    end

    def render(context)
      # マークアップから引数を取得（クォートを除去）
      path = @markup

      # シングルクォートまたはダブルクォートで囲まれた文字列を処理
      if path =~ /^['"](.*)['"]$/
        path = $1
      else
        # 変数の場合は展開
        path = context[path] || path
      end

      # サイトのソースディレクトリを取得
      source_dir = context.registers[:site].source

      # 絶対パスの処理（プロジェクトルートからの相対パス）
      # Jekyllでは通常、パスはプロジェクトルートからの相対パスとして扱われる
      full_path = File.join(source_dir, path)

      # NOTE: Liquid では空でない文字列はすべて truthy のため、"false" を返すと
      #       {% if %} で常に true と評価されてしまう。そのため false の場合は
      #       nil を返すことで、{% if %} が正しく機能するようにしている。
      File.exist?(full_path) ? 'true' : nil
    end
  end
end

Liquid::Template.register_tag('file_exists', Jekyll::FileExistsTag)
