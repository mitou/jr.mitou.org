---
lang: en
layout: post
title: |
  Chatty Task Board – A Device to Prevent Forgetfulness and Support Children’s Self-Management Through Analog-like operation
description: |
  Even if you try to manage your daily to-do list on a whiteboard or similar device, some people end up forgetting to use it.
  
  While smartphone reminder apps can be effective, there are individuals—such as children and older adults—who do not use smartphones for various reasons. In addition, many find task management unenjoyable and difficult to sustain. To address these issues, we developed a device that helps prevent forgetfulness by enabling digital task management through analog interactions, allowing children to enjoyably develop self-management habits.
permalink: /english/projects/2025/oshaberi_taskboard
thumbnail: /assets/img/projects/2025/oshaberi_taskboard.webp
twitter_card: summary_large_image

---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'oshaberi_taskboard'" | first %}
{% assign translations = site.data.translations %}
{% assign lang         = page.lang | default: 'ja' %}

{% comment %} pj.description needs NOT to be escapd to render <br> tags. {% endcomment %}
{% if page.lang == 'en' %}
  {% assign pj_title       = pj.title_en       | escape %}
  {% assign pj_description = pj.description_en %}
  {% assign pj_promotion   = pj.promotion_en   | default: pj.promotion %}
{% else %}
  {% assign pj_title       = pj.title          | escape %}
  {% assign pj_description = pj.description    %}
  {% assign pj_promotion   = pj.promotion %}
{% endif %}

<div style='margin-top: 50px; margin-bottom: 30px;'>
  <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.altThumbnail[lang] }} - {{ pj_title }}'
  {% if pj.thumbnail %}    data-src='/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}'
  {% else %}               data-src='{{ page.thumbnail }}'
  {% endif %}                 title='{{ pj_title }}' style='border-radius: 6px;' loading='lazy' />
</div>

{{ pj_description }}

<div class='flex'>
  {% if pj.link %}
    {% if pj.link contains 'https://github.com' and pj.link contains 'releases' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.downloadOnGitHub[lang] }}</a>
    {% elsif pj.link contains 'https://github.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOnGitHub[lang] }}</a>
    {% elsif pj.link contains 'https://x.com' %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOnTwitter[lang] }}</a>
    {% else %}
       <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOfficialWebsite[lang] }}</a>
    {% endif %}
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text={{ pj_title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang={{ translations.postLangX[lang] }}&url={{ site.url }}{% if page.lang =='en' %}/english{% endif %}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank">{{ translations.postToX[lang] }}</a>
</div>

### {{ translations.creator[lang] }} {#creator}
<p>
  {% for creator_id in pj.creator_ids %}
    {% include creator.html no_spc_star=true %}
  {% endfor %}

  <small>
    {% if page.lang == 'en' %}
    (Year: <a href='/english/projects/#{{ pj.year }}'>{{ pj.year }}</a> /
     Mentor: {% include link-to-mentor.html id=pj.mentor_id %})
    {% else %}
    (<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %} PM)
    {% endif %}
  </small>
</p>

{% if pj.comment and page.lang != 'en' %}
### PM コメント {#comment}
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

{% if pj_promotion %}
## {{ translations.demoMovie[lang] }} {#demo}
{% if pj_promotion contains '.gif' %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.demoMovie[lang] }} (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj_promotion }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
<div class="youtube">
  {% include youtube-embed.html id=pj_promotion %}
</div>
<a href="https://youtu.be/{{ pj_promotion }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% endif %}
{% endif %}

{% if pj.final %}
## {{ translations.pitch[lang] }}  {#final}
<div class="youtube">
  {% include youtube-embed.html id=pj.final start=pj.final_start %}
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

<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% else %}
## {{ translations.pitch[lang] }}  {#final}
成果報告会での発表をお楽しみください。

<a href="/final" class="button">成果報告会の情報を見る</a>
{% endif %}

<nav>
  <p class='nav prev'>
    <a href='fudey' title='Fudey - Sensory Calligraphy'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        Fudey - Sensory Calligraphy
      {% else %}
        Fudey - Sensory Calligraphy
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='mathmosis' title='Mathmosis - 数学学習支援AIを搭載したタブレット向けアプリ'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        Mathmosis - A Tablet Applicati...
      {% else %}
        Mathmosis - 数学学習支援AIを搭載したタブレット...
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}

<!-- Schema.org Data Type: https://schema.org/ -->
<script type="application/ld+json">
  {% include project-json-ld.json project_id="oshaberi_taskboard" %}
</script>
