#!/usr/bin/env ruby
# encoding: utf-8

require 'rss'
require 'yaml'
require 'date'
require 'open-uri'

# PR TIMESのRSSフィードURL
RSS_URL = 'https://prtimes.jp/companyrdf.php?company_id=22934'

# YAMLファイルのパス
NEWS_YAML_PATH = '_data/news.yml'

# 取得する記事数（デフォルト: 10件）
NUM_OF_ITEMS = (ARGV[0] || 10).to_i

# 既存のニュースを読み込み
existing_news = if File.exist?(NEWS_YAML_PATH)
  YAML.load_file(NEWS_YAML_PATH) || []
else
  []
end

# 既存のリンクをSetに格納（重複チェック用）
existing_links = existing_news.map { |news| news['link'] }.to_set

# RSSフィードをパース
begin
  rss_content = URI.open(RSS_URL).read
  feed = RSS::Parser.parse(rss_content)
  
  new_items = []
  
  # 最新の記事から順に処理
  feed.items.first(NUM_OF_ITEMS).each do |item|
    link = item.link
    
    # 既存のニュースに含まれていない場合のみ追加
    next if existing_links.include?(link)
    
    # 日付をYAML用のフォーマットに変換
    date = if item.respond_to?(:dc_date)
      Date.parse(item.dc_date.to_s).strftime('%Y/%m/%d')
    elsif item.respond_to?(:date)
      Date.parse(item.date.to_s).strftime('%Y/%m/%d')
    else
      Date.today.strftime('%Y/%m/%d')
    end
    
    # タイトルに「(公式)」を追加
    title = "#{item.title} (公式)"
    
    new_items << {
      'title' => title,
      'link' => link,
      'date' => date
    }
  end
  
  # 新しい記事がある場合
  if new_items.any?
    # 新しい記事を既存のニュースの先頭に追加
    updated_news = new_items + existing_news
    
    # YAMLファイルに書き込み
    File.open(NEWS_YAML_PATH, 'w') do |file|
      file.write(updated_news.to_yaml)
    end
    
    puts "✅ #{new_items.size}件の新しいプレスリリースを追加しました:"
    new_items.each do |item|
      puts "  - #{item['title']}"
      puts "    #{item['link']}"
      puts "    #{item['date']}"
    end
  else
    puts "ℹ️  新しいプレスリリースはありません。"
  end
  
rescue => e
  puts "❌ エラーが発生しました: #{e.message}"
  exit 1
end