---
layout: post
title: 統計情報
description: 未踏ジュニアの応募数や採択数、倍率の推移を年度別にまとめたページです。応募またはスポンサーを検討されている方々のご参考になれば幸いです。
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

<script src="/assets/js/highcharts.js"></script>
<!-- NOTE: Use this for expoting image files.
<script src="/assets/js/exporting.js"></script>
-->

<p style='margin-top: 50px;'>未踏ジュニアの統計情報です。<a href='/guideline'>応募</a>または<a href='/#sponsors'>スポンサー</a>を検討されている方々のご参考になれば幸いです。</p>

<center><small>（ <i class="fas fa-mouse-pointer green"></i> カーソルまたはタップで数値が見れます）</small></center>

<h2 style="margin-bottom: 60px;">応募数の推移</h2>
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
	 [Date.parse('2016'), 15],
	 [Date.parse('2017'), 41],
	 [Date.parse('2018'), 105],
	 [Date.parse('2019'), 127],
	 [Date.parse('2020'), 115],
	 [Date.parse('2021'), 123]
       ]
     }
   ]
});
</script>

<h2 style="margin-bottom: 60px;">採択数の推移</h2>
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
	 [Date.parse('2016'),  3],
	 [Date.parse('2017'), 11],
	 [Date.parse('2018'), 12],
	 [Date.parse('2019'), 13],
	 [Date.parse('2020'), 15],
	 [Date.parse('2021'), 14]
       ]
     }
   ]
});
</script>


<h2 style="margin-bottom: 60px;">倍率の推移</h2>
<div id="chances"></div>
<script type="text/javascript">
Highcharts.chart('chances', {
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
	 [Date.parse('2016'), 5.0],
	 [Date.parse('2017'), 3.73],
	 [Date.parse('2018'), 8.75],
	 [Date.parse('2019'), 9.77],
	 [Date.parse('2020'), 7.67],
	 [Date.parse('2021'), 8.79]
       ]
     }
   ]
});
</script>


{% for stat in site.data.stats %}
<h3>
  {% if stat.creators %}
  <a href="/projects/{{ stat.year }}" style="font-weight: bold;">{{ stat.year }} 年度</a>
  {% else %}
  {{ stat.year }} 年度
  {% endif %}
</h3>
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
修了したクリエータ数は {{ stat.creators }} 名でした。なお、スーパークリエータ認定制度は2017年度から始まったため、{{ stat.year }}年度のデータはありません。
{% elsif stat.creators and stat.spc %}
修了したクリエータ数は {{ stat.creators }} 名、そのうち {{ stat.spc }} 名をスーパークリエータと認定しました。
{% else %}
修了したクリエータ数およびスーパークリエータ認定数は後日発表されます。
{% endif %}

{% endfor %}

## お問い合わせ

<div style="margin-top: 50px;">
  <p>未踏ジュニアでは、活動をご支援して頂けるスポンサーを募集しております。まずはお気軽にご連絡ください。</p>

  <div class='text-center' style='margin-top: 30px;'>
    <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
    <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  </div>

  <a href="mailto:jr@mitou.org" class="button">メールを送る</a>
</div>
