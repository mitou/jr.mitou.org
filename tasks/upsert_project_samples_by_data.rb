#!/usr/bin/env ruby

require 'yaml'
require 'cgi'

# Remove existing sample pages. They are re-generated later.
Dir.glob("./applications/*.md"  ).each { File.delete(it) unless it.split('/').last.start_with? 'index.md' }

project_sample_ids = YAML.load_file("_data/applications.yml", symbolize_names: true)
  .select{ it[:type] == 'sample'}
  .map{ it[:project_id] }
project_samples = YAML.load_file("_data/projects.yml", symbolize_names: true)
  .select{ project_sample_ids.include? it[:id] }

project_samples.each_with_index do |project, index|
  sample_path = "./applications/#{project[:id]}.md"
  sample_page = <<~PROJECT_SAMPLE_PAGE
    ---
    layout: post
    title: |
      提案書サンプル &raquo;<br>#{project[:title]}
    description: |
      未踏ジュニア採択者の有志が、応募者のために公開している提案書（応募時点でのプロジェクト概要）です。
    thumbnail: /assets/img/projects/#{project[:year]}/#{project[:thumbnail]}
    ---

    <p style='padding: 50px 0px 10px;'>{{ page.description }}</p>

    <div class='flex'>
      <a class="button" href="/applications#sample">サンプル一覧に戻る</a>
      <a class="button" href="/applications/#{project[:id]}.pdf">PDF で見る</a>
    </div>

    <div class="pdf-wrap" style='margin: 30px 0px;'>
      <div class="pdf-container">
        <embed src="https://drive.google.com/viewerng/viewer?embedded=true&url=https://jr.mitou.org/applications/#{project[:id]}.pdf" />
      </div>
    </div>

    <div class='note' style='margin: 30px auto 50px;'><small>提案書の状態から約６ヶ月間の支援を得た結果が<a href='/final'>成果報告会</a>での発表となります。最初から完成している必要はありません。有志のクリエータが応募者のために公開しているサンプルが、提案書の準備に役立てば嬉しいです。<br><br><img src="/assets/img/spinner.svg" data-src="/assets/img/schedule_sample.webp" alt="提案書サンプルの状態" class="lazyload"></small></div>

    <div class='flex'>
      <a class="button" href='https://twitter.com/intent/tweet?text=提案書サンプル%20-%20#{CGI.escapeHTML project[:title]}&hashtags=未踏ジュニア&url={{ site.url }}/applications/#{project[:id]}&lang=jp&related=mitoujr'>ツイートする</a>
      <a class="button" href="/projects/#{project[:year]}/#{project[:id]}#final">発表動画を見る</a>
    </div>
  PROJECT_SAMPLE_PAGE

  #puts sample_page
  #binding.irb; exit
  IO.write(sample_path, sample_page) # + "\n" + page_shared_contents

  puts("Upsert: #{sample_path}")
end

puts ''
