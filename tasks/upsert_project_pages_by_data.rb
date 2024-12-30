#!/usr/bin/env ruby

require 'yaml'
require 'cgi'
#require 'active_support/all'
require 'active_support/core_ext/string/filters'
TRUNCATE_LENGTH = 33

# Remove existing JA/EN pages and re-generate them
Dir.glob("./_posts/*.md"        ).each { |filename| File.delete(filename) }
Dir.glob("./_posts/english/*.md").each { |filename| File.delete(filename) }

class Hash
  def has_english?; self.has_key? :title_en; end
end

projects = YAML.load_file("_data/projects.yml", symbolize_names: true)
projects.each_with_index do |project, index|
  #binding.irb; exit
  # To inspect & debug specific projects
  #next unless project[:year] == 2017

  # Prev/Next project data for navigation
  this_year_projects = projects.select{|pj| pj[:year] == project[:year] }
  project_index = this_year_projects.index(project)
  prev_project  = this_year_projects.rotate(project_index - 1).first
  next_project  = this_year_projects.rotate(project_index + 1).first

  # Generate JA/EN project pages from projects.yml
  project[:thumbnail] ||= "#{project[:id]}.webp"
  path_ja = "./_posts/#{project[:year]}-09-01-#{project[:id]}.md"
  page_ja = <<~JA_PROJECT_FRONTMATTER
    ---
    layout: post
    title: |
      #{project[:title]}
    description: |
      #{project[:description]}
    permalink: /projects/#{project[:year]}/#{project[:id]}
    thumbnail: /assets/img/projects/#{project[:year]}/#{project[:thumbnail]}
    twitter_card: summary_large_image
    ---
  JA_PROJECT_FRONTMATTER

  path_en = "./_posts/english/#{project[:year]}-09-01-#{project[:id]}.md"
  page_en = <<~EN_PROJECT_FRONTMATTER
    ---
    lang: en
    layout: post
    title: |
      #{project[:title_en]}
    description: |
      #{project[:description_en]}
    permalink: /english/projects/#{project[:year]}/#{project[:id]}
    thumbnail: /assets/img/projects/#{project[:year]}/#{project[:thumbnail]}
    twitter_card: summary_large_image
    ---
  EN_PROJECT_FRONTMATTER

  page_shared_contents = <<~SHARED_PROJECT_CONTENTS
   {% assign pj           = site.data.projects | where_exp: "pj", "pj.id == '#{project[:id]}'" | first %}
   {% assign translations = site.data.translations %}
   {% assign lang         = page.lang | default: 'ja' %}

   {% comment %} pj.description needs NOT to be escapd to render <br> tags. {% endcomment %}
   {% if page.lang == 'en' %}
     {% assign pj_title       = pj.title_en       | escape %}
     {% assign pj_description = pj.description_en %}
     {% assign pj_promotion   = pj.promotion_en   | default: pj.promotion %}
   {% else %}
     {% assign pj_title       = pj.title          | escape %}
     {% assign pj_description = pj.description    %}
     {% assign pj_promotion   = pj.promotion %}
   {% endif %}

   <div style='margin-top: 50px; margin-bottom: 30px;'>
     <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.altThumbnail[lang] }} - {{ pj_title }}'
     {% if pj.thumbnail %}    data-src='/assets/img/projects/{{ pj.year }}/{{ pj.thumbnail }}'
     {% else %}               data-src='/assets/img/projects/{{ pj.year }}/{{ pj.id        }}.webp'
     {% endif %}                 title='{{ pj_title }}' style='border-radius: 6px;' loading='lazy' />
   </div>

   {{ pj_description }}

   <div class='flex'>
     {% if pj.link %}
       {% if pj.link contains 'https://github.com' and pj.link contains 'releases' %}
          <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.downloadOnGitHub[lang] }}</a>
       {% elsif pj.link contains 'https://github.com' %}
          <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOnGitHub[lang] }}</a>
       {% elsif pj.link contains 'https://x.com' %}
          <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOnTwitter[lang] }}</a>
       {% else %}
          <a href='{{ pj.link }}' target='_blank' class='button'>{{ translations.viewOfficialWebsite[lang] }}</a>
       {% endif %}
     {% endif %}

     <a href="https://twitter.com/intent/tweet?text={{ pj_title }}&via=MitouJr&hashtags=未踏ジュニア{% if pj.tags %},{{ pj.tags | join: ','}}{% endif %}&related=MitouJr&lang={{ translations.postLangX[lang] }}&url={{ site.url }}{% if page.lang =='en' %}/english{% endif %}/projects/{{ pj.year }}/{{ pj.id }}" class="button" target="_blank">{{ translations.postToX[lang] }}</a>
   </div>

   ### {{ translations.creator[lang] }} {#creator}
   <p>
     {% for creator_id in pj.creator_ids %}
       {% include creator.html no_spc_star=true %}
     {% endfor %}

     <small>
       {% if page.lang == 'en' %}
       (Year: <a href='/english/projects/\#{{ pj.year }}'>{{ pj.year }}</a> /
        Mentor: {% include link-to-mentor.html id=pj.mentor_id %})
       {% else %}
       (<a href='/projects/{{ pj.year }}'>{{ pj.year }}年度</a> 採択 / {% include link-to-mentor.html id=pj.mentor_id %} PM)
       {% endif %}
     </small>
   </p>

   {% if pj.comment and page.lang != 'en' %}
   ### PM コメント {#comment}
   <p class="project-comment">{{ pj.comment }}</p>
   {% endif %}

   {% if pj_promotion %}
   ## {{ translations.demoMovie[lang] }} {#demo}
   {% if pj_promotion contains '.gif' %}
   <img class='top-img lazyload' src='/assets/img/spinner.svg' alt='{{ translations.demoMovie[lang] }} (Gif)'
        data-src='/assets/img/projects/{{ pj.year }}/{{ pj_promotion }}' loading='lazy'
        style='margin-bottom: 10px; border-radius: 6px;' />
   {% else %}
   <div class="youtube">
     <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj_promotion }}?rel=0" frameborder="0" allowfullscreen=""></iframe>
   </div>
   <a href="https://youtu.be/{{ pj_promotion }}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
   {% endif %}
   {% endif %}

   {% if pj.final %}
   ## {{ translations.pitch[lang] }}  {#final}
   <div class="youtube">
     <iframe width="560" height="315" class="lazyload" data-src="https://www.youtube.com/embed/{{ pj.final }}?rel=0{% if pj.final_start %}&start={{ pj.final_start }}{% endif %}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
   </div>

   {% if page.lang == 'en' %}
   <div class="note" style="margin-top: 30px;">
     <span style="font-weight: bold; margin-left: -4px;">To show English subtitles:</span><br>
     Play video <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
     Click CC icon <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
     Click Settings <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
     Click Subtitles/CC <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
     Click Auto-translate <span class='ignore-sp'>&rarr;</span><span class='ignore-pc'>&darr;</span><br class='ignore-pc'>
     Click English <small>(or other language you prefer)</small>
   </div>
   {% endif %}

   <a href="https://youtu.be/{{ pj.final }}{% if pj.final_start %}?t={{ pj.final_start }}{% endif %}" target="_blank" class="button">{{ translations.watchOnYouTube[lang] }}</a>
   {% else %}
   ## {{ translations.pitch[lang] }}  {#final}
   成果報告会での発表をお楽しみください。

   <a href="/final" class="button">成果報告会の情報を見る</a>
   {% endif %}

   <nav>
     <p class='nav prev'>
       <a href='#{prev_project[:id]}' title='#{CGI.escapeHTML prev_project[:title]}'>
         &larr; {{ translations.navPrev[lang] }}
         <br>
         {% if page.lang == 'en' %}
           #{ prev_project[:title_en].truncate(TRUNCATE_LENGTH) if project.has_english? }
         {% else %}
           #{ prev_project[:title].truncate(TRUNCATE_LENGTH) }
         {% endif %}
       </a>
     </p>

     <p class='nav next'>
       <a href='#{next_project[:id]}' title='#{CGI.escapeHTML next_project[:title]}'>
         {{ translations.navNext[lang] }} &rarr;
         <br>
         {% if page.lang == 'en' %}
           #{ next_project[:title_en].truncate(TRUNCATE_LENGTH) if project.has_english? }
         {% else %}
           #{ next_project[:title].truncate(TRUNCATE_LENGTH) }
         {% endif %}
       </a>
     </p>
   </nav>

   {% include project-navigation.html %}
  SHARED_PROJECT_CONTENTS

  #binding.irb; exit
  IO.write(path_ja, page_ja + "\n" + page_shared_contents)
  IO.write(path_en, page_en + "\n" + page_shared_contents) if project.has_english?

  project.has_english? ?
    puts("Upsert (JA/EN): #{path_ja}") :
    puts("Upsert (JA):    #{path_ja}")
end


