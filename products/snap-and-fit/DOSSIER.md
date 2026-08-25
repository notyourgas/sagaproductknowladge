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
- Provenance: source private `4d602d9`, operations feature `b09f279`,
  deletion/recovery hardening `dbbb814`, candidate/cart authority `09a55bd`,
  durable notification worker `d964fea`, lifecycle/retention worker `4d602d9`,
  protected Vercel preview `dpl_FFDKoeT7Nj51FNxHgdKuEVogBYJJ`.

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
5. Payment terverifikasi mengaktifkan social copy. Fotografer menerima request
   HiRes, mengunggah original, dan QA mengaktifkan final download.
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
- Lifecycle worker setiap 60 detik menjalankan bounded sweep untuk sales close,
  expiry search/cart/payment, fulfillment overdue, serta deterministic
  system-owned deletion request bagi search/face/preview. Finance records dan
  purchased social/HiRes entitlement tidak menjadi target hard delete.

## Business model dan pricing

- Pilot catalog: Rp25.000 satu foto, Rp60.000 tiga foto, Rp99.000 semua match.
- Net settlement: 75% fotografer, 15% platform, 10% organizer setelah nilai
  provider yang tervalidasi.
- `NEEDS CONFIRMATION`: economics pilot nyata, volume event, biaya storage/
  biometric/payment, dan final commercial terms setelah controlled pilot.

## Evidence lokal

- Full format/lint/typecheck/test/build lulus.
- 38 API test lulus; enam MySQL/external integration test terkontrol skip tanpa
  service project-safe.
- 20 worker test lulus; empat integrasi MySQL/Redis sengaja skip tanpa service
  project-safe. Restore verifier kini memeriksa core schema dan orphan deletion
  task, bukan hanya jumlah tabel.
- 38 Playwright mobile/desktop lulus dan dua viewport-specific skip disengaja;
  operator controlled demo, checkout, role workflow, upload, accessibility, dan
  no-overflow tercakup.
- Production dependency audit: nol vulnerability yang diketahui.
- Preview protected berstatus `READY` serta mengembalikan CSP, HSTS, deny-frame,
  noindex, dan operator production bundle.

## Risiko dan gate terbuka

- Isolated staging VPS, MySQL, Redis, private storage, migration, worker, dan API
  belum deployed.
- MySQL/Redis optional suite, protected synthetic deletion/replay,
  backup/restore, rollback, 300 VU load, soak, security staging, dan device UAT
  belum dieksekusi.
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
