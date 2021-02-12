---
layout: post
title: 'TouchBuy - VRにおけるECの在り方の模索'
permalink: /projects/2018/touch_buy
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2018/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

VR空間上でECサイトを提供する方法について、様々なプロトタイプを作りながら模索した。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'touch_buy'" | first %}

### クリエータ（採択年度：<a href='/projects/2018'>2018年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/luBbuzIb1y0?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

