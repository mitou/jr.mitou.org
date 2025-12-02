---
layout: post
title: |
  提案書サンプル &raquo; <br>UmiNavi — 個人開発者のための水中ドローン向け自己位置推定システム
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2025/uminavi.webp
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'uminavi'" | first %}

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/{{ pj.id }}.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id=pj.id %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='#final'>成果報告会での発表</a>となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

<h3 id='final' style='margin-top: 60px;'>
   <a href='#final'><i class='fa-solid fa-graduation-cap'></i></a>
   {{ pj.title }}
   <a href='/projects/{{ pj.year }}/{{ pj.id }}'><i class='fa-solid fa-arrow-up-right-from-square'></i></a>
</h3>

<div class="youtube">
  {% include youtube-embed.html id=pj.final start=pj.final_start %}
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20UmiNavi — 個人開発者のための水中ドローン向け自己位置推定システム&hashtags=未踏ジュニア&url={{ site.url }}/applications/{{ pj.id }}&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='fudey' title='Fudey - Sensory Calligraphy'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      Fudey - Sensory Calligraphy
    </a>
  </p>

  <p class='nav next'>
    <a href='jellyfish_alert' title='クラゲアラート - 毒クラゲ漂着監視のためのエッジAIシステム'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      クラゲアラート - 毒クラゲ漂着監視のためのエッジAIシステム
    </a>
  </p>
</nav>
