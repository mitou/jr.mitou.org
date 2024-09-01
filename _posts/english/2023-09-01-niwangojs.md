---
lang: en
layout: post
title: |
  niwango.js - An Execution Engine for Niwango, Programmable via Video Comments
description: |
  This is an interpreter engine that executes the programming language "Niwango (Niwango Script)" in a web browser. It provides a time-sequenced processing system and returns the rendering results. The primary goal is to enable the re-execution of works previously created with this language, with the ultimate aim of revitalizing the Niwango community.

permalink: /english/projects/2023/niwangojs
thumbnail: /assets/img/projects/2023/niwangojs.webp
twitter_card: summary_large_image
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'niwangojs'" | first %}

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
    (Year: <a href='/english/projects/#{{ pj.year }}'>{{ pj.year }}</a> /
     Mentor: {% include link-to-mentor.html id=pj.mentor_id %})
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

{% if page.lang == 'en' %}
<div class="note" style="margin-top: 30px;">
  <span style="font-weight: bold; margin-left: -4px;">To show English subtitles:</span><br>
  Play video <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
  Click CC icon <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
  Click Settings <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
  Click Subtitles/CC <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
  Click Auto-translate <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
  Click English <small>(or other language you prefer)</small>
</div>
{% endif %}

<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" rel="noopener" class="button">Watch on YouTube</a>
{% endif %}

<nav>
  <p class='nav prev'><a href='bakusoku_agv' title='Development of a New Independent Steering Mechanism and AGV Module Using It'>&larr; Prev<br>
    Development of a New Independe...</a></p>
  <p class='nav next'><a href='stask' title='Stask - An App to Assist Students with Task Progress'>Next &rarr;<br>
    Stask - An App to Assist Stude...</a></p>
</nav>

<ul style="list-style: none; text-align: center; padding: 30px 0px;">
  <li style="display: inline-block; margin: auto 10px;">
    <a href="/english/projects">&raquo; Back to Project Showcase</a>
  </li>
</ul>
