# Snap and Fit Changelog

## Tujuan

Mencatat perubahan material Snap and Fit dengan pemisahan local, staging,
production, activation, dan business readiness.

## Konteks

Mock, fixture, preview frontend, dan test lokal bukan bukti provider atau
production activation.

## 2026-08-25 - Organizer safe event metrics

- Exact private feature source `46d7a4b` dan documentation head `3337651`
  berstatus `LOCAL_VALIDATED`.
- Organizer memperoleh exact-organization aggregate inventory, order,
  fulfillment, payment reconciliation, gross/cleared, posted earning, dan
  active-refund metrics tanpa customer PII atau raw payment reference.
- Cross-role metrics ditolak. Full validation, 47 API test, 20 worker test,
  40 browser test, build, dan dependency audit lulus; exact MySQL aggregate
  comparison tetap external-service skip.
- Protected preview `dpl_EwPGuj6qxNJzcf59ahcabW3SGvGx` `READY`; organizer
  route 200, backend 503 fail-closed, sehingga populated metrics tidak diklaim
  pada preview. Production tidak berubah.

## 2026-08-25 - Exact-photographer earning view

- Exact private feature source `0385317` dan documentation head `8313991`
  berstatus `LOCAL_VALIDATED`.
- Fotografer memperoleh read-only earning view exact-owner dengan ringkasan
  seluruh ledger untuk held, available, processing, paid, attention, dan
  reversed; histori layar dibatasi 200 transaksi terbaru.
- Payout approval/selection tidak dilabel paid. Hanya payout item `PAID` menjadi
  paid; failure/cancellation masuk attention. Cross-role access ditolak.
- Full validation, 47 API test dengan sembilan external-service skip terkontrol,
  20 worker test, 40 browser test, targeted photographer UAT, build, dan audit
  dependency lulus.
- Protected preview `dpl_3179SPoYt6n8YW26Txn4YGcNvYKo` `READY`; earnings panel
  200 dan backend tetap 503 fail-closed. Production tidak berubah.

## 2026-08-25 - Exact-owner customer order library

- Exact private feature source `5e7e3c4` dan documentation head `3cbf230`
  berstatus `LOCAL_VALIDATED`.
- Customer dapat membuka 20 order terbaru, melihat status payment/fulfillment
  dan entitlement, lalu menerbitkan ulang link social/HiRes lima menit. Batas
  maksimum 50 dan query exact-owner mencegah order lintas customer tampil.
- Full validation, 47 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 40 browser test dengan dua viewport skip,
  build, dan dependency audit lulus.
- Protected preview `dpl_5ffP4gGh39rdupJNTNdkRr5osMah` `READY`; route library
  200 dan backend tetap fail-closed 503. Production tidak berubah.

## 2026-08-25 - Distributed API rate-limit contract

- Exact private source `2c4af04` berstatus `LOCAL_VALIDATED`.
- Local/test mempertahankan limiter memory deterministik, sedangkan staging dan
  production menolak startup tanpa Redis bersama. Atomic fixed window berlaku
  lintas replica, key client/band disimpan sebagai hash, dan runtime outage
  menghasilkan 503 fail-closed sementara health probe tetap tersedia.
- Full validation, 46 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 38 browser test dengan dua viewport skip,
  typecheck, build, dan production dependency audit lulus.
- Production dan protected frontend preview tidak berubah. Bukti dua instance
  Redis, edge 429, load/soak, dan isolated staging tetap belum dieksekusi.

## 2026-08-25 - Exact-recipient notification inbox

- Exact private feature source `88c8dc9` dan documentation head `150fea6`
  berstatus `LOCAL_VALIDATED`.
- Checkout customer dan photographer jobs kini memiliki inbox untuk durable
  receipt, HiRes request/replacement/overdue, dan delivery notification.
- Authorization memakai exact recipient; response memakai bounded copy tanpa
  raw payload. Unread count, single read, dan read-all replay-safe, sedangkan
  worker delivery/retry/DLQ tetap terpisah dari user read timestamp.
- Full local validation, 45 API test, 20 worker test, 38 browser test, dan audit
  dependency lulus. Protected preview
  `dpl_6kwtVdRvFZ9ZsWANXiAB3PWhVqtP` `READY`; customer/photographer smoke lulus.
- Production tidak berubah. Inbox migration, real email, isolated staging, dan
  provider gates tetap belum dieksekusi.

## 2026-08-25 - Connected photographer HiRes fulfillment

- Exact private feature source `370278a` dan documentation head `d21d9a2`
  berstatus `LOCAL_VALIDATED`.
- Photographer-owned queue menampilkan exact purchased filename, order, event,
  dan SLA; acknowledgement serta completion replay-safe.
- Original JPEG maksimal 50 MB diunggah memakai checksum-bound signed PUT 15
  menit. Server membaca ulang object untuk memeriksa format, bytes, SHA-256,
  dimensi aktual minimal 3.000 px, dan preview similarity.
- QA pass mengaktifkan exact HiRes entitlement dan final customer notification;
  QA fail meminta replacement hingga batas lima tanpa menghukum dependency
  outage sebagai mismatch.
- Full local validation, 41 API test, 20 worker test, 38 browser test, dan
  dependency audit lulus. Protected preview
  `dpl_HU61vd6GY3eNWfeBCBVHYxNJRXHQ` `READY` dan smoke queue lulus.
- Production tidak berubah. Isolated MySQL/S3/KMS execution, multipart,
  CloudFront delivery, real provider, dan production activation tetap blocker.

## 2026-08-25 - Lifecycle dan retention deadlines

- Exact private source `4d602d9` berstatus `LOCAL_VALIDATED`.
- Worker setiap 60 detik menutup sales window, search session, cart, dan pending
  payment yang kedaluwarsa serta menandai fulfillment SLA overdue.
- Search/face/preview retention membentuk system-owned deletion request yang
  deterministic, idempotent, dan tidak menghapus immutable finance record.
- Full local gate lulus; 20 worker test lulus dan empat integration test
  service-dependent skip terkontrol. Migration/MySQL/Redis/provider execution
  tetap menunggu isolated staging.

## 2026-08-25 - Durable in-app notification worker

- Exact private source `d964fea` berstatus `LOCAL_VALIDATED`.
- Verified payment membuat receipt untuk customer dan HiRes request untuk
  fotografer; fulfillment membuat delivery notification untuk customer.
- Worker memproses durable notification melalui outbox, stale reclaim, bounded
  retry, sent evidence, dan DLQ. Payload aman tidak memuat email, telepon, BIB,
  URL media, atau payment detail.
- Full local gate, 38 API test, 18 worker test, dan dependency audit lulus;
  optional service integration tetap skip terkontrol. Transactional email dan
  isolated staging execution masih gate eksternal.

## 2026-08-25 - Candidate feedback dan cart authority

- `LOCAL_VALIDATED` dari exact source private `09a55bd`; protected preview
  `dpl_FFDKoeT7Nj51FNxHgdKuEVogBYJJ` berstatus `READY` dan route BIB smoke 200.
- Candidate confirm/reject kini terikat exact event, search session,
  anonymous-session hash, dan asset. Duplicate decision replay-safe dan sesi
  berbeda ditolak.
- Verified checkout mempersistenkan exact server-priced cart, mengonversinya
  atomically, lalu menghubungkannya satu-ke-satu ke order.
- Full local gate, 38 API test, targeted browser 4/4, dan dependency audit lulus.
  Migration serta optional MySQL assertion masih harus dieksekusi di isolated
  staging; status activation dan business readiness tidak berubah.

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
