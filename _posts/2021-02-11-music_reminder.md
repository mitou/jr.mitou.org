---
layout: post
title: "個人の経験に紐づいた楽曲を推薦するスマートフォンアプリケーションの提案"
permalink: /projects/2017/music_reminder
thumbnail: /assets/img/thumbnails/2017/music_reminder.png
description: "カラオケで歌った曲、見た映画等の経験に基づいて、AppleMusicから曲を推薦する新しい仕組みのiOSアプリを開発"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'music_reminder'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/gfrleUVHGZs/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/music_reminder.png'
{% endif %}                        style='margin-bottom: 10px;' />

カラオケで歌った曲、見た映画等の経験に基づいて、AppleMusicから曲を推薦する新しい仕組みのiOSアプリを開発

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=個人の経験に紐づいた楽曲を推薦するスマートフォンアプリケーションの提案&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/2017/music_reminder" class="button" target="_blank" rel="noopener">ツイートする</a>
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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/gfrleUVHGZs?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

