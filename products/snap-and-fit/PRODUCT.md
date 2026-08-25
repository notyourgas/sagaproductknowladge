# Snap and Fit Product Knowledge

Updated: 25 Agustus 2026
Evidence status: `CONFIRMED / LOCAL_VALIDATED / protected preview deployed`

## Tujuan dokumen

Menjadi ringkasan public-safe kanonik Snap and Fit. Detail produk, workflow,
teknis, risiko, dan roadmap berada di [DOSSIER](DOSSIER.md).

## Konteks

Dokumen membedakan implementation lokal, protected frontend preview, isolated
staging yang belum tersedia, dan production yang belum diaktifkan.

## Ringkasan

Snap and Fit adalah marketplace foto olahraga berbasis event. Fotografer
mengunggah preview terkompresi, peserta mencari fotonya melalui nomor BIB atau
alur selfie berizin, lalu membeli foto sebelum fotografer menyerahkan HiRes.

## Target pengguna

- Peserta event lari, sepeda, tenis, basket, mini soccer, dan olahraga terkait.
- Fotografer event.
- Organizer event.
- Platform admin dan support terbatas.

## Scope MVP

- Event draft, readiness, publish, dan tutup penjualan.
- Assignment fotografer dan uploader desktop hingga 500 JPEG dengan manifest,
  checksum, derivative mobile, pause/resume, dan private upload intent.
- Landing event dinamis per slug, pencarian BIB, selfie mock ber-consent,
  candidate gallery, multi-photo cart, quote server-side, dan checkout.
- Harga event pilot Rp25.000 satu foto, Rp60.000 tiga foto, dan Rp99.000 semua
  match.
- QRIS Tokopay mock/test contract, entitlement social langsung setelah payment
  terverifikasi, permintaan HiRes, QA, dan signed download lima menit.
- Ledger bersih 75% fotografer, 15% platform, dan 10% organizer; payout hanya
  dari dana provider-cleared dan memakai maker-checker.
- Wrong-match/takedown immediate-hide, refund operator-assisted, scoped support
  grant, deletion fan-out, audit, dan transactional outbox.

## Status saat ini

- Delivery: `LOCAL_VALIDATED`.
- Activation: `NOT_PRODUCTION_ACTIVATED`.
- Business readiness: `BLOCKED`.
- Exact source head `dd55663` berada di private `main`; CloudFront private
  delivery signer berasal dari `5fe6ab5`, AWS event-scoped face provider
  contract dari `037d2b4`, private bounded API
  metrics berasal dari `1c1a81e`, safe trace/outbox propagation dari `3fa3be4`,
  privacy-safe installable PWA shell berasal dari `141bbb5`, private candidate confirmation preview
  berasal dari `c17d56d`, secure multi-photo event
  checkout berasal dari `c314024`, organizer safe event metrics
  berasal dari `46d7a4b`, photographer earning view berasal dari `0385317`,
  customer order library berasal dari `5e7e3c4`,
  distributed rate limiter berasal dari `2c4af04`, user-facing notification
  inbox berasal dari `88c8dc9`, fulfillment HiRes terhubung
  berasal dari `370278a`, fitur operator berasal dari
  `b09f279`, deletion/recovery hardening dari `dbbb814`, serta candidate/cart
  authority dari `09a55bd`, durable notification worker dari `d964fea`, dan
  lifecycle/retention worker dari `4d602d9`.
- Protected Vercel preview `dpl_8agG8ianbziAht6cbKRRWVwF5DBv` berstatus
  `READY`; manifest, service worker, offline route, dan BIB route 200 tetapi
  backend staging sengaja fail-closed.
- Full local validation, 59 API test dengan sembilan integrasi eksternal terkontrol
  skip, 20 worker test dengan empat integrasi service-dependent skip, audit
  dependency nol vulnerability, lima observability test, serta 52 browser test dengan dua viewport skip
  lulus.

## Batas klaim

- Belum `STAGING_READY`; isolated VPS API/worker/MySQL/Redis belum tersedia.
- Tokopay real-money, AWS biometric production, foto peserta nyata, production
  DNS, dan public activation belum diaktifkan.
- OpenAI tidak menerima foto, selfie, face vector, signed URL, raw BIB, detail
  pembayaran, atau PII peserta.
- Shared Hostinger VPS yang diperiksa tidak dipakai karena isolation dan
  kapasitasnya tidak memenuhi gate Snap and Fit.
- Rate limit memakai memory hanya untuk local/test. Staging/production menolak
  startup tanpa Redis bersama, memakai key client yang di-hash, serta fail-closed
  saat control plane limiter tidak tersedia. Bukti dua instance nyata masih gate staging.
- Candidate confirm/reject terikat exact anonymous search session; quote hanya
  menerima candidate aktif yang dikonfirmasi browser yang sama dan menolak
  candidate unconfirmed/rejected. Authoritative checkout mendukung single,
  exact-three, dan all-confirmed dengan server-priced cart yang terhubung ke order.
- Candidate gallery sekarang menerima preview JPEG melalui capability HMAC
  lima menit dan same-origin BFF. Authoritative search hanya menerbitkan asset
  published dengan approved watermarked preview; response bersifat private,
  no-store, noindex/noimageindex/noarchive, dan tidak mengekspos bucket/key.
  Local/test memakai JPEG sintetis yang dilabel jelas, bukan foto peserta nyata.
- Installable PWA memakai navigation network-first dan offline fallback yang
  menyatakan tidak ada aksi terkirim. Cache Storage hanya mengizinkan offline
  shell, public icon, serta same-origin static asset non-private; API, auth,
  search, checkout, account, role page, private media, signed download, dan
  mutasi tidak pernah disimpan.
- API menghasilkan W3C server span dengan bounded safe attributes; critical
  outbox menyimpan traceparent, relay membuat producer span, dan worker
  melanjutkan consumer span. OTLP export live tetap gate staging. Private
  Prometheus endpoint default-off memakai secret 32+ karakter, 404 untuk
  missing/wrong secret, no-store, dan label route-template tanpa payload/PII.
- S3 staging/production sekarang fail-closed tanpa private CloudFront domain,
  trusted key-pair ID, KMS, dan API-only signing key. Signed URL lima menit tidak
  mengekspos private bucket; trusted-key/origin runtime proof tetap gate staging.
- AWS face provider contract kini mencakup deterministic event collection,
  S3-reference indexing/search, zero-audit-image Face Liveness, threshold
  configuration, dan safe collection-deletion evidence. Adapter belum tersambung
  ke client/persistence dan tidak pernah dipanggil; mock/BIB tetap jalur aktif.
- Customer memiliki library 20 order terbaru yang exact-owner, menampilkan
  status payment/fulfillment dan entitlement, serta dapat menerbitkan ulang link
  social/HiRes lima menit tanpa mengekspos order customer lain.
- Payment dan fulfillment membuat durable in-app notification dengan retry,
  stale reclaim, dan DLQ. Checkout customer dan jobs fotografer memiliki inbox
  exact-recipient, unread/read-all idempoten, dan bounded copy tanpa raw payload.
  Transactional email nyata belum diaktifkan.
- Lifecycle worker menutup sales window, session/cart/payment yang kedaluwarsa,
  fulfillment overdue, dan menjadwalkan retensi search/face/preview tanpa
  menghapus finance record. Eksekusi provider nyata tetap belum tervalidasi.
- Fotografer memiliki antrean exact purchased filename/SLA, acknowledgement,
  signed direct HiRes PUT maksimal 50 MB, dan server-side JPEG/dimension/
  checksum/preview-similarity QA. Pass mengaktifkan entitlement; failure meminta
  replacement hingga batas lima. Real S3/KMS/CloudFront belum dieksekusi dan
  multipart di atas 50 MB belum diimplementasikan.
- Earning view fotografer membaca exact-owner ledger dan membedakan held,
  available, processing, paid, attention, serta reversed. Ringkasan mencakup
  seluruh ledger; daftar dibatasi 200 transaksi. Payout approval tidak diklaim paid.
- Organizer memiliki exact-organization aggregate metrics untuk inventory,
  verified/fulfilled order, fulfillment, payment quarantine/clearing, verified
  gross, organizer earning posted, dan refund aktif tanpa customer PII.

## Next gate

Sediakan isolated VPS minimal 4 vCPU/16 GB, project-only MySQL/Redis/private
storage, lalu jalankan migration, optional integration suite, synthetic
lifecycle/deletion/replay drill, 300-concurrent load, backup/restore, rollback,
security, dan real-device UAT. Real-provider deletion tetap gate aktivasi
terpisah.
