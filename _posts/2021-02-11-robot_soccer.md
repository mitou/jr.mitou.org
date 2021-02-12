---
layout: post
title: "強化学習を用いたロボットサッカーシミュレーション"
permalink: /projects/2018/robot_soccer
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'robot_soccer'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/7WnoGTOFRuE/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

強化学習を用いた、ロボットサッカーのプレイヤーの開発。

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/7WnoGTOFRuE?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

