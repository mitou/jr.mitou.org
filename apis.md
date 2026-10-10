---
layout: post
title: API 一覧（開発中）
description: 未踏ジュニアWebサイトから利用できる内部向け API の一覧ページです。
sitemap: false
redirect_from:
  - /api
---

<br>

本ページでは、未踏ジュニアWebサイト内で使っている内部向け API（開発中）の一覧をまとめています。

- API の利用例:
  - 検索ページ: [https://jr.mitou.org/projects/search](/projects/search)
  - 検索データ: [https://jr.mitou.org/projects.json](/projects.json)

<div class="note">
  未踏ジュニア関係者による内部での利用を目的とした API となります。
</div>



## [<i class="fas fa-gear green"></i>](#index) 内部向け API 一覧 {#index}

<div class="note">
  以下は<a href="https://github.com/mitou/jr.mitou.org/blob/main/_tests/custom_checks.rb">自動テスト</a>や検索エンジン (<a href="https://www.google.com/search?q=JSON-LD">JSON-LD</a>)、<a href='https://www.google.com/search?q=LLM'>LLM</a> 向け等で使われている API です。予告なく変更・削除される場合がある点にご注意ください。
</div>

<div>
  <ul>
    {% for api in site.data.api_pages %}
    <li>
      <a class='json' href='{{ api.to_json }}'>{{ api.to_json }}</a>
      <small>(<a href='{{ api.to_html }}'>&raquo; HTML で見る</a>)</small>
    </li>
    {% endfor %}
    {% for api in site.data.api_patterns %}
    <li>
      <code>{{ api.pattern }}</code> ({{ api.count }}件)
      <br><small>例: <a class='json' href='{{ api.example.to_json }}'>{{ api.example.to_json }}</a></small>
    </li>
    {% endfor %}
  </ul>
</div>

<small>すべての API の URL は <a href='/apis.json'>/apis.json</a> から取得できます。</small>

<div class="note">
  実装の詳細は未踏ジュニアの GitHub リポジトリ (<a href='https://github.com/mitou/jr.mitou.org'>mitou/jr.mitou.org</a>) からご確認いただけます。
</div>
