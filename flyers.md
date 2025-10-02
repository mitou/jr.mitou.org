---
layout: post
title: チラシ配布のお願い
description: 未踏ジュニアのチラシ配布にご協力いただける学校やスクール、CoderDojo などの方々を探しています。ご協力いただける場合は本ページ内にあるフォームよりご請求いただけると幸いです。
redirect_from:
  - /flyer
---

{% assign flyer = site.data.flyers | sort_by: year | first %}

<p style='padding: 50px 0px 40px;'>
  未踏ジュニアのチラシ配布にご協力いただける学校やスクール、CoderDojo などの方々を探しています。<br>
  <br>
  <!--ご協力いただける場合は<a href='/assets/img/flyers/{{ flyer["year"] }}.pdf'>PDF から印刷</a>または<a href='#form'>下記フォームよりご請求</a>いただけると幸いです。-->
  ご協力いただける場合は、<a href='#apply'>下記フォームよりチラシ送付先をご入力</a>いただけると幸いです。
  <!--<a href='#apply' class='button'>チラシ配布に協力する</a>-->
</p>


## [<i class='fas fa-scroll green'></i>](#sample) チラシのサンプル {#sample}

<!--<div class='note'>以下は2024年度のチラシです。2025年度のチラシとは内容が異なる点にご注意ください。</div>-->
<!--以下は2024年度のサンプルです。実際のチラシは年度ごとに異なります。-->

<div id='sample' class='text-center' style='margin-top: 50px;'>
  <a href='/assets/img/flyers/{{ flyer["year"] }}.pdf'>
    <img class='flyer-sample lazyload' loading='lazy'
         src='/assets/img/spinner.svg' data-src='/assets/img/flyers/{{ flyer["year"] }}.webp'
         alt='未踏ジュニアのチラシ（サンプル）' />
  </a>
  <small>※
    上記画像を
    <span class='ignore-pc'>"タップ"</span>
    <span class='ignore-sp'>"クリック"</span>
    すると、<br class='ignore-pc'>高解像度版 (PDF) をダウンロードできます。<br>
  </small>
</div>



## [<i class='fas fa-mailbox green'></i>](#apply) チラシ配布に協力する {#apply}

<div class='iframe-form' style='margin-top: 50px;'>
  <iframe src='https://docs.google.com/forms/d/e/{{ flyer["form_id"] }}/viewform?embedded=true' width='100%' class='iframe-form' frameborder='0' marginheight='0' marginwidth='0'>読み込み中...</iframe>
</div>

<div class="note"><small>「送信」ボタン押下後、画面が真っ白になったらページ上部にスクロールしてください。</small></div>

<div class='flex'>
  <a class='button' target='_blank' rel='noopener'
      href='https://twitter.com/hashtag/未踏ジュニア?f=live'>ハッシュタグを見る</a>
  <a class='button' target='_blank' rel='noopener'
      href='https://twitter.com/intent/tweet?hashtags=未踏ジュニア&url=https://jr.mitou.org/flyers&lang=ja&related=mitoujr'>ツイートする</a>
</div>

<style>
  .flyer-sample{
    width:  70%;
    margin: 10px auto;
    text-align: center;
    display: block;
  }
  @media screen and (max-width: 600px){
    .flyer-sample{
      width:  100%;
      margin: 10px auto;
      text-align: center;
      display: block;
    }
  }
  
  .iframe-form{
    margin: auto;
    display: block;
    height: 2200px;
  }
  @media screen and (max-width: 600px){
    .iframe-form{
      margin-left: -23px;
      height: 2400px;
      width:  113%;
    }
  }
</style>
