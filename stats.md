---
layout: post
title: 未踏ジュニア統計情報
---

<p style="text-align:center; padding: 50px 0px 0px;">
  2016年から始まった未踏ジュニアの統計情報です。未踏ジュニアへのスポンサーを検討されている方々にとってご参考になれば幸いです。
</p>

## 応募数の推移

{% for stat in site.data.stats %}
<h3>{{ stat.year }} 年度</h3>
<ul>
  {% comment %}
  <!-- You can manually check data like this -->
  <li>プロジェクト数: {{ site.data.projects | where_exp: 'pj', 'pj.year == stat.year' | size }}</li>
  <li>クリエーター数: {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year' | size }}</li>
  <li>スパクリ認定数: {{ site.data.creators | where_exp: 'cr', 'cr.year == stat.year and cr.is_spc == true' | size }}</li>
  {% endcomment %}

  <li>応募数: {{ stat.applications    }} 件</li>
  <li>採択数: {{ stat.projects        }} 件</li>
  <li>採択率: {{ stat.acceptance_rate }} 倍</li>
</ul>
{% endfor %}

## お問い合わせ

<div class='text-center' style="margin-top: 50px;">
    <div class="sponsors-text-for-inquiry">
      <p>未踏ジュニア実行委員会では、未踏ジュニアの継続的な活動を支援して頂けるスポンサー様を随時募集しております。興味を持って頂いた法人・個人の方は <a href="mailto:jr@mitou.org"><i>jr@mitou.org</i></a> までご連絡頂けると幸いです。</p>
    </div>

  <i class="fas fa-envelope green" style="font-size:36px;"></i><br>
  <a href="mailto:jr@mitou.org">jr@mitou.org</a>

  <p>まずはお気軽にご連絡していただけると幸いです。</p>

  <a href="mailto:jr@mitou.org" class="button">メールを送る</a>
</div>


