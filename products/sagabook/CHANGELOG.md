# SagaBook Changelog

## Tujuan

Mencatat perubahan material SagaBook dengan provenance public-safe.

## 2026-08-03 - Admin Booking compact triage dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  UI `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `cfb2af8fbec2e079b7341e0e1f1920511bf89022` aktif sebagai release
  `20260803132556-cfb2af8`; rollback `20260803080450-51a9165` tersedia.
- Before: pada viewport 1024 piksel, tabel minimal 930 piksel memecah nama,
  tanggal, paket, dan status menjadi kolom sempit. After: viewport di bawah
  1280 piksel memakai kartu triage ringkas; desktop 1440 tetap memakai tabel.
- Keyboard detail flow, target sentuh 44 piksel, focus, forced-colors,
  reduced-motion, no-overflow, dan tepat satu `Powered by SagaBook` lulus.
  Gate: 930 Feature test, 26 visual smoke, 7 focused Playwright pada mobile,
  tablet, desktop, dan 1024; build; npm/Composer audit 0; S39 backup terenkripsi,
  checksum, disposable restore exact-SHA; manifest; DB audit 100; service;
  empat endpoint 200; serta browser produksi public-safe dua viewport.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, storefront/template, dan SagaView tidak berubah. Admin production
  terautentikasi tidak direkam tanpa credential; exact-source regression 1024
  dan provenance release membuktikan perubahan. UAT operator studio nyata
  tetap diperlukan sebelum klaim business readiness.

## 2026-08-03 - Success screen WhatsApp support dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation tenant
  nyata `NEEDS CONFIRMATION`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `51a916537b51e8a503c6c88d3b130d2396558589` aktif sebagai release
  `20260803080450-51a9165`; rollback `20260803022430-fa228d8` tersedia.
- Before: bantuan setelah booking hanya menyalin template admin. After: CTA
  utama membuka detail/status booking, lalu CTA 48 piksel membuka WhatsApp
  cabang yang dipilih dengan pesan public-safe; nomor tidak valid memakai
  fallback salin pesan.
- Fixture visual dibuat future-safe dan dipisahkan per viewport, sehingga
  matrix fresh lulus 448 skenario dengan 50 controlled skips dan 0 failure.
  Backend 960/960 dengan 11.007 assertions, build, design audit 26 artefak,
  env guard 2/2, serta npm/Composer audit 0 lulus.
- Release safety lulus: backup terenkripsi, checksum, disposable restore
  exact-SHA, manifest, smoke internal, nginx/queue, empat endpoint 200,
  HSTS/CSP pada route booking, dan browser produksi public-safe 390x844 serta
  1440x900. Demo SnapStudio masih belum dipublish; booking nyata terkontrol
  tetap diperlukan sebelum klaim activation tenant atau business readiness.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, preset lain, dan SagaView tidak berubah.

## 2026-08-03 - Success screen WhatsApp support candidate

- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`.
- Source `7f129eadd0ab3cb214b6d5128765e086f14ac0cc` tersedia pada branch
  `codex/s92-booking-success-whatsapp`; production tidak berubah dan tetap
  memakai source `fa228d89bc5bea32fb19bf424a4b0e48db1bc506`, release
  `20260803022430-fa228d8`, rollback `20260802221221-994de01`.
- Before: bantuan setelah booking hanya menyalin template admin. After: CTA
  utama membuka detail dan status booking; CTA berikutnya membuka WhatsApp
  cabang yang dipilih dengan pesan konteks public-safe. Nomor yang tidak valid
  mendapatkan fallback salin pesan, bukan link palsu.
- Target 48 piksel, keyboard focus, `aria-live`, forced-colors, reduced-motion,
  no-overflow, dan tepat satu `Powered by SagaBook` tercakup. Booking,
  payment/provider, availability, permission, session, tenant isolation,
  template lain, dan SagaView tidak berubah.
- Focused success/watermark 9/9 pada mobile/tablet/desktop, backend 960/960
  dengan 11.007 assertions, unit guard 2/2, build, design audit 26 artefak,
  serta npm/Composer audit 0 lulus. Guard database relatif kini berakar pada
  exact worktree tanpa mengizinkan path escape; snapshot success memakai kode
  deterministik dan baseline mobile/desktop yang sudah diinspeksi.
- Full matrix fresh mencapai 264 passed, 45 controlled skips, dan 1 failed.
  Failure tersisa berada pada setup map-recovery tablet: fixture memilih jam
  yang sudah lewat dan API menolak aman dengan HTTP 409. Batas dua correction
  rounds tercapai; release tetap ditahan fail-closed.

## 2026-08-03 - Navigasi edit Review touch-safe dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation UI
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `fa228d89bc5bea32fb19bf424a4b0e48db1bc506` aktif sebagai release
  `20260803022430-fa228d8`; rollback `20260802221221-994de01` tersedia.
- Before: enam kontrol `Ubah` pada Review berukuran sekitar 31x18 piksel.
  After: seluruhnya menjadi tombol semantik minimal 72x44 piksel, memiliki
  label screen reader, focus keyboard, forced-colors, dan reduced-motion.
- Lima preset pada mobile 390x844, tablet 768x1024, dan desktop 1440x900 tidak
  overflow serta tetap menampilkan tepat satu `Powered by SagaBook`. Booking,
  payment/provider, availability, permission, session, tenant isolation, dan
  SagaView tidak berubah.
- Full matrix fresh lulus 142/142 dengan 2 expected skips setelah fixture
  mengunci token font/warna seeded dan empat baseline terkait diinspeksi.
  Backend 960/960 dengan 11.007 assertions, focused Review, accessibility,
  scoped E2E, build, serta npm/Composer audit 0 juga lulus.
- Release gate lulus: S39 encrypted backup, checksum/offsite round-trip,
  disposable restore exact-SHA, manifest, migration preflight, DB audit 100,
  nginx/queue/PHP, lima endpoint 200, dan DOM live mobile+desktop. Production
  menunjukkan tepat satu watermark, tanpa overflow, serta enam tombol 72x44.

## 2026-08-03 - Storefront booking desktop dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `994de01cf3586adb4da8813a9c4b931085457510` aktif sebagai release
  `20260802221221-994de01`; rollback `20260802183533-35c8219` dipertahankan.
- Before: pada desktop 1440x900, perjalanan booking publik tetap dibatasi
  seperti preview ponsel 460 piksel di tengah ruang kosong. After: viewport
  mulai 1120 piksel memakai shell dua kolom hingga 1040 piksel, dengan panel
  orientasi langkah dan ringkasan pilihan di kiri serta transaksi di kanan.
  Mobile 390x844 tetap identik dan tablet 1024x768 tetap memakai layout ringkas
  tanpa overflow.
- Semua preset existing dan seluruh langkah booking memperoleh layout desktop
  yang sama; Maps, WhatsApp, paket, slot, checkout, confirmation, tenant brand,
  serta satu `Powered by SagaBook` tetap utuh. Payment/provider, availability,
  session, permission, dan tenant isolation tidak berubah.
- Gate: backend 960/960 dengan 11.007 assertions; visual desktop 45/45 dengan
  satu mobile-only skip; mobile manual-transfer E2E 1/1; build, design audit,
  npm/Composer audit 0, encrypted backup, disposable restore exact-SHA,
  migration preflight, database audit 100, service health, scoped journal,
  dan public smoke lulus. Visual production 1440x900 dan 390x844 mengonfirmasi
  layout, no-overflow, serta satu watermark. Endpoint `/up` masih tidak
  mengirim HSTS/CSP; route login dan booking yang diaudit mengirim HSTS, CSP,
  dan `X-Frame-Options: SAMEORIGIN`.

## 2026-08-03 - Admin Staff responsif dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `35c82192234eb84e03b2237029540e299c70e12f` aktif sebagai release
  `20260802183533-35c8219`; rollback `20260802160930-596b8a4` dipertahankan.
- Before: mobile memaksa tabel desktop selebar 920 piksel, target sentuh penting
  32-40 piksel, filtered-empty tanpa reset, dan editor tidak memulihkan fokus.
  After: mobile memakai kartu staff, desktop tetap tabel, kontrol kritis minimal
  44 piksel, reset filter tersedia, editor berlabel mengembalikan fokus, serta
  tab, forced-colors, reduced-motion, dan no-overflow lulus.
- CRUD, role/permission, tenant isolation, booking/payment/provider, storefront
  tenant/preset, landing page, watermark, dan SagaView tidak berubah; satu
  `Powered by SagaBook` tetap hadir pada shell dan tidak masuk artefak bisnis.
- Gate: backend 960/960 dengan 11.007 assertions; visual matrix 442 passed
  dengan 41 controlled skip; build, design audit, npm/Composer audit 0,
  encrypted backup, disposable restore exact-SHA, database audit 100, service
  health, journal, dan public browser smoke lulus.
- Visual production Staff terautentikasi tidak dijalankan tanpa credential;
  exact-source regression tiga viewport lulus. `/up` belum mengirim HSTS.
  Sampel login mengirim HSTS dan CSP satu kali tanpa `X-Frame-Options`; CSP
  `frame-ancestors` tetap aktif dan kontrak header perlu dinormalisasi.

## 2026-08-02 - Calendar mobile operasional dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` aktif sebagai release
  `20260802160930-596b8a4`; rollback `20260802104018-a6bb8af` dipertahankan.
- Before: Harian, Mingguan, dan Bulanan pada mobile menampilkan daftar hari yang
  sama. After: ketiganya mempunyai representasi periode nyata, navigasi hari
  keyboard-accessible, kontrol minimal 44 piksel, dan desktop tetap memakai
  grid Calendar.
- Manual Booking sekarang menyelaraskan tanggal Calendar saat dibuka dan
  mengenali nama bulan Indonesia pada parser WhatsApp.
- Gate: visual matrix 430 passed dengan 44 controlled skip; backend 960/960
  dengan 11.007 assertions; build, design audit, npm/Composer audit 0,
  encrypted backup, disposable restore, readiness 100, service health, dan
  public smoke lulus.
- Authenticated production visual Calendar tidak dijalankan tanpa credential;
  exact-source authenticated regression lulus. `/up` belum mengirim HSTS,
  sementara route aplikasi/login yang diaudit mengirim HSTS dan XFO tepat satu.
  Error journal berasal dari staging monitor host, bukan service SagaBook.
- Payment/provider, storefront tenant/preset, landing page, watermark, dan
  SagaView tidak berubah. Business readiness tetap belum diklaim.

## 2026-08-02 - Public branding dan frame-header hygiene dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `a6bb8afbfe2353597ea55329c50829a220bc5d3e` aktif sebagai release
  `20260802104018-a6bb8af`; rollback `20260802101645-500065c` dipertahankan.
- Pricing, Terms, dan Privacy kini masing-masing menampilkan tepat satu
  signature aksesibel `Powered by SagaBook` pada mobile/desktop tanpa overflow,
  overlap, positioning fixed, atau label silang SagaView.
- `X-Frame-Options` dinormalisasi menjadi satu nilai wire-level di edge;
  CSP `frame-ancestors` tetap aktif. Ketiga route 200 dengan HSTS, CSP, dan XFO
  masing-masing tepat satu.
- Full backend 960/960 dengan 11.007 assertions, browser production 8/8,
  design/build/dependency audit 0, backup terenkripsi, disposable restore,
  readiness 100, service health, journal, dan smoke lulus.
- Tidak ada perubahan booking/payment, provider, preset tenant, atau SagaView.

## 2026-08-02 - Admin Booking dipromosikan setelah release runner diperbaiki

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `500065c81cbc07e29b3370f8b22a8fcc521f7d7d` memperbaiki runner agar baseline
  readiness non-zero dapat masuk ke verifikasi transition yang ketat dan setiap
  kegagalan tetap menghasilkan stage/reason terstruktur.
- Release `20260802101645-500065c` aktif dengan readiness 100, manifest exact
  source, migration, encrypted backup, disposable restore, tujuh service aktif,
  journal bersih, dan public smoke lulus. Rollback SagaBook tetap
  `20260802024941-b74ebb5`; SagaView tidak berubah.
- Full backend 959/959 dengan 11.001 assertions; focused Admin Booking pada
  mobile/tablet/desktop 6/6; build, design audit, dan dependency audit 0 lulus.
- Gap signature public dan header duplikat pada audit release ini ditutup oleh
  release berikutnya `20260802104018-a6bb8af`.

## 2026-08-02 - Admin Booking triage candidate belum dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`.
- Source `9963f3de757c0339580c79d96ff565d320722fcb` mengubah daftar mobile menjadi
  kartu operasional, mempertahankan tabel desktop, membuka detail pada drawer
  aksesibel, dan menutup drawer setelah aksi terminal agar fokus kembali ke
  daftar dengan status terbaru.
- Payment reconciliation menerima booking paid yang sudah maju ke
  `checked_in`/`in_session` hanya bila bukti internal tetap valid; kondisi
  unpaid, callback invalid/duplikat, atau ledger belum verified tetap
  fail-closed.
- Gate lokal: backend 958/958 dengan 10.991 assertions; browser
  mobile/tablet/desktop 415 passed; build, design audit, dependency audit 0,
  formatter, dan diff check lulus.
- Dua percobaan release berhenti sebelum activation dan tidak menghasilkan
  alasan terstruktur. Production tetap source `b74ebb56`, release
  `20260802024941-b74ebb5`; SagaView dan seluruh service tetap unchanged/active.

## 2026-08-02 - CTA cabang storefront tidak lagi menutup katalog

- Status: `PRODUCTION_DEPLOYED`; scope SagaBook yang telah dibuktikan tetap
  `PRODUCTION_ACTIVATED`.
- Source `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` aktif sebagai release
  `20260802024941-b74ebb5`; rollback `20260802013852-76defd1` dipertahankan.
- Before: langkah Lokasi menampilkan CTA fixed disabled sebelum customer
  memilih cabang sehingga sebagian katalog dapat tertutup pada mobile.
- After: CTA tidak tampil sebelum cabang dipilih; setelah pilihan valid, tepat
  satu CTA aktif setinggi 48 piksel muncul dan navigasi ke langkah Paket lulus.
- Kelima preset, link Maps/WhatsApp, forced-colors, reduced-motion, no-overflow,
  dan tepat satu `Powered by SagaBook` tetap lulus; booking/payment tidak
  berubah.
- Gate: full backend 957/957 dengan 10.989 assertions, browser desktop+mobile
  298/298, typecheck, build, dependency audit 0, encrypted backup, disposable
  restore exact-SHA, database audit, service health, public smoke, dan visual
  production 390x844 serta 1440x900 lulus.

## 2026-08-02 - Maps fallback storefront dan Booking Center production

- Status: `PRODUCTION_DEPLOYED`; scope SagaBook yang telah dibuktikan tetap
  `PRODUCTION_ACTIVATED`.
- Source `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` aktif sebagai release
  `20260802013852-76defd1`; rollback `20260802002923-d9bbbac` dipertahankan.
- Before: cabang yang mempunyai alamat tetapi belum memiliki URL Maps khusus
  tidak selalu memberi jalur Maps pada storefront dan detail booking.
- After: customer mendapat pencarian Google Maps berbasis nama dan alamat;
  URL eksplisit hanya diterima dari host Google HTTPS. Link Maps dan kontrol
  salin kode memenuhi target sentuh minimal 44 piksel.
- Gate: full backend 957/957 dengan 10.989 assertions, browser desktop+mobile
  298/298, typecheck, build, dependency audit 0, encrypted backup, disposable
  restore exact-SHA, manifest, database audit 100, service health, public
  smoke, serta production visual 390x844 dan 1440x900 lulus.
- URL Maps presisi dari data owner tetap opsional; fallback tidak mengarang
  koordinat dan tidak mengubah data tenant.

## 2026-08-02 - Auth branding dan touch safety production

- Status: `PRODUCTION_DEPLOYED`; scope activation SagaBook yang telah
  dibuktikan tetap `PRODUCTION_ACTIVATED`.
- Candidate auth/fallback dipromosikan sebagai release
  `20260802002923-d9bbbac` dari source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d`.
- Login, signup, dan password recovery sekarang memiliki tepat satu
  `Powered by SagaBook`, target sentuh kritis minimal 44 piksel, preview
  dekoratif inert, metode pemulihan dan CTA fallback minimal 44 piksel, serta
  state forced-colors/reduced-motion.
- Gate: full backend 957/957 dengan 10.989 assertions; matriks browser
  desktop+mobile 296/296 melalui empat shard deterministik; production auth
  smoke 6/6; backup/restore exact-SHA, manifest, database audit 100, public
  HTTP smoke, service health, dan rollback lulus.
- Residual gap: sebagian data cabang storefront demo production belum memiliki
  URL Google Maps terkonfigurasi; ini gap data lokasi, bukan regresi renderer
  atau release auth.

## 2026-08-02 - Auth branding dan touch safety candidate final (historis)

- Status saat dicatat: `IMPLEMENTED_NOT_DEPLOYED`; `DEPRECATED` sebagai status
  aktif karena candidate kemudian dipromosikan menjadi release
  `20260802002923-d9bbbac`.
- Login, signup, dan password recovery memiliki tepat satu signature
  `Powered by SagaBook`, target sentuh kritis minimal 44 piksel, preview
  dekoratif yang tidak dapat menerima fokus, metode pemulihan dan CTA fallback
  minimal 44 piksel, serta state forced-colors dan reduced-motion.
- Source: `d9bbbac3d5960013c6df267ff9ae2534b883710d`.
- Validation: visual regression mobile/desktop 6/6, full backend 957/957 dengan
  10.989 assertions, typecheck, build, dependency audit 0, encrypted backup,
  dan disposable restore exact-SHA lulus.
- Blocker saat itu: matriks browser global mencapai timeout 10 menit sebelum
  selesai; blocker kemudian ditutup dengan empat shard deterministik 296/296.

## 2026-08-02 - UI/UX operasional dan release safety production

- Status: `PRODUCTION_DEPLOYED`; activation scope operasional yang telah
  dibuktikan tetap `PRODUCTION_ACTIVATED`.
- Candidate kumulatif UI/UX, storefront tenant, branding, dan release safety
  dipromosikan sebagai release `20260801213514-8edd762` dari source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Manifest exact-SHA, public smoke, database audit 100, service health, journal,
  backup/restore, dan rollback release lulus.
- Business readiness tetap `NEEDS CONFIRMATION` sampai pilot studio nyata dan
  legal/tax finalization selesai.

## 2026-08-02 - Candidate UI/UX operasional dan release safety (historis)

- Status saat dicatat: `IMPLEMENTED_NOT_DEPLOYED`; `DEPRECATED` sebagai status
  aktif karena cakupan kumulatif kemudian dipromosikan melalui source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Dashboard/admin, navigasi, action staff, dan tenant booking storefront telah
  dirapikan untuk hierarchy mobile/tablet/desktop, state aksesibilitas, dan
  satu signature `Powered by SagaBook` per surface aplikasi.
- Kontrak booking, payment, tenant isolation, invoice, dan artefak bisnis tidak
  diubah; signature tidak masuk ke invoice atau hasil bisnis.
- Release safety sekarang memakai backup serial, manifest checksum
  deterministik, receipt terikat source commit, dan preservasi checksum
  migration yang sudah aktif.
- Source: `082c8c42bff2be0d70115b76227fd5472c1c6dab`.
- Validation: visual matrix 400 pass/0 fail, focused exact-source 19 test/131
  assertions, build dan dependency audit hijau, serta encrypted backup dan
  disposable restore exact-SHA lulus.
- Blocker: protected GitHub Actions belum dapat didispatch dari sesi otomasi;
  promotion dan post-deploy public smoke belum dilakukan. Production tetap
  `20260731181921-378bcdf`.

## 2026-08-01 - Fonnte tenant routing production

- Status: `PRODUCTION DEPLOYED` dan `PRODUCTION ACTIVATED` untuk routing
  WhatsApp SagaBook; authenticated owner canary masih direkomendasikan sebelum
  rollout customer berskala besar.
- Default setiap tenant menggunakan Fonnte SagaDev; owner dapat memilih
  credential Fonnte studio sendiri atau mode manual-only.
- Credential tenant terenkripsi dan tidak dikirim kembali ke browser; delivery
  menyimpan snapshot mode serta versi koneksi untuk retry dan audit.
- Additive migration, backup verification, provider connection probe tanpa
  pesan, readiness 100/100, health, service, Nginx, dan error-journal gate
  lulus.
- Source commit: `378bcdf4dac6c54d0bf421b5ef188103d82c6b40`.
- Production release: `20260731181921-378bcdf`.
- S72 auto-trial tidak ikut release dan tetap `PRODUCTION HOLD`.

## 2026-07-31 - Candidate Fonnte tenant routing dan auto-trial

- Status: `LOCAL_VALIDATED`; `NOT DEPLOYED`; production tidak berubah.
- Fonnte candidate memiliki tiga route tenant: SagaDev-managed sebagai
  default, credential Fonnte milik studio, atau manual-only.
- Credential tenant terenkripsi, tidak dikirim kembali ke browser, dan
  delivery snapshot gagal tertutup ketika route berubah.
- Candidate signup dapat mengaktifkan trial 7 hari tanpa approval owner atau
  verifikasi email, tetapi login tetap menunggu provisioning `ready`.
- Source: S71 `a368c05edbed9b10d8d187ae60e354fd84d96b55`; S72
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`.
- Validation: S71 957 test/10.976 assertions; S72 954 test/10.997 assertions;
  kedua production frontend build lulus.
- S72 tetap `PRODUCTION HOLD` dan memerlukan approval release terpisah.

## 2026-07-31 - Privacy governance source implementation

- Status: `IMPLEMENTED_NOT_DEPLOYED`; public policy tetap `NOT ACTIVE - NOT
  PUBLISHED`.
- Before: P01-P18 sudah disetujui, tetapi consent evidence, customer request,
  owner triage, incident register, offboarding timeline, dan retention preview
  belum tersedia sebagai satu workflow source.
- After: booking menyimpan snapshot consent berversi; customer dapat membuat
  request privacy dari secure booking link; owner memiliki halaman
  `Privasi & Data`; request tenant-scoped, role-protected, idempotent, dan
  auditable; retention hanya preview dan mode apply ditolak.
- Source commit: `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Validation source: 950 test / 10.904 assertions, production build, Composer
  audit, dan npm production audit lulus.
- Production tidak berubah. Identitas badan usaha, alamat, email privacy,
  WhatsApp support, legal review, dan destructive-retention gate masih pending.

## 2026-07-31 - Owner approval privacy, retention, dan offboarding

- Status keputusan: `CONFIRMED`; delivery kontrak target: `PLANNED`; public
  status: `NOT ACTIVE - NOT PUBLISHED`.
- Before: draft P01-P18 masih menunggu keputusan owner sehingga implementasi
  dan review legal belum mempunyai persetujuan kanonik.
- After: Andreas menyetujui seluruh P01-P18 untuk implementasi dan review
  legal, termasuk data role, consent, retention per kategori, deletion,
  offboarding, incident response, dan subprocessor disclosure.
- Source docs:
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`.
- Production tidak berubah; persetujuan ini bukan izin publikasi dan bukan
  bukti bahwa retention job atau offboarding runtime sudah aktif.
- Next action: lengkapi identitas/kontak resmi, legal review, implementasi,
  acceptance, immutable release, dan public smoke sebelum final sign-off.

## 2026-07-31 — Founder commercial dan booking policy production

- Before: nominal paket dan trial dua fase sudah ada, tetapi Pro masih
  unlimited, public/legal membawa copy lama, SLA belum sesuai kontrak founder,
  dan refund customer belum menghitung jendela 100/50/0 secara aman.
- After: Basic Rp500.000 (1 cabang/3 staff), Growth Rp950.000 (3/10), Pro
  Rp1.500.000 (maksimal 10/30), Custom di atas Pro, fair-use booking, trial
  guardrail, support/retention/offboarding, satu reschedule gratis minimal 24
  jam, dan refund 100/50/0 operator-approved aktif secara konsisten.
- Runtime source `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`, release
  `20260731172605-39fb2d3` pada SagaBook dan Saga Platform.
- Validation: 946/946 test dengan 10.864 assertions; browser desktop/mobile,
  build, dependency audit, backup terenkripsi, restore tiga database, migration
  rehearsal, readiness 10/10, public smoke, service, queue, dan journal lulus.
- Rollback: `20260731075424-285ab94`; migration additive tidak memerlukan down
  destruktif.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED` untuk
  kontrak runtime ini.
- Business readiness: `NEEDS CONFIRMATION` sampai legal identity/sign-off dan
  Founding Studio Pilot lulus.

## Konteks

Gunakan bersama [PRODUCT](PRODUCT.md), [DOSSIER](DOSSIER.md), dan status release
aktual.

## 2026-07-31 - Platform Support Operations production

- Status: `PRODUCTION_DEPLOYED`.
- Before: tiket support dapat dibaca dan dibalas, tetapi ownership operator,
  SLA, concurrency, dan receipt audit belum cukup jelas untuk tim multioperator.
- After: operator memiliki antrean berdasarkan produk/status/prioritas/SLA,
  claim/release, resolve/reopen, private note, public reply, dan perubahan
  prioritas yang retry-safe serta auditable.
- Keamanan: permission deny-by-default, tenant reference tersanitasi,
  idempotency key, optimistic lock, dan receipt audit tanpa isi pesan,
  provider reference, tenant ID mentah, atau PII.
- Dampak: operator dapat melakukan triage tanpa duplikasi respons atau silent
  overwrite saat dua operator menangani tiket yang sama.
- Source: `285ab943b93466deda0f6c07466c0fbe8da16e4c`.
- Release: `20260731075424-285ab94`.
- Validasi: 942 regression tests / 10.824 assertions, 36 focused tests / 178
  assertions, 26 visual smoke, 4 browser E2E mobile/desktop, production build,
  dependency audit, backup verification, migration, readiness/database audit
  100/100, service health, dan enam public smoke lulus.
- Rollback: immutable release `20260731053435-7cc63d2` tetap tersedia.
- Next action: observasi SLA dan kualitas resolusi pada cohort studio nyata.

## 2026-07-31 - Support & Recovery Center production

- Status: `PRODUCTION_DEPLOYED`.
- Before: bantuan dan pemulihan tersebar; owner tidak dapat melanjutkan tiket
  setelah human handoff.
- After: owner/admin memiliki pusat bantuan terpadu untuk pertanyaan produk,
  human handoff, balasan tiket, account recovery, setup, changelog, dan
  screenshot privat.
- Keamanan: scope produk/tenant/akun/percakapan, permission deny-by-default,
  idempotency key, payload public-safe, audit tanpa isi pesan, serta adapter
  Support Hub bertanda tangan.
- Dampak: owner dapat menyelesaikan kendala atau meneruskannya ke manusia tanpa
  kehilangan konteks dan tanpa membuat pesan ganda saat retry.
- Source: `7cc63d2bfde011321f7c06ff45e393d189b1d4a4`.
- Release: `20260731053435-7cc63d2`.
- Validasi: 938 regression tests / 10.795 assertions, 32 focused tests / 149
  assertions, production build, dependency audit, visual smoke desktop/mobile,
  backup, migration, readiness/database audit 100/100, service health, dan
  public smoke lulus.
- Rollback: immutable Saga Platform `20260727085127-5bf7977` dan SagaBook
  `20260730214513-a26d378` tetap tersedia.
- Next action: observasi kualitas handoff dan recovery pada cohort studio nyata.

## 2026-07-31 - Activation Center production

- Status: `PRODUCTION_DEPLOYED`.
- Before: readiness setup tenant tersebar dan tidak memiliki handoff terpadu
  menuju publish serta booking pertama.
- After: owner memperoleh progress server-authoritative, blocker yang dapat
  ditindaklanjuti, resume setup, preview/publish storefront, status provider
  yang jujur, dan first-booking handoff.
- Dampak: onboarding tenant lebih terarah dan risiko publish sebelum setup siap
  berkurang.
- Source: `a26d378de994da3dc69d9088eff1c8e04110e7af`.
- Release: `20260730214513-a26d378`.
- Validasi: full regression, build, visual smoke, security audit, backup
  verification, release gate, database audit, dan public smoke lulus.
- Next action: observasi cohort onboarding studio nyata dan waktu menuju
  booking pertama.

## 2026-07-31 — Customer Booking Center production

- Status: `PRODUCTION_DEPLOYED`.
- Customer dapat melihat status dan mengajukan reschedule/change/cancel/refund.
- Secure link expiring, tenant-scoped, dan idempotent.
- Operator menerima request melalui Task Center.
- Source: `dc312a4e4835d0d7ca52f88730b5ea0bb84ac9af`.
- Release: `20260730153914`.

## 2026-07-30 — Trial dua fase dan Saga Account seam

- Trial 14 hari server-authoritative aktif.
- Harga SagaBook tetap Basic Rp500 ribu, Growth Rp950 ribu, Pro Rp1,5 juta.
- Identity seam tidak menggabungkan entitlement atau role SagaView.
