# SagaBooth Product Knowledge

Updated: 16 Agustus 2026

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaBooth tanpa mencampurkan scope SagaBook
atau SagaView.

## Konteks

SagaBooth adalah software instant photobooth mandiri untuk booth Windows dan
control plane web. Produk ini berbeda dari SagaBook maupun SagaView: SagaBooth
menjalankan sesi otomatis dari konfigurasi paket, pembayaran terverifikasi,
countdown/capture, render frame, print queue, sampai delivery hasil.

Milestone M0 exact source `c08765f3a5ab40ff39e5741c1abfc609006ceef5`
berstatus `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Fondasi
monorepo, kontrak runtime, guarded session state machine, simulator kamera,
printer, dan pembayaran, lima ADR, governance, serta CI definition tersedia.
Clean validation lulus format, lint, typecheck, build, 27 test, dan npm audit
dengan nol vulnerability.

Arsitektur yang dikunci untuk arah V1 adalah hybrid offline-first: aplikasi
Windows berbasis Electron menyimpan operasi booth pada SQLite/filesystem lokal,
sedangkan NestJS, MySQL 8.4 LTS, dan dashboard Next.js menjadi control plane di
VPS Hostinger. Media tidak disimpan sebagai blob MySQL; sinkronisasi memakai
durable outbox dan hanya dihapus setelah ACK server yang valid.

Target hardware V1 adalah Canon R10/R50 dan printer DNP. Sony a6700/ZV-E10 II
masuk qualification V1.1. QRIS wajib melalui PJP berizin; status paid tidak
boleh berasal dari layar customer atau polling UI tanpa verifikasi server.

Status belum mencakup runtime Electron/Next/Nest, migrasi SQLite/MySQL, SDK
kamera, driver printer, integrasi QRIS, VPS/domain, deployment, hardware
qualification, pilot, atau business readiness. GitHub Actions belum dapat
menjalankan job karena billing/spending limit akun, dan branch protection untuk
repo private memerlukan GitHub Pro.
