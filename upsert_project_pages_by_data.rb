#!/usr/bin/env ruby

require 'pry' unless ENV['JEKYLL_ENV'] == 'production'
require 'yaml'

target_year = ARGV[0] || '2020'
projects    = YAML.load_file("_data/projects.yml")

projects.each_with_index do |project, index|
  next unless project['year'].to_s == target_year
  # Generate individual project page by data
  path = "./_posts/2021-02-11-#{project['id']}.md"
  page = <<PROJECT_PAGE
---
layout: post
title: '#{project['title']}'
permalink: /projects/#{project['year']}/#{project['id']}
---

<img class='top-img lazyload' src='/assets/img/spinner.svg' data-src='/assets/img/thumbnails/#{project['year']}/#{project['thumbnail']}' loading='lazy' style='margin-bottom: 10px;' />

#{project['description']}

{% assign pj = site.data.projects | where_exp: "pj", "pj.id == '#{project['id']}'" | first %}

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

PROJECT_PAGE

  IO.write(path, page)
  puts "Upsert: #{path}"
end
