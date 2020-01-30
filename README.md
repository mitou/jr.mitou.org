[![Build Status](https://travis-ci.org/mitou/jr.mitou.org.svg?branch=master)](https://travis-ci.org/mitou/jr.mitou.org)

# 未踏ジュニア
[![Cover Photo of Mitou Junior](/assets/img/mitoujr_cover.png)](https://jr.mitou.org/)

## 更新の方法
### メディア掲載記事
[`_data` 内の `articles.yml`](https://github.com/yuki384/new-mitoujr/blob/master/_data/articles.yml) にメディア掲載記事の情報があります。  
上が新しい情報になるように記述するとよいでしょう。

それぞれの項目は以下のような内容です。
```yml
- title: 記事タイトル（例：「テクノロジー×好きなこと」で“未踏”の領域に挑む10代のトップクリエーターたち (こどもとIT)）
  url: 記事ページのURL（例：https://www.watch.impress.co.jp/kodomo_it/news/1219499.html）
  date: 公開日時（例：2019/11/20）
 ```

### プロジェクトの情報
[`_data` 内の `projects.yml`](https://github.com/yuki384/new-mitoujr/blob/master/_data/projects.yml) にプロジェクト・クリエーターの情報があります。  
`ninteen:` の下に記述されているものは2019年度です。年度ごとに分かれています。  

それぞれの項目は以下のような内容です。
```yml
  - title: プロジェクトのタイトル（例：UTIPS - 家事の情報共有サービス）
    name: 名前とPM（例：三橋 優希 (安川PM)）
    description: 概要（例：家事のやり方を共有するWEBサービスを…（略））
    id: リンクを貼るためのid。プロジェクトリーダーの苗字英語表記。（例：mihashi）
    youtube: YouTube上の発表動画ID。www.youtube.com/watch?v=○○○○の"○○○○"部分。（例：t8kpeE_sNB0）
    sp-creator: スーパークリエータかどうか。（例：true）
```

### メンターの情報
[`_data` 内の `pm.yml`](https://github.com/yuki384/new-mitoujr/blob/master/_data/pm.yml) にメンターの情報があります。 

それぞれの項目は以下のような内容です。
```yml
- name: 名前（例：安川 要平）
  img: 顔写真のパス
  affiliation: 所属（例：YassLab 株式会社, 一般社団法人 CoderDojo Japan）
  interested: こんな提案をお待ちしております（例：スクリプト言語やWebの特長を活かした…（略））
  bio: 略歴。aタグが使える。（例：<a href="https://yasslab.jp/">YassLab</a> 代表取締役…（略））
  facebook: facebook ID。（例：yasulab）
  twitter: twitter ID。（例：yasulab）
  github: github ID。（例：yasulab）
  web: サイトとか。
```
 
## クレジット

Copyright &copy; since 2016
一般社団法人 [未踏](https://www.mitou.org/)
[未踏ジュニア](https://jr.mitou.org/)実行委員会 
