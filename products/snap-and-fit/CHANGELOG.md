# Snap and Fit Changelog

## Tujuan

Mencatat perubahan material Snap and Fit dengan pemisahan local, staging,
production, activation, dan business readiness.

## Konteks

Mock, fixture, preview frontend, dan test lokal bukan bukti provider atau
production activation.

## 2026-08-25 - Deletion worker dan recovery control

- `LOCAL_VALIDATED` dari exact source private `dbbb814` di `main`.
- Worker kini menjalankan target-hashed deletion fan-out secara idempoten,
  mempertahankan task sukses saat retry, merebut kembali claim stale, mengirim
  exhausted work ke DLQ, dan mengalarmkan deadline secara deduplicated.
- Controlled outbox replay hanya menghapus BullMQ job terminal, menolak job
  aktif/menunggu, mereset exact persisted event, dan mencatat audit tanpa
  memublikasikan payload.
- Restore verifier memeriksa core application tables serta orphan deletion task.
  Full local gate dan dependency audit lulus; 14 worker test lulus dengan dua
  integration test service-dependent sengaja skip.
- Status tetap delivery `LOCAL_VALIDATED`, activation
  `NOT_PRODUCTION_ACTIVATED`, dan business readiness `BLOCKED`. Isolated staging,
  real-provider deletion, recovery/load/security/device UAT belum dieksekusi.

## 2026-08-25 - Baseline produk dan privileged operations workbench

- `CONFIRMED` dari exact source private `a83b43a`; fitur operator persisten
  berasal dari `b09f279` dan protected Vercel preview
  `dpl_Dtr9Uigz6263nj7V69s62RMD3Pfz` berstatus `READY`.
- Baseline MVP mencakup event, uploader 500 JPEG, BIB/selfie mock, server quote,
  Tokopay mock/contract, social/HiRes entitlement, ledger 75/15/10, fulfillment,
  signed download, dan role interfaces.
- Platform-admin workbench kini menghubungkan wrong-match immediate-hide,
  refund operator-assisted, provider-cleared payout maker-checker, support grant
  60 menit, deletion fan-out, idempotency, audit, dan outbox.
- Full validation, 37 API test, audit dependency nol, dan 38 browser test lulus;
  enam integration test service-dependent serta dua viewport test sengaja skip.
- Delivery `LOCAL_VALIDATED`; activation `NOT_PRODUCTION_ACTIVATED`; business
  readiness `BLOCKED`. Production tidak berubah dan tidak ada real-money,
  participant data, atau biometric production yang dipakai.
- Next action: isolated VPS staging, migration, MySQL/Redis/S3 worker evidence,
  security/load/recovery/device UAT, serta external provider/legal gates.
