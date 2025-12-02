---
layout: post
title: |
  提案書サンプル &raquo; <br>abecobe - シンプルかつ難しいパズルゲーム
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2019/abecobe.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/abecobe.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id="abecobe" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2019#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'abecobe'" | first %}
<div class="youtube">
  {% include youtube-embed.html id=pj.final start=pj.final_start %}
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20abecobe - シンプルかつ難しいパズルゲーム&hashtags=未踏ジュニア&url={{ site.url }}/applications/abecobe&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='amoyo' title='編模様 (あもーよ) イラスト手編み支援アプリ'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      編模様 (あもーよ) イラスト手編み支援アプリ
    </a>
  </p>

  <p class='nav next'>
    <a href='fudey' title='Fudey - Sensory Calligraphy'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      Fudey - Sensory Calligraphy
    </a>
  </p>
</nav>
