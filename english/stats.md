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

<p style='margin-top: 50px;'>This page shows the stats of Mitou Junior, which includes the number of applications, selected projects, and its acceptance rate. Feel free to use and share these information.</p>

<center><small>( <i class="fas fa-mouse-pointer green"></i> Place the cursor or tap to check the number.)</small></center>

<a href="/english" class="button">Back to top</a>

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
       name: 'Number of applications submitted',
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

<h2 style="margin-bottom: 60px;">Selected Projects</h2>
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
       name: 'Number of projects selected',
       data: [
	 [Date.parse('2016'),  4],
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


<h2 style="margin-bottom: 60px;">Acceptance Rate</h2>
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
       name: 'Acceptance Rate (%)',
       data: [
	 [Date.parse('2016'), 20.0],
	 [Date.parse('2017'), 26.8],
	 [Date.parse('2018'), 11.4],
	 [Date.parse('2019'), 10.2],
	 [Date.parse('2020'), 13.0],
	 [Date.parse('2021'), 11.4]
       ]
     }
   ]
});
</script>


{% for stat in site.data.stats %}
<h3>
  {% if stat.creators %}
  <a href="/projects/{{ stat.year }}" style="font-weight: bold;">{{ stat.year }}</a>
  {% else %}
  {{ stat.year }}
  {% endif %}
</h3>
<ul>
  <li><b>{{ stat.applications    }} applications</b> were submitted.</li>
  <li><b>{{ stat.projects        }} projects</b> were selected.</li>
  <li><b>{{ stat.acceptance_rate }}%</b> is the acceptance rate.</li>
</ul>

{% if stat.year == 2016 %}
<b>{{ stat.creators }} creators</b> joined in the Mitou Junior program in {{ stat.year }}. Outstanding performace award started since 2017, so N/A this year.
{% elsif stat.creators and stat.spc %}
<b>{{ stat.creators }} creators</b> joined in the Mitou Junior program in {{ stat.year }}. <b>{{ stat.spc }} in {{ stat.creators }} creators ({{ stat.spc_rate }} %)</b> received an outstanding performance award this year.
{% else %}
Mitou Junior program in {{ stat.year }} is now in progress. Number of creators and who received outstanding performance award will be published by late this year or early next year.
{% endif %}

{% endfor %}

## Contact

<div style="margin-top: 50px;">
  <p>Let us know if you have any questions or interests to the Mitou Junior program.</p>

  <div class='text-center' style='margin-top: 30px;'>
    <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
    <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  </div>
</div>
