---
layout: post
title: メディア掲載
---

<ul>
  {% for article in site.data.articles %}
  <li>
    <span>{{ article.date }}</span>
    <a href="{{ article.url }}">{{ article.title }}</a>
  </li>
  {% endfor %}
</ul>
