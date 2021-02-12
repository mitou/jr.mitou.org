---
layout: post
title: 'Mer-多機能電子リコーダー'
permalink: /projects/2020/mer
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2020/mer.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

MERはリコーダーを元に、様々な機能を搭載した電子楽器です。発音が簡単なので、初心者でも完成度の高い演奏を体験できます。さらに、気圧センサ、ロータリーエンコーダ 、3D触覚センサを用いた高度な楽器制御が可能です。内蔵FM音源の他に、MIDI出力に対応しているので、ユーザーの好きな音源で演奏ができます。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'mer'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/rQmgwLH8xI0?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

