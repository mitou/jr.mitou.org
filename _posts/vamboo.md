---
layout: post
title: 'FRPの概念に触れられるビジュアルプログラミング言語の開発'
permalink: /projects/2017/vamboo
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2017/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

配置したGUI要素を線で繋いでいくことでアプリケーションを作っていけるビジュアルプログラミング言語を開発。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'vamboo'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/fejZIj2K9A8?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

