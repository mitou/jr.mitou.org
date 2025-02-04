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
  This pages showcases {{ total_projects }} projects accepted and boosted by MITOU Junior program for U-17.
thumbnail: /assets/img/projects/index.webp
latest_en_year: 2024

# latest_pj_year を変更すると本ページの採択プロジェクトが切り替わります。
# 英語版の公開準備が整ったら latest_pj_year の数値に変更してください。
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
    MITOU Junior<br>
    U-17 Projects
  </h2>
  <p>
    This pages showcases projects accepted and boosted by <a href='/english'>MITOU Junior</a> program for U-17. (<strong>{{ total_projects }} projects</strong> / <strong>{{ total_creators }} creators</strong>)
  </p>

  <ul style="list-style: none; text-align: center; padding: 30px 0px;">
    Jump to &raquo;
    {% assign latest_en_year = page.latest_en_year  %}
    {% assign oldest_pj      = site.data.projects | sort: 'year' | first  %}
    {% for this_year in (oldest_pj.year..latest_en_year) reversed %}
    <li style="display: inline-block; margin: auto 10px;"><a href='#{{ this_year }}'>{{ this_year }}</a></li>
    {% endfor %}
  </ul>

  <!--
  <div class='flex'>
    <a href='/projects'        class='button'>一覧から探す</a>
    <a href='/projects/search' class='button'>検索して探す</a>
  </div>
  -->

  <!-- Projects を時系列順にソートし、初年度と最新年度を取得する -->
  {% for this_year in (oldest_pj.year..latest_en_year) reversed %}
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

	  <small><small>(Mentor: {% include link-to-mentor.html id=pj.mentor_id %})</small></small>
	</p>
	{% endif %}

	{% if pj.thumbnail %}
	<!-- Show thumbnail image if already set. -->
	<a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
	  <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}"
           alt="{{ pj.title }}" title="{{ pj.title }}" class="project-thumbnail lazyload" loading="lazy" />
	</a>
	{% else %}
	<!-- Show WebP thumbnail image in the default path. -->
	<a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
	  <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/{{ pj.year }}/{{ pj.id }}.webp"
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
