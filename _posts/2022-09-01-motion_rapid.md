---
layout: post
title: "Motion Rapid - 動画編集ソフトのようなUIでCSSアニメーションを作成するツール"
permalink: /projects/2022/motion_rapid
thumbnail: /assets/img/thumbnails/2022/motion_rapid.webp
description: "MotionRapidはCSSパララックスアニメーションを動画編集ソフトのようなUIから作成できるツールです。動画編集ソフトで広く採用されているタイムラインUIを使い、HTMLやCSS、JavaScriptを直接コーディングすることなくパララックスアニメーションを作成することができます。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'motion_rapid'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail %}    data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.thumbnail }}'
{% else %}               data-src='/assets/img/thumbnails/tbu.webp'
{% endif %}                 style='margin-bottom: 10px; border-radius: 6px;' />

{{ pj.description }}

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
    {% if pj.link contains 'github.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>ソースコードを見る</a>
    {% else %}
       <a href='{{ pj.link }}' target='_blank' class='button'>公式サイトを見る</a>
    {% endif %}
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj.title }}&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ {#creator}
<p>
  {% for creator_id in pj.creator_ids %}
    {% include creator.html is_simple=true %}
  {% endfor %}
  <small>(<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント {#comment}
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

{% if pj.promotion %}
{% if pj.promotion contains '.gif' %}
## デモ動画 {#demo}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='デモ動画 (Gif)'
     data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.promotion }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
## デモ動画 {#demo}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj.promotion }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>
{% endif %}
{% endif %}

{% if pj.final %}
## 発表動画 {#final}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj.final }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>
{% endif %}

{% include project-navigation.html %}

