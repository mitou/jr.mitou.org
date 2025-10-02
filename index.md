---
layout: default
nosnippet: true
this_year: 2025

# this_year を変更すると、表示したい年度の採択プロジェクトに切り替わります。
# 成果報告会の公開準備が整ったら this_year を今年度の数字に変更してください。
# 詳細: https://github.com/mitou/jr.mitou.org#how-to-build-projects
---

<div class="cover-photo">
  <img src="/assets/img/2024_cover.min.webp" data-src="/assets/img/2024_cover.webp" alt="2024年度 未踏ジュニア集合写真" class="top-img lazyload" loading="lazy">
  <!--<img src="/assets/img/2022_cover.min.webp" data-src="/assets/img/2022_cover.webp" alt="2022年度 未踏ジュニア集合写真" class="top-img lazyload" loading="lazy">-->
  <!--<img src="/assets/img/2019_all.min.webp" data-src="/assets/img/2019_all.webp" alt="2019年度 未踏ジュニア集合写真" class="top-img lazyload" loading="lazy">-->

  <!--【チラシのアナウンス】-->
  <!--
  <a href="/flyers" class="dialog ignore-sp">
    🆕 チラシ配布のお願い (〆 2月2日 23:59)
  </a>
  -->

  <!--【募集予告のアナウンス】-->
  <!--<a href="/pre" class="dialog ignore-sp">
    ⏳ 2025年度の募集は2月〜3月頃に公開予定です
  </a>
  -->
  <!--📮 2025年度の事前登録 (特典付き) が開始されました-->

  <!--【募集中のアナウンス】-->
  <!--
  <a href="/guideline" class="dialog ignore-sp">
    🆕 2025年度の募集要項を見る (〆 3月30日 23:59)
  </a>
  -->

  <!--【〆切後のアナウンス】-->
  <!--
  <a href="/guideline" class="dialog ignore-sp">
    たくさんのご応募ありがとうございました!!
  </a>
  -->

  <!--【成果報告前のアナウンス】-->
  <a href="/final" class="dialog ignore-sp">
    🆕 成果報告会の参加申込開始! (11月3日)
  </a>

  <!--【成果報告後のアナウンス】-->
  <!--
  <a href="/final" class="dialog ignore-sp">
    🆕 成果報告会のアーカイブ配信が公開されました！
  </a>
  -->
</div>

<section id="about">
  <h1 class="subtitle">未踏ジュニアとは？</h1>
  <p class="s-title">独創的アイデアと卓越した技術を持つ<br>小中高生クリエータ支援プログラム</p>

  <div class="service flex">
    <div class="service-one">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/mentor.svg" alt="メンター" class="service-img lazyload" loading="lazy">
      <h3>メンタリング</h3>
      <p>未踏修了生らを中心に、各界で活躍する<a href="#mentors">エンジニアや専門家</a>からサポートが得られます</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/money.svg" alt="資金" class="service-img lazyload" loading="lazy">
      <h3>開発資金</h3>
      <p>各グループ50万円を上限として開発資金の援助があります</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/place.svg" alt="開発場所" class="service-img lazyload" loading="lazy">
      <h3>開発場所</h3>
      <p>必要に応じて、開発場所や工作機材の支援が得られます</p>
    </div>
    <div class="service-one">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/illustration/sp-creator.svg" alt="スーパークリエータ認定" class="service-img lazyload" loading="lazy">
      <h3>スーパークリエータ認定</h3>
      <p>特に顕著な成果を残した方を表彰します。慶應SFCや都立大学、近畿大学に<a href='/admissions'>推薦枠で出願</a>できます</p>
    </div>
    <a href="/about" class="button">詳細を見る</a>
  </div>
</section>

<section id="sponsor-logos">
  <div class='flex'>
    {% for sponsor in site.data.sponsors %}
    <a href="{{ sponsor.link }}" target="_blank">
      {% if sponsor.type == 'platinum' %}
      <img src="/assets/img/spinner.svg" data-src="/assets/img/sponsors/{{ sponsor.img }}" alt="{{ sponsor.name }}" class="lazyload sponsor-logo-platinum">
      {% elsif sponsor.type == 'gold' %}
      <img src="/assets/img/spinner.svg" data-src="/assets/img/sponsors/{{ sponsor.img }}" alt="{{ sponsor.name }}" class="lazyload sponsor-logo-gold">
      {% endif %}
    </a>
    {% endfor %}
  </div>

  <p>未踏ジュニアは<a href='#sponsors'>スポンサー</a>からの支援によって運営されています。</p>
</section>


<div id='media'><!-- ID for outdated links from outeside: media -> news --></div>
<section id="news">
  <h2 class="heading-line">
    <a href='#news'><i class="far fa-newspaper green"></i></a>
    お知らせ
  </h2>
  {% include news-list.html limit=5 %}

  <a href="/news" class="button">すべて見る</a>
</section>

<section id="projects">

  {% assign this_year = page.this_year %}
  {% assign this_stat = site.data.stats | find: 'year', this_year %}
  <h2 class="heading-line">{{ this_year }}年度のクリエータ</h2>

  {% if this_stat %}
  <p>{{ this_year }}年度は<a href='/stats'>{{ this_stat.applications }}件の応募</a>が集まり、<br class="ph">{{ this_stat.projects }}プロジェクト・{{ this_stat.creators }}名を採択しました。<br>
    {% if this_stat.spc %}(☆ は未踏ジュニアスーパークリエータ認定者){% endif %}
  </p>
  {% else %}
  <p>{{ this_year }}年度の採択プロジェクトは次のとおりです。</p>
  {% endif %}

  {% include project-list.html year=this_year center_mode=true %}

  <div class="flex">
    <a href="/projects" class="button">これまでの採択例を見る</a>
    <a href="/final"    class="button">成果報告会の発表を見る</a>
  </div>

  <div class="projects flex">
    {% for pj in projects %}
      {% include project-details.html %}
    {% endfor %}
  </div>
  <a href="/projects" class="button">これまでの採択例を見る</a>

</section>

<section id="mentors">
  <p class="subtitle">皆さんのプロジェクトを支援するメンター陣</p>
  <h2 class="s-title">未踏修了生らを中心に、各界で活躍する<br>エンジニアや専門家がサポートします</h2>
  <div class="mentor-list flex">
    {% for mentor in site.data.mentors %}
      {% if mentor.is_alumni %} {% continue %} {% endif %}
      <a href="/mentors/#{{ mentor.id }}" class="mentor-list-one">
        <img src="/assets/img/spinner.svg" data-src="/assets/img/mentors/{{ mentor.img }}" alt="{{ mentor.name.last }} {{ mentor.name.first }}" class="lazyload" loading="lazy">
	<p class="mentor-list-name">{{ mentor.name.last }} <span class="ignore-sp">{{ mentor.name.first }}</span></p>
	<p class="mentor-list-af pc">{{ mentor.affiliation }}</p>
      </a>
    {% endfor %}
  </div>
  <a href="/mentors" class="button">こんな人・こんな提案を<br>待っています</a>
</section>

{% include faq.html %}

<section id="for-creators" class="prospective-creators">
  <h2 class="heading-balloon">応募者向けお役立ち情報</h2>

  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" target="_blank" rel="noopener">
    <img src="/assets/img/highlights-for-creators.min.webp" data-src="/assets/img/highlights-for-creators.webp" alt="Movies for Prospective Creators" width="100%" class="lazyload" loading="lazy">
  </a>

  <p>応募者に役立つ動画を YouTube でまとめました。<br>質問は <a href="https://twitter.com/mitoujr">@MitouJr</a> や<a href="/q-box">匿名質問箱</a>でも受付中！</p>

  <a href="https://www.youtube.com/playlist?list=PLNObH2jlC6lc3c-gRpILyQrMhlqBIRjKr" class="button">YouTube で見る</a>  
</section>

<section class="lets-apply">
  <h2>未踏ジュニアに<br class="ph">応募してみませんか？</h2>
  <h3>2025年度の募集について</h3>

  {% include agenda.html %}

  <a href="/guideline" class="button">応募の手引きを見る</a>
</section>

<section id="organizer">
  <h2 class="heading-line">
    <a href="#organizer"><i class="far fa-badge-check green"></i></a>
    運営団体
  </h2>
  <p>
    <a href="https://www.mitou.org/"><img src="/assets/img/spinner.svg" data-src="/assets/img/mitou-foundation.webp" alt="一般社団法人未踏" class="lazyload" loading="lazy"></a>
  </p>

  <p style='text-align: left;'><a href="https://www.mitou.org/">一般社団法人未踏</a> (Mitou Foundation、代表理事：<a href='/mentors/#supervisor'>竹内 郁雄</a>) は、<a href='https://www.meti.go.jp/'>経済産業省</a>所管の独立行政法人情報処理推進機構 (<a href='https://www.ipa.go.jp/'>IPA</a>) が実施する<a href='https://www.ipa.go.jp/jinzai/mitou/koubo/'>未踏事業</a>修了生を中心に、創造的人材を多角的に支援し、業界横断的なネットワークをつくることで、ITを中心としたイノベーションを加速することを目的に設立された社団法人です。</p>
</section>

{% include sponsors.html %}
{% include supporters.html %}
{% include collaborators.html %}

<section id="sns" class="pc">
  <h2 class="heading-line">SNS</h2>
  <div class="flex">
    <div class="facebook w-half">
      <iframe data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fmitoujr&tabs=timeline&width=340&height=400&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=true&appId" width="340" height="400" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media" class="lazyload"></iframe>
    </div>
    <div class="twitter w-half">
      <a class="twitter-timeline" data-height="400" data-width="340" href="https://twitter.com/MitouJr?ref_src=twsrc%5Etfw">Tweets by mitoujr</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
  </div>
</section>

{% include contact.html %}
