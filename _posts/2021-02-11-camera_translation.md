---
layout: post
title: "写して翻訳"
permalink: /projects/2018/camera_translation
thumbnail: /assets/img/thumbnails/2018/tbu.png
description: "写真を写すことで、そこに写った物体の名前を他の言語に翻訳するスマートフォンアプリの開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'camera_translation'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/xTZ4oi6sttA/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

写真を写すことで、そこに写った物体の名前を他の言語に翻訳するスマートフォンアプリの開発。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2018'>2018年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/xTZ4oi6sttA?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

