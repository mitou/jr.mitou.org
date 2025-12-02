---
layout: post
title: |
  提案書サンプル &raquo; <br>niwango.js - 動画のコメントでプログラミング可能なニワン語の実行エンジン
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2023/niwangojs.webp
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'niwangojs'" | first %}

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

<p  style='margin-top: 40px;'>{{ pj.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20niwango.js - 動画のコメントでプログラミング可能なニワン語の実行エンジン&hashtags=未踏ジュニア&url={{ site.url }}/applications/{{ pj.id }}&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='tactica_note' title='TacticaNote - 育成年代の選手の言語化をサポートするサッカーノート'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      TacticaNote - 育成年代の選手の言語化をサポート...
    </a>
  </p>

  <p class='nav next'>
    <a href='a9n' title='A9N: HALを用いて移植容易性を実現するマイクロカーネル'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      A9N: HALを用いて移植容易性を実現するマイクロカーネル
    </a>
  </p>
</nav>
