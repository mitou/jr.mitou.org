---
lang: en
layout: post
title: |
  VirtualPresents - A Web Service for Use in Virtual Worlds
description: |
  This project explores the development of a web service designed to enhance virtual worlds. It allows users to publish images to virtual worlds from the web and provides features similar to "likes" on Twitter. The project proposes a concept that serves as a bridge between the significantly different realms of virtual worlds and the web.

permalink: /english/projects/2019/virtual_presents
thumbnail: /assets/img/projects/2019/virtual_presents.webp
twitter_card: summary_large_image
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'virtual_presents'" | first %}

<div style='margin-top: 50px; margin-bottom: 30px;'>
  <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='Thumbnail - {{ pj.title }}'
  {% if pj.thumbnail %}    data-src='/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}'
  {% else %}               data-src='/assets/img/projects/tbu.webp'
  {% endif %}                 title='{{ pj.title }}' style='border-radius: 6px;' loading='lazy' />
</div>

{{ pj.description_en }}

<div class='flex'>
  {% if pj.link %}
    {% if pj.link contains 'github.com' and pj.link contains 'releases' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>Donwload codes on GitHub</a>
    {% elsif pj.link contains 'github.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>View project on GitHub</a>
    {% else %}
       <a href='{{ pj.link }}' target='_blank' class='button'>View official website</a>
    {% endif %}
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj.title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### Creator {#creator}
<p>
  {% for creator_id in pj.creator_ids %}
    {% assign creator = site.data.creators | where: "id", creator_id | first %}
    {% if forloop.index > 1 %}<span>/</span>{% endif %}

    {{ creator.id | split: '_' | first | capitalize }}
    {{ creator.id | split: '_' | last  | capitalize }}
  {% endfor %}

  <small>
    {% assign mentor = site.data.mentors | where: "id", pj.mentor_id | first %}
    (Year: <a href='/projects/{{ pj.year }}'>{{ pj.year }}</a> /
     {% if mentor.is_alumni %}
     Mentor: <a href='/alumni#{{ mentor.id }}'>{{ mentor.name.english }}</a>)
     {% else %}
     Mentor: <a href='/mentors#{{ mentor.id }}'>{{ mentor.name.english }}</a>)
     {% endif %}
  </small>
</p>

{% comment %}
{% if pj.comment %}
### Mentor's Comment {#comment}
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}
{% endcomment %}

{% if pj.promotion %}
{% if pj.promotion contains '.gif' %}
## Demo {#demo}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='デモ動画 (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj.promotion }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
## Demo {#demo}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj.promotion }}" target="_blank" rel="noopener" class="button">Watch on YouTube</a>
{% endif %}
{% endif %}

{% if pj.final %}
## Pitch {#final}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" rel="noopener" class="button">Watch on YouTube</a>
{% endif %}

<nav>
  <p class='nav prev'><a href='relay_master' title='Relay Master'>&larr; Prev<br>
    Relay Master</a></p>
  <p class='nav next'><a href='edge_guided_anime_characters_generation' title='Edge-guided Anime Characters Generation'>Next &rarr;<br>
    Edge-guided Anime Characters G...</a></p>
</nav>

<ul style="list-style: none; text-align: center; padding: 30px 0px;">
  <li style="display: inline-block; margin: auto 10px;">
    <a href="/english/projects">&raquo; Back to Project Showcase</a>
  </li>
</ul>
