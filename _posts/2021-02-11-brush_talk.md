---
layout: post
title: 'ぶらっしゅとーく〜小さな子どものための筆談アプリ〜'
permalink: /projects/2020/brush_talk
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'brush_talk'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/BeSeF5Exw1s/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2020/brush_talk.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

これは文字がまだうまく書けない小さな子と耳が聞こえづらいお年寄りがコミュニケーションを取るための筆談アプリです。スマホを使い慣れないお年寄りも簡単に使えるように、操作するためのボタンをなるべく少なくしました。また、イラストを使用することで小さな子が感覚的に使えるようにしました。

### クリエータ（採択年度：<a href='/projects/2020'>2020年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/BeSeF5Exw1s?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

