[![Test & Deploy](https://github.com/mitou/jr.mitou.org/workflows/Test%20&%20Deploy/badge.svg)](https://github.com/mitou/jr.mitou.org/actions?query=workflow%3A%22Test+%26+Deploy%22)

# 未踏ジュニア公式Webサイト
[![Cover Photo of Mitou Junior](https://raw.githubusercontent.com/mitou/jr.mitou.org/master/assets/img/mitoujr_cover.png)](https://jr.mitou.org/)

本リポジトリは未踏ジュニア[公式Webサイト](https://jr.mitou.org/)の公開リポジトリです。   
本READMEでは、当該Webサイトの更新方法を目的別にまとめています。

## :white_check_mark: （共通）ブラウザで情報修正を提案できます

どの箇所を更新するにせよ、Webブラウザが一番簡単だと思います...!! 😆

1. 下記の『更新方法』を参考に、修正を提案したい yml ファイルをクリックする
2. 画面右にある ✎ アイコン (Fork this project and edit this file) をクリックする
3. 気になる箇所を修正し、修正内容にタイトルと説明文を付け、Propose file change をクリックする
4. 修正内容を確認し、問題なければ Create pull request をクリックする

以上で完了です。提案された修正内容は運営チームによって再確認され、問題なければ提案された内容が反映されます。もし修正内容に不具合があっても運営側で気付いて修正するので、まずはお気軽に提案してみてください ;)


## :bookmark_tabs: メディア掲載を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/master/_data) 内の [`media.yml`](https://github.com/mitou/jr.mitou.org/blob/master/_data/media.yml) にメディア掲載記事の情報があります。  
上が新しい情報になるように記述するとよいでしょう。

それぞれの項目は以下のような内容です。
```yml
- title: 記事タイトル (例：「テクノロジー×好きなこと」で“未踏”の領域に挑む10代のトップクリエーターたち (こどもとIT))
  url: 記事ページのURL (例：https://www.watch.impress.co.jp/kodomo_it/news/1219499.html)
  date: 公開日 (例：2019/11/20)
```

## :rocket: プロジェクト情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/master/_data) 内の [`projects.yml`](https://github.com/mitou/jr.mitou.org/blob/master/_data/projects.yml) にプロジェクトの情報があります。

それぞれの項目は以下のような内容です。
```yml
- id: 他のIDと重複しないID。例: utips
  title: プロジェクトのタイトル。例：UTIPS - 家事の情報共有サービス
  description: プロジェクト概要。例：家事のやり方を共有するWEBサービスを...
  thumbnail: サムネイル画像。まだ無い場合は「tbu.png」を入力
  youtube: YouTube動画。「?v=xxxx」の "xxxx" 部分。まだ無い場合は「TBD」を入力
  year: 採択プロジェクトの年度。例: 2018
  link: 公式サイトへのリンク（任意）。例: https://visi.dev/
  mentor_id: 「mentors.yml」にあるメンターIDを入力。例: yasukawa_yohei
  creator_ids:
  - 「cretors.yml」にあるクリエータID。例：mihashi
  - 複数名いる場合は、複数記述します
```

## :busts_in_silhouette: クリエータ情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/master/_data) 内の [`creators.yml`](https://github.com/mitou/jr.mitou.org/blob/master/_data/creators.yml) にクリエーターの情報があります。  

それぞれの項目は以下のような内容です。
```yml
- id: クリエータのID。例: mihashi
  project_id: 開発したプロジェクトのID。例: utips
  mentor_id: 担当メンターのID。例: yasukawa_yohei`
  name: クリエータの名前。例: 三橋 優希
  is_spc: スーパークリエータ認定について。例：true
  year: 何年度に採択されたプロジェクトか。例: 2018
```

## :bust_in_silhouette: メンター情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/master/_data) 内の [`mentors.yml`](https://github.com/mitou/jr.mitou.org/blob/master/_data/mentors.yml) にメンターの情報があります。 

それぞれの項目は以下のような内容です。
```yml
- id: メンターの ID (例: yasukawa_yohei)
  name:
    last: 名字。例：安川
    first: 名前。例: 要平
  img: `/assets/img/mentors/` に置いたプロフィール画像のファイル名。例: yasukawa.png
  affiliation: 所属。例：YassLab 株式会社, 一般社団法人 CoderDojo Japan
  interested: こんな提案をお待ちしております。例：スクリプト言語やWebの特長を活かした…（略）
  bio: 略歴。aタグも使えるよ！例：<a href="https://yasslab.jp/">YassLab</a> 代表取締役…（略）
  facebook: Facebook ID。例：yasulab
  twitter: Twitter ID。例：yasulab
  github: GitHub ID。例：yasulab
  web: 上記以外のURL。例: https://yasslab.jp/
```

## :hammer_and_wrench: Webサイトの仕組みを改善したい

ローカル環境のブラウザで確認したい場合は、
次の手順でローカルサーバーを立ち上げてください。

```shell
# Ruby が入っていることを確認
$ ruby --version

# 必要なライブラリをインストール
$ bundle install

# ローカルサーバーを立ち上げる
$ bundle exec jekyll server
```

無事にローカルサーバーが立ち上がったら、
[http://localhost:4000/](http://localhost:4000/) でアクセスできます。

### :robot: リンク切れはテストで検知できます

内部リンク (アンカー含む) や `alt` 属性の空欄などは次のコマンドでテストできます。

```shell
# ローカルサーバーの立ち上げは不要です
$ bundle exec rake test
```

テスト内容の詳細は [Rakefile](https://github.com/mitou/jr.mitou.org/blob/master/Rakefile) をご参照ください。

上記テストは [GitHub Actions](https://github.com/mitou/jr.mitou.org/actions) 上でも動いています。GitHub Actionsで動かしているタスクは [.github/workflows](https://github.com/mitou/jr.mitou.org/tree/master/.github/workflows) ディレクトリから確認できます :eyes: :white_check_mark: 


## :copyright: クレジット

Copyright &copy; 2016-2021 [Mitou Foundation](https://www.mitou.org/)   
[未踏ジュニア](https://jr.mitou.org/)運営チーム
