---
layout: post
title: "Life Watcher - 急変する持病を持つ人のための警報システム"
permalink: /projects/2018/life_watcher
thumbnail: /assets/img/thumbnails/2018/tbu.png
description: "スマートウォッチ上で動作する、急変する持病を持つ人を助ける警報アプリの開発。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'life_watcher'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/srA90rwohUA/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

スマートウォッチ上で動作する、急変する持病を持つ人を助ける警報アプリの開発。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2018'>2018年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/srA90rwohUA?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

