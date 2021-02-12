---
layout: post
title: "-Flight Fit VR- 「飛行」をテーマに仮想空間で身体を鍛えるVR作品"
permalink: /projects/2020/flight_fit_vr
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'flight_fit_vr'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/rIRHwI6EV8E/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2020/flight_fit_vr.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

OculusのVRゴーグルで、美しい景色と音楽の中でリラックスしながら身体を鍛えることができる作品です。３つのミニゲームから構成されており、体幹、腹筋、前腿の筋肉などの筋力向上を期待できます。

### クリエータ（採択年度：<a href='/projects/2020'>2020年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/rIRHwI6EV8E?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

