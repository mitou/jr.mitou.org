---
lang: en
layout: post
title: |
  Monitoring Compass - A Discovery Sharing System for Elderly People with Dementia
description: |
  The Mimamori Compass is a system designed to facilitate the early detection of wandering or missing elderly individuals with dementia. By issuing a QR code in advance, discoverers can scan it to notify the family. Early detection helps protect elderly individuals with dementia from accidents and troubles. Additionally, if a family requests a search, information can be disseminated through social media to solicit cooperation in search efforts. By using the Mimamori Compass, a community-wide support system is established, ensuring that elderly individuals are not left behind.

permalink: /english/projects/2024/mimamori_compass
thumbnail: /assets/img/projects/2024/mimamori_compass.webp
twitter_card: summary_large_image
---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'mimamori_compass'" | first %}
{% assign translations = site.data.translations %}
{% assign lang         = page.lang | default: 'ja' %}

{% if page.lang == 'en' %}
  {% assign pj_title       = pj.title_en       | escape %}
  {% assign pj_description = pj.description_en | escape %}
{% else %}
  {% assign pj_title       = pj.title          | escape %}
  {% assign pj_description = pj.description    | escape %}
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
<a href="https://youtu.be/{{ pj.promotion }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
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
    <a href='bento_color' title='BentoColor - テンプレートを使って簡単に彩り豊かなお弁当を作るアプリ'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        BentoColor - An App for Easily...
      {% else %}
        BentoColor - テンプレートを使って簡単に彩り豊か...
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='co_encoder' title='Co-Encoder - LLMのためのコンテキスト圧縮エンコーダ'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        Co-Encoder - Context Compressi...
      {% else %}
        Co-Encoder - LLMのためのコンテキスト圧縮エン...
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}
