---
layout: post
title: メンター紹介
description: クリエータを支援する人達（メンター）の紹介ページです。
redirect_from: /mentors.html
---


## [<i class="fa-duotone fa-users"></i>](#message) メンター紹介・応募者向けメッセージ {#message}

未踏ジュニアのメンターと、メンターから応募者へのメッセージを紹介するページです。メンター毎に採択したいプロジェクトが異なるので、応募時のご参考になれば嬉しいです。

<br>

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% unless mentor.is_alumni %}
      {% include mentor.html mentor=mentor %}
    {% endunless %}
  {% endfor %}
</div>


## スーパーバイザー {#supervisor}

<div class="sv">
  <div class="sv-left">
    <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/takeuchi.webp" alt="竹内 郁雄" class="sv-img lazyload" loading="lazy">
    <h3 class="mentor-name">竹内 郁雄</h3>
    <h5>東京大学名誉教授／未踏IT人材発掘・育成事業統括PM／一般社団法人未踏代表理事</h5>
  </div>

  <div class="sv-right text-left">
    <h5>略歴</h5>
    <p>1946年、富山県生まれ。1971年にNTT研究所に入所して以来、人工知能をかじったりしていたが、プログラミング言語、中でもLispとその処理系の開発にはまってしまい、通常のプログラミング言語には不自由な人となってしまった。しかし、そのせいか、プログラミング以外のことにもいろいろ首を突っ込むことになってしまった。NTT研究所のあとは、電気通信大学、東京大学、早稲田大学の教授を歴任。</p>

    <h5>メッセージ</h5>
    <p>未踏事業は2000年に始まってから、どんどん若い人たちを対象にするようにシフトしてきました。ITはもう大人の独占物ではありません。超若いうちからITのセンスを見出して伸ばすことが大事だと思います。そのためには大人と同じ土俵ではなく、むしろ未踏ジュニアというような枠組みの中で伸び伸びと羽を広げていけるようにするのが、ジュニア世代の本当の成長につながると思います。未踏ジュニアでは、ジュニア世代が「教わる」のではなく、良い環境の中でITの才能を自ら発芽・成長させていくことを期待しています。</p>

    <a class="button" href="https://www.youtube.com/watch?v=SSsyV9O__GU&list=PLNObH2jlC6leiUTypiJYO2zUcwBg7M0Bg" target="_blank" rel="noopener">メッセージ動画を見る</a>
  </div>
</div>


## 運営チーム {#organizer}

<div class="flex">
  <div class="mentor">
    <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/arakawa.webp" alt="荒川 淳平" class="mentor-img lazyload" loading="lazy">
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
      <img src='/assets/img/spinner.svg' data-src="/assets/img/mentors/ukai.webp" alt="鵜飼 佑" class="mentor-img lazyload" loading="lazy">
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
      <p>メンターも兼任しています。詳細は<a href="/mentors/#yu_ukai">メンター欄</a>を参照。</p>
    </div>
  </div>

  <a class="button" href='/mentors/alumni'>過去のメンターを見る</a>
</div>
