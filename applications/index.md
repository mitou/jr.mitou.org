---
layout: post
title: 提案書を準備しよう
description: 応募書類（提案書）のテンプレートとサンプルを公開しています。応募するとき、または応募を検討する際にご活用ください。
redirect_from:
  - /download
---

<br>

本ページでは、応募に必要な書類（提案書）がダウンロードできます。また、提案書の書き方で悩んでいる人のために、過去の提案書のサンプルや、提案書を書くときのコツ、採択者の体験談などもまとめています。

<img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/chukan.svg"
     alt="提案書の書き方を相談している様子のイラスト" width="50%" class="post-photo lazyload">

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
  {% assign application_samples = site.data.applications | where: 'type', 'sample' %}
  {% for application_sample in application_samples %}
  {% assign project = site.data.projects | find: 'id', application_sample.project_id %}
  <li>
    <a href='/projects/{{ project.year }}/{{ project.id }}' title='{{ project.description }}'>{{ project.title }}</a>
    <small>（<a href='/applications/samples/{{ project.id }}.pdf'>&raquo; 提案書を見る</a>）</small>
  </li>
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
  {% assign application_tips = site.data.applications | where: 'type', 'tips' %}
  {% for application_tip in application_tips %}
  {% assign mentor = site.data.mentors | find: 'id', application_tip.mentor_id %}
  <li>
    <a href='{{ application_tip.link }}' title='{{ application_tip.title }}'>
      {{ application_tip.title }}
      <i class="fa-solid fa-up-right-from-square"></i>
    </a>
    <small>（<a href='/mentors#{{ mentor.id }}'>{{ mentor.name.last }}</a>）</small>
  </li>
  {% endfor %}
</ul>

上記の他にも、メンターから応募者に向けたメッセージがあります。詳しくは下記ページをご確認ください。

<a href="/mentors" class="button" style='padding-left: 7px; padding-right: 7px;'>応募者向けメッセージを見る</a>


## [<i class="fa-light fa-users"></i>](#story) 採択者の体験談 {#story}
採択者（クリエータ）による体験談もあります。こちらも合わせてご参考になれば幸いです。カッコ内はプロジェクト名です。

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

  {% assign application_stories = site.data.applications | where: 'type', 'story' %}
  {% for application_story in application_stories %}
  {% assign project = site.data.projects | find: 'id', application_story.project_id %}
  <li>
    <a href='{{ application_story.link }}' title='{{ application_story.title }}'>
      {{ application_story.title }}
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/{{ project.year }}/{{ project.id }}'>{{ project.title }}</a>）</small>
  </li>
  {% endfor %}

  <li>
    【要約版】
    <a href='https://x.com/blu3mo/status/1886417320912035964'>
      ChatGPTのDeep Researchによる「採択されるTips」まとめ
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='https://www.ipa.go.jp/archive/jinzai/mitou/it/2020/qv6pgp0000002ce7-att/000090477.pdf'><i class="fa-solid fa-up-right-from-square"></i>
      Kineto - 時間を操作する映像型ノート</a>）※
      <a href='/opportunities#ipa-mitou'>IPA 未踏</a>採択者
    </small>
  </li>
</ul>

<br>

<div id='news'></div>

上記の他にも、メディアに掲載されたクリエータのインタビュー記事もあります [<i class="fas fa-microphone-stand"></i>](#news)✨

<!-- 以下はお知らせ (/news) に掲載されたインタビュー記事 -->
<ul>
  {% assign application_news_list = site.data.applications | where: 'type', 'news' %}
  {% for application_news in application_news_list %}
  {% assign project = site.data.projects | find: 'id', application_news.project_id %}
  <li>
    <a href='{{ application_news.link }}' title='{{ application_news.title }}'>
      {{ application_news.title }}
      <i class="fa-solid fa-up-right-from-square"></i>
    </a><br>
    <small>（<a href='/projects/{{ project.year }}/{{ project.id }}'>{{ project.title }}</a>）</small>
  </li>
  {% endfor %}
</ul>

<a href="/news" class="button">他のメディア掲載を見る</a>


## [<i class="fa-light fa-list-check"></i>](#ready) 準備できた? {#ready}

<p class="text-center">提案書の準備ができたら応募フォームへ! <i class="fad fa-mailbox green"></i></p>

<a href="/guideline" class="button">応募の手引きに戻る</a>

