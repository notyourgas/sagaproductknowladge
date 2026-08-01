# AOGTICVITY Changelog

## Tujuan

Mencatat perubahan material AOGTICVITY/17an/Olimpiade.

## Konteks

Nama lama dipertahankan sebagai provenance; status runtime harus eksplisit.

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
