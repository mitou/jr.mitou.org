---
layout: post
title: 未踏ジュニア 2017年度 採択プロジェクト
permalink: projects/2017
---

<h2>2017年度の採択者及び成果</h2>
<p>2017年度は、41件の応募中、11プロジェクト17人を採択しました。</p>

{% assign projects_2017 = site.data.projects | where_exp: "pj", "pj.year == 2017" %}
<ul class="project-list">
  {% for pj in projects_2017 %}
    {%include sp-creator.html %}
  {% endfor %}
</ul>

<div class="projects flex">
  {% for pj in projects_2017 %}
    {% include project.html %}
  {% endfor %}
</div>
