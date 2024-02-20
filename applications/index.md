---
layout: post
title: 提案書を準備しよう
description: 応募書類（提案書）のテンプレートとサンプルを公開しています。応募するとき、または応募を検討する際にご活用ください。
---

<br>

本ページでは、応募に必要な書類（提案書）がダウンロードできます。また、提案書の書き方で悩んでいる人のために、過去の提案書のサンプルや、提案書を書くときのコツ、採択者の体験談などもまとめています。


## [<i class="fa-light fa-file-import"></i>](#template)  提案書テンプレート {#template}

提案書のテンプレートを以下からダウンロードして、PDFに変換後、[応募フォーム](/guideline#proposal)からアップロードしてください。

<div class='flex'>
  <a href="https://mitou-my.sharepoint.com/:w:/g/personal/yukai_mitou_org/EXicnZU6RaBKrB3wQx7ICTMBbmlqwoCKJiKdQshjO-_zuw?e=aD89Tv" class="button" target='_blank' rel='noopener'>Word を使う</a>
  <a href="https://docs.google.com/document/d/1hjDYf2DbFBkXLyrAl9HKKc9sS40XbZ_iN2j-HKZXD9g/copy" class="button" target='_blank' rel='noopener'>Google Docs を使う</a>
</div>

なお上記と同じ形式に揃っていれば（つまりタイトルや提案者の氏名、および 1. から 8. までの項目が揃っていれば）、[Notion](https://www.notion.so/ja-jp/product) や [Scrapbox](https://scrapbox.io/product) など他ツールから PDF に変換して提出していただいても大丈夫です。


## [<i class="fa-light fa-file-check"></i>](#sample) 提案書サンプル {#sample}

過去の採択者による提案書を一部公開しています。今年の提案書とはフォーマットが少し異なりますが、採択された提案書のサンプルとしてご参考になれば幸いです。

<ul>
  {% for application in site.data.applications %}
  {% assign project = site.data.projects | where: 'id', application.id | first %}
  <li><a href='/projects/{{ project.year }}/{{ project.id }}'>{{ project.title }}</a><small>（<a href='/applications/{{ project.id }}.pdf' target='_blank'>提案書を見る <i class='fa-solid fa-up-right-from-square'></i></a>）</small></li>
  {% endfor %}
</ul>

<a href="/applications/samples.zip" class="button">まとめてダウンロードする</a>


## [<i class="fa-light fa-lightbulb-on"></i>](#tips) 提案書のコツ {#tips}

未踏ジュニアのメンターが応募者に向けて書いた記事です。提案書を良くするヒントになれば嬉しいです。カッコ内はメンター名です。

<ul>
  <li>
    <a href='https://medium.com/@ukkaripon/なぜ-未踏-は多くの若い世代に知られるべきなのか-1fb31ac9fda3'>なぜ「未踏」は多くの若い世代に知られるべきなのか
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#ukai_yuu'>鵜飼</a>）</small>
  </li>
  <li>
    <a href='https://speakerdeck.com/yasulab/believe-in-your-passion'>多様なメンター、多様な基準
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#yasulab'>安川</a>）</small>
  </li>
  <li>
    <a href='https://note.com/yoshifumiseki/n/n1e928281d7dc'>未踏ジュニアにおけるよい提案資料の書き方、もしくはアイデアの伝え方と評価について
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#seki_yoshifumi'>関</a>）</small>
  </li>
  <li>
    <a href='https://zenn.dev/reputeless/articles/idea-mitoujr'>未踏ジュニア、伝わる提案書を作る 5 つのコツ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#suzuki_ryou'>鈴木</a>）</small>
  </li>
  <li>
    <a href='https://note.com/teramotodaiki/n/n148d35899016'>提案書のよくある「もったいない」点の紹介
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#teramoto_daiki'>寺本</a>）</small>
  </li>
  <li>
    <a href='https://scrapbox.io/nishio/%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E6%8F%90%E6%A1%88%E6%9B%B8%E3%81%A3%E3%81%A6%E3%81%A9%E3%81%86%E6%9B%B8%E3%81%8F%E3%81%AE%EF%BC%9F'>プロジェクト提案書ってどう書くの？
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#nishio_hirokazu'>西尾</a>）</small>
  </li>
  <li>
    <a href='https://twitter.com/nishio/status/1640626474108727299'>中高生のための ChatGPT (GPT-4)
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#nishio_hirokazu'>西尾</a>）</small>
  </li>
</ul>

上記の他にも、メンターから応募者に向けたメッセージがあります。詳しくは下記ページをご確認ください。

<a href="/mentors" id="story" class="button" style='padding-left: 7px; padding-right: 7px;'>応募者向けメッセージを見る</a>


## [<i class="fa-light fa-users"></i>](#story) 採択者の体験談 {#story}
未踏ジュニア採択者（クリエータ）による体験談もあります。こちらも合わせてご参考になれば幸いです。カッコ内はプロジェクト名です。

<ul>
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

<!-- 以下はメディア掲載されたインタビュー記事 -->
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

<a href="/media" class="button">他のメディア掲載を見る</a>


## [<i class="fa-light fa-list-check"></i>](#ready) 準備できた? {#ready}

<p class="text-center">提案書の準備ができたら応募フォームへ! <i class="fad fa-mailbox green"></i></p>

<a href="/guideline" class="button">応募の手引きに戻る</a>

