---
layout: post
title: "VirtualPresents - 仮想世界で用いるWebサービス"
permalink: /projects/2019/virtual_presents
thumbnail: /assets/img/thumbnails/2019/virtual_presents.png
description: "仮想世界を彩るためのWebサービスのあり方を模索するプロジェクトです。仮想世界にWeb上から画像を出稿したり、Twitterのようないいね機能を提供することができます。仮想世界とWebという大きく異なる2つの間の架け橋となる概念を提案しました。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'virtual_presents'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='/assets/img/thumbnails/tbu.png'
{% else %}                         data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.thumbnail }}'
{% endif %}                        style='margin-bottom: 10px; border-radius: 6px;' />

{{ pj.description }}

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj.title }}&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ
<p>
  {% for creator_id in pj.creator_ids %}
    {% include creator.html is_simple=true %}
  {% endfor %}
  <small>(<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.youtube }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

