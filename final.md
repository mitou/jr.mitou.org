---
layout: post
title: 2020年度最終成果報告会
---

2020年11月1日(日) 9:30 - 18:00 に、2020年度未踏ジュニア最終成果報告会を<a href="https://www.youtube.com/channel/UCYHl353XT5aTdKMLJ-xxZoQ" target="_blank">未踏ジュニア公式YouTubeチャンネル</a>にてライブストリーミング配信いたします。
<br><a target="_blank" href="https://calendar.google.com/event?action=TEMPLATE&amp;tmeid=N2Q2czYxbDBpcXZzZTMwMzVuamNxN2FjNm4gdWtrYXJpcG9uQG0&amp;tmsrc=ukkaripon%40gmail.com">Google カレンダーに追加</a>　<a target="_blank" href="https://www.facebook.com/events/972859696564914/">Facebook イベントに追加</a>

<img src="/assets/img/spinner.svg" data-src="/assets/img/2020final.png" alt="2020年度最終成果報告会" width="90%" class="post-photo lazyload">

<a href="https://www.youtube.com/channel/UCYHl353XT5aTdKMLJ-xxZoQ" class="button" target="_blank">未踏ジュニア公式YouTubeチャンネルを見る</a>


## 2020年度のプロジェクト
{% assign projects = site.data.projects | where_exp: "pj", "pj.year == 2020" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>
