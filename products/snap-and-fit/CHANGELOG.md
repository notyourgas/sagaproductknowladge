# Snap and Fit Changelog

## Tujuan

Mencatat perubahan material Snap and Fit dengan pemisahan local, staging,
production, activation, dan business readiness.

## Konteks

Mock, fixture, preview frontend, dan test lokal bukan bukti provider atau
production activation.

## 2026-08-25 - Local Bash dan Compose static gates

- Exact private documentation head `f03e8bd` berstatus `LOCAL_VALIDATED`.
- Lima shell script operasional lulus Git Bash `bash -n`; staging Compose lulus
  `config --quiet` menggunakan official checksum-verified Docker Compose v5.5.0
  dan synthetic-only interpolation values. Tidak ada image/container dijalankan.
- Latest GitHub Actions run untuk prior exact docs head tetap gagal sebelum
  runner dan step dimulai; private branch protection juga tetap plan-gated.
- Shared VPS tetap ditolak. Delivery, activation, production, dan business
  readiness tidak berubah; image/container, migration, load, backup/restore,
  dan canary masih menunggu isolated staging.

## 2026-08-25 - Encrypted event-scoped face search orchestration

- Exact private feature `96df668` dan documentation head `822933f` berstatus
  `LOCAL_VALIDATED`.
- Worker mengindeks exact-event collection; collection/face/selfie/similarity
  reference dienkripsi per event dan lookup face memakai HMAC. API mengambil
  liveness result dan mencari collection di server tanpa mengekspos provider ID,
  similarity score, atau identity claim ke client.
- Official Amplify liveness client memakai single-use session, bounded attempt
  lockout, legal notice version/hash, no-store response, dan provider-degraded
  fallback ke BIB. AWS execution tetap default-off dan belum pernah dipanggil.
- Full gate lulus: 63 API, 21 worker, 6 face-provider, 7 media, 5 observability,
  53 browser, seluruh build, dan audit dependency produksi nol vulnerability.
- Protected preview `dpl_BRsjcFnYQV6NVTCyJqcP19te4HsS` dari baseline `96df668`
  `READY`; UI/PWA route 200 dan backend 503 fail-closed. Isolated staging,
  provider/legal/device/deletion benchmark, dependency compatibility, dan
  production tetap belum diaktifkan.

## 2026-08-25 - Resumable multipart HiRes sampai 200 MB

- Exact private feature `3fc397f`, staging-control baseline `d2b0c5c`, dan docs
  head `f38ffdc` berstatus `LOCAL_VALIDATED`.
- HiRes sampai 50 MB tetap memakai checksum-bound PUT; file 50–200 MB memakai
  part 10 MiB, SHA-256 per part, URL 15 menit, capability resume 24 jam,
  refresh/abort, ordered completion, serta final full-object SHA-256 dan visual QA.
- Capability diverifikasi dan dicocokkan ke exact photographer-owned target
  sebelum storage mutation. Provider upload ID tidak masuk database atau public payload.
- Browser sintetis memutus part ketiga, mempertahankan dua ETag, mengunggah ulang
  hanya part pending, lalu menyelesaikan 1–5. Full gate lulus: 61 API, 20 worker,
  7 media, 5 observability, 53 browser, semua build, dan audit produksi nol vulnerability;
  skip service/project-specific tetap terkontrol.
- Protected preview `dpl_HMJX9CJitQX8Qqf9bN6X9AmQNRbP` `READY`; shell route 200
  dan backend 503 fail-closed. Real S3/KMS multipart, lifecycle, ETag CORS,
  CloudFront runtime, isolated staging, dan production tetap belum diaktifkan.

## 2026-08-25 - Private CloudFront delivery dan AWS face provider contract

- Exact private CloudFront feature `5fe6ab5`, AWS face-provider contract
  `037d2b4`, dan docs/resource-request head `b067d01` berstatus `LOCAL_VALIDATED`.
- S3 staging/production fail-closed tanpa KMS serta private CloudFront domain,
  key-pair ID, dan API-only signing key. Signed URL dibatasi lima menit dan tidak
  mengekspos private bucket.
- AWS adapter mencakup exact event collection, S3 reference index/search,
  zero-audit-image Liveness, benchmark thresholds, dan safe idempotent collection
  deletion evidence. Adapter tetap disconnected/default-off dan belum memanggil AWS.
- Full lint/typecheck/test/build, 59 API, 20 worker, 5 face-provider, 6 media,
  5 observability, 52 browser dengan dua intentional viewport skip, dan
  dependency audit nol vulnerability lulus.
- Protected preview `dpl_8agG8ianbziAht6cbKRRWVwF5DBv` `READY`; PWA/BIB routes
  200 dan backend 503 fail-closed. Production tidak berubah. Isolated staging,
  real CloudFront/AWS evidence, encrypted provider mapping/client orchestration,
  legal/benchmark/device gates, dan multipart >50 MB tetap terbuka.

## 2026-08-25 - Safe trace propagation dan private API metrics

- Exact private trace feature `3fa3be4`, metrics feature `1c1a81e`, dan
  documentation head `ae0b8e7` berstatus `LOCAL_VALIDATED`.
- API request span memvalidasi W3C context dan hanya merekam method, route
  template, status, duration, environment, serta safe error type. Critical
  outbox membawa traceparent menuju relay producer dan worker consumer span.
- Private Prometheus endpoint default-off membutuhkan secret 32+ karakter,
  memberi 404 identik untuk missing/wrong secret, no-store, dan bounded labels
  tanpa raw URL, body, BIB, email, token, user/event/order ID, atau media ref.
- Full validation, 59 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, lima observability test, 52 browser test
  dengan dua intentional skip, build, dan dependency audit nol vulnerability lulus.
- Migration trace, OTLP export lintas proses, Prometheus scrape, dan alert fire/
  recovery masih isolated-staging gate. Production dan protected web preview tidak berubah.

## 2026-08-25 - Privacy-safe installable PWA shell

- Exact private feature source `141bbb5` dan documentation head `7507672`
  berstatus `LOCAL_VALIDATED`.
- Manifest, public icon, scoped service worker, dan safe offline page sekarang
  membentuk installable shell. Navigation bersifat network-first; offline tidak
  mengantre atau mengklaim mutasi berhasil.
- Cache Storage dibatasi pada offline shell dan safe same-origin static assets.
  API/BFF, auth, search, checkout, account, role page, private candidate media,
  signed download, cross-origin response, dan mutation tidak disimpan.
- Full validation, 53 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 52 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_9HVaRkahXkayYALkmsRxU515teaR` `READY`; manifest,
  service worker, offline, dan BIB route 200, sementara backend 503 fail-closed.
  Production tidak berubah.

## 2026-08-25 - Private candidate confirmation preview

- Exact private feature source `c17d56d` dan documentation head `603c82a`
  berstatus `LOCAL_VALIDATED`.
- Candidate BIB/selfie sekarang dapat dilihat sebelum confirm/reject melalui
  signed HMAC capability lima menit dan same-origin BFF. Token terikat event,
  search session, asset, source, dan expiry; token tampered/expired ditolak.
- Authoritative search hanya menerbitkan asset published dengan approved
  watermarked preview. Response memakai private/no-store dan
  noindex/noimageindex/noarchive, tidak mengekspos raw private bucket/key, serta
  fixture lokal dilabel sebagai JPEG sintetis tanpa foto peserta nyata.
- Full validation, 53 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 46 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_t5yNcUkUbVBUBtApcoBJwQCS1W3x` `READY`; BIB route 200
  dan backend 503 fail-closed. Production tidak berubah.

## 2026-08-25 - Dynamic event landing dan secure multi-photo checkout

- Exact private feature source `c314024` dan documentation head `a8bd49f`
  berstatus `LOCAL_VALIDATED`.
- Public event route membaca name, date, location, sales state, search methods,
  fulfillment SLA, dan catalog dari API. BIB/selfie membentuk event-scoped
  multi-photo cart untuk single, exact-three, dan all-confirmed package.
- Quote kini wajib membawa exact anonymous session dan setiap asset harus
  memiliki candidate confirmation aktif pada session tersebut. Direct asset ID,
  unconfirmed candidate, rejected candidate, dan session lain ditolak.
- Full validation, 50 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 46 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_3Wcde9LyKZrJjdV3HYHfZRUTtHSH` `READY`; dynamic event
  route 200 dan backend 503 fail-closed. Production tidak berubah.

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
