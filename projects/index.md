---
layout: post
title: 未踏ジュニア<br class="ph">採択プロジェクト
---

<div class="projects">
  <h2>採択プロジェクト</h2>
  <p>
    これまでの採択プロジェクトです。☆はスーパークリエータに認定されました。
  </p>

  {% for this_year in (2016..2019) reversed %}
    {% include project-list.html year=this_year %}
    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の詳細を見る</a>
  {% endfor %}
</div>
