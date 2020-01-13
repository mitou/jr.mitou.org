---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
{% include articles.html %}
<section>
  <h2>2019年度の採択者及び成果</h2>
  <ul>
    {% for pj in site.data.projects.nineteen %}
    <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
    {% endfor %}
  </ul>
  <div class="projects">
    {% for pj in site.data.projects.nineteen %}
    <div class="project" id="{{pj.id}}">
      <h3>{{pj.title}}</h3>
      <p>{{pj.name}}</p>
      <iframe width="560" height="315" src="https://www.youtube.com/embed/{{pj.youtube}}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen=""></iframe>
      <h4>概要</h4>
      <p>{{pj.description}}</p>
    </div>
    {% endfor %}
  </div>
</section>
