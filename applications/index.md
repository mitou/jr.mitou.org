---
layout: post
title: 提案書を準備しよう
description: 応募書類（提案書）のテンプレートとサンプルを公開しています。応募するとき、または応募を検討する際にご活用ください。
redirect_from:
  - /download
---

<br>

本ページでは、応募に必要な書類（提案書）がダウンロードできます。また、提案書の書き方で悩んでいる人のために、過去の提案書のサンプルや、提案書を書くときのコツ、採択者の体験談などもまとめています。


## [<i class="fa-light fa-file-import"></i>](#template)  提案書テンプレート {#template}

提案書のテンプレートを以下からダウンロードして、PDFに変換後、[応募フォーム](/guideline#proposal)からアップロードしてください。

<div class='flex'>
  <a href="https://mitou-my.sharepoint.com/:w:/g/personal/yukai_mitou_org/EXicnZU6RaBKrB3wQx7ICTMBbmlqwoCKJiKdQshjO-_zuw?e=aD89Tv" class="button" target='_blank' rel='noopener'>Word を使う</a>
  <a href="https://docs.google.com/document/d/1hjDYf2DbFBkXLyrAl9HKKc9sS40XbZ_iN2j-HKZXD9g/copy" class="button" target='_blank' rel='noopener'>Google Docs を使う</a>
</div>

<div class="note"><small>上記と同じ形式に揃っていれば（つまりタイトルや提案者の氏名、および 1. から 8. までの項目が揃っていれば）、<a href='https://www.notion.so/ja-jp/product'>Notion</a> や <a href='https://cosen.se/product?lang=ja'>Cosense</a>、<a href='https://www.apple.com/jp/pages/'>Pages</a> など他ツールから PDF に変換して提出していただいても大丈夫です。</small></div>

<br>

## [<i class="fa-light fa-file-check"></i>](#sample) 提案書サンプル {#sample}

過去の採択された提案書を一部公開しています。毎年フォーマットが異なりますが、採択された提案書のサンプルとしてご参考になれば幸いです。<small>(最新順)</small>

<ul>
  {% for application_sample in site.data.application_samples %}
  {% assign project = site.data.projects | where: 'id', application_sample.id | first %}
  <li><a href='/projects/{{ project.year }}/{{ project.id }}' title='{{ project.description }}'>{{ project.title }}</a><small>（<a href='/applications/samples/{{ project.id }}.pdf'>&raquo; 提案書を見る</a>）</small></li>
  {% endfor %}
</ul>

<div class='note' style='margin: 30px auto 50px;'><small>提案書の状態から約６ヶ月間の支援を得た結果が<a href='/final'>成果報告会</a>での発表となります。最初から完成している必要はありません。有志のクリエータが応募者のために公開しているサンプルが、提案書の準備に役立てば嬉しいです。</small></div>

<a href='/projects' class='button'>他の採択例を見る</a>


<!--<div class="note">未踏ジュニアでは <a href='/opportunities#ipa-mitou'>IPA 未踏事業</a>との併願が可能なため、一部の提案書は<a href='https://www.ipa.go.jp/jinzai/mitou/it/about.html'>未踏事業</a>のフォーマットになっています。</div>-->

<!--
<a href="/applications/samples.zip" class="button">まとめてダウンロードする</a>
-->

## [<i class="fa-light fa-lightbulb-on"></i>](#tips) 提案書のコツ {#tips}

[未踏ジュニアのメンター](/mentors)が応募者に向けて書いた記事です。提案書を良くするヒントになれば嬉しいです。カッコ内はメンター名です。

<ul>
  <li>
    <a href='https://medium.com/@ukkaripon/なぜ-未踏-は多くの若い世代に知られるべきなのか-1fb31ac9fda3'>なぜ「未踏」は多くの若い世代に知られるべきなのか
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#yu_ukai'>鵜飼</a>）</small>
  </li>
  <li>
    <a href='https://speakerdeck.com/yasulab/believe-in-your-passion'>多様なメンター、多様な基準
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#yohei_yasukawa'>安川</a>）</small>
  </li>
  <li>
    <a href='https://note.com/yoshifumiseki/n/n1e928281d7dc'>未踏ジュニアにおけるよい提案資料の書き方、もしくはアイデアの伝え方と評価について
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#yoshifumi_seki'>関</a>）</small>
  </li>
  <li>
    <a href='https://zenn.dev/reputeless/articles/idea-mitoujr'>未踏ジュニア、伝わる提案書を作る 5 つのコツ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#ryo_suzuki'>鈴木</a>）</small>
  </li>
  <li>
    <a href='https://note.com/teramotodaiki/n/n148d35899016'>提案書のよくある「もったいない」点の紹介
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#daiki_teramoto'>寺本</a>）</small>
  </li>
  <li>
    <a href='https://scrapbox.io/nishio/プロジェクト提案書ってどう書くの？'>プロジェクト提案書ってどう書くの？
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#hirokazu_nishio'>西尾</a>）</small>
  </li>
  <li>
    <a href='https://twitter.com/nishio/status/1640626474108727299'>中高生のための ChatGPT (GPT-4)
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#hirokazu_nishio'>西尾</a>）</small>
  </li>
</ul>

上記の他にも、メンターから応募者に向けたメッセージがあります。詳しくは下記ページをご確認ください。

<a href="/mentors" class="button" style='padding-left: 7px; padding-right: 7px;'>応募者向けメッセージを見る</a>


## [<i class="fa-light fa-users"></i>](#story) 採択者の体験談 {#story}
未踏ジュニア採択者（クリエータ）による体験談もあります。こちらも合わせてご参考になれば幸いです。カッコ内はプロジェクト名です。

<ul>
  {% for interview in site.data.interviews %}
  {% assign creator = site.data.creators | find: 'id', interview.creator  %}
  {% assign project = site.data.projects | find: 'id', creator.project_id %}
  <li>
    <a href="/interviews/{{ creator.id }}">
      【公式】修了生インタビュー
      ─
      {{ creator.name }}さん（{{ creator.year }}年度）
    </a><br>
    <small>（<a href='/projects/{{ project.year }}/{{ project.id }}'>{{ project.title }}</a>）</small>
  </li>
  {% endfor %}
  <li>
    <a href='https://note.com/sh_o4964/n/n07afe27ab5bc'>
      未踏ジュニア2024を終えて
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2024/jellyfish_alert'>クラゲアラート - 毒クラゲ漂着監視のためのエッジAIシステム</a></small>）
  </li>
  <li>
    <a href='https://zenn.dev/toshihiro_tange/articles/mitoujr-advent-calendar-2023'>
      未踏ジュニア振り返り
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2023/stask'>Stask - 学生の課題進捗を助けるアプリ</a></small>）
  </li>
  <li>
    <a href='https://qiita.com/MasudaHinata/items/b686009b0e741d30cf01'>
      未踏ジュニア振り返り・提案書
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2022/sanitas'>Sanitas 努力量を共有して美容と健康を支えるアプリ</a></small>）
  </li>
  <li>
    <a href='https://note.com/ricksh/n/n5fa51f9142b2'>
      採択されるために私が意識したこと/アドバイス
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2021/cybotanic'>Cybotanic：サイボーグ化された植物</a></small>）
  </li>
  <li>
    <a href='https://note.com/anharu/n/ne00c1e774a29'>
      スーパークリエータに認定されたりアプリ甲子園で準優勝したりするまで
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2020/skimer'>SKIMER - LINEで手軽にやること管理</a>）</small>
  </li>
  <li>
    <a href='https://note.com/k1ut_/n/nbc541a9b6dc1'>未踏ジュニアの振り返り
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2023/ai_4koma_maker'>AI 4コマメーカー</a>）</small>
  </li>
  <li>
    <a href='https://note.com/redapple0414/n/nd20c49794b79'>
      未踏ジュニアの振り返り
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2021/mark_sdgs'>マークみっけ！for  SDGs</a>）</small>
  </li>
  <li>
    <a href='https://note.com/alicelavanderdev/n/nb528b1bdbb93'>
      未踏ジュニア振り返り・提案書
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2022/noxicel'>Noxicel - 英作文とAIを用いた英単語学習アプリ</a>）</small>
  </li>
  <li>
    <a href='https://horizon2k38.hatenablog.com/entry/2024/06/01/103142'>
      未踏ジュニアに応募しよう
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2023/a9n'>A9N: HALを用いて移植容易性を実現するマイクロカーネル</a>）</small>
  </li>
  <li>
    <a href='https://zenn.dev/waryu/articles/mitoujr-2023-waryu'>
      未踏ジュニアがついに終わったので苦悩と成功の半年間をまとめる
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2023/code_museum'>Code Museum - 読むことだけに特化したソースコードエディタ</a>）</small>
  </li>
  <li>
    <a href='https://note.com/inoue2002/n/nfb57cd6825a4'>
      未踏ジュニア振り返りと、技術力に差があるチーム開発の僕なりの攻略方法
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2020/critica'>critica - 手軽で直感的なリアクション回収ツール</a>）</small>
  </li>
</ul>

<br>

上記の他にも、メディアに掲載されたクリエータのインタビュー記事もあります。

<!-- 以下はお知らせ (/news) に掲載されたインタビュー記事 -->
<ul>
  <!-- テンプレート（コピペ用）
  <li><a href='#'>Title <i class="fa-solid fa-up-right-from-square"></i></a> <small>（<a href='/projects/20xx/'>PJ Title</a>）</small></li>
  -->
  <li>
    <a href='https://edtechzine.jp/article/detail/780'>
      中学2年生にしてiPhoneアプリを5本リリース、毎日1アイデアを考える未踏ジュニアスーパークリエータ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2017/draw_code'>DrawCode　〜ブロックをつなげて自由にHTMLを描こう〜</a>）</small>
  </li>
  <li>
    <a href='https://edtechzine.jp/article/detail/829'>
      高校生なのにエンジニアインターン!? ほぼ不登校から大学受験もプログラミングで突破した未踏ジュニアスーパークリエータ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2017/vamboo'>FRPの概念に触れられるビジュアルプログラミング言語の開発</a>）</small>
  </li>
  <li>
    <a href='https://edtechzine.jp/article/detail/1976'>
      「50センチ革命」の先にあるものとは。未踏ジュニアからLINE BOOT AWARDSグランプリ受賞、SXSW Eduでもピッチをした未踏ジュニアスーパークリエータ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/2018/toubans'>Toubans! -LINEで設定・通知できる当番お知らせサービス</a>）</small>
  </li>
</ul>

<a href="/news" class="button">他のメディア掲載を見る</a>


## [<i class="fa-light fa-list-check"></i>](#ready) 準備できた? {#ready}

<p class="text-center">提案書の準備ができたら応募フォームへ! <i class="fad fa-mailbox green"></i></p>

<a href="/guideline" class="button">応募の手引きに戻る</a>

