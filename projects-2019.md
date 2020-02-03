---
layout: post
title: 未踏ジュニア 2019年度 採択プロジェクト
permalink: projects/2019
---

<h2>2019年度の採択者と成果</h2>
<p>2019年度は、127件の応募中、13プロジェクト17人を採択しました。（☆は未踏ジュニアスーパークリエータに認定されました）</p>

{% assign projects_2019 = site.data.projects | where_exp: "pj", "pj.year == 2019" %}
<ul class="project-list">
  {% for pj in projects_2019 %}
    {% include sp-creator.html %}
  {% endfor %}
</ul>

<div class="projects flex">
  {% for pj in projects_2019 %}
    {% include project.html %}
  {% endfor %}
</div>
