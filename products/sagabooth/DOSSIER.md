# SagaBooth Dossier

## Tujuan dokumen

Menjaga scope produk, workflow, arsitektur, safety, dan readiness SagaBooth
tetap terpisah dari SagaBook serta SagaView.

## Konteks dan status bukti

- Updated: 16 Agustus 2026
- Source: private repository `notyourgas/sagabooth`
- Exact source: `c08765f3a5ab40ff39e5741c1abfc609006ceef5`
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

## Bukti M0

Strict TypeScript, runtime Zod contracts, guarded state machine, deterministic
camera/printer/payment simulators, 27 test, format/lint/typecheck/build, dan npm
audit nol vulnerability. CI definition tersedia tetapi GitHub tidak memulai job
karena billing/spending limit akun.

## Risiko dan blocker

- GitHub Actions billing/spending limit harus diselesaikan dan CI diulang.
- Branch protection private repository memerlukan GitHub Pro.
- Runtime app, database migration, hardware SDK/driver, QRIS, installer,
  observability, deployment, dan pilot belum dibuat.
- Klaim kompatibilitas Canon/Sony/DNP belum boleh dibuat sebelum qualification
  matrix dan test perangkat nyata lulus.

## Next milestone

M1 membangun vertical slice lokal dengan simulator: Electron shell, SQLite,
filesystem session journal, durable outbox, recovery checkpoint, serta satu
alur paid → capture → render → print/delivery → completed tanpa hardware nyata.
