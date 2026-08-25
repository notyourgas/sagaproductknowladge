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
- Landing event mobile, pencarian BIB, selfie mock ber-consent, candidate
  gallery, pemilihan, quote server-side, dan checkout.
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
- Exact source `2c4af04` berada di private `main`; distributed rate limiter
  berasal dari `2c4af04`, user-facing notification
  inbox berasal dari `88c8dc9`, fulfillment HiRes terhubung
  berasal dari `370278a`, fitur operator berasal dari
  `b09f279`, deletion/recovery hardening dari `dbbb814`, serta candidate/cart
  authority dari `09a55bd`, durable notification worker dari `d964fea`, dan
  lifecycle/retention worker dari `4d602d9`.
- Protected Vercel preview `dpl_6kwtVdRvFZ9ZsWANXiAB3PWhVqtP` berstatus
  `READY`; inbox customer/fotografer dan antrean HiRes dapat dirender tetapi
  backend staging sengaja fail-closed.
- Full local validation, 46 API test dengan sembilan integrasi eksternal terkontrol
  skip, 20 worker test dengan empat integrasi service-dependent skip, audit
  dependency nol vulnerability, serta 38 browser test dengan dua viewport skip
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
- Candidate confirm/reject terikat exact anonymous search session; authoritative
  checkout menyimpan server-priced cart dan menghubungkannya ke order.
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
  replacement hingga batas lima. Real S3/KMS dan multipart belum tervalidasi.

## Next gate

Sediakan isolated VPS minimal 4 vCPU/16 GB, project-only MySQL/Redis/private
storage, lalu jalankan migration, optional integration suite, synthetic
lifecycle/deletion/replay drill, 300-concurrent load, backup/restore, rollback,
security, dan real-device UAT. Real-provider deletion tetap gate aktivasi
terpisah.
