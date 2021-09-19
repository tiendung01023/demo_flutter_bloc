'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "bef765225f07d8c79ad9de72d0b561e6",
"splash/style.css": "7fcfb0ced822c91c1807d39891cadbd9",
"index.html": "cbd88b23a8ce12dcc4f1726e5333dbad",
"/": "cbd88b23a8ce12dcc4f1726e5333dbad",
"main.dart.js": "ae7f0eb2ddbc31bda4d39d3562aa924d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "70771050a5d51da536d8855dcbf8454b",
".git/config": "5ad0aa9b95b5324830a5d4a8c8928075",
".git/objects/61/8bcd9d242fa63c1920ac32b8258035775f70eb": "19e1dff71556754ad364968717545098",
".git/objects/61/6f08b372b83f5d4db347cb502615cfbb72fe8b": "01a47d59640993eb68348fa6f2d560e6",
".git/objects/61/7e3a73d4b670fe2753bde72d7b3814c5b4611b": "b3f8008158636ba5d44064708f3d8295",
".git/objects/92/99befcac3164f26cbd6b2b71dece8e68e5abbc": "5670ccb940bcb043024ef708f3c8274a",
".git/objects/57/645667d57c86b4c4599a6fd44019d2c87d838c": "aaa6982c325f9761d9219e8290fffca0",
".git/objects/57/a970c7a2afee2e45ff87dd431a922143d033e9": "dfb4fdc6a1f622bd414ba81b8c476d5a",
".git/objects/9e/3227778c376cbf97ea68f490cbecf636740b16": "96849a3f4a60db8a5f321c3a409deb5c",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/32/19acdb6137e1cbd7b22422a3e688b30a619cb4": "ef2ebb3aaa6c1f8af5764c3a83e81568",
".git/objects/32/f6744988021f1a37c11a551beed85eaf017cfb": "36eaee2e45fd057f0aca07c4ece862a9",
".git/objects/32/913db0d761c15477dd11586dc91b7ccf883c6f": "ef70d3c210aeea936b1c1c76d88747ef",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/51/16f554e13990cb0b4fb811f2796254be359feb": "7577f3bbf7a397fef0a130dd39b2c005",
".git/objects/3d/5745ed316c1b8fc037ebf5d6ba5be497900abc": "0aa2f63826aac758baee4b8d88382c74",
".git/objects/67/a55759f303fd3474fcc049e2c0f0905519f5b9": "b21872367336fb434450557b741ab1da",
".git/objects/67/774cf3dacac0ad161013438381c330272b67f7": "7129e234a8a5c2c1a02ab15f3c01a021",
".git/objects/0b/99953d65f8e3ddf0de1b912f18be5c5a4074f5": "0869ecb9db21609ca13dbfb5feb26972",
".git/objects/94/b3695f11aa5e3affa467f8b8b7b655fe4172a8": "3d3196945d0f6c13468b7a4717b4f607",
".git/objects/60/31c722061f03c9e3a98a19af1823904931f8cf": "2415b76582ccd867983ce5e2dc504667",
".git/objects/34/0896579fb9e9709e4854934b5565355fab7530": "096e494458a24f89875acb1e84d99bde",
".git/objects/5a/5c9516235086b66e2e9daf7b65ac845b739e80": "0b1207a25f2574c22ed7625ac5f07378",
".git/objects/5f/119c2c2a879ca47f439b4322d45e6cfe8beca3": "06c866dffd6b6f0bd5579ca4785a8ad9",
".git/objects/9d/48d37ade4a3d504ee2ad5533b6e6ba04685058": "3adf0d3c4868d2eb79a152e80a8188bd",
".git/objects/9d/c7ca1587c31a3265d2dc357bfdba54c483befa": "dfbde74245ab0301c5f49e992b8fcbac",
".git/objects/bb/7a0380201887d43f3b83b752f2918305436f04": "fa97ac366724510dd69b5ac65241caf0",
".git/objects/d7/f973df7ce881e2acdd61fce57e4479f19a6ea4": "af8de8b1d90e22cc28af63ee5e64760f",
".git/objects/be/012a4a30ca970c0b0d7f54be0974ea8a4185a9": "13c5b3f79015c35239f9f00af56e0acb",
".git/objects/da/a2b2004f4c8efa4611637a0289683696cf3735": "c7546c3ed25064e7f7c80343131bbd67",
".git/objects/a5/c8cb6dfb41aa6f2c33d3e2e1760522d0dab2b8": "606d0e8557151915419457d17672f37f",
".git/objects/bd/87ca269417948d20fd49586c4959ef2e867d90": "ad8b135950f377a78baafb490b556f76",
".git/objects/d1/d63a6e157854c00a4012415d79a1be6100b757": "aad46457ca453576f2105a38f0735ebb",
".git/objects/d8/7ae4cbf96ea46275c5776db67d37f3a1e2e0a8": "fbbe9f53ef0c499bcd5052244f0edb13",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ab/af33ed47089955e4bcf91d322037aea305374d": "2d6c0e7eca1c1dcde8cbc7a8534c0ec4",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/dd12a24195447254583c87526b15e257a5bd0e": "87fca54f03697926b5d5fff2ba6f05a7",
".git/objects/eb/8c48f7082200cc3a5162b2852153af1d8c5f12": "0d31ec65c66c02582f43459bcf225535",
".git/objects/c9/28f7b13e533451132f431ca0c3935502b9d0be": "2a8019d7e90e83fcf0c2bc575d7231c7",
".git/objects/c9/811f020536d9be3424e936067c93667d5a8828": "51e04f11d34736d7c90153356dcd35e8",
".git/objects/fc/41fd90257fbeec02177693aff783884906805e": "5dab6eafaf34460e345226900617c199",
".git/objects/e3/37bfa51114bce3762d44f12ac6f721efa2c9f9": "8abb868a3714fd362e0a78848e724b78",
".git/objects/e3/26d07a6a4b9228a309c5bf9df22c02570d83c9": "eca06321eebd33a1a136d08703f04920",
".git/objects/ca/18be97492a873d807a01cbdefbdeb21391ab76": "51c13f959d766d0b65157b1a0c974b1d",
".git/objects/ca/1311a48c9599e8e3e842fbdebffab4631ba8b5": "9d6338e1727ca4c863e256a61c957095",
".git/objects/c8/a5e60948a36d11f5ed1b592d4a3a0a49db19c1": "9445338b07381ce32c9e2ece7bf5a028",
".git/objects/fb/c18a5d8697baffbe3db4afc930c55dffbdaa12": "7a945d5a6d6bb01c1a9c649822a15099",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/pack/pack-9e74f344fc1174214e27f4202671f75f3bd23d7a.idx": "4017f152b29323912175819d13178a7d",
".git/objects/pack/pack-9e74f344fc1174214e27f4202671f75f3bd23d7a.pack": "da09e089926cf0d8576d7a0c5daf8019",
".git/objects/29/65b832195c3e80a6a6f1e247915b6b270c56a1": "57699a940281a24aa0becab1724ab0c6",
".git/objects/7c/7194b7ae82411d58c11bb46bae29046e7bc402": "358a657c2e4c840c313d738497a2007b",
".git/objects/7c/806c658b36402791a26a263d3e3bd418055995": "e0b88b187c7422e63bfb928d87e4d8c4",
".git/objects/42/3b1afd937785b54988659e88f544f8c7b8bc0c": "040883335109128c46324bd92967e840",
".git/objects/45/6951fd8465425eb9cc46bf0273b154d4b1cf63": "f58c3e06d4ec20b50e90ddc94a849332",
".git/objects/45/5a7e11e2af03d5076312f5133c1ab72eca87b9": "2754aea9f23f1ba91c366bf4b6aaec78",
".git/objects/73/c640eddec9f39dcf39697520515de218d88d55": "089906d70998e7bee85075671c167311",
".git/objects/1a/afe0ee73237a1725e87c3d8b7dd4f8d69312c9": "553237853ddddb57f012b24d71a32617",
".git/objects/28/8a78ef1c26af5816e14927634108b32590ec3e": "b100efcffa8d601d311a0ad1cd120479",
".git/objects/17/9296af3eb46e470ea64acf5115ae0f99dec933": "ccbf8d95fa89dea2dad55a11bcdd7bd4",
".git/objects/8a/efc99a1fb76b1ae91cc5d044a44a00f9fab077": "565b87b566a1d29e061cdeca494e5941",
".git/objects/8a/4aabc3ad87a5e7d9ad5a098111588538633e4d": "18a8ea60cd64f27efe96072db1b4055b",
".git/objects/8a/edf2b9249d4528d3c1e66e967b2af9083edbf2": "6b38969d074c770c2134a91dd21a183d",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/7e/52d22688d69fd63995ca23ead31986f25aa563": "f866042a4103cc8102d5c83b255a8082",
".git/objects/7e/8527be3f00881723965ce05a64d514559ecd0a": "d12b3650ac6bc7e7c53a4103acf6372f",
".git/objects/19/2573e12ff700c90b3a22b654b4bc1bfff9674d": "399c2051f09719afb7ede97f322e4e05",
".git/objects/75/ff286d4890d6e04fdd095212c87cf137bc3a34": "3f4ce1282acabd9fba5b273ed3497fde",
".git/objects/81/9989c5e2e69b7d466bcc188e642b0efe1dba47": "dbe128cfff8b5509ca98dbfa2c95b0fa",
".git/objects/86/f89cbb6a19cad01387ec8f2b11b1a7393697d1": "205f8bbf7fbf815d29b6b1c3c9cc5a06",
".git/objects/86/c19584abed80d96b3694949de05d40b35b1626": "c9ec7368f6bb89acba837c97757732c2",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9f/447e1b382a71d675a354e6acad7bde9e9ef636": "30d29c21f0077e8896820af8ed70126e",
".git/objects/00/cabce836b35759e17dc7b8bcec5cc82e3daac4": "efaf81ff261d92a299b956b4b7284164",
".git/objects/9a/e389c8927501c50e2b60a99703ce23b4177942": "793e97478f590210f1f26216f13917cf",
".git/objects/9a/50a17225baaa97b88fdb5d4c764226f779d796": "7a88f596f417996cea1f6f87db4f6a27",
".git/objects/36/3065327911f5e923948cd4a14b1ddc7c2d4558": "16b851d3b642bca44d40dd17add860fa",
".git/objects/09/3d12cd07ad5805cb86a96999e72574bce25e89": "46d05e972f668b7559e5a9415b2821cf",
".git/objects/09/3cfe3070a3c1368583e9b5215063a07a99d92d": "ffa155484bd7b5204852d0d969bf3279",
".git/objects/65/6ea0e6e1f3e5d85a0ab258ad83828357c36949": "4b2f2fbf01a4847d73be43c8148f60c6",
".git/objects/53/039837adf087194d04abcaca13eff2d3df0bd2": "e7793737a6f51997ae92852fce75ce2d",
".git/objects/5b/a5649978c3adb553b1bed3f65adf9756776c6e": "2f511e83648ffcecdb9eb8210b579254",
".git/objects/6d/9416529ff91d6b27737bfe04c418edfa817bc5": "bfad44456eac0b8085cb87b8cd05f32e",
".git/objects/6d/d1f3ae3e66aa6b9d7532d879aa8810ca6d76f7": "955aaa2fed2880b291e1dc1845b0c0d9",
".git/objects/06/92bc02a45bf80c106fbb7aca9270f8b178c726": "2f8dcde049aee1bd137aa05ca9ca06a9",
".git/objects/39/6516eba188323639fa22bd979ccc4b7e73b7bd": "ebc8dd774849c5dfdf2aacb32acc413e",
".git/objects/39/d92d4a2d97391ce887d3266ff1418a0af285c3": "a74a8f674c6af4ba6c2c92811ae18e79",
".git/objects/99/13aefd401258865c2ccfb9c325cf737c29f547": "c0b89f8b3a93999a851121e75bf3b6c1",
".git/objects/52/a0c1d8c8585561ec24cfc5c7b0499b321c0ec4": "8a87eb5106e9c0877773ed8a8f27fe1f",
".git/objects/63/fa94df3c55db2da10898cbf6a15bdb1eb21e11": "50db21f9bb066a05c12dfd38134e16eb",
".git/objects/0f/9e959d18270b99c3f6f465e95facda093d2298": "1d9bccd74cac1717414f9d81b2158cf1",
".git/objects/0a/df0a9b0395566a6975387a26c9bd4f4a23ca62": "8701a2c76da8e1425d2b7dbd8274104c",
".git/objects/64/02285623368e0ba950d2626b16158132421f70": "a64469dbc03b3544652ead8591518b12",
".git/objects/d3/047c3bad4db0875da5c8a9d41f495a37cff806": "f4c4a19211c5c34850640cef43cc4967",
".git/objects/d3/0996f75d70db5d0a7586826b2c4368f70e0f7c": "40772260035c6eeed7c4a1baacb3df6c",
".git/objects/ba/ea0cbe743a3ee9970fdc3bba36ec7dab9f5a46": "04e00b6b1559544279aa9af373414428",
".git/objects/b8/474707c95a270db12806c30a81882ec533319e": "dc0e08422ba1163fd70ca8b2af70df74",
".git/objects/b1/3d3f68c95fbf23c11f0d83e649dc0a03ec26a3": "56f1ae260e40c113c38cee3f0a7c5e66",
".git/objects/dc/34fb3da78d932adf7807c7a741c8fc5265da27": "fe5e16f578cdf89bbdd366b59b7e0f4b",
".git/objects/a9/ca81573eeee6f64aa4e56315a8377596d0b8c7": "62e6e7a970a09695eb3ac2ebf932e163",
".git/objects/d2/b39b05e9b85730e554d9b4468515f7911e2270": "580006c6a310813c731724dffe152719",
".git/objects/aa/ed5d6468d3614c01d97f5f0a7f5ca704caf361": "c52c4d989b08f4b22228271727284e10",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a8/78c0f76be876c474f6b3a5576f5f8974b870b1": "b8237d9cc820835e0a02cdc8f799df0d",
".git/objects/a8/b7485ee95f06f51d4f380317eb3acf7d0111c2": "9bf56ebc865f7419ca66ce4f9b03c64e",
".git/objects/b9/ba9393a112be1c255e3c65ed4c97ece3c30ba5": "98d9efefa58cfdcf690ce40385407bd0",
".git/objects/b9/05f256d57fe17f1d53898eba5660c922082f8f": "a6b5aff83a316b090227851187ccb064",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/c3/3e08713dc4687a7ed908c63aeb39021c898805": "9587b557107cabd8bfa3f7ff43e703f6",
".git/objects/cc/ce7b1837ffe6932ca7c7519ec7a9cb228b810d": "341c19cd5df3cf4ac0c5ae78f0337166",
".git/objects/e6/99e85380427685079a356468212d0fc5feba5e": "7d9c3762afa70c2d42645d048a42aef0",
".git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c5391": "c70c34cbeefd40e7c0149b7a0c2c64c2",
".git/objects/e8/2c4a90b2e9f425290b65b0c0acf77ebd7eb60c": "41d3ef8d8b798362dbabaa5632f08e15",
".git/objects/ff/cbda787d2f0f37dc188994ef06f1178c4ae6fd": "fe1df4c501f8f79d513fa33a42ddb0a9",
".git/objects/e7/3bfdd492384599a70001563f782d00ff7dd31f": "13705ae42170722ea59988f3ba47d320",
".git/objects/2c/1e69d3b25863eb31d64856a0ab99e8dbd90519": "d03e8ec9712c300209b2dc9d579d1b62",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/1b/4f373f5cb053187cfd8656edd4d4a8cdc47ae8": "5421dadcd016b3c86a966932d0be9e10",
".git/objects/70/2f3214881c21cd21ad32520cc13ea41f2231c8": "4a7b5430282dbf8ed1eb7c2e40ab1294",
".git/objects/1e/a0643a6bc7bf75ff0303de2889c3921cd1a2d9": "da44430c074b8d5e17b170135d76b10f",
".git/objects/24/12fabaa1999cc104f31bb53709cf8b3c70467f": "6af2871428628e534d47822fedeadc34",
".git/objects/4f/1856db99bc2abf61f17736bdffb0c9a53e2e4d": "df84b593f8817c58e6bea6055dae428c",
".git/objects/8d/5ad201ee7ec4ef058d942008ebe1c4989ece8c": "bec4c9ea664b961ec6097af64d3e8ad3",
".git/objects/71/c9a22c8cc55a7d6ca61ac52a568ba45dcf72da": "8bfed95df1618f94306a52f3cdf894f7",
".git/objects/71/570cfa36f383061512c80a6e6132f0afc0bf4f": "10665d6ced82f481ed977e2939ff8474",
".git/objects/76/4461edcb841250eec0ed9a8276bc12df0b2cd5": "9e7c8a8bc616d15e47ddc80fb57855ff",
".git/objects/76/8baa982c935cc53c80b9e47adbca85d0c0c339": "7d91113fcb9c1a8115d78f4946f32edd",
".git/objects/76/e28160f066445a29cfeab231239fa4d4dbd96c": "a89da95ed32abfabffef22545ef0374f",
".git/objects/82/c445dd88f239c9873bc5d80f1f8743f6e286a4": "a93500edd4c75732e44370e758565a98",
".git/objects/49/3cb9f45e755581bdf1fc4e1fd5a1c981c1a7e0": "18a7c35873a24e2bd3d3245a0e779dc0",
".git/objects/13/ebd4df687182fd60a1ce39e9e93efc249882c1": "3bc5c672a008ffbdc8142e2070753e2f",
".git/HEAD": "39d73b4368e8bec1ab6a47ee96817cfc",
".git/logs/HEAD": "e38d3a9124e2b0d5b28113c6835b5d30",
".git/logs/refs/heads/page": "e36cf2237c89ca6e7e19b78d67b8444b",
".git/logs/refs/remotes/origin/page": "4c0bae4896d5edcf8093b0b7695a8065",
".git/logs/refs/remotes/origin/master": "bc8fe2c031cfb042642ba430b7d5be06",
".git/refs/heads/page": "0d50bf7cfc02f97ba6cf872dcd0a49c2",
".git/refs/remotes/origin/page": "0d50bf7cfc02f97ba6cf872dcd0a49c2",
".git/refs/remotes/origin/master": "778e50dbe7a813fba041fb1ad17ba070",
".git/index": "7811448a2d23f09ca9d6b9a33eb7200a",
".git/packed-refs": "a891e6bb26eb0d480aef486a7e8ea166",
".git/COMMIT_EDITMSG": "a539b66302600edc2bfaef659ef87771",
".git/FETCH_HEAD": "db0ad52809442e84164561a2756f27f5",
".git/sourcetreeconfig": "c029beb4706391bed3585a044e63b6ab",
"assets/AssetManifest.json": "c5822d2b49bb8bedcccc9cbd45e9fae7",
"assets/NOTICES": "25f422dbd632e9d079821b696ab0b9a8",
"assets/FontManifest.json": "9e41a487b7bc2898cb4a042c5b678817",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/locale/i18n_vi.json": "29bc68ed97a089f50c36da4238f68dea",
"assets/assets/locale/i18n_en.json": "4596f9ccec364e0c0ac29b2350a98b18",
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
