---
layout: post
title: 過去の採択者及び成果
---

<div>
  <label for="nineteen">2019</label>
  <label for="eighteen">2018</label>
  <label for="seventeen">2017</label>
  <label for="sixteen">2016</label>
  <input type="radio" id="nineteen" class="results-radio" name="year" checked>
  
  <div id="pj-nineteen" class="results-pjs">
    <h2>2019年度の採択者及び成果</h2>
    <p>2019年度は、127件の応募中、13プロジェクト17人を採択しました。（☆は未踏ジュニアスーパークリエータに認定されました）</p>
    <ul>
      {% for pj in site.data.projects.nineteen %}
        {% include sp-creator.html %}
      {% endfor %}
    </ul>
    <div class="projects flex">
      {% for pj in site.data.projects.nineteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="eighteen" class="results-radio" name="year">
  
  <div id="pj-eighteen" class="results-pjs">
    <h2>2018年度の採択者及び成果</h2>
    <p>2018年度は、105件の応募中、12プロジェクト14人を採択しました。（☆は未踏ジュニアスーパークリエータに認定されました）</p>
    <ul>
      {% for pj in site.data.projects.eighteen %}
        {% include sp-creator.html %}
      {% endfor %}
    </ul>
    <div class="projects flex">
      {% for pj in site.data.projects.eighteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="seventeen" class="results-radio" name="year">
  
  <div id="pj-seventeen" class="results-pjs">
    <h2>2017年度の採択者及び成果</h2>
    <p>2017年度は、41件の応募中、11プロジェクト17人を採択しました。</p>
    <ul>
      {% for pj in site.data.projects.seventeen %}
        {%include sp-creator.html %}
      {% endfor %}
    </ul>
    <div class="projects flex">
      {% for pj in site.data.projects.seventeen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="sixteen" class="results-radio" name="year">
  
  <div id="pj-sixteen" class="results-pjs">
    <h2>2016年度の採択者及び成果</h2>
    <p>2016年度は、16件の応募中、4プロジェクト6人を採択しました。</p>
    <ul>
      {% for pj in site.data.projects.sixteen %}
        {% include sp-creator.html %}
      {% endfor %}
    </ul>
    <div class="projects flex">
      {% for pj in site.data.projects.sixteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
</div>
