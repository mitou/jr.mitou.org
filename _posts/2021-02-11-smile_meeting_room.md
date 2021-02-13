---
layout: post
title: "スマイル会議室 - IoTで会議室の効率的な利用を"
permalink: /projects/2018/smile_meeting_room
thumbnail: /assets/img/thumbnails/2018/tbu.png
description: "IoTデバイスを用いて会議室予約や会議室内の備品の電源などを制御することで会議室の効率的利用を支援。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'smile_meeting_room'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/Z6_Iw8Hvclk/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2018/tbu.png'
{% endif %}                        style='margin-bottom: 10px;' />

IoTデバイスを用いて会議室予約や会議室内の備品の電源などを制御することで会議室の効率的利用を支援。

{% if pj.link %}
<a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
{% endif %}

### クリエータ（採択年度：<a href='/projects/2018'>2018年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/Z6_Iw8Hvclk?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

