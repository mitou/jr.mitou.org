---
layout: post
title: 'Toubans! -LINEで設定・通知できる当番お知らせサービス'
permalink: /projects/2018/toubans
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2018/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

掃除当番に代表される、学校での「当番」の任命や通知をLINE上でできるようにするサービスの開発。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'toubans'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/c1R1h4ihcgw?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

