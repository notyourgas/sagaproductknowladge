# SagaView Changelog

## Tujuan

Mencatat perubahan material SagaView tanpa mencampur candidate dan production.

## 2026-07-31 — Candidate signup auto-trial 7 hari

- Status: `LOCAL_VALIDATED`; `PRODUCTION HOLD`; production tidak berubah.
- Signup candidate menghilangkan approval owner dan verifikasi email untuk
  trial, tetapi tetap menjalankan validasi, idempotency, audit, dan provisioning
  product-scoped.
- Login tetap ditolak sampai SagaView provisioning berstatus `ready` atau
  `succeeded`; aktivasi device tetap terjadi dari aplikasi studio.
- Source Saga Platform:
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`.
- Validation: 954 test/10.997 assertions dan production frontend build lulus.

## 2026-07-31 — UI/UX shell refinement production

- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: Owner/Studio/public/customer memakai beberapa pola shell dengan
  hierarchy lokasi, status, dan aksi yang kurang konsisten.
- After: surface operasional solid, satu aksi utama, target minimal 44 px,
  motion 180 ms, forced-colors/reduced-motion, serta tepat satu accessible
  `Powered by SagaView` per surface. Signature tidak masuk output bisnis.
- Backend/Owner source `f26bb57737fc25a0a40d350dc26ca727d30885b2`,
  release `20260731132030-f26bb57`; Studio source
  `12e96591380d1256038bd7fb66b49d0e4090392e`, release
  `20260731132030-12e9659`.
- Validation: backend 908/908 dan 10.629 assertions; Studio 156 unit dan 56/56
  E2E; Owner visual 2/2; dependency audit 0; responsive production audit,
  backup, deploy gate 6/6, 13-route smoke, services, queue, dan error journal
  lulus.
- Rollback: backend `20260731101529-528e68d`; Studio
  `20260731101529-f6fa6f3`.
- Residual risk: authenticated Owner visual smoke production tidak dilakukan
  tanpa credential; exact-source authenticated regression lokal lulus.

## 2026-07-31 — Founder commercial contract production

- Before: Growth sudah memiliki sebagian limit, tetapi Pro frame dan storage
  masih ambigu, quota aset frame masih global 2 GB, dan public/API belum
  menjelaskan seluruh policy founder secara konsisten.
- After: Growth Rp200.000/bulan memakai 1 device, 10 frame, 3 preset, offline
  24 jam, dan 2 GB; Pro Rp500.000/bulan memakai 4 device, 50 frame, 10 preset,
  offline 168 jam, dan 10 GB. Trial guardrail, fair-use, local-photo boundary,
  support, retention, dan offboarding konsisten pada backend/Studio.
- Backend source `528e68d4aea27d847250075acd02d7753b07e3b6`, release
  `20260731101529-528e68d`; Studio source
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`, release
  `20260731101529-f6fa6f3`.
- Validation: backend 908/908, Studio 156 unit dan 54 E2E, audit dependency 0,
  restore 142 tabel, tiga migration additive, deploy gate 6/6, dan public smoke
  utama HTTP 200.
- Payment canary existing tetap exactly-once; release tidak membuat intent,
  QRIS, atau transaksi baru.
- Rollback: backend `20260731082637-70155bb` dan Studio
  `20260731082637-28adcee`.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`.
- Business readiness: `NEEDS CONFIRMATION` sampai Founding Studio Pilot dan
  bukti notification/UAT yang diwajibkan lulus.

## Konteks

Gunakan bersama [PRODUCT](PRODUCT.md), [DOSSIER](DOSSIER.md), dan exact release
scope.

## 2026-07-31 — Integrated production activation

- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: backend trial/subscription/Owner Console dan public self-service
  masih candidate; `/pricing`, `/help`, serta `/legal` belum diroute konsisten.
- After: backend cumulative, additive migration, Owner Console, trial 14 hari
  dua fase, subscription Growth/Pro, Studio, serta Home/Pricing/Help/Contact/
  Privacy/Terms/Legal dipromosikan atomik.
- Backend source `70155bb7db901beebb9fdeb65d5869a18ee8f874`, release
  `20260731082637-70155bb`.
- Studio source `28adcee9706ec8fde509d410d60cbea173c74a5b`, release
  `20260731082637-28adcee`.
- Security header HSTS/X-Frame-Options dikonsolidasikan; CSP tetap strict.
- Validasi: backend 906/906, Studio 156 unit + 54 E2E, public production browser
  8/8, encrypted backup/restore, migration/deploy gate, rollback compatibility,
  monitoring, dan post-deploy smoke lulus.
- Satu canary existing tetap exactly-once; release tidak membuat payment
  intent, QRIS, atau transaksi kedua.
- Rollback: backend `20260731080405-b45434b`, Studio
  `20260731080405-28adcee`.

## 2026-07-31 — Provider canary paid dan callback exactly-once

- Klasifikasi: `CONFIRMED`.
- Satu canary pembayaran Tokopay production bernilai rendah berhasil dibayar.
- Jumlah intent tetap satu; satu callback provider diterima dan diproses
  exactly-once.
- Subscription menjadi aktif dan katalog canary otomatis diarsipkan.
- Provenance runtime: Saga Platform release `20260727085127-5bf7977`.
- Tidak ada deploy, migration, atau perubahan setting production dalam
  verifikasi ini.
- Backend cumulative candidate dan public self-service tetap
  `IMPLEMENTED_NOT_DEPLOYED`.
- Identifier transaksi, receipt, payload callback, tenant, dan data restricted
  tidak disimpan di repository publik.

## 2026-07-31 — Provider canary intent dibuat

- Status historis: `DEPRECATED` oleh entri paid/callback exactly-once di atas.
- Status backend komersial: `IMPLEMENTED_NOT_DEPLOYED`.
- Satu canary pembayaran production dibuat secara terotorisasi dan tetap
  pending/unpaid.
- Tidak ada retry atau intent kedua.
- Paid callback, processed receipt exactly-once, dan activation provider belum
  terverifikasi.
- Source, release, database migration, dan production setting tidak berubah.
- Detail transaksi dan identifier restricted tidak disimpan di repository ini.

## 2026-07-31 — Session Completion & Privacy Handoff production

- Status: `PRODUCTION_DEPLOYED`.
- Before: customer dapat menekan selesai/reset langsung, nama file dapat
  terlihat, dan recovery state belum dibersihkan saat handoff.
- After: customer memanggil operator; operator memverifikasi output/handoff;
  privacy mode memasking nama output; cleanup recovery fail-closed dengan
  retry tanpa menghapus source/output file.
- Source `2f65a9ac0322c33a429dcc888bdacd59836aab0b`, release
  `20260731113223-2f65a9a`.
- Validation: 156 unit, 54 E2E, 50/200/500 import, accessibility/responsive,
  dependency audit, bundle budget, dan public smoke lulus.
- Backend/payment/provider tidak berubah; candidate backend/public
  self-service tetap `IMPLEMENTED_NOT_DEPLOYED`.

## 2026-07-31 — Public self-service candidate

- Status: `IMPLEMENTED_NOT_DEPLOYED` dan `BLOCKED`.
- Before: Pricing, Help/Contact, dan Legal/Privacy publik belum tersedia pada
  route kanonik; kontrak trial publik masih dapat membaca nilai 7 hari.
- After: source frontend memiliki Home, Pricing, Help, Contact, Privacy, dan
  Terms responsif dengan hanya Growth Rp200.000 dan Pro Rp500.000 per bulan,
  trial dua fase 14 hari tanpa auto-charge, CTA plan-aware, SLA support,
  privacy/retention, serta loading/offline/recovery state.
- Dampak: calon customer dan operator memiliki satu kontrak publik yang jelas
  dan aksesibel, tanpa mengekspos bundle, multi-term, atau provider canary.
- Source: `6ff15f653c64a3bb2ffed5ee3785341165dbb0c9`.
- Validasi: 153 unit test, 47 E2E, build/budget, dependency audit, automated
  WCAG 2.1 AA, forced-colors, dan visual 390 sampai 2560 piksel lulus.
- Production tidak berubah.
- Blocker: signup production masih menjalankan kontrak trial lama. Halaman
  publik baru tidak boleh dipromosikan sebelum backend 14 hari diaktifkan dan
  public smoke membuktikan kontrak end-to-end yang sama.

## 2026-07-31 — Backend release guard ready

- Status: `IMPLEMENTED_NOT_DEPLOYED` dan `BLOCKED`.
- Before: runbook hanya mengenali satu migration dan dapat memakai kembali
  asset Owner Console lama.
- After: kedua additive migration dikunci dengan checksum dan release wajib
  membawa build SagaView Admin, Home, serta Subscription Portal terbaru.
- Dampak: kandidat backend dapat dipromosikan dengan backup, rollback, schema,
  dan frontend asset guard yang sesuai source.
- Runtime candidate: `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Tooling provenance: `b778a068a09e28a6900918172fc64637655be2fa`.
- Validasi: 905/905 backend test, build/audit, encrypted backup/restore,
  migration rehearsal, candidate gate, dan rollback gate lulus.
- Production tidak berubah. Backend aktif tetap
  `20260729002327-86d6920`.
- Blocker: actual Tokopay paid canary dan processed callback belum tersedia.

## 2026-07-31 — Fixed 4R output production

- Status: `PRODUCTION_DEPLOYED`.
- Portrait 1200x1800, landscape 1800x1200, 300 DPI.
- Canvas/editor/review memakai rasio 4R yang sama.
- Release: `20260731023744-1c5678c`.
- Source: `1c5678c6fa8b180ebf4716d7060c2cb058c02317`.

## 2026-07-31 — Backend cumulative candidate

- Status: `IMPLEMENTED_NOT_DEPLOYED`.
- Owner Console context, trial, subscription, callback exactly-once, dan device
  boundary sudah diimplementasikan.
- Runtime candidate: `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Blocker: actual Tokopay canary dan processed callback.
