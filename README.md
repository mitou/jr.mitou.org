[![Test & Deploy](https://github.com/mitou/jr.mitou.org/actions/workflows/test.yml/badge.svg)](https://github.com/mitou/jr.mitou.org/actions/workflows/test.yml) [![pages-build-deployment](https://github.com/mitou/jr.mitou.org/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/mitou/jr.mitou.org/actions/workflows/pages/pages-build-deployment) [![CodeQL](https://github.com/mitou/jr.mitou.org/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/mitou/jr.mitou.org/actions/workflows/codeql-analysis.yml)

# [:mountain:](#readme) 未踏ジュニア公式Webサイト
[![Cover Photo of MITOU Junior](https://raw.githubusercontent.com/mitou/jr.mitou.org/main/assets/img/mitoujr_cover.png)](https://jr.mitou.org/)

本リポジトリは未踏ジュニア[公式Webサイト](https://jr.mitou.org/)の公開リポジトリです。   
本READMEでは、公式Webサイトの更新方法を目的別にまとめています。


<div id='how-to-update'><br></div>

## [:white_check_mark:](#how-to-update) ブラウザで情報を更新できます（共通）

どこを更新するにせよ**Webブラウザが一番簡単**だと思います...!! 😆

1. 下記の『oo を更新したい』を参考に、更新したい yml ファイルをクリックする
2. 画面右にある ✎ アイコン (Fork this project and edit this file) をクリックする
3. 気になる箇所を更新し、更新内容にタイトルと説明文を付け、Propose file change をクリックする
4. 更新内容を最終確認し、問題なければ Create pull request をクリックする

以上で完了です。提案された更新内容は運営チームによって再確認され、問題なければ提案された内容が反映されます。もし更新内容に不具合があっても運営側で気付いて修正するので、まずはお気軽に提案してみてください :wink:



<div id='how-to-update-projects'><br></div>

## [:rocket:](#how-to-update-projects) プロジェクト情報を更新したい

[`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) で[プロジェクト情報](https://jr.mitou.org/projects/)を更新できます。

更新できる情報は以下のとおりです。
```yml
- id: 他のIDと重複しないID。例: visible
  title: プロジェクトのタイトル。例：Visible ─ Webアクセシビリティー診断 & 修正提案ツール
  title_en: 上記タイトルの英語版。例：Visible ─ Web Accessibility Diagnosis & Correction Proposal Tool
  description: プロジェクト概要。例：VisibleはWebサイトのアクセシビリティーを診断するサービスです。...
  description_en: 上記概要の英語版。例：Visible is a service that diagnoses the accessibility of websites. ...
  thumbnail: サムネイル画像 (省略推奨)。画像は `/assets/img/projects/{#year}/#{id}.webp` に WebP 画像を配置する
             サムネイル画像がまだ準備中の場合は `thumbnail: tbu.webp` とご入力ください。
  promotion: プロジェクトの PV やデモ動画。YouTubeの「?v=xxx」の "xxx" 部分。無い場合はコメントアウト。(Gif にも対応)
  final: 未踏ジュニア成果報告会の発表動画。YouTubeの「?v=xxx」の "xxx" 部分。無い場合はコメントアウト。
  final_start: （任意）final の動画再生の開始時刻を指定できます。成果報告会の直後で使います。(例: 123)
  link: 公式サイトへのリンク（任意）。例: https://github.com/visible/visible
  tags: SNS用のハッシュタグ。例: [a11y, Web, アクセスビリティー]
  year: 採択プロジェクトの年度。例: 2020
  mentor_id: 「mentors.yml」にあるメンターIDを入力。例: yohei_yasukawa
  creator_ids:
  - 「cretors.yml」にあるクリエータID。例：igarashi_ryo
  - 複数名いる場合は、複数記述します
```

[&raquo; `projects.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml)


<div id='how-to-update-creators'><br></div>

## [:busts_in_silhouette:](#how-to-update-creators) クリエータ情報を更新したい

[`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) でクリエータ情報を更新できます。(※ 個別ページはありません)  

更新できる情報は以下のとおりです。

```yml
- id: クリエータのID。例: mihashi
  project_id: 開発したプロジェクトのID。例: utips
  mentor_id: 担当メンターのID。例: yohei_yasukawa
  name: クリエータの名前。例: 三橋 優希
  is_spc: スーパークリエータ認定について。例：true
  year: 何年度に採択されたプロジェクトか。例: 2018
```

[&raquo; `creators.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml)


<div id='how-to-update-mentors'><br></div>

## [:bust_in_silhouette:](#how-to-update-mentors) メンター情報を更新したい

[`_data/mentors.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/mentors.yml) で[メンター情報](https://jr.mitou.org/mentors/)を更新できます。

更新できる情報は以下のとおりです。

```yml
- id: メンターの ID (例: yohei_yasukawa)
  name:
    last: 名字。例：安川
    first: 名前。例: 要平
  img: /assets/img/mentors/ に置いたプロフィール画像のファイル名。例: yohei_yasukawa.png
  affiliation: 所属。例：YassLab 株式会社, 一般社団法人 CoderDojo Japan
  interested: こんな提案をお待ちしております。例：スクリプト言語やWebの特長を活かした…（略）
  bio: 略歴。aタグも使えるよ！例：<a href="https://yasslab.jp/">YassLab</a> 代表取締役…（略）
  facebook: Facebook ID。例：yasulab
  twitter: Twitter ID。例：yasulab
  github: GitHub ID。例：yasulab
  web: 上記以外のURL。例: https://yasslab.jp/
```

[&raquo; `mentors.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/mentors.yml)


<div id='how-to-update-news'><br></div>

## [:newspaper:](#how-to-update-news) お知らせを更新したい

[`_data/news.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/news.yml) で[お知らせ記事](https://jr.mitou.org/news)を更新できます。

更新できる情報は以下のとおりです。

```yml
- title: 記事タイトル (例：「テクノロジー×好きなこと」で“未踏”の領域に挑む10代のトップクリエーターたち (こどもとIT))
  url: 記事ページのURL (例：https://www.watch.impress.co.jp/kodomo_it/news/1219499.html)
  date: 公開日 (例：2019/11/20)
  lang: 英語なら en を追加 (省略可。日本語の記事なら不要)
```

[&raquo; `news.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/news.yml)


<div id='how-to-update-endorsements'><br></div>

## [:+1:](#how-to-update-endorsements) 推薦の声を更新したい

[`_data/endorsements.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/endorsements.yml) で[推薦の声](https://jr.mitou.org/#endorsements)を更新できます。

更新できる情報は以下のとおりです。

```yml
- name:  推薦者の氏名
  title: 推薦者の役職
  photo: 推薦者の写真
  quote: 推薦者の声
  sponsor_id: 推薦者が所属するスポンサーのID
```

[&raquo; `endorsements.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/endorsements.yml)


<div id='how-to-update-applications'><br></div>

## [:bookmark_tabs:](#how-to-update-applications) 提案書ページを更新したい

[`_data/applications.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/applications.yml) で[提案書ページ](https://jr.mitou.org/applications/)を更新できます。

更新できる情報は

- 提案書のサンプル https://jr.mitou.org/applications/#sample
- 提案書のコツ     https://jr.mitou.org/applications/#tips
- 採択者の体験談   https://jr.mitou.org/applications/#story

など多岐にわたります。

[&raquo; `applications.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/applications.yml)


<div id='how-to-build'><br></div>

## [:hammer_and_wrench:](#how-to-build) Webサイトの仕組みを改善したい

ローカル環境のブラウザで確認したい場合は、次の手順でローカルサーバーを立ち上げてください。

```shell
# Ruby が入っていることを確認
$ ruby --version

# 必要なライブラリをインストール
$ bundle install

# ローカルサーバーを立ち上げる
$ bundle exec jekyll server
```

無事にローカルサーバーが立ち上がったら [http://localhost:4000/](http://localhost:4000/) でアクセスできます。

具体的なデータの流れについては[スライド資料](https://speakerdeck.com/yasulab/how-ruby-boosts-young-innovative-creators-in-the-mitou-junior-program)からご確認ください。

[![How Ruby Boosts Young Innovative Creators In The MITOU Junior Program.](https://github.com/mitou/jr.mitou.org/blob/main/assets/img/mitoujr-on-jekyll.png?raw=true)](https://speakerdeck.com/yasulab/how-ruby-boosts-young-innovative-creators-in-the-mitou-junior-program)
_引用元: [テストも、国際化も！ 小中高生クリエータ支援プログラム『未踏ジュニア』を支える技術](https://speakerdeck.com/yasulab/how-ruby-boosts-young-innovative-creators-in-the-mitou-junior-program) ([&raquo; 動画で見る](https://youtu.be/Jo8lZkvC-No?t=17160))_


<div id='how-to-build-projects'><br></div>

### [:scroll:](#how-to-build-projects) プロジェクト個別ページを生成したい

[GitHub Actions で自動生成される](https://github.com/mitou/jr.mitou.org/blob/main/.github/workflows/test.yml)ため毎回実行する必要はありませんが、新しい年度の採択プロジェクトの新規掲載時に手動で生成・確認したい場面などあれば、下記コマンドでプロジェクト個別ページを生成してください。

```bash
# _data/project.yml からプロジェクト個別ページを生成する
$ bundle exec rake upsert_project_pages_by_data
```


<div id='how-to-build-tests'><br></div>

### [:robot:](#how-to-build-tests) リンク切れはテストで検知できます

内部リンク (アンカー含む) や `alt` 属性の空欄などは次のコマンドでテストできます。

```shell
# ローカルサーバーの立ち上げは不要です
$ bundle exec rake test
```

テスト内容の詳細は [Rakefile](https://github.com/mitou/jr.mitou.org/blob/main/Rakefile) をご参照ください。

上記テストは [GitHub Actions](https://github.com/mitou/jr.mitou.org/actions) 上でも動いています。GitHub Actionsで動かしているタスクは [.github/workflows](https://github.com/mitou/jr.mitou.org/tree/main/.github/workflows) ディレクトリから確認できます :eyes: :white_check_mark: 


<div id='how-to-publish-announcements'><br></div>

### [:loudspeaker:](#how-to-publish-announcements) 新年度の募集期間中 ⇄ 募集期間外のアナウンス切り替え

新年度の未踏ジュニア募集期間中 ⇄ 募集期間外の切り替えタイミングで、アナウンス表示を切り替えます。

1. [`index.md`](https://github.com/mitou/jr.mitou.org/blob/main/index.md): からトップページのアナウンスを切り替え
1. [`_includes/header.html`](https://github.com/mitou/jr.mitou.org/blob/main/_includes/header.html): からトップページ右上のボタンを切り替える
1. [`_includes/agenda.html`](https://github.com/mitou/jr.mitou.org/blob/main/_includes/agenda.html): から募集要項の現在のステータスを切り替える

詳細は以下の更新例のプルリクエストからご確認いただけます。

- :octocat: 2024年度の対応例: [#177](https://github.com/mitou/jr.mitou.org/pull/177)


<div id='how-to-publish-projects'><br></div>

### [:new:](#how-to-publish-projects) 新年度の採択プロジェクトを公開する

[成果報告会](https://jr.mitou.org/final)が近づいたら、以下の手順で新年度の採択プロジェクトを公開します。

1. [README 冒頭にある手順](#readme)に沿って [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) を追加する
1. [README 冒頭にある手順](#readme)に沿って [`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) を追加する (サムネ画像以外)
1. 所定のフォルダにあるサムネイル画像を `/assets/img/projects/20xx` に配置し、[`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) に追加する (デフォルトでは `#{project.id}.webp` を参照)
1. 上記の情報をベースに、新年度の統計情報を [`_data/stats.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/stats.yml) に追加する
1. トップページ ([`index.md`](https://github.com/mitou/jr.mitou.org/blob/main/index.md?plain=1)) と成果報告会ページ ([`final.md`](https://github.com/mitou/jr.mitou.org/blob/main/final.md?plain=1)) で表示するプロジェクトを新年度に更新する
1. [`/projects`](https://github.com/mitou/jr.mitou.org/blob/main/projects) ディレクトリに `20xx.md` ファイルと `20xx.json` ファイルを追加する
1. コメントアウトされているトップページ ([`index.md`](https://github.com/mitou/jr.mitou.org/blob/main/index.md?plain=1)) のアナウンス情報を更新する
1. 成果報告会ページ ([`final.md`](https://github.com/mitou/jr.mitou.org/blob/main/final.md?plain=1) のコメント情報にしたがってサムネイル情報などを更新する
1. 成果報告会が終わったら [`_data/finals.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/finals.md?plain=1) を更新する

ローカル環境で生成結果を確認したい場合は、上記セクション「[Webサイトの仕組みを改善したい](https://github.com/mitou/jr.mitou.org#how-to-build)」の手順に沿って進めてください。

- :octocat: 2025年度の対応例: [#233](https://github.com/mitou/jr.mitou.org/pull/233)
- :octocat: 2024年度の対応例: [#195](https://github.com/mitou/jr.mitou.org/pull/195)
- :octocat: 2023年度の対応例: [#144](https://github.com/mitou/jr.mitou.org/pull/144)


<div id='how-to-publish-spc'><br></div>

### [:trophy:](#how-to-publish-spc) スパクリ認定を公開する

[スパクリ認定](https://jr.mitou.org/about#supports-awarding)の結果が出たら、以下の手順で公開します。

1. [README 冒頭にある手順](#readme)に沿って [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) の `is_spc: true` を追加する
1. 上記の結果をベースに、スパクリの統計情報を [`_data/stats.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/stats.yml) に追加する
1. プレスがあれば、プレス情報を[お知らせに追記](#how-to-update-news)する
1. 翌年度の開催が決定していれば、次回の募集要項（予定）を追加する ([追加例](https://github.com/mitou/jr.mitou.org/commit/7979630))
1. 翌年度の開催が決定していれば、古くなった応募の手引きを更新する ([更新例](https://github.com/mitou/jr.mitou.org/commit/2c3243be))

- :octocat: 2025年度の対応例: [#244](https://github.com/mitou/jr.mitou.org/pull/244) / [プレス](https://prtimes.jp/main/html/rd/p/000000018.000022934.html) / [SNS](https://x.com/mitoujr/status/1995072576109088791)
- :octocat: 2024年度の対応例: [#204](https://github.com/mitou/jr.mitou.org/pull/204) / [プレス](https://prtimes.jp/main/html/rd/p/000000016.000022934.html) / [SNS](https://x.com/mitoujr/status/1861729995498151982)
- :octocat: 2023年度の対応例: [#166](https://github.com/mitou/jr.mitou.org/pull/166) / [プレス](https://prtimes.jp/main/html/rd/p/000000014.000022934.html) / [SNS](https://x.com/mitoujr/status/1739489291720651229)


<div id='how-to-publish-interview'><br></div>

### [:microphone:](#how-to-publish-interview) インタビュー記事を公開する

[修了生インタビュー](https://jr.mitou.org/interviews)の記事が出来たら、以下の手順で公開できます。

1. [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) ファイルを開き、インタビューしたクリエータの ID を確認する
1. [`interviews`](https://github.com/mitou/jr.mitou.org/tree/main/interviews) ディレクトリに行き、`{{ クリエータID }}.md` ファイルを作成し、インタビュー記事を転記する
1. インタビュー記事の内容に問題がなければ、[お知らせに追記](#how-to-update-news)して SNS に投稿する ([投稿例](https://twitter.com/mitoujr/status/1775724225346912470))

:octocat: 対応例: [Add MITOU Junior Interview: `@alicelavander` (#175)](https://github.com/mitou/jr.mitou.org/pull/175)  


<div id='how-to-publish-i18n'><br></div>

### [:globe_with_meridians:](#how-to-publish-i18n) 英語版 PJ ページを公開する

**[成果報告会](https://jr.mitou.org/final)が終わったら** [各 PJ の英語ページ](https://jr.mitou.org/english/projects/)を、以下の手順で公開できます。

1. LLM ([`_tasks/convert_ja2en_by_llm.rb`](https://github.com/mitou/jr.mitou.org/blob/main/_tasks/convert_ja2en_by_llm.rb)) を使って既存の日本語タイトル/概要文から英文の草案を作成する: `bundle exec rake convert_ja2en_by_llm`
1. 生成した英文の草案を内部ツール (Cosense) で共有し、有志にレビューしてもらう
1. レビューが大体終わったら英文を [`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) のカラムに英文を追加する
1. 追加したら[ページ生成タスク](#how-to-build-projects)を実行し、`/english/projects` ページから結果を確認する
1. [`english/index.md`](https://github.com/mitou/jr.mitou.org/blob/main/english/index.md) と [`english/projects/index.md`](https://github.com/mitou/jr.mitou.org/blob/main/english/projects/index.md) にある `latest_en_year` の値を最新年度に更新する
1. 問題なさそうであればリリースし、[お知らせに追記](#how-to-update-news)して SNS で周知する 🌐✨

- :octocat: 2025年度の対応例: [#240](https://github.com/mitou/jr.mitou.org/pull/240) / [SNS](https://x.com/mitoujr/status/1989902584602321322)
- :octocat: 2024年度の対応例: [#187](https://github.com/mitou/jr.mitou.org/pull/187) / [SNS](https://x.com/mitoujr/status/1827919186263523689)



<div id='license'><br></div>

## [:two_hearts:](#license) 使用素材、著作物、ライセンスについて

- [Font Awesome](https://fontawesome.com/license/) - :copyright: Fonticons, Inc.
- [Twemoji](https://twemoji.twitter.com/) - :copyright: 2020 Twitter, Inc and other contributors.

[各プロジェクト](https://jr.mitou.org/projects/)のカバー画像やデモ動画、および説明文などは当該プロジェクトのクリエータの著作物となります。その他のロゴ画像やプロフィール画像、および説明文なども同様に、各著作者の著作物となります。

上記の著作物を除く、Ruby のソースコード ([`_tasks/*.rb`](https://github.com/mitou/jr.mitou.org/tree/main/_tasks), [`Gemfile`](https://github.com/mitou/jr.mitou.org/blob/main/Gemfile), [`Rakefile`](https://github.com/mitou/jr.mitou.org/blob/main/Rakefile) など) や、各種設定ファイル ([`_config.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_config.yml), [`.github/workflows/*.yml`](https://github.com/mitou/jr.mitou.org/tree/main/.github/workflows) など) については、以下のライセンス (MIT) のもとで自由にご活用いただけます。

<details>
  <summary><strong>The MIT License</strong> (日本語訳付き)</summary>
  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:<br>
  <br>
  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.<br>
  <br>
  THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.<br>
  <br>
  <hr><br>
  <strong>日本語訳</strong><br>
  <br>
  以下に定める条件に従い、本ソフトウェアおよび関連文書のファイル（以下「ソフトウェア」）の複製を取得するすべての人に対し、ソフトウェアを無制限に扱うことを無償で許可します。これには、ソフトウェアの複製を使用、複写、変更、結合、掲載、頒布、サブライセンス、および/または販売する権利、およびソフトウェアを提供する相手に同じことを許可する権利も無制限に含まれます。<br>
  <br>
  上記の著作権表示および本許諾表示を、ソフトウェアのすべての複製または重要な部分に記載するものとします。<br>
  <br>
  ソフトウェアは「現状のまま」で、明示であるか暗黙であるかを問わず、何らの保証もなく提供されます。ここでいう保証とは、商品性、特定の目的への適合性、および権利非侵害についての保証も含みますが、それに限定されるものではありません。 作者または著作権者は、契約行為、不法行為、またはそれ以外であろうと、ソフトウェアに起因または関連し、あるいはソフトウェアの使用またはその他の扱いによって生じる一切の請求、損害、その他の義務について何らの責任も負わないものとします。
</details>


<div id='credits'><br></div>

## [:copyright:](#credits) クレジット

Copyright &copy; [未踏社団](https://jr.mitou.org/#organizer) [未踏ジュニア](https://jr.mitou.org/)実行委員会

[![未踏社団のロゴ画像](https://raw.githubusercontent.com/mitou/jr.mitou.org/refs/heads/main/assets/img/mitou-foundation.webp)](https://jr.mitou.org/#organizer)
