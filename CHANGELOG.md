# Saga Product Knowledge Changelog

## Tujuan

Mencatat perubahan struktur, tata kelola, dan kontrak dokumentasi repository.
Perubahan fitur/release produk tetap dicatat pada changelog masing-masing
produk dan [Portfolio Changelog](changelog/PORTFOLIO_CHANGELOG.md).

## Konteks

Root changelog tidak menggantikan changelog produk atau portfolio.

## 2026-08-02

### AOGTICVITY role-bound dashboard dan operasi lomba production

- Ringkasan: mengikat redirect/login/dashboard ke role database yang ditetapkan
  admin; memisahkan operator; membatasi leader/player ke tim; serta
  mengaktifkan roster perwakilan dan status lomba persisten lintas perangkat.
- Produk/area terdampak: AOGTICVITY identity/navigation, access directory,
  admin/operator/leader/player UX, roster, competition operations, MySQL,
  security, audit, release, rollback, dan UAT.
- Klasifikasi: `CONFIRMED`; source
  `6375c3b5f5079721b2ed73553d1fc80e0f97877a`, Hostinger
  `20260802T132948Z`, Vercel `dpl_6ZpF67T1p2u7SgK1EVJBCjJoeCng`, migration
  011–012, status `PRODUCTION_DEPLOYED`.
- Production berubah: ya. Activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai
  authenticated role UAT, workflow local-state tersisa, WhatsApp full flow,
  serta rehearsal fisik lulus.

### SagaView Consent Dashboard tahan gangguan production

- Ringkasan: membuat state loading/error/offline/empty/recovered jujur,
  menambahkan retry non-mutating, memperbesar target action, dan merapikan
  hierarchy responsif Consent Dashboard.
- Produk/area terdampak: SagaView Studio Console Consent, responsive layout,
  error recovery, accessibility, watermark, release, rollback, dan knowledge.
- Klasifikasi: `CONFIRMED`; source
  `a3eb955d5bfa5e17714ecc7d4c09a38fcae0b541`, release
  `20260802132108-a3eb955`, status `PRODUCTION_DEPLOYED` dan
  `PRODUCTION_ACTIVATED`.
- Production berubah: ya, hanya UI Consent. 156 unit, full E2E 81/81, focused
  production 3/3, dependency audit 0, backup/restore, gate 6/6, sepuluh
  route/header/service/journal, dan rollback lulus; backend, SagaBook,
  consent/foto, payment/provider, serta output 4R tidak berubah.

### SagaView General Settings responsif production

- Ringkasan: membuat action Reset/Simpan General kontekstual, menghapus
  horizontal overflow mobile, dan mempertahankan sticky desktop serta kontrak
  navigasi aksesibel.
- Produk/area terdampak: SagaView Studio Console General, responsive layout,
  save feedback, accessibility, release, rollback, dan knowledge runtime.
- Klasifikasi: `CONFIRMED`; source
  `e666d7b0d7614741b75fdd421e341dbf541bd0cf`, release
  `20260802112729-e666d7b`, status `PRODUCTION_DEPLOYED` dan
  `PRODUCTION_ACTIVATED`.
- Production berubah: ya, hanya UI General. Full E2E 78/78, focused production
  2/2, gate 6/6, backup/restore, route/header/service/journal, dan rollback
  lulus; backend, SagaBook, payment/provider, serta output 4R tidak berubah.

### SagaBook public branding dan frame-header hygiene production release

- Ringkasan: melengkapi signature produk pada Pricing/Terms/Privacy dan
  menormalkan `X-Frame-Options` menjadi satu nilai wire-level tanpa melemahkan
  CSP `frame-ancestors`.
- Produk/area terdampak: SagaBook public commercial/legal, accessibility,
  responsive branding, security header, regression QA, dan production release.
- Klasifikasi: `CONFIRMED`; source
  `a6bb8afbfe2353597ea55329c50829a220bc5d3e`, release
  `20260802104018-a6bb8af`, status `PRODUCTION_DEPLOYED`.
- Full backend 960/960, browser production 8/8, dependency audit 0,
  backup/restore, readiness 100, tujuh service, journal, dan smoke lulus.
  SagaView serta workflow booking/payment/provider tidak berubah.

### SagaBook Admin Booking production release

- Ringkasan: memperbaiki release runner yang berhenti sebelum verified
  transition, lalu mempromosikan Admin Booking responsif secara immutable.
- Produk/area terdampak: SagaBook Admin Booking, payment reconciliation,
  release diagnostics, backup/restore, dan production activation.
- Klasifikasi: `CONFIRMED`; source
  `500065c81cbc07e29b3370f8b22a8fcc521f7d7d`, release
  `20260802101645-500065c`, status `PRODUCTION_DEPLOYED`.
- SagaView tidak berubah. Gap branding public dan header duplikat ditutup pada
  release berikutnya `20260802104018-a6bb8af`.

### SagaBook Admin Booking candidate tertahan release gate

- Ringkasan: menambahkan triage Booking responsif dan memperbaiki false
  positive reconciliation untuk booking paid yang sudah masuk workflow sesi.
- Produk/area terdampak: SagaBook Admin Booking, accessibility/focus, payment
  reconciliation, QA visual, dan release safety.
- Klasifikasi: `CONFIRMED`; source
  `9963f3de757c0339580c79d96ff565d320722fcb` berstatus
  `IMPLEMENTED_NOT_DEPLOYED`.
- Production berubah: tidak. Dua attempt berhenti sebelum activation; release
  aktif tetap `20260802024941-b74ebb5` dan SagaView tetap unchanged.

### AOGTICVITY Fonnte runtime dan channel UAT production

- Ringkasan: mengaktifkan migration 009–010, runtime dispatch Fonnte, dan
  membuktikan satu pengiriman channel UAT pada public Vercel delivery.
- Produk/area terdampak: AOGTICVITY registration, approval, player identity,
  WhatsApp outbox, retry/recovery, Hostinger, MySQL, Vercel, release, dan
  rollback.
- Klasifikasi: `CONFIRMED`; source release
  `6b4b6feca16dc2d49b909f9301227e5078dfaf60`, Hostinger
  `20260802T125353Z`, Vercel `dpl_3zhzGA9oTp7U2QkKVyekJPZTxkz2`.
- Production berubah: ya. Runtime/provider channel aktif, tetapi status webhook
  dan full magic-link/session UAT belum selesai; business readiness tetap
  `BLOCKED`.

### AOGTICVITY Fonnte operations candidate

- Ringkasan: melengkapi kandidat akses WhatsApp dengan webhook status,
  reconciliation, retry/recovery, redacted operator console, dan preflight.
- Produk/area terdampak: AOGTICVITY Fonnte integration, migration 010,
  operations UI/API, audit, reliability, security, dan release/UAT contract.
- Klasifikasi: `CONFIRMED`; source HEAD
  `8bfabf51b1e88d78a375eac067dad2aba7f0c8f4` berstatus
  `IMPLEMENTED_NOT_DEPLOYED`.
- Production berubah: tidak. 72 test/typecheck/build/audit lulus dan functional
  MySQL 8.4 disposable lulus; vault/provider/staging/two-device UAT menunggu.

### AOGTICVITY WhatsApp access candidate

- Ringkasan: flow daftar sampai akses player kini memiliki kandidat lokal
  passwordless melalui approval admin dan link WhatsApp single-use 30 menit.
- Produk/area terdampak: AOGTICVITY registration, approval desk, identity,
  MySQL migration 009, transactional outbox, Fonnte adapter, session, audit,
  revocation, security, dan release/UAT contract.
- Klasifikasi: `CONFIRMED`; source
  `127ef92b3efe38d707fba7c0dd861a1665953de3` berstatus
  `IMPLEMENTED_NOT_DEPLOYED`.
- Production berubah: tidak. Gate lokal 69 test/typecheck/build/dependency audit
  lulus; MySQL runtime, secret vault, provider nyata, webhook/retry, serta UAT
  dua perangkat masih menunggu.

### SagaView Output Settings responsif production

- Ringkasan: action Reset/Simpan hanya muncul saat Output dirty, tidak menutup
  workspace mobile, tetap sticky pada desktop, dan selalu menampilkan status
  unsaved yang jujur dengan target minimal 44 piksel.
- Produk/area terdampak: SagaView Studio Console Output, responsive layout,
  save feedback, accessibility, release, rollback, dan knowledge runtime.
- Klasifikasi: `CONFIRMED`; source Studio
  `47aec0d7f58b04c7f63ad9ac4be4141f649a14e7` `PRODUCTION_DEPLOYED` pada
  release `20260802042221-47aec0d`; backend source tidak berubah dan direbind
  sebagai `20260802042221-f26bb57`.
- Production berubah: ya, hanya Studio Output UI; folder, device/session,
  payment/provider, privacy foto, dan output 4R tidak berubah.
- Gate: 156 unit, 76/76 E2E, focused Output 4/4, dependency audit 0,
  encrypted backup/disposable restore, candidate dan rollback gate 6/6,
  production Chrome mobile/desktop, service/header/journal, dan tujuh route/API
  smoke lulus.
- Rollback: Studio `20260801101538-a130ee5`; backend
  `20260801101515-f26bb57`. Business readiness mass-scale tetap
  `NEEDS CONFIRMATION` sampai cohort studio nyata dan support observation.

### SagaBook CTA cabang storefront production

- Ringkasan: menghilangkan CTA fixed disabled dari katalog Lokasi sebelum
  customer memilih cabang; satu CTA aktif baru muncul setelah pilihan valid.
- Produk/area terdampak: storefront booking milik studio, navigation state,
  responsive mobile/desktop, accessibility, release, dan rollback.
- Klasifikasi: `CONFIRMED`; source
  `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` `PRODUCTION_DEPLOYED` pada
  release `20260802024941-b74ebb5`.
- Production berubah: ya; exact runtime, encrypted backup/disposable restore,
  database audit, service health, public smoke, dan rollback terverifikasi.
- Gate: full backend 957/957 dengan 10.989 assertions, browser desktop+mobile
  298/298, typecheck/build, dependency audit 0, serta production visual
  390x844 dan 1440x900 lulus.
- Residual: business readiness tetap memerlukan cohort studio nyata dan
  legal/tax finalization; tidak ada blocker teknis baru dari perubahan CTA.

### SagaBook Maps fallback production

- Ringkasan: menutup gap jalur Maps pada storefront tenant dan Booking Center
  ketika cabang memiliki alamat tetapi belum mempunyai URL Maps khusus.
- Produk/area terdampak: SagaBook storefront milik studio, detail booking,
  URL safety, touch target, release, rollback, dan knowledge gap.
- Klasifikasi: `CONFIRMED`; source
  `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` `PRODUCTION_DEPLOYED` pada
  release `20260802013852-76defd1`.
- Production berubah: ya; exact runtime, manifest, database audit 100, public
  smoke, service health, dan rollback terverifikasi.
- Gate: full backend 957/957 dengan 10.989 assertions, matriks browser
  desktop+mobile 298/298, build/audit, encrypted backup, disposable restore,
  serta visual production 390x844 dan 1440x900 lulus.
- Residual: URL Maps presisi tetap opsional; fallback menggunakan nama/alamat
  dan tidak mengubah data tenant.

### SagaBook auth surface production

- Ringkasan: mempromosikan auth/fallback hardening setelah matriks browser
  global ditutup melalui empat shard deterministik tanpa mengurangi cakupan.
- Produk/area terdampak: SagaBook login, signup, password recovery, fallback
  CTA, accessibility, release, rollback, dan data lokasi storefront demo.
- Klasifikasi: `CONFIRMED`; source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d` `PRODUCTION_DEPLOYED` pada
  release `20260802002923-d9bbbac`.
- Production berubah: ya; exact runtime, manifest, database audit 100, public
  HTTP smoke, service health, dan rollback target terverifikasi.
- Gate: full backend 957/957 dengan 10.989 assertions, matriks browser
  desktop+mobile 296/296, production auth smoke 6/6, build/audit, serta
  encrypted backup dan disposable restore exact-SHA lulus.
- Residual gap: sebagian cabang storefront demo belum memiliki URL Google Maps
  yang dikonfigurasi dan memerlukan konfirmasi data owner.

### SagaBook production activation dan auth surface candidate (historis)

- Ringkasan: memperbarui status UI/UX/release-safety kumulatif menjadi
  production dan mencatat hardening auth surface berikutnya sebagai kandidat.
- Produk/area terdampak: SagaBook admin auth, signup, password recovery,
  storefront tenant, accessibility, backup/restore, release, dan rollback.
- Klasifikasi: `CONFIRMED`; source `8edd762154ec231b7e00c4a38db9c94dd0ee322c`
  `PRODUCTION_DEPLOYED` pada release `20260801213514-8edd762`; source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d`
  saat itu `IMPLEMENTED_NOT_DEPLOYED`, kini `DEPRECATED` sebagai status aktif
  karena dipromosikan pada release `20260802002923-d9bbbac`.
- Production berubah: ya untuk source `8edd7621`; belum berubah untuk auth
  hardening `d9bbbac3`.
- Gate: manifest, smoke, database audit, services, backup/restore, rollback,
  visual regression 6/6, full backend 957/957 dengan 10.989 assertions,
  typecheck, build, dan
  dependency audit lulus.
- Blocker: matriks browser global mencapai timeout 10 menit sebelum selesai;
  hasil parsial tidak di-waive dan tidak ada deploy parsial.

### SagaBook UI/UX dan release-safety candidate (historis)

- Ringkasan: menyinkronkan candidate penyempurnaan dashboard/admin, action
  staff, tenant booking storefront, accessibility, branding, dan guarded
  release evidence SagaBook.
- Produk/area terdampak: SagaBook admin, storefront milik studio, visual QA,
  backup/restore, migration integrity, release, dan rollback.
- Klasifikasi saat dicatat: `CONFIRMED`; delivery
  `IMPLEMENTED_NOT_DEPLOYED`; status tersebut kini `DEPRECATED` oleh promotion
  kumulatif `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Source: `082c8c42bff2be0d70115b76227fd5472c1c6dab`.
- Gate: visual matrix 400 pass/0 fail, exact-source focused release safety
  19 test/131 assertions, build/audit hijau, encrypted backup dan disposable
  restore exact-SHA lulus.
- Blocker: protected GitHub Actions dan post-deploy public smoke belum
  dijalankan; production tetap `20260731181921-378bcdf`.

### AOGTICVITY public registration MySQL production

- Ringkasan: mengganti browser-local participant demo dengan public
  registration MySQL dan authenticated admin verification desk.
- Alasan: founder meminta data demo dihapus dan aplikasi segera dapat dipakai
  mendaftar tanpa menunggu seluruh event-day workflow selesai.
- Produk/area terdampak: registration UI/API, participant persistence,
  consent, idempotency, rate limit, audit, admin verification, auth claim,
  migration, release, rollback, dan knowledge status.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; auth/registration
  `PRODUCTION_ACTIVATED`; activation produk keseluruhan
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.
- Source `ccb7115c07b28e99b2e13a4d3153eece6fbf3aec`; Hostinger
  `20260801T170743Z`; Vercel
  `dpl_FQeCxhBWxWxWp44n9au7UPwDerMV`; migration 008.
- Production berubah: ya. Registration dibuka eksplisit; dataset awal kosong;
  canonical event master dan loopback-only MySQL tetap dipertahankan.
- Gate: 61 test/build, dependency audit 0, backup, Preview/public smoke,
  submit/list/approve/replay/reconciliation, RBAC, rollback, dan cleanup UAT.
- Blocker: multi-device roster/check-in/result rehearsal,
  recovery/notification provider, target custom domain, keputusan master
  provisional, dan physical event rehearsal.

## 2026-08-01

### AOGTICVITY password auth melalui public Vercel

- Ringkasan: menyinkronkan keputusan MFA opsional serta public database-backed
  password auth melalui guarded Vercel-to-Hostinger HTTPS proxy.
- Alasan: founder meminta akses sederhana tetap pada Vercel tanpa membuka
  MySQL atau kembali ke demo role/localStorage sebagai bukti auth.
- Produk/area terdampak: login, bootstrap password, identity/session, RBAC,
  proxy boundary, Vercel delivery, Hostinger BFF, release, dan rollback.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  keseluruhan `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.
- Source `dd59f8948c58f7d3a8f996d136e86bac9fb807f6` + `56b0b43`;
  Vercel `dpl_FfaWprKbFMuPD9euNe7yWrHRdgwC`; Hostinger `20260801T152049Z`.
- Production berubah: ya, public Vercel kini memakai real identity/database
  runtime; MFA tidak wajib. MySQL tetap loopback-only.
- Gate: 55 test/build, audit 0, Preview/public real-login, password-change
  redirect, health/readiness, endpoint denial, asset, service/Nginx/journal.
- Blocker: owner password claim, core operations/two-device UAT, provider
  recovery/notification, custom domain, dan physical event rehearsal.

### AOGTICVITY auth dan core operator operations dark staging

- Ringkasan: menyinkronkan identity MySQL, session, TOTP admin, role
  authorization, access/session operations, server-authoritative result, dan
  audit yang aktif pada Hostinger dark staging loopback.
- Alasan: public prototype sebelumnya masih memakai demo role/local state dan
  belum mempunyai issuer login maupun persistence hasil lintas perangkat.
- Produk/area terdampak: auth, account/role, session/device, roster import,
  check-in, result publish/correct, audit, readiness, recovery, dan release.
- Klasifikasi: `CONFIRMED`; backend delivery `STAGING_DEPLOYED`; public product
  delivery `PRODUCTION_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`;
  business readiness `BLOCKED`.
- Source `68aed04a66b7bb9364fafef307e3d0d8635f2b38`; dark-staging release
  `20260801T113315Z`; rollback `20260801T112010Z`.
- Production berubah: tidak; public Vercel, DNS, dan Nginx tidak diaktifkan.
- Gate: local verify, Linux build, audit 0, MySQL 62/62, readiness,
  authorization/dev-route smoke, backup, atomic switch, dan rollback lulus.
- Blocker: human MFA/two-device UAT, public TLS/API path, recovery email
  provider, leader/player data UAT, dan rehearsal fisik.

### SagaView katalog frame terisi production

- Ringkasan: menyinkronkan katalog `/admin/frames` yang searchable,
  filterable, responsif, dan jujur saat offline ke runtime production.
- Alasan: empat kolom pada 390x844 memotong preview, nama, status, dan metadata,
  sehingga operator sulit menemukan serta memverifikasi frame yang siap pakai.
- Produk/area terdampak: SagaView Studio Console, katalog frame lokal/cloud,
  search/filter, status aktif/nonaktif, responsive layout, accessibility,
  release, dan rollback.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `PRODUCTION_ACTIVATED`; business readiness mass-scale tetap
  `NEEDS CONFIRMATION`.
- Source Studio `a130ee5939f64fd76d575908b7748bacd75a6878`, release
  `20260801101538-a130ee5`; backend unchanged source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260801101515-f26bb57`.
- Production berubah: ya, hanya Studio frame catalog; customer picker,
  payment/provider, device/session/privacy, dan output 4R tidak berubah.
- Gate: 156 unit, 75/75 E2E, import 50/200/500, build/budget, dependency audit
  0, restore 146 tabel, deploy gate 6/6, services, header security, journal,
  rollback, dan 12 route smoke.
- Rollback: Studio `20260801073058-fa78207`; backend
  `20260801072934-f26bb57`.

### SagaView display preset responsif production

- Ringkasan: menyinkronkan workflow Display Settings Studio yang responsif dan
  sudah aktif di production.
- Alasan: layout lama melebar pada 390x844, menjepit kartu preset, dan menimpa
  form dengan preview sehingga alur operator tidak dapat dipakai dengan aman.
- Produk/area terdampak: SagaView Studio Console, display preset, preview,
  local/offline save, keyboard, forced-colors, responsive layout, release, dan
  rollback.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `PRODUCTION_ACTIVATED`; business readiness mass-scale tetap
  `NEEDS CONFIRMATION`.
- Source Studio `fa782070b3ac1b054d301eb97d2aa8caeca3f66c`, release
  `20260801073058-fa78207`; backend unchanged source `f26bb57737fc25a0a40d350dc26ca727d30885b2`,
  release `20260801072934-f26bb57`.
- Production berubah: ya, hanya Studio display workflow; payment/provider,
  device/session/privacy, frame customer, dan output 4R tidak berubah.
- Gate: 156 unit, 71/71 E2E, import 50/200/500, build/budget, dependency audit
  0, backup, deploy gate 6/6, services, header security, journal, dan smoke.
- Rollback: Studio `20260801132330-5c87083`; backend
  `20260801132330-f26bb57`.

### SagaView kesiapan mulai sesi production

- Ringkasan: menyinkronkan checklist kesiapan dan satu CTA kontekstual pada
  workspace mulai sesi Studio Console.
- Alasan: operator perlu melihat langkah berikutnya tanpa melewati blok utility
  cloud/recovery yang besar atau menebak kontrol yang harus dipakai.
- Produk/area terdampak: SagaView Studio Console, device/package readiness,
  folder/import safety, frame/output recovery, offline state, accessibility,
  release, rollback, dan knowledge runtime.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `PRODUCTION_ACTIVATED`; business readiness mass-scale tetap
  `NEEDS CONFIRMATION`.
- Source Studio `5c8708387869cfb8f1dd21d2758fdfbcdf8240d6`, release
  `20260801132330-5c87083`; backend source tetap `f26bb57737fc25a0a40d350dc26ca727d30885b2`,
  release `20260801132330-f26bb57`.
- Production berubah: ya, workflow mulai sesi Studio; payment/provider,
  output 4R, privacy, dan device contract tidak berubah.
- Gate: 156 unit, 68/68 E2E, 9/9 focused readiness/import, audit 0, backup,
  deploy gate 6/6, service/security health, dan production smoke lulus.
- Rollback: Studio `20260731183624-1092c99`; backend
  `20260731183542-f26bb57`.

### SagaView preset dan Editor/Review responsif production

- Ringkasan: menyinkronkan S81 pemilihan frame dan S82 Editor/Review mobile
  yang sudah aktif di production.
- Alasan: workflow customer harus tetap dapat dijangkau pada 390x844 tanpa
  mengubah workspace desktop, output 4R, device, payment, atau privacy.
- Produk/area terdampak: SagaView Studio Console, customer stepper, frame,
  Editor, Review, offline/local state, retry, touch target, dan branding.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `PRODUCTION_ACTIVATED`; business readiness mass-scale tetap
  `NEEDS CONFIRMATION`.
- Source aktif `1092c99b258f6ca8db817d835d90e738cdcc4964`;
  rollback Studio `20260731150138-1830e71`.
- Production berubah: ya, hanya Studio frontend; backend contract, provider,
  dan transaksi tidak berubah.
- Gate: 156 unit, 64/64 E2E, build/budget, audit dependency 0, preflight,
  backup, services, dan production smoke lulus.

### AOGTICVITY festival UI/UX production

- Ringkasan: menyinkronkan redesign visual yang lebih fun dan motion system
  public/player/leader/admin/live ke public Vercel.
- Alasan: founder meminta public-library animation yang menarik tanpa mengubah
  Plus Jakarta Sans, Feather-style icons, mobile canvas, atau fungsi aplikasi.
- Produk/area terdampak: hierarchy, spacing, cards, hero asset, navigation,
  route/state/modal feedback, success celebration, accessibility, dan release.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.
- Source `3d5d9d71cf5c1ff391a44b57d58bb5a39897664d`; production
  `dpl_BSst9r7RJWBQHSmDzCjbsJe33W6V`.
- Production berubah: ya, public prototype; database, auth, domain custom, dan
  Hostinger backend activation tidak berubah.
- Gate: typecheck, 45 test, build, dependency audit, visual QA, Preview, public
  smoke, dan runtime error/500 scan lulus.
- Blocker: real auth, secure BFF/API activation, notification provider, custom
  domain, dan physical multi-device UAT.
### SagaBook Fonnte tenant routing production

- Ringkasan: mempromosikan S71 routing Fonnte tenant-scoped dari local
  candidate menjadi production aktif.
- Alasan: founder menyetujui release S71 setelah local implementation dan
  production preflight hijau.
- Produk/area terdampak: SagaBook WhatsApp settings, reminder, confirmation,
  credential isolation, delivery audit, dan operator runbook.
- Klasifikasi: `CONFIRMED`; `PRODUCTION DEPLOYED`; `PRODUCTION ACTIVATED`.
- Source: `378bcdf4dac6c54d0bf421b5ef188103d82c6b40`; release
  `20260731181921-378bcdf`.
- Production berubah: ya, hanya Saga Platform/SagaBook; SagaView tidak berubah.
- Residual: authenticated owner canary ke nomor terkontrol sebelum rollout
  customer berskala besar. S72 auto-trial tetap `PRODUCTION HOLD`.

## 2026-07-31

### SagaBook Fonnte routing dan SagaBook/SagaView auto-trial candidate

- Ringkasan: menyinkronkan candidate routing Fonnte per tenant dan candidate
  signup auto-trial 7 hari tanpa approval owner/email verification.
- Alasan: founder menyetujui implementasi lokal S71/S72, dengan production S72
  tetap di-hold sampai approval release baru.
- Produk/area terdampak: SagaBook WhatsApp setting/reminder/confirmation serta
  SagaBook/SagaView identity, trial, provisioning, signup UI, dan support KB.
- Klasifikasi: `CONFIRMED` untuk keputusan dan source candidate;
  `LOCAL_VALIDATED`; S71 `NOT DEPLOYED`; S72 `PRODUCTION HOLD`.
- Source: S71 `a368c05edbed9b10d8d187ae60e354fd84d96b55`; S72
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`.
- Production berubah: tidak.
- Blocker: release approval, additive migration, canary/UAT, worker dan
  provisioning verification, serta rollback rehearsal.

### AOGTICVITY public Vercel prototype

- Ringkasan: mempromosikan exact artifact AOGTICVITY ke public Vercel setelah
  Preview, security, health, route, provenance, dan runtime-error gate lulus.
- Alasan: founder meminta perubahan yang belum live dideploy lebih dulu ke
  domain Vercel publik agar dapat dicoba.
- Produk/area terdampak: public/admin/player/leader/live UI, dependency install,
  release, rollback, portfolio, master knowledge, decision, gaps, dan status.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.
- Source `dabed03`; production `dpl_7HCE7eAh8VfjDZpvprud7UeHFm22`; URL
  `https://olimpiade-kemerdekaan.vercel.app`.
- Production berubah: ya, public prototype Vercel; Hostinger dark staging,
  database, dan target custom domains tidak berubah.
- Blocker: real auth, secure Vercel-to-Hostinger BFF, frontend API activation,
  notification provider, target custom domains, dan physical multi-device UAT.

### AOGTICVITY master recap 2026 dark staging

- Ringkasan: menyinkronkan kontrak 8 tim/10 lomba, roster otomatis untuk lomba
  seluruh tim, jadwal provisional yang editable, dan event-master MySQL
  versioned/audited.
- Alasan: founder menetapkan PDF Master Recap 17 Agustus 2026 sebagai sumber
  keseluruhan perubahan aplikasi dengan durasi sementara yang dapat diganti.
- Produk/area terdampak: AOGTICVITY public/player/leader/admin/live, backend,
  MySQL, permission, audit, responsive/accessibility, release, dan blocker.
- File terdampak: product/dossier/changelog AOGTICVITY, master knowledge,
  portfolio, decision, gaps, dan sync status.
- Klasifikasi: `CONFIRMED`; delivery `STAGING_DEPLOYED`; activation
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.
- Source: commit `52f7b58`; dark staging release `20260731T162024Z`.
- Production berubah: tidak; public DNS/routing tidak diaktifkan.
- Blocker/next action: real auth/IdP, frontend API activation, domain/TLS,
  notification provider, physical multi-device UAT, serta finalisasi Tim 7/8
  dan keputusan provisional.

### SagaDevs source-preserving Hero Scale v4 Production

- Ringkasan: memperbesar model GLB hero tepat 1,5×, menggesernya lebih kiri, menambah kompensasi tablet portrait, dan mengaktifkan release di `sagadevs.com`.
- Alasan: founder menyetujui keseluruhan Motion Polish v3 dan meminta penyesuaian terakhir logo 3D serta production deployment.
- Produk/area terdampak: SagaDevs hero 3D, responsive positioning, release status, activation, portfolio, decision log, dan master knowledge.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation `PRODUCTION_ACTIVATED`.
- Cache safety: entry module 3D memakai filename versioned agar cache immutable lama tidak mempertahankan skala sebelumnya.
- Source: release `source-preserving-hero-scale-v4`, Preview `dpl_9Crs8paTq9jenAsquu4hbA3mZqFP`, production `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU`.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Gate: static, browser lokal empat viewport, accessibility desktop/mobile, visual sembilan viewport, Preview readiness, production health/headers, dan browser regression domain empat viewport lulus.

### SagaDevs source-preserving Motion Polish v3 Preview

- Ringkasan: memperbaiki hierarchy/placement hero, collision judul produk, posisi logo 3D, motion product/stage/reveal, reduced-motion behavior, dan offscreen WebGL lifecycle.
- Alasan: founder meminta visual lebih rapi dan lebih hidup tanpa mengganti style, font, komposisi, atau fitur menarik source.
- Produk/area terdampak: SagaDevs hero, CTA, Services, Product Showroom, Process, motion, accessibility, performance, responsive QA, dan release provenance.
- Klasifikasi: `CONFIRMED`; delivery `STAGING_DEPLOYED` pada protected Vercel Preview; production unchanged.
- Source: release `source-preserving-motion-polish-v3` dan Vercel deployment `dpl_49Xm75khYddQ1j6PVhM2CgXnNVpy`.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Gate: static, browser empat viewport, accessibility desktop/mobile, visual sembilan viewport, health, security headers, dan preview-target verification lulus.

### SagaDevs source-preserving Polish v2 Preview

- Ringkasan: menambahkan footer lengkap, compact WhatsApp CTA, left-aligned Process heading, product-title overlap guard, responsive showroom breakpoint, dan mono-font consistency.
- Alasan: founder meminta koreksi elemen yang tidak pas tanpa mengubah keseluruhan desain atau fitur source.
- Produk/area terdampak: SagaDevs footer, contact CTA, Process, Product Showroom, typography, responsive QA, dan release provenance.
- Klasifikasi: `CONFIRMED`; delivery `STAGING_DEPLOYED` pada protected Vercel Preview; production unchanged.
- Source: release `source-preserving-polish-v2` dan Vercel deployment `dpl_FXmrmvwu7NHVjkukAi11YWh4MCoh`.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Gate: static, browser desktop/mobile, automated overlap/alignment/CTA/footer checks, delapan-viewport visual audit, health, security headers, dan public-safety lulus.

### SagaDevs source-preserving typography correction Preview

- Ringkasan: memulihkan source, style, keluarga font, tujuh section, dan fitur interaktif SagaDevs sebagai baseline kanonik.
- Alasan: arah redesign sebelumnya mengubah halaman terlalu signifikan; koreksi founder membatasi scope ke typography, hierarchy, spacing, density, placement, responsive behavior, dan accessibility navigation.
- Produk/area terdampak: SagaDevs hub, showroom, visual hierarchy, release provenance, decision log, dan master knowledge.
- Klasifikasi: `CONFIRMED`; delivery `STAGING_DEPLOYED` pada protected Vercel Preview; production unchanged.
- Source: release `source-preserving-typography-v1` dan Vercel deployment `dpl_FDwHVYtRzNf3D54XQbQFYafCykck`.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Blocker tersisa: visual UAT founder sebelum production promotion; portfolio, analytics production, dan Super Admin belum termasuk release.

### SagaDevs UI/UX Sprint 1–5 Preview (DEPRECATED)

- Ringkasan: menambahkan SagaDevs sebagai parent product hub dan menyinkronkan release UI/UX Preview.
- Alasan: structure, navigation, showroom, typography, accessibility, motion, security, dan deployment boundary berubah material bagi user.
- Produk/area terdampak: SagaDevs hub, product discovery, lead jasa, portfolio index, master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`; delivery `STAGING_DEPLOYED` pada Vercel Preview; production unchanged.
- Source: release `ui-ux-sprints-1-5-preview-v1` dan Vercel deployment `dpl_G8dw1jVDjzXXnDvnSkAXHcW3FMj3`.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Blocker tersisa: visual UAT founder sebelum production promotion; portfolio, analytics production, dan Super Admin belum termasuk release.
- Status historis: arah visual ditolak dan digantikan oleh `source-preserving-typography-v1`.

### SagaView UI/UX shell refinement production

- Ringkasan: menyinkronkan shell Owner/Studio/public/customer, hierarchy
  operasional, accessibility, target 44 px, motion, dan branding signature.
- Alasan: UI SagaView dipromosikan atomik dengan exact source, backup,
  regression, rollback, dan public smoke yang terbukti.
- Produk/area terdampak: SagaView UI/UX, accessibility, branding, release,
  gap register, decision log, portfolio/master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`; activation
  `PRODUCTION_ACTIVATED`.
- Source: backend/Owner `f26bb57737fc25a0a40d350dc26ca727d30885b2`
  (`20260731132030-f26bb57`) dan Studio
  `12e96591380d1256038bd7fb66b49d0e4090392e`
  (`20260731132030-12e9659`).
- Production berubah: ya, SagaView.
- Blocker tersisa: Founding Studio Pilot dan authenticated Owner visual smoke
  production tanpa mengekspos credential.

### SagaBook privacy governance source implementation

- Ringkasan: menyinkronkan workflow consent berversi, customer privacy request,
  owner triage, incident register, offboarding timeline, dan retention preview.
- Alasan: keputusan P01-P18 perlu ditutup menjadi implementasi yang auditable
  tanpa mengaktifkan penghapusan atau membuat klaim publik prematur.
- Produk/area terdampak: SagaBook privacy, customer booking link, owner admin,
  data governance, gap register, portfolio/master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`; public status
  `NOT ACTIVE - NOT PUBLISHED`.
- Source: SagaBook commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Production berubah: tidak.
- Blocker tersisa: identitas/kontak resmi, legal review, destructive-retention
  acceptance, release, dan public smoke.

### SagaBook public policy owner approval

- Ringkasan: menyinkronkan keputusan founder P01-P18 untuk privacy, retention,
  deletion, consent, incident, subprocessor, dan offboarding SagaBook.
- Alasan: implementation dan legal review memerlukan kontrak owner-approved
  yang dapat ditelusuri tanpa menyatakan policy sudah aktif.
- Produk/area terdampak: SagaBook, privacy, sales claim, legal, decision log,
  gap register, portfolio/master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED` untuk keputusan; delivery `PLANNED`; public status
  `NOT ACTIVE - NOT PUBLISHED`.
- Source: SagaBook docs commit
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`.
- Production berubah: tidak.
- Blocker tersisa: identitas/kontak, subprocessor, legal sign-off,
  implementation/acceptance, release, dan public smoke.

### Founder commercial contract dan pilot acceptance

- Ringkasan: mengunci paket/limit/trial SagaBook dan SagaView, policy booking
  default SagaBook, support/retention/offboarding, serta Founding Studio Pilot
  dengan exit criteria 100% business-ready.
- Alasan: keputusan founder sudah diterima dan harus menjadi kontrak kanonik
  untuk source, sales, onboarding, legal, pilot, dan AI agent.
- Produk/area terdampak: SagaBook, SagaView, business strategy, sales, payment,
  privacy, decision log, gap register, dan master knowledge.
- Klasifikasi: `CONFIRMED` untuk keputusan; business readiness tetap
  `NEEDS CONFIRMATION` sampai evidence cohort lulus.
- Source SagaView: backend `528e68d4aea27d847250075acd02d7753b07e3b6`
  (`20260731101529-528e68d`) dan Studio
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`
  (`20260731101529-f6fa6f3`) aktif di production.
- Source SagaBook: `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`
  (`20260731172605-39fb2d3`) aktif di production.
- Production berubah: ya untuk SagaBook dan SagaView.
- Blocker tersisa: Founding Studio Pilot dan evidence nyata yang diwajibkan.

### SagaView integrated production activation sync

- Ringkasan: menyinkronkan backend, Studio, trial/subscription, Owner Console,
  public self-service, security header, dan release SagaView yang aktif.
- Alasan: candidate dipromosikan atomik dan memiliki exact source, backup/
  restore, migration, regression, rollback, monitoring, serta public smoke.
- Produk/area terdampak: SagaView delivery, activation, commercial contract,
  security, operations, pitch, portfolio/master knowledge, gap, dan sync.
- Klasifikasi: `CONFIRMED`.
- Sumber: backend `70155bb7db901beebb9fdeb65d5869a18ee8f874`
  (`20260731082637-70155bb`) dan Studio
  `28adcee9706ec8fde509d410d60cbea173c74a5b`
  (`20260731082637-28adcee`).
- Production produk berubah: ya, SagaView.
- Blocker tersisa: business readiness mass-scale tetap memerlukan controlled
  cohort, observasi support, dan finalisasi policy komersial/legal owner.

### SagaBook Platform Support Operations production sync

- Ringkasan: menyinkronkan antrean support operator, SLA, ownership, concurrency
  protection, dan receipt audit tersanitasi yang aktif di production.
- Alasan: workflow operator multiuser kini material bagi support harian dan
  memiliki provenance release, migration, security, rollback, serta public
  smoke.
- Produk/area terdampak: SagaBook support operations, Saga Platform operator
  workflow, security, audit, dan status release.
- File terdampak: product contract, dossier, product/portfolio changelog,
  master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: source
  `285ab943b93466deda0f6c07466c0fbe8da16e4c`, release
  `20260731075424-285ab94`, dan runtime gate public-safe.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: ya, Saga Platform dan SagaBook; SagaView tidak
  berubah.
- Blocker tersisa: business readiness tetap memerlukan observasi cohort dan
  policy privacy/retention/deletion/offboarding yang diterima owner.

### SagaBook Support & Recovery Center production sync

- Ringkasan: menyinkronkan pusat bantuan dan pemulihan owner/admin yang aktif
  di production.
- Alasan: workflow support kini material bagi penggunaan harian dan memiliki
  provenance release, migration, security, rollback, serta public smoke.
- Produk/area terdampak: SagaBook support, recovery, user journey, technical
  boundary, dan status release.
- File terdampak: product contract, dossier, product/portfolio changelog,
  master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: source
  `7cc63d2bfde011321f7c06ff45e393d189b1d4a4`, release
  `20260731053435-7cc63d2`, dan runtime gate public-safe.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: ya, Saga Platform dan SagaBook; SagaView tidak
  berubah.
- Blocker tersisa: business readiness tetap memerlukan observasi cohort studio
  nyata.

### SagaView paid provider canary sync

- Ringkasan: mengubah status canary public-safe dari pending menjadi paid dan
  mencatat processed callback exactly-once.
- Alasan: transaksi provider nyata, aktivasi subscription, dan auto-archive
  katalog canary sudah terverifikasi.
- Produk/area terdampak: SagaView commercial activation dan release gate.
- File terdampak: current product contract, dossier, product/portfolio
  changelog, master knowledge, gap register, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: runtime production Saga Platform
  `20260727085127-5bf7977` dan evidence restricted; tidak ada identifier
  transaksi atau payload callback di repository publik.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: subscription canary aktif melalui callback;
  tidak ada deploy, migration, atau setting change.
- Blocker tersisa: exact backend/public candidate belum dipromosikan dan belum
  lulus public smoke sebagai satu release.

### SagaView provider canary status sync

- Status historis: `DEPRECATED` oleh sinkronisasi paid provider canary di atas.
- Ringkasan: menyinkronkan fakta public-safe bahwa satu canary pembayaran
  terotorisasi sudah dibuat, tetapi masih pending/unpaid.
- Alasan: status blocker provider berubah setelah audit repository selesai.
- Produk/area terdampak: SagaView commercial activation dan release gate.
- File terdampak: current product contract, dossier, product/portfolio
  changelog, master knowledge, gap register, dan sync status.
- Klasifikasi: `CONFIRMED` untuk status intent; provider activation tetap
  `NEEDS CONFIRMATION`.
- Sumber: production preflight dan create-result terverifikasi, tanpa
  identifier transaksi publik.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: tidak ada deploy, migration, atau setting change.

### Single source of truth contract

- Ringkasan: menetapkan repository sebagai single source of truth permanen dan
  menambahkan decision log, sync status, klasifikasi lima status, impact
  analysis, serta closed-loop commit/push.
- Alasan: mencegah informasi Saga tersebar, duplikat, bertentangan, atau
  digunakan AI tanpa provenance yang jelas.
- Produk/area terdampak: seluruh portofolio, governance, AI retrieval, product
  dossier, changelog, dan update workflow.
- File terdampak: `DECISIONS.md`, `SYNC_STATUS.md`, `README.md`, `INDEX.md`,
  `GAPS.md`, `AGENTS.md`, governance/protocol/status/AI docs, templates,
  validator, dan dokumen yang masih memakai klasifikasi lama.
- Klasifikasi: `CONFIRMED`.
- Sumber/pemberi keputusan: Andreas / founder, 31 Juli 2026.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: tidak; perubahan ini hanya pada repository
  knowledge.

### Added

- Root `INDEX.md`, `GAPS.md`, dan `CHANGELOG.md`.
- Root `DECISIONS.md` dan `SYNC_STATUS.md`.
- Dossier konsisten untuk sepuluh produk.
- Dokumen lintas produk untuk brand, marketing, business, design, technical,
  privacy, AI, deployment, dan coding.
- Tata kelola klasifikasi fakta dan penggunaan AI.
- Template product dossier.

### Changed

- Menetapkan `INDEX.md` sebagai daftar isi kanonik.
- Menormalisasi status menjadi delivery, activation, dan business readiness.
- Menormalisasi klasifikasi menjadi `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`,
  `NEEDS CONFIRMATION`, dan `DEPRECATED`.
- Memperluas validasi repository agar memeriksa struktur wajib, heading, link,
  placeholder, dan pola secret.
- Menyinkronkan SagaView Studio v0.20.2 yang terverifikasi selama audit.

### Preserved

- Informasi produk, keputusan pricing/trial, release provenance, batas klaim,
  dan changelog historis tetap dipertahankan.
- `KNOWLEDGE_INDEX.md` tetap ada sebagai compatibility pointer.
