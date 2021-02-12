---
layout: post
title: 'Corkboard - 位置的に管理するメモサービス'
permalink: /projects/2018/corkboard
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'corkboard'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/rDyqAzppN6M/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

使用者の記録や感情を蓄え変化する「森」を基調としたメモ帳アプリのデザインコンセプトを提案

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/rDyqAzppN6M?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

