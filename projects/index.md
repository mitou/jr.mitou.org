---
layout: post
title: 採択プロジェクト
description: |
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_projects = total_projects | plus: stat.projects %}
    {% assign total_creators = total_creators | plus: stat.creators %}
  {% endfor %}
  採択されたプロジェクトを年度別にまとめたページです。未踏ジュニアではこれまでに {{ total_projects }} 件のプロジェクトを採択し、{{ total_creators }} 名のクリエータを支援してきました。
thumbnail: /assets/img/thumbnails/projects.webp
---

{% assign total_projects = 0 %}
{% assign total_creators = 0 %}
{% for stat in site.data.stats %}
  {% assign total_projects = total_projects | plus: stat.projects %}
  {% assign total_creators = total_creators | plus: stat.creators %}
{% endfor %}

<div class="projects">
  <h2>未踏ジュニア<br class="ph">採択プロジェクト</h2>
  <p>
    これまでの採択プロジェクト一覧ページです。未踏ジュニアではこれまでに <strong>{{ total_projects }} 件</strong>のプロジェクトを採択し、<strong>{{ total_creators }} 名</strong>のクリエータを支援してきました。
  </p>

  <div class="tips">
    ☆
    は<a href='/about#supports-awarding'>スーパークリエータ</a>認定者となります。
  </div>

  <a href="/search" class="button">検索して探す</a>
  
  {% for this_year in (2016..2023) reversed %}
    <a href="/projects/{{ this_year }}"><h3>{{ this_year }}年度</h3></a>
    {% include project-list.html year=this_year %}
    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の一覧を見る</a>
  {% endfor %}
</div>

<br>
<br>

{% include back-to-top.html %}
