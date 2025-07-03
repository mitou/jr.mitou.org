---
layout: post
title: Mentor Alumni
description: 本ページでは、未踏ジュニアに応募するクリエータを支援してくださった方々（これまでのメンター）を紹介しています。
redirect_from:
  - /alumni
---

## [<i class="fa-duotone fa-users"></i>](#message) Mentor Alumni {#message}


未踏ジュニアのメンターとして貢献していただいた方々です。当時の情報をそのままに残しております。ご協力していただきありがとうございました! 🙏✨

<br>

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% if mentor.is_alumni %}
      {% include mentor.html mentor=mentor %}
    {% endif %}
  {% endfor %}
</div>

<a class="button" href='/mentors'>現役のメンターを見る</a>
