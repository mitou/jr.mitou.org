---
layout: post
title: API 一覧（開発中）
description: 未踏ジュニアWebサイトから利用できる API の一覧ページです。
sitemap: false
---

<br>

本ページでは、未踏ジュニアWebサイト内で使っている内部向け API（開発中）の一覧をまとめています。

- 利用例:
  - 検索ページ: [https://jr.mitou.org/search](/search)
  - 検索データ: [https://jr.mitou.org/search.json](/search.json)

<div class="note">
  各データは以下の API は開発中のため、予告なく変更・削除される場合がある点にご注意ください。
</div>


## API 一覧（開発中）

<div class="note">
  以下の API は開発中のため、予告なく変更・削除される場合がある点にご注意ください。
</div>

<div id='index'>
  <ul>
    {% for api in site.data.apis %}
    <li>
      <a href='{{ api.to_json }}'>{{ api.to_json }}</a>
      <small>(<a href='{{ api.to_html }}'>HTML で見る</a>)</small>
    </li>
    {% endfor %}
  </ul>
</div>
