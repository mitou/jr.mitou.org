---
layout: post
title: 2020年 最終成果報告会
---

<br>

11月1日 (日) 9:30 - 18:00 に、未踏ジュニア[採択プロジェクト](#projects)の最終成果報告会をライブ配信します。<br>

 <a target='_blank' rel='noopener' href="https://twitter.com/hashtag/%E6%9C%AA%E8%B8%8F%E3%82%B8%E3%83%A5%E3%83%8B%E3%82%A2">Twitter ハッシュタグ『#未踏ジュニア』</a>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allowfullscreen="" data-src="//www.youtube.com/embed/GuanTTXfF7I"></iframe>
</div>

<a target="_blank" rel='noopener' href="https://calendar.google.com/event?action=TEMPLATE&tmeid=M3MzNXZuaGk3Nm5sMHU4ZzJrdjFpanRvZXQgMjBxcThwbG9sN3ZnaTRtbjIwcjJhNjgzdjhAZw&tmsrc=20qq8plol7vgi4mn20r2a683v8%40group.calendar.google.com">Google カレンダーに追加</a> / <a target="_blank" rel='noopener' href="https://www.facebook.com/events/972859696564914/">Facebook イベント</a>

<!--<img src="/assets/img/spinner.svg" data-src="/assets/img/2020final.png" alt="2020年度最終成果報告会" width="90%" class="post-photo lazyload">-->

<a href="https://www.youtube.com/mitoujr" class="button" target="_blank">未踏ジュニア公式<br>YouTubeチャンネルを見る</a>

## タイムテーブル


<iframe class="airtable-embed" src="https://airtable.com/embed/shra9Q7wywdIuiOwB?backgroundColor=gray&blocks=hide" frameborder="0" onmousewheel="" width="100%" height="500" style="background: transparent; border: 1px solid #ccc;"></iframe>


<div id='projects'></div>

## 2020年度のプロジェクト

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == 2020" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>
