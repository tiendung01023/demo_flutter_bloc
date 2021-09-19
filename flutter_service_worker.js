'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "bef765225f07d8c79ad9de72d0b561e6",
"splash/style.css": "7fcfb0ced822c91c1807d39891cadbd9",
"index.html": "9fcabd0004e1a59469cfbd92929a8bb7",
"/": "9fcabd0004e1a59469cfbd92929a8bb7",
"main.dart.js": "0cd9abec6012567fb4e67b7c75246cde",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "70771050a5d51da536d8855dcbf8454b",
".git/config": "5ad0aa9b95b5324830a5d4a8c8928075",
".git/objects/61/8bcd9d242fa63c1920ac32b8258035775f70eb": "19e1dff71556754ad364968717545098",
".git/objects/61/7e3a73d4b670fe2753bde72d7b3814c5b4611b": "b3f8008158636ba5d44064708f3d8295",
".git/objects/92/99befcac3164f26cbd6b2b71dece8e68e5abbc": "5670ccb940bcb043024ef708f3c8274a",
".git/objects/57/645667d57c86b4c4599a6fd44019d2c87d838c": "aaa6982c325f9761d9219e8290fffca0",
".git/objects/57/a970c7a2afee2e45ff87dd431a922143d033e9": "dfb4fdc6a1f622bd414ba81b8c476d5a",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/94/b3695f11aa5e3affa467f8b8b7b655fe4172a8": "3d3196945d0f6c13468b7a4717b4f607",
".git/objects/60/31c722061f03c9e3a98a19af1823904931f8cf": "2415b76582ccd867983ce5e2dc504667",
".git/objects/34/0896579fb9e9709e4854934b5565355fab7530": "096e494458a24f89875acb1e84d99bde",
".git/objects/5f/119c2c2a879ca47f439b4322d45e6cfe8beca3": "06c866dffd6b6f0bd5579ca4785a8ad9",
".git/objects/9d/48d37ade4a3d504ee2ad5533b6e6ba04685058": "3adf0d3c4868d2eb79a152e80a8188bd",
".git/objects/9d/c7ca1587c31a3265d2dc357bfdba54c483befa": "dfbde74245ab0301c5f49e992b8fcbac",
".git/objects/be/012a4a30ca970c0b0d7f54be0974ea8a4185a9": "13c5b3f79015c35239f9f00af56e0acb",
".git/objects/da/a2b2004f4c8efa4611637a0289683696cf3735": "c7546c3ed25064e7f7c80343131bbd67",
".git/objects/bd/87ca269417948d20fd49586c4959ef2e867d90": "ad8b135950f377a78baafb490b556f76",
".git/objects/d8/7ae4cbf96ea46275c5776db67d37f3a1e2e0a8": "fbbe9f53ef0c499bcd5052244f0edb13",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/dd12a24195447254583c87526b15e257a5bd0e": "87fca54f03697926b5d5fff2ba6f05a7",
".git/objects/c9/28f7b13e533451132f431ca0c3935502b9d0be": "2a8019d7e90e83fcf0c2bc575d7231c7",
".git/objects/fc/41fd90257fbeec02177693aff783884906805e": "5dab6eafaf34460e345226900617c199",
".git/objects/e3/26d07a6a4b9228a309c5bf9df22c02570d83c9": "eca06321eebd33a1a136d08703f04920",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/pack/pack-9e74f344fc1174214e27f4202671f75f3bd23d7a.idx": "4017f152b29323912175819d13178a7d",
".git/objects/pack/pack-9e74f344fc1174214e27f4202671f75f3bd23d7a.pack": "da09e089926cf0d8576d7a0c5daf8019",
".git/objects/45/6951fd8465425eb9cc46bf0273b154d4b1cf63": "f58c3e06d4ec20b50e90ddc94a849332",
".git/objects/45/5a7e11e2af03d5076312f5133c1ab72eca87b9": "2754aea9f23f1ba91c366bf4b6aaec78",
".git/objects/17/9296af3eb46e470ea64acf5115ae0f99dec933": "ccbf8d95fa89dea2dad55a11bcdd7bd4",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/2573e12ff700c90b3a22b654b4bc1bfff9674d": "399c2051f09719afb7ede97f322e4e05",
".git/objects/81/9989c5e2e69b7d466bcc188e642b0efe1dba47": "dbe128cfff8b5509ca98dbfa2c95b0fa",
".git/objects/86/c19584abed80d96b3694949de05d40b35b1626": "c9ec7368f6bb89acba837c97757732c2",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9a/50a17225baaa97b88fdb5d4c764226f779d796": "7a88f596f417996cea1f6f87db4f6a27",
".git/objects/6d/d1f3ae3e66aa6b9d7532d879aa8810ca6d76f7": "955aaa2fed2880b291e1dc1845b0c0d9",
".git/objects/99/13aefd401258865c2ccfb9c325cf737c29f547": "c0b89f8b3a93999a851121e75bf3b6c1",
".git/objects/63/fa94df3c55db2da10898cbf6a15bdb1eb21e11": "50db21f9bb066a05c12dfd38134e16eb",
".git/objects/0f/9e959d18270b99c3f6f465e95facda093d2298": "1d9bccd74cac1717414f9d81b2158cf1",
".git/objects/b1/3d3f68c95fbf23c11f0d83e649dc0a03ec26a3": "56f1ae260e40c113c38cee3f0a7c5e66",
".git/objects/d2/b39b05e9b85730e554d9b4468515f7911e2270": "580006c6a310813c731724dffe152719",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a8/78c0f76be876c474f6b3a5576f5f8974b870b1": "b8237d9cc820835e0a02cdc8f799df0d",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/c3/3e08713dc4687a7ed908c63aeb39021c898805": "9587b557107cabd8bfa3f7ff43e703f6",
".git/objects/e6/99e85380427685079a356468212d0fc5feba5e": "7d9c3762afa70c2d42645d048a42aef0",
".git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c5391": "c70c34cbeefd40e7c0149b7a0c2c64c2",
".git/objects/e8/2c4a90b2e9f425290b65b0c0acf77ebd7eb60c": "41d3ef8d8b798362dbabaa5632f08e15",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/24/12fabaa1999cc104f31bb53709cf8b3c70467f": "6af2871428628e534d47822fedeadc34",
".git/objects/71/c9a22c8cc55a7d6ca61ac52a568ba45dcf72da": "8bfed95df1618f94306a52f3cdf894f7",
".git/objects/71/570cfa36f383061512c80a6e6132f0afc0bf4f": "10665d6ced82f481ed977e2939ff8474",
".git/objects/76/8baa982c935cc53c80b9e47adbca85d0c0c339": "7d91113fcb9c1a8115d78f4946f32edd",
".git/objects/82/c445dd88f239c9873bc5d80f1f8743f6e286a4": "a93500edd4c75732e44370e758565a98",
".git/HEAD": "39d73b4368e8bec1ab6a47ee96817cfc",
".git/logs/HEAD": "94785fbfe49f9e70ea830e5dbf9fbfbc",
".git/logs/refs/heads/page": "9bcb4c5c5b8ac46fdec3934118d28977",
".git/logs/refs/remotes/origin/page": "1dccfad959ee20f10c17e274c304dd4d",
".git/logs/refs/remotes/origin/master": "4908d56bf7fd87b8aac0f902c710fc6f",
".git/refs/heads/page": "b2f50b061a78ee214417567fea584b9d",
".git/refs/remotes/origin/page": "b2f50b061a78ee214417567fea584b9d",
".git/refs/remotes/origin/master": "fd6287610d03b3d853b4eb812d209105",
".git/index": "afcc22f1ff66859221d106ef8937b39e",
".git/packed-refs": "a891e6bb26eb0d480aef486a7e8ea166",
".git/COMMIT_EDITMSG": "801810aba1cd82c7058a8047c16cd26f",
".git/FETCH_HEAD": "7e6a37d7ada4981a2a63db4566a490cc",
".git/sourcetreeconfig": "cb33bced6be4df5f566297c29e8f45bf",
"assets/AssetManifest.json": "cb57234664ef919630cd4593fbacaa51",
"assets/NOTICES": "de64d98ae042b494203c7a5fa95008ba",
"assets/FontManifest.json": "9e41a487b7bc2898cb4a042c5b678817",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/locale/i18n_vi.json": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/images/login_background.png": "96a6b2b9ef9e5944f7031a8967f95a8c",
"assets/assets/images/avatar_default.png": "0714b23ef5df4ca0c31e63b4444b500f",
"assets/assets/images/bottom_nav_add.svg": "eaf04de05f8c7e8404a5fa61e8043a03",
"assets/assets/images/bottom_nav_message.svg": "943d7b11822fec154049e3980844c091",
"assets/assets/images/bottom_nav_search.svg": "79a70f3b9220cf7c046635cd6475c947",
"assets/assets/images/bottom_nav_person.svg": "71abe2a55dc91f2468fbff9ca24077d5",
"assets/assets/images/bottom_nav_home.svg": "99196db2b7c20798f49d6a22f3b2a9b9",
"assets/assets/images/logo_1.svg": "4f242465ddb7ed5fa9c04bdc248921bb",
"assets/assets/images/logo_0.svg": "b1265e1e4f6898a194e111a76d61dffe",
"assets/assets/images/back_button.svg": "2185811538c6f975d8fbd763f2000f3a",
"assets/assets/fonts/Comfortaa/Comfortaa-Light.ttf": "929fd78b1498549427891f76ea0f1e51",
"assets/assets/fonts/Comfortaa/Comfortaa-SemiBold.ttf": "d905de658a9c1fe4f9d779ccb15c7433",
"assets/assets/fonts/Comfortaa/Comfortaa-Medium.ttf": "1c593a568b347510402764c6b8e93a37",
"assets/assets/fonts/Comfortaa/Comfortaa-Regular.ttf": "c2488bfda16e6a811f62414da90e51e4",
"assets/assets/fonts/Comfortaa/Comfortaa-Bold.ttf": "801965b0436842e843141a5a6c1e387f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
