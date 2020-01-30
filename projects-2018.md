---
layout: post
title: 未踏ジュニア 2018年度 採択プロジェクト
permalink: projects/2018
---

  <h2>2018年度の採択者及び成果</h2>
  <p>2018年度は、105件の応募中、12プロジェクト14人を採択しました。（☆は未踏ジュニアスーパークリエータに認定されました）</p>
  <ul class="list-none">
    {% for pj in site.data.projects.eighteen %}
      {% include sp-creator.html %}
    {% endfor %}
  </ul>
  <div class="projects flex">
    {% for pj in site.data.projects.eighteen %}
      {% include project.html %}
    {% endfor %}
  </div>
