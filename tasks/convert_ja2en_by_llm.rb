#!/usr/bin/env ruby

require 'yaml'
require 'ruby/openai' # Translate project info from JA to EN

OpenAI.configure do |config|
  config.access_token    = ENV.fetch('OPENAI_ACCESS_TOKEN')
  config.organization_id = ENV.fetch('OPENAI_ORGANIZATION') # Optional.
  config.request_timeout = 180 # 60 by default.
end

client = OpenAI::Client.new
params = {
  # https://platform.openai.com/docs/models/gpt-4o
  model: 'gpt-4o',
  messages: [
    {
      role:    'system',
      #content: '小中高生クリエータ支援プログラム「未踏ジュニア」の採択プロジェクトの英語版を用意したいです。渡された日本語のタイトルまたは概要を、英語にしてください。タイトルの強調は不要です。',
      content: "We would like to translate Mitou Junior projects' title/abstract from Japanese into English. Please make sure that the tone of the translations are appropriately formal for an official website and no emphasis.",
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
projects = YAML.load_file("_data/projects.yml", symbolize_names: true)
projects.each_with_index do |project, index|
  next unless project[:year] == 2023

  params[:messages][-1][:content] = project[:title]
  en_title = client.chat(parameters: params).dig 'choices', 0, 'message', 'content'

  params[:messages][-1][:content] = project[:description]
  en_desc  = client.chat(parameters: params).dig 'choices', 0, 'message', 'content'
  #puts response
  # this_year_projects = projects.select{|pj| pj[:year] == project[:year] }
  output = <<~COSENSE_FORMAT
    \t[#{project[:title]} #{BASE_URL}/#{project[:year]}/#{project[:id]}] / #{en_title}
    \t\t#{project[:description].chomp}
    \t\t#{en_desc.chomp}

  COSENSE_FORMAT

  puts output
end
