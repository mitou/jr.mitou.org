---
layout: post
title: |
  提案書サンプル &raquo; <br>Mer - 多機能電子リコーダー
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2020/mer.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/mer.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id="mer" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2020#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'mer'" | first %}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20Mer - 多機能電子リコーダー&hashtags=未踏ジュニア&url={{ site.url }}/applications/mer&lang=jp&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='visible' title='Visible ─ Webアクセシビリティー診断 &amp; 修正提案ツール'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      Visible ─ Webアクセシビリティー診断 & 修正提...
    </a>
  </p>

  <p class='nav next'>
    <a href='amoyo' title='編模様 (あもーよ) イラスト手編み支援アプリ'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      編模様 (あもーよ) イラスト手編み支援アプリ
    </a>
  </p>
</nav>
