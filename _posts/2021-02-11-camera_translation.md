---
layout: post
title: '写して翻訳'
permalink: /projects/2018/camera_translation
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'camera_translation'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/xTZ4oi6sttA/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2018/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

写真を写すことで、そこに写った物体の名前を他の言語に翻訳するスマートフォンアプリの開発。

### クリエータ（採択年度：<a href='/projects/2018'>2018年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/xTZ4oi6sttA?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

