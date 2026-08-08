# COYABAG Changelog

## Tujuan

Mencatat perubahan material COYABAG dengan provenance public-safe.

## Konteks

Surface deployment tidak otomatis berarti commerce activation.

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
