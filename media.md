---
layout: post
title: メディア掲載
description: 本ページでは、未踏ジュニアに関するメディア掲載の事例をまとめています。
---

## 掲載メディア一覧

<ul class="list-none media-list">
  {% for medium in site.data.media %}
  <li>
    <span class="media-date">{{ medium.date }}</span>
    <a href="{{ medium.url }}">{{ medium.title }}</a>
  </li>
  {% endfor %}
</ul>
