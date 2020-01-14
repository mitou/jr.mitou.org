---
layout: default
---
<section id="project-manager">
<h2>2019年度プロジェクトマネージャ</h2>
<div class="pms">
  {% for pm in site.data.pm %}
    <div class="pm">
      <div class="pm-left">
        <img src="{{pm.img}}" alt="{{pm.name}}">
        <h3>{{pm.name}}</h3>
        <p>{{pm.affiliation}}</p>
        <div class="pm-sns">
          {% if pm.facebook %}<a href="https://www.facebook.com/{{pm.facebook}}">facebook</a>{%endif%}
          {% if pm.twitter %}<a href="https://twitter.com/{{pm.twitter}}">twitter</a>{%endif%}
          {% if pm.web %}<a href="{{pm.web}}">website</a>{%endif%}
          {% if pm.github %}<a href="https://github.com/{{pm.github}}">github</a>{%endif%}
        </div>
      </div>
      <div class="pm-right">
        <h4>こんな人・こんな提案を待っています</h4>
        <p>{{pm.interested}}</p>
        <h4>略歴</h4>
        <p>{{pm.bio}}</p>
      </div>
    </div>
  {% endfor %}
</div>
</section>
