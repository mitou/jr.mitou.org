---
layout: post
title: 他の支援プログラム
description: 未踏ジュニア以外にも、あなたの「提案書」を評価・支援してくれるプログラムがあります。より多くの応募者がチャンスを掴めるよう、本ページでは他の支援プログラムを紹介しています。
redirect_from:
  - /chance
  - /chances
---

<p style="text-align:center; padding: 50px 0px 0px; font-size: 99%;">
  <a href='/about'>未踏ジュニア</a>以外にも、あなたの<a href='/applications'>提案書</a>を評価・支援してくれるプログラムがあります。<br class='ignore-sp'>より多くの応募者がチャンスを掴めるよう、本ページでは他の支援プログラムを紹介しています。
  <br>
  <img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/final.svg" alt="他の支援プログラム（成果報告会）のイメージ図" width="80%" class="post-photo lazyload">
  <br>
  <small><i class="fa-light fa-solid fa-triangle-exclamation"></i>
    以下は掲載当時のデータとなり、現在は変更されている可能性があります。<br class='ignore-sp'><b>必ず公式ページから最新情報をご確認ください。</b></small><br>
</p>

{% assign opportunities = site.data.opportunities | where_exp: "item", "item.is_closed != true" %}
{% for opportunity in opportunities %}
{% if opportunity.title %}
<h2 id='{{ opportunity.id }}' style='margin-top: 120px'>
  <a href='#{{ opportunity.id }}' style='color: #333; font-weight: bold;'>{{ opportunity.title }}</a>
</h2>
{% endif %}
{% if opportunity.description %}<p>{{ opportunity.description }}</p>{% endif %}

{% if opportunity.link %}<a href='{{ opportunity.link }}' class='button'>公式サイトを見る</a>{% endif %}
{% endfor %}

<hr style='margin: 100px auto 100px auto;'>

<div class='flex'>
  <a href='https://twitter.com/hashtag/未踏ジュニア?f=live' class='button'>ハッシュタグを見る</a>
  <a href='https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/opportunities&lang=ja&related=mitoujr' class='button'>ツイートする</a>
</div>

<a href='https://www.youtube.com/playlist?list=PLNObH2jlC6lfUNKMCrBl1UGJU8QKVrbov' class='button'>YouTube で見る</a>
