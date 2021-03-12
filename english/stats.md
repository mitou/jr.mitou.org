---
layout: post
title:  Stats of Mitou Junior
lang:   en
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


/* For series of applications */
.highcharts-color-0 {
  fill:   rgb(40, 161, 58);
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

<img class='lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/stats-cover.jpg' alt='Cover Photo of Stats' width='100%' loading='lazy' />

This page shows the stats of Mitou Junior, which includes the number of applications, being matched with mentors, and its ratio. Feel free to use, share, and refer to these information.

<center><small>( <i class="fas fa-mouse-pointer green"></i> Place the cursor or tap to check the number.)</small></center>

<h2 style="margin-bottom: 60px;">Applications</h2>
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
       name: 'Number of application submitted',
       data: [
	 [Date.parse('2016'), 15],
	 [Date.parse('2017'), 41],
	 [Date.parse('2018'), 105],
	 [Date.parse('2019'), 127],
	 [Date.parse('2020'), 115]
       ]
     }
   ]
});
</script>

<h2 style="margin-bottom: 60px;">Being Matched</h2>
<div id="matches"></div>
<script type="text/javascript">
Highcharts.chart('matches', {
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
       name: 'Number of applications matched',
       data: [
	 [Date.parse('2016'),  4],
	 [Date.parse('2017'), 11],
	 [Date.parse('2018'), 12],
	 [Date.parse('2019'), 13],
	 [Date.parse('2020'), 15]
       ]
     }
   ]
});
</script>


<h2 style="margin-bottom: 60px;">Matched Ratio</h2>
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
       name: 'Ratio of Applications / Matched',
       data: [
	 [Date.parse('2016'), 3.75],
	 [Date.parse('2017'), 3.73],
	 [Date.parse('2018'), 8.75],
	 [Date.parse('2019'), 9.77],
	 [Date.parse('2020'), 7.67]
       ]
     }
   ]
});
</script>


{% for stat in site.data.stats %}
<h3><a href="/projects/{{ stat.year }}" style="font-weight: bold;">{{ stat.year }}</a></h3>
<ul>
  <li><b>{{ stat.applications }} applications</b> received this year.</li>
  <li><b>{{ stat.projects     }} projects</b> were matched with mentors.</li>
  <li>Matched Ratio: <b>{{ stat.acceptance_rate }}</b></li>
</ul>

{% if stat.year == 2016 %}
<b>{{ stat.creators }} creators</b> joined in our Mitou Junior program in {{ stat.year }}. Outstanding project award started since 2017, so N/A this year.
{% else %}
<b>{{ stat.creators }} creators</b> joined in our Mitou Junior program in {{ stat.year }}. <b>{{ stat.spc }} of them</b> awarded the outstanding project this year.
{% endif %}

{% endfor %}

## Contact

<div style="margin-top: 50px;">
  <p>We look for sponsors! Let us know if you have any questions or interets.</p>

  <div class='text-center' style='margin-top: 30px;'>
    <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
    <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  </div>
</div>
