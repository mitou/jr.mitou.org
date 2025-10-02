---
layout: post
title: |
  提案書サンプル &raquo; <br>TacticaNote - 育成年代の選手の言語化をサポートするサッカーノート
description: |
  未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
thumbnail: /assets/img/projects/2024/tactica_note.webp
---

<p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href="/applications/tactica_note.pdf">PDF で見る</a>
</div>

{% include render-pdf.html project_id="tactica_note" %}

<div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/2024#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'tactica_note'" | first %}
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
</div>

<div class='flex'>
  <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
  <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20TacticaNote - 育成年代の選手の言語化をサポートするサッカーノート&hashtags=未踏ジュニア&url={{ site.url }}/applications/tactica_note&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<nav>
  <p class='nav prev'>
    <a href='jellyfish_alert' title='クラゲアラート - 毒クラゲ漂着監視のためのエッジAIシステム'>
      &larr; {{ translations.navPrev[lang] }} 前の提案書
      <br>
      クラゲアラート - 毒クラゲ漂着監視のためのエッジAIシステム
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
