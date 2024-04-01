---
layout: post
title: 採択プロジェクト一覧
description: |
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_projects = total_projects | plus: stat.projects %}
    {% assign total_creators = total_creators | plus: stat.creators %}
  {% endfor %}
  採択されたプロジェクトを年度別にまとめたページです。未踏ジュニアではこれまでに {{ total_projects }} 件のプロジェクトを採択し、{{ total_creators }} 名のクリエータを支援してきました。
thumbnail: /assets/img/thumbnails/projects.webp
---

{% assign total_projects = 0 %}
{% assign total_creators = 0 %}
{% for stat in site.data.stats %}
  {% assign total_projects = total_projects | plus: stat.projects %}
  {% assign total_creators = total_creators | plus: stat.creators %}
{% endfor %}

<div class="projects">
  <h2 id='index'>
    <a href='#index'><i class="fa-regular fa-list-check"></i></a>
    未踏ジュニア<br>
    採択プロジェクト一覧
  </h2>
  <p>
    これまでに採択された全プロジェクトを<b>一覧から探せるページ</b>です。<br class="ph"><br class="ph">未踏ジュニアではこれまでに <strong>{{ total_projects }} 件</strong>のプロジェクトを採択し、<strong>{{ total_creators }} 名</strong>のクリエータを支援してきました。
  </p>

  <div class='flex'>
    <a href='/projects/showcase' class='button'>図鑑から探す</a>
    <a href='/projects/search'   class='button'>検索して探す</a>
  </div>

  <!-- Projects を時系列順にソートし、初年度と最新年度を取得する -->
  {% assign oldest_pj = site.data.projects | sort: 'year' | first %}
  {% assign newest_pj = site.data.projects | sort: 'year' | last  %}
  {% for this_year in (oldest_pj.year..newest_pj.year) reversed %}
    <h3 id='{{ this_year }}'>
      <a href='#{{ this_year }}' style='color: #333; font-weight: bold;'>{{ this_year }}年度</a>
    </h3>

    {% include project-list.html year=this_year %}
    <p><small>（☆
      は<a href="/about#supports-awarding">スーパークリエータ</a>認定者となります）
    </small></p>

    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の詳細を見る</a>
  {% endfor %}
</div>

<br>
<br>

{% include back-to-top.html %}
