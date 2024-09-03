---
layout: post
title: |
  ManageStock - 家庭向け在庫管理アプリ
description: |
  ティッシュペーパーのような日用品を買い忘れてしまい、困った経験はありませんか？ ManageStock はそのような問題を解決するために、在庫を IoT などを活用して管理するアプリケーションです。
permalink: /projects/2019/manage_stock
thumbnail: /assets/img/projects/2019/manage_stock.webp
twitter_card: summary_large_image
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'manage_stock'" | first %}

<div style='margin-top: 50px; margin-bottom: 30px;'>
  <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像 - {{ pj.title }}'
  {% if pj.thumbnail %}    data-src='/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}'
  {% else %}               data-src='/assets/img/projects/tbu.webp'
  {% endif %}                 title='{{ pj.title }}' style='border-radius: 6px;' loading='lazy' />
</div>

{{ pj.description }}

<div class='flex'>
  {% if pj.link %}
    {% if pj.link contains 'github.com' and pj.link contains 'releases' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>ダウンロードする</a>
    {% elsif pj.link contains 'github.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>ソースコードを見る</a>
    {% else %}
       <a href='{{ pj.link }}' target='_blank' class='button'>公式サイトを見る</a>
    {% endif %}
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj.title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ {#creator}
<p>
  {% for creator_id in pj.creator_ids %}
    {% include creator.html is_simple=true %}
  {% endfor %}
  <small>(<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %} PM)</small>
</p>

{% if pj.comment %}
### PMコメント {#comment}
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

{% if pj.promotion %}
{% if pj.promotion contains '.gif' %}
## デモ動画 {#demo}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='デモ動画 (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj.promotion }}' loading='lazy'
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
<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" rel="noopener" class="button">YouTube で見る</a>
{% endif %}

<nav>
  <p class='nav prev'><a href='abecobe' title='abecobe - シンプルかつ難しいパズルゲーム'>&larr; 前<br>
    abecobe - シンプルかつ難しいパズルゲーム</a></p>
  <p class='nav next'><a href='relay_master' title='リレーマスター'>次 &rarr;<br>
    リレーマスター</a></p>
</nav>

{% include project-navigation.html %}
