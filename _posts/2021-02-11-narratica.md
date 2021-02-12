---
layout: post
title: 'narratica〜ストーリーコンサルタント〜'
permalink: /projects/2017/narratica
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'narratica'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/7o0_Q_nBGi4/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2017/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

自然言語処理によって、映画脚本のテキスト分析を行い、登場人物の感情変化をもとにストーリーを評価。自分で書いた文章もリアルタイムに感情分析。

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/7o0_Q_nBGi4?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

