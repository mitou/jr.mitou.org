---
layout: post
title: メンター紹介
---

## 2020年度メンター陣

<p class="text-center" style="margin-bottom: 50px;">メンター紹介ページです。過去のメンターは<a href="/alumni">コチラ</a>。

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% if mentor.is_alumni %} {% continue %} {% endif %}
    <div class="mentor" id="{{ mentor.id }}">
      <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/{{ mentor.img }}" alt="{{ mentor.name.last }} {{ mentor.name.first }}" class="mentor-img lazyload" loading='lazy'>
      <div class="mentor-info">
        <h3 class="mentor-name">{{ mentor.name.last }} {{ mentor.name.first }}</h3>
        <p>{{ mentor.affiliation }}</p>

        <div class="mentor-sns">
          {% if mentor.facebook %}<a href="https://www.facebook.com/{{ mentor.facebook }}"><i class="fab fa-facebook-square green"></i></a>{% endif %}
          {% if mentor.twitter %}<a href="https://twitter.com/{{ mentor.twitter }}"><i class="fab fa-twitter-square green"></i></a>{%endif%}
          {% if mentor.web %}<a href="{{ mentor.web }}"><i class="fas fa-globe green"></i></a>{% endif %}
          {% if mentor.github %}<a href="https://github.com/{{ mentor.github }}"><i class="fab fa-github-square green"></i></a>{% endif %}
          <a href="https://scrapbox.io/mitou-meikan/{{ mentor.name.last }}_{{ mentor.name.first }}"><img class="icon-mitou-meikan" src="/assets/img/mitou_meikan.png" alt="未踏名鑑" /></a>
        </div>
      </div>

      <div class="mentor-comment text-left">
        <h4>こんな人・こんな提案を待っています</h4>
        <p>{{ mentor.interested }}</p>

	<h4>これまでの採択プロジェクト</h4>
	<ul>
	  {% assign projects = site.data.projects | where: 'mentor_id', mentor.id %}
	  {% for pj in projects %}
	    <li><a href="/projects/{{ pj.year }}#{{ pj.id }}">{{ pj.title }}</a></li>
	  {% else %}
	    <li>🆕 今年度より採択開始!</li>
	  {% endfor %}
	</ul>

        <h4>略歴</h4>
        <p>{{ mentor.bio }}</p>
      </div>
    </div>
  {% endfor %}
</div>

<h2>スーパーバイザー</h2>


<div class="sv">
  <div class="sv-left">
    <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/takeuchi.png" alt="竹内 郁雄" class="sv-img lazyload" loading="lazy">
    <h3 class="mentor-name">竹内 郁雄</h3>
    <h5>東京大学名誉教授／未踏IT人材発掘・育成事業統括PM／一般社団法人未踏代表理事</h5>
  </div>

  <div class="sv-right text-left">
    <h5>略歴</h5>
    <p>1946年、富山県生まれ。1971年にNTT研究所に入所して以来、人工知能をかじったりしていたが、プログラミング言語、中でもLispとその処理系の開発にはまってしまい、通常のプログラミング言語には不自由な人となってしまった。しかし、そのせいか、プログラミング以外のことにもいろいろ首を突っ込むことになってしまった。NTT研究所のあとは、電気通信大学、東京大学、早稲田大学の教授を歴任。</p>

    <h5>メッセージ</h5>
    <p>未踏事業は2000年に始まってから、どんどん若い人たちを対象にするようにシフトしてきました。ITはもう大人の独占物ではありません。超若いうちからITのセンスを見出して伸ばすことが大事だと思います。そのためには大人と同じ土俵ではなく、むしろ未踏ジュニアというような枠組みの中で伸び伸びと羽を広げていけるようにするのが、ジュニア世代の本当の成長につながると思います。未踏ジュニアでは、ジュニア世代が「教わる」のではなく、良い環境の中でITの才能を自ら発芽・成長させていくことを期待しています。</p>
  </div>
</div>


<h2>運営チーム</h2>

<div class="flex">
  <div class="mentor">
    <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/arakawa.png" alt="荒川 淳平" class="mentor-img lazyload" loading="lazy">
    <div class="mentor-info" style="padding-bottom: 20px;">
      <h3 class="mentor-name">荒川 淳平</h3>
      <div class="mentor-sns">
        <a href="https://www.facebook.com/jumpei.arakawa"><i class="fab fa-facebook-square green"></i></a>
        <a href="https://scrapbox.io/mitou-meikan/荒川_淳平"><img class="icon-mitou-meikan" src="/assets/img/mitou_meikan.png" alt="未踏名鑑" /></a>
      </div>
    </div>
    <div class="mentor-comment text-left">
      <h4>略歴</h4>
      <p>東京大学大学院にてファイルシステムの仮想化に関する研究開発に取り組み、2006年度スーパークリエータに認定される。現在は株式会社インフォクラフト／IzumoBASE株式会社で代表取締役、一般社団法人未踏で理事を務める。</p>
      <h4>一言</h4>
      <p>アイデアと技術を武器に突き抜けましょう！</p>
    </div>
  </div>

  <div class="mentor">
      <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/ukai.png" alt="鵜飼 佑" class="mentor-img lazyload" loading="lazy">
    <div class="mentor-info" style="padding-bottom: 20px;">
      <h3 class="mentor-name">鵜飼 佑</h3>
      <div class="mentor-sns">
        <a href="https://www.facebook.com/ukai.yu"><i class="fab fa-facebook-square green"></i></a>
      	<a href="https://twitter.com/ukkaripon"><i class="fab fa-twitter-square green"></i></a>
        <a href="https://scrapbox.io/mitou-meikan/鵜飼_佑"><img class="icon-mitou-meikan" src="/assets/img/mitou_meikan.png" alt="未踏名鑑" /></a>
      </div>
    </div>
    <div class="mentor-comment text-left">
      <h4>略歴</h4>
      <p>メンターも兼任しています。詳細は<a href="/mentors#ukai_yuu">メンター欄</a>を参照。</p>
    </div>
  </div>
</div>
