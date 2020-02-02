---
layout: post
title: What is Mitou Jr?
---

## What's this?
It is a half-year-long program for talented and innovative creators and programmers under 17 in Japan. The program was founded in 2016 by <a href="https://www.mitou.org/">Mitou Foundation</a>, and has been supported by companies and organizations. which offers the following benefits.

### Mentoring
Creators will be able to learn from mentors and other Mitou graduates who are at the forefront of technology.

### Financial Support
Each group will be eligible to receive up to 500K yen  (almost equivalnt of $4600)  as funding for development.

### Place to develop
If necessary, places to develop will be provided.

### Certified as Mitou Junior Super Creators
Creators who have achieved outstanding results are certified as Mitou Junior Super Creators. They're eligible to apply for Admission Office Entrance Examinations of Keio University SFC and Tokyo Metropolitan University.

## Past Projects
In 2019, we accepted 13 projects (17 individuals) out of 127 applications. 9 of the creators were certified as Mitou Junior Super Creator. The presentation videos and full information are available <a href="../projects/2019">here</a>. <br>
In 2018, we accepted 12 projects (14 individuals) out of 105 applications. 6 of the creators were certified as Mitou Junior Super Creator. The presentation videos and full information are available <a href="../projects/2018">here</a>

<h2>Supporting Public Organizations</h2>
Mitou Junior is officially recognized and supported by the Ministry of Education, Culture, Sports, Science and Technology, and the Ministry of Economy, Trade and Industry.
  <div class="sponsors-list-supporter">
    <a href="https://www.mext.go.jp/" target="_blank">
      <div class="sponsor-supporter sponsor-one">
        <img src="/assets/img/sponsor/mext.png" alt="文部科学省" class="sponsor-img">
      </div>
    </a>
    <a href="https://www.meti.go.jp/" class="sponsor-supporter sponsor-one" target="_blank">
      <div class="sponsor-supporter sponsor-one">
        <img src="/assets/img/sponsor/meti.png" alt="経済産業省" class="sponsor-img">
      </div>
    </a>
  </div>

<h2>Sponsors</h2>

  <h3>Gold Sponsor</h3>
  <div class="sponsors-list-gold">
    {% for sponsor in site.data.sponsors.gold %}
    <a href="{{sponsor.url}}" target="_blank">
      <div class="sponsor-gold sponsor-one">
        <img src="/assets/img/sponsor/{{sponsor.img}}" alt="{{sponsor.name}}" class="sponsor-img">
      </div>
    </a>
    {% endfor %}
  </div>

  <h3>Silver Sponsor</h3>
  <div class="sponsors-list-silver">
    {% for sponsor in site.data.sponsors.silver %}
    <a href="{{sponsor.url}}" target="_blank">
      <div class="sponsor-silver sponsor-one">
        <img src="/assets/img/sponsor/{{sponsor.img}}" alt="{{sponsor.name}}" class="sponsor-img">
      </div>
    </a>
    {% endfor %}
  </div>

  <h3>Bronze Sponsor</h3>
  <div class="sponsors-list-bronze">
    {% for sponsor in site.data.sponsors.bronze %}
    <a href="{{sponsor.url}}" target="_blank">
      <div class="sponsor-bronze sponsor-one">
        <img src="/assets/img/sponsor/{{sponsor.img}}" alt="{{sponsor.name}}" class="sponsor-img">
      </div>
    </a>
    {% endfor %}
  </div>


