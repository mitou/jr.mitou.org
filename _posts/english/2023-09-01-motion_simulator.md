---
lang: en
layout: post
title: |
  Creating a Motion Simulator from Scratch
description: |
  This Motion Simulator is a system designed to enhance the sense of immersion by allowing users to physically experience the movements depicted in content, similar to 4DX in movie theaters. I have been working on creating my own Motion Simulator from scratch over several years through trial and error. This time, I have built a chair-type Motion Simulator that features "6 degrees of freedom" and is "compact enough to fit the mechanism under the chair." Such a Motion Simulator with these characteristics is not only unique among DIY projects but also does not exist in commercial products.

permalink: /english/projects/2023/motion_simulator
thumbnail: /assets/img/projects/2023/motion_simulator.webp
twitter_card: summary_large_image
---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'motion_simulator'" | first %}
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
  {% else %}               data-src='/assets/img/projects/{{ pj.year }}/{{ pj.id        }}.webp'
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
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj_promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://youtu.be/{{ pj_promotion }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
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

<a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% else %}
## {{ translations.pitch[lang] }}  {#final}
成果報告会での発表をお楽しみください。

<a href="/final" class="button">成果報告会の情報を見る</a>
{% endif %}

<nav>
  <p class='nav prev'>
    <a href='hato' title='Hopefully Automatic Train Operation: 没入感を高める!? Nゲージ列車 全自動走行システム'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        Hopefully Automatic Train Oper...
      {% else %}
        Hopefully Automatic Train Oper...
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='bakusoku_agv' title='新型独立ステアリング機構の開発およびそれを用いたAGVモジュールの開発'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        Development of a New Independe...
      {% else %}
        æ°åç¬ç«ã¹ãã¢ãªã³ã°...
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}
