---
layout: post
title: 未踏ジュニア <br class='ignore-pc'>修了生インタビュー
description: 本ページでは、未踏ジュニア修了生のインタビュー記事をまとめています。
---


## [<i class="fa-light fa-microphone-stand"></i>](#index)  インタビュー記事一覧 {#index}

本ページでは、未踏ジュニアの全行程を修了した採択者（修了生）のインタビュー記事をまとめています。

<small>（カッコ内は採択プロジェクト名です）</small>

<br>

<ul class="list-none media-list">
  {% for interview in site.data.interviews %}
  {% assign creator = site.data.creators | find: 'id', interview.creator  %}
  {% assign project = site.data.projects | find: 'id', creator.project_id %}
  <li>
    <span class="media-pc-date pc-inline-b">{{ interview.date }}</span>
    <a href="/interviews/{{ creator.id }}">
      未踏ジュニア 修了生インタビュー
      ─
      {{ creator.name }}さん（{{ creator.year }}年度）
      <!--<span class="ph-inline-b">- {{ interview.date }}</span>-->
    </a>
    <br>
    <small>（<a href='/projects/{{ project.year }}/{{ project.id }}'>{{ project.title }}</a>）</small>
  </li>
  {% endfor %}
</ul>

<a href="/applications/#story" class="button">採択者の他の体験談を見る</a>
