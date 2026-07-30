# SagaView Changelog

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
