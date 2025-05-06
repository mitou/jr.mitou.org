---
layout: post
title: 統計情報
description: 未踏ジュニアの応募数や採択数、倍率を年度別にまとめたページです。{{ site.data.stats[0].year }}年度の応募数は{{ site.data.stats[0].applications }}件、採択数は{{ site.data.stats[0].projects }}件、倍率は{{ site.data.stats[0].competition_rate }}倍でした。
thumbnail: /assets/img/stats.webp
---

<style type="text/css">
@import '/assets/css/highcharts.css';

#container {
  height: 400px;
  max-width: 800px;
  margin: 0 auto;
 }

 @media screen and (max-width: 800px) {
   #container {
     width: 98vw;
     margin-left: calc(-49vw + 50%);
   }
 }


/* For series of 応募数 */
.highcharts-color-0 {
  fill: rgb(40, 161, 58);
  stroke: rgb(40, 161, 58);
}
.highcharts-point {
  fill: rgb(40, 161, 58);
}
.highcharts-axis-labels {
  fill: #000000;
 }
.highcharts-axis-line {
  stroke: rgb(40, 161, 58);
}

/* For another series (Not using for now) */
.highcharts-color-1 {
  fill: #90ed7d;
  stroke: #90ed7d;
}
.highcharts-axis.highcharts-color-1 .highcharts-axis-line {
  stroke: #90ed7d;
}
.highcharts-axis.highcharts-color-1 text {
  fill: #90ed7d;
}

.highcharts-axis-line {
  stroke-width: 2px;
}
.highcharts-yaxis {
  stroke-width: 0px;
}
</style>

<script src="https://code.highcharts.com/highcharts.js"></script>


{% assign current_stat = site.data.stats[0] %}
<p style='margin-top: 50px;'>
  未踏ジュニアの応募数や採択数、倍率を年度別にまとめたページです。{{ current_stat.year }}年度の応募数は{{ current_stat.applications }}件、採択数は{{ current_stat.projects }}件、倍率は{{ current_stat.competition_rate }}倍でした。
</p>

<center><small>（ <i class="fas fa-mouse-pointer green"></i> カーソルまたはタップで数値が見れます）</small></center>


<h2 id='apply' style="margin-bottom: 60px;">
  <a href='#apply'><i class="fa-light fa-mailbox"></i></a>
  応募数の推移
</h2>

<div id="applications"></div>
<script type="text/javascript">
Highcharts.chart('applications', {
   chart: {
     type: 'column',
     styledMode: true
   },

   title: {
     text: ''
   },

   yAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     labels: {
       enabled: false,
     },
   }],
   xAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     type: 'datetime',
     labels: {
       format: '{value:%Y}',
     },
     tickInterval: Date.UTC(2016, 0, 1) - Date.UTC(2015, 0, 1)
   }],

   plotOptions: {
     column: {
       borderRadius: 5
     }
   },

   series: [
     {
       name: '応募数',
       data: [
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.applications }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
       ]
     }
   ]
});
</script>


<h2 id='support' style="margin-bottom: 60px;">
  <a href='#support'><i class="fa-light fa-hand-holding-heart"></i></a>
  採択数の推移
</h2>

<div id="selections"></div>
<script type="text/javascript">
Highcharts.chart('selections', {
   chart: {
     type: 'column',
     styledMode: true
   },

   title: {
     text: ''
   },

   yAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     labels: {
       enabled: false,
     },
   }],
   xAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     type: 'datetime',
     labels: {
       format: '{value:%Y}',
     },
     tickInterval: Date.UTC(2016, 0, 1) - Date.UTC(2015, 0, 1)
   }],

   plotOptions: {
     column: {
       borderRadius: 5
     }
   },

   series: [
     {
       name: '採択数',
       data: [
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.projects }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
       ]
     }
   ]
});
</script>


<h2 id='rate' style="margin-bottom: 60px;">
  <a href='#rate'><i class="fa-light fa-badge-check"></i></a>
  倍率の推移
</h2>

<div id="rates"></div>
<script type="text/javascript">
Highcharts.chart('rates', {
   chart: {
     type: 'line',
     styledMode: true
   },

   title: {
     text: ''
   },

   yAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     labels: {
       enabled: false,
     },
   }],
   xAxis: [{
     className: 'highcharts-color-0',
     title: {
       text: ''
     },
     type: 'datetime',
     labels: {
       format: '{value:%Y}',
     },
     tickInterval: Date.UTC(2016, 0, 1) - Date.UTC(2015, 0, 1)
   }],

   plotOptions: {
     column: {
       borderRadius: 5
     }
   },

   series: [
     {
       name: '倍率',
       data: [
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.competition_rate }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
       ]
     }
   ]
});
</script>


<!-- 累計の統計情報 -->
## [<i class="fa-light fa-users-medical"></i>](#total) 累計データ {#total}
<p style='margin-top: 50px;'>
  2016年度から{{ current_stat.year }}年度までの累計データは以下のとおりです。
  {% assign total_applications = 0 %}
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% assign total_spcs  = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_applications = total_applications | plus: stat.applications %}
    {% assign total_projects     = total_projects     | plus: stat.projects     %}
    {% assign total_creators     = total_creators     | plus: stat.creators     %}
  {% endfor %}
  <ul>
    <li>これまでの累計応募件数: {{ total_applications }} 件</li>
    <li>採択したプロジェクト数: {{ total_projects     }} 件</li>
    <li>採択したクリエータ人数: {{ total_creators     }} 名</li>
  </ul>
</p>

<a href="/projects/showcase" class="button">採択プロジェクトを見る</a>


<!-- 年次の統計情報 -->
## [<i class="fa-light fa-chart-user"></i>](#annual) 年次データ {#annual}
<p style='margin-top: 50px;'>
  2016年度から{{ current_stat.year }}年度までの年次データは以下のとおりです。
</p>

<div class="projects">
{% for stat in site.data.stats %}
  <a href="#{{ stat.year }}">
    <h3 id='{{ stat.year }}' style='margin-top: 70px;'>
      {{ stat.year }} 年度
    </h3>
  </a>

  <ul>
    {% comment %}
    <!-- NOTE: Check if manual stats data are exactly matched with calcularated ones by uncommentting. -->
    <li>stat.projects : data.projects = {{ stat.projects }} : {{ site.data.projects | where_exp: 'pj', 'pj.year == stat.year' | size }}</li>
    <li>stat.creators : data.creators = {{ stat.creators }} : {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year' | size }}</li>
    <li>stat.spc : data.creators.is_spc = {{ stat.spc }} : {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year and cr.is_spc == true' | size }}</li>
    {% endcomment %}

    <li>応募件数: {{ stat.applications    }} 件</li>
    <li>採択件数: {{ stat.projects        }} 件</li>
    <li>採択倍率: {{ stat.competition_rate }} 倍</li>
  </ul>

  {% if stat.year == 2016 %}
  修了したクリエータ数は {{ stat.creators }} 名です。なお、<a href='/about#supports-awarding'>スーパークリエータ認定</a>は2017年度から始まったため、{{ stat.year }}年度のデータはありません。
  {% elsif stat.creators and stat.spc %}
  修了したクリエータ数は {{ stat.creators }} 名、そのうち {{ stat.spc }} 名をスーパークリエータと認定しました。（認定率: {{ stat.spc_rate }}%）
  {% elsif stat.creators %}
  修了したクリエータ数は {{ stat.creators }} 名です。スーパークリエータの認定は後日発表されます。
  {% else %}
  修了したクリエータ数およびスーパークリエータ認定数は後日発表されます。
  {% endif %}

  <!-- NOTE: 最新年度の採択プロジェクト公開前は、統計情報のみ表示する -->
  {% if stat.creators %}
  <a href="/projects/{{ stat.year }}" class="button">{{ stat.year}}年度の採択を見る</a>
  {% else %}
  <div class="tips">{{ stat.year }} 年度の採択プロジェクトは10月ごろに公開される予定です。</div>
  {% endif %}
{% endfor %}

</div>


## [<i class="fa-light fa-book"></i>](#references) 他の統計情報 {#references}

IPA が運営する[25歳未満を対象とした未踏事業](/opportunities#ipa-mitou)や、[年齢制限の無い未踏アドバンスト事業](/opportunities#ipa-mitou-advanced)の統計情報については以下のページからご確認いただけます。

<a href="https://scrapbox.io/mitou-meikan/統計情報" class="button">
  IPA 未踏の統計情報を見る
  <!--<small><i class="fa-solid fa-up-right-from-square"></i></small>-->
</a>


## [<i class="fa-light fa-envelope"></i>](#contact) 問い合わせ {#contact}

<div style="margin-top: 50px;">
  <p>未踏ジュニアでは、活動をご支援して頂けるスポンサーを募集しております。まずはお気軽にご連絡ください。</p>

  <div class='text-center' style='margin-top: 30px;'>
    <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
    <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  </div>

  <a href="mailto:jr@mitou.org" class="button">メールを送る</a>
</div>

