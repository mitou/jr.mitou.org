// 英語のページに埋め込んだ YouTube で、日本語の自動生成字幕を英語に自動翻訳して表示する。
//
// 埋め込みのプレイヤーでは、設定の「自動翻訳」の一覧に English が出てこない（2026年11月に確認）。
// YouTube の視聴ページでは選べるので、IFrame Player API の postMessage で翻訳先を直接指定する。
// setOption('captions', ...) は文書化されていない。効かなくなった時に備えて、
// 各ページの「Watch on YouTube」から字幕を選ぶ案内は残している。
(function () {
  var ORIGIN = 'https://www.youtube.com';
  var TRACK = { languageCode: 'ja', kind: 'asr', translationLanguage: { languageCode: 'en' } };

  document.querySelectorAll('iframe[data-subtitles="en"]').forEach(function (frame, index) {
    var id = 'youtube-en-' + index;
    var heard = false;
    var applied = false;

    function post(message) {
      if (frame.contentWindow) frame.contentWindow.postMessage(JSON.stringify(message), ORIGIN);
    }

    // プレイヤーは listening を受け取ってから状態を送り返す。準備ができるまで送り直す
    var tries = 0;
    var timer = setInterval(function () {
      if (heard || ++tries > 40) return clearInterval(timer);
      post({ event: 'listening', id: id });
    }, 500);

    window.addEventListener('message', function (event) {
      if (event.origin !== ORIGIN || event.source !== frame.contentWindow) return;
      heard = true;

      var data;
      try { data = JSON.parse(event.data); } catch (e) { return; }

      var playing = (data.event === 'onStateChange' && data.info === 1) ||
                    (data.event === 'infoDelivery' && data.info && data.info.playerState === 1);
      if (!playing || applied) return;

      // 字幕は再生が始まってから読み込まれるので、最初の再生で 1 回だけ指定する
      applied = true;
      post({ event: 'command', func: 'loadModule', args: ['captions'], id: id });
      post({ event: 'command', func: 'setOption', args: ['captions', 'track', TRACK], id: id });
    });
  });
})();
