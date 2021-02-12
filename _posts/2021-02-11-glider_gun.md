---
layout: post
title: 'GliderGun - ブラウザOSを簡単に作成できるツール郡'
permalink: /projects/2020/glider_gun
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'glider_gun'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/N23eiKk_808/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2020/glider_gun.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

このプロジェクトはLinuxのディストリビューションを簡単に作成できるツール郡を提供します。また、作成するディストリビューションはブラウザを使うことを主な目的としており、このように機能を制限することで様々な恩恵を得ることができます。

### クリエータ（採択年度：<a href='/projects/2020'>2020年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/N23eiKk_808?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

