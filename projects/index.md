---
layout: post
title: 採択プロジェクト
---

<div class="projects">
  <h2>未踏ジュニア<br class="ph">採択プロジェクト</h2>
  <p>
    これまでの採択プロジェクトです。☆はスーパークリエータに認定されました。
  </p>

  {% for this_year in (2016..2020) reversed %}
    <a href="/projects/{{ this_year }}"><h3>{{ this_year }}年度</h3></a>
    {% include project-list.html year=this_year %}
    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の一覧を見る</a>
  {% endfor %}
</div>
