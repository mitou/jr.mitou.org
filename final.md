---
layout:    post
title:     2024年 成果報告会
this_year: 2024
thumbnail: /assets/img/final_2024.webp
description: 未踏ジュニアに採択されたクリエータの成果一覧ページです。プロジェクト毎の詳細も辿れるのでぜひチェックしてみてください！
twitter_card: summary_large_image

# this_year を変更するとトップページの採択プロジェクトが切り替わります。
# 成果報告会の公開準備が整ったら this_year を今年度の数字に変更してください。
# 詳細: https://github.com/mitou/jr.mitou.org#user-content-how-to-build-projects
---

<br>

<!-- 1. 最初に表示するサムネイル画像。日時と会場を画像に含める -->
<img src="/assets/img/spinner.svg" data-src="{{ page.thumbnail }}"
     alt="{{ page.this_year }}年度 未踏ジュニア成果報告会 サムネイル画像"
     class="project-thumbnail lazyload" width='100%' loading="lazy" />


<!-- 2. 現地参加の申し込みが始まったら用意する -->
2024年度の未踏ジュニア成果報告会を**11月4日 (月曜・振替休日) に東京大学で開催**します。<br class='ignore-pc'><br class='ignore-pc'>今年は現地で作品展示 (デモ・実演など) の時間も用意する予定ですので、ぜひ現地までお越しいただけると幸いです。

<!--<img src="/assets/img/spinner.svg" data-src="/assets/img/about_expenses.webp" alt="2023年度のクリエータの一部が Maker Faire Tokyo 2023 に出展している様子" class="top-img lazyload" loading="lazy">-->

<div class='flex'>
  <a class="button" href="https://mitoujr2024.peatix.com/view" >現地参加を申し込む</a>
  <a class="button" href="https://www.youtube.com/watch?v=NVg4W_I8Qp0">YouTube で見る</a>
</div>

<!--
<div class='flex'>
  <a href="https://twitter.com/hashtag/未踏ジュニア" class="button">#未踏ジュニア の<br>ハッシュタグを見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/final?{{ page.this_year }}&lang=jp&related=mitoujr" class="button">#未踏ジュニア で<br>ツイートする</a>
</div>
-->

<!-- 4. タイムテーブルが決まったら入れる（当日まで。以降はコメントアウト） -->

## タイムテーブル {#timetable}

<ul>
  <li>10:30 受付開始</li>
  <li>11:00 〜 11:10 ご案内</li>
  <li>11:10 〜 12:20 プレゼンテーション</li>
    {% include final-timetable.html this_year=page.this_year range_begin=0 range_end=6 %}
  <li>12:20 〜 13:20 昼食休憩</li>
  <li>13:20 〜 15:50 プレゼンテーション</li>
    {% include final-timetable.html this_year=page.this_year range_begin=7 range_end=16 %}
</ul>

`------- オンライン配信はここまで --------`

<ul>
  <li>15:50 〜 17:40 作品展示 (デモ)・質疑応答</li>
  <li>17:40 〜 18:00 スポンサー賞発表、修了式</li>
</ul>

<br>

<!-- 3. ライブ配信 URL が決まったら、ページ冒頭に埋め込む -->
<!--
成果報告会は [YouTube](https://www.youtube.com/mitoujr) からもご視聴いただけます 📺⚡️
<div class='youtube'>
  <iframe src="https://www.youtube.com/embed/NVg4W_I8Qp0" title="{{ page.this_year }}年度 未踏ジュニア成果報告会" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div class='flex'>
  <a href="https://youtu.be/scoDs7P3paI?list=PLNObH2jlC6lfjkMZAmRffPLGs_gFJOfGU" class="button">YouTube で見る</a>
  <a href="https://togetter.com/li/2252240" class="button">当日の反響を見る</a>
</div>

<hr>

<div class='flex'>
  <a href="https://youtu.be/NVg4W_I8Qp0" class="button">YouTube で見る</a>
  <a href="https://mitoujr2024.peatix.com/view" class="button">現地参加を申し込む</a>
</div>
-->


<!--
<div class='flex'>
  <a class="button" href="https://www.google.com/calendar/render?action=TEMPLATE&text=2021年度未踏ジュニア成果報告会&dates=20211103T100000/20211103T180000&location=https://jr.mitou.org/final&trp=true&details=タイムテーブルなどはこちら: https://jr.mitou.org/final&trp=undefined&trp=true&sprop=https://jr.mitou.org/final">Google カレンダーに追加</a>
  
  <a class="button" href="https://fb.me/e/237iDG0Ne">Facebook イベント</a>

  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6ldtjWuPw3Cum2cjzglIU-wD" class="button">YouTube で見る</a>

  <a href="https://togetter.com/li/1968577" class="button">Twitter の反響を見る</a>
</div>
-->


## {{ page.this_year }}年度のプロジェクト {#projects}

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.this_year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.this_year %}
{% include back-to-top.html %}
