---
layout: post
title: "VR絵本メーカー"
permalink: /projects/2016/vr_picture_book_maker
thumbnail: /assets/img/thumbnails/2016/tbu.png
description: "VR絵本メーカーは、 VRで体験できる世界やストーリーを制作するためのスマートフォンアプリケーションです。 物語の世界に入ることができる！大好きなあの人とデートができる！憧れのアーティストのライブにも行けちゃう！誰でも簡単にスマホで観れるVR絵本をつくれます。 ユーザーは背景となる360度画像を選択し、キャラクターや吹き出し、さらに効果音、遷移エフェクトを選択してVR絵本にします。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'vr_picture_book_maker'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/V3SVBM47jOs/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2016/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

VR絵本メーカーは、 VRで体験できる世界やストーリーを制作するためのスマートフォンアプリケーションです。 物語の世界に入ることができる！大好きなあの人とデートができる！憧れのアーティストのライブにも行けちゃう！誰でも簡単にスマホで観れるVR絵本をつくれます。 ユーザーは背景となる360度画像を選択し、キャラクターや吹き出し、さらに効果音、遷移エフェクトを選択してVR絵本にします。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/2016'>2016年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/V3SVBM47jOs?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

