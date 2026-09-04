# SagaOPS Product Knowledge

Updated: 4 September 2026
Evidence status: `CONFIRMED / SOURCE_PUSHED_BRANCH / PORTRAIT_KIOSK_LOCAL_VALIDATED / KIOSK_QRIS_EXPIRY_HANDOFF_PRODUCTION_DEPLOYED / KIOSK_CONTEXTUAL_HEADER_PRODUCTION_DEPLOYED / KIOSK_FIXED_TOUCH_CANVAS_LOCAL_VALIDATED / KIOSK_ATOMIC_BOOTSTRAP_LOCAL_VALIDATED / KIOSK_VERCEL_PUBLIC_DEMO_ACTIVE / KIOSK_BAGEL_CATEGORY_PHOTO_LOCAL_VALIDATED / KIOSK_SOLD_OUT_RACE_RECOVERY_LOCAL_VALIDATED / KIOSK_CART_SESSION_RECOVERY_LOCAL_VALIDATED / KIOSK_MEMBER_BENEFIT_CONFIRMATION_LOCAL_VALIDATED / KIOSK_FOUNDER_REVIEW_UI_LOCAL_VALIDATED / KIOSK_IMAGE_RECOVERY_LOCAL_VALIDATED / KIOSK_WELCOME_HERO_LOCAL_VALIDATED / KIOSK_UIUX_SPRINTS_LOCAL_VALIDATED / KIOSK_MODIFIER_CART_V2_LOCAL_VALIDATED / KIOSK_PAYMENT_CONFIDENCE_LOCAL_VALIDATED / CASHIER_PAYMENT_CONFIDENCE_LOCAL_VALIDATED / MENU_ASSETS_22_OF_22_LOCAL_VALIDATED / KDS_V2_LOCAL_VALIDATED / CASHIER_V2_LOCAL_VALIDATED / OWNER_DASHBOARD_V2_LOCAL_VALIDATED / ADMIN_CONTROL_ROOM_V2_LOCAL_VALIDATED / ADMIN_AVAILABILITY_HISTORY_LOCAL_VALIDATED / ADMIN_STALE_VERSION_GUARD_LOCAL_VALIDATED / ADMIN_SCHEDULED_AVAILABILITY_LOCAL_VALIDATED / SAGA_POS_M4_LOCAL_DURABLE_RUNTIME / SAGADEV_PLATFORM_PRODUCTION_ACTIVATED / PRIVATE_CANARY_PAID_AND_LOCKED / SETTLEMENT_PENDING_CLEARING / BUSINESS_READY=false`

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaOPS. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Keputusan
terbuka berada di [GAPS](../../GAPS.md#sagaops).

## Konteks

Source private kanonik, API/service, persistence/RLS lokal, dan operator browser
UAT tersedia sebagai local integrated internal alpha. Endpoint payment SagaOPS
kini aktif pada SagaDev Platform production dengan transaksi terkunci. Hardware,
outlet pilot, settlement acceptance, dan business readiness belum terverifikasi.
Kiosk customer portrait P01-P12 sudah aktif sebagai public demo pada Vercel.
Runtime ini hanya memakai QRIS simulator dan state serverless sementara; deploy
outlet dengan payment nyata tetap belum dilakukan.

## Ringkasan

SagaOPS adalah operating system coffeeshop. Produk dipisah menjadi SagaPOS untuk
kasir dan Back Office untuk owner/manager.

## Target pengguna

- Kasir/barista.
- Manager.
- Owner coffeeshop.
- Purchasing/inventory operator.

## Scope MVP pilot

- POS order, modifier, payment, receipt, history.
- Cash/non-cash manual/split payment.
- Shift dan closing.
- Menu management.
- Ingredient, recipe, HPP, margin.
- Inventory ledger.
- Stock guard dan manager override.
- Purchase order.
- Live dashboard.
- Audit dan approval.
- Operator console lokal untuk OWNER dan STAFF dengan role/outlet dari session
  server, CSRF, same-origin, dan session HttpOnly.
- Integrasi Member Code, Voyager quote, Points/XP/Quest/Reward event boundary,
  serta payment/recovery simulator.
- Saga POS local sprint lab dengan lima surface: self-service Kiosk, assisted
  Cashier fallback, nota checker/KDS, Owner Dashboard, dan POS Admin.
- Cashier V2 dengan server-owned quote, shortcut tender tunai, preview
  kurang/kembalian, CTA first-fold, dan retry checkout ber-idempotency stabil.
- Owner Dashboard V2 dengan hierarchy Sekarang/Hari ini/Verifikasi, alert
  antrean dan settlement, payment breakdown, serta integration boundary.
- Admin Control Room V2 dengan search/filter availability, status per menu,
  preview dampak, alasan wajib, konfirmasi, dan feedback catalog version.
- Availability History read-only dengan before/after, actor, alasan, waktu,
  catalog version, dan filter Sold out/Dipulihkan.
- Expected-version guard untuk availability: request tanpa versi ditolak 422,
  versi stale ditolak 409, UI memuat state terbaru, dan operator wajib
  mengonfirmasi ulang tanpa auto-retry.
- Scheduled sold-out dengan pilihan 30 menit, 60 menit, akhir hari 22.00 WIB,
  atau manual; waktu server terlihat pada kartu dan audit history.
- Kiosk portrait 1080×1920 dan 720×1280 dengan flow order type, katalog,
  modifier per-line, cart, member optional, QRIS pending/recovery, success,
  idle reset, serta out-of-service fallback.
- P03 memakai fixed touch canvas: dokumen tidak ikut scroll, panel kategori dan
  katalog produk memiliki scroll sentuh internal, serta semua kartu kategori
  pada breakpoint yang sama memiliki tinggi identik.
- Atomic session bootstrap menyatukan create/resume session dan snapshot dalam
  satu request same-origin. First load turun dari tiga request dan satu 401
  menjadi satu request tanpa 4xx; completion/idle reset turun dari dua request
  menjadi satu sekaligus mencabut session lama.
- Saga Payment Confidence pada P08–P09: panduan scan/bayar/tunggu, live status
  server, polling production ber-backoff dan terbatas, pemeriksaan manual,
  peringatan anti-double-payment, serta recovery spesifik per status.
- Cashier Payment Confidence: satu QRIS uncertain mengunci checkout pengganti,
  menampilkan status/order/total server dan membuka katalog kembali hanya
  setelah paid atau terminal state.
- Catalog 22 menu dalam 7 kategori, modifier fixture, cash/shift, QRIS simulator,
  Member/Reward fixture, sold-out versioning, refund/remake contract, report,
  export, device/print boundary, dan safe kiosk reset.

## Prinsip data

- Inventory ledger adalah source of truth stok.
- Recipe/HPP adalah source of truth cost menu.
- Stock change material harus menjadi movement.
- POS harus stabil sebelum HR/report lanjutan.

## Status saat ini

Status: `SAGADEV_PLATFORM_PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED /
SAGAOPS_TRANSACTIONS_LOCKED / TRIAL99_CANARY_PAID /
SETTLEMENT_PENDING_CLEARING / HARDWARE_AND_OUTLET_PILOT_PENDING /
BUSINESS_READY=false`.

- Kiosk public demo aktif di `https://saga-pos-kiosk.vercel.app/kiosk` melalui
  deployment Vercel `dpl_H4Pqewf4wL46PZWTqEbpwUgKD8Mb`, memakai runtime code
  source `172c56a1435196e2edf46d6348884b33094c1ac9`. Surface publik dibatasi ke
  Kiosk dan API simulator; gateway nyata, canary, dan promo nyata tidak
  diaktifkan. State session/order bersifat ephemeral dan bukan runtime outlet.
- Setelah pelanggan memilih Dine In atau Takeaway, Kiosk meminta identifikasi
  Saga Member sebelum katalog. Member Code yang valid membuka sapaan personal,
  tiga rekomendasi aktif dalam tabel ringkas, dan kategori `Untukmu`; guest tetap
  dapat lanjut tanpa akun. NFC nyata ditampilkan jujur sebagai belum tersedia.
- Identitas Member terverifikasi kini dimiliki session server. Refresh memulihkan
  welcome/rekomendasi atau cart beserta benefit tanpa menyimpan raw Member Code
  di browser atau mengirim ulang credential pada quote/checkout. Pilihan guest
  dan fresh reset menghapus konteks server. Rekomendasi kini benar-benar dapat
  membuka modifier tanpa dead-end state machine.
- Full regression 167/167, focused Kiosk 28/28, browser dua viewport,
  dependency/secret scan, production health/static smoke, serta browser UAT
  sampai rekomendasi lulus.
- Source exact `410ad19b1641dc47e84c86dc0b8324082d01083b` menambahkan atomic
  bootstrap dan sudah tercakup dalam runtime public terbaru.

- SagaDev Platform exact `1d7146c2be514f8764e940ee96ba8ce55e310325`
  aktif pada release `20260903154948-1d7146c`. Backup terenkripsi, checksum,
  disposable restore database platform, migration contract, atomic switch,
  health, auth boundary, dan kill-switch/default-off gate lulus.
- Saga POS branch `codex/saga-pos-vs01-kiosk-kds-dashboard` exact `8cdffeb`
  menargetkan runtime platform, memakai credential DPAPI CurrentUser, signed
  HMAC, production host allowlist, server-side `TRIAL99`, dan lulus 116/116
  test, static/type check, serta dependency audit nol vulnerability.
- Setelah intent pertama ditolak aman pada cap Rp220, founder menyetujui cap
  provider-total Rp250. Intent kedua Americano memakai amount produk Rp130 dan
  provider total Rp231, menghasilkan QR production dan dibayar nyata. Provider,
  ledger pusat, local order, KDS, dan Owner Dashboard sudah konsisten `PAID`;
  provider net Rp130, fee Rp101, settlement `pending_clearing`. Canary kembali
  dikunci dengan kill switch setelah tepat satu pembayaran berhasil.
- Candidate parser/reconciliation fix SagaDev Platform exact
  `c07f5f38950f6b7ef7c83018043530492ff0a0ff` sudah dipush dan lulus
  1.372/1.372 test, tetapi belum dideploy karena fresh encrypted backup gate
  gagal dua kali. Runtime production tetap exact `1d7146c2`; satu ledger canary
  direkonsiliasi atomik dari provider `Success` dengan audit metadata.

- Saga POS current branch head
  `1c383ef861b706728a0d712a02c0a9bda7596d17` sudah dipush. P08 kini menutup
  visual QR saat countdown mencapai `00:00` dan memicu tepat satu status check
  authoritative. Client tidak menetapkan status terminal; hanya response server
  yang dapat memindahkan flow ke P09. Ini mencegah scan ulang saat status ambigu.
  P03 memakai header
  dua kolom selebar konten: judul `Pilih menu favoritmu` dan kartu konteks yang
  menampilkan kategori aktif, jumlah menu, serta panduan yang berubah mengikuti
  pilihan. Ruang kanan kosong pada viewport 1080 px turun dari 148 px menjadi
  0 px; tinggi header tetap 151 px pada 720 dan 181 px pada 1080 tanpa
  horizontal overflow. Rail kategori
  photo-led pada 720x1280 sekarang memiliki scroll viewport mandiri yang
  berhenti sebelum cart dock. Fokus keyboard, pemilihan kategori, render ulang,
  dan return dari modifier mempertahankan kategori aktif terlihat tanpa
  mengubah `window.scrollY` atau posisi grid produk. Katalog Kiosk kini
  memiliki kategori Bagel dengan Creamcheese, Strawberry, Ham & Fresh, dan
  Moka Bagel. Rail kategori memakai foto produk pertama pada tujuh kartu yang
  lebih tinggi tanpa ikon. Bagel tidak
  mewarisi suhu, gula, atau add-on minuman dan input modifier tersebut ditolak
  server. Area bawah P08 memiliki jarak antarkontrol minimal 10 px pada
  720x1280. Harga Bagel Rp18.000/Rp20.000/Rp25.000/Rp20.000 masih
  `NEEDS CONFIRMATION` sebelum activation. Full 163/163 dan focused Kiosk 31/31
  lulus; Axe serious/critical nol, overflow/fold/touch, transparansi aset,
  dependency audit, dan secret diff scan lulus. Jika menu menjadi
  sold out setelah masuk cart, Kiosk memuat ulang katalog server, melepas hanya
  item yang habis, mempertahankan item valid, dan meminta quote ulang. Bila cart
  kosong, pelanggan kembali ke katalog dengan arahan memilih pengganti; recovery
  membuat 0 payment intent. Cart belum dibayar juga pulih setelah reload untuk
  session server yang sama dan meminta quote
  ulang. Draft maksimal 15 menit hanya menyimpan identifier, quantity, order
  type, dan catatan; tidak menyimpan harga, member code, atau payment. Idle,
  new session, checkout, mismatch, expiry, serta produk tidak aktif diproses
  fail-closed. Jalur member kini
  mengikuti capability `memberMode=code`, mendukung input alfanumerik, dan
  menampilkan kode tersamarkan, tier, benefit, subtotal, serta total final
  sebelum QRIS dibuat. Verifikasi member menghasilkan nol payment intent;
  checkout terjadi tepat setelah CTA konfirmasi total. Revisi founder sebelumnya
  memperbesar tombol dan teks kategori P03; P05 kini memakai table-card ringkas
  yang tetap berada di atas ketika hanya ada satu item, dengan quantity dan
  line total yang mudah dipindai; P10 menampilkan detail item setelah pembayaran
  berhasil. Alignment ImageGen V2 tetap code-native pada modifier P04 serta cart
  P05. Density
  720x1280 dan 1080x1920 kini memakai spacing serta touch geometry yang
  proporsional tanpa whitespace fungsional berlebih. Suhu, tingkat manis,
  Extra Shot Rp5.000, dan Oat Milk Rp7.000 menjadi pilihan eksplisit; add-on
  multi-select divalidasi dan dihitung oleh server. Cart memisahkan edit,
  hapus, quantity, undo, serta perubahan order type yang selalu melakukan
  requote server. P01 welcome kini memakai aset ilustratif Es Kopi Saga yang
  sama dengan katalog, bukan cup generik CSS. Hero, katalog, modifier, dan cart
  kini memiliki recovery jujur ketika gambar gagal dimuat tanpa memblokir alur
  pesan. Full suite terkini 158/158 dan focused Kiosk 25/25 lulus;
  Axe serious/critical nol, no horizontal overflow, touch/density gap, secret
  diff scan nol temuan, dan OSV 31 package/0 vulnerability lulus.
  Endpoint npm audit resmi tidak memberi respons dalam batas waktu dan dicatat
  sebagai keterbatasan jaringan, bukan bukti pass.
- Cashier Payment Confidence exact `4a4ff91` menambah active QRIS status card,
  uncertain-state checkout lock, bounded server checks, accessible status, dan
  logout cleanup. Focused 4/4 dan full suite 141/141 lulus; dua viewport,
  Axe, overflow, target 56 px, exactly-once fulfillment, secret scan, serta OSV
  31 package/0 temuan lulus. `npm audit` resmi tetap timeout.
- Seluruh 22 kartu menu kini memiliki visual; 13 di antaranya illustrative dummy.
  Empat aset Bagel ImageGen disimpan sebagai source PNG transparan dan WebP
  640x640 berukuran 98-122 KB. Aset referensi aktif dioptimalkan menjadi 1,60 MB dalam WebP dengan
  source PNG tetap dipertahankan dan proses build yang dapat diulang.
  Placeholder kotak tulisan tidak lagi dipakai untuk katalog saat ini. Aset
  dummy tidak membuktikan resep/penampilan produk dan seluruh visual dummy tetap
  memerlukan owner review serta penggantian foto nyata sebelum activation.
- Perubahan ini `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; runtime SagaDev
  Platform, lock transaksi, settlement, readiness 84/100, dan
  `BUSINESS_READY=false` tidak berubah.
- KDS V2 pada `973f81c` menambah server-clock ticket aging, summary
  Baru/Diproses/Siap, status filter, urutan tertua, modifier/note yang tetap
  terlihat, target aksi besar, dan visual Plus Jakarta Sans. Polling tidak lagi
  membuat seluruh queue sebagai live announcement. Browser 1280×800 dan
  768×1024, Axe, serta full suite 126/126 lulus; tidak ada dependency baru.
- Cashier V2 feature exact `2cfaf9e` dan current branch head `ba463a6`
  menambahkan quote server sebelum pembayaran, shortcut uang pas/pecahan,
  preview kurang/kembalian, CTA first-fold, dan safe retry. Validasi kurang
  bayar kini terjadi sebelum order/payment/fulfillment dibuat. Full suite
  130/130, browser 1440×900 dan 1024×768, Axe, serta audit dependency lulus.
  Status tetap `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner Dashboard V2 exact `287b26d` menambah server-fact freshness, attention
  engine untuk umur antrean/unchecked settlement/ready pickup, queue stages,
  payment breakdown, accessible order table, dan status integrasi public-safe.
  Full suite 131/131, browser 1440×900 dan 1024×768, Axe, serta audit dependency
  lulus. Dashboard tetap read-only dan tidak mengubah status KDS/payment.
- Admin Control Room V2 exact `960a5e6` mengganti grid availability satu klik
  menjadi command desk yang searchable/filterable. Mutasi tetap per-menu dan
  server-owned, dengan dampak Kiosk/Cashier lokal, alasan wajib, cancel/focus
  recovery, serta catalog version setelah konfirmasi. Full suite 132/132,
  browser 1440×900 dan 1024×768, Axe, audit dependency, dan secret scan lulus.
- Availability History exact `e0df398` mengekspos maksimal 20 event audit
  server newest-first kepada Owner Admin. History menampilkan before/after,
  item, actor, reason, timestamp machine-readable, dan version dalam tabel
  semantik yang dapat difilter. Full suite 132/132 dan Axe lulus; dependency
  tidak berubah. Fresh audit production kemudian lulus dengan nol vulnerability.
- Stale-version conflict guard exact `54fda1a` mengharuskan `expectedVersion`
  pada mutasi availability. Versi hilang ditolak 422 dan versi stale ditolak
  409 sebelum state, catalog version, atau audit berubah. Admin menutup dialog
  stale, memuat fakta server terbaru, menampilkan alert persisten, dan meminta
  konfirmasi eksplisit baru tanpa auto-retry. Skenario browser dua tab, full
  suite 132/132, Axe nol serious/critical, no-overflow, audit dependency nol,
  dan secret scan lulus tanpa dependency baru.
- Scheduled availability exact `f5c446b` memberi owner pilihan pulih 30/60
  menit, akhir hari 22.00 WIB, atau manual. Server menghitung waktu, menolak
  reset mode invalid 422, memulihkan secara lazy pada akses pertama setelah
  expiry, menaikkan catalog version, dan menulis audit actor `SYSTEM`. Admin
  menampilkan waktu absolut pada kartu/history tanpa countdown live. Full suite
  133/133, browser 1440×900 dan 1024×768, Axe nol serious/critical, no-overflow,
  visual review, readiness evidence, dan secret scan lulus. Dependency tidak
  berubah; fresh registry audit timeout dua kali, sementara exact `54fda1a`
  sebelumnya memiliki audit nol vulnerability.

- Saga POS source branch `codex/saga-pos-vs01-kiosk-kds-dashboard` exact
  `d9598dd94200c8cd3e2fc1bbdf8245acec1f69cc` menyelesaikan local program
  24 wave/120 batch/480 micro-sprint. Disposition: 62 batch `PASS_LOCAL`, 28
  `LOCAL_SIMULATED`, 30 `BLOCKED_EXTERNAL`; readiness M4 84/100.
- 112/112 test, browser E2E lima surface, automated accessibility, dependency
  audit 0 vulnerability, 6 screenshot evidence, dan enam migration local
  PostgreSQL/RLS/cross-outlet deny
  lulus. Exact source sudah dipush ke branch tersebut tetapi belum merge.
- Readiness extension menambah 10 wave/40 batch/160 micro-sprint dari durable
  runtime sampai owner business-ready decision. Empat batch W25/16 micro-sprint
  lulus lokal dan membuka +4. Contract/preparation 36 batch lain telah
  dijalankan; external verify/accept masih menunggu input dan tidak membuka poin.
- Disk-backed local durable runtime menyediakan migration registry, atomic
  checkout/outbox, collision-safe order counter, signed-event replay guard,
  exactly-once fulfillment, manual-finance refund work item, dan restart
  recovery Kiosk/KDS/Dashboard. Ini bukan external Postgres atau staging proof.
- Founder mengunci SagaDev Gateway sebagai satu-satunya payment gateway Saga
  POS dengan product binding `sagaops`; PJP/acquirer tetap dikelola di belakang
  SagaDev dan tidak dikonfigurasi langsung oleh POS.
- Local contract mencakup readiness, product-scoped signed request, idempotent
  create, signed event/status recovery, amount/order/currency/replay guard,
  settlement facts, serta full-refund manual-finance yang tidak memalsukan
  status refunded. Owner kemudian mengizinkan route production-direct tanpa
  sandbox dengan promo private `TRIAL99`, maksimal lima transaksi, source push,
  dan uang nyata. Guard lokal membatasi satu item, private device, Rp130-Rp250
  per payment, total Rp1.100, window, host/callback/vault/settlement dan kill
  switch. Product, signed credential, stable callback, dan endpoint production
  sudah tersedia. Percobaan kedua menghasilkan satu pembayaran nyata Rp231;
  transaksi kini terkunci dan settlement masih menunggu clearing.
- Lima surface dapat memakai disk-backed local durable runtime dan restart
  recovery sudah terbukti lokal. Evidence ini bukan bukti external PostgreSQL,
  multi-instance runtime, staging, atau production recovery.

- Private canonical `main` `614fe7fdaffd7c739b0c7efed97f8a5e33297eea`
  memuat operator console, API v1, domain services, migration, local PostgreSQL
  semantics, RLS, recovery, dan automated browser acceptance.
- 76 test source, clean-room browser verification, local load, security control,
  serta artifact restore lulus untuk fixture internal.
- Founder telah menerima batas Goal 1 sebagai complete local internal alpha;
  penerimaan ini bukan izin staging atau production.
- Founder menerima Goal 2 hanya pada batas local validated. Dua belas kelompok
  gate lokal dan full regression SagaBook 1.339/1.339 lulus; scope staging dan
  pilot tetap ditunda serta tidak diklaim selesai.
- Goal 3 memetakan dan mengeksekusi 480 micro-sprint secara konservatif: 124
  `LOCAL_PASS`, 108 `PARTIAL_LOCAL`, 118 `EXTERNAL_GATE`, dan 130
  `WAITING_PREREQUISITE`. Exact ops provenance `e3a5431` dan CI commit tersebut
  lulus; source candidate tetap menunggu independent review dan tidak digabung
  sebagai bagian dari acceptance ini.
- Kebijakan incremental spend kini Rp0. Existing VPS/domain boleh dinilai untuk
  reuse, tetapi audit read-only menemukan disk root 83%, staging legacy yang
  bertabrakan, monitoring gagal, dan source durable runtime belum siap.
  Resource/billing/DNS/database tetap tidak berubah.
- Seluruh 432 micro-sprint Goal 4 sudah didisposisi: 40 `LOCAL_PASS`, 107
  `PARTIAL_LOCAL`, 88 `EXTERNAL_GATE`, dan 197 `WAITING_PREREQUISITE`.
  Preparation lokal/zero-cost yang sah telah dijalankan; route scale,
  external runtime/provider, outlet kedua, pilot dan production tetap `NO_GO`.
  Exact ops `b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3`; CI lulus.
- Strategi Goal 5 menempatkan SagaOPS pada outlet/device operating factory dan
  payment/finance operations dalam B066-B077. Pack total tervalidasi pada 20
  wave, 120 batch dan 480 micro-sprint. Ini masih planning zero-cost:
  onboarding outlet cluster, provider, payment nyata, hardware, deployment dan
  production route belum dimulai.
- Eksekusi preparation Goal 5 kini mendisposisi seluruh 480 unit: 59 local
  pass, 119 partial local, 106 external gate, dan 196 waiting prerequisite.
  SagaOPS tetap hanya memiliki bukti source/local; outlet cluster, provider,
  hardware, payment nyata, deployment dan production belum dijalankan.
- Strategi Goal 6 mencakup SagaOPS pada wave outlet network/device fleet dan
  payment/settlement/treasury, dalam pack total 22 wave, 132 batch dan 528
  micro-sprint. Ini hanya planning serta preparation lokal/Rp0; outlet network,
  device commissioning, provider, settlement nyata, deploy dan activation
  belum dimulai. Entry Goal 6 tetap `NO_GO` karena Goal 5/G519 belum diterima.
- SagaOPS operator UAT kini dapat dijalankan bersama Member dan Customer API
  melalui one-command local pilot hub. OWNER, STAFF-01 dan STAFF-02 memakai
  credential sintetis yang dibuat di memori proses; provider, NFC dan printer
  tetap simulator/OFF/fallback. Ini local technical UAT, bukan outlet pilot.
- QRIS dynamic, thermal printer, real offline conflict resolution, dan provider
  nyata belum termasuk bukti production.

## Belum boleh diklaim

- Dummy data bukan transaksi outlet.
- Offline simulation bukan offline production.
- Manual QRIS bukan payment gateway.
- Local PostgreSQL/PGlite bukan bukti kapasitas atau disaster recovery staging.
- Automated browser UAT bukan human business acceptance.
- Fixture Member/Reward/QRIS bukan Customer Platform/provider acceptance.

## Ide konten

- Kenapa stok harus berbasis movement.
- Recipe/HPP sebagai dasar harga.
- Closing shift dan cash variance.
- Dari stock warning menjadi purchase order.
