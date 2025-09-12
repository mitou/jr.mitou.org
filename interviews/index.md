---
layout: post
title: 未踏ジュニア <br class='ignore-pc'>修了生インタビュー
description: 本ページでは、未踏ジュニア修了生のインタビュー記事をまとめています。
---


## [<i class="fa-light fa-microphone-stand"></i>](#index)  インタビュー記事一覧 {#index}

本ページでは、未踏ジュニアの全行程を修了した採択者（修了生）のインタビュー記事をまとめています。

<!--<small>（カッコ内は採択プロジェクト名です）</small>-->

<br>

<div class="projects flex">
  {% for interview in site.data.interviews %}
  {% assign creator = site.data.creators | find: 'id', interview.creator  %}
  {% assign project = site.data.projects | find: 'id', creator.project_id %}

  <div class="project" id="{{ creator.name }}">
    <h3 class="project-title no-link-decoration">
      <a href='#{{ creator.name }}'>
	未踏ジュニア 修了生インタビュー<br>
	─
	{{ creator.name }}さん
	<!--({{ creator.year }}年度)-->
	<!--<span class="ph-inline-b">- {{ interview.date }}</span>-->
      </a>
    </h3>

    <a href="/interviews/{{ creator.id }}">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/interviews/{{ interview.creator }}_1.webp"
           alt="{{ creator.name }}'s Interview" title="{{ creator.name }}'s Interview"
           class="project-thumbnail lazyload" loading="lazy" />
    </a>

    <p class="project-description">{{ interview.description }}</p>

    <a href="/interviews/{{ creator.id }}" class="button">インタビューを見る</a>
  </div>
 {% endfor %}
</div>

<br>

<a href="/applications/#story" class="button">他の採択者の体験談を見る</a>
