---
layout: default
---
<h1>過去の採択者及び成果</h1>
<section id="results">
  <label for="nineteen">2019</label>
  <label for="eighteen">2018</label>
  <label for="seventeen">2017</label>
  <label for="sixteen">2016</label>
  <input type="radio" id="nineteen" class="results-radio" name="year" checked>
  <div id="pj-nineteen" class="results-pjs">
    <h2>2019年度の採択者及び成果</h2>
    <ul>
      {% for pj in site.data.projects.nineteen %}
      <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
      {% endfor %}
    </ul>
    <div class="projects">
      {% for pj in site.data.projects.nineteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="eighteen" class="results-radio" name="year">
  <div id="pj-eighteen" class="results-pjs">
    <h2>2018年度の採択者及び成果</h2>
    <ul>
      {% for pj in site.data.projects.eighteen %}
      <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
      {% endfor %}
    </ul>
    <div class="projects">
      {% for pj in site.data.projects.eighteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="seventeen" class="results-radio" name="year">
  <div id="pj-seventeen" class="results-pjs">
    <h2>2017年度の採択者及び成果</h2>
    <ul>
      {% for pj in site.data.projects.seventeen %}
      <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
      {% endfor %}
    </ul>
    <div class="projects">
      {% for pj in site.data.projects.seventeen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
  <input type="radio" id="sixteen" class="results-radio" name="year">
  <div id="pj-sixteen" class="results-pjs">
    <h2>2016年度の採択者及び成果</h2>
    <ul>
      {% for pj in site.data.projects.sixteen %}
      <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
      {% endfor %}
    </ul>
    <div class="projects">
      {% for pj in site.data.projects.sixteen %}
        {% include project.html %}
      {% endfor %}
    </div>
  </div>
</section>
