---
layout: post
title:  2021年 最終成果報告会
year:   2021
---

<br>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allowfullscreen="" data-src="//www.youtube.com/embed/EHVEdDCz9IA?list=PLNObH2jlC6le90M-WYLJFyl6McNd0kxcB"></iframe>
</div>


<div style='display: flex; flex-wrap: wrap'>
  <!--<a href="https://www.youtube.com/playlist?list=PLNObH2jlC6le90M-WYLJFyl6McNd0kxcB" class="button">YouTube で見る</a>-->
  
  <a href="https://twitter.com/hashtag/%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2" class="button" target="_blank" rel='noopener'>Twitterハッシュタグ<br>『#未踏ジュニア』を見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2&&url=https://jr.mitou.org/final&lang=jp&related=mitoujr" class="button" target="_blank" rel='noopener'>『#未踏ジュニア』で<br>ツイートする</a>
</div>

<!--
## タイムテーブル {#timetable}

<iframe class="airtable-embed" src="https://airtable.com/embed/shra9Q7wywdIuiOwB?backgroundColor=gray&blocks=hide" frameborder="0" onmousewheel="" width="100%" height="500" style="background: transparent; border: 1px solid #ccc;"></iframe>
-->


## {{ page.year }}年度のプロジェクト {#projects}

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.year %}
