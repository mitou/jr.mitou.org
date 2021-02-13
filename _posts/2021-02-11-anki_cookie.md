---
layout: post
title: "暗記クッキー"
permalink: /projects/2017/anki_cookie
thumbnail: /assets/img/thumbnails/2017/tbu.png
description: "WEBクイズで頑張って覚えた漢字や単語がクッキーに焼かれ、暗記学習のモチベーションアップを支援するシステムを開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'anki_cookie'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/CRvzQtz90RM/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

WEBクイズで頑張って覚えた漢字や単語がクッキーに焼かれ、暗記学習のモチベーションアップを支援するシステムを開発。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2017'>2017年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/CRvzQtz90RM?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

