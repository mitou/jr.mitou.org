---
layout: post
title: 他の支援プログラム
description: 未踏ジュニア以外にも、あなたの「提案書」を評価してくれる支援プログラムがあります。より多くの応募者がチャンスを掴めるよう、本ページでは他の支援プログラムを紹介しています。
---

<p style="text-align:center; padding: 50px 0px 40px; font-size: 99%;">
  <a href='/about'>未踏ジュニア</a>以外にも、あなたの<a href='download'>提案書</a>を評価してくれる支援プログラムがあります。<br class='ignore-sp'>より多くの応募者がチャンスを掴めるよう、本ページでは他の支援プログラムを紹介しています。<br>
  <br>
  <small>細かな募集要項は未踏ジュニアとは異なります。<br class='ignore-pc'>詳細は以下の公式サイトからご確認ください。</small><br>
</p>

{% for chance in site.data.chances %}
<h2 id='{{ chance.id }}'>{{ chance.title }}</h2>
<p>{{ chance.description }}</p>

<a href='{{ chance.url }}' class='button'>公式サイトを見る</a>
{% endfor %}
