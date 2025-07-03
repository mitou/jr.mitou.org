---
layout: post
title: Mentor Alumni
description: 本ページでは、未踏ジュニアに応募するクリエータを支援してくださった方々（これまでのメンター）を紹介しています。
redirect_from:
  - /alumni
---

## Mentor Alumni


未踏ジュニアのメンターとして貢献していただいた方々です。当時の情報をそのままに残しております。ご協力していただきありがとうございました! 🙏✨

<br>

<div class="mentors flex">
  {% for mentor in site.data.mentors %}
    {% unless mentor.is_alumni %} {% continue %} {% endunless %}
    {% include mentor.html mentor=mentor %}
  {% endfor %}
</div>

<a class="button" href='/mentors'>現役のメンターを見る</a>
