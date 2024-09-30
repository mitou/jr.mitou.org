[![Test & Deploy](https://github.com/mitou/jr.mitou.org/workflows/Test%20&%20Deploy/badge.svg)](https://github.com/mitou/jr.mitou.org/actions?query=workflow%3A%22Test+%26+Deploy%22)

# 未踏ジュニア公式Webサイト
[![Cover Photo of MITOU Junior](https://raw.githubusercontent.com/mitou/jr.mitou.org/main/assets/img/mitoujr_cover.png)](https://jr.mitou.org/)

本リポジトリは未踏ジュニア[公式Webサイト](https://jr.mitou.org/)の公開リポジトリです。   
本READMEでは、公式Webサイトの更新方法を目的別にまとめています。


<div id='how-to-update'><br></div>

## :white_check_mark: ブラウザで情報を更新できます（共通）

どこを更新するにせよ**Webブラウザが一番簡単**だと思います...!! 😆

1. 下記の『oo を更新したい』を参考に、更新したい yml ファイルをクリックする
2. 画面右にある ✎ アイコン (Fork this project and edit this file) をクリックする
3. 気になる箇所を更新し、更新内容にタイトルと説明文を付け、Propose file change をクリックする
4. 更新内容を最終確認し、問題なければ Create pull request をクリックする

以上で完了です。提案された更新内容は運営チームによって再確認され、問題なければ提案された内容が反映されます。もし更新内容に不具合があっても運営側で気付いて修正するので、まずはお気軽に提案してみてください :wink:



<div id='how-to-update-projects'><br></div>

## :rocket: プロジェクト情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/main/_data) 内の [`projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) にプロジェクトの情報があります。

それぞれの項目は以下のような内容です。
```yml
- id: 他のIDと重複しないID。例: visible
  title: プロジェクトのタイトル。例：Visible ─ Webアクセシビリティー診断 & 修正提案ツール
  title_en: 上記タイトルの英語版。例：Visible ─ Web Accessibility Diagnosis & Correction Proposal Tool
  description: プロジェクト概要。例：VisibleはWebサイトのアクセシビリティーを診断するサービスです。...
  description_en: 上記概要の英語版。例：Visible is a service that diagnoses the accessibility of websites. ...
  thumbnail: サムネイル画像。デフォルトでは `/assets/img/projects/{#year}/#{id}.webp` にある画像を参照
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

## :busts_in_silhouette: クリエータ情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/main/_data) 内の [`creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) にクリエーターの情報があります。  

それぞれの項目は以下のような内容です。
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

## :bust_in_silhouette: メンター情報を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/main/_data) 内の [`mentors.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/mentors.yml) にメンターの情報があります。 

それぞれの項目は以下のような内容です。
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


<div id='how-to-update-media'><br></div>

## :bookmark_tabs: メディア掲載を更新したい
[`_data`](https://github.com/mitou/jr.mitou.org/tree/main/_data) 内の [`media.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/media.yml) にメディア掲載記事の情報があります。  
上が新しい情報になるように記述するとよいでしょう。

それぞれの項目は以下のような内容です。
```yml
- title: 記事タイトル (例：「テクノロジー×好きなこと」で“未踏”の領域に挑む10代のトップクリエーターたち (こどもとIT))
  url: 記事ページのURL (例：https://www.watch.impress.co.jp/kodomo_it/news/1219499.html)
  date: 公開日 (例：2019/11/20)
```

[&raquo; `media.yml` を更新する](https://github.com/mitou/jr.mitou.org/blob/main/_data/media.yml)


<div id='how-to-build'><br></div>

## :hammer_and_wrench: Webサイトの仕組みを改善したい

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

具体的なデータの流れについては [note 記事](https://note.com/yasslab/n/nf5837dabdf8c)からご確認ください。

[![MITOU Junior on Jekyll](https://github.com/mitou/jr.mitou.org/blob/main/assets/img/mitoujr-on-jekyll.png?raw=true)](https://note.com/yasslab/n/nf5837dabdf8c)
【引用元：[機材・教材提供スポンサー - Railsチュートリアル](https://jr.mitou.org/#sponsor-inkind)】


<div id='how-to-build-generators'><br></div>

### :scroll: プロジェクト個別ページを生成したい

[GitHub Actions で自動生成される](https://github.com/mitou/jr.mitou.org/blob/main/.github/workflows/test.yml)ため毎回実行する必要はありませんが、新しい年度の採択プロジェクトの新規掲載時に手動で生成・確認したい場面などあれば、下記コマンドでプロジェクト個別ページを生成してください。

```bash
# _data/project.yml からプロジェクト個別ページを生成する
$ bundle exec rake upsert_project_pages_by_data
```


<div id='how-to-build-tests'><br></div>

### :robot: リンク切れはテストで検知できます

内部リンク (アンカー含む) や `alt` 属性の空欄などは次のコマンドでテストできます。

```shell
# ローカルサーバーの立ち上げは不要です
$ bundle exec rake test
```

テスト内容の詳細は [Rakefile](https://github.com/mitou/jr.mitou.org/blob/main/Rakefile) をご参照ください。

上記テストは [GitHub Actions](https://github.com/mitou/jr.mitou.org/actions) 上でも動いています。GitHub Actionsで動かしているタスクは [.github/workflows](https://github.com/mitou/jr.mitou.org/tree/main/.github/workflows) ディレクトリから確認できます :eyes: :white_check_mark: 


<div id='how-to-build-announcements'><br></div>

### :loudspeaker: 新年度の募集期間中 ⇄ 募集期間外のアナウンス切り替え

新年度の未踏ジュニア募集期間中 ⇄ 募集期間外の切り替えタイミングで、アナウンス表示を切り替えます。

1. `index.md`: からトップページのアナウンスを切り替え
1. `_includes/header.html`: からトップページ右上のボタンを切り替える
1. `_includes/agenda.html`: から募集要項の現在のステータスを切り替える

詳細は以下の更新例のプルリクエストからご確認いただけます。

- 更新作業の例:
  - :octocat: [2024年度の募集アナウンス終了時のPR (#177) - GitHub](https://github.com/mitou/jr.mitou.org/pull/177)


<div id='how-to-build-projects'><br></div>

### :new: 新年度の採択プロジェクトを公開する

[成果報告会](https://jr.mitou.org/final)が近づいたら、以下の手順で新年度の採択プロジェクトを公開します。

1. [README 冒頭にある手順](https://github.com/mitou/jr.mitou.org#readme)に沿って [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) を追加する
1. [README 冒頭にある手順](https://github.com/mitou/jr.mitou.org#readme)に沿って [`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) を追加する (サムネ画像以外)
1. 所定のフォルダにあるサムネイル画像を `/assets/img/projects/20xx` に配置し、[`_data/projects.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/projects.yml) に追加する (デフォルトでは `#{project.id}.webp` を参照)
1. 上記の情報をベースに、新年度の統計情報を [`_data/stats.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/stats.yml) に追加する
1. トップページ ([`index.md`](https://github.com/mitou/jr.mitou.org/blob/main/index.md?plain=1)) と成果報告会ページ ([`final.md`](https://github.com/mitou/jr.mitou.org/blob/main/final.md?plain=1)) で表示するプロジェクトを新年度に更新する
1. [`/projects`](https://github.com/mitou/jr.mitou.org/blob/main/projects) ディレクトリに `20xx.md` ファイルと `20xx.json` ファイルを追加する
1. コメントアウトされているトップページ ([`index.md`](https://github.com/mitou/jr.mitou.org/blob/main/index.md?plain=1)) のアナウンス情報を更新する
1. 成果報告会ページ ([`final.md`]((https://github.com/mitou/jr.mitou.org/blob/main/final.md?plain=1))) のコメント情報にしたがってサムネイル情報などを更新する

ローカル環境で生成結果を確認したい場合は、上記セクション「[Webサイトの仕組みを改善したい](https://github.com/mitou/jr.mitou.org#hammer_and_wrench-web%E3%82%B5%E3%82%A4%E3%83%88%E3%81%AE%E4%BB%95%E7%B5%84%E3%81%BF%E3%82%92%E6%94%B9%E5%96%84%E3%81%97%E3%81%9F%E3%81%84)」の手順に沿って進めてください。

- 更新作業の例:
  - :octocat: [2024年度の採択プロジェクト公開時のPR (#195) - GitHub](https://github.com/mitou/jr.mitou.org/pull/195)
  - :octocat: [2023年度の採択プロジェクト公開時のPR (#144) - GitHub](https://github.com/mitou/jr.mitou.org/pull/144)


<div id='how-to-build-spc'><br></div>

### :trophy: スパクリ認定を公開する

[スパクリ認定](https://jr.mitou.org/about#supports-awarding)の結果が出たら、以下の手順で公開します。

1. [README 冒頭にある手順](https://github.com/mitou/jr.mitou.org#readme)に沿って [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) の `is_spc: true` を追加する
1. 上記の結果をベースに、スパクリの統計情報を [`_data/stats.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/stats.yml) に追加する
1. プレスがあれば、プレス情報を [`_data/media.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/media.yml) に追加する
1. 翌年度の開催が決定していれば、次回の募集要項（予定）を追加する ([追加例](https://github.com/mitou/jr.mitou.org/commit/7979630))
1. 翌年度の開催が決定していれば、古くなった応募の手引きを更新する ([更新例](https://github.com/mitou/jr.mitou.org/commit/2c3243be))

:octocat: プルリクエストの例: [2023年度のスパクリ公開時のプルリク (#166) - GitHub](https://github.com/mitou/jr.mitou.org/pull/166)  
:newspaper: プレスリリースの例: [2023年度のスパクリ公開時のプレス - PR TIMES](https://prtimes.jp/main/html/rd/p/000000014.000022934.html) ([SNS投稿](https://twitter.com/mitoujr/status/1739489291720651229))


<div id='how-to-build-interview'><br></div>

### :microphone: インタビュー記事を公開する

[修了生インタビュー](https://jr.mitou.org/interviews)の記事が出来たら、以下の手順で公開できます。

1. [`_data/creators.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_data/creators.yml) ファイルを開き、インタビューしたクリエータの ID を確認する
1. [`interviews`](https://github.com/mitou/jr.mitou.org/tree/main/interviews) ディレクトリに行き、`{{ クリエータID }}.md` ファイルを作成し、インタビュー記事を転記する
1. インタビュー記事の内容に問題がなければ、公開して SNS に投稿する ([投稿例](https://twitter.com/mitoujr/status/1775724225346912470))

:octocat: プルリクエストの例: [Add MITOU Junior Interview: `@alicelavander` (#175) - GitHub](https://github.com/mitou/jr.mitou.org/pull/175)  


<div id='license'><br></div>

## :two_hearts: 使用素材、著作物、ライセンスについて

- [Font Awesome](https://fontawesome.com/license/) - :copyright: Fonticons, Inc.
- [Twemoji](https://twemoji.twitter.com/) - :copyright: 2020 Twitter, Inc and other contributors.

[各プロジェクト](https://jr.mitou.org/projects/)のカバー画像やデモ動画、および説明文などは当該プロジェクトのクリエータの著作物となります。その他のロゴ画像やプロフィール画像、および説明文なども同様に、各著作者の著作物となります。

上記の著作物を除く、Ruby のソースコード ([`tasks/*.rb`](https://github.com/mitou/jr.mitou.org/tree/main/tasks), [`Gemfile`](https://github.com/mitou/jr.mitou.org/blob/main/Gemfile), [`Rakefile`](https://github.com/mitou/jr.mitou.org/blob/main/Rakefile) など) や、各種設定ファイル ([`_config.yml`](https://github.com/mitou/jr.mitou.org/blob/main/_config.yml), [`.github/workflows/*.yml`](https://github.com/mitou/jr.mitou.org/tree/main/.github/workflows) など) については、以下のライセンス (MIT) のもとで自由にご活用いただけます。

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


## :copyright: クレジット

Copyright &copy; [未踏社団](https://jr.mitou.org/#organizer) [未踏ジュニア](https://jr.mitou.org/)実行委員会
