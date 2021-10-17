---
layout: post
title:  2021年 最終成果報告会
year:   2021
---

<br>
2021年11月3日(水祝) 10:00 - 18:00 に、2021年度未踏ジュニア最終成果報告会を<a href="https://www.youtube.com/mitoujr" target="_blank">未踏ジュニア公式YouTubeチャンネル</a>にてライブストリーミング配信いたします。<br>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allowfullscreen="" data-src="//www.youtube.com/embed/OLVQKC7ST6I"></iframe>
</div>

<a class="button" target="_blank" rel='noopener' href="https://www.google.com/calendar/render?action=TEMPLATE&text=2021年度未踏ジュニア最終成果報告会&dates=20211103T100000/20211103T180000&location=https://jr.mitou.org/final&trp=true&details=タイムテーブルなどはこちら: https://jr.mitou.org/final&trp=undefined&trp=true&sprop=https://jr.mitou.org/final">Google カレンダーに追加</a>　<a class="button" target="_blank" rel='noopener' href="https://fb.me/e/237iDG0Ne">Facebook イベント</a>

## タイムテーブル
<iframe class="airtable-embed" src="https://airtable.com/embed/shrWiIURPeouCLjQJ?backgroundColor=gray&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>

<div style='display: flex; flex-wrap: wrap'>
  <!--<a href="https://www.youtube.com/playlist?list=PLNObH2jlC6le90M-WYLJFyl6McNd0kxcB" class="button">YouTube で見る</a>-->
  
  <a href="https://twitter.com/hashtag/%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2?f=live" class="button" target="_blank" rel='noopener'>#未踏ジュニア の<br>ハッシュタグを見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2&&url=https://jr.mitou.org/final&lang=jp&related=mitoujr" class="button" target="_blank" rel='noopener'>#未踏ジュニア で<br>ツイートする</a>
</div>

## {{ page.year }}年度のプロジェクト {#projects}

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.year %}
