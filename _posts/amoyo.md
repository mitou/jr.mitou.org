---
layout: post
title: '編模様 (あもーよ) イラスト手編み支援アプリ'
permalink: /projects/2019/amoyo
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2019/amoyo.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />

編模様(あもーよ)はイラスト手編みを支援するアプリです。オリジナルの編み図を作り、色が変わるまでの数が表示されることで編み間違いを減らすことができます。自分だけの作品を、時間を忘れて編み続けてしまうほど楽しく簡単に作れるようになります。

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'amoyo'" | first %}

### クリエータ（採択年度：<a href='/projects/2019'>2019年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/irYt3B7l8yg?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

