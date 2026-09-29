---
layout: post
title: |
  Kintsugi 4D Dojo ― 金継ぎを最高の思い出にする体験・支援アプリ
description: |
  「Kintsugi 4D Dojo」は、金継ぎを「知っている」から「やってみよう」、そして「できた！」へ繋げるWebアプリです。撮影した写真で金継ぎをWeb上で疑似体験し、自分らしい修復方法を金継ぎ師のアドバイスを受けながら試すことができます。最後に、完成した作品を3Dで表現し、そこに込めた物語を組み合わせて「3D＋物語＝4D」として共有できます。あなたも「Kintsugi 4D Dojo」で、大切なものを自分の手で蘇らせてみませんか？
permalink: /projects/2026/kintsugi_4d_dojo
thumbnail: /assets/img/projects/2026/kintsugi_4d_dojo.webp
twitter_card: summary_large_image

---

{% assign pj           = site.data.projects | where_exp: "pj", "pj.id == 'kintsugi_4d_dojo'" | first %}
{% assign translations = site.data.translations %}
{% assign lang         = page.lang | default: 'ja' %}

{% comment %} pj.description needs NOT to be escapd to render <br> tags. {% endcomment %}
{% if page.lang == 'en' %}
  {% assign pj_title       = pj.title_en       | escape %}
  {% assign pj_description = pj.description_en %}
  {% assign pj_promotion   = pj.promotion_en   | default: pj.promotion %}
  {% assign pj_demo        = pj.demo_en        | default: pj.demo %}
{% else %}
  {% assign pj_title       = pj.title          | escape %}
  {% assign pj_description = pj.description    %}
  {% assign pj_promotion   = pj.promotion %}
  {% assign pj_demo        = pj.demo %}
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
## [{{ translations.promotionMovie[lang] }}](#promotion){: .heading-anchor} {#promotion}
{% if pj_promotion contains '.gif' %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.promotionMovie[lang] }} (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj_promotion }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
<div class="youtube">
  {% include youtube-embed.html id=pj_promotion %}
</div>
<a href="https://youtu.be/{{ pj_promotion }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% endif %}
{% endif %}

{% if pj_demo %}
## [{{ translations.demoMovie[lang] }}](#demo){: .heading-anchor} {#demo}
{% if pj_demo contains '.gif' %}
<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.demoMovie[lang] }} (Gif)'
     data-src='/assets/img/projects/{{ pj.year }}/{{ pj_demo }}' loading='lazy'
     style='margin-bottom: 10px; border-radius: 6px;' />
{% else %}
<div class="youtube">
  {% include youtube-embed.html id=pj_demo %}
</div>
<a href="https://youtu.be/{{ pj_demo }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
{% endif %}
{% endif %}

{% if pj.final %}
## [{{ translations.pitch[lang] }}](#final){: .heading-anchor} {#final}
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
## [{{ translations.pitch[lang] }}](#final){: .heading-anchor} {#final}
成果報告会での発表をお楽しみください。

<a href="/final" class="button">成果報告会の情報を見る</a>
{% endif %}

<nav>
  <p class='nav prev'>
    <a href='aqua_beacon' title='AquaBeacon -光と音を組み合わせて藻場でも位置推定とマッピングを行うシステム-'>
      &larr; {{ translations.navPrev[lang] }}
      <br>
      {% if page.lang == 'en' %}
        
      {% else %}
        AquaBeacon -光と音を組み合わせて藻場でも位置推定...
      {% endif %}
    </a>
  </p>

  <p class='nav next'>
    <a href='harmonic_seam' title='HarmonicSeam インタラクティブ音楽のための西洋音楽理論に基づく論理検証エンジン'>
      {{ translations.navNext[lang] }} &rarr;
      <br>
      {% if page.lang == 'en' %}
        
      {% else %}
        HarmonicSeam インタラクティブ音楽のための西洋音...
      {% endif %}
    </a>
  </p>
</nav>

{% include project-navigation.html %}

<!-- Schema.org Data Type: https://schema.org/ -->
<script type="application/ld+json">
  {% include project-json-ld.json project_id="kintsugi_4d_dojo" %}
</script>
