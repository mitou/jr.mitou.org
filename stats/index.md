---
layout: post
title: 統計情報
---

<style type="text/css">
@import '/assets/css/highcharts.css';

#container {
  height: 400px;
  max-width: 800px;
  margin: 0 auto;
}

/* Link the series colors to axis colors */
.highcharts-color-0 {
  fill: #7cb5ec;
  stroke: #7cb5ec;
}
.highcharts-axis.highcharts-color-0 .highcharts-axis-line {
  stroke: #7cb5ec;
}
.highcharts-axis.highcharts-color-0 text {
  fill: #7cb5ec;
}
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

.highcharts-yaxis .highcharts-axis-line {
  stroke-width: 2px;
}
</style>

<script src="./highcharts.js"></script>
<!-- NOTE: Use this for expoting image files
     <script src="./exporting.js"></script>
-->

<p style="text-align:center; padding: 50px 0px 0px;">
  2016年から始まった未踏ジュニアの統計情報です。未踏ジュニアへのスポンサーを検討されている方々にとってご参考になれば幸いです。
</p>

## 応募数の推移

### 推移グラフ

<div id="container"></div>
<script type="text/javascript">
Highcharts.chart('container', {
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
       text: '応募数'
     }
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
	 [Date.parse('2019'), 127]
       ]
     },
     {
       name: '採択数',
       data: [
	 [Date.parse('2016'), 4],
	 [Date.parse('2017'), 11],
	 [Date.parse('2018'), 12],
	 [Date.parse('2019'), 13]
       ]
     }
   ]
});
</script>


{% for stat in site.data.stats %}
<h3>{{ stat.year }} 年度</h3>
<ul>
  {% comment %}
  <!-- You can manually check data like this -->
  <li>プロジェクト数: {{ site.data.projects | where_exp: 'pj', 'pj.year == stat.year' | size }}</li>
  <li>クリエーター数: {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year' | size }}</li>
  <li>スパクリ認定数: {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year and cr.is_spc == true' | size }}</li>
  {% endcomment %}

  <li>応募数: {{ stat.applications    }} 件</li>
  <li>採択数: {{ stat.projects        }} 件</li>
  <li>採択率: {{ stat.acceptance_rate }} 倍</li>
</ul>
{% endfor %}

## お問い合わせ

<div class='text-center' style="margin-top: 50px;">
    <div class="sponsors-text-for-inquiry">
      <p>未踏ジュニア実行委員会では、未踏ジュニアの継続的な活動を支援して頂けるスポンサー様を随時募集しております。興味を持って頂いた法人・個人の方は <a href="mailto:jr@mitou.org"><i>jr@mitou.org</i></a> までご連絡頂けると幸いです。</p>
    </div>

  <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>

  <p>まずはお気軽にご連絡していただけると幸いです。</p>

  <a href="mailto:jr@mitou.org" class="button">メールを送る</a>
</div>


