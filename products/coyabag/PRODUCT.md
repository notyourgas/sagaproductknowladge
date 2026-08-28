# COYABAG Product Knowledge

Updated: 29 Agustus 2026
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

- Homepage, shop, product detail, gallery, testimonial, lookbook, about, FAQ,
  privacy, terms, dan return policy.
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
- SagaDev Managed Gateway controlled trial sudah terhubung melalui Saga
  Platform release `20260828203505-bec577e`, exact source
  `bec577ec407c2fc8693ffea4cbb7c2adb5f70040`, dengan rollback
  `20260824104557-65f9ff4`. Satu instalasi dan satu service account scope minimum
  aktif; signed readiness serta callback fail-closed lulus. Batas trial adalah
  Rp100.000 per transaksi dan lima payment intent baru per hari.
- Readiness COYABAG naik menjadi 40/42 (95%). Owner 2FA dan
  privacy/retention policy versi `2026.08-v1` sudah aktif, terverifikasi, dan
  disetujui dengan fingerprint yang cocok. Kebijakan publik memuat delapan
  bagian; audit tetap `report_only` dan tidak menghapus record.
- Checkout publik tetap `PRODUCTION_READINESS_BLOCKED` hanya karena UAT 15
  langkah masih 0/15 dan release sign-off belum lengkap. Nol payment intent
  dibuat saat deployment acceptance.
- Release aktif `20260829-e1c8b65` dengan exact source
  `e1c8b65f09d0ed3b07d479a2137797cfb9f39cd4` melayani production;
  rollback langsung `20260829-e97da17` dipertahankan. Payment gateway sekarang
  memakai URL kembali HTTPS kanonik storefront dan menolak redirect internal
  yang tidak sesuai kontrak, sehingga kegagalan validasi tidak lagi terbaca
  sebagai sesi pembayaran ambigu. Owner tetap memiliki jalur UAT pembayaran
  nyata yang privat, signed, recent-auth, satu-link-satu-order, gateway-only,
  maksimal Rp100.000 termasuk ongkir, dan maksimal tiga link per hari.
  Capability tidak membuka checkout publik dan belum digunakan untuk membuat
  order atau payment intent pada acceptance release.
- Pencarian tujuan manual hanya memakai kota/provinsi tujuan. Teks kota asal
  pada label tarif tidak lagi dapat memunculkan tujuan palsu.
- Admin Beranda memperbarui seluruh ringkasan melalui snapshot terautentikasi,
  permission-gated, rate-limited, dan private/no-store. Kegagalan refresh
  mempertahankan snapshot valid terakhir dan memberi recovery state aksesibel,
  sehingga operator tidak menerima angka kosong akibat gangguan sementara.
- Kontrak metadata tunggal lima route inti sudah `PRODUCTION_DEPLOYED`.
  Laravel dan React memakai kontrak title/description/schema yang sama,
  kontrak tidak lengkap gagal tertutup ke `noindex`, dan initial JavaScript
  lulus pada 110,5 KiB gzip. Duplikasi CSS hero dikonsolidasikan tanpa mengubah
  visual sehingga entry CSS kembali lulus gate 160 KiB.
- Hero homepage kembali ke komposisi campaign full-bleed hitam-putih versi
  sebelumnya dengan headline `BAGS FOR THE SCENE`. Foto memakai crop `cover`,
  gradient menjaga keterbacaan, dan tinggi desktop dibatasi 461–521 piksel.
  Carousel, CTA, Gallery share navigation, dan perbaikan featured card tetap
  aktif.
- Storefront 215/215, 16 skenario navigasi, 110 kombinasi responsive, 32 route
  accessibility pada desktop/mobile, serta pemeriksaan hero live pada 390,
  768, 1440, dan 1920 piksel lulus. GitHub Actions exact SHA tidak berjalan
  karena billing/spending limit akun, sehingga tidak diklaim hijau.
- Release sebelumnya `20260827-324a250` menjalankan exact source
  `324a2506694c42c9ae82ccd9f7041f314640e84c`.
- Filter dan preview Gallery kini tersimpan pada URL yang dapat dibagikan.
  Browser Back menutup preview dan mengembalikan fokus, deep link membuka foto
  valid di luar batas awal, dan tautan item usang dipulihkan tanpa menebak foto
  pengganti. Flow publik desktop/mobile lulus tanpa mutasi CMS atau commerce.
- Order Status kini menyediakan kontrol untuk menghapus akses pesanan dari tab
  aktif setelah detail terbuka atau saat kode tersimpan tidak valid. Hanya kode
  sesi yang cocok dan query URL yang dibersihkan; pesanan server tidak
  dibatalkan atau diubah.
- Setelah checkout berhasil, reload Cart kini menawarkan akses kembali ke
  pembayaran atau status demo terakhir. Hanya kode order yang disimpan pada
  sesi tab dan detail pembayaran tetap diverifikasi server. Checkout nyata
  tetap tersembunyi saat readiness diblokir.
- Detail checkout kini dipulihkan dari penyimpanan per tab selama maksimum 30
  menit. Draft tidak menyimpan token pilihan tujuan atau ID quote pengiriman,
  sehingga tujuan dan ongkir wajib diverifikasi ulang setelah restore. Status
  loading, tersimpan, dipulihkan, dihapus, dan gagal tersedia; draft dihapus
  setelah order berhasil.
- Modul draft dan API checkout dimuat saat dibutuhkan. Entry JavaScript awal
  404,9 KiB dengan gzip 111,5 KiB dan tetap di bawah budget 112 KiB.
- Product Detail menampilkan ukuran, material, kapasitas, dan perawatan dalam
  urutan stabil dari kontrak Admin/API. Field kosong diberi status sedang
  diverifikasi dan internal key tidak diekspos. Katalog live baru menerbitkan
  perawatan; tiga field lain tetap gap konten operator.
- Cart variant switch sekarang `PRODUCTION_DEPLOYED`. Cart page/drawer dapat
  mengganti warna exact, menyegarkan harga/media/stok/route/variant identity,
  menggabungkan destination satu kali, dan membatasi quantity ke stok live;
  pilihan sold-out atau tidak valid tetap gagal tertutup.
- Tujuh region detail horizontal `/our-product` sekarang keyboard-focusable,
  memiliki nama aksesibel dan focus indicator yang terlihat, serta dapat
  digeser dengan ArrowRight pada mobile. Ini menutup blocker accessibility yang
  sebelumnya memicu rollback candidate Cart.
- Storefront 211/211 dan Laravel 447 test dengan 446 pass serta satu
  intentional skip (4.236 assertions) lulus. Acceptance production lulus untuk
  32 route accessibility desktop/mobile, 110 kombinasi responsive, public smoke
  storefront/API/admin, worker, checksum, backup, dan postdeploy log gate.
- Readiness tetap 30/42 dengan 12 blocker; `commerceActivated=false`, TokoPay
  tetap terkunci, dan business readiness tetap blocked.
- Release sebelumnya `20260827-832a5f3` menjalankan simulator journey integrity
  dan discovery recovery.
- Alur simulator privat sekarang memakai presentasi khusus dari checkout,
  halaman simulator, konfirmasi demo, hingga timeline status. Seluruh layar
  menegaskan bahwa simulasi tidak masuk operasi order nyata.
- Browse-only discovery memulihkan cart recovery, availability varian,
  quick view, review/support, Bag Finder, Our Product, dan About berbasis CMS
  tanpa membuka transaksi yang belum siap.
- Perbaikan featured card tetap aktif, sedangkan override ProductGrid dipindah
  ke CSS lazy route. Entry CSS kembali memenuhi budget 160 KiB.
- Storefront 199/199 dan Laravel 450 test dengan 449 pass serta satu
  intentional skip lulus. Acceptance produksi juga lulus untuk 110 kombinasi
  responsive, 32 route accessibility desktop/mobile, 16 state runtime
  performance, dan crawler SEO 14 URL indexable serta empat route noindex.
- Readiness tetap 30/42 dengan 12 blocker; `commerceActivated=false`, TokoPay
  tetap terkunci, dan simulator bukan bukti payment production-activated.
- Storefront memakai arah editorial yang lebih ringkas: navigasi utama
  Koleksi/Galeri/Tentang, hero deterministik, empat model unggulan, dan satu
  blok lifestyle dengan foto client nyata. Copy publik memakai bahasa
  Indonesia yang lebih langsung dan tidak menampilkan label proses internal.
- Empat kartu model unggulan tidak lagi memakai tinggi tetap 218 piksel.
  Packshot memakai frame 4:3 dengan `contain`, sedangkan nama, copy, harga,
  metadata, dan swatch berada pada body vertikal yang tumbuh sesuai isi.
- Gallery memuat 20 foto client terkurasi dengan 16 foto awal dan empat foto
  tambahan; Lookbook memuat delapan scene lifestyle. Payload CMS parsial
  digabung dan dideduplikasi dengan koleksi terkurasi, sedangkan URL media dan
  destination yang tidak aman tetap ditolak.
- Saat commerce belum siap, Cart dan add-to-cart gagal tertutup pada satu
  kontrak `commerceEnabled`. Product Detail tetap dapat dibaca dan hanya
  menampilkan CTA marketplace HTTPS yang lolos allowlist Tokopedia/Shopee.
- Acceptance live lulus 110 kombinasi route/viewport, termasuk 390, 768, 1440,
  dan 1920 px, tanpa overflow atau gambar rusak. Storefront unit 198/198,
  build, metadata, navigation, security, API/admin smoke, worker, scheduler,
  checksum, backup, dan postdeploy log gate lulus.
- Readiness tetap 30/42 dengan 12 blocker; `commerceActivated=false`, CI exact
  SHA tidak diklaim, dan business readiness tetap blocked.
- Release sebelumnya `20260827-1e9dcdd` menjalankan exact source
  `1e9dcddb454be6857687f522a90d4a29f81ef341` dengan rollback
  `20260827-2dad82c`.
- Release sebelumnya `20260827-2dad82c` dengan exact source
  `2dad82c3e1cb41db2149915eb1977512e5fc6069` melayani production;
  rollback langsung `20260827-f2a238c` dipertahankan.
- Checkout memiliki simulator pembayaran privat melalui capability bertanda
  tangan dan berbatas waktu untuk demo client. Simulator tidak membuat
  pergerakan uang, omzet, reservasi stok, customer, pengiriman, fulfillment,
  invoice, atau notifikasi produksi.
- TokoPay tetap terlihat tetapi terkunci sampai credential dan UAT transaksi
  nyata lulus. Form pengiriman manual melengkapi provinsi, kecamatan, dan kode
  pos bila provider tidak menyediakannya.
- Route konten yang dikenal tetap dapat dibuka sebagai HTTP 200 `noindex` saat
  belum diterbitkan; route tidak dikenal tetap 404. Desktop/mobile, 196
  storefront test, 449 Laravel test dengan 448 pass dan satu intentional skip,
  110 kombinasi responsive, 32 pemeriksaan accessibility, full release gate,
  public smoke, workers, dan log checks lulus.
- Readiness tetap 30/42 dengan 12 blocker; simulator bukan bukti payment atau
  commerce sudah production-activated.
- Release sebelumnya `20260826-77ed929` dengan exact source
  `77ed9295b654848fb855c599721855b992487b35` melayani production;
  rollback langsung `20260826-0fd20c3` dipertahankan.
- Catalog menyatukan status preview, restock, dan ready dengan kontrak checkout
  serta stok varian live. Jumlah warna, stock filter, full filter drawer, dan
  empty-state recovery sekarang memakai state yang sama.
- URL lama dengan `stock=available` dapat dipulihkan tanpa membuang filter
  warna, pencarian, atau scene yang masih valid. Browsing tetap tersedia,
  sedangkan intent transaksi yang tidak valid tetap diblokir.
- Desktop/mobile public acceptance, 192 storefront test, 441 Laravel test,
  full release gate, dan performance budget lulus. Readiness tetap 30/42 dengan
  12 blocker; checkout/provider tetap fail-closed.
- Release sebelumnya `20260826-0fd20c3` menjalankan Homepage commerce truth dan
  wishlist recovery.
- Homepage menyelaraskan hero, status katalog, dan label etalase dengan kontrak
  checkout serta stok varian live. Commerce terblokir menampilkan `Katalog
  Preview` dan `Lihat Koleksi`; customer dengan produk tersimpan mendapat
  recovery wishlist. Managed campaign CMS tetap berlaku.
- Desktop/mobile public acceptance, 188 storefront test, 441 Laravel test,
  full release gate, serta initial-performance budget lulus. Entry JS turun
  dari 201.4 KiB ke 194.8 KiB. Readiness tetap 30/42 dengan 12 blocker;
  checkout/provider tetap fail-closed.
- Release sebelumnya `20260826-a575c3b` menjalankan Admin Payment workflow
  integrity.
- Admin Payments memasking identitas customer dan menonaktifkan pencarian nama
  untuk Finance, sementara Owner mempertahankan akses sesuai permission.
  Rekonsiliasi manual terikat provider aktif dan gagal tertutup sampai provider
  siap. Daily close ditolak bila review, exception, atau dana gateway settled
  yang belum matched masih terbuka; retry tetap idempotent.
- Control Desk pembayaran menyediakan status provider dan daily close,
  blocker actionable, konfirmasi, serta state loading/empty/error/success pada
  desktop dan mobile. 183 storefront test, 441 Laravel test, public smoke, dua
  worker, dan scheduler observation lulus. Readiness tetap 30/42 dengan 12
  blocker; checkout dan provider tetap fail-closed.
- Release sebelumnya `20260826-b6f1c55` menjalankan Admin Stock Opname recovery.
- Admin Stock Opname menyimpan edit sebelum dialog ditutup, mengizinkan angka
  dikosongkan kembali sebagai belum dihitung, dan membawa hitungan lengkap
  langsung ke review selisih. Approval kedaluwarsa memulihkan sesi ke review
  tanpa posting ledger; pengajuan ulang membuat approval revision-bound baru.
- Admin dan Owner terpisah menyelesaikan approval empat mata, dan variance hanya
  diposting sekali. Desktop/mobile acceptance, 183 storefront test, 436
  Laravel test, no-migration immutable deploy, public smoke, serta scheduler
  observation lulus. Readiness tetap 30/42 dengan 12 blocker.
- Release sebelumnya `20260826-d1950e6` menjalankan Admin Inventory storefront
  truth dan guided adjustment integrity.
- Admin Inventory memisahkan stok operasional dari stok yang benar-benar tayang
  pada snapshot storefront terakhir. Tujuh queue, status dampak storefront,
  dan alert stok tayang membantu operator memprioritaskan stok customer-visible.
- Adjustment meminta arah Stock Masuk atau Stok Keluar, membatasi alasan yang
  kompatibel, menampilkan saldo sebelum/sesudah, dan menolak kombinasi arah
  serta alasan yang tidak valid di server. Desktop/mobile acceptance, 183
  storefront test, 434 Laravel test, no-migration immutable deploy, dan public
  smoke lulus. Readiness tetap 30/42 dengan 12 blocker.
- Release sebelumnya `20260826-5184bfe` menjalankan Admin Media publication
  integrity.
- Admin Media membandingkan media mutable dengan snapshot produk immutable
  terakhir. Operator melihat state live, draft, arsip, baru, diubah, dan akan
  dihapus, beserta queue menunggu publish dan action ke checklist publikasi.
- Perubahan media tidak masuk katalog pelanggan sampai publish produk eksplisit.
  Desktop/mobile acceptance, 183 storefront test, 432 Laravel test, release
  gate, immutable deploy, dan public smoke lulus tanpa migration baru.
- Release sebelumnya `20260826-313aa8f` mengaktifkan Catalog V2 studio media.
- Katalog studio V2 memiliki 11 tipe, 31 warna, dan 372 file WebP fisik.
  Tujuh produk terverifikasi dipublikasikan dengan 21 varian dan 12 foto per
  varian: YONA, KIARA, GHEA, OLLA, XENA, KIMORA, dan ORLENA.
- Tipe C, D, E, dan I beserta medianya tetap tersimpan sebagai draft karena
  nama publik, harga, dan dimensi belum terverifikasi. Seluruh 31 foto interior
  memakai label landscape. Stok seluruh varian tetap nol sehingga checkout
  fail-closed.
- Sinkronisasi katalog memakai dry-run default, manifest SHA-256 terkonfirmasi,
  transaksi database, conflict/reservation guard, publication snapshot, serta
  preservasi order dan rollback data.
- Storefront 183/183 dan Laravel full 430 test dengan 429 pass serta satu
  intentional skip lulus. Browser public desktop/mobile membuktikan 7 produk,
  21 varian, 372 asset, 12 foto detail, tanpa gambar rusak atau `/api/api/`.
  Readiness tetap 30/42 dengan 12 blocker; provider dan commerce tetap
  fail-closed.
- Varian baru selalu dimulai nonaktif. Aktivasi memerlukan identitas, harga,
  berat, foto siap, dan alt text yang lengkap; aktivasi pada produk live masuk
  status menunggu publish dan belum tersedia di storefront.
- Publish produk mengikat varian pending ke snapshot baru secara atomik.
  Varian pending tidak dihitung sebagai pengganti varian live terakhir. State,
  remediation, stale-edit recovery, dan keyboard dialog telah lulus acceptance
  desktop/mobile.
- 427 Laravel test, focused variant regression, full RC, audit dependency,
  immutable deploy, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker; checkout dan provider tetap fail-closed.
- Release sebelumnya `20260826-3c2b8a7` menjalankan Admin Produk publication
  context integrity.
- Editor Produk memakai revision guard pada save, publish, dan archive. Publish
  juga mengikat konteks produk, varian, dan media yang diamati operator; tab
  lama ditolak tanpa mutasi dan draft lokal tetap tersedia untuk dipulihkan.
- State revision, loaded time, dirty, saving, conflict, success, dan pemulihan
  versi terbaru tervalidasi pada desktop/mobile. Migrasi revision bersifat
  aditif dan media staging dipertahankan bila transaksi publish gagal.
- 424 Laravel test, focused product regression, browser acceptance, full RC,
  audit dependency, immutable deploy, dan public smoke lulus. Readiness tetap
  30/42 dengan 12 blocker; checkout dan provider tetap fail-closed.
- Release sebelumnya `20260826-312caf4` menjalankan Admin Detail Pesanan payment
  review context integrity.
- Detail Pesanan menggunakan satu aturan eligibility yang sama dengan antrean
  pembayaran. Operator melihat status siap atau tertahan beserta alasan aman;
  keputusan mengikat sesi pembayaran, bukti, dan status pesanan yang diamati
  sehingga tab lama ditolak tanpa mutasi data.
- Dialog pemeriksaan mendukung focus trap, Escape, pengembalian fokus, dan
  pengumuman refresh yang sesuai state. PII Finance tetap termasking.
- Admin Pesanan memisahkan pembayaran siap diperiksa dari pembayaran tertahan
  karena sesi, bukti, atau prasyarat keamanan belum lengkap. Blocker tetap
  terlihat dengan alasan aman dan tujuan detail yang dapat ditindaklanjuti.
- Finance menerima nama pelanggan termasking dan tidak dapat mencari dengan
  nama; owner/admin mempertahankan pencarian sesuai permission.
- Beranda Admin kini menampilkan launch readiness authoritative khusus owner,
  memasking nama pelanggan untuk role tanpa permission manajemen pesanan, dan
  memisahkan heartbeat operasional dari riwayat aktivitas integrasi.
- Acceptance owner/finance desktop-mobile, 418 Laravel test, full RC, audit
  dependency, immutable deploy, dan public smoke lulus pada release tersebut.
- Release sebelumnya `20260826-c43e337` menjalankan Admin Pesanan payment triage
  and privacy integrity.
- Release sebelumnya `20260826-b45eb8d` menjalankan Admin Beranda role and
  readiness integrity.
- Release sebelumnya `20260826-ed5814f` menjalankan SEO truthfulness integrity.
- Route CMS dengan payload publik `verified=false` sekarang 404/noindex,
  memiliki title aman yang tidak kosong, dan tidak masuk sitemap. Konten
  terverifikasi tetap mendapat metadata dan structured data sesuai route.
- Sitemap production berisi 9 URL indexable; raw-HTML acceptance lulus 9 URL
  indexable serta 9 state noindex/missing tanpa URL preview lama.
- Release sebelumnya `20260826-5acbda3` menjalankan performance integrity.
- Runtime Framer Motion tidak lagi masuk initial static graph dan dimuat ketika
  section video mendekati viewport. Initial JavaScript turun dari 526.4 KiB ke
  403.0 KiB raw dan dari 149.5 KiB ke 109.7 KiB gzip tanpa menghapus video,
  hover product, keyboard control, atau reduced-motion.
- Public acceptance lulus 16 performance state, 24 motion state, dan 110
  responsive combinations desktop/mobile. HTML/API tetap no-cache sedangkan
  hashed assets memakai cache immutable satu tahun.
- Release sebelumnya `20260826-ed81263` menjalankan motion and interaction
  integrity berikut.
- Product rail hanya menampilkan kontrol ketika benar-benar overflow, menutup
  aksi di batas, bergerak satu kartu, dan mengumumkan produk aktif. Listener
  tetap benar setelah skeleton diganti lazy ProductGrid.
- Reduced-motion memakai perpindahan instan. Aksi review pada Product Detail
  memindahkan fokus keyboard ke heading review, bukan hanya viewport.
- Motion acceptance lulus 24 state desktop/mobile dan matriks responsive
  public live-API lulus 110 kombinasi. Storefront 177/177 dan Laravel 410 test
  dengan 409 pass serta satu intentional skip lulus; dependency audit bersih.
- Readiness tetap 30/42 dengan 12 blocker; checkout tetap disabled.
- Release sebelumnya `20260826-7547c4e` menjalankan accessibility integrity,
  termasuk neutral contrast WCAG AA dan Admin Inertia login smoke terstruktur.
- Release sebelumnya `20260826-f98e51f` menjalankan route recovery integrity.
- Area route kini memiliki recovery state eager untuk kegagalan lazy asset atau
  render. Header, navigasi, Cart, dan Footer tetap tersedia; pengguna dapat
  memuat ulang route atau kembali ke Beranda tanpa menghapus Cart tersimpan.
- Pesan error publik disanitasi, fokus diarahkan ke judul status, dan perubahan
  query tidak me-remount Bag Finder. Acceptance public live-API lulus 110
  kombinasi pada tujuh viewport.
- Current gate lulus 173 storefront test dan 410 Laravel test dengan 409 pass
  serta satu intentional skip.
- Release sebelumnya `20260826-7d6e0e7` menjalankan responsive navigation.
- Compact navigation sekarang berupa dialog lazy-loaded: full-width pada
  mobile kecil dan right sheet pada viewport compact yang lebih lebar. Scroll
  background dikunci, background inert, fokus terjaga, dan Escape, backdrop,
  explicit close, active destination, serta route focus handoff didukung.
- Deterministic dan public live-API acceptance lulus 110 kombinasi pada tujuh
  viewport 320x568 sampai 1920x1080. Performance budget, full RC, immutable
  deploy, metadata/asset smoke, dan zero server error delta lulus.
- Release sebelumnya `20260826-44edf06` menjalankan FAQ dan policy verification.
- FAQ dan tiga policy memerlukan konfirmasi halaman, catatan pemeriksaan
  internal, serta konfirmasi setiap jawaban/bagian sebelum publish atau
  schedule. Perubahan fakta, kategori, tautan, versi, atau tanggal berlaku
  membatalkan konfirmasi terkait.
- API publik meredaksi metadata pemeriksaan dan hanya mengirim konten yang
  dikonfirmasi. Payload legacy yang belum diperiksa sekarang tampil sebagai
  FAQ sedang disiapkan atau dokumen belum diterbitkan.
- 170 storefront test, 410 full Laravel test dengan 409 pass dan satu
  intentional skip, full RC, dependency audit, desktop/mobile acceptance,
  immutable deploy, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker.
- Release sebelumnya `20260826-4be4f28` menjalankan verifikasi fakta About Us.
- About Us memakai verifikasi fakta pada halaman dan setiap section story,
  warehouse, serta process. Draft belum lengkap tetap dapat disimpan, tetapi
  publish/schedule gagal tertutup sampai catatan dan seluruh konfirmasi lengkap.
- Perubahan fakta otomatis membatalkan verifikasi terkait. API publik menghapus
  catatan internal dan hanya menampilkan section terverifikasi. Production masih
  memakai empty state jujur karena belum ada fakta About yang disetujui owner.
- 168 storefront test, 408 full Laravel test dengan 407 pass dan satu
  intentional skip, full RC, dependency audit, desktop/mobile acceptance,
  immutable deploy, dan public smoke lulus. Readiness tetap 30/42 dengan 12
  blocker.
- Testimonials hanya menayangkan review berizin. Review creator/marketplace
  wajib memiliki sumber HTTPS aman dan dapat ditelusuri; review pelanggan
  langsung boleh tanpa URL publik.
- Tujuan produk testimonial bersifat opsional. Jika dipilih, produk dan warna
  harus aktif serta exact; target stale tidak membuka CTA. Admin memakai live
  product/variant picker dan publish/schedule guard, sedangkan draft belum
  lengkap tetap dapat disimpan.
- Production belum memiliki review berizin yang dipublikasikan, sehingga empty
  state tetap jujur dan homepage tidak membuat social proof pengganti.
- 166 storefront test, 406 Laravel test dengan 405 pass dan satu intentional
  skip, full RC, dependency audit, desktop/mobile acceptance, immutable deploy,
  serta public smoke lulus. Readiness tetap 30/42 dengan 12 blocker.
- Lookbook fallback menampilkan setiap varian aktif sebagai scene exact,
  termasuk YONA Black, YONA Cream, dan KIARA Black. Swipe, arrow, keyboard,
  reload, dan share URL mempertahankan scene produk/warna yang sama.
- CTA Lookbook memakai quantity Cart exact dan gagal tertutup pada sold-out,
  batas maksimum, destination stale, media tidak aman, atau varian nonaktif.
  Admin memakai live product/variant picker dan publish/schedule guard.
- 164 storefront test, 404 Laravel test dengan 403 pass dan satu intentional
  skip, full RC, dependency audit, desktop/mobile acceptance, immutable deploy,
  serta public smoke lulus. Readiness tetap 30/42 dengan 12 blocker.
- Gallery fallback mencakup media setiap varian aktif dengan handoff exact ke
  produk dan warna. CMS tetap menjadi authority; media editorial didahulukan
  dan visual duplikat dihapus secara deterministik.
- Tujuan produk/warna stale atau link eksternal non-HTTPS tidak membuka CTA
  menyesatkan. Preview mendukung swipe, arrow, Escape, focus trap, dan focus
  return. Admin menyediakan pemilih tujuan live dan menolak publish/schedule
  Gallery yang tidak valid.
- Release Gallery sebelumnya memakai source exact dan tetap tersedia sebagai
  rollback `20260826-0bffe6e`.
- Our Product memprioritaskan media varian yang dipilih untuk hero dan poster
  video, kemudian mempertahankan media editorial seri sebagai cerita produk.
- CTA memakai jumlah varian exact di Cart. Initial, partial, stock-limit, dan
  sold-out tampil jujur serta fail-closed; pengurangan quantity langsung
  memulihkan aksi yang valid.
- Pergantian media memakai reveal ringan yang menghormati reduced motion.
  Navigasi seri memindahkan fokus ke judul tujuan dan seluruh acceptance
  desktop/mobile, loading/error/retry/empty, full RC, serta public smoke lulus.
- Customer Returns memakai flow `Isi detail -> Tinjau dan kirim`. Review
  dibangun dari item dan quantity yang diizinkan server, menampilkan varian,
  alasan, penjelasan, serta tenggat, dan menjelaskan bahwa pengajuan belum
  berarti persetujuan.
- Quantity stale/berlebih dan state internal gagal tertutup. Retry setelah
  network error mempertahankan idempotency key; pembatalan hanya tersedia pada
  state `requested` tanpa refund serta memiliki safe-first focus, Escape, dan
  focus restoration.
- Order Status memiliki satu kontrol refresh untuk payment, delivery, dan order
  state. Kontrol selalu memakai order aktif yang sudah diverifikasi, request
  paralel dideduplicasi, dan network error mempertahankan detail terakhir.
- Timeline customer hanya memakai copy Indonesia yang diizinkan. Catatan
  operator, actor/correlation identifier, dan manual shipment note tidak
  melewati public API; unknown state dihilangkan fail-closed. Clipboard denial
  juga tidak lagi diklaim sebagai berhasil.
- Checkout Detail memvalidasi nama, penerima, WhatsApp, email, destination
  exact, alamat, kode pos, catatan, dan quote sebelum payment selection. Error
  summary serta error inline memindahkan fokus ke field yang perlu diperbaiki;
  penolakan server kembali ke Detail tanpa menghapus Cart.
- Form customer/destination dimuat sebagai lazy feature dengan skeleton dan CTA
  terkunci sampai field siap. Performance budget terbaru lulus pada entry 195,2
  KiB, initial JavaScript 146,8 KiB gzip, initial CSS 159 KiB, dan worst-route
  CSS 31,4 KiB gzip.
- Cart page dan drawer menyediakan bulk clear dengan konfirmasi inline yang
  memfokuskan `Batal` lebih dulu. Undo memulihkan identitas produk/varian exact
  dalam urutan semula dan tidak menduplikasi item yang sudah ditambahkan lagi.
  API failure dan blocked storage mempertahankan sesi; checkout tetap
  fail-closed sampai Cart authoritative.
- Wishlist menjelaskan ketika browser gagal menyimpan data: pilihan exact
  produk/varian tetap tersedia pada sesi aktif dan retry hanya mengonfirmasi
  setelah write berhasil. Update valid antartab diterapkan sekali lalu
  direkonsiliasi saat katalog siap; payload rusak diabaikan tanpa
  mengosongkan Wishlist aktif.
- Product Detail hanya menampilkan testimonial berizin yang ditautkan ke
  produk exact. Atribusi, sumber HTTPS aman, rating opsional, dan warna yang
  direview mengikuti CMS; review produk lain tidak bocor. Empty dan outage
  state tidak membuat kutipan atau rating pengganti.
- Product Card dan Quick View mengikuti jumlah varian exact di Cart. State
  parsial menampilkan jumlah di keranjang, sisa stok, dan `Tambah Lagi`; batas
  stok menonaktifkan pembelian sebagai `Sudah Maks.` dan pengurangan jumlah
  langsung memulihkan aksi.
- Filter warna katalog memilih varian kartu yang sama untuk media, harga, stok,
  detail, Quick View, dan cart. Filter tersedia serta urutan harga memakai
  varian tersebut. Warna habis dapat diperiksa, tetapi pembelian tetap
  fail-closed.
- Homepage campaign CTA mengikuti tujuan banner aktif, lalu tujuan global CMS,
  dan akhirnya fallback aman ke katalog. Tujuan internal memakai navigasi SPA;
  tujuan eksternal wajib HTTPS dan dibuka dengan isolasi tab aman.
- Admin Homepage dapat mengurutkan banner, melihat tujuan efektif pada preview,
  serta menolak tujuan unsafe atau konfigurasi CTA yang tidak lengkap saat
  publish/schedule. Deployment tidak mengubah konten homepage aktif.
- Dashboard Stock Opname menyediakan scope seluruh stok atau item perlu
  perhatian, blind count, autosave/resume, operator assignment, dan revision
  guard agar dua tab tidak menimpa hitungan terbaru.
- Review baru membuka stok sistem dan variance setelah seluruh hitungan lengkap.
  Sesi dapat dikembalikan ke recount tanpa kehilangan progres; approval
  Owner/Admin memvalidasi ulang revision inventory sebelum membuat ledger
  exact-once. Cancel/reject menutup sesi tanpa mengubah stok dan Finance tetap
  tidak memiliki mutation entry point.
- Loading, empty, error, autosave, review, recount, blocked, approval pending,
  success, desktop, dan mobile lulus acceptance. Full regression, build,
  security, migration, backup/rollback, serta public smoke lulus.
- Dashboard Inventory menyediakan saldo reservation-aware, enam antrean stok,
  alert aktif, pencarian literal, pagination, dan ledger immutable pada desktop
  serta mobile.
- Adjustment memerlukan revisi saldo yang dilihat operator, exact idempotency
  binding, dan stale guard yang tetap berlaku melalui approval perubahan besar.
  Reversal membuat movement lawan tanpa menghapus histori. Owner/Admin memiliki
  mutation entry point; role tanpa `inventory.manage` tetap ditolak.
- Loading, composition error/retry, honest empty, filtered empty/reset,
  projection before-after, blocked, success, tabel desktop, dan kartu mobile
  lulus acceptance.
- Dashboard Media Produk menyediakan antrean Semua, Perlu tindakan, Galeri,
  Varian, Video, dan Arsip. Workspace menampilkan storage readiness, cover
  galeri, serta coverage foto untuk varian aktif pada desktop dan mobile.
- Owner/Admin dapat mengunggah, mengedit placement/alt text, mengurutkan,
  mengarsipkan, dan menghapus media yang aman. Role view-only tidak menerima
  mutation entry point. Revision guard dan row lock menolak tab stale,
  duplikasi, serta urutan parsial.
- Media published pada produk aktif diarsipkan lebih dulu. File tetap
  dilindungi selama snapshot storefront aktif mereferensikannya; penghapusan
  fisik mempertahankan row database bila storage tidak mengonfirmasi hasil.
- Dashboard Varian menyediakan antrean Semua, Perlu tindakan, Aktif, dan
  Nonaktif. Owner/Admin dapat membuat, memperbarui, serta mengubah status
  varian; role view-only tidak menerima mutation entry point.
- SKU dan slug dinormalisasi serta dicegah duplikat tanpa membedakan kapital.
  Revision guard menolak tab stale, row lock menserialkan mutasi per produk,
  sedangkan varian dengan reservasi aktif dan varian aktif terakhir pada produk
  tayang tidak dapat dinonaktifkan.
- Harga/berat efektif, jumlah media, stok live, dan tautan ledger tampil pada
  workspace yang sama. Loading, error/retry, empty/filter, confirmation,
  processing, blocked, success, desktop, dan mobile lulus acceptance.
- Dashboard Produk kini memiliki antrean Semua, Perlu tindakan, Draft, Tayang,
  dan Arsip. Stok berasal dari inventory varian aktif, readiness publikasi dan
  exact next action berasal dari server, sedangkan role view-only tidak
  menerima mutation entry point.
- Loading, composition error/retry, honest empty, filtered empty/reset,
  pagination, tabel desktop, dan kartu mobile lulus acceptance. Active serta
  rollback release memakai shared storage setelah data persisten release lama
  direkonsiliasi tanpa overwrite dan recovery copy dipertahankan.
- Detail Pesanan kini memisahkan workspace Owner/Admin dan Finance. Finance
  menerima kontak termasking, riwayat pembayaran terbatas, serta hanya bukti
  yang lolos permission dan security gate; timeline tidak mengekspos actor ID
  atau correlation ID.
- Eligibility pembatalan, reservasi, alamat, invoice, payment review, refund,
  dan akses pelanggan berasal dari server. Mutasi sensitif menolak tab stale di
  dalam row lock; dialog keyboard, processing, blocked, retry, error, desktop,
  dan mobile lulus acceptance.
- Dashboard Pesanan membentuk antrean role-aware untuk attention, payment
  review, expiring, ready, active, dan completed. Filter/pencarian divalidasi
  server, kontak dimasking, dan setiap next action membuka detail pesanan yang
  tepat tanpa memutasi order dari halaman daftar.
- Loading, filtered-empty, composition error, success, pagination, tabel
  desktop, dan kartu mobile memiliki state eksplisit serta live announcement.
  Acceptance authenticated dan public desktop/mobile lulus.
- Dashboard Beranda menyajikan KPI, tren tujuh hari, prioritas, dan deskripsi
  berbeda untuk Owner, Admin, serta Finance. Antrean dan pesanan terbaru menuju
  workflow berizin yang tepat; kesehatan integrasi mengikuti status aktual,
  sedangkan stok rendah memakai availability dan threshold varian.
- Dashboard memiliki refresh/loading live-region, section error public-safe,
  tabel desktop, kartu pesanan mobile, serta grid KPI 2-by-2 tanpa horizontal
  overflow. Authenticated fixture dan public Login desktop/mobile lulus.
- Release sebelumnya `20260825-949a57b` menjalankan metadata server-side,
  Product schema dari varian aktif, utility/404 `noindex`, dan sitemap dinamis.
- HTML awal route publik kini dirender melalui metadata server-side yang
  otoritatif. Shop dan detail produk memiliki canonical, OpenGraph, Twitter,
  serta structured data yang mengikuti katalog aktif; route utilitas dan 404
  mengirim `noindex`.
- Sitemap production dibentuk dinamis hanya dari katalog aktif dan konten yang
  telah dipublikasikan. Fallback sitemap internal tetap tersedia secara
  fail-closed jika renderer atau backend sitemap gagal.
- Home memprioritaskan hero dan memuat foto lifestyle kartu hanya setelah
  pointer atau keyboard intent. Media scene/capacity nonkritis dimuat lazy;
  clean-context lab publik menurunkan image transfer 34,9% pada mobile dan
  20,3% pada desktop tanpa menghapus hover produk.
- Public acceptance lulus 12 runtime-performance state, 79 kombinasi
  responsif, 20 accessibility check, dan 14 motion state desktop/mobile.
- Hero dapat dijeda dan berhenti otomatis saat hover/focus, tab tersembunyi,
  atau reduced-motion. Navigasi manual tetap tersedia dan perubahan manual
  diumumkan melalui live region.
- Video teaser hanya berjalan ketika terlihat dan berhenti offscreen atau pada
  reduced-motion. Scroll progress, Gallery, Video Popover, dan reveal memakai
  transform/opacity tanpa animasi layout height, clip-path, atau blur.
- Fixture dan public live-API sama-sama lulus 14 state motion desktop/mobile;
  20 pemeriksaan accessibility dan 79 kombinasi responsif production tetap
  lulus.
- Storefront kini memiliki skip navigation, satu main landmark, focus dan
  announcement untuk route SPA, Search modal dengan focus trap/background
  inert/Escape/focus restoration, serta feedback ID unik untuk kartu produk.
  Fixture dan public live-API sama-sama lulus 20 pemeriksaan accessibility pada
  10 route desktop/mobile; 79 kombinasi responsif production tetap lulus.
- Storefront production tidak lagi menampilkan source fallback product ketika
  Laravel API sedang loading atau gagal. Home dan Search membedakan loading,
  ready, refreshing, stale, empty, error, disabled, retry, dan recovery;
  background refresh yang gagal mempertahankan katalog terakhir yang sudah
  terverifikasi.
- State acceptance lulus 12 flow pada mobile 320/390 piksel dan desktop 1440
  piksel. Postdeploy live-API tetap lulus 79 kombinasi route/viewport; focus
  recovery, live-region status, Helvetica UI, dan no-overflow terverifikasi.
- Integritas responsif storefront telah divalidasi pada 15 route, lima profil
  viewport dari mobile 320 piksel sampai desktop, dan mobile menu. Product card
  tidak lagi melampaui viewport kecil; target sentuh navigasi/CTA minimal 44
  piksel dan scroll-progress mobile tidak keluar dari layar.
- FAQ hanya menampilkan jawaban CMS published dari enam kategori stabil.
  Production belum memiliki jawaban approved, sehingga preparation state jujur
  menggantikan fallback provider atau marketplace dari source.
- Privacy, terms, dan return policy hanya tampil sebagai dokumen resmi setelah
  owner menerbitkan version, effective date, dan section lengkap. Admin
  menyediakan draft, preview, schedule, publish, retract, dan immutable
  rollback; operasi lifecycle policy dibatasi owner pada HTTP dan service.
- Loading, empty, partial, unavailable/retry, withdrawn, incomplete, ready,
  deep link, SEO runtime, dan responsive desktop/mobile lulus acceptance.
- Release sebelumnya `20260825-2697be4` menjalankan About Us managed content.
- About Us hanya merender cerita, warehouse, process, value, media, dan tujuan
  yang diterbitkan melalui CMS. Source-owned claim atau media tidak lagi mengisi
  konten yang belum lengkap.
- Admin menyediakan order, draft, preview, schedule, publish, retract, dan
  immutable rollback untuk bagian About. Publish membutuhkan cerita utama,
  minimal satu story dan warehouse, serta tujuan internal aman atau HTTPS.
- Production belum memiliki cerita About lengkap, sehingga customer melihat
  preparation state yang jujur. Loading, partial, unavailable/retry,
  broken/no-media, lazy route, dan responsive desktop/mobile lulus acceptance.
- Testimonials hanya menampilkan review CMS published yang memiliki reviewer,
  quote, tipe, sumber, dan konfirmasi izin eksplisit. Rating serta statistik
  hanya dihitung dari entri approved; source-owned social proof dan placeholder
  review tidak ditampilkan.
- Operator dapat mengatur urutan, reviewer, quote, tipe, sumber HTTPS, rating
  opsional, media, tujuan exact product/color, izin, dan lifecycle publish dari
  Admin. Empty, partial, error/retry, broken-media, native video, withdrawn
  content, dan responsive desktop/mobile lulus acceptance production.
- Production saat ini belum memiliki review approved published, sehingga route
  menampilkan empty state jujur dan preview homepage disembunyikan.
- Lookbook kini memakai scene CMS published sebagai sumber utama. Jika tidak
  ada scene published, storefront hanya membuat satu scene dari media milik
  setiap produk live; scene tidak pernah diarahkan diam-diam ke produk lain.
- Judul, story, media, urutan, dan tujuan produk/warna Lookbook dapat dikelola
  dari Admin. Exact variant, sold-out, missing product/media, loading,
  partial-content, empty/error/retry, keyboard, reduced motion, serta responsive
  desktop/mobile lulus acceptance production. Lookbook JS/CSS dimuat lazy.
- Gallery kini memakai media CMS published sebagai sumber utama. Jika CMS kosong
  atau sementara gagal, storefront hanya memakai media katalog published milik
  produk dengan tujuan produk/warna yang tepat; placeholder source dihapus.
- Kategori, urutan, alt text, image/video, dan tujuan Gallery dapat dikelola dari
  Admin. Filter, swipe/pointer/keyboard, reduced motion, focus-safe preview,
  loading/partial/empty/broken state, serta photos-only homepage handoff lulus
  acceptance production desktop/mobile. Gallery JS/CSS dimuat sebagai route
  assets lazy.
- Our Product kini merender seluruh seri published tanpa batas arbitrer. Story,
  media, alt text, varian, harga, stok, cart, dan detail produk mengikuti
  snapshot Laravel milik seri tersebut. Video hanya tampil jika dipublikasikan
  untuk produk itu; dua produk live saat ini jujur memakai static media.
- Loading, retryable error, empty catalog, missing media, exact variant, sold-out,
  cart, dan product-detail handoff lulus acceptance desktop/mobile. JavaScript
  dan CSS Our Product menjadi lazy route assets; schema publik
  `2026-08-24-our-product-v1` aktif tanpa fallback katalog lokal.
- Bag Finder kini menggunakan katalog Laravel live untuk lima langkah preferensi:
  scene, kapasitas, cara bawa, warna, dan budget. Hasil hanya memuat produk
  published/discoverable dengan varian berharga positif dan tersedia, disertai
  alasan rekomendasi, handoff exact variant ke detail/cart, URL shareable,
  preference recovery tanpa PII, serta loading/error/empty/no-match state.
- Build production memaksa API canonical dan menolak fallback katalog lokal;
  Browser desktop/mobile, unit, Laravel, security/dependency, build,
  backup, workers, scheduler, dan public smoke lulus.
- Rangkaian release sebelumnya menambahkan destination/quote integrity,
  payment-to-fulfillment, Delivery Order/AWB/pickup/label foundation, tracking
  webhook inbox, shipping finance ledger, cancellation/incident/refund
  workflow, command center, dan customer timeline.
- Migration additive terbaru, fresh backup/checksum, dua worker, operational
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
- Customer Returns kini memakai idempotency key yang terikat order dan payload,
  sehingga retry atau pengiriman concurrent tidak menggandakan permintaan,
  item, maupun notifikasi. Customer hanya dapat membatalkan state `requested`;
  pembatalan berulang aman dan quantity kembali eligible.
- Storefront dan Admin memakai return/refund state dari server. Instruksi publik
  dipisahkan dari catatan internal, dan customer tidak menerima provider
  reference atau detail review privat. Storefront 84/84, Laravel 326 pass/1
  MySQL-only skip dengan 2.494 assertion, browser desktop/mobile, full release
  gate, backup, worker, scheduler, dan public smoke lulus.
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
