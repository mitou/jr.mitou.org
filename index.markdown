---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
<section id="about">
  <p class="subtitle">未踏ジュニアとは？</p>
  <h2 class="s-title">独創的なアイデアを持つ<br>小中高生クリエイターを援助するプログラム</h2>
  <p>独創的なアイデア、卓越した技術を持つ17歳以下の小中高生及び高専生を対象とした、ミニ未踏です。<br>
  そもそも未踏って？というかたはこちらをご覧ください。</p>
  <div class="service">
    <div class="service-one">
      <h3>メンタリングの提供</h3>
      <p>担当のプロジェクトマネージャ（PM）をはじめ、未踏卒業生らを中心とする各界で活躍するエンジニア・専門家の指導が受けられます。</p>
    </div>
    <div class="service-one">
      <h3>開発資金の援助</h3>
      <p>各グループ50万円を上限として、開発資金の援助を行います。</p>
    </div>
    <div class="service-one">
      <h3>開発場所の援助</h3>
      <p>必要に応じて、開発場所及び工作機材の援助を行います。</p>
    </div>
    <div class="service-one">
      <h3>未踏ジュニアスーパークリエータの認定</h3>
      <p>特に顕著な成果を残したクリエータを、未踏ジュニアスーパークリエータとして認定します。慶應義塾大学SFCや首都大学東京に推薦枠で出願できます。</p>
    </div>
  </div>
  <h2>未踏インタビュー - Why Mitou?</h2>
  <p>未踏関係者に『なんで未踏?』という質問をしてみました。
未踏について一歩深く知るキッカケになれば嬉しいです ;)</p>
  <iframe width="779" height="438" src="https://www.youtube.com/embed/videoseries?list=PLNObH2jlC6leiUTypiJYO2zUcwBg7M0Bg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6leiUTypiJYO2zUcwBg7M0Bg&disable_polymer=true" class="button">YouTubeで視聴する</a>

  <h2>オンライン説明会（録画版）</h2>
  <p>2019年2月3日に収録した説明会の動画です。2019年度未踏ジュニアのものですので、2020年度は多少内容が変更になる可能性があります。</p>
  <iframe width="779" height="438" src="https://www.youtube.com/embed/videoseries?list=PLNObH2jlC6lfFCBZeq10OrpsEOdSGkkBd" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lfFCBZeq10OrpsEOdSGkkBd&disable_polymer=true" class="button">YouTubeで視聴する</a>
</section>
<section id="articles">
  <h2>メディア掲載</h2>
  <ul>
    {% for article in site.data.articles limit:10 %}
    <li><span>{{article.date}}</span><a href="{{article.url}}">{{article.title}}</a></li>
    {% endfor %}
  </ul>
  <a href="/media" class="button">すべて見る</a>
</section>
<section id="results">
  <h2>2019年度の採択者及び成果</h2>
  <ul>
    {% for pj in site.data.projects.nineteen %}
    <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
    {% endfor %}
  </ul>
  <a href="/past-projects" class="button">過去の採択者/成果を見る</a>
  <div class="projects flex">
    {% for pj in site.data.projects.nineteen %}
      {% include project.html %}
    {% endfor %}
  </div>
</section>
<section id="project-manager">
  <p class="subtitle">プロジェクトマネージャー</p>
  <h2 class="s-title">未踏卒業生らを中心とする、各界で活躍する<br>エンジニア・専門家の指導が受けられます。</h2>
  <a href="/pm" class="button">2019年度プロジェクトマネージャー</a>
</section>
{% include faq.html %}
<section>
  <h2>運営団体</h2>
  <p><a href="https://www.mitou.org/">一般社団法人未踏</a>（Mitou Foundation、所在地：東京都渋谷区、代表理事：竹内 郁雄）は、経済産業省所管の独立行政法人情報処理推進機構（IPA、所在地：東京都文京区、理事長：富田 達夫）の事業である未踏事業の OB/OG や関係者を中心に、起業家や クリエータ等、天才的かつ創造的人材を多角的に支援し、日本横断的なネットワークをつくること で、IT を中心とした日本のイノベーションを加速させることを目的に設立された社団法人です。</p>
</section>
{% include sponsors.html %}
<section id="contact">
  <h2>コンタクト</h2>
  <p>お返事が遅くなる場合もありますが、ご了承ください。<br>チラシの配布にご協力頂ける方は、<a href="https://goo.gl/forms/LbmaEz1kNrN1WFgt2">こちらのフォーム</a>より請求をお願いいたします。</p>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  <iframe name="f285ee6871c3bb8" width="1000px" height="1000px" title="fb:page Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.8/plugins/page.php?adapt_container_width=true&amp;app_id=158647657952679&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D45%23cb%3Df1867d0e5f9a8f%26domain%3Djr.mitou.org%26origin%3Dhttps%253A%252F%252Fjr.mitou.org%252Ff2db495e8015cc%26relation%3Dparent.parent&amp;container_width=1470&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2F%25E6%259C%25AA%25E8%25B8%258F%25E3%2582%25B8%25E3%2583%25A5%25E3%2583%258B%25E3%2582%25A2-256249264788982%2F&amp;locale=ja_JP&amp;sdk=joey&amp;show_facepile=true&amp;small_header=false&amp;tabs=timeline" style="border: none; visibility: visible; width: 340px; height: 500px;" class=""></iframe>
  <a href="/privacy-policy.html">プライバシーポリシー</a>
</section>
