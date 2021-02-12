---
layout: post
title: 'Color Overlap-光の三原色RGBを使ったパズルゲーム'
permalink: /projects/2020/color_overlap
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2020/color_overlap.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

魔法によって「色」を奪われ石にされてしまった人々を救うパズルゲームです。光の３原色RGBの様々な形のブロックをうまく重ねて、王国に色を取り戻そう。Unityで制作しています。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'color_overlap'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/_S-EyVp4y1Q?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

