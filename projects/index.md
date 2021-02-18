---
layout: post
title: 採択プロジェクト
---

<div class="projects">
  <h2>未踏ジュニア<br class="ph">採択プロジェクト</h2>
  <p>
    これまでの採択プロジェクトです。☆はスーパークリエータに認定されました。
  </p>

  <!-- Project Search -->
  <div class="search-position">
    <div class="search-block">
      <div class="search-block-input">
        <span class="search-icon"></span>
      </div>
      <input class="search-input" type="text" name="" value="" placeholder="キーワードで検索する (例: CPU, LINE, 言語)" id="search-input">

    </div>
    <div class="search-block-result">
      <ul id="search-results"></ul>
    </div>
  </div>

  <script src="/assets/js/simple-jekyll-search.js"></script>
  <script>
   SimpleJekyllSearch({
     searchInput:          document.getElementById('search-input'),
     resultsContainer:     document.getElementById('search-results'),
     json:                 '/search.json',
     searchResultTemplate: '<li><img src="{{ site.url}}{icon}" style="border-radius: 4px;" width="50"> <a href="{url}">{title}</a></li>'
   });
  </script>
  <!-- Project Search -->

  {% for this_year in (2016..2020) reversed %}
    <a href="/projects/{{ this_year }}"><h3>{{ this_year }}年度</h3></a>
    {% include project-list.html year=this_year %}
    <a href="/projects/{{ this_year }}" class="button">{{ this_year }}年度の一覧を見る</a>
  {% endfor %}
</div>
