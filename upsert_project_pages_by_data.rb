#!/usr/bin/env ruby

require 'pry' unless ENV['JEKYLL_ENV'] == 'production'
require 'yaml'

projects = YAML.load_file("_data/projects.yml")
projects.each_with_index do |project, index|
  # Generate individual project page by data
  path = "./_posts/2021-02-11-#{project['id']}.md"
  page = <<PROJECT_PAGE
---
layout: post
title: "#{project['title']}"
permalink: /projects/#{project['year']}/#{project['id']}
thumbnail: /assets/img/thumbnails/#{project['year']}/#{project['thumbnail']}
description: "#{project['description']}"
---

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == '#{project['id']}'" | first %}

<img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
{% if pj.thumbnail == "tbu.png" %} data-src='https://img.youtube.com/vi/#{project['youtube']}/hqdefault.jpg'
{% else %}                         data-src='/assets/img/thumbnails/#{project['year']}/#{project['thumbnail']}'
{% endif %}                        style='margin-bottom: 10px;' />

#{project['description']}

### クリエータ（採択年度：<a href='/projects/#{project['year']}'>#{project['year']}年度</a>）
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
</p>

### メンター
<p>{% include link-to-mentor.html id=pj.mentor_id %}</p>

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/#{project['youtube']}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>

{% include project-navigation.html %}

PROJECT_PAGE

  IO.write(path, page)
  puts "Upsert: #{path}"
end
