---
layout: post
title:  2022年 成果報告会
year:   2022
description: "未踏ジュニアに採択されたクリエータの成果一覧ページです。プロジェクト毎の詳細も辿れるのでぜひチェックしてみてください！"
thumbnail: /assets/img/thumbnails/final_2022.webp
---

<br>

<!--
<img src="/assets/img/spinner.svg" data-src="{{ page.thumbnail }}" alt="{{ page.title }}サムネイル画像"
     class="project-thumbnail lazyload" width='100%' loading="lazy" />
-->

<div class='youtube'>
  <iframe src="https://www.youtube.com/embed/fw1LFIZz-zo?rel=0&start=615" title="2022年度 未踏ジュニア成果報告会" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<!--
2021年度の未踏ジュニア成果報告会を11月3日に実施しました。<a href="https://twitter.com/mitoujr/status/1455832719577944066" target="_blank">YouTubeの動画目次</a>を使うとお好きなシーンからご視聴いただけます。<br>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="" data-src="https://www.youtube.com/embed/fw1LFIZz-zo&rel=0"></iframe>
</div>
-->


<div style='display: flex; flex-wrap: wrap'>
  <!--<a href="https://mitoujr2022.peatix.com/view" class="button" target="_blank" rel='noopener'>現地参加を申し込む</a>-->

  <a href="https://www.youtube.com/watch?v=fw1LFIZz-zo&t=615s" class="button" target="_blank" rel='noopener'>YouTube で見る</a>
</div>

<hr>

<div style='display: flex; flex-wrap: wrap'>
  <a href="https://twitter.com/hashtag/%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2?f=live" class="button" target="_blank" rel='noopener'>#未踏ジュニア の<br>ハッシュタグを見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2&&url=https://jr.mitou.org/final&lang=jp&related=mitoujr" class="button" target="_blank" rel='noopener'>#未踏ジュニア で<br>ツイートする</a>
</div>

<!--
<div style='display: flex; flex-wrap: wrap'>
  <a class="button" target="_blank" rel='noopener' href="https://www.google.com/calendar/render?action=TEMPLATE&text=2021年度未踏ジュニア成果報告会&dates=20211103T100000/20211103T180000&location=https://jr.mitou.org/final&trp=true&details=タイムテーブルなどはこちら: https://jr.mitou.org/final&trp=undefined&trp=true&sprop=https://jr.mitou.org/final">Google カレンダーに追加</a>
  <a class="button" target="_blank" rel='noopener' href="https://fb.me/e/237iDG0Ne">Facebook イベント</a>
</div>
-->

<!--
## タイムテーブル {#timetable}
<iframe class="airtable-embed" src="https://airtable.com/embed/shrWiIURPeouCLjQJ?backgroundColor=gray&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>
-->

## {{ page.year }}年度のプロジェクト {#projects}

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.year %}
