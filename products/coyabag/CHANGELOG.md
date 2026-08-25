# COYABAG Changelog

## Tujuan

Mencatat perubahan material COYABAG dengan provenance public-safe.

## Konteks

Surface deployment tidak otomatis berarti commerce activation.

## 2026-08-25 - Storefront accessibility integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `d6fe071d8ab27949b5fe5fd330dacb0f9a437821`, immutable Hostinger release
  `20260825-d6fe071`, rollback `20260825-521d8a3`, dan runtime verification.
- Storefront menambahkan skip navigation, satu main landmark, focus dan polite
  announcement untuk route SPA, Search modal dengan focus trap/background
  inert/Escape/focus restoration, serta feedback ID unik pada kartu produk.
- Fixture dan public live-API sama-sama lulus 20 pemeriksaan accessibility pada
  10 route desktop/mobile. Full storefront/Laravel, 79 kombinasi responsif,
  security, dependency, backup, workers, scheduler, asset, dan smoke gate lulus.
- Delivery `PRODUCTION_DEPLOYED`; readiness tetap 30/42 dengan 12 blocker.
  Activation dan business readiness tetap `BLOCKED`; checkout/provider tidak
  diaktifkan.

## 2026-08-25 - Storefront state integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `521d8a3e752544abd14caabdbeae02831cead9e2`, immutable Hostinger release
  `20260825-521d8a3`, rollback `20260825-9541b86`, dan runtime verification.
- Source fallback catalog kini mock-only. Production menunggu Laravel catalog
  sebelum menampilkan produk; Home dan Search mempunyai loading, skeleton,
  empty, error, refreshing, stale, disabled, retry, recovery, dan success state
  yang jujur.
- Browser state acceptance lulus 12 flow pada 320/390/1440 piksel dan public
  live-API lulus 79 kombinasi. Full storefront/Laravel, security, dependency,
  backup, worker, scheduler, asset, dan smoke gate lulus.
- Delivery `PRODUCTION_DEPLOYED`; readiness tetap 30/42 dengan 12 blocker.
  Activation dan business readiness tetap `BLOCKED`; checkout/provider tidak
  diaktifkan.

## 2026-08-25 - Responsive storefront integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `9541b86869b9a4d1790722bb0f0907b499b768e6`, immutable Hostinger release
  `20260825-9541b86`, rollback `20260825-3520e66`, dan runtime verification.
- Overflow product card pada mobile 320 piksel ditutup. Header, mobile menu,
  dan sticky CTA memakai target sentuh minimal 44 piksel; scroll-progress
  mobile tetap berada di dalam viewport.
- Regression browser mencakup 15 route, lima profil viewport, mobile menu, dan
  79 kombinasi terhadap fixture deterministik maupun API production. Full
  test/build/security, dependency audit, backup, workers, scheduler, dan public
  smoke lulus.
- Delivery `PRODUCTION_DEPLOYED`; readiness tetap 30/42 dengan 12 blocker.
  Activation dan business readiness tetap `BLOCKED`, sehingga checkout dan
  provider commerce tetap fail-closed.

## 2026-08-25 - FAQ and policy publishing integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `3520e66e45fda3e396be99439e0d91fdeff3e38d`, immutable Hostinger release
  `20260825-3520e66`, rollback `20260825-2697be4`, dan runtime verification.
- FAQ hanya merender CMS published dari enam kategori. Privacy, terms, dan
  return policy memerlukan owner publication, version, effective date, serta
  section lengkap; fallback provider, marketplace, dan legal promise dari
  source dihapus.
- Admin mendukung structured editing, preview, schedule, publish, retract, dan
  immutable rollback. Lifecycle policy owner-only ditegakkan pada HTTP/service,
  scheduled publication mempertahankan provenance owner, dan historical media
  reference tidak dapat dihapus.
- Storefront 121/121 dan Laravel 343 pass/1 MySQL-only skip dengan 2.621
  assertions; full release/security/dependency, browser desktop/mobile, backup,
  workers, scheduler, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker; activation/business tetap `BLOCKED`.

## 2026-08-25 - About Us managed-content production release

- Informasi `CONFIRMED` berasal dari exact source
  `2697be48f3bfbc9d4e999c56279533be6a87b17c`, immutable Hostinger release
  `20260825-2697be4`, rollback `20260825-dead32e`, dan runtime verification.
- About hanya merender cerita, warehouse, process, value, media, dan destination
  CMS published; source-owned factual claim dan media fallback dihapus.
- Admin mengelola order, draft, preview, schedule, publish, retract, dan rollback.
  Publish membutuhkan main story, story/warehouse, serta link internal aman atau
  HTTPS. Production yang belum lengkap menampilkan preparation state jujur.
- Storefront 117/117 dan Laravel 332 pass/1 MySQL-only skip dengan 2.548
  assertions; full release/security/dependency, browser desktop/mobile, backup,
  workers, scheduler, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker; activation/business tetap `BLOCKED`.

## 2026-08-25 - Testimonials consent and provenance production release

- Informasi `CONFIRMED` berasal dari exact source
  `dead32ed0cc30110d8b9b3b2b7d68b10b09cac8e`, immutable Hostinger release
  `20260825-dead32e`, rollback `20260825-8382f7a`, dan runtime verification.
- Storefront hanya menampilkan review CMS published dengan reviewer, quote,
  supported type, source label, dan izin eksplisit. Rating/statistik hanya
  berasal dari approved entries; source-owned social proof dihapus.
- Admin mengelola order, attribution, HTTPS source, optional rating, media,
  exact product/color, consent, serta publish/schedule/retract. Missing
  destination fail-closed; empty, partial, error/retry, media failure, dan
  responsive production lulus.
- Storefront 111/111 dan Laravel 331 pass/1 MySQL-only skip dengan 2.535
  assertions; full release/security/dependency, backup, workers, scheduler, dan
  public smoke lulus. Readiness tetap 30/42 dengan 12 blocker;
  activation/business tetap `BLOCKED`.

## 2026-08-25 - Lookbook managed-content production release

- Informasi `CONFIRMED` berasal dari exact source
  `8382f7ad3eab33045eadeb79e63c4f4119b30411`, immutable Hostinger release
  `20260825-8382f7a`, rollback `20260825-9abeb53`, dan runtime verification.
- Lookbook memakai scene CMS published sebagai authority dan fallback hanya ke
  satu scene dari media milik setiap produk live. Missing product tidak pernah
  dipetakan ke produk lain; destination menjaga exact product/color.
- Operator dapat mengatur title, story, media, order, destination, serta
  lifecycle publish dari Admin. Loading, media failure, partial, empty/error,
  keyboard, reduced motion, exact cart/detail, dan responsive production lulus.
- Storefront 105/105, Laravel 327 pass/1 MySQL-only skip, full release/security,
  dependency audit, backup, workers, scheduler, dan public smoke lulus.
  Readiness tetap 30/42 dengan 12 blocker; activation/business tetap `BLOCKED`.

## 2026-08-25 - Gallery managed-content production release

- Informasi `CONFIRMED` berasal dari exact source
  `9abeb533069e476c33a6c099d8975af8df99616e`, immutable Hostinger release
  `20260825-9abeb53`, rollback `20260824-9819148`, dan postdeploy verification.
- Gallery memakai CMS published sebagai authority dan fallback hanya ke media
  katalog published milik produk. Placeholder source dihapus; kategori, urutan,
  alt text, image/video, destination, dan lifecycle konten dikelola dari Admin.
- Dynamic filter, swipe/pointer/keyboard, reduced motion, focus-safe preview,
  broken/loading/partial/empty state, exact product handoff, dan photos-only
  homepage lulus production desktop/mobile.
- Storefront 99/99, Laravel full regression 328 pass/1 skip, full release gate,
  dependency audit, backup, workers, monitor, dan public smoke lulus. Readiness
  tetap 30/42 dengan 12 blocker; commerce/provider tetap fail-closed.

## 2026-08-25 - Our Product live-catalog production release

- Informasi `CONFIRMED` berasal dari exact source
  `9819148e8ecce8469d7802841007f8cd111c3246`, immutable Hostinger release
  `20260824-9819148`, rollback `20260824-55674a3`, dan postdeploy verification.
- Seluruh seri published kini memakai story, media, alt text, varian, harga,
  stok, cart, dan detail produk dari snapshot Laravel milik seri tersebut;
  batas empat produk, heading hard-coded, dan video placeholder dihapus.
- Loading, error/retry, empty, missing-media, sold-out, exact-variant handoff,
  runtime canonical, keyboard, dan desktop/mobile acceptance tersedia. Schema
  `2026-08-24-our-product-v1` aktif dan route assets dimuat lazy.
- Storefront 94/94, Laravel 327 pass/1 MySQL-only skip, security/dependency,
  build, workers, scheduler, dan public smoke lulus. Readiness tetap 30/42
  dengan 12 blocker; commerce/provider tetap fail-closed.

## 2026-08-24 - Bag Finder live-catalog production release

- Informasi `CONFIRMED` berasal dari exact source
  `55674a3871eef05e68c9eaaf4cc5520698d5a7d2`, immutable Hostinger release
  `20260824-55674a3`, rollback `20260824-a947ce3`, dan postdeploy verification.
- Bag Finder kini menyelesaikan lima langkah preferensi terhadap katalog
  Laravel live, memberi ranking dan alasan deterministik, serta membawa exact
  variant ke detail/cart melalui URL yang dapat dibagikan.
- Produk/varian unpublished, tidak tersedia, atau tanpa harga positif ditolak.
  Loading, error/retry, empty, no-match, relaxation, preference recovery tanpa
  PII, keyboard, dan desktop/mobile acceptance tersedia.
- Build production memaksa API canonical, menolak fallback katalog lokal, dan
  membuat Our Product fail-closed saat data belum siap. Storefront 90/90,
  Laravel 326 pass/1 MySQL-only skip, security/dependency, build, backup,
  workers, scheduler, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker; commerce/provider tetap fail-closed.

## 2026-08-24 - Customer return integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `a947ce3da21e5720a1a491cfcf8ad19ae2baf638`, immutable Hostinger release
  `20260824-a947ce3`, rollback `20260824-ab859d3`, dan postdeploy verification.
- Return creation kini idempotent dan concurrency-safe; replay tidak
  menggandakan request/item/notifikasi, sedangkan key yang dipakai untuk
  payload berbeda ditolak.
- Customer hanya dapat membatalkan state `requested`; repeat cancel aman dan
  quantity kembali eligible. Storefront/Admin memakai public return/refund
  state yang sama dengan pemisahan instruksi customer dan catatan internal.
- Storefront 84/84, Laravel 326 pass/1 MySQL-only skip dengan 2.494 assertion,
  full release/security/dependency, browser desktop/mobile, backup, workers,
  scheduler, dan public smoke lulus. Readiness tetap 30/42 dengan 12 blocker;
  commerce/provider fail-closed.

## 2026-08-24 - Delivery status and tracking integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `ab859d3519a84c4cc1647a55671552b53979a473`, immutable Hostinger release
  `20260824-ab859d3`, rollback `20260824-f3d75a1`, dan postdeploy verification.
- Laravel kini memberi satu customer delivery action untuk no-shipment,
  preparing, ready-to-ship, in-transit, stale, exception, delivered, cancelled,
  dan returned; event tersimpan terbaru menjadi sumber kebenaran.
- Customer dan Admin Shipment Detail memakai state publik yang sama. Storefront
  tidak membuat resi/provider promise, refresh berhenti pada state terminal atau
  operator-required, serta pulih setelah focus/visibility recovery.
- Storefront 80/80, Laravel 322 pass/1 MySQL-only skip dengan 2.449 assertion,
  full RC/security/dependency, browser desktop/mobile, backup, workers,
  scheduler, dan public smoke lulus. Readiness tetap 30/42 dengan 12 blocker;
  commerce/provider fail-closed.

## 2026-08-24 - Payment and confirmation integrity production release

- Exact source `f3d75a1f904a03276bf1076b5a42f4dab9568a86` aktif pada
  immutable Hostinger release `20260824-f3d75a1`; rollback langsung
  `20260824-affb6dd` tersedia.
- Server-authoritative payment action menutup session untuk order terminal,
  payment selesai/gagal, dan unknown attempt; stale redirect tidak dikirim.
- Order Status me-refresh saat customer kembali dari gateway dan menyediakan
  state/action accessible untuk ready, pending, completed, expired, failed,
  unavailable, dan support-required.
- Storefront 78/78, Laravel 320 pass/1 MySQL-only skip dengan 2.405 assertion,
  full RC/security/dependency, browser desktop/mobile, backup, workers,
  scheduler, public smoke, dan monitor lulus. Readiness tetap 30/42 dengan 12
  blocker; commerce/provider fail-closed.

## 2026-08-24 - Shipping quote integrity production release

- Exact source `affb6dd9bba2bc96349afbb7431e96da9f207faf` aktif pada
  immutable Hostinger release `20260824-affb6dd`; rollback langsung
  `20260824-94a54b4` tersedia.
- Quote manual/external sekarang unik per penerbitan, tidak menimpa snapshot
  lama, dan membawa waktu terbit/kedaluwarsa ke order.
- Checkout menyaring quote kedaluwarsa, menahan submit, dan me-refresh otomatis
  sebelum expiry. Admin Order Detail menampilkan provenance tarif yang aman
  tanpa destination hash atau payload provider privat.
- Storefront 75/75, Laravel 317 pass/1 MySQL-only skip dengan 2.374 assertion,
  browser desktop/mobile, build/security/dependency, backup, worker, scheduler,
  public smoke, dan monitor lulus. Readiness tetap 30/42 dengan 12 blocker;
  commerce/provider tetap fail-closed.

## 2026-08-24 - Secure checkout order access production release

- Informasi `CONFIRMED` berasal dari exact source
  `94a54b40a03d01ed464a14c62347ae8f3ee515f0`, immutable Hostinger release
  `20260824-94a54b4`, rollback `20260824-7ffb202`, dan postdeploy runtime
  verification.
- Checkout/replay tidak lagi mengirim raw access token atau private URL ke
  JavaScript. Browser memakai cookie order HttpOnly, Secure, SameSite Lax yang
  path-scoped; frontend hanya menyimpan order code di sessionStorage.
- Legacy localStorage token dimigrasikan satu kali lalu dihapus. Mutasi
  cookie-authenticated memerlukan allowlisted Origin, dan signed recovery link
  invalid setelah access generation di-reissue.
- Storefront 73/73, Laravel 314 pass/1 skip dengan 2.341 assertion, full
  security/build/dependency, browser fixture/public desktop-mobile, backup,
  CORS, worker, dan monitor lulus.
- Delivery `PRODUCTION_DEPLOYED`. Readiness `30/42`, 71%, `ready=false`
  dengan 12 blocker; checkout dan provider activation tetap fail-closed.

## 2026-08-24 - Cart and catalog reconciliation production release

- Informasi `CONFIRMED` berasal dari exact source
  `7ffb202c642a6d67a8cde1cb48c970ae383cb8f9`, immutable Hostinger release
  `20260824-7ffb202`, rollback `20260824-61429f0`, dan public runtime smoke.
- Cart sekarang menyegarkan katalog setelah reconnect, mendeduplikasi refresh,
  memverifikasi perubahan lintas tab, dan menolak payload eksternal invalid
  tanpa menghapus sesi aktif.
- Handoff ke Checkout melakukan pemeriksaan authoritative terakhir. Perubahan
  harga, stok, atau availability menahan customer pada Review Cart dengan
  feedback yang dapat ditindaklanjuti sampai pemeriksaan berikutnya bersih.
- Storefront 68/68, Laravel 310 pass/1 skip dengan 2.297 assertion, full build,
  security/dependency, backup, worker, monitor, serta public desktop/mobile
  lulus. Entry production 199,0 KiB.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout dan commerce activation tetap fail-closed.

## 2026-08-24 - Cart integrity and recovery production release

- Informasi `CONFIRMED` berasal dari exact source
  `61429f02dc44275492f0c45bc416bbad7acb486c`, immutable Hostinger release
  `20260824-61429f0`, rollback `20260824-759e2a5`, dan public runtime smoke.
- Cart kini memakai exact variant ID, menggabungkan duplikat legacy, membatasi
  jumlah ke stok live, menyegarkan harga/media, dan mengeluarkan item invalid
  dengan feedback yang dapat ditindaklanjuti. API atau storage gagal tidak
  menghilangkan sesi aktif.
- Drawer/full Cart, recovery, remove/undo, focus trap/return, 44 px controls,
  keyboard, dan no-overflow lulus desktop/mobile. Laravel quote/checkout wajib
  memvalidasi varian aktif dan published commercial snapshot.
- Storefront 62/62, Laravel 310 pass/1 skip dengan 2.297 assertion, build,
  dependency/security audit, backup, public desktop/mobile, workers, dan monitor
  lulus. Entry production 197,8 KiB dan CSS 149,4 KiB.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout dan commerce activation tetap fail-closed.

## 2026-08-24 - Wishlist variant integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `759e2a5c8f6c8497afc0d49d3e3d8da32ae44592`, immutable Hostinger release
  `20260824-759e2a5`, rollback `20260824-56e1e56`, dan public runtime smoke.
- Wishlist kini menyimpan satu warna/varian per produk, memigrasikan data ID
  lama, merekonsiliasi produk/warna terhadap katalog live, mempertahankan data
  saat API gagal, dan memindahkan exact saved variant ke cart.
- Kartu, Quick View, Detail Produk, Saved Bags, header count, recovery notice,
  empty state, keyboard, dan no-overflow lulus desktop/mobile. Product Grid
  menjadi lazy chunk 5,29 kB; entry production 193,0 KiB.
- Storefront unit 54/54, Laravel 302 pass/1 skip dengan 2.249 assertion, build,
  dependency/security audit, backup, endpoint, worker, monitor, dan public
  smoke lulus.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout dan commerce activation tetap fail-closed.

## 2026-08-24 - Product detail variant integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `56e1e56c6ba8e494691410fab54e6910cdd0da36`, immutable Hostinger release
  `20260824-56e1e56`, rollback `20260824-9025d07`, dan public runtime smoke.
- Detail produk mempertahankan warna terpilih melalui URL dan seluruh jalur
  discovery. Harga, stok, media, quantity, serta identitas cart mengikuti
  varian yang sama; sold-out dan batas stok fail-closed.
- Galeri nol/satu/banyak gambar, loading, error/retry, invalid color,
  disclosure spesifikasi, sticky mobile action, related product, keyboard,
  dan no-overflow lulus desktop/mobile. Product Detail menjadi lazy chunk
  12,24 KiB dan entry production tetap di bawah 200 KiB.
- Storefront unit 48/48, Laravel 302 pass/1 skip dengan 2.249 assertion, build,
  dependency/security audit, backup, endpoint, worker, monitor, dan public
  smoke lulus.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout dan commerce activation tetap fail-closed.

## 2026-08-24 - Product card integrity production release

- Informasi `CONFIRMED` berasal dari exact source
  `9025d078a75bbad49285ae7b528e66c708a2a7a8`, immutable Hostinger release
  `20260824-9025d07`, rollback `20260824-b9782ad`, dan public runtime smoke.
- Kartu produk kini mempertahankan varian, media, harga, stok, dan identitas cart
  yang sama. Sold-out fail-closed; galeri, wishlist, Quick View, aksi touch,
  keyboard, focus return, dan feedback live tersedia pada desktop/mobile.
- Quick View dan Video Tile dipisah ke lazy chunk; import Media Chrome dikurangi
  ke kontrol yang dipakai. Performance production lulus pada entry 198,8 KiB,
  total JS 653,3 KiB, dan CSS 141,5 KiB.
- Unit 42/42, browser dua viewport, Laravel 302 pass/1 skip dengan 2.249
  assertion, build, dependency audit, backup, worker, monitor, endpoint, log,
  dan public smoke lulus.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout dan commerce activation tetap fail-closed.

## 2026-08-24 - Home and live catalog discovery production release

- Exact source `b9782ad9861fdb971c55591a16d1392fd5827e98` aktif sebagai
  immutable Hostinger release `20260824-b9782ad`; rollback langsung
  `20260824-51dfa7c` dipertahankan.
- Beranda tidak lagi membuka produk yang salah ketika scene editorial tidak
  tersedia. Katalog memakai facet live, alias scene yang konsisten, angka stok,
  URL yang dapat dibagikan, browser history, serta adaptive product grid.
- Loading skeleton, fail-closed API error/retry, empty/wishlist recovery, dan
  drawer keyboard tersedia pada desktop/mobile. Unit 37/37, browser fixture dan
  public production, Laravel 302 pass/1 skip dengan 2.249 assertion, builds,
  dependency/security, backup, workers, headers, endpoint, dan monitor lulus.
- Delivery `PRODUCTION_DEPLOYED`. Readiness tetap `28/40`, 70%, `ready=false`
  dengan 12 blocker; checkout, provider, dan commerce activation tetap
  fail-closed.

## 2026-08-24 - Home discovery integrity candidate

- Source `5dd225c6b6cfebf34235321d0bd160a8e7f0dfd0` merekonsiliasi
  `Shop by Scene` dengan katalog live, menormalisasi alias `Campus Fit`,
  mencegah fallback ke produk yang salah, dan menyeimbangkan grid berdasarkan
  jumlah produk yang tersedia.
- Unit storefront 32/32, browser desktop/mobile, release-candidate verifier,
  Laravel 302 pass/1 skip dengan 2.249 assertion, build admin, serta audit
  dependency lulus.
- Artifact immutable `20260824-5dd225c` sudah diverifikasi, tetapi tidak aktif.
  Setelah cutover percobaan, production dikembalikan ke release
  `20260824-51dfa7c` karena operational monitor belum hijau setelah kesalahan
  perintah operator. Tidak ada katalog, order, payment, atau shipping yang
  diubah.
- Status `LOCAL_VALIDATED / COMMITTED_LOCAL / IMPLEMENTED_NOT_DEPLOYED`.
  Readiness production tetap `28/40`, 70%, `ready=false`; 12 blocker dan
  checkout fail-closed tetap berlaku.

## 2026-08-24 - SagaDev payment monitoring production backport

- Informasi `CONFIRMED` berasal dari exact Saga Platform source
  `65f9ff4ee42926cabfe0ebd83de3ae1f1fcca7c0`, immutable release
  `20260824104557-65f9ff4`, dan postdeploy runtime verification.
- Workspace SagaDev kini memiliki laporan pembayaran order CoyaBag yang
  product-scoped dan PII-free, beserta tiga API internal signed untuk readiness,
  create, dan status pembayaran.
- Backport berasal langsung dari exact baseline production; 818 tracked runtime
  file cocok sebelum perubahan. Satu migration registrasi produk diterapkan,
  backup dan rollback diverifikasi, SagaBook/SagaView tidak berubah.
- Full backend 966 test/11.063 assertion, focused 20/176, Playwright 14/14
  mobile-desktop, build, dependency audit, public smoke, service, dan log gate
  lulus. Guzzle dan CommonMark diperbarui untuk menutup advisory baseline.
- Delivery `PRODUCTION_DEPLOYED_MONITORING`. Installation dan credential tetap
  nol, checkout storefront tetap fail-closed, payment production activation dan
  business readiness tetap `BLOCKED`.

## 2026-08-20 - Shipping/payment operations production deployment

- Exact source `51a29abe211af5e663ba49b9844ef1bbc3fe3c66` aktif sebagai
  immutable Hostinger release `20260820-51a29ab`; rollback langsung
  `20260820-fd1787a` tersedia.
- Destination/quote integrity, paid-to-fulfillment, Delivery Order foundation,
  pickup/label/tracking, shipping finance, cancellation/incident/refund,
  command center, dan customer timeline kini `PRODUCTION_DEPLOYED`.
- Exact-source RC gate, empat migration additive, fresh backup/checksum, dua
  worker, operational monitor, dan 39 public checks desktop/mobile lulus.
- Provider dan COD tetap eksplisit default-off. Readiness `20/40`, 50%,
  `ready=false`, dengan 20 blocker; activation dan business readiness tetap
  `BLOCKED`.
- Source project tidak dipush ke GitHub sesuai arahan owner; release provenance
  menggunakan exact commit lokal, manifest, checksum, revision runtime, dan
  Hostinger evidence.

## 2026-08-09 - R5 immutable Node 24 CI supply chain

- Source `b739106018b6a8ddbdccabe3046623ed413ebf5d` memindahkan tiga
  job Node dari runtime 20 yang sudah EOL ke Node 24.
- Seluruh 11 action uses dipin ke full commit SHA: checkout `v7.0.1`,
  setup-node `v7.0.0`, cache `v6.1.0`, dan setup-php `2.37.2`; workflow juga
  dibatasi ke `permissions: contents: read`.
- Verifier Goal 8 kini fail-closed terhadap floating tag, action tambahan,
  Node 20, perubahan job/trigger, dan permission yang melebar.
- Local Goal 8, Goal 10, production-runtime, full RC/backend/admin/browser dari
  checkpoint kandidat, dan dependency audit lulus. Branch run `31301386158`
  serta exact-main run `31301462116` lulus empat job dengan nol anotasi.
- Status `MAINLINE_SYNCED / CI_VERIFIED`. Production, provider, credential,
  data bisnis, activation, dan business readiness tidak berubah.

## 2026-08-09 - R4 storefront security-header inheritance

- Source `599f19272e3f02c35b0ed654259ca5bad2273ee6` menduplikasi empat
  security header yang sudah disetujui ke location HTML dan asset agar directive
  `Cache-Control` tidak menonaktifkan inheritance Nginx.
- Contract test baru memeriksa nilai header lengkap, modifier `always`, serta
  cache policy `no-cache` untuk HTML dan `public, immutable` untuk asset.
- Full RC, Laravel 177 test (176 pass, 1 intentional skip), cart browser dua
  viewport, admin build, dan dependency audit lulus. Exact-main GitHub Actions
  run `31300148412` lulus pada empat job.
- Guarded config deploy menyimpan rollback checksum, lulus `nginx -t`, reload,
  independent header/cache probes, browser 1440x900 dan 390x844, serta service/
  log audit. Probe pertama terlalu cepat setelah reload dan rollback otomatis;
  percobaan berikutnya memakai readiness retry dan lulus.
- Status `PRODUCTION_DEPLOYED`; application release tetap
  `20260809-264c6ac`. Provider, data bisnis, canary order, readiness 17/17,
  activation, dan business readiness tidak berubah.

## 2026-08-09 - R3 guarded production parity deploy

- Exact source `264c6ac2ebec33c6471a4c49572ddcdc82b51cf2` dan artifact
  `v1.0.0-rc.3` dipromosikan ke immutable Hostinger release
  `20260809-264c6ac`; rollback `20260730-33637aa` dipertahankan.
- Fresh database backup lulus checksum/gzip validation. Composer production
  install/audit, 30 migration dengan nol pending, readiness, storefront/API/
  admin, dua worker, dan security header API/admin lulus.
- Browser production 1440x900 dan 390x844 lulus untuk stale-cart
  reconciliation, focus/Escape, no-overflow, API-failure preservation, dan
  checkout fail-closed. Tiga scheduler cycle teramati tanpa tipe error baru.
- Atomic cutover memakai rollback otomatis. Tiga false-positive pada gate
  orchestration kembali ke release lama dengan sehat sebelum percobaan final
  diterima; tidak ada provider activation, data owner mutation, canary order,
  atau restore drill.
- Status `PRODUCTION_DEPLOYED`. Readiness tetap fail-closed 17 pass / 17
  blocker; activation dan business readiness tetap `BLOCKED`.

## 2026-08-09 - R2 mainline dan immutable RC

- Source `264c6ac2ebec33c6471a4c49572ddcdc82b51cf2` dipromosikan ke
  `main` melalui fast-forward tanpa squash, rebase, force-push, atau history
  rewrite.
- GitHub Actions `main` exact-SHA run `31292840016` lulus pada Frontend QA,
  Backend QA, MySQL 8 Integration, dan Cart Browser QA.
- Tag annotated immutable `v1.0.0-rc.3` dan GitHub prerelease menunjuk exact
  SHA yang sama. Release memuat source archive, storefront, admin, manifest,
  serta SHA-256 checksums yang tervalidasi.
- Manifest merekam checksum lock/build, 30 file migration, rollback production
  `20260730-33637aa` / `33637aa9f6f79037a2555c3b0fc0d93b700450dc`,
  dan batas `UNVERIFIED_NOT_DEPLOYED` untuk migration production.
- Status `LOCAL_VALIDATED / MAINLINE_SYNCED / CI_VERIFIED /
  RELEASE_CANDIDATE / NOT_DEPLOYED`. Provider, konfigurasi, data, deployment,
  dan commerce production tidak berubah.

## 2026-08-09 - Batch A exact-SHA CI closure

- Source `df2853add505814918dfe33128c55938360b8962` pada branch
  `codex/finalization-f0-f11` menyelaraskan dependency backend dengan PHP 8.3,
  discovery browser lintas-platform, case-sensitive Inertia page path, test
  isolation dari Vite manifest, dan fixture shipping quote MySQL.
- Gate lokal lulus: Laravel full 177 test dengan 176 pass dan 1 skip,
  storefront unit/build/runtime, admin build, browser cart desktop/mobile,
  serta audit Composer/npm nol vulnerability.
- GitHub Actions exact-SHA run `31269460133` lulus pada Frontend QA, Backend
  QA, MySQL 8 Integration, dan Cart Browser QA.
- Status `LOCAL_VALIDATED / REMOTE_BRANCH_SYNCED / CI_VERIFIED /
  IMPLEMENTED_NOT_DEPLOYED`. Tidak ada merge `main`, tag RC, deployment,
  aktivasi provider, atau perubahan production.

## 2026-08-08 - Batch A dependency security candidate

- CommonMark diperbarui ke `2.9.0`; Vite storefront dan admin diperbarui ke
  `8.2.1` beserta dependency transitive yang aman.
- Composer audit serta full npm audit storefront/admin tidak menemukan
  vulnerability.
- Source `a8e8dd1b64c3b5f8ced11b9dc49533b1aac1b8bc` pada branch
  `codex/finalization-f0-f11`; branch lokal dan remote sinkron.
- Gate lokal lulus: storefront unit/build/runtime, admin build, Laravel full
  suite, provider/notification tests, dan browser cart desktop/mobile.
- Status `LOCAL_VALIDATED / REMOTE_BRANCH_SYNCED / CI_UNVERIFIED`. Empat job CI
  exact-SHA belum dapat dibaca, sehingga `main`, tag RC, dan deployment tetap
  ditahan. Production tidak berubah.

## 2026-08-06 — Cart recovery dan dependency security candidate

- Cart persisted kini direkonsiliasi terhadap katalog live setelah API siap;
  API loading/error tetap mempertahankan cart dan checkout fail-closed.
- Dialog cart memperoleh focus, `Escape`, inert closed state, touch target, dan
  browser regression desktop/mobile.
- Guzzle diperbarui ke `7.15.3` dan Promises ke `2.5.2`; npm dan Composer audit
  tidak menemukan advisory.
- Source `368a89595ac0a667d99357b7c8216847cef707fb` pada branch
  `codex/finalization-f0-f11`; unit, storefront/admin build, Laravel, browser,
  secret scan, dan local release gate lulus.
- Delivery candidate: `LOCAL_VALIDATED / REMOTE_BRANCH_SYNCED`. Candidate belum
  berada di `main`, belum tagged, belum deployed, dan CI remote belum dapat
  diverifikasi dari konektor audit.
- Production tetap release `20260730-33637aa` dengan source
  `33637aa9f6f79037a2555c3b0fc0d93b700450dc`; activation dan business
  readiness tetap `BLOCKED`.

## 2026-07-31 — Central knowledge baseline

- Status production surfaces dan activation blockers disinkronkan.
- Storefront/API/admin dicatat live tanpa mengklaim transaksi production aktif.

## 2026-07-30 — Scheduler terminal expiry hardening

- Terminal order tidak ditransisikan ulang.
- Legacy reservation cleanup idempotent.
- MySQL concurrency acceptance lulus.
- Provider/payment activation tetap fail-closed.
