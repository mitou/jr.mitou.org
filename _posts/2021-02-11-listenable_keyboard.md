---
layout: post
title: '"聞く"キーボード'
permalink: /projects/2017/listenable_keyboard
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'listenable_keyboard'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/foJCvFcYhv0/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2017/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

日本語、英語、中国語の3言語で利用できる、音声認識機能を搭載したキーボード。

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/foJCvFcYhv0?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

