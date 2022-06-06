/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "404.html",
    "revision": "3af31cd0f455bfb56958f96ed6cd45ab"
  },
  {
    "url": "assets/css/0.styles.fa036783.css",
    "revision": "a7869e0ef2c1732fd6471ec68094674d"
  },
  {
    "url": "assets/img/search.83621669.svg",
    "revision": "83621669651b9a3d4bf64d1a670ad856"
  },
  {
    "url": "assets/js/10.17dc7fc0.js",
    "revision": "235105471074525d1d2bdc9d1186bdf9"
  },
  {
    "url": "assets/js/11.32ba2003.js",
    "revision": "b012f550c9920cce59792eeb20924fd7"
  },
  {
    "url": "assets/js/12.f4d805b2.js",
    "revision": "45a0f424731485e8513dbf3f52453817"
  },
  {
    "url": "assets/js/13.b369ab95.js",
    "revision": "ff30346a2ae0704d1a7791e2ab06f152"
  },
  {
    "url": "assets/js/14.4fd45c58.js",
    "revision": "2826a1bfcbbdf9810af87b4f633a8390"
  },
  {
    "url": "assets/js/15.29bd1343.js",
    "revision": "7865089642257cab9e6eadcafc9cef2d"
  },
  {
    "url": "assets/js/16.d9cfeece.js",
    "revision": "c4198733324dbed8797b6c14c8c0fb70"
  },
  {
    "url": "assets/js/17.9700b484.js",
    "revision": "ccfdb2ccfa4b93a536834ff33677b047"
  },
  {
    "url": "assets/js/18.f75afb7c.js",
    "revision": "fcbed5f62629e3ea9e9db0c45871bf82"
  },
  {
    "url": "assets/js/19.aebefa05.js",
    "revision": "61a0efe9ad2a0b831e70315ea4cae3ba"
  },
  {
    "url": "assets/js/2.440c787e.js",
    "revision": "613eef12571b272390e4d84a5a7700fd"
  },
  {
    "url": "assets/js/20.bf089b07.js",
    "revision": "3b60f0c90b7e2f78b6a837636d153967"
  },
  {
    "url": "assets/js/21.d9d3cfe3.js",
    "revision": "4f0adfcf36400365df30238979f8de26"
  },
  {
    "url": "assets/js/22.eaeb520d.js",
    "revision": "ca650d0d7870d8ba3226d492bc75ff8d"
  },
  {
    "url": "assets/js/23.418bb3fe.js",
    "revision": "89d101ad293c12b093f671eff310e158"
  },
  {
    "url": "assets/js/24.1ff338f7.js",
    "revision": "76aac734a012daf6822540cfa59c8ebb"
  },
  {
    "url": "assets/js/26.2b7d224e.js",
    "revision": "d09140fd6d4af5d21412c1e04e0338bb"
  },
  {
    "url": "assets/js/3.33d6b42d.js",
    "revision": "808ea9f2d864b4467fe90f16175227a8"
  },
  {
    "url": "assets/js/4.5d00dd71.js",
    "revision": "354b2b53903cf28623245afa41ac130d"
  },
  {
    "url": "assets/js/5.4b8fb81c.js",
    "revision": "b865b25b78848b369ebb4f7a7684bf5b"
  },
  {
    "url": "assets/js/6.19d66de0.js",
    "revision": "34e4dc8308467d77a9dc5318911ce920"
  },
  {
    "url": "assets/js/7.3906f7a7.js",
    "revision": "dbf3fe1c5b38157ad795d49e2c42bfcd"
  },
  {
    "url": "assets/js/8.e8761b22.js",
    "revision": "df02b8b825d5757e125dbe170d1555c1"
  },
  {
    "url": "assets/js/9.c0a843c2.js",
    "revision": "6fdef7e064583d735d435c9c7be58314"
  },
  {
    "url": "assets/js/app.10c71b05.js",
    "revision": "b04adddd70ff8c2126e79382c2d869dd"
  },
  {
    "url": "conclusion/index.html",
    "revision": "fb6e3b2b740e9fea7da7ad1aded242ea"
  },
  {
    "url": "design/index.html",
    "revision": "776a393e90d32205baeff4d3aeef4ed6"
  },
  {
    "url": "index.html",
    "revision": "efaf2fa1adc952d8b208e5057aaed87d"
  },
  {
    "url": "intro/index.html",
    "revision": "70ffab6c7f3f123c8659bae1928d53ea"
  },
  {
    "url": "license.html",
    "revision": "70a2edbdcd1a16b29dc6ec11e14ab937"
  },
  {
    "url": "myAvatar.png",
    "revision": "b76db1e62eb8e7fca02a487eb3eac10c"
  },
  {
    "url": "requirements/index.html",
    "revision": "76516d090ed00a759f9ae36240945e56"
  },
  {
    "url": "requirements/stakeholders-needs.html",
    "revision": "42c9333896e1dc62333cb39a48cafc77"
  },
  {
    "url": "requirements/state-of-the-art.html",
    "revision": "770f8ba7fb3e82623146e01c7ec21f6a"
  },
  {
    "url": "software/index.html",
    "revision": "6af7fa8117d04fb67e4a7bea0a6c69f5"
  },
  {
    "url": "test/index.html",
    "revision": "a56641b5f5cc9899746647cd0e5d4c5e"
  },
  {
    "url": "use cases/index.html",
    "revision": "2d25ab1c353a32c7a8a4cb954b173195"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
addEventListener('message', event => {
  const replyPort = event.ports[0]
  const message = event.data
  if (replyPort && message && message.type === 'skip-waiting') {
    event.waitUntil(
      self.skipWaiting().then(
        () => replyPort.postMessage({ error: null }),
        error => replyPort.postMessage({ error })
      )
    )
  }
})
