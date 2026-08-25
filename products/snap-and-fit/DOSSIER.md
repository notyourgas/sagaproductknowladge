# Snap and Fit Dossier

## Tujuan dokumen

Menjelaskan kontrak produk dan status evidence Snap and Fit tanpa mempublikasikan
credential, PII, identifier tenant/perangkat, atau detail provider sensitif.

## Konteks dan status bukti

- Updated: 25 Agustus 2026
- Klasifikasi: `CONFIRMED`
- Delivery: `LOCAL_VALIDATED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`
- Provenance: exact private head `d0f3b7d`, digest-only application release
  `d0f3b7d`, immutable supply-chain hardening `ee45e56`, authoritative load
  fixture `4f9d8d3`, ShellCheck acceptance
  `162cc29`, clean-checkout setup fix `fbf01b6`, liveness
  peer acceptance `7b44101`,
  encrypted event-scoped face search
  `96df668`, resumable multipart feature `3fc397f`,
  staging-control/preview baseline `d2b0c5c`, organizer safe metrics `46d7a4b`,
  photographer earning view `0385317`,
  customer order library `5e7e3c4`,
  distributed rate limiter `2c4af04`,
  notification inbox `88c8dc9`,
  connected HiRes fulfillment `370278a`,
  operations feature `b09f279`,
  deletion/recovery hardening `dbbb814`, candidate/cart authority `09a55bd`,
  durable notification worker `d964fea`, lifecycle/retention worker `4d602d9`,
  protected Vercel preview `dpl_E749gUQc7iVtGCauGvVLa1swk59j`.

## Overview produk

Snap and Fit menghubungkan peserta event olahraga dengan fotografer resmi.
Preview ringan membantu pencarian dan pembelian; file original tetap berada di
perangkat fotografer sampai ada permintaan HiRes dari transaksi terverifikasi.

## Masalah yang diselesaikan

- Peserta sulit menemukan fotonya di ratusan atau ribuan hasil event.
- Fotografer memerlukan upload massal yang dapat pulih dan alur HiRes yang jelas.
- Organizer memerlukan katalog, sales window, settlement, privacy, dan support
  dalam satu workflow yang dapat diaudit.
- Platform harus membedakan payment collected, provider-cleared, entitlement,
  dan payout agar tidak memindahkan dana secara ambigu.

## User journey utama

1. Organizer membuat event, harga, privacy/retention, station, dan assignment.
2. Fotografer membuat derivative JPEG 1.800 px, menyimpan manifest lokal, lalu
   mengunggah preview privat dengan checksum.
3. Peserta membuka event, menyetujui notice, lalu mencari melalui BIB atau
   selfie feature-flagged. Confirm/reject terikat exact anonymous search session.
4. Server membentuk candidate, quote, bundle, dan checkout; client tidak menjadi
   source of truth harga. Verified checkout mengubah server-priced cart menjadi
   order dengan provenance satu-ke-satu.
   Customer dapat membuka library exact-owner untuk memulihkan status dan link
   entitlement tanpa bergantung pada tab checkout sebelumnya.
5. Payment terverifikasi mengaktifkan social copy. Antrean fotografer memuat
   exact filename/SLA; fotografer mengakui request lalu mengunggah original
   melalui signed direct PUT atau multipart. Server memeriksa JPEG, byte/checksum, dimensi, dan
   kecocokan preview sebelum QA mengaktifkan final download atau replacement.
6. Ledger membagi hasil 75/15/10 dan menahan payout sampai provider-cleared dan
   fulfillment diterima.
7. Operator menangani wrong-match, deletion, refund, support grant, dan payout
   dengan password, TOTP, idempotency, outbox, audit, dan dual control.

## Permission dan privacy

- Customer memakai continuation/email OTP; role privileged memakai password dan
  TOTP fresh yang terikat exact session.
- Authorization default-deny memakai exact organization/event/owner predicate.
- Support grant terikat user, event, case, permission allowlist, dan maksimal
  60 menit.
- Wrong-match menyembunyikan asset sebelum review. Deletion membuat task
  target-hashed untuk sistem yang relevan dan tidak menganggap partial fan-out
  sebagai sukses.
- Raw selfie maksimal 24 jam; face collection maksimal 24 jam setelah sales
  close; preview publik maksimal 30 hari setelah sales close. Execution
  staging/production masih gate terpisah.

## UI/UX

Functional Street Editorial memakai Plus Jakarta Sans, headline ExtraBold,
off-white, near-black, acid lime, Feather icons 2 px, image-led grid, target
sentuh minimal 48 px, dan WCAG 2.2 AA. Customer mobile-first; uploader
fotografer desktop-optimized.

## Technical overview

- Next.js 16 PWA untuk customer, photographer, organizer, dan operator.
- NestJS 11 sebagai API authority.
- Prisma/MySQL 8.4 untuk business truth; Redis/BullMQ dan transactional outbox
  untuk worker.
- Private S3/KMS untuk media dan Rekognition/Liveness Malaysia sebagai target
  biometric provider; mock/degraded adapter menjaga UAT tanpa data nyata.
- S3 staging/production mewajibkan CloudFront trusted-key signed delivery;
  API startup fail-closed bila signer private tidak lengkap.
- HiRes sampai 50 MB memakai single PUT; 50–200 MB memakai part 10 MiB dengan
  per-part SHA-256, signed resume capability, dan final full-object SHA-256 QA.
- AWS face provider tersedia default-off untuk create/index/search/liveness/
  delete pada exact event collection. Worker, API, encrypted provider-reference
  persistence, HMAC lookup, attempt lockout, dan official Amplify client sudah
  terhubung secara lokal; tidak ada AWS call yang diaktifkan.
- Tokopay Advanced Order, callback verification, dan Check Order sebagai kontrak
  payment; live flag default-off.
- Vercel tidak terhubung langsung ke MySQL/Redis dan long-running image work
  tidak berjalan pada Vercel Functions.
- API memakai rate limiter memory pada local/test dan mewajibkan atomic Redis
  shared-window pada staging/production. Key client/band di-hash, runtime outage
  fail-closed 503, sedangkan health probe tetap tersedia untuk recovery.

## Operator controls terbaru

- Create operation wajib memakai bounded idempotency key; replay body sama
  mengembalikan resource yang sama, sedangkan body berbeda ditolak.
- Refund berpindah requested → approved → submitted untuk operator action dan
  tetap melaporkan provider money belum bergerak.
- Payout draft hanya memilih posted photographer earning dari fulfilled order
  dengan payment provider-cleared. Satu ledger credit tidak dapat masuk dua
  payout run dan approver wajib berbeda dari maker.
- Read-only earning view memakai exact photographer ID. Ringkasan aggregate
  seluruh ledger membedakan held, available, processing, paid, attention, dan
  reversed; daftar dibatasi 200. Paid hanya berasal dari payout item `PAID`,
  sedangkan payout gagal/dibatalkan masuk attention.
- Organizer event metrics memakai exact organization scope dan hanya mengirim
  aggregate inventory, order, fulfillment, reconciliation, gross/cleared,
  organizer earning posted, dan active refund. Nama, email, telepon, BIB, serta
  payment reference customer tidak menjadi response.
- Connected operator UI menyediakan loading, empty, error, queue, dan controlled
  synthetic demo tanpa PII.
- Deletion worker mempertahankan task yang sudah selesai saat retry, mengirim
  exhausted work ke DLQ, menyapu deadline setiap 30 detik, dan menutup request
  hanya setelah seluruh fan-out memiliki evidence code aman.
- Outbox replay menolak job aktif/menunggu, menghapus hanya job terminal,
  mengantrekan ulang exact persisted event, dan menulis audit tanpa mencetak
  payload.
- Payment receipt, photographer HiRes request, dan customer delivery memakai
  durable in-app notification. Worker melakukan claim, stale reclaim, retry,
  sent evidence, dan DLQ; email provider tetap external gate.
- Checkout customer dan photographer jobs membaca notifikasi melalui exact-user
  authorization. API hanya mengirim bounded title/message/event/time, bukan raw
  payload; unread, single read, dan read-all idempoten. User read timestamp
  terpisah dari worker delivery status agar retry tidak mengubah acknowledgement.
- Customer order library dibatasi 20 item terbaru secara default dan maksimal 50,
  memakai exact customer identity, serta menerbitkan link social/HiRes lima menit
  hanya ketika entitlement order tersebut aktif.
- Lifecycle worker setiap 60 detik menjalankan bounded sweep untuk sales close,
  expiry search/cart/payment, fulfillment overdue, serta deterministic
  system-owned deletion request bagi search/face/preview. Finance records dan
  purchased social/HiRes entitlement tidak menjadi target hard delete.
- Fulfillment queue hanya dapat dibaca/dimutasi fotografer pemilik. Single PUT
  dan URL multipart berlaku 15 menit, terikat SHA-256 dan byte count; multipart
  memakai part 10 MiB, batas 200 MB, same-tab resume 24 jam, refresh/abort, dan
  capability exact-job sebelum storage mutation. Provider upload ID tetap hanya
  di capability bertanda tangan. Bucket HiRes terpisah dari preview pada S3. QA membaca kembali
  object private, mengukur dimensi aktual dan average-hash similarity, lalu
  membuat entitlement exact asset version atau meminta replacement maksimal
  lima kali. Dependency outage menghasilkan retryable error, bukan QA failure.

## Business model dan pricing

- Pilot catalog: Rp25.000 satu foto, Rp60.000 tiga foto, Rp99.000 semua match.
- Net settlement: 75% fotografer, 15% platform, 10% organizer setelah nilai
  provider yang tervalidasi.
- `NEEDS CONFIRMATION`: economics pilot nyata, volume event, biaya storage/
  biometric/payment, dan final commercial terms setelah controlled pilot.

## Evidence lokal

- Full format/lint/typecheck/test/build lulus.
- 63 API test lulus; sembilan MySQL/Redis/external integration test terkontrol skip tanpa
  service project-safe.
- 21 worker test lulus; empat integrasi MySQL/Redis sengaja skip tanpa service
  project-safe. Restore verifier kini memeriksa core schema dan orphan deletion
  task, bukan hanya jumlah tabel.
- Enam face-provider test, tujuh media test, dan lima observability test lulus.
- 53 Playwright mobile/desktop lulus dan tiga project-specific skip disengaja;
  operator controlled demo, checkout/order library, role workflow, preview upload,
  multipart interruption/resume, accessibility, dan no-overflow tercakup.
- Production dependency audit: nol vulnerability yang diketahui.
- Official liveness package menyatakan React 19 support; exact transitive peer
  metadata ditutup dengan narrow package/peer rule. Frozen install, fresh web
  build, full validation, browser suite, audit, dan peer check lulus.
- Lima shell script lulus Git Bash `bash -n`; staging Compose lulus static
  interpolation memakai official checksum-verified Docker Compose v5.5.0 dan
  synthetic-only values. Tidak ada image/container yang dijalankan.
- Detached clean checkout exact remote `fbf01b6` pada Windows dengan
  `core.autocrlf=true` lulus instruksi README tanpa hak admin: `corepack pnpm`
  frozen install, copy `.env.example`, forced uncached lint/typecheck/test/build,
  dan 53 browser test dengan tiga intentional skip. `.gitattributes` kini
  memaksa LF lintas repository agar checkout Windows tidak mengubah format.
  Service-dependent integration skip tetap terbuka sampai isolated staging.
- Official Windows ShellCheck v0.11.0 archive cocok dengan release-asset
  SHA-256; lima skrip operasi lulus hingga severity `style`. Portable verifier
  dibersihkan setelah run. Tidak ada image/container atau runtime staging yang
  dieksekusi dari evidence ini.
- Fixture k6 300-VU melakukan authoritative seeded-BIB search, exact-session
  candidate confirmation, dan same-session sampled quote. Official
  checksum-verified k6 v2.2.0 `inspect` lulus; full validation lulus dan tidak ada
  traffic load yang dikirim tanpa isolated staging.
- Actions di-pin exact commit; Node, MySQL, dan Redis base/service image di-pin
  OCI manifest digest. Application release juga wajib memakai resulting manifest
  digest; commit-shaped registry tag hanya provenance dan ditolak oleh deploy/
  rollback. Restore menolak non-digest override dan local validation
  memverifikasi referensi.
  Actionlint, enam-file ShellCheck, Compose immutable image set, release-script
  regression, full validation, dan production dependency audit lulus. Build,
  scan, emitted BuildKit SBOM/provenance verification, pull, dan runtime image
  tetap staging gate.
- Preview protected `dpl_E749gUQc7iVtGCauGvVLa1swk59j` dari baseline `7b44101`
  berstatus `READY`; manifest, service worker, offline, BIB, selfie-capture, dan
  photographer jobs route 200 serta
  backend fail-closed 503. Connected metrics panel
  hanya browser-validated lokal karena backend preview tidak terhubung. Backend
  authoritative belum terhubung.

## Risiko dan gate terbuka

- Isolated staging VPS, MySQL, Redis, private storage, migration, worker, dan API
  belum deployed.
- Satu-satunya SSH target yang tersedia tetap shared 2 vCPU/sekitar 8 GB/100 GB,
  tanpa Docker, sehingga tidak dipakai sebagai target Snap and Fit.
- MySQL/Redis optional suite, protected synthetic deletion/replay,
  backup/restore, rollback, 300 VU load, soak, security staging, dan device UAT
  belum dieksekusi.
- Exact MySQL ledger/payout-state earning assertion masih integration skip karena
  isolated MySQL belum tersedia; local empty-state/cross-role evidence bukan bukti saldo nyata.
- Exact MySQL aggregate metrics/reconciliation comparison masih integration gate;
  local zero-state/cross-role test bukan evidence angka event nyata.
- Optional cross-instance Redis limiter test belum dieksekusi karena isolated
  Redis staging belum tersedia; implementasi lokal bukan bukti distributed runtime.
- Migration read state inbox belum diaplikasikan pada isolated MySQL karena host
  staging belum tersedia; real email delivery juga tetap external gate.
- Real direct/multipart S3/KMS HiRes interruption/resume/replacement, ETag CORS,
  one-day incomplete-upload lifecycle, dan CloudFront trusted-key/origin proof
  belum dieksekusi; seluruh contract dan browser resume baru teruji sintetis lokal.
- Rekognition orchestration sudah terhubung lokal dan teruji fake-provider,
  tetapi belum pernah memanggil AWS. Real MySQL/S3/Rekognition indexing,
  liveness, search, deletion, dan evidence provider belum ada; synthetic
  orchestration bukan bukti penghapusan provider. Transitive React peer metadata
  sudah ditutup secara exact-edge, tetapi upstream-version recheck dan real-device
  camera compatibility tetap wajib sebelum activation.
- Test merchant Tokopay dan AWS test provider/legal biometric gate belum
  tersedia; real-money dan production biometric tetap off.
- GitHub hosted CI/protected-main enforcement masih tertahan account-plan gate;
  local release gates tetap wajib.

## Sales dan messaging

- Temukan foto aksimu tanpa menyisir ratusan file satu per satu.
- Preview ringan untuk discovery, HiRes dikirim setelah pembelian terverifikasi.
- Fotografer mempertahankan original dan memperoleh settlement yang dapat
  diaudit.
- Jangan menjanjikan face search production, instant HiRes, atau payout otomatis
  sebelum gate provider dan controlled pilot lulus.
