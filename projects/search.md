---
layout: post
title: 採択プロジェクト検索
description: 100件以上の採択プロジェクトを検索して探すためのページです。
thumbnail: /assets/img/projects/index.webp
redirect_from:
  - /search
---

<div class="projects">
  <h2 id='search'>
    <a href='#search'><i class="fa-regular fa-magnifying-glass"></i></a>
    未踏ジュニア<br>
    採択プロジェクト検索
  </h2>
  <p>
    これまでに採択された全プロジェクトを<b>検索して探せる</b>ページです。<small>(<a href='/projects'>&raquo; 一覧から探す</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='/projects/showcase'>&raquo; 図鑑から探す</a>)</small>
  </p>

  <a href="#" class="button" id="category-link">サンプル文で検索してみる</a>

  <!-- Project Search -->
  <div class="search-position" style='margin-bottom: 500px;'>
    <div class="search-block">
      <div class="search-block-input">
	<span class="search-icon"></span>
      </div>
      <input id="search-input" class="search-input" type="text" name="" value="" placeholder="キーワードで検索する" >

    </div>
    <div class="search-block-result">
      <ul id="search-results"></ul>
    </div>
  </div>

  <!-- Project Search -->
  <style>
    .loading-skeleton {
      width: 100%;
      background: linear-gradient(90deg, #eee, #ddd, #eee);
      background-size: 200% 100%;
      animation: loading 1.5s infinite;
    }
    @keyframes loading {
      from { background-position:  200% 0; }
      to   { background-position: -200% 0; }
    }

    .search-result {
      line-height:   1.6;
      margin-bottom: 2rem; /* 各プロジェクトの下にも適度な間隔 */
    }
    .search-result-title {
      line-height: 0em !important;
    }
    .search-result-description code {
      margin-top: 1em;
      font-size:  1em;
      line-height: 1.6;
    }

  </style>
  <script src="/assets/js/simple-jekyll-search.js"></script>
  <script type="text/javascript">
   let placeholder_text = 'キーワードで検索する (例: ';
   const categories = ['自作', 'LINE', '言語', 'ゲーム', '学習', 'VR', 'Web', 'アプリ', 'SNS', 'デザイン',
		       '音', 'ツール', 'OS', '3D', '自動', '教育', 'IoT', '生体', '脆弱性', 'ブロック',
		       '2016', '2022', '生成', 'AI', 'ゆっくり', 'エンジン', 'モーター', '会議', '制御',
                       '暗号', '学校', '学生', '美容', '動画', '環境', '電磁', 'デバイス', '単語', '危険',
                       '小説', '支援', '2024', '最適化', '生物', '予測', 'LLM', '食材', '色', '作文', '練習', 'モデル'];

   // Durstenfeld Shuffle Algorithm
   // https://ja.wikipedia.org/wiki/フィッシャー–イェーツのシャッフル
   for (i=categories.length; 1<i ; i--) {
     j = Math.floor(Math.random() * i);
     [categories[j], categories[i-1]] = [categories[i-1], categories[j]];
   }
   placeholder_text += categories[0] + ", " + categories[1] + ", " + categories[2] + ")";
   document.getElementById("search-input").placeholder = placeholder_text;

   const sjs = SimpleJekyllSearch({
     searchInput:          document.getElementById('search-input'),
     resultsContainer:     document.getElementById('search-results'),
     json:                 '/projects/search.json',
     limit:                20,

     // JSONの読み込み完了後に success コールバック内で検索処理を実行する
     success: function() {
       const queryParamValue = getQueryParam('q');
       if (queryParamValue) {
         //setInputValue('search-input', queryParamValue);
	 document.getElementById('search-input').value = queryParamValue;
	 this.search(queryParamValue);
       }
     },

     exclude:              ['assets', 'img', 'webp', 'projects'],
     searchResultTemplate: '<li class="search-result"><img class="lazyload" data-src="{thumbnail}" loading="lazy"><span class="search-result-title"><a href="{permalink}">{title}</a> <small>by {creators} / {mentor}PM ({year})</small><br></span><code class="search-result-description">{description}</code></li>',
     // debounceTime:         400,
     noResultsText:        '検索結果が見つかりませんでした。',
     loadingText:          '<div class="loading-skeleton">検索中...</div>',
     loadingDelay:         800,

     // Mark hit keywords
     templateMiddleware: function(prop, value, template) {
       const query = document.getElementById('search-input').value.trim();
       if (query && typeof value === 'string') {
	 // 加工対象を限定する
	 const highlightTargets = ['title', 'description', 'creators', 'mentor', 'year'];

	 if (highlightTargets.includes(prop)) {
	   const keywords = query.split(/\s+/).filter(Boolean);
	   if (keywords.length === 0) return value;

	   const regex = new RegExp('(' + keywords.map(escapeRegExp).join('|') + ')', 'gi');
	   return value.replace(regex, '<mark>$1</mark>');
	 }
       }

       return value; // 加工対象じゃないならそのまま返す
     }
   });

   // 正規表現エスケープ用の関数
   function escapeRegExp(string) {
     return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
   }

   function getQueryParam(name) {
     const  urlSearchParams = new URLSearchParams(window.location.search);
     return urlSearchParams.get(name);
   }

   function setInputValue(id, value) {
     const inputElement = document.getElementById(id);
     if (inputElement) {
       inputElement.value = value;
       sjs.search(value);
     }
   }

   function updateURL(paramName, paramValue) {
     const url = new URL(window.location.href);
     url.searchParams.set(paramName, paramValue);
     history.replaceState(null, '', url.toString());
   }

   function handleClick() {
     const randomCategory = categories[Math.floor(Math.random() * categories.length)];
     setInputValue('search-input', randomCategory);
     updateURL('q', randomCategory);
   }

   window.addEventListener('load', () => {
     const searchInput  = document.getElementById('search-input');
     const categoryLink = document.getElementById('category-link');

     if (searchInput) {
       searchInput.addEventListener('input', (event) => {
	 const inputValue = event.target.value;
	 updateURL('q', inputValue);
       });
     }

     if (categoryLink) {
       categoryLink.addEventListener('click', (event) => {
	 event.preventDefault();
	 handleClick();
       });
     }
   });

  </script>
</div>
