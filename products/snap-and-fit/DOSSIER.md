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
- Provenance: source private `2c4af04`, distributed rate limiter `2c4af04`,
  notification inbox `88c8dc9`,
  connected HiRes fulfillment `370278a`,
  operations feature `b09f279`,
  deletion/recovery hardening `dbbb814`, candidate/cart authority `09a55bd`,
  durable notification worker `d964fea`, lifecycle/retention worker `4d602d9`,
  protected Vercel preview `dpl_6kwtVdRvFZ9ZsWANXiAB3PWhVqtP`.

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
5. Payment terverifikasi mengaktifkan social copy. Antrean fotografer memuat
   exact filename/SLA; fotografer mengakui request lalu mengunggah original
   melalui signed direct PUT. Server memeriksa JPEG, byte/checksum, dimensi, dan
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
- Lifecycle worker setiap 60 detik menjalankan bounded sweep untuk sales close,
  expiry search/cart/payment, fulfillment overdue, serta deterministic
  system-owned deletion request bagi search/face/preview. Finance records dan
  purchased social/HiRes entitlement tidak menjadi target hard delete.
- Fulfillment queue hanya dapat dibaca/dimutasi fotografer pemilik. Upload
  intent berlaku 15 menit, terikat SHA-256 dan byte count, JPEG maksimal 50 MB,
  serta memakai bucket HiRes terpisah dari preview pada S3. QA membaca kembali
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
- 46 API test lulus; sembilan MySQL/Redis/external integration test terkontrol skip tanpa
  service project-safe.
- 20 worker test lulus; empat integrasi MySQL/Redis sengaja skip tanpa service
  project-safe. Restore verifier kini memeriksa core schema dan orphan deletion
  task, bukan hanya jumlah tabel.
- 38 Playwright mobile/desktop lulus dan dua viewport-specific skip disengaja;
  operator controlled demo, checkout, role workflow, upload, accessibility, dan
  no-overflow tercakup.
- Production dependency audit: nol vulnerability yang diketahui.
- Preview protected berstatus `READY`; smoke terlindungi merender inbox customer,
  inbox fotografer, HiRes queue, dan empty fail-closed state. Backend
  authoritative belum terhubung.

## Risiko dan gate terbuka

- Isolated staging VPS, MySQL, Redis, private storage, migration, worker, dan API
  belum deployed.
- MySQL/Redis optional suite, protected synthetic deletion/replay,
  backup/restore, rollback, 300 VU load, soak, security staging, dan device UAT
  belum dieksekusi.
- Optional cross-instance Redis limiter test belum dieksekusi karena isolated
  Redis staging belum tersedia; implementasi lokal bukan bukti distributed runtime.
- Migration read state inbox belum diaplikasikan pada isolated MySQL karena host
  staging belum tersedia; real email delivery juga tetap external gate.
- Real direct S3/KMS HiRes upload/replacement dan CloudFront delivery belum
  dieksekusi; multipart di atas batas single PUT 50 MB belum diimplementasikan.
- Real MySQL/S3/Rekognition deletion adapter dan evidence provider belum ada;
  synthetic orchestration bukan bukti penghapusan provider.
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
