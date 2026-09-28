module Jekyll
  module FileExistsFilter
    # サイトのソースディレクトリからの相対パスで、ファイルが存在するかを返す。
    # 例: {% assign exists = '/assets/img/foo.webp' | file_exists %}
    #
    # NOTE: タグとして実装すると、{% capture %} で受けた時点で出力が文字列になり、
    #       存在しない場合も空文字列 (Liquid では truthy) になって {% if %} で判定できない。
    #       フィルターなら {% assign %} で真偽値のまま受け取れる。
    def file_exists(path)
      source_dir = @context.registers[:site].source
      File.exist?(File.join(source_dir, path.to_s))
    end
  end
end

Liquid::Template.register_filter(Jekyll::FileExistsFilter)
