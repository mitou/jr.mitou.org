#!/usr/bin/env ruby

require 'yaml'
require 'ruby/openai' # Translate project with OpenAI from JA to EN
TARGET_YEAR=2025      # Translate given-year projects from JA to EN

OpenAI.configure do |config|
  config.access_token    = ENV.fetch('OPENAI_ACCESS_TOKEN')
  config.organization_id = ENV.fetch('OPENAI_ORGANIZATION') # Optional.
  config.request_timeout = 180 # 60 by default.
end

client = OpenAI::Client.new
params = {
  #model: 'gpt-5-chat-latest', # https://platform.openai.com/docs/models/gpt-5
  model: 'gpt-4o',           # https://platform.openai.com/docs/models/gpt-4o
  #model: 'o1-preview',       # https://platform.openai.com/docs/models#o1
  messages: [
    {
      role:    'system',
      #content: '小中高生クリエータ支援プログラム「未踏ジュニア」の採択プロジェクトの英語版を用意したいです。渡された日本語のタイトルまたは概要を、英語にしてください。タイトルの強調は不要です。',
      content: "We would like to translate MITOU Junior projects' title/abstract from Japanese into English. Please make sure that the tone of the translations are appropriately formal for an official website and no emphasis. You don't need prefixes like **Title:** and **Abstract:** in your output, just English title/abstract only.",
    },
    {
      role:    'user',
      content: 'niwango.js - 動画のコメントでプログラミング可能なニワン語の実行エンジン',
      # 上記 content の値をタイトルまたは概要文に置き換え、出力結果を Cosense (Scrapbox) 等でレビューする
    },
  ],
  temperature: 0.0,
  #stream: True,
}

BASE_URL = 'https://jr.mitou.org/projects'
target_projects = YAML.load_file("_data/projects.yml", symbolize_names: true).select { it[:year] == TARGET_YEAR }

outputs = target_projects.map.with_index do |project, index|
  Thread.new do
    task_params = params.dup
    task_params[:messages] = params[:messages].dup

    task_params[:messages][-1][:content] = project[:title]
    title_en = client.chat(parameters: task_params).dig 'choices', 0, 'message', 'content'

    task_params[:messages][-1][:content] = project[:description]
    description_en = client.chat(parameters: task_params).dig 'choices', 0, 'message', 'content'

    [index, project, title_en, description_en]
  end
end

outputs.map(&:value).sort.each do |index, project, title_en, description_en|
  puts <<~COSENSE_FORMAT
    \t[#{project[:title]} #{BASE_URL}/#{project[:year]}/#{project[:id]}]
    \t\tcode:title_en
    \t\t\t#{title_en}
    \t\tcode:description
    \t\t\t#{project[:description].chomp}
    \t\tcode:description_en
    \t\t\t#{description_en.chomp}

  COSENSE_FORMAT
end
