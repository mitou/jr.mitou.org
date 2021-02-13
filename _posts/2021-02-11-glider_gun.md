---
layout: post
title: "GliderGun - ブラウザOSを簡単に作成できるツール郡"
permalink: /projects/2020/glider_gun
thumbnail: /assets/img/thumbnails/2020/glider_gun.jpg
description: "このプロジェクトはLinuxのディストリビューションを簡単に作成できるツール郡を提供します。また、作成するディストリビューションはブラウザを使うことを主な目的としており、このように機能を制限することで様々な恩恵を得ることができます。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'glider_gun'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/N23eiKk_808/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2020/glider_gun.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

このプロジェクトはLinuxのディストリビューションを簡単に作成できるツール郡を提供します。また、作成するディストリビューションはブラウザを使うことを主な目的としており、このように機能を制限することで様々な恩恵を得ることができます。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2020'>2020年度</a> 採択)</small>
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/N23eiKk_808?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

