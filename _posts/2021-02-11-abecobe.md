---
layout: post
title: 'abecobe - シンプルかつ難しいパズルゲーム'
permalink: /projects/2019/abecobe
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2019/abecobe.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

正反対な主人公と相棒をゴールにぴったり導くパズルゲーム、abecobeが登場しました。操作は上下左右方向のフリックのみ。２つのキャラクターをぴったりゴールに持っていくだけです。制限時間内にどれだけクリアできるでしょうか？

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'abecobe'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/B70zjf0Xs6g?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

