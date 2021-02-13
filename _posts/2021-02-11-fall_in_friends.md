---
layout: post
title: "Fall in Friends ～東京オリンピックに向けて、日本のインバウンドを変えるアプリを作る ～"
permalink: /projects/2017/fall_in_friends
thumbnail: /assets/img/thumbnails/2017/tbu.png
description: "困っている訪日外国人が、旅行者を助けたい日本人に質問できるアプリケーションを開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'fall_in_friends'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/Xr2Jeb5cf7o/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2017/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

困っている訪日外国人が、旅行者を助けたい日本人に質問できるアプリケーションを開発。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2017'>2017年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/Xr2Jeb5cf7o?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

