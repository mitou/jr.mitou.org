---
lang: en
layout: post
title: Project Showcase
description: |
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_projects = total_projects | plus: stat.projects %}
    {% assign total_creators = total_creators | plus: stat.creators %}
  {% endfor %}
  This pages showcases {{ total_projects }} projects accepted and boosted by Mitou Junior program for U-17.
thumbnail: /assets/img/projects/index.webp
---

{% assign total_projects = 0 %}
{% assign total_creators = 0 %}
{% for stat in site.data.stats %}
  {% assign total_projects = total_projects | plus: stat.projects %}
  {% assign total_creators = total_creators | plus: stat.creators %}
{% endfor %}

<div class="projects">
  <h2 id='showcase'>
    <a href='#showcase'><i class="fa-regular fa-image"></i></a>
    Mitou Junior<br>
    U-17 Projects
  </h2>
  <p>
    This pages showcases projects accepted and boosted by <a href='/english'>Mitou Junior</a> program for U-17. (<strong>{{ total_projects }} projects</strong> / <strong>{{ total_creators }} creators</strong>)
  </p>

  <ul style="list-style: none; text-align: center; padding: 30px 0px;">
    Jump to &raquo;
    <li style="display: inline-block; margin: auto 10px;"><a href='#2023'>2023</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2022'>2022</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2021'>2021</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2020'>2020</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2019'>2019</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2018'>2018</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2017'>2017</a></li>
    <li style="display: inline-block; margin: auto 10px;"><a href='#2016'>2016</a></li>
  </ul>

  <!--
  <div class='flex'>
    <a href='/projects'        class='button'>一覧から探す</a>
    <a href='/projects/search' class='button'>検索して探す</a>
  </div>
  -->

  <!-- Projects を時系列順にソートし、初年度と最新年度を取得する -->
  {% assign oldest_pj = site.data.projects | sort: 'year' | first %}
  {% assign newest_pj = site.data.projects | sort: 'year' | last  %}
  {% for this_year in (oldest_pj.year..newest_pj.year) reversed %}
    <h3 id='{{ this_year }}'>
      <a href='#{{ this_year }}' style='color: #333; font-weight: bold;'>{{ this_year }}'s projects</a>
      <span style='font-size: small;'>（<a href='#top'>Back to top &uarr;</a>）</span>
    </h3>

    <div class="projects flex">
      {% assign projects = site.data.projects | where_exp: "pj", "pj.year == this_year" %}
      {% for pj in projects %}
        {% comment %}{% include project-details.html %}{% endcomment%}

      <div class="project" id="{{ pj.id }}">
	<h3 class="project-title no-link-decoration"><a href='#{{ pj.id }}'>{{ pj.title_en }}</a></h3>

	{% if pj.creator_ids %}
	<!-- Show no credits, including mentor, unless create_ids assigned. -->
	<p class="project-name">
	  <small>by</small>
	  {% for creator_id in pj.creator_ids %}
	    {% assign creator = site.data.creators | where: "id", creator_id | first %}
	    {% if forloop.index > 1 %}<span>/</span>{% endif %}

	    {{ creator.id | split: '_' | first | capitalize }}
	    {{ creator.id | split: '_' | last  | capitalize }}
	  {% endfor %}

	  <small><small>
	    {% assign mentor = site.data.mentors | where: "id", pj.mentor_id | first %}

	    {% if mentor.is_alumni %}
            (Mentor: <a href='/mentors/alumni#{{ mentor.id }}'>{{ mentor.name.english }}</a>)
            {% else %}
            (Mentor: <a href='/mentors#{{ mentor.id }}'>{{ mentor.name.english }}</a>)
            {% endif %}
	  </small></small>
	</p>
	{% endif %}

	{% if pj.thumbnail %}
	<!-- Show thumbnail image if already set. -->
	<a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
	  <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}"
           alt="{{ pj.title }}" title="{{ pj.title }}" class="project-thumbnail lazyload" loading="lazy" />
	</a>
	{% else %}
	<!-- Show TBD thumbnail image if not ready yet. -->
	<a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
	  <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/tbu.png"
           alt="{{ pj.title }}" title="{{ pj.title }}" class="project-thumbnail lazyload" loading="lazy" />
	</a>
	{% endif %}

	<h4>Abstract</h4>
	<p class="project-description">{{ pj.description_en }}</p>

	{% comment %}
	{% if pj.comment %}
	<h4>Mentor's Comment</h4>
	<p class="project-comment">{{ pj.comment }}</p>
	{% endif %}
	{% endcomment %}

	<a href="/english/projects/{{ pj.year }}/{{ pj.id }}" class="button">View details</a>
      </div>

      {% endfor %}
    </div>

    <!--<a href="/projects/{{ this_year }}" class="button">{{ this_year }}年の成果報告会を見る</a>-->
  {% endfor %}
</div>

<br>
<br>

{% include back-to-top.html %}
