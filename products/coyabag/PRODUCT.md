# COYABAG Product Knowledge

Updated: 24 Agustus 2026
Evidence status: production surfaces + blocked commerce activation

## Tujuan dokumen

Menjadi ringkasan fakta kanonik COYABAG dan memisahkan surface live dari
commerce activation. Detail berada di [DOSSIER](DOSSIER.md); keputusan owner
berada di [GAPS](../../GAPS.md#coyabag).

## Konteks

Storefront/API/admin dapat live sementara payment, shipping, data final, dan
operasi commerce tetap belum diaktifkan.

## Ringkasan

COYABAG adalah ecommerce tas streetwear dengan storefront React/Vite dan backend
operasional Laravel/Inertia.

Visual direction: streetwear, hitam-putih, editorial product focus, dengan
Instrument Serif untuk display dan Helvetica family untuk UI/body.

## Target pengguna

- Customer fashion/streetwear.
- Owner/admin COYABAG.
- Operator order, inventory, payment, shipping, return, content, dan support.

## Surface production

- Storefront: `https://www.coyabag.com`
- API: `https://api.coyabag.com`
- Admin: `https://admin.coyabag.com`

Surface live tidak sama dengan transaksi commerce sudah aktif penuh.

## Fitur storefront

- Homepage, shop, product detail, gallery, testimonial, lookbook, about, FAQ.
- Variant/color, gallery, product specification, review, related products.
- Search, cart, wishlist, checkout UI.
- Responsive desktop/mobile.
- Canonical metadata, OpenGraph, Twitter image, robots, sitemap, dan structured
  data.

## Fitur backend/admin

- Admin session auth, RBAC, 2FA foundation, audit.
- Order, product, variant, inventory ledger, reservation.
- Payment, reconciliation, refund, return.
- Shipping, promo, CMS, customer, report.
- Privacy request, invoice, notification outbox, health.
- MySQL/Redis/queue/cron dan immutable release tooling.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `BLOCKED`. Business readiness:
`BLOCKED`.

- Storefront, API, dan admin sudah live di Hostinger.
- Release aktif `20260824-ab859d3` dengan source
  `ab859d3519a84c4cc1647a55671552b53979a473` melayani production;
  rollback langsung `20260824-f3d75a1` dipertahankan.
- Release ini menambahkan destination/quote integrity, payment-to-fulfillment,
  Delivery Order/AWB/pickup/label foundation, tracking webhook inbox, shipping
  finance ledger, cancellation/incident/refund workflow, command center, dan
  customer timeline.
- Empat migration additive, fresh backup/checksum, dua worker, operational
  monitor, serta 39 public smoke check desktop/mobile lulus.
- Readiness production resmi `30/42` atau 71%, `ready=false`, dengan 12
  blocker. COD, Delivery API, payment production, dan provider webhook eksplisit
  tidak diaktifkan.
- Release aktif memperbaiki discovery Beranda dan Katalog: tujuan scene selalu
  mengikuti produk live, alias `Campus Fit` selaras dengan `Campus/Kampus`,
  fallback aman kembali ke katalog, grid adaptif, facet berasal dari snapshot
  Laravel, stok memakai angka inventory, dan filter dapat dibagikan lewat URL.
- Loading, API error/retry, empty result, wishlist recovery, browser history,
  serta drawer keyboard lulus acceptance desktop/mobile. Full unit, build,
  backend, security/dependency, public smoke, worker, dan operational monitor
  juga lulus.
- Kartu produk kini memakai kontrak varian yang fail-closed untuk media, harga,
  stok, warna, dan cart. Sold-out tidak dapat ditambahkan, Quick View membawa
  varian terpilih, aksi mobile tidak bergantung hover, serta dialog/focus return
  lulus acceptance desktop/mobile.
- Quick View dan Video Tile dimuat per fitur; Media Chrome hanya membawa kontrol
  yang dipakai. Build production lulus budget entry 198,8 KiB dan total JS
  653,3 KiB.
- Detail produk kini mempertahankan warna terpilih dari kartu produk, Quick
  View, pencarian, editorial link, Bag Finder, dan cart melalui URL yang dapat
  dibagikan. Harga, stok, media, quantity, dan identitas cart mengikuti varian
  yang sama; varian sold-out atau batas stok tetap fail-closed.
- Galeri menangani nol, satu, atau banyak gambar tanpa kontrol palsu. Loading,
  API error/retry, invalid color, disclosure spesifikasi, sticky mobile action,
  serta related product lulus acceptance desktop/mobile. Product Detail dimuat
  sebagai lazy chunk 12,72 kB dan entry production tetap di bawah 200 KiB.
- Wishlist menyimpan satu warna/varian authoritative per produk, memigrasikan
  format ID lama setelah katalog live siap, dan mempertahankan data lokal saat
  API loading/gagal. Produk yang tidak lagi diterbitkan dihapus, warna yang
  hilang dipulihkan, dan varian sold-out tetap dapat dihapus.
- Kartu, Quick View, Detail Produk, Saved Bags, badge header, dan cart handoff
  berbagi state varian yang sama pada desktop/mobile. Product Grid menjadi lazy
  chunk 5,29 kB; entry production lulus budget pada 193,0 KiB.
- Cart production memakai identitas produk dan varian stabil, menggabungkan item
  legacy yang sama, membatasi jumlah ke stok live, serta menolak produk, varian,
  atau harga yang tidak lagi valid. API gagal tidak menghapus cart; storage
  perangkat yang gagal tetap mempertahankan sesi aktif dengan retry yang jelas.
- Drawer dan halaman Cart berbagi line item, total, remove/undo, media fallback,
  recovery notice, serta kontrol keyboard/touch desktop-mobile. Laravel wajib
  memvalidasi varian aktif dan published commercial snapshot sebelum quote atau
  order. Full acceptance lulus; entry production 197,8 KiB dan CSS 149,4 KiB.
- Checkout tidak lagi mengirim raw order token atau private access URL ke
  JavaScript. Akses browser memakai cookie order HttpOnly, Secure, SameSite Lax
  yang dibatasi ke path order; frontend hanya menyimpan order code dalam
  sessionStorage.
- Token legacy dimigrasikan satu kali lalu dihapus. Mutasi berbasis cookie
  memerlukan Origin storefront yang diizinkan, sedangkan signed recovery link
  terikat access generation dan kedaluwarsa setelah reissue.
- Full storefront/Laravel/security/build, browser fixture dan public
  desktop-mobile, backup, CORS, worker, serta operational monitor lulus.
- Cart juga menyegarkan katalog setelah reconnect, mendeduplikasi refresh, dan
  memverifikasi perubahan dari tab lain tanpa menghapus sesi ketika payload
  eksternal invalid. Handoff ke Checkout melakukan satu pemeriksaan terakhir;
  perubahan harga, stok, atau availability menahan customer pada Review Cart
  sampai pemeriksaan berikutnya bersih.
- Freshness, checking, changed, retry, offline, dan disabled-commerce states
  lulus desktop/mobile tanpa overflow atau browser error. Entry production
  tetap dalam budget pada 199,0 KiB; commerce tetap fail-closed.
- Quote pengiriman manual/external sekarang unik per penerbitan dan tidak lagi
  menimpa snapshot lama. Order menyimpan waktu terbit/kedaluwarsa, sedangkan
  Checkout menyaring quote kedaluwarsa, menahan submit, dan me-refresh quote
  otomatis sebelum masa berlaku habis.
- Admin Order Detail menampilkan provenance tarif yang aman dan operasional
  tanpa destination hash atau payload provider privat. Storefront 75/75,
  Laravel 317 pass/1 MySQL-only skip dengan 2.374 assertion, browser
  desktop/mobile, full build/security/dependency, backup, workers, scheduler,
  public smoke, dan operational monitor lulus.
- Payment dan confirmation memakai kontrak action server-authoritative. Order
  terminal/expired, pembayaran selesai/gagal, dan attempt ambigu tidak dapat
  membuat sesi baru atau mengekspos redirect usang. Customer mendapat refresh
  saat kembali dari gateway; unknown outcome tetap menunggu review operator.
- Storefront 78/78, Laravel 320 pass/1 MySQL-only skip dengan 2.405 assertion,
  browser desktop/mobile, full RC/security/dependency, backup, workers,
  scheduler, public smoke, dan monitor lulus. Entry production 199,6 KiB.
- Status pengiriman pelanggan kini berasal dari satu kontrak server-authoritative
  untuk no-shipment, persiapan, siap dikirim, dalam perjalanan, stale,
  exception, delivered, cancelled, dan returned. Event terakhir yang tersimpan
  menjadi sumber kebenaran; storefront tidak membuat resi atau janji kurir.
- Customer dan Admin Shipment Detail memakai state publik yang sama. Refresh
  berhenti pada state terminal/operator-required dan pulih setelah fokus atau
  koneksi kembali. Storefront 80/80, Laravel 322 pass/1 MySQL-only skip dengan
  2.449 assertion, browser desktop/mobile, full RC/security/dependency, backup,
  workers, scheduler, dan public smoke lulus. Entry production 199,0 KiB.
- Scheduler terminal expiry sudah fail-closed dan concurrency-tested.
- Release candidate source `264c6ac2ebec33c6471a4c49572ddcdc82b51cf2`
  merekonsiliasi
  cart tersimpan dengan katalog live setelah API siap, mempertahankan cart saat
  API gagal, dan menahan checkout sebelum verifikasi katalog selesai.
- Batch A pada release candidate tersebut memperbarui CommonMark dan Vite storefront/
  admin serta menutup advisory dependency yang terdeteksi pada baseline.
- Candidate lulus unit, build, browser desktop/mobile, Laravel, npm/Composer
  audit, dan secret scan lokal; branch remote sudah sinkron.
- GitHub Actions `main` exact-SHA run `31292840016` lulus pada seluruh empat job:
  Frontend QA, Backend QA, MySQL 8 Integration, dan Cart Browser QA.
- Source sudah fast-forward ke `main` tanpa history rewrite dan ditag immutable
  sebagai `v1.0.0-rc.3`. GitHub prerelease memuat source, storefront, admin,
  manifest, serta checksum yang menunjuk exact SHA yang sama.
- Release tersebut aktif di Hostinger sebagai immutable release
  `20260809-264c6ac`; rollback langsung `20260730-33637aa` dipertahankan.
- Guarded cutover, fresh backup/checksum, nol migration pending, storefront/API/
  admin smoke, dua queue worker, security header API/admin, browser desktop/
  mobile, dan tiga scheduler cycle lulus. Deployment manifest public-safe
  mencatat exact source dan artifact parity.
- Source hardening `599f19272e3f02c35b0ed654259ca5bad2273ee6` menutup
  inheritance header storefront ketika HTML/asset memakai cache policy
  location-level. Exact-main CI run `31300148412`, guarded Nginx deploy,
  browser dua viewport, dan postdeploy audit lulus; HTML dan asset kini
  konsisten mengirim HSTS, nosniff, frame policy, serta referrer policy.
- Source CI hardening `b739106018b6a8ddbdccabe3046623ed413ebf5d`
  memindahkan tiga job build/test ke Node 24, mem-pin seluruh 11 pemakaian
  GitHub Action ke full commit SHA, dan membatasi permission workflow ke
  `contents: read`. Branch run `31301386158` serta exact-main run
  `31301462116` lulus empat job dengan nol anotasi, termasuk nol warning Node
  20. Status perubahan ini `MAINLINE_SYNCED / CI_VERIFIED`; production tidak
  berubah.
- Status `LOCAL_VALIDATED / MAINLINE_SYNCED / CI_VERIFIED /
  PRODUCTION_DEPLOYED`. Activation dan business readiness tetap `BLOCKED`.
- Commerce nyata tetap ditahan oleh blocker provider/operasional.

- Monitoring pembayaran order CoyaBag kini tersedia pada workspace SagaDev
  yang terlindungi. Saga Platform release `20260824104557-65f9ff4` menjalankan
  exact source `65f9ff4ee42926cabfe0ebd83de3ae1f1fcca7c0`; rollback langsung
  `20260804171621-0ab9d8e` dipertahankan.
- Control plane menyediakan tiga kontrak internal signed untuk readiness,
  create, dan status pembayaran order. Dashboard menampilkan agregat status,
  GMV, fee, net, dan settlement tanpa nama, email, telepon, atau alamat customer.
- Satu migration registrasi produk diterapkan, tetapi installation dan service
  credential CoyaBag tetap nol. Checkout publik tetap
  `PRODUCTION_READINESS_BLOCKED`; status ini adalah
  `PRODUCTION_DEPLOYED_MONITORING`, bukan payment production-activated.

## Blocker business activation

- Credential, provider, dan controlled-trial mode pembayaran SagaDev.
- Owner 2FA enrollment serta recovery SOP.
- Launch UAT dan release sign-off operasional/security.
- SMTP/email dan notification sender production.
- Object storage untuk media produk, konten, dan bukti pembayaran.
- Persetujuan policy privasi dan retensi.
- Data produk, seller identity, legal/tax, policy, dan transaction UAT final tetap
  memerlukan keputusan owner sebelum business readiness.

## Belum boleh diklaim

- Checkout UI tidak membuktikan pembayaran live.
- Adapter provider tidak membuktikan credential atau transaksi berhasil.
- Data dummy tidak boleh dipakai sebagai katalog production.

## Ide konten

- Streetwear product storytelling lewat storefront editorial.
- Di balik operasi inventory dan reservation.
- Mengapa ecommerce surface live belum otomatis siap menerima transaksi.
- Perjalanan dari prototype ke commerce fail-closed.
