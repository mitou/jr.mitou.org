---
layout: post
title: 採択プロジェクト
description: 採択されたプロジェクトを年度別にまとめたページです。
thumbnail: /assets/img/thumbnails/projects.webp
---

<div class="projects">
  <h2>未踏ジュニア<br class="ph">採択プロジェクト</h2>
  <p>
    これまでの採択プロジェクトです。☆は<a href='/about#award-outstanding-performance'>スーパークリエータ</a>認定者となります。
  </p>
  <a href="/search" class="button">検索して探す</a>

  {% for this_year in (2016..2023) reversed %}
    <a href="/projects/{{ this_year }}"><h3>{{ this_year }}年度</h3></a>
    {% include project-list.html year=this_year %}
    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の一覧を見る</a>
  {% endfor %}
</div>
