---
layout: post
title: "ForceBook - つよつよ自作ノートPC"
permalink: /projects/2020/force_book
thumbnail: /assets/img/thumbnails/2020/forcebook.png
description: "筐体から設計・自作し、開発者やゲーマーに使ってほしいノートPCを実現しました。カスタマイズ性を重視してデスクトップ用のパーツを使い、あえてバッテリーを搭載せず電源接続とすることでコンパクトにしました。さらにトラックパッドとしてタッチディスプレイによる新しいインターフェースを考案・実装し、使いやすさにこだわりました。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'force_book'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/MiBiBzl0ZwU/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2020/forcebook.png'
{% endif %}                        style='margin-bottom: 10px;' />

筐体から設計・自作し、開発者やゲーマーに使ってほしいノートPCを実現しました。カスタマイズ性を重視してデスクトップ用のパーツを使い、あえてバッテリーを搭載せず電源接続とすることでコンパクトにしました。さらにトラックパッドとしてタッチディスプレイによる新しいインターフェースを考案・実装し、使いやすさにこだわりました。

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

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/MiBiBzl0ZwU?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

