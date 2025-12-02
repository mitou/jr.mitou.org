#!/usr/bin/env ruby

require 'yaml'
require 'cgi'
#require 'active_support/all'
require 'active_support/core_ext/string/filters'
TRUNCATE_LENGTH = 33

# Remove existing sample pages. They are re-generated later.
Dir.glob("./applications/*.md"  ).each { File.delete(it) unless it.split('/').last.start_with? 'index.md' }

projects = YAML.load_file("_data/projects.yml", symbolize_names: true)
project_sample_ids = YAML.load_file("_data/applications.yml", symbolize_names: true)
  .select { it[:type] == 'sample' }
  .map    { it[:project_id]       }
project_samples = project_sample_ids.map { |sample_id| projects.find { it[:id] == sample_id } }

project_samples.each_with_index do |project, index|
  # Prev/Next project data for navigation
  project_index = project_samples.index(project)
  prev_project  = project_samples.rotate(project_index - 1).first
  next_project  = project_samples.rotate(project_index + 1).first

  sample_path = "./applications/#{project[:id]}.md"
  sample_page = <<~PROJECT_SAMPLE_PAGE
    ---
    layout: post
    title: |
      提案書サンプル &raquo; <br>#{project[:title]}
    description: |
      未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
    thumbnail: /assets/img/projects/#{project[:year]}/#{project[:id]}.webp
    ---

    <p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

    <div class='flex'>
      <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
      <a class="button" href="/applications/#{project[:id]}.pdf">PDF で見る</a>
    </div>

    {% include render-pdf.html project_id="#{project[:id]}" %}

    <div class='note' style='margin: 30px auto 50px;'><small>上記の提案書の状態から、約６ヶ月間の支援を得た結果が下記の<a href='/projects/#{project[:year]}#final'>成果報告会</a>での発表となります。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

    {% assign pj = site.data.projects | where_exp: "pj", "pj.id == '#{project[:id]}'" | first %}
    <div class="youtube">
      {% include youtube-embed.html id=pj.final start=pj.final_start %}
    </div>

    <div class='flex'>
      <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
      <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20#{CGI.escapeHTML project[:title]}&hashtags=未踏ジュニア&url={{ site.url }}/applications/#{project[:id]}&lang=ja&related=mitoujr'>ツイートする</a>
    </div>

    <nav>
      <p class='nav prev'>
        <a href='#{prev_project[:id]}' title='#{CGI.escapeHTML prev_project[:title]}'>
          &larr; {{ translations.navPrev[lang] }} 前の提案書
          <br>
          #{ prev_project[:title].truncate(TRUNCATE_LENGTH) }
        </a>
      </p>

      <p class='nav next'>
        <a href='#{next_project[:id]}' title='#{CGI.escapeHTML next_project[:title]}'>
          次の提案書 {{ translations.navNext[lang] }} &rarr;
          <br>
          #{ next_project[:title].truncate(TRUNCATE_LENGTH) }
        </a>
      </p>
    </nav>
  PROJECT_SAMPLE_PAGE

  #puts sample_page
  #binding.irb; exit
  IO.write(sample_path, sample_page) # + "\n" + page_shared_contents

  puts("Upsert: #{sample_path}")
end

puts ''
