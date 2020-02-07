---
layout: post
title: メディア掲載
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
