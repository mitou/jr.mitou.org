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

<div style='display: flex; flex-wrap: wrap'>
  {% if pj.link %}
  <a href="{{ pj.link }}" target="_blank" class="button">公式サイトを見る</a>
  {% endif %}

  <a href="https://twitter.com/intent/tweet?text=#{project['title']}&via=MitouJr&hashtags=未踏ジュニア&related=MitouJr&lang=jp&url={{ site.url }}/projects/#{project['year']}/#{project['id']}" class="button" target="_blank" rel="noopener">ツイートする</a>
</div>

### クリエータ
<p>
{% for creator_id in pj.creator_ids %}
  {% include creator.html is_simple=true %}
{% endfor %}
<small>(<a href='/projects/#{project['year']}'>#{project['year']}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
</p>

{% if pj.comment %}
### PMコメント
<p class="project-comment">{{ pj.comment }}</p>
{% endif %}

## 発表動画
<div class="youtube">
  <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/#{project['youtube']}?rel=0" frameborder="0" allowfullscreen=""></iframe>
</div>
<a href="https://www.youtube.com/watch?v={{ pj.youtube }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>

{% include project-navigation.html %}

PROJECT_PAGE

  IO.write(path, page)
  puts "Upsert: #{path}"
end
