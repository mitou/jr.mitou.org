---
lang: en
layout: post
title: |
  Motion Rapid - A Tool for Creating CSS Animations with a Video Editing Software-like UI
description: |
  MotionRapid is a tool that allows users to create CSS parallax animations through a user interface similar to that of video editing software. By utilizing a timeline UI, which is widely adopted in video editing software, users can create parallax animations without directly coding in HTML, CSS, or JavaScript.

permalink: /english/projects/2022/motion_rapid
thumbnail: /assets/img/projects/2022/motion_rapid.webp
twitter_card: summary_large_image
---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'motion_rapid'" | first %}
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

  <a href="https://twitter.com/intent/tweet?text={{ pj_title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang={{ translations.postLangX[lang] }}&url={{ site.url }}{% if page.lang =='en' %}/english{% endif %}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">{{ translations.postToX[lang] }}</a>
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
{% else %}
## {{ translations.pitch[lang] }}  {#final}
成果報告会での発表をお楽しみください。

<a href="/final" class="button">成果報告会の情報を見る</a>
{% endif %}

<nav>
  <p class='nav prev'>
    <a href='r-order' title='R-Order - 学校版UberEatsを実現するデリバリーサービス'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        R-Order - A Delivery Service R...
      {% else %}
        R-Order - 学校版UberEatsを実現するデリバリ...
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='michishirube' title='スマート盲導杖『みちしる兵衛』～AI搭載白杖による視覚障害者歩行支援～'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        Smart Guide Cane &apos;Michishirube...
      {% else %}
        スマート盲導杖『みちしる兵衛』～AI搭載白杖による視覚障害者...
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}