---
layout: post
title: 大学と未踏ジュニア
description: 大学の募集要項やプレスリリースなどで未踏ジュニアに言及されている箇所をまとめたページです。公表当時のデータとなり、現在は変更されている可能性もありますので、必ず最新年度の公式ページをご確認ください。
---

<p style="text-align:center; padding: 50px 0px 40px;">
  大学の募集要項やプレスリリースなどで、<a href='/about'>未踏ジュニア</a>に言及されている箇所をまとめたページです。<a href='/guideline'>応募</a>を検討する場面や、保護者と共有する場面などでご参考になれば幸いです。<br>
  <br>
  <small><i class="fa-light fa-solid fa-triangle-exclamation"></i>
    以下は公表当時のデータとなり、現在は変更されている可能性があります。<br class='ignore-sp'><b>必ず公式ページから最新情報をご確認ください。</b></small><br>
</p>


{% for admission in site.data.admissions %}
<h2 id='{{ admission.id }}'>
  <a href='#{{ admission.id }}' style='color: #333; font-weight: bold;'>{{ admission.title }}</a>
</h2>
<div class='quote'>{{ admission.quote }}</div>


<div class='flex'>
  <a class="button" href="{{ admission.quote_src }}">引用元を見る</a>
  <a class="button" href="{{ admission.link }}">最新情報を確認する</a>
</div>

{% endfor %}

<hr style='margin: 100px auto 20px auto;'>

<p>なお公式ページに明示的な記載の無い大学においても、<a href='/projects'>未踏ジュニア修了生</a>が推薦枠で合格した事例は多数あります。<br><br>また未踏ジュニアでは海外大学に挑戦する修了生を応援するため、<a href='/english'>英語版の公式情報</a>や<a href='/english/stats'>統計情報</a>も公開しています。</p>

<div class='flex'>
  <a class='button' href='/projects'>採択例を見る</a>
  <a class='button' href='/english'>英語版を見る</a>
</div>

<hr style='margin: 100px auto 100px auto;'>

<div class='flex'>
  <a href='https://twitter.com/intent/tweet?text=大学と未踏ジュニア&hashtags=未踏ジュニア&url=https://jr.mitou.org/admissions&lang=jp&related=mitoujr' class='button'>ツイートする</a>
</div>
