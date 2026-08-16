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

Milestone M1 final source `0bdee15db0e0a9a6ebff55573655fe61cdec97ba`
dengan implementation commit `cc09470506b58b213111b7f138b3725140f6cb90`
berstatus `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Vertical slice
lokal kini memiliki Electron + React operator shell, native SQLite event
ledger, atomic filesystem journal, durable outbox, deterministic media
artifacts, serta simulator payment/camera/printer/cloud. Clean validation lulus
format, lint, typecheck, build, 39 test, Electron smoke, dan npm audit dengan
nol vulnerability.

Arsitektur yang dikunci untuk arah V1 adalah hybrid offline-first: aplikasi
Windows berbasis Electron menyimpan operasi booth pada SQLite/filesystem lokal,
sedangkan NestJS, MySQL 8.4 LTS, dan dashboard Next.js menjadi control plane di
VPS Hostinger. Media tidak disimpan sebagai blob MySQL; sinkronisasi memakai
durable outbox dan hanya dihapus setelah ACK server yang valid.

Target hardware V1 adalah Canon R10/R50 dan printer DNP. Sony a6700/ZV-E10 II
masuk qualification V1.1. QRIS wajib melalui PJP berizin; status paid tidak
boleh berasal dari layar customer atau polling UI tanpa verifikasi server.

M1 membuktikan sesi paid dapat selesai saat cloud offline, outbox hanya menjadi
ACK setelah verifikasi, camera crash dapat masuk recovery lalu dilanjutkan, dan
hasil print ambigu tidak memicu auto-reprint. Status belum mencakup customer
kiosk, Next/Nest/MySQL, SDK kamera, driver printer, integrasi QRIS, VPS/domain,
signed installer, deployment, hardware qualification, pilot, atau business
readiness. GitHub Actions belum dapat menjalankan job karena billing/spending
limit akun, dan branch protection untuk repo private memerlukan GitHub Pro.
