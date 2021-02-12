---
layout: post
title: 'Tea - 仮想経済シミュレーションプラットフォームとゲーム'
permalink: /projects/2019/tea
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2019/tea.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

Teaは、仮想経済シミュレーションプラットフォームとそれを使用したゲームです。実際の経済のようなシステムを用意し、ユーザーに自由に貨幣やアイテムの交換をしてもらい、貨幣経済をシミュレーションします。様々な社会システムをシミュレートできます。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'tea'" | first %}

### クリエータ（採択年度：<a href='/projects/2019'>2019年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/rW57i1ZSksA?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

