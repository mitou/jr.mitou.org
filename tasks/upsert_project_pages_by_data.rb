#!/usr/bin/env ruby

require 'yaml'
require 'truncato'
t = Truncato

# Remove existing files and re-generate them
Dir.glob("./_posts/*.md").each { |filename| File.delete(filename) }

projects = YAML.load_file("_data/projects.yml", symbolize_names: true)
projects.each_with_index do |project, index|
  # Prev/Next project data for navigation
  this_year_projects = projects.select{|pj| pj[:year] == project[:year] }
  project_index = this_year_projects.index(project)
  prev_project  = this_year_projects.rotate(project_index - 1).first
  next_project  = this_year_projects.rotate(project_index + 1).first

  # Generate individual project page by data
  path = "./_posts/#{project[:year]}-09-01-#{project[:id]}.md"
  page = <<~PROJECT_PAGE
    ---
    layout: post
    title: "#{project[:title]}"
    permalink: /projects/#{project[:year]}/#{project[:id]}
    thumbnail: /assets/img/thumbnails/#{project[:year]}/#{project[:thumbnail]}
    description: "#{project[:description]}"
    ---

    {% assign pj = site.data.projects | where_exp: "pj", "pj.id == '#{project[:id]}'" | first %}

    <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='サムネイル画像' loading='lazy'
    {% if pj.thumbnail %}    data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.thumbnail }}'
    {% else %}               data-src='/assets/img/thumbnails/tbu.webp'
    {% endif %}                 style='margin-bottom: 10px; border-radius: 6px;' />

    {{ pj.description }}

    <div class='flex'>
      {% if pj.link %}
        {% if pj.link contains 'github.com' %}
           <a href='{{ pj.link }}' target='_blank' class='button'>ソースコードを見る</a>
        {% else %}
           <a href='{{ pj.link }}' target='_blank' class='button'>公式サイトを見る</a>
        {% endif %}
      {% endif %}

      <a href="https://twitter.com/intent/tweet?text={{ pj.title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang=jp&url={{ site.url }}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank" rel="noopener">ツイートする</a>
    </div>

    ### クリエータ {#creator}
    <p>
      {% for creator_id in pj.creator_ids %}
        {% include creator.html is_simple=true %}
      {% endfor %}
      <small>(<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %}PM)</small>
    </p>

    {% if pj.comment %}
    ### PMコメント {#comment}
    <p class="project-comment">{{ pj.comment }}</p>
    {% endif %}

    {% if pj.promotion %}
    {% if pj.promotion contains '.gif' %}
    ## デモ動画 {#demo}
    <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='デモ動画 (Gif)'
         data-src='/assets/img/thumbnails/{{ pj.year }}/{{ pj.promotion }}' loading='lazy'
         style='margin-bottom: 10px; border-radius: 6px;' />
    {% else %}
    ## デモ動画 {#demo}
    <div class="youtube">
      <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
    </div>
    <a href="https://youtu.be/{{ pj.promotion }}" target="_blank" rel="noopener" class="button">YouTube で見る</a>
    {% endif %}
    {% endif %}

    {% if pj.final %}
    ## 発表動画 {#final}
    <div class="youtube">
      <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
    </div>
    <a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" rel="noopener" class="button">YouTube で見る</a>
    {% endif %}

    <nav>
      <p class="nav prev"><a href='#{prev_project[:id]}'>&larr; 前<br>
        #{ t.truncate(prev_project[:title]) }</a></p>
      <p class="nav next"><a href='#{next_project[:id]}'>次 &rarr;<br>
        #{ t.truncate(next_project[:title]) }</a></p>
    </nav>

    {% include project-navigation.html %}
  PROJECT_PAGE

  IO.write(path, page)
  puts "Upsert: #{path}"
end
