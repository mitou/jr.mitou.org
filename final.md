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
<p>2025年度の未踏ジュニア成果報告会を11月3日 (月曜・振替休日) に、プラチナスポンサーとしてご支援いただいている、GMO インターネットグループ株式会社様の会場提供にて、<a href='https://peatix.com/event/4598142'>GMO Yours・フクラス</a>にて開催させていただきます。</p>

<!--
<div class='flex'>
  <a class="button" href="https://peatix.com/event/4598142" onclick="return gtagSendEvent(this.href);">参加を申し込む</a>
  <a class="button" href="https://www.youtube.com/playlist?list=PLNObH2jlC6ldl5Nh5KNfXkBitzcI4M6Gm">YouTube で見る</a>
  <a class="button" href="https://togetter.com/li/2460295">当日の反響を見る</a>
</div>
-->


<!-- 3. ライブ配信 URL が決まったら、ページ冒頭に埋め込む -->

<h2 id='live'>
  <a href='#live'><i class="fa-brands fa-youtube"></i></a>
  ライブ配信
</h2>

<div class='youtube'>
  <iframe src="https://www.youtube.com/embed/8lNubVsBVhM?start=1805" title="{{ page.this_year }}年度 未踏ジュニア成果報告会" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div class='flex'>
  <a href="https://twitter.com/hashtag/未踏ジュニア" class="button">#未踏ジュニア の<br>ハッシュタグを見る</a>
  <a href="https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/final#live&lang=ja&related=mitoujr" class="button">#未踏ジュニア で<br>ツイートする</a>
  <!--<a href="https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/final?{{ page.this_year }}&lang=ja&related=mitoujr" class="button">#未踏ジュニア で<br>ツイートする</a>-->
</div>

<!--
<div class='flex'>
  <a class="button" href="https://youtu.be/8lNubVsBVhM">YouTube で見る</a>
  <a class="button" href="https://peatix.com/event/4598142">現地参加を申し込む</a>
</div>
-->

<section id="sponsor-logos">
  <div class='flex'>
    {% for sponsor in site.data.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank">
      {% if sponsor.type == 'platinum' %}
      <img src="/assets/img/spinner.svg" data-src="/assets/img/sponsors/{{ sponsor.img }}" alt="{{ sponsor.name }}" class="lazyload sponsor-logo-platinum">
      {% endif %}
    </a>
    {% endfor %}
  </div>
  <div class='flex'>
    {% for sponsor in site.data.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank">
      {% if sponsor.type == 'gold' %}
      <img src="/assets/img/spinner.svg" data-src="/assets/img/sponsors/{{ sponsor.img }}" alt="{{ sponsor.name }}" class="lazyload sponsor-logo-gold">
      {% endif %}
    </a>
    {% endfor %}
  </div>
</section>

<div class="note">
  未踏ジュニアは<b><a href='/#sponsors'>スポンサー</a>からの支援</b>によって運営されています。
</div>

<div class='flex'>
  <a class="button" href="https://youtu.be/8lNubVsBVhM?start=1805">YouTube で見る</a>
</div>

<!-- 4. タイムテーブルが決まったら入れる（当日まで。以降はコメントアウト） -->
<h2 id='timetable'>
  <a href='#timetable'><i class="fa-light fa-calendar-clock"></i></a>
  タイムテーブル
</h2>

<ul>
  <li>09:30 受付開始 @ <a href='https://peatix.com/event/4598142'>GMO Yours・フクラス</a></li>
  <li>10:00 〜 10:10 ご案内</li>
  <li>10:10 〜 11:40 プレゼンテーション (6件)</li>
  {% include final-timetable.html project_ids="
    aikyo,
    sms_solar,
    kigo,
    flusca,
    fudey,
    paper_cad,
  " %}

  <li>11:40 〜 12:40 昼食休憩</li>
  <li>12:40 〜 15:10 プレゼンテーション (9件)</li>
  {% include final-timetable.html project_ids="
    neureka,
    talkboost,
    gen5,
    cian,
    mathmosis,
    uminavi,
    sr_motor_heart,
    oshaberi_taskboard,
    nextrouter,
  " %}
</ul>

<div style="text-align: center; margin: 2em 0; position: relative;">
  <span style="display: inline-block; padding: 0 1em; background: white; position: relative; z-index: 1;">
    オンライン配信はココまで
  </span>
  <div style="position: absolute; top: 50%; left: 0; right: 0; border-top: 1px dashed #999; z-index: 0;"></div>
</div>

<ul>
  <li>
    15:20 〜 16:40 作品展示 (デモ)・質疑応答<br>
    <!-- もしデモ展示テーブルがあれば合わせて表示
    18分 x 3回転  13分 x 3回転。<br>
    1プロジェクトあたり2回ブース発表。<br>
    <img width='100%' src="/assets/img/spinner.svg" alt="デモ展示タイムターブル"
     data-src="https://i.gyazo.com/8ae7cf2fd9158336373c2f4fd95746d5.png"
     class="lazyload" loading="lazy" />
    -->
  </li>
  <li>16:40 〜 17:20 スポンサー賞発表、修了式</li>
</ul>

<br>

<!--
<div class='flex'>
  <a href="https://youtu.be/scoDs7P3paI?list=PLNObH2jlC6lfjkMZAmRffPLGs_gFJOfGU" class="button">YouTube で見る</a>
  <a href="https://togetter.com/li/2252240" class="button">当日の反響を見る</a>
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
