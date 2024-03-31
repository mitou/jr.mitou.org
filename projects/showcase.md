---
layout: post
title: 採択プロジェクト図鑑
description: |
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_projects = total_projects | plus: stat.projects %}
    {% assign total_creators = total_creators | plus: stat.creators %}
  {% endfor %}
  採択された全プロジェクトを図鑑としてまとめたページです。未踏ジュニアではこれまでに {{ total_projects }} 件のプロジェクトを採択し、{{ total_creators }} 名のクリエータを支援しています。
thumbnail: /assets/img/thumbnails/projects.webp
---

{% assign total_projects = 0 %}
{% assign total_creators = 0 %}
{% for stat in site.data.stats %}
  {% assign total_projects = total_projects | plus: stat.projects %}
  {% assign total_creators = total_creators | plus: stat.creators %}
{% endfor %}

<div class="projects">
  <h2 id='showcase'>
    <a href='#showcase'><i class="fa-regular fa-image"></i></a>
    未踏ジュニア<br>
    採択プロジェクト図鑑
  </h2>
  <p>
    これまでに採択された全プロジェクトを<b>図鑑から探せるページ</b>です。<br class="ph"><br class="ph">未踏ジュニアではこれまでに <strong>{{ total_projects }} 件</strong>のプロジェクトを採択し、<strong>{{ total_creators }} 名</strong>のクリエータを支援してきました。
  </p>

  <div class='flex'>
    <a href='/projects'        class='button'>一覧から探す</a>
    <a href='/projects/search' class='button'>検索して探す</a>
  </div>

  <!-- TODO: '2023' を 20xx.md の存在チェックから動的にする -->
  {% for this_year in (2016..2023) reversed %}
    <h3 id='{{ this_year }}'>
      <a href='#{{ this_year }}' style='color: #333;'>{{ this_year }}年度</a>
      <span style='font-size: small;'>（<a href='/projects/{{ this_year }}'>&raquo; 成果報告会を見る</a>）</span>
    </h3>

    <div class="projects flex">
      {% assign projects = site.data.projects | where_exp: "pj", "pj.year == this_year" %}
      {% for pj in projects %}
        {% include project-details.html %}
      {% endfor %}
    </div>

    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年の成果報告会を見る</a>
  {% endfor %}
</div>

<br>
<br>

{% include back-to-top.html %}
