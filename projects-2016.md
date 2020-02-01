---
layout: post
title: 未踏ジュニア 2016年度 採択プロジェクト
permalink: projects/2016
---

<h2>2016年度の採択者及び成果</h2>
<p>2016年度は、16件の応募中、4プロジェクト6人を採択しました。</p>

<ul class="project-list">
  {% for pj in site.data.projects.sixteen %}
    {% include sp-creator.html %}
  {% endfor %}
</ul>

<div class="projects flex">
  {% for pj in site.data.projects.sixteen %}
    {% include project.html %}
  {% endfor %}
</div>
