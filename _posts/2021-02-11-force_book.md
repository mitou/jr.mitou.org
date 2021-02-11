---
layout: post
title: 'ForceBook - つよつよ自作ノートPC'
permalink: /projects/2020/force_book
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2020/forcebook.png' loading='lazy' style='margin-bottom: 10px;' />

筐体から設計・自作し、開発者やゲーマーに使ってほしいノートPCを実現しました。カスタマイズ性を重視してデスクトップ用のパーツを使い、あえてバッテリーを搭載せず電源接続とすることでコンパクトにしました。さらにトラックパッドとしてタッチディスプレイによる新しいインターフェースを考案・実装し、使いやすさにこだわりました。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'force_book'" | first %}

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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/MiBiBzl0ZwU?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

