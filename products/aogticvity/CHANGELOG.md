# AOGTICVITY Changelog

## Tujuan

Mencatat perubahan material AOGTICVITY/17an/Olimpiade.

## Konteks

Nama lama dipertahankan sebagai provenance; status runtime harus eksplisit.

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
