---
layout: post
title: 'Voice Commander ～命令×ポーズ×チェス～'
permalink: /projects/2016/voice_commander
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'voice_commander'" | first %}

{% if pj.thumbnail == "tbu.png" %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='https://img.youtube.com/vi/APUTGg6g0hA/hqdefault.jpg' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% else %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/2016/tbu.png' alt='サムネイル画像' loading='lazy' style='margin-bottom: 10px;' />
{% endif %}

Voice Commanderは、声とジェスチャーで操作する新感覚チェスゲームです。 グラフィックにこだわるだけでなく、音声認識によるコマの操作、スマホに表示したマーカーを利用したジェスチャー操作等を組み合わせることで、「かっこよさ」を追求しています。 アニメ「ノーゲーム・ノーライフ」に出てきたチェスから着想を得て開発をすすめました。 それぞれのマスにはプレーヤーが音声認識の際に叫ぶための名前がついていて、テキストファイルを変更することで簡単に名前をカスタマイズすることもできます。

### クリエータ（採択年度：<a href='/projects/2016'>2016年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/APUTGg6g0hA?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

