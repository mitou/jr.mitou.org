---
layout: english
nosnippet: true
redirect_from:
  - /index_en
lang: en
latest_en_year: 2024

# latest_en_year を変更すると本ページの採択プロジェクトが切り替わります。
# 英語版の公開準備が整ったら latest_en_year の数値に変更してください。
---

## [<i class="fa-light fa-mountain"></i>](#about) What's MITOU Junior? {#about}

MITOU Junior is a half-year-long program to enhance young innovative creators in Japan. This program, initiated by the [MITOU Foundation](https://www.mitou.org/index_en.html) in 2016 and originating from the government-backed [MITOU Program](https://www.ipa.go.jp/en/about/it-talents/mitou.html), has received support from various companies and organizations since its inception. With that support we offer the following benefits.

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
  <meta itemprop="name"                 content="What is MITOU Junior program?">
  <meta itemprop="description"          content="MITOU Junior is a half-year-long program to enhance young innovative creators in Japan. This program, initiated by the MITOU Foundation in 2016 and originating from the government-backed MITOU Program, has received support from various companies and organizations since its inception. With that support we offer the following benefits.">

  {% include youtube-embed.html id="qcMk-CLo21c" title="What is MITOU Junior program?" %}
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

Creators who have shown their outstanding performance during MITOU Junior program get an outstanding performance award. The award is highly recognized for Admissions Office of several universities, including [Keio University SFC](https://www.sfc.keio.ac.jp/en/), [Kindai University](https://www.kindai.ac.jp/english/) and [Tokyo Metropolitan University](https://www.tmu.ac.jp/english/index.html).

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


## [<i class="fa-light fa-newspaper"></i>](#news) Media & Awards {#news}

Our alumni are creating new values after the program as well. Here are a few examples.

{% include news-list.html %}

<div class="youtube" itemprop="video" itemscope itemtype="http://schema.org/VideoObject" style='margin-top: 60px;'>
  <meta itemprop="isFamilyFriendly"     content="True">
  <meta itemprop="requiresSubscription" content="False">
  <meta itemprop="width"                content="1280">
  <meta itemprop="height"               content="720">
  <meta itemprop="thumbnailUrl"         content="https://i.gyazo.com/5557b5f76e1d2918848a75d61a55dc94.png">
  <meta itemprop="uploadDate"           content="2025-07-19">
  <meta itemprop="contentUrl"           content="https://youtube.googleapis.com/v/GCtFWPWUPXY">
  <meta itemprop="embedUrl"             content="https://www.youtube.com/embed/GCtFWPWUPXY?rel=0">
  <meta itemprop="name"                 content="Supporting students to study visual programming with AI: TutoriaLLM | Blockly Summit 2025">
  <meta itemprop="description"          content="TutoriaLLM, an app which I have developed, has a programming environment that integrates LLM and Blockly to 'assist' student's coding experience and teaching experience. In Blockly Summit, I will show how children can learn programming in a more fun and interactive way. Speaker: So Tokumaru, Student Developer, MITOU JUNIOR">

  {% include youtube-embed.html id="GCtFWPWUPXY" title="Supporting students to study visual programming with AI: TutoriaLLM | Blockly Summit 2025" %}
</div>

<a href="https://www.youtube.com/watch?v=GCtFWPWUPXY" class="button">Watch on YouTube</a>

<br>

## [<i class="fa-light fa-books"></i>](#showcase) Projects Showcase {#showcase}

Up to now <strong>{{ total_applications }} applications</strong> are submitted to our MITOU Junior program, and we support <strong>{{ total_projects }} projects</strong> and <strong>{{ total_creators }} creators</strong>. ([Acceptance rate: 10-13%](/english/stats))

<!-- Projects を時系列順にソートし、初年度と最新年度を取得する -->
{% assign oldest_pj = site.data.projects | sort: 'year' | first %}
{% assign newest_pj = site.data.projects | sort: 'year' | last  %}
{% assign latest_en_year = page.latest_en_year %}

Example projects, accepted and boosted by our program, are as follows.

<h3 id='{{ latest_en_year }}'>
  <a href='#{{ latest_en_year }}' style='color: #333; font-weight: bold;'>{{ latest_en_year }}'s projects</a>
  <!--<span style='font-size: small;'>（<a href='#top'>Back to top &uarr;</a>）</span>-->
</h3>

<div class="projects flex">
  {% assign projects = site.data.projects | where_exp: "pj", "pj.year == latest_en_year" %}
  {% for pj in projects %}
    {% comment %}{% include project-details.html %}{% endcomment%}

  <div class="project" id="{{ pj.id }}">
    <h3 class="project-title no-link-decoration"><a href='#{{ pj.id }}'>{{ pj.title_en }}</a></h3>

    {% if pj.creator_ids %}
    <!-- Show no credits, including mentor, unless create_ids assigned. -->
    <p class="project-name">
      <small>by</small>
      {% for creator_id in pj.creator_ids %}
        {% assign creator = site.data.creators | where: "id", creator_id | first %}
        {% if forloop.index > 1 %}<span>/</span>{% endif %}

        {{ creator.id | split: '_' | first | capitalize }}
        {{ creator.id | split: '_' | last  | capitalize }}
      {% endfor %}

      <small><small>(Mentor: {% include link-to-mentor.html id=pj.mentor_id %})</small></small>
    </p>
    {% endif %}

    {% if pj.thumbnail %}
    <!-- Show thumbnail image if already set. -->
    <a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}"
           alt="{{ pj.title }}" title="{{ pj.title }}" class="project-thumbnail lazyload" loading="lazy" />
    </a>
    {% else %}
    <!-- Show WebP thumbnail image in the default path. -->
    <a href="/english/projects/{{ pj.year }}/{{ pj.id }}">
      <img src="/assets/img/spinner.svg" data-src="/assets/img/projects/{{ pj.year }}/{{ pj.id }}.webp"
           alt="{{ pj.title }}" title="{{ pj.title }}" class="project-thumbnail lazyload" loading="lazy" />
    </a>    
    {% endif %}

    <h4>Abstract</h4>
    <p class="project-description">{{ pj.description_en }}</p>
    <a href="/english/projects/{{ pj.year }}/{{ pj.id }}" class="button">View details</a>
  </div>

  {% endfor %}
</div>

<div class='flex'>
  <a href="/english/projects" class="button">View all projects</a>
</div>


<!--
<div class="project-showcase-list">
  <a href='https://github.com/visible/visible' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/visible.webp" alt="Visible - Web Accessibility Validate & Fix" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://www.youtube.com/watch?v=MePIVH21RZM' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/spaghetian.webp" alt="Spaghetian - 4-bit CPU of Electromagnet" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://detexploit.org/' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/detexploit.webp" alt="abecobe - Puzzle game using two blocks" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://keidaroo.github.io/keidaroo_pages/links/abecobe/' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/abecobe.webp" alt="abecobe - Puzzle game using two blocks" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://anjuart.com/en/' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/flight-fit-vr.webp" alt="Flight Fit -VR-" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://vamboo.net/' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/vamboo.webp" alt="vamboo - A visual programming language to create GUI application in functional and reactive way." class="project-img lazyload" loading="lazy" />
  </a>

  <a href='https://github.com/Vreath-core' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/vreath.webp" alt="Vreath - A New Consensus Algorithm Makes CryptoCurrency Easily Available" class="project-img lazyload" loading="lazy" />
  </a>
  <a href='https://sites.google.com/view/toubans-en' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/toubans.webp" alt="Toubans! - The easy-to-use duty-management chatbot" class="project-img lazyload" loading="lazy" />
  </a>

  <a href='/english/projects/2023/hato' class="project-showcase project-one">
    <img src="/assets/img/spinner.svg" data-src="/assets/img/english/hato.webp" alt="Hopefully Automatic Train Operation (HATO): Immersive Automatic Model Train Control System" class="project-img lazyload" loading="lazy" />
  </a>
</div>
-->


## [<i class="fa-light fa-calendar-clock"></i>](#agenda) Program Agenda {#agenda}

<img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_english.webp" alt="Schedule of MITOU Junior Program" class="lazyload" loading="lazy" width='100%'>

- **Target:** Individuals and groups (up to 4 members) who are 17 years old or younger as of April 1st.
- **Due Date:** The application form typically opens on March 10th and closes in early April.
- **Duration:** About 6 months support from June to November, including [Demo Day](/final) at the end.
- **Fee:** Free
  - Transportation and accommodation costs for events such as the kickoff camp and demo day will also be covered.

<div class='flex'>
  <a href="/english/stats" class="button">Check statistics</a>
  <a href='/guideline' class='button'>Check detailed timeline (in Japanese)</a>
</div>


<!--
### Timeline: From application to selection, kickoff camp to demo day.

Example timeline. Details may vary from year to year.

<img  src='/assets/img/spinner.svg' class='top-img lazyload' loading='lazy'
 data-src='/assets/img/schedule_2019_en.png' alt='Example Schedule in 2019' />
-->


## [<i class="fa-light fa-user-graduate"></i>](#supervisor) Supervisor {#supervisor}

<div class="sv">
  <div class="sv-left">
    <img  src='/assets/img/spinner.svg'  class="sv-img lazyload" loading="lazy"
     data-src="/assets/img/mentors/takeuchi.webp" alt="Photo of Ikuo Takeuchi">
    <h3 class="mentor-name">Ikuo Takeuchi</h3>
    <h5>Professor Emeritus at <a href='https://www.u-tokyo.ac.jp/en/'>The University of Tokyo</a>, Director of <a href='https://www.ipa.go.jp/en/about/it-talents/mitou.html'>MITOU Programs</a>, and Director of <a href='https://www.mitou.org/index_en.html'>MITOU Foundation</a></h5>
  </div>

  <div class="sv-right text-left">
    <h5>Biography</h5>
    <p>He was born in <a href='https://en.wikipedia.org/wiki/Toyama_Prefecture'>Toyama</a> in 1946. After he joined <a href='https://ntt-research.com/'>NTT Research</a> in 1971, he worked on <a href='https://en.wikipedia.org/wiki/Lisp_(programming_language)'>Lisp</a> and the development of its processing system. Inventor of the <a href='https://en.wikipedia.org/wiki/Tak_(function)'>TAK Function</a>. After he left the company, he was a professor at <a href='https://www.uec.ac.jp/eng/'>The University of Electro-Communications</a>, <a href='https://www.u-tokyo.ac.jp/en/'>The University of Tokyo</a>, and <a href='https://www.waseda.jp/top/en/'>Waseda University</a>.</p>

    <h5>Message</h5>
    <p>
      Since the launch of the <a href='https://www.ipa.go.jp/en/about/it-talents/mitou.html'>MITOU Programs</a> in 2000, we have increasingly focused on younger creators. <a href='https://en.wikipedia.org/wiki/Information_technology'>Information Technology</a> (IT) is not just for adults; I believe it's essential to discover and nurture an understanding of IT from a very young age. The MITOU Junior program is designed to facilitate it by providing an environment where young people can do more than just 'learn.' They can develop and enhance their skills, growing into talented IT professionals. This program is an opportunity for them to spread their wings and realize their full potential.</p>
      
    <a class="button" href="https://www.youtube.com/watch?v=SSsyV9O__GU&list=PLNObH2jlC6leiUTypiJYO2zUcwBg7M0Bg">Watch message on YouTube (in Japanese)</a>
  </div>
</div>


## [<i class="fa-light fa-badge-check"></i>](#organizer) Organizer {#organizer}

<section>
  <a href='https://www.mitou.org/index_en.html'><img src="/assets/img/spinner.svg" data-src="/assets/img/mitou-foundation.webp" alt="MITOU Foundation's logo image" class="lazyload" loading="lazy" width='100%'></a>
</section>

[The MITOU Foundation](https://www.mitou.org/index_en.html) focuses on fostering IT innovation by building a network of creative talents, particularly those who have completed the [MITOU Program](https://www.ipa.go.jp/en/it-talents/mitou.html). This organization was established in 2014 to address the growing need for innovative talents capable of transforming various industries and societal structures in the 21st century. It is a non-profit general incorporated association, a legal entity in Japanese law.

<div class='flex'>
  <a class='button' href='https://www.ipa.go.jp/en/about/it-talents/mitou.html'>Check MITOU Program</a>
  <a class='button' href='https://www.mitou.org/index_en.html'>Check MITOU Foundation</a>
</div>


## [<i class="fa-light fa-hand-holding-heart"></i>](#sponsors) Sponsors & Supporters {#sponsors}

MITOU Junior program has 10+ financial and in-kind sponsors. Also we have 10+ supporters, including MEXT ([Ministry of Education, Culture, Sports, Science and Technology](https://www.mext.go.jp/en/)) and METI ([Ministry of Economy, Trade and Industry](https://www.meti.go.jp/english/)).
