---
layout: english
lang: en
---

<br>

## [<i class="fa-light fa-mountain"></i>](#about) What's Mitou Junior? {#about}

Mitou Junior is a half-year-long program to enhance young innovative creators in Japan. This program, initiated by the [Mitou Foundation](https://www.mitou.org/) in 2016 and originating from the government-backed [MITOU Program](https://www.ipa.go.jp/en/about/it-talents/mitou.html), has received support from various companies and organizations since its inception. With that support we offer the following benefits.

<br>


### [<i class="fas fa-graduation-cap green"></i>](#supports-mentoring) Mentoring {#supports-mentoring}

Creators will be able to learn from mentors and other [MITOU Program](https://www.ipa.go.jp/en/about/it-talents/mitou.html) graduates, like professors and tech founders, who are at the forefront of technology.

<div class="youtube" itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
  <meta itemprop="isFamilyFriendly"     content="True">
  <meta itemprop="requiresSubscription" content="False">
  <meta itemprop="width"                content="1280">
  <meta itemprop="height"               content="720">
  <meta itemprop="thumbnailUrl"         content="https://i.gyazo.com/c154c247c3056509f102d10b0daec7c8.jpg">
  <meta itemprop="uploadDate"           content="2019-12-11">
  <meta itemprop="contentUrl"           content="https://youtube.googleapis.com/v/qcMk-CLo21c">
  <meta itemprop="embedUrl"             content="https://www.youtube.com/embed/qcMk-CLo21c?rel=0">
  <meta itemprop="name"                 content="What is Mitou Junior program?">
  <meta itemprop="description"          content="Mitou Junior is a half-year-long program to enhance young innovative creators in Japan. This program, initiated by the Mitou Foundation in 2016 and originating from the government-backed MITOU Program, has received support from various companies and organizations since its inception. With that support we offer the following benefits.">
  <iframe width="100%" src="https://www.youtube.com/embed/qcMk-CLo21c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<a href="https://www.youtube.com/watch?v=qcMk-CLo21c" class="button">Watch on YouTube</a>

<br>


### [<i class="fas fa-badge-dollar green"></i>](#supports-development) Financial Support {#supports-development}
  
Each group will be eligible to receive up to [500K Yen](https://www.google.com/search?q=500,000+Yen+to+USD) as funding for development.

<img src="/assets/img/spinner.svg" data-src="/assets/img/about_development.webp"
 title="Support developing projects at CASE Shinjuku." class="top-img lazyload" loading="lazy"
 alt="Support developing projects at CASE Shinjuku." >
<br><br>


### [<i class="fas fa-gear green"></i>](#supports-expenses) Place to develop {#supports-expenses}

If necessary, places to develop will be provided. And transportation and accommodation expenses for participating in events like [Maker Faire Tokyo](https://makezine.jp/event/mft2023/en/) will also be covered.

<img src="/assets/img/spinner.svg" data-src="/assets/img/about_expenses.webp"
 title="Booth exhibition at Maker Faire Tokyo 2023." class="top-img lazyload" loading="lazy"
 alt="Booth exhibition at Maker Faire Tokyo 2023.">
<br><br>


### [<i class="fas fa-link green"></i>](#supports-awarding) Award outstanding performance {#supports-awarding}

Creators who have shown their outstanding performance during Mitou Junior program get an outstanding performance award. The award is highly recognized for Admissions Office of several universities, including [Keio University SFC](https://www.sfc.keio.ac.jp/en/), [Kindai University](https://www.kindai.ac.jp/english/) and [Tokyo Metropolitan University](https://www.tmu.ac.jp/english/index.html).

<img src="/assets/img/spinner.svg" data-src="/assets/img/about_awarding.webp"
 title="Award ceremony for graduates of the MITOU Junior program at The University of Tokyo." class="top-img lazyload" loading="lazy"
 alt="Award ceremony for graduates of the MITOU Junior program at The University of Tokyo.">
<br><br>

{% assign total_applications = 0 %}
{% assign total_projects = 0 %}
{% assign total_creators = 0 %}
{% for stat in site.data.stats %}
{% assign total_applications = total_applications | plus: stat.applications %}
{% assign total_projects     = total_projects     | plus: stat.projects %}
{% assign total_creators     = total_creators     | plus: stat.creators %}
{% endfor %}


## [<i class="fa-light fa-newspaper"></i>](#mdia) Media & Awards {#media}

Our alumni are creating new values after the program as well. Here are a few examples.

<ul class="list-none media-list">
  <li>
    <span class="media-pc-date pc-inline-b">CES 2023&nbsp;</span>
    <a href="https://www.ces.tech/innovation-awards/honorees/2023/honorees/c/contact-glove.aspx" target="_blank" rel="noopener">
      INNOVATION AWARD PRODUCT - Contact Glove By Diver-X
    </a>
  </li>
  <li>
    <span class="media-pc-date pc-inline-b">TEDxAnjo</span>
    <a href="https://tedxanjo.com/akarikawaguchi/" target="_blank" rel="noopener">
      Speakers - Akari Kawaguchi
    </a>
  </li>
  <li>
    <span class="media-pc-date pc-inline-b">J-MEDIA ARTS</span>
    <a href="https://j-mediaarts.jp/en/award/single/vr-sandbox/" target="_blank" rel="noopener">
      25th Entertainment Division U-18 Award - VR Sandbox
    </a>
  </li>
  <li>
    <span class="media-pc-date pc-inline-b">CBS News</span>
    <a href="https://www.cbsnews.com/news/coronavirus-teens-tracking-app-different-approach-data-privacy-covid-tracing-japan-asiato/" target="_blank" rel="noopener">
      Teen's tracking app takes a different approach to the coronavirus challenge
    </a>
  </li>
  <li>
    <span class="media-pc-date pc-inline-b">SXSW EDU</span>
    <a href="https://www.youtube.com/watch?v=EZvmIcmtWoE" target="_blank" rel="noopener">
      Toubans! pitch at SXSW 2019 (YouTube)
    </a>
  </li>
</ul>


## [<i class="fa-light fa-books"></i>](#showcase) Projects Showcase {#showcase}

Up to now <strong>{{ total_applications }} applications</strong> are submitted to our Mitou Junior program, and we support <strong>{{ total_projects }} projects</strong> and <strong>{{ total_creators }} creators</strong>. ([Acceptance rate: 10-13%](/english/stats))

Example projects, accepted and boosted by our program, are as follows.

<div class="project-showcase-list">
  <a href='https://github.com/visible/visible' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/visible.webp" alt="Visible - Web Accessibility Validate & Fix" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://www.youtube.com/watch?v=MePIVH21RZM' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/spaghetian.webp" alt="Spaghetian - 4-bit CPU of Electromagnet" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://detexploit.org/' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/detexploit.webp" alt="abecobe - Puzzle game using two blocks" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://keidaroo.github.io/keidaroo_pages/links/abecobe/' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/abecobe.webp" alt="abecobe - Puzzle game using two blocks" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://anjuart.com/en/' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/flight-fit-vr.webp" alt="Flight Fit -VR-" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://vamboo.net/' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/vamboo.webp" alt="vamboo - A visual programming language to create GUI application in functional and reactive way." class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://github.com/Vreath-core' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/vreath.webp" alt="Vreath - A New Consensus Algorithm Makes CryptoCurrency Easily Available" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://sites.google.com/view/toubans-en' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/toubans.webp" alt="Toubans! - The easy-to-use duty-management chatbot" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://hato.nyiyui.ca/README-en.html' class="project-showcase project-one" target="_blank" rel='noopener'>
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/hato.webp" alt="Hopefully Automatic Train Operation (HATO): Immersive Automatic Model Train Control System" class="project-img lazyload" loading="lazy" />
  </a>
</div>

<div class='flex'>
  <a href="/english/stats" class="button">Check statistics</a>
  <a href="/final" class="button">Check the latest projects (in Japanese)</a>
</div>


## [<i class="fa-light fa-hand-holding-heart"></i>](#supporters) Sponsors & Supporters {#supporters}

Mitou Junior program has 10+ financial and in-kind sponsors. Also we have 10+ supporters, including MEXT ([Ministry of Education, Culture, Sports, Science and Technology](https://www.mext.go.jp/en/)) and METI ([Ministry of Economy, Trade and Industry](https://www.meti.go.jp/english/)).
