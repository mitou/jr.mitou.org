---
layout: post
title: メディア掲載
---

<ul class="list-none media-list">
  {% for article in site.data.articles %}
  <li>
    <span class="media-date">{{ article.date }}</span>
    <a href="{{ article.url }}">{{ article.title }}</a>
  </li>
  {% endfor %}
</ul>
