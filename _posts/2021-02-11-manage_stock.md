---
layout: post
title: "ManageStock - 家庭向け在庫管理アプリ"
permalink: /projects/2019/manage_stock
thumbnail: /assets/img/thumbnails/2019/manage_stock.jpg
description: "ティッシュペーパーのような日用品を買い忘れてしまい、困った経験はありませんか？ ManageStock はそのような問題を解決するために、在庫を IoT などを活用して管理するアプリケーションです。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'manage_stock'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/N1QfbFyjNXg/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2019/manage_stock.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

ティッシュペーパーのような日用品を買い忘れてしまい、困った経験はありませんか？ ManageStock はそのような問題を解決するために、在庫を IoT などを活用して管理するアプリケーションです。

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=ManageStock - 家庭向け在庫管理アプリ&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/2019/manage_stock" class="button">ツイートする</a>
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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/N1QfbFyjNXg?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

