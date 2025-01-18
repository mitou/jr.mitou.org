---
layout: post
title: Mentor Alumni
description: 本ページでは、未踏ジュニアに応募するクリエータを支援してくださった方々（これまでのメンター）を紹介しています。
redirect_from:
  - /alumni
---

## Mentor Alumni


未踏ジュニアのメンターとして貢献していただいた方々です。当時の情報をそのままに残しております。ご協力していただきありがとうございました! 🙏✨

<br>

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% unless mentor.is_alumni %} {% continue %} {% endunless %}
    <div class="mentor" id="{{ mentor.id }}">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/mentors/{{ mentor.img }}" alt="{{ mentor.name.last }} {{ mentor.name.first }}" class="mentor-img lazyload">
      <div class="mentor-info">
        <h3 class="mentor-name">{{ mentor.name.last }} {{ mentor.name.first }}</h3>
        <p>{{ mentor.affiliation }}</p>

        <div class="mentor-sns">
          {% if mentor.facebook %}<a href="https://www.facebook.com/{{ mentor.facebook }}"><i class="fab fa-facebook-square green"></i></a>{% endif %}
          {% if mentor.twitter %}<a href="https://twitter.com/{{ mentor.twitter }}"><i class="fab fa-twitter-square green"></i></a>{% endif %}
          {% if mentor.web %}<a href="{{ mentor.web }}"><i class="fas fa-globe green"></i></a>{% endif %}
          {% if mentor.github %}<a href="https://github.com/{{ mentor.github }}"><i class="fab fa-github-square green"></i></a>{% endif %}
          <a href="https://scrapbox.io/mitou-meikan/{{ mentor.name.last }}_{{ mentor.name.first }}"><img class="icon-mitou-meikan lazyload" src="/assets/img/spinner.svg" data-src="/assets/img/mitou_meikan.png" alt="未踏名鑑" /></a>
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
	    <li><a href='/guideline'>次回募集</a>から採択開始!</li>
	  {% endfor %}
	</ul>

        <h4>略歴</h4>
        <p>{{ mentor.bio }}</p>

	{% if mentor.youtube %}<a class="button" href="https://www.youtube.com/watch?v={{ mentor.youtube }}&list=PLNObH2jlC6leiUTypiJYO2zUcwBg7M0Bg" target="_blank" rel="noopener">メッセージ動画を見る</a>{% endif %}
      </div>
    </div>
  {% endfor %}
</div>

<a class="button" href='/mentors'>現役のメンターを見る</a>
