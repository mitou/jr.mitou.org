---
layout:    post
title:     2023年 成果報告会
this_year: 2023
thumbnail: /assets/img/thumbnails/final_2023.jpg
description: 未踏ジュニアに採択されたクリエータの成果一覧ページです。プロジェクト毎の詳細も辿れるのでぜひチェックしてみてください！

# this_year を変更するとトップページの採択プロジェクトが切り替わります。
# 成果報告会の公開準備が整ったら this_year を今年度の数字に変更してください。
# 詳細: https://github.com/mitou/jr.mitou.org#new-新年度の採択プロジェクトを公開する
---

<br>

<img src="/assets/img/spinner.svg" data-src="{{ page.thumbnail }}"
     alt="{{ page.this_year }}年度 未踏ジュニア成果報告会 サムネイル画像"
     class="project-thumbnail lazyload" width='100%' loading="lazy" />

<!--
<div class='youtube'>
  <iframe src="https://www.youtube.com/embed/fw1LFIZz-zo?rel=0&start=615" title="{{ page.this_year }}年度 未踏ジュニア成果報告会" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
-->

<!--
2021年度の未踏ジュニア成果報告会を11月3日に実施しました。<a href="https://twitter.com/mitoujr/status/1455832719577944066" target="_blank">YouTubeの動画目次</a>を使うとお好きなシーンからご視聴いただけます。<br>

<div class='youtube'>
  <iframe frameborder="0" class="lazyload" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="" data-src="https://www.youtube.com/embed/fw1LFIZz-zo&rel=0"></iframe>
</div>
-->

2023年度の未踏ジュニア成果報告会を11月3日 (金曜・祝日) に東京大学で開催します。今年は現地でデモ展示の時間なども用意する予定ですので、ぜひ現地までお越しいただけると幸いです。

<div class='flex'>
  <a href="https://peatix.com/event/3690894/view" class="button" target="_blank" rel='noopener'>現地参加を申し込む</a>

  <!--
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6ldtjWuPw3Cum2cjzglIU-wD" class="button" target="_blank" rel='noopener'>YouTube で見る</a>
  <a href="https://togetter.com/li/1968577" class="button" target="_blank" rel='noopener'>Twitter の反響を見る</a>
  -->
</div>

<hr>

<div class='flex'>
  <a href="https://twitter.com/hashtag/未踏ジュニア?f=live" class="button" target="_blank" rel='noopener'>#未踏ジュニア の<br>ハッシュタグを見る</a>

  <a href="https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/final&lang=jp&related=mitoujr" class="button" target="_blank" rel='noopener'>#未踏ジュニア で<br>ツイートする</a>
</div>

<!--
<div class='flex'>
  <a class="button" target="_blank" rel='noopener' href="https://www.google.com/calendar/render?action=TEMPLATE&text=2021年度未踏ジュニア成果報告会&dates=20211103T100000/20211103T180000&location=https://jr.mitou.org/final&trp=true&details=タイムテーブルなどはこちら: https://jr.mitou.org/final&trp=undefined&trp=true&sprop=https://jr.mitou.org/final">Google カレンダーに追加</a>
  <a class="button" target="_blank" rel='noopener' href="https://fb.me/e/237iDG0Ne">Facebook イベント</a>
</div>
-->

<!--
## タイムテーブル {#timetable}
<iframe class="airtable-embed" src="https://airtable.com/embed/shrWiIURPeouCLjQJ?backgroundColor=gray&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>
-->

## {{ page.this_year }}年度のプロジェクト {#projects}

{% assign projects = site.data.projects | where_exp: "pj", "pj.year == page.this_year" %}
<div class="projects flex">
  {% for pj in projects %}
    {% include project-details.html %}
  {% endfor %}
</div>

{% include project-navigation.html this_year=page.this_year %}
