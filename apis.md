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

<div id='index'>
  <ul>
    {% for api in site.data.apis %}
    <li>
      <a class='json' href='{{ api.to_json }}'>{{ api.to_json }}</a>
      <small>(<a href='{{ api.to_html }}'>&raquo; HTML で見る</a>)</small>
    </li>
    {% endfor %}
  </ul>
</div>

<div class="note">
  実装の詳細は未踏ジュニアの GitHub リポジトリ (<a href='https://github.com/mitou/jr.mitou.org'>mitou/jr.mitou.org</a>) からご確認いただけます。
</div>
