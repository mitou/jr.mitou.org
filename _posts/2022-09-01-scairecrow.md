---
layout: post
title: |
  scairecrow - カラスからゴミを守るシステム
description: |
  scairecrowはゴミ捨て場に近づくカラスを迎撃するハードウェアプロジェクトです。カラスによってゴミが荒らされることで町が汚くなっています。その問題を解決するために、リアルタイムでカラスを物体検出し、レーザーを照射することで効果的に迎撃できるシステムを開発しました。
permalink: /projects/2022/scairecrow
thumbnail: /assets/img/projects/2022/scairecrow.png
twitter_card: summary_large_image
---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'scairecrow'" | first %}
{% assign translations = site.data.translations %}
{% assign lang         = page.lang | default: 'ja' %}

{% if page.lang == 'en' %}
  {% assign pj_title       = pj.title_en %}
  {% assign pj_description = pj.description_en %}
{% else %}
  {% assign pj_title       = pj.title %}
  {% assign pj_description = pj.description %}
{% endif %}

<div style='margin-top: 50px; margin-bottom: 30px;'>
  <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.altThumbnail[lang] }} - {{ pj_title }}'
  {% if pj.thumbnail %}    data-src='/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}'
  {% else %}               data-src='/assets/img/projects/tbu.webp'
  {% endif %}                 title='{{ pj_title }}' style='border-radius: 6px;' loading='lazy' />
</div>

{{ pj_description }}

<div class='flex'>
  {% if pj.link %}
    {% if pj.link contains 'github.com' and pj.link contains 'releases' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.downloadOnGitHub[lang] }}</a>
    {% elsif pj.link contains 'github.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOnGitHub[lang] }}</a>
    {% else %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOfficialWebsite[lang] }}</a>
    {% endif %}
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj_title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">{{ translations.postToX[lang] }}</a>
</div>

### {{ translations.creator[lang] }} {#creator}
<p>
  {% if page.lang == 'en' %}{{ pj.description_en }}{% else %}{{ pj.description }}{% endif %}
  {% for creator_id in pj.creator_ids %}
    {% include creator.html is_simple=true %}
  {% endfor %}
  <small>(<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %} PM)</small>
</p>

{% if page.lang == 'ja' and pj.comment %}
### PM コメント {#comment}
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

{% if pj.promotion %}
## {{ translations.demoMovie[lang] }} {#demo}
{% if pj.promotion contains '.gif' %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.demoMovie[lang] }} (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj.promotion }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj.promotion }}" target="_blank" rel="noopener" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% endif %}
{% endif %}

{% if pj.final %}
## {{ translations.pitch[lang] }}  {#final}
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

<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" rel="noopener" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% endif %}

<nav>
  <p class='nav prev'>
    <a href='noxicel' title='Noxicel - 英作文とAIを用いた英単語学習アプリ'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        Noxicel - An English Vocabular...
      {% else %}
        Noxicel - 英作文とAIを用いた英単語学習アプリ
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='sanitas' title='Sanitas 努力量を共有して美容と健康を支えるアプリ'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        Sanitas: An App Supporting Bea...
      {% else %}
        Sanitas 努力量を共有して美容と健康を支えるアプリ
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}
