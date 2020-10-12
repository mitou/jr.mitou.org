---
layout: post
title: 2020年 最終成果報告会
---

<br>

2020年11月1日(日) 9:30 - 18:00 に、2020年度未踏ジュニア最終成果報告会を<a href="https://www.youtube.com/channel/UCYHl353XT5aTdKMLJ-xxZoQ" target="_blank">未踏ジュニア公式YouTubeチャンネル</a>にてライブストリーミング配信いたします。<br>

<a target="_blank" href="https://calendar.google.com/event?action=TEMPLATE&tmeid=M3MzNXZuaGk3Nm5sMHU4ZzJrdjFpanRvZXQgMjBxcThwbG9sN3ZnaTRtbjIwcjJhNjgzdjhAZw&tmsrc=20qq8plol7vgi4mn20r2a683v8%40group.calendar.google.com">Google カレンダーに追加</a>　<a target="_blank" href="https://www.facebook.com/events/972859696564914/">Facebook イベント</a>

<img src="/assets/img/spinner.svg" data-src="/assets/img/2020final.png" alt="2020年度最終成果報告会" width="90%" class="post-photo lazyload">

<a href="https://www.youtube.com/channel/UCYHl353XT5aTdKMLJ-xxZoQ" class="button" target="_blank">未踏ジュニア公式YouTubeチャンネルを見る</a>


## 2020年度のプロジェクト
{% assign projects = site.data.projects | where_exp: "pj", "pj.year == 2020" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>
