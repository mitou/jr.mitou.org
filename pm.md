---
layout: post
title: プロジェクト・マネージャー紹介
---

<div class="pms flex">
  {% for pm in site.data.pm %}
    <div class="pm" id="{{ pm.name }}">
      <img src="/assets/img/pm/{{ pm.img }}" alt="{{ pm.name }}" class="pm-img">
      <div class="pm-info">
        <h3 class="pm-name">{{ pm.name }}</h3>
        <p>{{ pm.affiliation }}</p>
        <div class="pm-sns">
          {% if pm.facebook %}<a href="https://www.facebook.com/{{ pm.facebook }}"><i class="fab fa-facebook-square green"></i></a>{% endif %}
          {% if pm.twitter %}<a href="https://twitter.com/{{pm.twitter}}"><i class="fab fa-twitter-square green"></i></a>{%endif%}
          {% if pm.web %}<a href="{{pm.web}}"><i class="fas fa-globe green"></i></a>{% endif %}
          {% if pm.github %}<a href="https://github.com/{{pm.github}}"><i class="fab fa-github-square green"></i></a>{% endif %}
        </div>
      </div>

      <div class="pm-comment text-left">
        <h4>こんな人・こんな提案を待っています</h4>
        <p>{{ pm.interested }}</p>

        <h4>略歴</h4>
        <p>{{ pm.bio }}</p>
      </div>
    </div>
  {% endfor %}
</div>

<h2>スーパーバイザー</h2>
<div style="overflow:hidden;">
<div class="sv-left">
  <img src="/assets/img/pm/takeuchi.png" alt="竹内 郁雄" class="sv-img">
  <h3 class="pm-name">竹内 郁雄</h3>
  <h5>東京大学名誉教授／未踏IT人材発掘・育成事業統括PM／一般社団法人未踏代表理事</h5>
</div>

<div class="sv-right text-left">
  <h5>略歴</h5>
  <p>1946年、富山県生まれ。1971年にNTT研究所に入所して以来、人工知能をかじったりしていたが、プログラミング言語、中でもLispとその処理系の開発にはまってしまい、通常のプログラミング言語には不自由な人となってしまった。しかし、そのせいか、プログラミング以外のことにもいろいろ首を突っ込むことになってしまった。NTT研究所のあとは、電気通信大学、東京大学、早稲田大学の教授を歴任。</p>

  <h5>メッセージ</h5>
  <p>未踏事業は2000年に始まってから、どんどん若い人たちを対象にするようにシフトしてきました。ITはもう大人の独占物ではありません。超若いうちからITのセンスを見出して伸ばすことが大事だと思います。そのためには大人と同じ土俵ではなく、むしろ未踏ジュニアというような枠組みの中で伸び伸びと羽を広げていけるようにするのが、ジュニア世代の本当の成長につながると思います。未踏ジュニアでは、ジュニア世代が「教わる」のではなく、良い環境の中でITの才能を自ら発芽・成長させていくことを期待しています。</p>
</div>
</div>

<h2>運営委員</h2>
<div class="flex">
  <div class="pm">
    <img src="/assets/img/pm/arakawa.png" alt="荒川 淳平" class="pm-img">
    <div class="pm-info">
      <h3 class="pm-name">荒川 淳平</h3>
      <div class="pm-sns">
        <a href="https://www.facebook.com/jumpei.arakawa"><i class="fab fa-facebook-square green"></i></a>
      </div>
    </div>
    <div class="pm-comment text-left">
      <h4>略歴</h4>
      <p>東京大学大学院にてファイルシステムの仮想化に関する研究開発に取り組み、2006年度スーパークリエータに認定される。現在は株式会社インフォクラフト／IzumoBASE株式会社で代表取締役、一般社団法人未踏で理事を務める。</p>
      <h4>一言</h4>
      <p>アイデアと技術を武器に突き抜けましょう！</p>
    </div>
  </div>

  <div class="pm">
      <img src="/assets/img/pm/ukai.png" alt="鵜飼 佑" class="pm-img">
    <div class="pm-info">
      <h3 class="pm-name">鵜飼 佑</h3>
    </div>
    <div class="pm-comment text-left">
      <p>PMも兼任しているので、<a href="/pm#鵜飼%20佑">こちら</a>を参照。</p>
    </div>
  </div>
</div>
