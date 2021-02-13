---
layout: post
title: "メモリーカプセル - カプセルを通して繋がるSNS"
permalink: /projects/2018/memory_capsule
thumbnail: /assets/img/thumbnails/2018/tbu.png
description: "場所に紐付いて、仮想カプセルを埋め、それを掘り出すことのできるSNSを開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'memory_capsule'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/KgnWDTXwHTY/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

場所に紐付いて、仮想カプセルを埋め、それを掘り出すことのできるSNSを開発。

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/KgnWDTXwHTY?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

