---
layout: post
title: "narratica〜ストーリーコンサルタント〜"
permalink: /projects/2017/narratica
thumbnail: /assets/img/thumbnails/2017/tbu.png
description: "自然言語処理によって、映画脚本のテキスト分析を行い、登場人物の感情変化をもとにストーリーを評価。自分で書いた文章もリアルタイムに感情分析。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'narratica'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/7o0_Q_nBGi4/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

自然言語処理によって、映画脚本のテキスト分析を行い、登場人物の感情変化をもとにストーリーを評価。自分で書いた文章もリアルタイムに感情分析。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2017'>2017年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/7o0_Q_nBGi4?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

