---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
<section id="about">
  <h2>未踏ジュニアとは？</h2>
  <p>独創的なアイデア、卓越した技術を持つ17歳以下の小中高生及び高専生を対象とした、ミニ未踏です。
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
{% include articles.html %}
<section id="results">
  <h2>2019年度の採択者及び成果</h2>
  <ul>
    {% for pj in site.data.projects.nineteen %}
    <li><a href="#{{pj.id}}">{% if pj.sp-creator %}<span>☆ </span>{% endif %}{{pj.title}}</a></li>
    {% endfor %}
  </ul>
  <div class="projects">
    {% for pj in site.data.projects.nineteen %}
    <div class="project" id="{{pj.id}}">
      <h3>{{pj.title}}</h3>
      <p>{{pj.name}}</p>
      <iframe width="560" height="315" src="https://www.youtube.com/embed/{{pj.youtube}}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen=""></iframe>
      <h4>概要</h4>
      <p>{{pj.description}}</p>
    </div>
    {% endfor %}
  </div>
</section>
<section id="project-manager">
  <h2>2019年度プロジェクトマネージャ</h2>
  <div class="pms">
    {% for pm in site.data.pm %}
      <div class="pm">
        <img src="{{pm.img}}" alt="{{pm.name}}">
        <h3>{{pm.name}}</h3>
        <p>{{pm.affiliation}}</p>
        <div class="pm-sns">
          {% if pm.facebook %}<a href="https://www.facebook.com/{{pm.facebook}}">facebook</a>{%endif%}
          {% if pm.twitter %}<a href="https://twitter.com/{{pm.twitter}}">twitter</a>{%endif%}
          {% if pm.web %}<a href="{{pm.web}}">website</a>{%endif%}
          {% if pm.github %}<a href="https://github.com/{{pm.github}}">github</a>{%endif%}
        </div>
        <h4>こんな人・こんな提案を待っています</h4>
        <p>{{pm.interested}}</p>
        <h4>略歴</h4>
        <p>{{pm.bio}}</p>
      </div>
    {% endfor %}
  </div>
</section>
<section id="faq">
  <h2>よくある質問</h2>
  <div class="qanda">
    {% for faq in site.data.faq %}
    <div class="qanda-one">
      <input type="checkbox" id="faq_{{faq.q}}">
      <label for="faq_{{faq.q}}">{{faq.q}}</label>
      <p class="qanda-a">{{faq.a}}</p>
    </div>
    {% endfor %}
  </div>
</section>
<section id="contact">
  <h2>コンタクト</h2>
  <p>お返事が遅くなる場合もありますが、ご了承ください。<br>チラシの配布にご協力頂ける方は、<a href="https://goo.gl/forms/LbmaEz1kNrN1WFgt2">こちらのフォーム</a>より請求をお願いいたします。</p>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  <a href="/privacy-policy.html">プライバシーポリシー</a>
</section>
