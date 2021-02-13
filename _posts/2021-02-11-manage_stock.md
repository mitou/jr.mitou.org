---
layout: post
title: "ManageStock - 家庭向け在庫管理アプリ"
permalink: /projects/2019/manage_stock
thumbnail: /assets/img/thumbnails/2019/manage_stock.jpg
description: "ティッシュペーパーのような日用品を買い忘れてしまい、困った経験はありませんか？ ManageStock はそのような問題を解決するために、在庫を IoT などを活用して管理するアプリケーションです。"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == 'manage_stock'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/N1QfbFyjNXg/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/2019/manage_stock.jpg'
{% endif %}                        style='margin-bottom: 10px;' />

ティッシュペーパーのような日用品を買い忘れてしまい、困った経験はありませんか？ ManageStock はそのような問題を解決するために、在庫を IoT などを活用して管理するアプリケーションです。

### クリエータ（採択年度：<a href='/projects/2019'>2019年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/N1QfbFyjNXg?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

