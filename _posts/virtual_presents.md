---
layout: post
title: 'VirtualPresents - 仮想世界で用いるWebサービス'
permalink: /projects/2019/virtual_presents
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2019/virtual_presents.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

仮想世界を彩るためのWebサービスのあり方を模索するプロジェクトです。仮想世界にWeb上から画像を出稿したり、Twitterのようないいね機能を提供することができます。仮想世界とWebという大きく異なる2つの間の架け橋となる概念を提案しました。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'virtual_presents'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/p7KZzZLMLoM?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

