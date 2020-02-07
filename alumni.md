---
layout: post
title: Mentor Alumni
---

## Mentor Alumni

<br>

過去に未踏ジュニア PM をしていただいた方々を、当時の情報のままにご紹介しております。これまでご協力していただきありがとうございました!

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% unless mentor.is_alumni %} {% continue %} {% endunless %}
    <div class="mentor" id="{{ mentor.id }}">
      <img src="/assets/img/mentors/{{ mentor.img }}" alt="{{ mentor.name.last }} {{ mentor.name.first }}" class="mentor-img">
      <div class="mentor-info">
        <h3 class="mentor-name">{{ mentor.name.last }} {{ mentor.name.first }}</h3>
        <p>{{ mentor.affiliation }}</p>

        <div class="mentor-sns">
          {% if mentor.facebook %}<a href="https://www.facebook.com/{{ mentor.facebook }}"><i class="fab fa-facebook-square green"></i></a>{% endif %}
          {% if mentor.twitter %}<a href="https://twitter.com/{{ mentor.twitter }}"><i class="fab fa-twitter-square green"></i></a>{%endif%}
          {% if mentor.web %}<a href="{{ mentor.web }}"><i class="fas fa-globe green"></i></a>{% endif %}
          {% if mentor.github %}<a href="https://github.com/{{ mentor.github }}"><i class="fab fa-github-square green"></i></a>{% endif %}
        </div>
      </div>

      <div class="mentor-comment text-left">
        <h4>こんな人・こんな提案を待っています</h4>
        <p>{{ mentor.interested }}</p>

	<h4>これまでの採択プロジェクト</h4>
	<ul>
	  {% assign projects = site.data.projects | where: 'mentor_id', mentor.id %}
	  {% for pj in projects %}
	    <li><a href="/projects/{{ pj.year }}#{{ pj.id }}">{{ pj.title }}</a></li>
	  {% else %}
	    <li>🆕 今年度より採択開始!</li>
	  {% endfor %}
	</ul>

        <h4>略歴</h4>
        <p>{{ mentor.bio }}</p>
      </div>
    </div>
  {% endfor %}
</div>

## Mentor Alumni
