---
layout: post
title: 2018年度<br>採択プロジェクト
permalink: projects/2018
---

<h2>2018年度の採択者及び成果</h2>
<p>2018年度は、105件の応募中、12プロジェクト14人を採択しました。（☆は未踏ジュニアスーパークリエータに認定されました）</p>

{% assign projects_2018 = site.data.projects | where_exp: "pj", "pj.year == 2018" %}
<ul class="project-list">
  {% for pj in projects_2018 %}
    {% include sp-creator.html %}
  {% endfor %}
</ul>

<div class="projects flex">
  {% for pj in projects_2018 %}
    {% include project.html %}
  {% endfor %}
</div>
