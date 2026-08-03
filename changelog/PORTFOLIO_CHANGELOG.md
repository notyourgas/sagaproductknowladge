# Portfolio Changelog

## Tujuan

Mencatat perubahan material lintas produk yang penting untuk positioning,
workflow, pricing, release, activation, atau blocker.

## Konteks

Detail tetap berada pada changelog produk; entri docs-only berada di root
[CHANGELOG](../CHANGELOG.md).

## 2026-08-03 - SagaBook success support candidate

- `CONFIRMED`, `IMPLEMENTED_NOT_DEPLOYED`: success screen booking sekarang
  mengutamakan detail/status dan WhatsApp cabang yang dipilih, dengan pesan
  public-safe serta fallback salin pesan bila nomor cabang tidak valid.
- Source `7f129eadd0ab3cb214b6d5128765e086f14ac0cc` sudah tersedia pada branch
  `codex/s92-booking-success-whatsapp`; focused success/watermark 9/9,
  backend 960/960 dengan 11.007 assertions, unit guard 2/2, build, design
  audit, dan audit dependency 0 lulus.
- Matrix runner sekarang aman terhadap junction dan snapshot success
  deterministik. Rerun fresh mencapai 264 passed, 45 controlled skips, dan 1
  failed karena fixture tablet memilih jam yang sudah lewat lalu ditolak HTTP
  409. Batas dua correction rounds tercapai, sehingga release ditahan.
  Production tetap source `fa228d89`,
  release `20260803022430-fa228d8`, rollback `20260802221221-994de01`.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, SagaView, activation, dan business readiness tidak berubah.

## 2026-08-03 - SagaView navigasi mobile terlihat production

- `CONFIRMED`: Studio Console mobile sekarang menampilkan `Menu n/8`, tombol
  sebelumnya/berikutnya 44 px, dan auto-center route aktif. Output, Izin Foto,
  Changelog, serta Install App tidak lagi bergantung pada tebakan swipe.
- Source Studio `c7d239c95032822aa05b92b3a3682452dc33edf2` aktif pada release
  `20260803101436-c7d239c`; rollback `20260803062122-ae21062` tersedia.
- 156 unit, 87/87 E2E, focused 2/2, live journey Session -> Output,
  no-overflow, build/budget, audit 0, accessibility, route/header smoke,
  service/Nginx/journal, dan visual production mobile/desktop lulus.
- Backend/database, migration, payment/provider, customer flow,
  device/session/permission, tenant isolation, foto lokal, frame picker,
  watermark, output 4R, dan business-readiness claim tidak berubah.

## 2026-08-03 - SagaBook Review touch-safe production

- `CONFIRMED`: enam jalur `Ubah` pada Review storefront berubah dari target
  sekitar 31x18 menjadi tombol semantik minimal 72x44 piksel, lengkap dengan
  label screen reader, focus keyboard, forced-colors, dan reduced-motion.
- Source `fa228d89bc5bea32fb19bf424a4b0e48db1bc506` aktif sebagai release
  `20260803022430-fa228d8`; rollback `20260802221221-994de01` tersedia.
- Lima preset pada tiga viewport tidak overflow dan tetap memiliki tepat satu
  `Powered by SagaBook`. Backend 960/960, focused Review 9/9, accessibility
  24/24, scoped E2E, build, serta npm/Composer audit 0 lulus.
- Full matrix fresh lulus 142/142 dengan 2 expected skips; backend 960/960,
  build, accessibility/E2E, dan audit dependency 0 lulus. Encrypted backup,
  disposable restore exact-SHA, manifest, DB audit 100, service/public smoke,
  rollback, screenshot, serta DOM live dua viewport juga lulus.
- Payment/provider, availability, permission, session, tenant isolation,
  SagaView, dan klaim business readiness tidak berubah.

## 2026-08-03 - SagaView katalog frame lebih padat production

- `CONFIRMED`: katalog terisi sekarang memakai kartu horizontal ringkas pada
  mobile 390x844 dan empat kolom pada desktop 1440x900; launcher bantuan tidak
  lagi fixed menutupi frame ketika tertutup.
- Source Studio `ae21062f1767542ea2af52b4ba874dac4ec1142f` aktif pada release
  `20260803062122-ae21062`; backend tetap `20260802042221-f26bb57`; rollback
  Studio `20260802200733-34519c4` dipertahankan.
- Focused 5/5, 156 unit, 85/85 E2E, import 50/200/500, build/budget, audit 0,
  accessibility, sepuluh route/header smoke, service/Nginx/journal, dan visual
  mobile/desktop lulus.
- Customer picker, frame recovery, device/session/privacy, payment/provider,
  tenant isolation, output 4R, dan business-readiness claim tidak berubah.

## 2026-08-03 - SagaBook storefront desktop production

- `CONFIRMED`: storefront booking publik SagaBook pada desktop kini memakai
  shell dua kolom hingga 1040 piksel, dengan orientasi langkah dan ringkasan
  pilihan di sisi kiri serta transaksi di sisi kanan. Mobile 390x844 tetap
  identik dan tablet 1024x768 tetap ringkas tanpa overflow.
- Source `994de01cf3586adb4da8813a9c4b931085457510` aktif sebagai release
  `20260802221221-994de01`; rollback `20260802183533-35c8219` dipertahankan.
- Seluruh langkah dan preset existing, Maps, WhatsApp, paket, slot, checkout,
  confirmation, tenant brand, serta satu `Powered by SagaBook` tetap tercakup.
  Payment/provider, availability, permission, session, dan tenant isolation
  tidak berubah.
- Backend 960/960, visual desktop 45/45 dengan satu mobile-only skip, mobile
  manual-transfer E2E 1/1, build, design audit, npm/Composer audit 0, backup,
  disposable restore, migration preflight, database audit 100, service,
  journal, public smoke, serta visual live dua viewport lulus. Endpoint `/up`
  masih tanpa HSTS/CSP; route login dan booking yang diaudit memiliki header
  keamanan. SagaView tidak berubah pada batch ini.

## 2026-08-03 - SagaView Install App jujur production

- `CONFIRMED`: halaman Install kini membedakan prompt otomatis, manual, dan
  installed; setiap state memiliki satu action utama, status live, recovery,
  panduan browser, dan jalur installed ke Session. CTA 48 px dan aksesibilitas
  mobile/desktop, forced-colors, reduced-motion, no-overflow, serta satu
  `Powered by SagaView` lulus.
- Source Studio `34519c4dea1d6e7ee40be603e5c4e782bc230b3d` aktif pada release
  `20260802200733-34519c4`; backend tetap `20260802042221-f26bb57`; rollback
  Studio `20260802132108-a3eb955` dipertahankan.
- 156 unit, 84/84 E2E, focused local dan production 3/3, dependency audit 0,
  build/budget, backup/restore evidence fresh, 13 route/header smoke, service,
  Nginx, journal, dan rollback lulus. Migration tidak diperlukan.
- Device/session, foto lokal, payment/provider, tenant isolation, customer flow,
  output 4R, dan business-readiness claim tidak berubah.

## 2026-08-03 - AOGTICVITY announcement dan readiness production

- `CONFIRMED`: announcement publik/operasional sekarang persisten, admin-only,
  versioned, idempotent, dan audited. Feed peserta fail-closed terhadap audience
  operasional serta arsip.
- Admin/operator memperoleh Day-H readiness aggregate PII-free untuk PIC,
  roster, verifikasi, hasil, WhatsApp, dan sesi; digest, last-known cache, serta
  export JSON tersedia untuk perbandingan dan recovery perangkat.
- Source `3917b5ea07ddfec33a7c0bd18194f1d7d18b29da`; Hostinger
  `20260802T193509Z`; Vercel `dpl_CDcW9tZehoaM38aSSb3Nu5u8CGDU`; migration
  015. Disposable MySQL, 10 integration test, exact-source preflight, backup,
  build, audit 0, authorization, public/API smoke, dan rollback target lulus.
- Delivery berubah di production. Activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai human
  multi-device UAT, WhatsApp full flow, custom domain, dan rehearsal fisik.

## 2026-08-03 - SagaBook Admin Staff responsif production

- `CONFIRMED`: daftar staff mobile berubah dari tabel desktop terpotong menjadi
  kartu operasional; desktop tetap tabel. Kontrol kritis minimal 44 piksel,
  reset filter, focus recovery editor, tab semantik, forced-colors,
  reduced-motion, dan no-overflow lulus tanpa mengubah CRUD atau permission.
- Source `35c82192234eb84e03b2237029540e299c70e12f` aktif sebagai release
  `20260802183533-35c8219`; rollback `20260802160930-596b8a4` dipertahankan.
- Backend 960/960 dengan 11.007 assertions, visual matrix 442 passed dengan 41
  controlled skip, audit 0, backup/restore exact-SHA, database audit 100,
  services, journal, dan public browser smoke lulus.
- Visual live Staff terautentikasi tidak memakai credential; `/up` masih tanpa
  HSTS. Sampel login memiliki HSTS+CSP tetapi tanpa `X-Frame-Options`; CSP
  `frame-ancestors` aktif. SagaView, storefront/preset, payment, watermark, dan
  business-readiness claim tidak berubah.

## 2026-08-03 - AOGTICVITY event-day control plane production

- `CONFIRMED`: rundown, operator assignment, recovery status, result
  draft/verification/publication, standing, dan live projection sekarang
  server-authoritative. Operator hanya dapat mengubah lomba assigned; admin
  publish menyelesaikan lomba secara atomik.
- Source `baffaa52c0567d3fb3ed665ae673cf6e7c32e40c`; Hostinger
  `20260802T174812Z`; Vercel `dpl_9gXvi7t6xv6fisNC4LuuAiqZGvsX`; migration
  014. Disposable MySQL, integration, exact-source preflight, backup,
  readiness, public/API smoke, dan rollback lulus.
- Delivery berubah di production. Activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai human
  multi-device UAT, announcement persistence, WhatsApp full flow, custom
  domain, dan rehearsal fisik selesai.

## 2026-08-02 - AOGTICVITY team roster workflow production

- `CONFIRMED`: generator delapan tim, assignment peserta langsung, dan
  lifecycle `Draft → Published → Locked` sekarang persisten serta admin-only.
  Draft disembunyikan dari Leader/Player; publication dan stale writes
  fail-closed; audit serta idempotency aktif.
- Source `5820d8199e75bd9c00f3bdbb8de51e831a0b5717`; Hostinger
  `20260802T164829Z`; Vercel `dpl_65E94pdpkp6kcF7xMrwkMsmxM7ju`; migration
  013. Backup, disposable MySQL/integration, 85 regression test, build,
  dependency audit, service/public smoke, provenance, dan rollback lulus.
- Delivery berubah di production, tetapi activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai
  authenticated role UAT, workflow local-state tersisa, WhatsApp full flow,
  custom domain, dan rehearsal fisik selesai.

## 2026-08-02 - SagaBook Calendar mobile operasional production

- `CONFIRMED`: Harian, Mingguan, dan Bulanan kini menampilkan periode nyata
  pada mobile; navigasi hari aksesibel, target kritis minimal 44 piksel, dan
  grid desktop tetap utuh. Manual Booking menyelaraskan tanggal aktif dan
  mengenali nama bulan Indonesia.
- Source `596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` aktif sebagai release
  `20260802160930-596b8a4`; rollback `20260802104018-a6bb8af` dipertahankan.
- Visual matrix 430 passed, backend 960/960 dengan 11.007 assertions, audit 0,
  backup/restore, readiness 100, service health, dan public smoke lulus.
- Authenticated production visual Calendar tidak memakai credential; `/up`
  belum mengirim HSTS dan staging monitor host mencatat error terpisah.
  Payment/provider, storefront/preset tenant, landing page, SagaView, dan
  business-readiness claim tidak berubah.

## 2026-08-02 - AOGTICVITY role-bound operations production

- `CONFIRMED`: admin kini menjadi sumber assignment role/tim; login tidak
  menawarkan selector dan server mengarahkan tiap akun ke workspace kanonik.
- Workspace operator terpisah, leader/player team-scoped, roster perwakilan,
  serta status lomba lintas perangkat aktif dengan MySQL versioning,
  idempotency, permission, dan audit.
- Source `864ef633c040ede662e569fe768513a46a57befd`; Hostinger
  `20260802T134116Z`; Vercel `dpl_3tesPCd9CH8CURfusqeZM2BkMHdX`;
  migration 011–012. Delivery production hijau; authenticated role UAT,
  workflow local-state tersisa, WhatsApp full flow, dan rehearsal fisik masih
  menahan activation keseluruhan/business readiness.

## 2026-08-02 - SagaView Consent Dashboard tahan gangguan production

- `CONFIRMED`: Consent Dashboard kini membedakan loading, offline/error,
  populated, filtered-empty, dan recovered; retry tidak memutasi consent atau
  foto, action minimal 44 px, dan mobile/desktop bebas overflow.
- Source Studio `a3eb955d5bfa5e17714ecc7d4c09a38fcae0b541` aktif pada release
  `20260802132108-a3eb955`; backend tetap `20260802042221-f26bb57`.
- 156 unit, 81/81 E2E default, 3/3 focused production, dependency audit 0,
  backup/offsite/disposable restore, gate 6/6, sepuluh route/header smoke,
  service health, journal, dan rollback lulus.
- Tepat satu `Powered by SagaView` tetap terlihat; backend, customer flow,
  consent tersimpan, foto lokal, payment/provider, dan output 4R tidak berubah.
- Business readiness mass-scale tetap `NEEDS CONFIRMATION`.

## 2026-08-02 - SagaView General Settings responsif production

- `CONFIRMED`: action Reset/Simpan General kini kontekstual, tidak menyebabkan
  overflow 406 px pada viewport 390 px, mengikuti konten mobile, dan tetap
  sticky pada desktop dengan target 44 px serta accessible name yang stabil.
- Source Studio `e666d7b0d7614741b75fdd421e341dbf541bd0cf` aktif pada release
  `20260802112729-e666d7b`; backend tetap `20260802042221-f26bb57`.
- 156 unit, 78/78 E2E default, 2/2 production focused, dependency audit 0,
  gate 6/6, backup/offsite/disposable restore, delapan route/header smoke,
  tujuh service, journal, dan rollback lulus.
- Workflow, paket, promo, kategori/harga, payment/provider, privacy, output 4R,
  dan SagaBook tidak berubah. Business readiness mass-scale tetap
  `NEEDS CONFIRMATION`.

## 2026-08-02 - SagaBook public branding safety production release

- Source `a6bb8afb` aktif sebagai release `20260802104018-a6bb8af`.
- Pricing, Terms, dan Privacy kini masing-masing memiliki tepat satu
  `Powered by SagaBook`; browser production mobile/desktop 8/8 tanpa overflow
  atau label silang.
- `X-Frame-Options`, HSTS, dan CSP masing-masing terverifikasi tepat satu pada
  route publik; CSP `frame-ancestors` tetap aktif.
- Backup/restore, readiness 100, tujuh service, journal, dan smoke lulus.
  SagaView tetap `20260802042221-f26bb57`; tidak ada payment/provider action.

## 2026-08-02 - SagaBook Admin Booking production release

- Source `500065c8` memperbaiki release runner dan mempromosikan Admin Booking
  triage responsif sebagai release `20260802101645-500065c`.
- Backend 959/959, focused UI tiga viewport 6/6, encrypted backup/disposable
  restore, migration, readiness 100, tujuh service aktif, journal bersih, dan
  public smoke lulus.
- SagaView tetap pada release `20260802042221-f26bb57`; tidak ada provider,
  payment, atau QRIS baru. Gap signature/header ditutup pada release berikutnya
  `20260802104018-a6bb8af`.

## 2026-08-02 - SagaBook Admin Booking candidate tertahan release gate

- Source `9963f3de` menyelesaikan triage Booking responsif: kartu mobile, tabel
  desktop, satu drawer detail aksesibel, target kontrol minimal 44 piksel, dan
  focus return setelah aksi terminal.
- Backend 958/958 dan browser tiga viewport 415 passed; build/design/dependency
  gate lulus.
- Delivery `IMPLEMENTED_NOT_DEPLOYED`. Dua release attempt berhenti
  fail-closed sebelum activation; SagaBook production tetap
  `20260802024941-b74ebb5`, SagaView tidak berubah, dan service tetap aktif.

## 2026-08-02 - AOGTICVITY Fonnte runtime dan channel UAT production

- Source `6b4b6feca16dc2d49b909f9301227e5078dfaf60` aktif pada Hostinger release
  `20260802T125353Z` dan Vercel production
  `dpl_3zhzGA9oTp7U2QkKVyekJPZTxkz2`; migration 009–010 aktif setelah backup.
- Device preflight, pengiriman kanal UAT, public route/health, proxy, dan
  invalid-webhook-secret 401 lulus. Fonnte dispatch runtime aktif.
- Full approval → magic-link → HttpOnly session → reuse/revoke UAT dan provider
  status webhook masih tertunda. Delivery `PRODUCTION_DEPLOYED`; WhatsApp login
  belum boleh diklaim production-ready dan business readiness tetap `BLOCKED`.

## 2026-08-02 - AOGTICVITY Fonnte operations candidate

- Source HEAD `8bfabf51b1e88d78a375eac067dad2aba7f0c8f4` menambahkan migration 010,
  authenticated/idempotent status webhook, truthful queued/sent/failed status,
  retry operator dengan cooldown/batas lima percobaan, stale-worker recovery,
  redacted queue console, dan device/quota preflight.
- Local 72 test/typecheck/build/dependency audit lulus. Exact-source MySQL 8.4
  disposable membuktikan migration 001–010 dan claim/reconcile/replay/retry/
  stale-recovery; temporary database/user/folder kemudian dibersihkan.
- Delivery `IMPLEMENTED_NOT_DEPLOYED`; production Hostinger/Vercel dan database
  aktif tidak berubah. Bitwarden, nomor UAT, provider secret/configuration,
  staging migration, dan two-device UAT masih wajib sebelum activation.

## 2026-08-02 - AOGTICVITY WhatsApp access candidate

- Source `127ef92b3efe38d707fba7c0dd861a1665953de3` menyelesaikan vertical slice
  pendaftaran hingga akses player: outbox transaksional, adapter Fonnte,
  approval/provisioning role server-side, magic link single-use 30 menit,
  hash-only ledger, session HttpOnly, revocation, audit, dan status operator.
- Token diletakkan pada URL fragment dan ditukar lewat POST same-origin agar
  tidak ikut request/access log GET. Role selalu ditetapkan server sebagai
  `player`; perubahan approval merevoke link/session terkait.
- Typecheck, 69 test, build, dependency audit 0, dan diff check lulus lokal.
  Delivery `IMPLEMENTED_NOT_DEPLOYED`; public production tidak berubah.
- Migration MySQL staging, secret runtime dari vault, Fonnte UAT nyata,
  delivery reconciliation, retry operator, dan UAT dua perangkat masih wajib
  sebelum WhatsApp login boleh diklaim aktif.

## 2026-08-02 - SagaView Output Settings responsif production

- `CONFIRMED`: action Reset/Simpan pada Studio Output sekarang hanya muncul
  ketika ada perubahan, tidak menutup konten mobile, tetap sticky pada desktop,
  dan menampilkan status unsaved yang jujur dengan target 44 piksel.
- Source Studio `47aec0d7f58b04c7f63ad9ac4be4141f649a14e7` aktif pada release
  `20260802042221-47aec0d`; backend compatible source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2` aktif pada release
  `20260802042221-f26bb57`.
- 156 unit, 76/76 E2E, backup/restore, gate kandidat dan rollback 6/6,
  production Chrome mobile/desktop, service, security header, journal, dan
  tujuh route/API smoke lulus.
- Folder output, device/session, payment/provider, privacy foto, output 4R,
  dan satu `Powered by SagaView` tidak berubah. Delivery/activation tetap
  `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`; business readiness mass-scale
  tetap `NEEDS CONFIRMATION`.

## 2026-08-02 - SagaBook CTA cabang storefront production

- Source `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` aktif sebagai release
  `20260802024941-b74ebb5` dengan rollback `20260802013852-76defd1`.
- CTA fixed disabled pada langkah Lokasi tidak lagi menutup katalog sebelum
  pilihan dibuat. Setelah cabang dipilih, satu CTA aktif 48 piksel muncul dan
  membawa customer ke langkah Paket.
- Kelima preset, Maps/WhatsApp, accessibility, no-overflow, branding, serta
  kontrak booking/payment tetap utuh. Full backend 957/957 dan browser
  desktop+mobile 298/298 lulus bersama backup/restore serta public smoke.
- Delivery `PRODUCTION_DEPLOYED`; activation scope terkait tetap
  `PRODUCTION_ACTIVATED`; business readiness masih `NEEDS CONFIRMATION` sampai
  pilot studio nyata dan legal/tax finalization selesai.

## 2026-08-02 - SagaBook Maps fallback production

- Source `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` aktif sebagai release
  `20260802013852-76defd1` dengan rollback `20260802002923-d9bbbac`.
- Storefront tenant dan Booking Center sekarang menyediakan pencarian Google
  Maps dari nama/alamat bila URL khusus belum tersedia; URL eksplisit dibatasi
  ke host Google HTTPS dan kontrol kritis minimal 44 piksel.
- Full backend 957/957, matriks browser desktop+mobile 298/298, backup/restore
  exact-SHA, manifest, database audit, service health, public smoke, dan visual
  production mobile/desktop lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation scope terkait
  `PRODUCTION_ACTIVATED`; business readiness tetap `NEEDS CONFIRMATION` sampai
  pilot studio nyata dan legal/tax finalization selesai.

## 2026-08-02 - SagaBook UI/UX dan auth hardening production

- UI/UX operasional, tenant booking storefront, branding aplikasi, dan release
  safety aktif sebagai release `20260801213514-8edd762` dari source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Manifest, smoke publik, database audit, service health, backup/restore, dan
  rollback lulus; business readiness tetap `NEEDS CONFIRMATION` sampai pilot
  studio nyata dan legal/tax finalization selesai.
- Hardening login/signup/password recovery dan CTA fallback pada source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d` telah
  `PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`: branding
  tepat satu kali, target sentuh 44 piksel, fokus dekoratif ditutup, dan
  aksesibilitas visual diperkuat.
- Exact-SHA backup/restore, full backend 957/957, matriks browser
  desktop+mobile 296/296, production auth smoke 6/6, manifest, database audit
  100, public HTTP smoke, service health, dan rollback lulus.
- Data cabang pada sebagian storefront demo production belum memiliki URL
  Google Maps; gap data ini tidak mengubah status release auth.

## 2026-08-02 - SagaBook UI/UX dan release-safety candidate (historis)

- Dashboard/admin, staff action, dan tenant booking storefront telah
  disempurnakan untuk hierarchy responsif, accessibility states, serta satu
  `Powered by SagaBook` per surface aplikasi.
- Immutable release evidence diperketat dengan backup serial, checksum
  manifest deterministik, dan restore receipt yang terikat source commit.
- Source `082c8c42bff2be0d70115b76227fd5472c1c6dab`; status saat dicatat
  `IMPLEMENTED_NOT_DEPLOYED`, lalu digantikan oleh promotion kumulatif source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.

## 2026-08-02 - AOGTICVITY public registration production

- Public registration berubah dari browser-local demo menjadi submit MySQL
  yang tervalidasi, idempotent, rate-limited, consented, dan audited; admin
  verification desk membaca data nyata dengan permission server-side.
- Participant fixture/localStorage dan indikator simulasi dihapus tanpa
  menghapus canonical event master.
- Source `ccb7115c07b28e99b2e13a4d3153eece6fbf3aec`; Hostinger
  `20260801T170743Z`; Vercel
  `dpl_FQeCxhBWxWxWp44n9au7UPwDerMV`; migration 008.
- Auth dan registration `PRODUCTION_ACTIVATED`; produk keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` menunggu
  rehearsal operasi hari-H serta provider/domain yang belum aktif.

## 2026-08-01 - AOGTICVITY password auth melalui public Vercel

- Founder menetapkan MFA admin opsional dan public delivery tetap di Vercel;
  password/session/RBAC/rate-limit/revoke/audit tetap wajib.
- Vercel sekarang memakai guarded HTTPS proxy ke Hostinger BFF; direct endpoint
  404 dan MySQL tetap loopback-only.
- Source `dd59f8948c58f7d3a8f996d136e86bac9fb807f6` + `56b0b43`;
  Vercel production `dpl_FfaWprKbFMuPD9euNe7yWrHRdgwC`; Hostinger release
  `20260801T152049Z`.
- Real login dan forced password-change route terbukti. Delivery
  `PRODUCTION_DEPLOYED`; activation keseluruhan `NOT_PRODUCTION_ACTIVATED` dan
  business readiness `BLOCKED` sampai owner/core operations/physical UAT lulus.

## 2026-08-01 - AOGTICVITY auth dan operator operations dark staging

- Identity MySQL, HttpOnly database session, forced password change, TOTP
  admin, role authorization, user/session operations, dan audit kini aktif pada
  Hostinger dark staging loopback.
- Result publish/correct menjadi server-authoritative; roster import dan
  check-in lulus full regression MySQL 62/62.
- Source `68aed04a66b7bb9364fafef307e3d0d8635f2b38`; immutable release
  `20260801T113315Z`; Linux build, audit 0, readiness dan authorization smoke,
  backup, atomic switch, serta rollback lulus.
- Backend delivery `STAGING_DEPLOYED`. Public Vercel tetap prototype;
  activation `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED`
  sampai human MFA/two-device UAT dan public TLS/API path selesai.

## 2026-08-01 — SagaView katalog frame terisi production

- `CONFIRMED`: workflow operator `/admin/frames` kini searchable dan dapat
  difilter berdasarkan kategori/status, dengan availability text, empty reset,
  dan offline/cloud recovery yang jujur.
- Mobile 390x844 berubah dari empat kartu sekitar 78 px menjadi satu kolom
  324 px; desktop 1440x900 memakai tiga kolom tanpa overflow.
- Source Studio `a130ee5939f64fd76d575908b7748bacd75a6878` aktif pada release
  `20260801101538-a130ee5`; backend compatible source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2` aktif pada release
  `20260801101515-f26bb57`.
- 156 unit, 75/75 E2E, restore 146 tabel, deploy gate 6/6, services, security
  header, journal, rollback, dan public smoke lulus; tidak ada provider action
  atau perubahan kontrak customer/device/privacy/4R.

## 2026-08-01 — SagaView display preset responsif production

- Display Settings Studio kini menuntun operator dari pilihan preset ke
  preview, penyesuaian, validasi, dan save tanpa overflow pada 390x844.
- Preset memiliki state `Dipakai`, keyboard/44 px, status local/offline, dan
  invalid-color recovery; frame/output 4R serta kontrak device/privacy tidak
  berubah.
- Source Studio `fa782070b3ac1b054d301eb97d2aa8caeca3f66c` aktif pada release
  `20260801073058-fa78207`; rollback `20260801132330-5c87083` tersedia.
- 156 unit, 71/71 E2E, import 50/200/500, build/budget, audit 0, backup, deploy
  gate 6/6, service/header/journal, dan smoke lulus.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`;
  business readiness mass-scale tetap `NEEDS CONFIRMATION`.

## 2026-08-01 — SagaView kesiapan mulai sesi production

- Workspace mulai sesi kini menampilkan checklist perangkat, paket, folder,
  frame, dan output dengan satu CTA kontekstual 48 px; utility cloud/recovery
  yang sehat diringkas tanpa menyembunyikan attention state.
- Source Studio `5c8708387869cfb8f1dd21d2758fdfbcdf8240d6` aktif pada release
  `20260801132330-5c87083`; backend tetap memakai source `f26bb577` dan direbind
  sebagai `20260801132330-f26bb57`.
- 156 unit, 68/68 E2E, 9/9 focused readiness/import, audit 0, backup, deploy
  gate 6/6, service health, security header, dan production smoke lulus.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`;
  business readiness mass-scale tetap menunggu Founding Studio Pilot.
- Rollback Studio `20260731183624-1092c99` dipertahankan.

## 2026-08-01 — SagaView preset dan Editor/Review responsif production

- Pemilihan frame kini memakai preview, selected state, jumlah cetakan, dan
  satu aksi `Terapkan & lanjut`.
- Editor/Review pada 390x844 menjadi alur vertikal dengan status lokal/offline,
  langkah aktif, 44/48 px target, error/retry, serta signature yang tidak
  tertutup; workspace desktop dan output 4R tetap.
- Source Studio aktif `1092c99b258f6ca8db817d835d90e738cdcc4964`;
  rollback `20260731150138-1830e71`.
- 156 unit, 64/64 default-parallel E2E, build/budget, dependency audit 0,
  preflight 6/6, backup, services, dan production smoke lulus.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`.
- Release ini digantikan oleh S83; source S82 tetap menjadi rollback immutable
  `20260731183624-1092c99`.

## 2026-08-01 — AOGTICVITY festival UI/UX production

- Public/player/leader/admin/live AOGTICVITY kini memakai hierarchy mobile 430
  px yang lebih rapi, asset festival, semantic color cues, animated navigation,
  state feedback, modal spring, dan success celebration yang menghormati
  reduced-motion.
- Source `3d5d9d71cf5c1ff391a44b57d58bb5a39897664d` aktif pada production
  `dpl_BSst9r7RJWBQHSmDzCjbsJe33W6V` di
  `https://olimpiade-kemerdekaan.vercel.app`.
- Typecheck, 45 test, build, dependency audit, visual QA, route/health smoke,
  serta runtime error/500 scan lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED` dan
  business readiness `BLOCKED` karena local state/demo auth bukan bukti
  persistence/auth production.
## 2026-08-01 - SagaBook Fonnte tenant routing production

- Routing WhatsApp tenant-scoped aktif pada production release
  `20260731181921-378bcdf`, source `378bcdf4`.
- Fonnte SagaDev menjadi default; owner studio dapat memakai token Fonnte
  sendiri atau memilih manual-only.
- Backup, additive migration, provider connection tanpa pesan, readiness,
  health, service, Nginx, dan error-journal gate lulus.
- S72 auto-trial tidak ikut release dan tetap `PRODUCTION HOLD`.

## 2026-07-31 — SagaBook Fonnte routing dan SagaBook/SagaView auto-trial candidate

- SagaBook memiliki candidate routing Fonnte tenant-scoped: SagaDev-managed,
  studio-managed, atau manual-only; source `a368c05e`.
- SagaBook dan SagaView memiliki candidate signup auto-trial 7 hari dengan
  provisioning fail-closed; source `dcb5a3f3`.
- Kedua candidate lulus full regression dan frontend build secara lokal.
- Tidak ada production, VPS, DNS, credential, data live, atau customer flow
  yang diubah. S71 `NOT DEPLOYED`; S72 `PRODUCTION HOLD`.

## 2026-07-31 — AOGTICVITY public Vercel prototype

- Public prototype AOGTICVITY aktif pada
  `https://olimpiade-kemerdekaan.vercel.app` dari exact source `dabed03`.
- Preview tervalidasi dipromosikan sebagai production deployment
  `dpl_7HCE7eAh8VfjDZpvprud7UeHFm22`; seluruh surface utama dan health 200.
- Dependency, build, security header, provenance, dan runtime-error gate lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED` karena
  UI masih bundled/local state dan real auth/MySQL BFF belum aktif.
- Business readiness tetap `BLOCKED`; custom domain dan workflow multi-device
  nyata belum diklaim.

## 2026-07-31 — AOGTICVITY master recap dark staging

- Master recap 17 Agustus 2026 kini menjadi kontrak event 8 tim/10 lomba untuk
  public, player, leader, admin, dan live projection.
- Lomba seluruh tim memakai roster otomatis; durasi tetap provisional dan dapat
  disunting admin dengan rebuild jadwal.
- MySQL event-master dry-run, validation, atomic publish, versioning, permission,
  idempotency, dan audit lulus dark-staging smoke bersama regression roster,
  security, serta managed session.
- Source `52f7b58`; release `20260731T162024Z`; delivery `STAGING_DEPLOYED`.
- Production publik tidak berubah. Activation tetap diblokir oleh auth/IdP
  produksi, frontend API activation, domain/TLS, notification provider,
  physical multi-device UAT, dan finalisasi data provisional.

## 2026-07-31 — SagaDevs Hero Scale v4 Production

- Founder menyetujui Motion Polish v3 lalu meminta logo 3D diperbesar 1,5×, digeser lebih kiri, dan langsung dipromosikan ke domain utama.
- Hero Scale v4 mempertahankan style, font, tujuh section, sembilan source capture, material metallic, motion, accessibility, dan product navigation sebelumnya.
- Entry module 3D dibuat versioned untuk memutus cache immutable lama.
- Release berstatus `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` pada `sagadevs.com`.
- Local QA, visual sembilan viewport, protected Preview, public health/header check, dan production browser regression empat viewport lulus.

## 2026-07-31 — SagaDevs source-preserving Motion Polish v3 Preview

- Hierarchy dan placement diperbaiki tanpa mengganti style, font, tujuh section, atau fitur visual source.
- Product title collision, offset heading Services, crop logo 3D, status-rail collision, serta hero CTA hierarchy ditutup dengan responsive guards.
- Motion product/stage/reveal dibuat lebih kohesif, memiliki reduced-motion fallback, dan render WebGL berhenti di luar hero.
- Release `source-preserving-motion-polish-v3` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview; production `sagadevs.com` tidak berubah.
- Static, browser empat viewport, accessibility desktop/mobile, visual sembilan viewport, health, dan security header gate lulus.

## 2026-07-31 — SagaDevs source-preserving Polish v2 Preview

- Footer lengkap ditambahkan dan WhatsApp CTA diperkecil tanpa mengubah tujuh section atau fitur source.
- Heading Process kini memakai garis kiri yang sama dengan Product Showroom.
- Spacing serif, product title, dan responsive showroom diperbaiki agar tidak overlap pada desktop maupun mobile.
- IBM Plex Mono Saga dipakai konsisten untuk metadata.
- Release `source-preserving-polish-v2` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview; production `sagadevs.com` tidak berubah.
- Static, browser, automated layout guards, visual delapan viewport, health, security, dan public-safety gate lulus.

## 2026-07-31 — SagaDevs source-preserving typography correction Preview

- Source composition, original font families, tujuh section, dan seluruh fitur visual/interaktif lama dipertahankan.
- Refinement dibatasi pada typography, hierarchy, spacing, density, placement, responsive behavior, serta focus management menu dan command palette.
- Showroom tetap memakai sembilan capture source-grounded SagaBook, SagaView, dan Sagafin.
- Release `source-preserving-typography-v1` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview; production `sagadevs.com` tidak berubah dan noindex tetap aktif.
- Static, browser, visual delapan viewport, health, security, dan public-safety gate lulus.

## 2026-07-31 — SagaDevs UI/UX Sprint 1–5 Preview (DEPRECATED)

- Parent hub dipadatkan menjadi Hero, Products, Services, Process, Proof, dan Contact.
- Showroom mempertahankan sembilan capture source-grounded untuk SagaBook, SagaView, dan Sagafin serta direct landing masing-masing.
- Typography, navigation, hierarchy, responsive layout, motion, accessibility, security headers, dan WhatsApp brief diperbaiki.
- Release `ui-ux-sprints-1-5-preview-v1` berstatus `STAGING_DEPLOYED` pada Vercel Preview; production `sagadevs.com` tidak berubah dan noindex tetap aktif.
- Static, browser, visual delapan viewport, health, security, dan public-safety gate lulus.
- Arah visual ditolak karena mengubah source terlalu signifikan dan bukan lagi baseline aktif.

## 2026-07-31 — SagaView UI/UX shell refinement production

- Owner, Studio, public, dan customer shell kini memakai hierarchy operasional
  solid, satu aksi utama, touch target minimal 44 px, motion 180 ms, serta
  forced-colors/reduced-motion.
- Tepat satu `Powered by SagaView` tampil pada tiap surface dan tidak masuk ke
  export foto, print, invoice, atau receipt.
- Backend/Owner `f26bb57737fc25a0a40d350dc26ca727d30885b2`
  (`20260731132030-f26bb57`) dan Studio
  `12e96591380d1256038bd7fb66b49d0e4090392e`
  (`20260731132030-12e9659`) aktif atomik di production.
- Full acceptance, backup, deploy gate, responsive audit, service health, dan
  public smoke lulus. Business readiness mass-scale tetap menunggu Founding
  Studio Pilot.

## 2026-07-31 - SagaBook privacy governance implemented in source

- Consent berversi, customer privacy request, owner triage, incident register,
  offboarding timeline, dan retention preview selesai di source commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Delivery: `IMPLEMENTED_NOT_DEPLOYED`; production dan public policy tidak
  berubah.
- Retention apply tetap hard-disabled. Identitas/kontak resmi, legal review,
  destructive-retention acceptance, immutable release, dan public smoke masih
  menjadi blocker activation.

## 2026-07-31 - SagaBook owner-approved public policy contract

- Andreas menyetujui P01-P18 untuk implementasi dan review legal: data role,
  consent, retention per kategori, deletion, offboarding, incident handling,
  dan subprocessor disclosure.
- Klasifikasi keputusan `CONFIRMED`; delivery kontrak target `PLANNED`; public
  status `NOT ACTIVE - NOT PUBLISHED`.
- Source docs
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`; production tidak berubah.
- Klaim unrestricted public SagaBook tetap diblokir sampai identitas/kontak,
  legal review, implementasi, acceptance, immutable release, dan public smoke
  selesai.

## 2026-07-31 — SagaBook founder commercial contract production

- Paket satuan kini exact: Basic Rp500.000/bulan (1 cabang/3 staff), Growth
  Rp950.000/bulan (3/10), Pro Rp1.500.000/bulan (maksimal 10/30), dan Custom
  di atas Pro; booking dipasarkan unlimited dengan fair-use.
- Trial guardrail, public pricing/legal, support/retention/offboarding, satu
  reschedule gratis minimal 24 jam, dan refund 100/50/0 operator-approved aktif
  pada runtime.
- Source `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`, release
  `20260731172605-39fb2d3` pada SagaBook dan Saga Platform.
- Test 946/946, browser desktop/mobile, backup/restore tiga database, migration
  rehearsal, readiness 10/10, public smoke, service, queue, dan error journal
  lulus; rollback `20260731075424-285ab94` dipertahankan.
- Business readiness tetap menunggu legal identity/sign-off dan Founding Studio
  Pilot.

## 2026-07-31 — SagaView founder commercial contract production

- Paket satuan kini exact: Growth Rp200.000/bulan (1 device, 10 frame, 3
  preset, offline 24 jam, 2 GB) dan Pro Rp500.000/bulan (4 device, 50 frame,
  10 preset, offline 168 jam, 10 GB).
- Fair-use session/foto, local-photo boundary, trial guardrail, support,
  retention, dan offboarding konsisten pada backend serta public Studio.
- Backend source `528e68d4aea27d847250075acd02d7753b07e3b6`, release
  `20260731101529-528e68d`; Studio source
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`, release
  `20260731101529-f6fa6f3`.
- Backup/restore, tiga migration additive, test, audit, deploy gate, security
  header, service health, dan public smoke lulus; payment existing tetap
  exactly-once tanpa transaksi baru.
- Business readiness tetap menunggu Founding Studio Pilot dan evidence nyata
  yang belum lengkap.

## 2026-07-31 — SagaView integrated production activation

- Backend, additive migration, Owner Console, trial 14 hari dua fase,
  subscription Growth/Pro, Studio, dan public self-service SagaView aktif
  atomik di production.
- Backend source `70155bb7db901beebb9fdeb65d5869a18ee8f874`, release
  `20260731082637-70155bb`; Studio source
  `28adcee9706ec8fde509d410d60cbea173c74a5b`, release
  `20260731082637-28adcee`.
- Home/Pricing/Help/Contact/Privacy/Terms/Legal, login, Studio, customer, API
  health, dan pricing API lulus post-deploy smoke; header HTTPS konsisten.
- Provider canary existing tetap satu dan exactly-once; release tidak membuat
  intent, QRIS, atau transaksi kedua.
- Delivery dan activation SagaView kini production; business readiness
  mass-scale tetap menunggu controlled cohort dan observasi support.

## 2026-07-31 - SagaBook Platform Support Operations production

- Operator platform kini memiliki antrean support berdasarkan ownership,
  prioritas, dan SLA waktu kerja Asia/Jakarta.
- Claim, release, resolve, reopen, private note, public reply, dan perubahan
  prioritas bersifat retry-safe serta auditable.
- Konflik antaroperator tidak melakukan silent overwrite; payload dan receipt
  audit tidak membuka PII atau identifier sensitif.
- Source `285ab943b93466deda0f6c07466c0fbe8da16e4c` aktif pada release
  `20260731075424-285ab94`; readiness/database audit 100/100 dan public smoke
  lulus.
- SagaView tidak berubah dan rollback immutable `20260731053435-7cc63d2`
  tetap tersedia.

## 2026-07-31 - SagaBook Support & Recovery Center production

- Owner/admin kini memiliki satu pusat bantuan untuk pertanyaan produk, human
  handoff, balasan tiket, account recovery, setup, changelog, dan screenshot
  privat.
- Retry pesan idempotent dan akses tetap product-, tenant-, account-, serta
  conversation-scoped dengan permission fail-closed.
- Source `7cc63d2bfde011321f7c06ff45e393d189b1d4a4` aktif pada release
  `20260731053435-7cc63d2`; readiness/database audit dan public smoke lulus.
- SagaView tidak berubah dan rollback immutable Saga Platform/SagaBook tetap
  tersedia.

## 2026-07-31 — SagaView provider canary paid

- Satu canary Tokopay production bernilai rendah berhasil dibayar.
- Satu intent menghasilkan satu processed callback exactly-once; subscription
  aktif dan katalog canary otomatis diarsipkan.
- Gate provider nyata tertutup pada Saga Platform release
  `20260727085127-5bf7977`.
- Tidak ada deploy atau migration; backend/public candidate SagaView tetap
  belum production.
- Data transaksi restricted tetap berada di luar knowledge publik.

## 2026-07-31 — SagaView provider canary pending

- Status historis: `DEPRECATED` oleh entri provider canary paid di atas.
- Satu canary pembayaran production dibuat secara terotorisasi.
- Status masih pending/unpaid; callback exactly-once dan activation provider
  belum terverifikasi.
- Tidak ada deploy, migration, atau perubahan setting production.
- Data transaksi restricted tidak dimasukkan ke knowledge publik.

## 2026-07-31 — SagaView Session Completion & Privacy Handoff production

- Customer tidak lagi mereset sesi sendiri; operator memverifikasi output dan
  handoff/antre cetak.
- Privacy mode memasking nama output, cleanup recovery fail-closed, dan
  source/output file tetap utuh.
- Source `2f65a9ac0322c33a429dcc888bdacd59836aab0b` aktif pada release
  `20260731113223-2f65a9a`; route completion/changelog lulus public smoke.
- Backend, payment, migration, dan public self-service tidak berubah.

## 2026-07-31 - SagaBook Activation Center production

- Tenant onboarding kini memiliki progress dan blocker server-authoritative.
- Owner dapat resume setup, preview/publish storefront, dan memantau handoff
  menuju booking publik pertama.
- Status payment/notification tetap jujur dan akses endpoint fail-closed
  berdasarkan tenant serta permission.
- Source `a26d378de994da3dc69d9088eff1c8e04110e7af` aktif pada release
  `20260730214513-a26d378`; production gate dan public smoke lulus.

## 2026-07-31 — SagaView public self-service candidate

- Home, Pricing, Help/Contact, Privacy, dan Terms terbaru sudah
  `IMPLEMENTED_NOT_DEPLOYED`.
- Source menampilkan hanya SagaView Growth Rp200.000 dan Pro Rp500.000 per
  bulan, trial 14 hari dua fase tanpa auto-charge, CTA paket, SLA support, dan
  privacy/retention.
- Full frontend regression, accessibility, security audit, dan responsive
  visual lulus.
- Production tidak berubah karena signup live masih memakai kontrak trial lama;
  promosi tetap fail-closed sampai backend dan public surface konsisten.

## 2026-07-31 - SagaMenu public media recovery

- Bio Menu dan Store Display kini local validated untuk fallback gambar serta
  video failure, retry, dan recovery.
- Perubahan belum dideploy; status produk tetap `LOCAL_VALIDATED`.
- Gate eksternal Laravel staging tetap menjadi blocker production.

## 2026-07-31 — Initial central knowledge baseline

- Repository Saga Product Knowledge dibentuk sebagai knowledge publik kanonik.
- Tujuh project aktif dimasukkan: SagaBook, SagaView, SagaBio, SagaMenu,
  SagaFin, COYABAG, dan AOGTICVITY.
- Saga Platform, SagaOPS, dan Saga AI dimasukkan sebagai platform/produk
  pendukung.
- Status evidence dan batas klaim production dikunci.
- Kontrak update lintas-project, validator, dan panduan import ChatGPT dibuat.

## 2026-07-31 — SagaBook Customer Booking Center

- Customer Booking Center aktif di production.
- Customer dapat melihat status dan mengajukan perubahan melalui secure link.
- Request idempotent dan masuk Task Center tanpa memutasi provider langsung.

## 2026-07-31 — SagaView fixed 4R output

- SagaView Studio fixed 4R aktif di production.
- Output portrait `1200x1800`, landscape `1800x1200`, 300 DPI.
- Backend Owner Console/trial/payment candidate tetap belum dideploy karena
  provider canary belum terverifikasi.

## 2026-07-31 — SagaView backend release preparation

- Backend runtime candidate tetap `IMPLEMENTED_NOT_DEPLOYED`.
- Backup/restore, dua migration, candidate gate, rollback compatibility,
  build, security audit, dan full regression telah lulus.
- Release guard diperbarui agar tidak memakai asset Owner Console lama.
- Production backend tidak berubah.
- Satu gate tersisa: paid Tokopay canary dan processed callback nyata sebelum
  promosi production.
