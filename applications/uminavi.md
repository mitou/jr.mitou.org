---
layout: post
title: |
  提案書サンプル &raquo; <br>UmiNavi — 個人開発者のための水中ドローン向け自己位置推定システム
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2025/uminavi.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/uminavi.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id="uminavi" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2025#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'uminavi'" | first %}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20UmiNavi — 個人開発者のための水中ドローン向け自己位置推定システム&hashtags=未踏ジュニア&url={{ site.url }}/applications/uminavi&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='abecobe' title='abecobe - シンプルかつ難しいパズルゲーム'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      abecobe - シンプルかつ難しいパズルゲーム
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
