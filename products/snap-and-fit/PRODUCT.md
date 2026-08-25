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
- Exact source `a83b43a` berada di private `main`; fitur operator berasal dari
  `b09f279`.
- Protected Vercel preview `dpl_Dtr9Uigz6263nj7V69s62RMD3Pfz` berstatus
  `READY`; frontend dapat dirender tetapi backend staging sengaja fail-closed.
- Full local validation, 37 API test dengan enam integrasi eksternal terkontrol
  skip, audit dependency nol vulnerability, serta 38 browser test dengan dua
  viewport skip lulus.

## Batas klaim

- Belum `STAGING_READY`; isolated VPS API/worker/MySQL/Redis belum tersedia.
- Tokopay real-money, AWS biometric production, foto peserta nyata, production
  DNS, dan public activation belum diaktifkan.
- OpenAI tidak menerima foto, selfie, face vector, signed URL, raw BIB, detail
  pembayaran, atau PII peserta.
- Shared Hostinger VPS yang diperiksa tidak dipakai karena isolation dan
  kapasitasnya tidak memenuhi gate Snap and Fit.

## Next gate

Sediakan isolated VPS minimal 4 vCPU/16 GB, project-only MySQL/Redis/private
storage, lalu jalankan migration, optional integration suite, deletion worker,
300-concurrent load, backup/restore, rollback, security, dan real-device UAT.
