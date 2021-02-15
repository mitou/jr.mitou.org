---
layout: post
title: "リレーマスター"
permalink: /projects/2019/relay_master
thumbnail: /assets/img/thumbnails/2019/relay_master.png
description: "センサが埋め込まれた特殊なバトンを持って走るだけで，あらゆる運動を解析するシステムを開発しました。データは専用のwebにアップロードして，あなたの運動をAIで分析・最適化します。“リレーマスター” を利用して，プロに匹敵するパフォーマンスを実現してみませんか？"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'relay_master'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/1ylC6bqWiPg/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2019/relay_master.png'
{% endif %}                        style='margin-bottom: 10px;' />

センサが埋め込まれた特殊なバトンを持って走るだけで，あらゆる運動を解析するシステムを開発しました。データは専用のwebにアップロードして，あなたの運動をAIで分析・最適化します。“リレーマスター” を利用して，プロに匹敵するパフォーマンスを実現してみませんか？

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=リレーマスター&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/2019/relay_master" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2019'>2019年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/1ylC6bqWiPg?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

