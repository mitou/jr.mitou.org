---
layout: post
title: '個人の経験に紐づいた楽曲を推薦するスマートフォンアプリケーションの提案'
permalink: /projects/2017/music_reminder
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2017/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

カラオケで歌った曲、見た映画等の経験に基づいて、AppleMusicから曲を推薦する新しい仕組みのiOSアプリを開発

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'music_reminder'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/gfrleUVHGZs?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

