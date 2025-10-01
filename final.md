---
layout:    post
title:     2025年 成果報告会
this_year: 2025
thumbnail: /assets/img/final_2025.png # 仮。素材支給後に差し替え
description: 未踏ジュニアに採択されたクリエータの成果一覧ページです。プロジェクト毎の詳細も辿れるのでぜひチェックしてみてください！
twitter_card: summary_large_image

# this_year を変更すると、表示したい年度の採択プロジェクトに切り替わります。
# 成果報告会の公開準備が整ったら this_year を今年度の数字に変更してください。
# 詳細: https://github.com/mitou/jr.mitou.org#user-content-how-to-build-projects
---

<br>

<!-- 1. 最初に表示するサムネイル画像。日時と会場を画像に含める（仮。後で差し替え） -->
<img src="/assets/img/spinner.svg" data-src="{{ page.thumbnail }}"
     alt="{{ page.this_year }}年度 未踏ジュニア成果報告会 サムネイル画像"
     class="project-thumbnail lazyload" width='100%' loading="lazy" />


<!-- 2. 現地参加の申し込みやライブ配信の案内は決定次第ここに表示します（プレイベント文言・仮） -->
<p>
  2025年度の未踏ジュニア成果報告会を11月3日 (月曜・振替休日) に、プラチナスポンサーとしてご支援いただいている、GMO インターネットグループ株式会社様の会場提供にて、GMO Yours・フクラスにて開催させていただきます。

  <br>
  <div class='flex'>
    <a class="button" href="https://peatix.com/event/4598142" >現地参加を申し込む</a>
    <!--<a class="button" href="https://www.youtube.com/playlist?list=PLNObH2jlC6ldl5Nh5KNfXkBitzcI4M6Gm">YouTube で見る</a>
    <a class="button" href="https://togetter.com/li/2460295">当日の反響を見る</a>-->
  </div><div class='flex'>
  <a href="https://twitter.com/hashtag/未踏ジュニア" class="button">#未踏ジュニア の<br>ハッシュタグを見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/final?{{ page.this_year }}&lang=jp&related=mitoujr" class="button">#未踏ジュニア で<br>ツイートする</a>
</div>

<!-- 4. タイムテーブルが決まったら入れる（当日まで。以降はコメントアウト） -->

<!-- 4. タイムテーブルが決まったら入れる（当日まで。以降はコメントアウト） -->
<!--
## [<i class="fa-light fa-calendar-clock"></i>](#timetable) タイムテーブル {#timetable}

<ul>
  <li>10:30 受付開始</li>
  <li>11:00 〜 11:10 ご案内</li>
  <li>11:10 〜 12:20 プレゼンテーション</li>
  {% include final-timetable.html this_year=page.this_year range_begin=0 range_end=5 %}

  <li>12:20 〜 13:20 昼食休憩</li>
  <li>13:20 〜 15:50 プレゼンテーション</li>
  {% include final-timetable.html this_year=page.this_year range_begin=6 range_end=16 %}

</ul>


`------- オンライン配信はここまで --------`

<ul>
  <li>
    15:50 〜 17:30 作品展示 (デモ)・質疑応答<br>
    18分 x 3回転  13分 x 3回転。<br>
    1プロジェクトあたり2回ブース発表。<br>
    <img width='100%' src="/assets/img/spinner.svg" alt="デモ展示タイムターブル"
     data-src="https://i.gyazo.com/8ae7cf2fd9158336373c2f4fd95746d5.png"
     class="lazyload" loading="lazy" />
  </li>
  <li>17:30 〜 18:00 スポンサー賞発表、修了式</li>
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


<h2 id='projects'>{{ page.this_year }}年度のプロジェクト</h2>

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.this_year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.this_year %}
{% include back-to-top.html %}
