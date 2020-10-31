---
layout: post
title: 2020年 最終成果報告会
---

<br>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allowfullscreen="" data-src="//www.youtube.com/embed/GuanTTXfF7I"></iframe>
</div>

<!--<p>本日 9:30 - 18:00 の間、<a href='#projects'>採択プロジェクト</a>の最終成果報告会をライブ配信します。<br></p>-->
<!--<a target="_blank" rel='noopener' href="https://calendar.google.com/event?action=TEMPLATE&tmeid=M3MzNXZuaGk3Nm5sMHU4ZzJrdjFpanRvZXQgMjBxcThwbG9sN3ZnaTRtbjIwcjJhNjgzdjhAZw&tmsrc=20qq8plol7vgi4mn20r2a683v8%40group.calendar.google.com">Google カレンダーに追加</a> / <a target="_blank" rel='noopener' href="https://www.facebook.com/events/972859696564914/">Facebook イベントを見る</a>-->

<a href="https://twitter.com/hashtag/%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2?f=live" class="button" target="_blank" rel='noopener'>Twitterハッシュタグ<br>『#未踏ジュニア』を見る</a>

<!--<img src="/assets/img/spinner.svg" data-src="/assets/img/2020final.png" alt="2020年度最終成果報告会" width="90%" class="post-photo lazyload">-->

## タイムテーブル {#timetable}

<iframe class="airtable-embed" src="https://airtable.com/embed/shra9Q7wywdIuiOwB?backgroundColor=gray&blocks=hide" frameborder="0" onmousewheel="" width="100%" height="500" style="background: transparent; border: 1px solid #ccc;"></iframe>

<div id='projects'></div>

## 2020年度のプロジェクト

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == 2020" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>
