# AOGTICVITY Changelog

## Tujuan

Mencatat perubahan material AOGTICVITY/17an/Olimpiade.

## Konteks

Nama lama dipertahankan sebagai provenance; status runtime harus eksplisit.

## 2026-08-03 - Event-day control plane production

- `CONFIRMED`: rundown, assignment operator per lomba, recovery status
  beralasan, result `Draft → Published/Corrected`, standing publik, dan live
  display kini persisten serta sinkron lintas perangkat melalui MySQL.
- Operator hanya dapat menjalankan status/draft hasil untuk lomba assigned.
  Admin memverifikasi publikasi, dan publish menyelesaikan lomba atomik.
  Optimistic version, idempotency, audit, serta stale-write failure state aktif.
- Source `baffaa52c0567d3fb3ed665ae673cf6e7c32e40c`; Hostinger release
  `20260802T174812Z`; Vercel production
  `dpl_9gXvi7t6xv6fisNC4LuuAiqZGvsX`; migration 014. Gate: 89 unit/regression,
  tujuh integration test disposable MySQL, exact-source preflight, build,
  dependency audit, backup, readiness, public/API smoke, dan rollback lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Authenticated
  human multi-device UAT, announcement persistence, WhatsApp full flow, custom
  domain, dan rehearsal fisik masih terbuka.

## 2026-08-02 - Team generator, assignment, publish, dan lock production

- `CONFIRMED`: admin dapat membuat draft seimbang untuk delapan tim, mencari
  serta memindahkan peserta tanpa CSV, mempublikasikan pembagian, mengunci
  perubahan, dan membuka kembali dengan alasan audit.
- MySQL migration 013 menyimpan global state/version, idempotency, dan audit.
  Publication fail-closed bila peserta approved belum mendapat tim atau
  selisih anggota antartim lebih dari satu. Perpindahan peserta melepas roster
  lomba stale dan menaikkan version scope terdampak.
- Leader/Player tidak menerima assignment saat Draft; Published/Locked membuka
  data team-scoped. Operator dan role non-admin ditolak pada mutation boundary.
- Source `5820d8199e75bd9c00f3bdbb8de51e831a0b5717`; Hostinger release
  `20260802T164829Z`; Vercel production
  `dpl_65E94pdpkp6kcF7xMrwkMsmxM7ju`; migration 013. Gate: 85 unit/regression,
  tiga integration test disposable MySQL, build lokal/Hostinger/Vercel,
  dependency audit 0, backup, service readiness, exact-source, RBAC/public
  smoke, dan rollback lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Authenticated
  four-role UAT tertunda karena vault terkunci; rundown, announcement,
  live-controller, WhatsApp full flow, custom domain, dan rehearsal fisik masih
  menjadi blocker.

## 2026-08-02 - Role-bound dashboard dan operasi lomba production

- `CONFIRMED`: Andreas menetapkan role akun berasal dari admin dashboard;
  pengguna tidak lagi memilih role. Login melanjutkan ke home kanonik admin,
  operator, leader, atau player berdasarkan session/database.
- Admin dapat menetapkan ulang role dan tim leader dengan alasan serta session
  revocation. Operator mempunyai workspace terbatas; leader dan player hanya
  menerima data tim/pendaftaran yang terhubung.
- Roster perwakilan dan status lomba kini persisten di MySQL dengan quota/team
  validation, optimistic version, idempotency, permission, audit, dan failure
  state lintas perangkat. Lomba seluruh tim tetap otomatis tanpa input nama.
- Source `864ef633c040ede662e569fe768513a46a57befd`; Hostinger release
  `20260802T134116Z`; Vercel production
  `dpl_3tesPCd9CH8CURfusqeZM2BkMHdX`; migration 011–012. Backup, disposable
  12-migration test, 79 unit/regression test, typecheck, build, dependency audit,
  exact-source, validator seluruh delapan tim, service readiness, public
  route/RBAC smoke, dan rollback lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Authenticated
  four-role UAT tidak dijalankan karena vault terkunci; team generator, rundown,
  announcement, live-controller, WhatsApp full flow, dan physical rehearsal
  masih menjadi next action.

## 2026-08-02 - Fonnte runtime dan WhatsApp channel UAT production

- `CONFIRMED`: source release
  `6b4b6feca16dc2d49b909f9301227e5078dfaf60` aktif pada Hostinger release
  `20260802T125353Z` dan Vercel production
  `dpl_3zhzGA9oTp7U2QkKVyekJPZTxkz2`.
- MySQL migration `009_whatsapp_magic_link` dan `010_fonnte_operations` aktif
  setelah backup terverifikasi; exact-source provenance, health, routing,
  provider preflight, public routes, dan invalid-webhook-secret 401 lulus.
- Satu pengiriman kanal Fonnte ke penerima UAT berhasil diterima. Ini membuktikan
  channel delivery, bukan full login WhatsApp.
- Runtime dispatch aktif. Provider status webhook, approval ulang record legacy,
  single-use link/session/reuse/revoke UAT, dan credential admin vault tetap
  menjadi blocker. Delivery `PRODUCTION_DEPLOYED`; business readiness tetap
  `BLOCKED`.

## 2026-08-02 - Kandidat Fonnte operations dan recovery

- `CONFIRMED`: source HEAD
  `8bfabf51b1e88d78a375eac067dad2aba7f0c8f4` melengkapi akses WhatsApp dengan
  authenticated/idempotent status webhook, truthful mapping antrean/sent/gagal,
  retry admin/operator ber-cooldown dan batas percobaan, stale-worker recovery,
  redacted operations console, provider preflight, serta migration 010.
- Local gate: typecheck, 72 test, production build, dan dependency audit 0.
  Hostinger disposable MySQL 8.4 membuktikan migration 001–010 dan functional
  claim → reconcile → replay → retry → stale recovery; seluruh database, user,
  folder, dan archive sementara dibersihkan.
- Delivery tetap `IMPLEMENTED_NOT_DEPLOYED`; production/service/database aktif
  tidak berubah. Bitwarden item/nomor UAT, provider token/secret, connected
  device/quota, staging migration, webhook configuration, dan two-device UAT
  masih menjadi activation gate.

## 2026-08-02 - Kandidat akses peserta via WhatsApp

- `CONFIRMED`: founder memilih flow daftar → pesan sedang diproses → approval
  admin → link masuk melalui WhatsApp, tanpa password atau OTP peserta.
- Source `127ef92b3efe38d707fba7c0dd861a1665953de3` mengimplementasikan migration
  009, transactional outbox, adapter Fonnte fail-closed, provisioning role
  `player`, magic link single-use 30 menit, hash-only ledger, token URL fragment,
  POST same-origin, cookie session HttpOnly, revocation, audit, dan status WA
  pada approval desk.
- Gate lokal: typecheck, 69 test, production build, dependency audit 0, dan
  diff check lulus. Sembilan integration test MySQL skipped karena target
  credential tidak tersedia pada process lokal.
- Delivery perubahan ini `IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah.
  Token vault tidak dibaca karena Bitwarden CLI terkunci; migration staging,
  pengiriman Fonnte nyata, webhook delivery reconciliation, retry operator,
  dan UAT dua perangkat tetap blocker sebelum activation.

## 2026-08-02 - Public registration MySQL production

- `CONFIRMED`: founder meminta participant demo dihapus dan aplikasi
  difinalisasi agar segera dapat dipakai mendaftar.
- Public form kini menjalankan server validation, consent version, anti-bot,
  anonymous rate limit, idempotency, receipt code, transaksi MySQL, dan audit;
  authenticated admin/operator dapat list serta memverifikasi pendaftar.
- Participant fixture 80 orang, localStorage registration, prototype tools,
  fake notification counters, dan person-like defaults tidak lagi menjadi data
  operasional. Canonical event master tetap dipertahankan.
- Source `ccb7115c07b28e99b2e13a4d3153eece6fbf3aec`; Hostinger release
  `20260801T170743Z`; Vercel production
  `dpl_FQeCxhBWxWxWp44n9au7UPwDerMV`; migration
  `008_public_registration`.
- Gate: 61 test/build, audit dependency 0, backup, Preview, public submit 201,
  admin password claim/list/approve, idempotent replay, reconciliation, empty
  cleanup, health, RBAC, loopback MySQL, dan rollback lulus.
- Delivery `PRODUCTION_DEPLOYED`; auth dan registration
  `PRODUCTION_ACTIVATED`. Activation produk keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai rehearsal
  roster/check-in/result multi-device, provider, custom domain, dan hari-H lulus.

## 2026-08-01 - Password auth aktif melalui public Vercel

- `CONFIRMED`: founder memilih admin MFA opsional dan meminta aplikasi tetap
  dideploy pada Vercel. Passphrase kuat, forced password change, HttpOnly
  database session, expiry, rate limit, RBAC, suspend/revoke, dan audit tetap aktif.
- Public Vercel sekarang memakai guarded HTTPS proxy ke Better Auth dan MySQL
  operations backend di Hostinger. Direct BFF tanpa secret 404; MySQL tetap
  loopback-only dan tidak dibuka ke internet.
- Source auth `dd59f8948c58f7d3a8f996d136e86bac9fb807f6`; proxy source
  `56b0b43`; Vercel production `dpl_FfaWprKbFMuPD9euNe7yWrHRdgwC`;
  Hostinger release `20260801T152049Z`.
- Gate: local 55 test/build, dependency audit 0, Preview real-login, public
  real-login, authenticated password-change redirect, health/readiness,
  direct-endpoint denial, asset, service, Nginx, loopback MySQL, dan journal
  error scan lulus.
- Delivery tetap `PRODUCTION_DEPLOYED`. Activation keseluruhan tetap
  `NOT_PRODUCTION_ACTIVATED` dan business readiness `BLOCKED` sampai owner
  password claim, core operations UAT, dan physical multi-device rehearsal lulus.

## 2026-08-01 - Auth dan core operator operations dark staging

- `CONFIRMED`: identity MySQL, database session, forced bootstrap password
  change, TOTP admin, database rate limit, dan server-side role authorization
  telah aktif pada Hostinger dark staging loopback.
- Admin dapat membuat account operator/leader/player, suspend/reactivate,
  melihat session/device, dan merevoke session; last-admin protection dan audit
  event diterapkan dekat data.
- Result publish/correct kini memiliki persistence MySQL, optimistic version,
  idempotency, permission, dan audit. Existing roster import dan check-in juga
  lulus full regression terhadap MySQL staging.
- Source `68aed04a66b7bb9364fafef307e3d0d8635f2b38`; immutable dark-staging
  release `20260801T113315Z`; rollback langsung `20260801T112010Z`.
- Gate: local typecheck/53 test/build, Linux build, dependency audit 0, full
  MySQL suite 62/62, readiness/login/authorization/dev-route smoke, backup, dan
  atomic switch lulus.
- Backend delivery `STAGING_DEPLOYED`; public product delivery tetap
  `PRODUCTION_DEPLOYED` karena Vercel prototype. Activation tetap
  `NOT_PRODUCTION_ACTIVATED`; business readiness tetap `BLOCKED`.
- Production publik tidak berubah. Blocker: human password-change/TOTP dan
  two-device UAT, public TLS/trusted origins, secure Vercel-to-Hostinger path,
  recovery email provider, serta rehearsal fisik.

## 2026-08-01 — Festival UI/UX dan motion production

- `CONFIRMED`: founder meminta UI/UX lebih fun dengan animasi menarik dan
  public library yang layak; implementasi mempertahankan mobile canvas 430 px,
  Plus Jakarta Sans, Feather-style icons, serta seluruh fungsi yang sudah ada.
- Motion for React menangani route/state/gesture/layout feedback; celebration
  memakai canvas-confetti hanya untuk registrasi, publish tim, dan publish
  hasil, dengan reduced-motion opt-out.
- Hero memakai asset festival WebP; hierarchy, spacing, card depth, semantic
  metric accent, CTA, modal, dan floating bottom navigation dirapikan pada
  public/player/leader/admin/live surfaces.
- Source `3d5d9d71cf5c1ff391a44b57d58bb5a39897664d`; production
  `dpl_BSst9r7RJWBQHSmDzCjbsJe33W6V` pada
  `https://olimpiade-kemerdekaan.vercel.app`.
- Typecheck, 45 test, production build, dependency audit, visual QA, Preview,
  public route/health smoke, dan runtime error/500 scan lulus.
- Delivery tetap `PRODUCTION_DEPLOYED`; activation tetap
  `NOT_PRODUCTION_ACTIVATED`; business readiness tetap `BLOCKED` karena release
  UI/UX tidak mengaktifkan real auth atau MySQL multi-device.

## 2026-07-31 — Public Vercel prototype

- Founder meminta seluruh perubahan yang belum live dideploy lebih dulu ke
  domain public Vercel.
- Source `dabed03`; Preview `dpl_J7PDDvBKn4DNExnTP8ShxMRpTMnL`; production
  `dpl_7HCE7eAh8VfjDZpvprud7UeHFm22`.
- Public URL: `https://olimpiade-kemerdekaan.vercel.app`.
- Public/admin/player/leader/live/agenda/standing dan health smoke 200;
  dependency audit, security headers, provenance, dan runtime error scan lulus.
- Delivery `PRODUCTION_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`;
  business readiness `BLOCKED`.
- Public surface tetap berlabel prototype. MySQL API fail-closed 503, dev
  session 404, dan role switcher/localStorage bukan auth atau persistence
  production.
- Target custom domain, real auth, Hostinger BFF, physical two-device UAT, dan
  provider notification tetap menjadi blocker.

## 2026-07-31 — Master recap 2026 dan dark staging

- `CONFIRMED`: master recap 17 Agustus 2026 dimasukkan menjadi 8 tim, 10 lomba,
  timeline, rules, safety, equipment, dan assignment panitia.
- Durasi tetap `PROVISIONAL` dan dapat disunting admin; lomba seluruh tim tidak
  meminta input nama peserta.
- Event-master memakai dry-run, validation, idempotent atomic publish,
  versioning, permission, failure states, dan audit di MySQL dark staging.
- Public/player/leader/admin/live UI, responsive 430 px, Plus Jakarta Sans,
  accessibility, migration, rollback, dan regression smoke lulus.
- Source `52f7b58`; release `20260731T162024Z`.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business
  readiness `BLOCKED`.
- Production publik tidak berubah. Blocker: IdP/auth nyata, frontend API
  activation, domain/TLS, notification provider, physical multi-device UAT,
  serta finalisasi dua nama tim dan keputusan provisional.

## 2026-07-31 — Central knowledge baseline

- Nama produk terbaru AOGTICVITY dikunci.
- Scope event, surface target, backend slice, dan production blockers
  disinkronkan.
