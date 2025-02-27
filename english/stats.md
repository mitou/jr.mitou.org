---
layout: post
title:  Stats of MITOU Junior
description: This page provides statistics on the MITOU Junior program, including the number of applications, selected projects, and acceptance rate. Feel free to use and share this information. In {{ site.data.stats[0].year }}, we received {{ site.data.stats[0].applications }} applications and supported {{ site.data.stats[0].projects }} projects, resulting in an acceptance rate of {{ site.data.stats[0].competition_rate }}%.
thumbnail: /assets/img/stats.webp
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

<script src="https://code.highcharts.com/highcharts.js"></script>

{% assign current_stat = site.data.stats[0] %}
<p style='margin-top: 50px;'>This page provides statistics on the MITOU Junior program, including the number of applications, selected projects, and acceptance rate. Feel free to use and share this information.<br><br>In {{ current_stat.year }}, we received <b>{{ current_stat.applications }} applications</b> and supported <b>{{ current_stat.projects }} projects</b>, resulting in an acceptance rate of <b>{{ current_stat.competition_rate }}%</b>.</p>

<center><small>( <i class="fas fa-mouse-pointer green"></i> Place the cursor or tap to check the number.)</small></center>

<!--<a href="/english" class="button">Back to top</a>-->

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
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.applications }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
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
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.projects }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
       ]
     }
   ]
});
</script>


<h2 style="margin-bottom: 60px;">Acceptance Rate</h2>
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
       name: 'Acceptance Rate (%)',
       data: [
	 {% for stat in site.data.stats reversed %}
	 [Date.parse('{{ stat.year }}'), {{ stat.acceptance_rate }}]{% unless forloop.last %},{% endunless %}
	 {% endfor %}
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
<b>{{ stat.creators }} creators</b> joined in the MITOU Junior program in {{ stat.year }}. Outstanding performace award started since 2017, so N/A this year.
{% elsif stat.creators and stat.spc %}
<b>{{ stat.creators }} creators</b> joined in the MITOU Junior program in {{ stat.year }}. <b>{{ stat.spc }} in {{ stat.creators }} creators ({{ stat.spc_rate }} %)</b> received an outstanding performance award this year.
{% else %}
MITOU Junior program in {{ stat.year }} is now in progress. Number of creators and who received outstanding performance award will be published by late this year or early next year.
{% endif %}

{% endfor %}


## [<i class="fa-light fa-chart-user"></i>](#total) Cumulative Data {#total}
<p style='margin-top: 50px;'>
  The cumulative data from fiscal year 2016 to {{ current_stat.year }} is as follows:
  {% assign total_applications = 0 %}
  {% assign total_projects = 0 %}
  {% assign total_creators = 0 %}
  {% assign total_spcs     = 0 %}
  {% for stat in site.data.stats %}
    {% assign total_applications = total_applications | plus: stat.applications %}
    {% assign total_projects     = total_projects     | plus: stat.projects     %}
    {% assign total_creators     = total_creators     | plus: stat.creators     %}
  {% endfor %}
  <ul>
    <li>Total applications submitted: <b>{{ total_applications }}</b></li>
    <li>Total projects selected:      <b>{{ total_projects     }}</b></li>
    <li>Total creators supported:     <b>{{ total_creators     }}</b></li>
  </ul>
</p>

<a href="/english/projects" class="button">See projects showcase</a>

## [<i class="fa-light fa-envelope"></i>](#contact) Contact {#contact}

<div style="margin-top: 50px;">
  <p>Let us know if you have any questions or interests to the MITOU Junior program.</p>

  <div class='text-center' style='margin-top: 30px;'>
    <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
    <a href="mailto:jr@mitou.org">jr@mitou.org</a>
  </div>
</div>
