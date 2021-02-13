---
layout: post
title: "Spaghetian - 電気と電磁石だけでCPUを自作する！"
permalink: /projects/2020/spaghetian
thumbnail: /assets/img/thumbnails/2020/spaghetian.jpg
description: "三機の電磁石式自作自作CPUを互いにつなげてネットワークにし、その上でオンラインピンポンゲームが動くロマン溢れるプロジェクトです！魔法と見分けがつかなくなった現代のコンピュータテクノロジーの基本を自作することにより、それらが誰でも理解できることを示します。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'spaghetian'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/Ue7Sf3bQlps/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2020/spaghetian.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

三機の電磁石式自作自作CPUを互いにつなげてネットワークにし、その上でオンラインピンポンゲームが動くロマン溢れるプロジェクトです！魔法と見分けがつかなくなった現代のコンピュータテクノロジーの基本を自作することにより、それらが誰でも理解できることを示します。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2020'>2020年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/Ue7Sf3bQlps?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

