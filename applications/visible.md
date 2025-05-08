---
layout: post
title: |
  提案書サンプル &raquo; <br>Visible ─ Webアクセシビリティー診断 & 修正提案ツール
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2020/visible.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/visible.pdf">PDF で見る</a>
</div>

{% include render-pdf-by-pdfjs.html project_id="visible" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2020#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'visible'" | first %}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20Visible ─ Webアクセシビリティー診断 &amp; 修正提案ツール&hashtags=未踏ジュニア&url={{ site.url }}/applications/visible&lang=jp&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='flight_fit_vr' title='-Flight Fit VR- 「飛行」をテーマに仮想空間で身体を鍛えるVR作品'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      -Flight Fit VR- 「飛行」をテーマに仮想空間で...
    </a>
  </p>

  <p class='nav next'>
    <a href='mer' title='Mer - 多機能電子リコーダー'>
      次の提案書 {{ translations.navNext[lang] }} &rarr;
      <br>
      Mer - 多機能電子リコーダー
    </a>
  </p>
</nav>
