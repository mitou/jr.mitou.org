---
layout: post
title: '暗記クッキー'
permalink: /projects/2017/anki_cookie
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'anki_cookie'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/CRvzQtz90RM/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2017/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

WEBクイズで頑張って覚えた漢字や単語がクッキーに焼かれ、暗記学習のモチベーションアップを支援するシステムを開発。

### クリエータ（採択年度：<a href='/projects/2017'>2017年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/CRvzQtz90RM?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

