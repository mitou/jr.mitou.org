---
layout: post
title: "Color Overlap-光の三原色RGBを使ったパズルゲーム"
permalink: /projects/2020/color_overlap
thumbnail: /assets/img/thumbnails/2020/color_overlap.jpg
description: "魔法によって「色」を奪われ石にされてしまった人々を救うパズルゲームです。光の３原色RGBの様々な形のブロックをうまく重ねて、王国に色を取り戻そう。Unityで制作しています。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'color_overlap'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/_S-EyVp4y1Q/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2020/color_overlap.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

魔法によって「色」を奪われ石にされてしまった人々を救うパズルゲームです。光の３原色RGBの様々な形のブロックをうまく重ねて、王国に色を取り戻そう。Unityで制作しています。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2020'>2020年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/_S-EyVp4y1Q?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

