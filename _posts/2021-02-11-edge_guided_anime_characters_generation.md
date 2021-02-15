---
layout: post
title: "Edge-guided Anime Characters Generation"
permalink: /projects/2019/edge_guided_anime_characters_generation
thumbnail: /assets/img/thumbnails/2019/edge_guided_anime_characters_generation.png
description: "描きかけの線画を自動で完成させることができる、GANをベースとしたシステムを開発した。これを用いることで初心者でも複雑なイラストを簡単に描くことができるようになる。特に本研究ではアニメの顔画像の生成に焦点をあてた。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'edge_guided_anime_characters_generation'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/OVD5nw1DA5s/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2019/edge_guided_anime_characters_generation.png'
{% endif %}                        style='margin-bottom: 10px;' />

描きかけの線画を自動で完成させることができる、GANをベースとしたシステムを開発した。これを用いることで初心者でも複雑なイラストを簡単に描くことができるようになる。特に本研究ではアニメの顔画像の生成に焦点をあてた。

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=Edge-guided Anime Characters Generation&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/2019/edge_guided_anime_characters_generation" class="button" target="_blank" rel="noopener">ツイートする</a>
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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/OVD5nw1DA5s?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

