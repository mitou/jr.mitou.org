---
layout: post
title: 大学と未踏ジュニア
description: 大学の募集要項やプレスリリースなどで未踏ジュニアについて言及されているページをまとめています。公表当時のデータとなり、現在は変更されている可能性もありますので、必ず最新年度の公式ページをご確認ください。
---

<p style="text-align:center; padding: 50px 0px 40px; font-size: 99%;">
  大学の募集要項やプレスリリースなどで、<a href='/about'>未踏ジュニア</a>について言及されている箇所をまとめたページです。<br>
  <br>
  <small><i class="fa-light fa-solid fa-triangle-exclamation"></i>
    以下は公表当時のデータとなり、現在は変更されている可能性もあります。<br class='ignore-sp'><b>必ず公式ページから最新情報をご確認ください。</b></small><br>
</p>


{% for admission in site.data.admissions %}
<h2 id='{{ admission.id }}'>
  <a href='#{{ admissioin.id }}' style='color: #333; font-weight: bold;'>{{ admission.title }}</a>
</h2>
<div class='quote'>{{ admission.quote }}</div>


<div class='flex'>
  <a class="button" href="{{ admission.quote_src }}">引用元を見る</a>
  <a class="button" href="{{ admission.link }}">最新情報を確認する</a>
</div>

{% endfor %}

<hr style='margin: 100px auto 100px auto;'>

<div class='flex'>
  <a href='https://twitter.com/hashtag/未踏ジュニア' class='button'>ハッシュタグを見る</a>
  <a href='https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/admissions&lang=jp&related=mitoujr' class='button'>ツイートする</a>
</div>
