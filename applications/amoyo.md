---
layout: post
title: |
  提案書サンプル &raquo; <br>編模様 (あもーよ) イラスト手編み支援アプリ
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2019/amoyo.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/amoyo.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id="amoyo" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2019#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'amoyo'" | first %}
<div class="youtube">
  {% include youtube-embed.html id=pj.final start=pj.final_start %}
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20編模様 (あもーよ) イラスト手編み支援アプリ&hashtags=未踏ジュニア&url={{ site.url }}/applications/amoyo&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='det_exploit' title='DetExploit - Windows用OSS脆弱性スキャナー'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      DetExploit - Windows用OSS脆弱性スキャナー
    </a>
  </p>

  <p class='nav next'>
    <a href='abecobe' title='abecobe - シンプルかつ難しいパズルゲーム'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      abecobe - シンプルかつ難しいパズルゲーム
    </a>
  </p>
</nav>
