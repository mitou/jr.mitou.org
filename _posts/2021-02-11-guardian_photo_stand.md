---
layout: post
title: "見守りフォトスタンド"
permalink: /projects/2017/guardian_photo_stand
thumbnail: /assets/img/thumbnails/2017/guardian_photo_stand.png
description: "老人宅の玄関に、見守り装置を設置し、介護者から見守れるようにするシステム。見守り装置は、カメラ及び各種センサを装備し、サーバーを介してWeb経由で介護者が随時様子を知ることができる。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'guardian_photo_stand'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/lOrb8nH85qo/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/guardian_photo_stand.png'
{% endif %}                        style='margin-bottom: 10px;' />

老人宅の玄関に、見守り装置を設置し、介護者から見守れるようにするシステム。見守り装置は、カメラ及び各種センサを装備し、サーバーを介してWeb経由で介護者が随時様子を知ることができる。

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=見守りフォトスタンド&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/2017/guardian_photo_stand" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2017'>2017年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/lOrb8nH85qo?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

