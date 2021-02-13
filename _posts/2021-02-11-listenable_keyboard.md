---
layout: post
title: "'聞く'キーボード"
permalink: /projects/2017/listenable_keyboard
thumbnail: /assets/img/thumbnails/2017/tbu.png
description: "日本語、英語、中国語の3言語で利用できる、音声認識機能を搭載したキーボード。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'listenable_keyboard'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/foJCvFcYhv0/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

日本語、英語、中国語の3言語で利用できる、音声認識機能を搭載したキーボード。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2017'>2017年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/foJCvFcYhv0?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

