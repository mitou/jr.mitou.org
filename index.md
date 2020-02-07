---
# ここにコメントかけます
layout: default
---

<div class="cover-photo">
  <img src="/assets/img/people/2019all.png" alt="2019年度未踏ジュニア集合写真" class="top-img">
  <a href="/guideline" class="dialog">2020年度の募集が始まりました！</a>
</div>

<section id="about">
  <p class="subtitle">未踏ジュニアとは？</p>
  <h2 class="s-title">独創的アイデアと卓越した技術を持つ<br>小中高生クリエイター支援プログラム</h2>

  <div class="service flex">
    <div class="service-one">
      <img src="/assets/img/illustration/mentor.svg" alt="メンター" class="service-img">
      <h3>メンタリング</h3>
      <p>未踏卒業生らを中心に、各界で活躍する<a href="#mentors">エンジニアや専門家</a>からサポートが得られます</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/illustration/money.svg" alt="資金" class="service-img">
      <h3>開発資金</h3>
      <p>各グループ50万円を上限として、開発資金の援助があります</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/illustration/place.svg" alt="開発場所" class="service-img">
      <h3>開発場所</h3>
      <p>必要に応じて、開発場所および工作機材の支援が得られます</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/illustration/sp-creator.svg" alt="スーパークリエータ認定" class="service-img">
      <h3>スーパークリエータ認定</h3>
      <p>特に顕著な成果を残した方を未踏ジュニアスーパークリエータとして認定します。<a href="https://www.sfc.keio.ac.jp/news/012903.html">慶應義塾大学SFC</a>や<a href="https://www.tmu.ac.jp/entrance/revision/y2021/tayou.html">首都大学東京</a>に推薦枠で出願できます</p>
    </div>
    <a href="/about" class="button">詳細を見る</a>
  </div>
</section>

<section class="prospective-creators">
  <h2 class="heading-balloon">応募者向け情報まとめ</h2>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" target="_blank">
  <img src="/assets/img/MovieToCreator.png" alt="Movies for Prospective Creators" width="100%" loading="lazy"></a>
  <p>応募者に役立つ動画を YouTube で公開しています。<br>質問は <a href="https://twitter.com/mitoujr">@MitouJr</a> や<a href="/q-box">匿名質問箱</a>でも受付中！</p>
  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" class="button">YouTubeで視聴する</a>
</section>

{% include lets-apply.html %}

<section id="articles">
  <h2 class="heading-line"><i class="far fa-newspaper green"></i> メディア掲載</h2>
  <ul class="list-none media-list">
    {% for article in site.data.articles limit:5 %}
    <li><span class="media-pc-date pc-inline-b">{{ article.date }}</span><a href="{{ article.url }}" target="_blank">{{ article.title }} <span class="ph-inline-b">- {{ article.date }}</span></a></li>
    {% endfor %}
  </ul>
  <a href="/media" class="button">すべて見る</a>
</section>

<section id="projects">
  <h2 class="heading-line">2019年度のクリエータ</h2>
  <p>2019年度は127件の応募が集まり、<br class="ph">13プロジェクト・17名を採択しました。<br>
    (☆ は未踏ジュニアスーパークリエータ認定者)</p>

  {% include project-list.html year=2019 internal_link=true %}

  <a href="/projects" class="button">これまでの採択例を見る</a>
  <div class="projects flex">
    {% for pj in projects %}
      {% include project-details.html thumbnail=true %}
    {% endfor %}
  </div>
  <a href="/projects" class="button">これまでの採択例を見る</a>

</section>

<section id="mentors">
  <p class="subtitle">皆さんのプロジェクトを支援するメンター陣</p>
  <h2 class="s-title">未踏卒業生らを中心に、各界で活躍する<br>エンジニアや専門家がサポートします</h2>
  <div class="mentor-list flex">
    {% for mentor in site.data.mentors %}
    {% unless mentor.is_alumni %}
    <a href="/mentors#{{ mentor.name.last }}{{ mentor.name.first }}" class="mentor-list-one">
      <img src="/assets/img/mentors/{{ mentor.img }}" alt="{{ mentor.name.last }} {{ mentor.name.first }}" loading="lazy">
      <p class="mentor-list-name">{{ mentor.name.last }} <span class="pc-inline-b">{{ mentor.name.first }}</span></p>
      <p class="mentor-list-af pc">{{ mentor.affiliation }}</p>
    </a>
    {% endunless %}
    {% endfor %}
  </div>
  <a href="/mentors" class="button">こんな人・こんな提案を<br>待っています</a>
</section>

{% include faq.html %}
{% include lets-apply.html %}

<section id="organizer">
  <h2 class="heading-line">運営団体</h2>
  <p></p>
  <a href="https://www.mitou.org/"><img src="/assets/img/mitou-foundation.png" alt="一般社団法人未踏" loading="lazy"></a>

  <p><a href="https://www.mitou.org/">一般社団法人未踏</a> (Mitou Foundation、所在地：東京都渋谷区、代表理事：竹内 郁雄) は、経済産業省所管の独立行政法人情報処理推進機構 (IPA、所在地：東京都文京区、理事長：富田 達夫) の事業である<a href="https://www.ipa.go.jp/jinzai/mitou/portal_index.html">未踏事業</a>の OB/OG や関係者を中心に、起業家やクリエータ等、天才的かつ創造的人材を多角的に支援し、日本横断的なネットワークをつくることで、IT を中心とした日本のイノベーションを加速させることを目的に設立された社団法人です。</p>
</section>

{% include sponsors.html %}

<section id="supporters">
  <h2>後援</h2>
  <div class="sponsors-list-supporter">
    <a href="https://www.mext.go.jp/" target="_blank">
      <div class="sponsor-supporter sponsor-one">
        <img src="/assets/img/sponsor/mext.png" alt="文部科学省" class="sponsor-img">
      </div>
    </a>
    <a href="https://www.meti.go.jp/" class="sponsor-supporter sponsor-one" target="_blank">
      <div class="sponsor-supporter sponsor-one">
        <img src="/assets/img/sponsor/meti.png" alt="経済産業省" class="sponsor-img">
      </div>
    </a>
  </div>
</section>

<section id="collaborators">
  <h2>協力団体</h2>
  <div class="sponsors-list-clb">
    {% for c in site.data.collaborators %}
    <a href="{{c.url}}" class="sponsor-clb sponsor-one" target="_blank">
      <img src="/assets/img/sponsor/{{c.img}}" alt="{{c.name}}" class="sponsor-img">
    </a>
    {% endfor %}
  </div>
</section>

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
  <p></p>

  <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>

  <p>お返事が遅くなる場合もありますが、ご了承ください。<br>チラシ配布にご協力頂ける方は<a href="https://forms.gle/RJruEWMpfkzDebz99" target="_blank">コチラ</a>からご請求をお願い致します。
  </p>
  <a href="/q-box" class="button">匿名質問箱はこちら</a>
</section>
