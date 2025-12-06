#!/usr/bin/env ruby
# encoding: utf-8

require 'rss'
require 'yaml'
require 'date'
require 'open-uri'

# 最新N件のみを対象とする（古い記事は既に手動で追加済みと見なす）
RSS_MAX_ITEMS  = 5
RSS_PR_TIMES   = 'https://prtimes.jp/companyrdf.php?company_id=22934'
NEWS_YAML_PATH = '_data/news.yml'

# YAMLファイルを行ごとに読み込み、手動でパース
news_items       = []
comment_blocks   = {}
current_comments = []

unless File.exist?(NEWS_YAML_PATH)
  puts 'No such file found: ' + NEWS_YAML_PATH
  exit(1)
end

# YAMLファイルが存在する場合のみパース処理を実行
lines = File.readlines(NEWS_YAML_PATH)
current_item = nil

lines.each_with_index do |line, index|
  # コメント行の処理
  if line.strip.start_with?('#')
    current_comments << line
    next
  end

  # 新しいアイテムの開始
  if line.start_with?('- title:')
    # 前のアイテムがあれば保存
    if current_item
      # アイテムの直前にコメントがあれば保存
      if !current_comments.empty?
        comment_blocks[news_items.size] = current_comments.join
        current_comments = []
      end
      news_items << current_item
    end

    # 新しいアイテムを開始
    current_item = {}
    current_item[:title] = line.sub(/^- title:\s*['"]?/, '').sub(/['"]?\s*$/, '').strip
  elsif line.start_with?('  link:') && current_item
    current_item[:link]  = line.sub(/^\s*link:\s*['"]?/, '').sub(/['"]?\s*$/, '').strip
  elsif line.start_with?('  date:') && current_item
    current_item[:date]  = line.sub(/^\s*date:\s*/, '').strip
  elsif line.start_with?('  lang:') && current_item
    current_item[:lang]  = line.sub(/^\s*lang:\s*/, '').strip
  elsif line.strip.empty? && !current_comments.empty?
    # 空行もコメントブロックの一部として保持
    current_comments << line
  end
end

# 最後のアイテムを保存
if current_item
  if !current_comments.empty?
    comment_blocks[news_items.size] = current_comments.join
  end
  news_items << current_item
end

# 既存リンクをSetに格納し（重複チェック用）、RSSフィードをパース
existing_links = news_items.map { |news| news['link'] }.to_set
feed           = RSS::Parser.parse(URI.open(RSS_PR_TIMES).read)
new_items      = []

# 最新N件のみを処理
feed.items.first(RSS_MAX_ITEMS).each do |item|
  link = item.link

  # 既存のニュースに含まれていない場合のみ追加
  next if existing_links.include?(link)

  # 日付を取得してYAML用のフォーマットに変換
  date = if item.respond_to?(:dc_date) && item.dc_date
           Date.parse(item.dc_date.to_s).strftime('%Y/%m/%d')
         elsif item.respond_to?(:date) && item.date
           Date.parse(item.date.to_s).strftime('%Y/%m/%d')
         else
           Date.today.strftime('%Y/%m/%d')
         end

  # タイトルに「(公式)」を追加
  title = "#{item.title} (公式)"

  new_items << {
    title: title,
    link:  link,
    date:  date,
  }
end

# 新しい記事がある場合
if new_items.any?
  # 元のファイル内容をバックアップ
  original_content = File.read(NEWS_YAML_PATH)

  # 新規記事のみを先頭に追加（既存コンテンツは変更しない）
  File.open(NEWS_YAML_PATH, 'w') do |file|
    # 新規記事を先頭に追加
    new_items.reverse.each do |news|
      file.write("- title: '#{news[:title].gsub("'", "''")}'\n")
      file.write("  link: '#{news[:link]}'\n")
      file.write("  date: #{news[:date]}\n")
      file.write("\n")
    end

    # 既存のファイル内容をそのまま追加
    file.write(original_content)
  end

  puts "✅ #{new_items.size}件の新しいプレスリリースを追加しました:"
  new_items.each do |item|
    puts "  - #{item[:title]}"
    puts "    #{item[:link]}"
    puts "    #{item[:date]}"
  end
else
  puts "ℹ️  新しいプレスリリースはありません。"
end
