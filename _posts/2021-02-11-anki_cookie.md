---
layout: post
title: "暗記クッキー"
permalink: /projects/2017/anki_cookie
thumbnail: /assets/img/thumbnails/2017/anki_cookie.png
description: "WEBクイズで頑張って覚えた漢字や単語がクッキーに焼かれ、暗記学習のモチベーションアップを支援するシステムを開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'anki_cookie'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='/assets/img/thumbnails/tbu.png'
{% else %}                         data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.thumbnail }}'
{% endif %}                        style='margin-bottom: 10px;' />

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

