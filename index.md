---
# ここにコメントかけます
layout: default
---

<section class="top-img">
  <a href="/about" class="button">未踏ジュニアとは？</a>
  <a href="/guideline" class="button">応募方法</a>
</section>

<section id="about">
  <p class="subtitle">未踏ジュニアとは？</p>
  <h2 class="s-title">独創的なアイデアを持つ<br>小中高生クリエイターを援助するプログラム</h2>
  <p>独創的なアイデア、卓越した技術を持つ17歳以下の<br class="ph">小中高生及び高専生を対象とした、ミニ未踏です。<br class="pc"></p>
  <div class="service flex">
    <div class="service-one">
      <i class="fas fa-graduation-cap green"></i>
      <h3>メンタリングの提供</h3>
      <p>担当の<a href="/pm">プロジェクトマネージャ（PM）</a>をはじめ、未踏卒業生らを中心とする各界で活躍するエンジニア・専門家の指導が受けられます。</p>
    </div>
    <div class="service-one">
      <i class="fas fa-dollar-sign green"></i>
      <h3>開発資金の援助</h3>
      <p>各グループ50万円を上限として、<br class="ph">開発資金の援助を行います。</p>
    </div>
    <div class="service-one">
      <i class="fas fa-cog green"></i>
      <h3>開発場所の援助</h3>
      <p>必要に応じて、開発場所及び工作機材の援助を行います。</p>
    </div>
    <div class="service-one">
      <i class="fas fa-link green"></i>
      <h3>未踏ジュニアスーパークリエータの認定</h3>
      <p>特に顕著な成果を残したクリエータを、未踏ジュニアスーパークリエータとして認定します。慶應義塾大学SFCや首都大学東京に推薦枠で出願できます。</p>
    </div>
    <a href="/about" class="button">詳細を見る</a>
  </div>
</section>

<section>
  <h2 class="heading-balloon">応募者向け情報まとめ</h2>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" target="_blank">
  <img src="/assets/img/MovieToCreator.png" alt="Movies for Prospective Creators" width="100%"></a>
  <p>未踏ジュニアを検討している方に役立つ動画を YouTube の再生リストにまとめました。<br class="pc">質問は <a href="https://twitter.com/mitoujr">@MitouJr</a> や<a href="https://bit.ly/mitoujr-q-box">匿名質問箱</a>でも受付中！</p>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" class="button">YouTubeで視聴する</a>
</section>

{% include lets-apply.html %}

<section id="articles">
  <h2 class="heading-line"><i class="far fa-newspaper green"></i> メディア掲載</h2>
  <ul class="list-none media-list">
    {% for article in site.data.articles limit:10 %}
    <li><span class="media-date">{{ article.date }}</span><a href="{{ article.url }}">{{ article.title }}</a></li>
    {% endfor %}
  </ul>
  <a href="/media" class="button">すべて見る</a>
</section>

<section id="results">
  <h2 class="heading-line">2019年度のクリエータ</h2>
  <p>2019年度は127件の応募中13プロジェクト17人を採択しました。<br>
    （☆は未踏ジュニアスーパークリエータに認定されました）</p>
  <ul class="list-none">
    {% for pj in site.data.projects.nineteen %}
      {% include sp-creator.html %}
    {% endfor %}
  </ul>
  <a href="/projects" class="button">これまでの採択例を見る</a>

  <div class="projects flex">
    {% for pj in site.data.projects.nineteen %}
    <div class="project" id="{{pj.id}}">
      <h3>{{ pj.title }}</h3>
      <p>{{ pj.name }} ({{ pj.pm }}PM)</p>
      <h4>概要</h4>
      <p>{{ pj.description }}</p>
      {% if pj.comment %}
      <h4>{{ pj.pm}}PMより一言</h4>
      <p>{{pj.comment}}</p>
      {% endif %}
      <a href="https://www.youtube.com/watch?v={{pj.youtube}}" target="_blank" class="button">発表動画を見る</a>
    </div>
    {% endfor %}
  </div>
</section>

<section id="project-manager">
  <p class="subtitle">未踏ジュニア PM (プロジェクト・マネージャー)</p>
  <h2 class="s-title">未踏卒業生らを中心とする、各界で活躍する<br class="pc">エンジニア・専門家の指導が受けられます。</h2>
  <a href="/pm" class="button">未踏ジュニア PM を見る</a>
</section>

{% include faq.html %}
{% include lets-apply.html %}

<section>
  <h2 class="heading-line">運営団体</h2>
  <p><a href="https://www.mitou.org/">一般社団法人未踏</a>（Mitou Foundation、所在地：東京都渋谷区、代表理事：竹内 郁雄）は、経済産業省所管の独立行政法人情報処理推進機構（IPA、所在地：東京都文京区、理事長：富田 達夫）の事業である未踏事業の OB/OG や関係者を中心に、起業家や クリエータ等、天才的かつ創造的人材を多角的に支援し、日本横断的なネットワークをつくること で、IT を中心とした日本のイノベーションを加速させることを目的に設立された社団法人です。</p>
</section>

{% include sponsors.html %}

<section id="sns" class="pc">
  <h2 class="heading-line">SNS</h2>
  <div class="flex">
  <div class="facebook w-half">
    <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fmitoujr&tabs=timeline&width=340&height=400&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=true&appId" width="340" height="400" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
  </div>
  <div class="twitter w-half">
    <a class="twitter-timeline" data-height="400" data-width="340" href="https://twitter.com/mitoujr?ref_src=twsrc%5Etfw">Tweets by mitoujr</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
  </div>
  </div>
</section>

<section id="contact">
  <h2 class="heading-line">お問い合わせ</h2>
  <p>お返事が遅くなる場合もありますが、ご了承ください。<br class="pc">チラシの配布にご協力頂ける方は、<a href="https://goo.gl/forms/LbmaEz1kNrN1WFgt2">こちらのフォーム</a>より請求をお願いいたします。</p>
  <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>
</section>
