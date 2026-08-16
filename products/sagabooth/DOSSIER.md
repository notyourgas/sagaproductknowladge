# SagaBooth Dossier

## Tujuan dokumen

Menjaga scope produk, workflow, arsitektur, safety, dan readiness SagaBooth
tetap terpisah dari SagaBook serta SagaView.

## Konteks dan status bukti

- Updated: 16 Agustus 2026
- Source: private repository `notyourgas/sagabooth`
- Final source: `0bdee15db0e0a9a6ebff55573655fe61cdec97ba`
- Implementation source: `cc09470506b58b213111b7f138b3725140f6cb90`
- Delivery: `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`
- Production activation: belum ada
- Business readiness: `BLOCKED`

## Overview produk

Software instant photobooth otomatis dengan runtime Windows lokal dan dashboard
web. Internal assisted pilot menjadi tahap pertama; licensing/SaaS disiapkan
setelah workflow inti dan perangkat nyata stabil.

## Masalah yang diselesaikan

Operasi booth harus tetap menyelesaikan sesi dengan aman ketika internet tidak
stabil, tanpa double charge, double print, kehilangan foto, atau status sukses
palsu. Operator juga membutuhkan konfigurasi, observability, recovery, frame,
dan audit yang konsisten lintas booth.

## Workflow V1

Konfigurasi sesi → order pembayaran → verifikasi paid → countdown/capture →
render empat output → print queue/delivery → completed. Recovery hanya boleh
resume dari checkpoint durable dan capture sebelum paid ditolak.

## Arsitektur

- Windows runtime: Electron, SQLite, filesystem media, local journal/outbox.
- Camera/print boundary: adapter terpisah dan kontrak berversi.
- Control plane: NestJS API, MySQL 8.4 LTS, Next.js admin web.
- Hosting target: VPS dan domain Hostinger; belum dibeli atau dideploy.
- Media: filesystem/object storage, bukan blob database.

## Hardware dan integrasi

- V1 production target: Canon R10/R50 dan DNP.
- V1.1 qualification: Sony a6700/ZV-E10 II.
- Payment: QRIS melalui PJP berizin dengan signature, amount, order,
  idempotency, duplicate-event, expiry, dan state-conflict validation.

## Safety dan security baseline

Least privilege, secret tidak berada di renderer, signed/verified payment
callback, immutable financial audit, scoped booth identity, idempotent print
dan webhook, checksum media/config, retention policy, diagnostic redaction,
offline recovery, dan fail-closed transition.

## Bukti M1

- Electron + React operator shell memakai custom app protocol, CSP, sandbox,
  context isolation, navigation denial, dan named validated IPC.
- Native SQLite memakai WAL, synchronous FULL, foreign key, optimistic state
  version, event ledger, artifacts, serta durable outbox.
- Atomic filesystem journal dapat direkonsiliasi dari SQLite setelah entry
  hilang; artifact yang bentrok ditolak, bukan ditimpa diam-diam.
- Sesi paid selesai saat cloud offline, lalu outbox menjadi ACK hanya setelah
  reconnect dan ACK terverifikasi.
- Camera crash masuk `RECOVERY_REQUIRED`, dapat restart/resume sampai complete;
  ambiguous print tidak melakukan auto-reprint.
- Clean install, format, lint, typecheck, 39 test, build, Electron smoke, dan
  dependency audit nol vulnerability lulus lokal.
- CI definition tersedia, tetapi GitHub menghentikan job sebelum step dimulai
  karena billing/spending limit akun.

## Risiko dan blocker

- GitHub Actions billing/spending limit harus diselesaikan dan CI diulang.
- Branch protection private repository memerlukan GitHub Pro.
- Customer kiosk, hardware SDK/driver, QRIS, MySQL/control plane, signed
  installer, production observability, deployment, dan pilot belum dibuat.
- Klaim kompatibilitas Canon/Sony/DNP belum boleh dibuat sebelum qualification
  matrix dan test perangkat nyata lulus.

## Next milestone

M2 membangun customer-facing kiosk vertical slice: package/frame/delivery
selection, device preflight, countdown, capture review/retake policy, dan final
frame composition. Simulator tetap dipakai sampai qualification Canon/DNP
memiliki test matrix dan perangkat nyata.
