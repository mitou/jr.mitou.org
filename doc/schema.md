# Schema.org JSON-LD 実装ドキュメント

## 概要

未踏ジュニアのプロジェクトページにSchema.org準拠のJSON-LD構造化データを実装し、検索エンジン最適化（SEO）とGoogle Rich Snippets対応を実現するプロジェクト。

## 実装状況

### ✅ 完了

#### Phase 1: 基盤実装
- **PR**: #238 - Schema.org JSON-LD構造化データでSEO最適化
- **実装日**: 2025年11月8日
- **状況**: マージ待ち

**実装ファイル**:
- `_includes/project-json-ld.json` - 再利用可能なJSON-LDテンプレート
- `tasks/upsert_project_pages_by_data.rb` - 自動生成スクリプト

**技術選択**:
- **Schema.orgタイプ**: `CreativeWork` - プロジェクトの創造的側面を強調
- **多言語対応**: 日本語・英語で別々のJSONエンドポイント
- **自動生成**: Rakeタスクによる一貫した生成

### 🟡 進行中

#### Phase 2: 段階的デプロイ戦略
**現在の実装状況**:
```ruby
# JSON-LD埋め込みは一時的に無効化（安全なテスト用）
# TODO: Add PROJECT_SCHEMA_DATA_TYPE after validating SCHEMA_DATA_TYPE by test suites.
#IO.write(path_ja, page_ja + "\n" + project_schema_data_type + "\n" + page_shared_contents)
```

**検証用JSONエンドポイント**: ✅ 実装済み
- 例: `/projects/2025/uminavi.json`
- 例: `/english/projects/2025/uminavi.json`

### 📋 今後の予定

#### Phase 3: 型安全性の向上（検討中）
**提案されたアプローチ**: Rubyオブジェクト + `to_json()` メソッド

**利点**:
- 型安全性の確保
- バリデーション機能の強化
- テスト容易性の向上
- IDE支援（構文ハイライト・自動補完）

**技術的な課題**:
- Liquid変数（`{{ pj_title }}`等）の動的解決
- Jekyll静的サイト生成との統合
- RubyとLiquidの2重管理リスク

## Schema.org構造化データ設計

### 採用したSchema.orgタイプ

#### 最終選択: `CreativeWork`

**選定理由**:
1. **汎用性**: ソフトウェア・ハードウェア・サービス全て対応
2. **拡張性**: 将来的な機能追加に対応しやすい
3. **Google対応**: Rich Snippets表示に最適

#### 検討した他の候補

| タイプ | 適合度 | 採用しなかった理由 |
|--------|--------|-------------------|
| `SoftwareApplication` | ⭐⭐⭐ | ハードウェアプロジェクトに不適 |
| `VideoObject` | ⭐⭐⭐ | プロジェクト全体を表現できない |
| `Episode` | ⭐⭐ | 受動的な印象、独立性が薄れる |
| `ScholarlyArticle` | ⭐⭐ | 学術論文ではない |

### JSON-LD構造の詳細

```json
{
  "@context": "https://schema.org",
  "@type": "CreativeWork",
  "@id": "{{ site.url }}{{ page.url }}",
  "name": "{{ pj_title }}",
  "description": "{{ pj_description | strip_newlines | replace: '\"', '\\\"' }}",
  "creator": [
    {
      "@type": "Person",
      "name": "{{ creator.name }}"
    }
  ],
  "contributor": {
    "@type": "Person", 
    "name": "{{ mentor.name.last }} {{ mentor.name.first }}",
    "url": "https://jr.mitou.org/mentors/#{{ pj.mentor_id }}"
  },
  "video": {
    "@type": "VideoObject",
    "name": "{{ pj_title }}",
    "embedUrl": "https://www.youtube.com/embed/{{ pj.final }}",
    "uploadDate": "{{ pj.year }}-11-03"
  },
  "dateCreated": "{{ pj.year }}-10-01",
  "educationalLevel": "小中高生・高専生", 
  "inLanguage": "{{ lang }}",
  "isPartOf": {
    "@type": "EducationalProgram",
    "name": "未踏ジュニア",
    "url": "https://jr.mitou.org"
  }
}
```

### 複数クリエイター対応

**課題**: 多くのプロジェクトで複数のクリエイターが参加
**解決**: `creator`フィールドを配列形式で実装

```liquid
"creator": [
  {% for creator_id in pj.creator_ids %}
    {% assign creator = site.data.creators | where: "id", creator_id | first %}
    {
      "@type": "Person",
      "name": "{{ creator.name }}"
    }{% unless forloop.last %},{% endunless %}
  {% endfor %}
]
```

## アーキテクチャ設計

### ファイル構成

```
_includes/
├── project-json-ld.json          # JSON-LDテンプレート（共通）
└── ...

tasks/
├── upsert_project_pages_by_data.rb  # 自動生成スクリプト
└── ...

_posts/
├── 2025-09-01-uminavi.md         # プロジェクトページ（JSON-LD埋め込み）
├── 2025-09-01-uminavi.json       # 検証用JSONエンドポイント  
└── ...
```

### URL構造

#### プロジェクトページ
- **日本語**: `/projects/{year}/{id}` 
- **英語**: `/english/projects/{year}/{id}`

#### JSON-LD検証エンドポイント  
- **日本語**: `/projects/{year}/{id}.json`
- **英語**: `/english/projects/{year}/{id}.json`

### 自動生成フロー

```bash
# 全プロジェクトページ生成
bundle exec rake upsert_project_pages_by_data

# 生成されるファイル数
# - プロジェクトページ: 115個 (.md)  
# - 検証用JSON: 230個 (.json) 
```

## 技術的な議論と決定事項

### Liquid Template vs Ruby to_json

#### 現在の実装: Liquid Template
```ruby
project_schema_data_type = <<~PROJECT_SCHEMA_DATA_TYPE
  <!-- Schema.org Data Type: https://schema.org/ -->
  <script type="application/ld+json">
    {% include project-json-ld.json %}
  </script>
PROJECT_SCHEMA_DATA_TYPE
```

**利点**:
- Jekyll統合がスムーズ
- 動的データ（`{{ pj_title }}`等）の自然な解決
- Liquidテンプレートエンジンの機能活用

**課題**:
- JSON構文エラーの早期発見が困難
- IDE支援が限定的

#### 提案されたアプローチ: Ruby to_json
```ruby
def generate_schema_data(project)
  schema = {
    "@context" => "https://schema.org",
    "@type" => "CreativeWork",
    "name" => project[:title]
    # ...
  }
  
  "<script type=\"application/ld+json\">\n#{schema.to_json}\n</script>"
end
```

**利点**:
- 型安全性の確保
- 早期バリデーション
- テスト容易性
- IDE支援の充実

**課題**:
- Liquid変数の扱いが複雑
- Jekyll統合の追加実装が必要

### 段階的デプロイ戦略

#### Phase 1: 基盤実装 ✅
- JSON-LDテンプレートの作成
- 自動生成スクリプトの実装

#### Phase 2: 検証・テスト 🟡
- JSONエンドポイントでの構造化データ検証
- Google構造化データテストツールでの確認
- テストスイートでの品質保証

#### Phase 3: 本番適用 📋
- プロジェクトページへのJSON-LD埋め込み有効化
- SEO効果の測定・分析

## 期待される効果

### SEO最適化
- **Google Rich Snippets**: プロジェクト情報の構造化表示
- **検索精度向上**: クリエイター・メンター・動画情報の構造化
- **関連コンテンツ表示**: プロジェクト間の関連性向上

### 開発効率
- **自動生成**: 手動更新によるミス排除
- **一元管理**: Liquidテンプレートによる保守性向上  
- **テスト自動化**: JSONエンドポイントでの品質保証

### 認知度向上
- **検索流入増加**: 検索結果での視認性向上
- **プログラム理解促進**: 教育的文脈の明確化
- **新規応募者獲得**: 未踏ジュニア認知度向上

## トラブルシューティング

### Jekyll コンフリクト警告
**問題**: 英語版・日本語版で同一URLが生成される場合の警告
```
Conflict: /Users/yasulab/mitoujr/_site/projects/2025/uminavi.json
- /Users/yasulab/mitoujr/_posts/2025-09-01-uminavi.json  
- /Users/yasulab/mitoujr/_posts/english/2025-09-01-uminavi.json
```

**対策**: 英語版に `/english` prefixを追加
```ruby
permalink: /english/projects/#{project[:year]}/#{project[:id]}.json
```

### JSON構文エラー
**問題**: Liquidテンプレート内でのJSON構文エラー

**対策**:
1. **エスケープ処理**: `strip_newlines | replace: '"', '\\"'`
2. **検証用エンドポイント**: 専用JSONファイルでの事前確認
3. **段階的デプロイ**: テスト完了後の本番適用

## 参考資料

### Schema.org公式ドキュメント
- [Schema.org CreativeWork](https://schema.org/CreativeWork)
- [Schema.org VideoObject](https://schema.org/VideoObject)  
- [Schema.org Person](https://schema.org/Person)
- [Schema.org EducationalProgram](https://schema.org/EducationalProgram)

### Google開発者ドキュメント
- [構造化データの概要](https://developers.google.com/search/docs/appearance/structured-data/intro-structured-data)
- [構造化データテストツール](https://search.google.com/test/rich-results)
- [サイト名の構造化データ](https://developers.google.com/search/docs/appearance/site-names)

### 実装参考
- [Jekyll公式ドキュメント](https://jekyllrb.com/)
- [Liquid テンプレート言語](https://shopify.github.io/liquid/)

---

**最終更新**: 2025年11月8日  
**作成者**: Claude Code with yasulab  
**PR**: #238