# SagaBooth Dossier

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| windows-and-control-plane | [Source](https://github.com/notyourgas/sagabooth/tree/source/current) | `0bdee15db0e0a9a6ebff55573655fe61cdec97ba` | `SOURCE_PUSHED` |

Repo privat dan source M1 `0bdee15` cocok dengan provenance knowledge sebelumnya. Semua source tersimpan pada ref kanonik. Customer kiosk, camera/printer hardware, QRIS, signed installer, control plane dan pilot tetap merupakan gate; backup GitHub tidak menutup gate tersebut.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

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

## Target pengguna

Operator booth, pemilik/PIC usaha dan administrator control plane; customer kiosk merupakan target milestone berikutnya.

## Persona pengguna

Operator booth, pemilik/PIC usaha dan administrator control plane; customer kiosk merupakan target milestone berikutnya. Persona ini berbasis role, bukan profil customer nyata.

## Value proposition

Sesi dari pembayaran terverifikasi ke capture/render/print/delivery memakai checkpoint durable dan adapter perangkat yang eksplisit.

## Use case

Konfigurasi -> order/payment verified -> countdown/capture -> render -> print/delivery -> completed; ketidakpastian menuju recovery.

## Fitur utama

M1: Electron/React operator shell, native SQLite ledger, filesystem journal, outbox, deterministic media dan simulator payment/camera/printer/cloud.

## Fitur MVP

M1: Electron/React operator shell, native SQLite ledger, filesystem journal, outbox, deterministic media dan simulator payment/camera/printer/cloud. Scope yang belum diterima tidak disebut live hanya karena source tersedia.

## Roadmap

Customer kiosk, SDK/driver, Canon/Sony/DNP qualification, QRIS, signed installer, control plane/VPS dan pilot belum ditutup. Print ambigu tidak otomatis diulang. Urutan acceptance mengikuti Product/GAPS dan runner produk.

## User journey

Konfigurasi -> order/payment verified -> countdown/capture -> render -> print/delivery -> completed; ketidakpastian menuju recovery.

## User flow

Konfigurasi -> order/payment verified -> countdown/capture -> render -> print/delivery -> completed; ketidakpastian menuju recovery. Permission, error, uncertainty dan recovery tetap bagian kontrak source.

## Business model

Internal assisted pilot dahulu; licensing/SaaS dipersiapkan setelah workflow dan hardware stabil. Commercial pricing belum dikunci oleh milestone source ini.

## Pricing

Tidak ada keputusan harga baru. Gunakan harga/scope yang sudah tercatat di [PRODUCT](PRODUCT.md) dan proposal/kontrak terkait. Angka yang belum dikunci tetap NEEDS CONFIRMATION.

## Kompetitor

NEEDS CONFIRMATION: belum ada benchmark kompetitor terkini yang disahkan pada milestone source ini. Tidak menambahkan klaim perbandingan atau rekomendasi vendor tanpa riset/bukti baru.

## Diferensiasi produk

Sesi dari pembayaran terverifikasi ke capture/render/print/delivery memakai checkpoint durable dan adapter perangkat yang eksplisit. Ini menjelaskan workflow source, bukan keunggulan bisnis yang telah diukur.

## Brand positioning

Software instant photobooth dengan aplikasi Windows lokal dan control plane web; berbeda dari self-photo workflow SagaView. Positioning final tetap mengikuti keputusan founder yang tercatat.

## Messaging

Sampaikan fungsi yang mempunyai bukti scope dan tanggal. Customer kiosk, SDK/driver, Canon/Sony/DNP qualification, QRIS, signed installer, control plane/VPS dan pilot belum ditutup. Print ambigu tidak otomatis diulang.

## FAQ

Apakah repo lengkap berarti siap production? Tidak; source backup dan acceptance runtime berbeda. Apakah pricing/provider berubah? Tidak pada sinkronisasi ini. Source terbaru dibaca dari ref pada registry.

## Technical overview

Electron/SQLite/filesystem lokal; NestJS/MySQL/Next.js adalah arsitektur target control plane. Keberadaan source tidak membuktikan semua komponen target selesai.

## Integrasi

Electron/SQLite/filesystem lokal; NestJS/MySQL/Next.js adalah arsitektur target control plane. Keberadaan source tidak membuktikan semua komponen target selesai. Setiap provider/device mempunyai activation/acceptance tersendiri; identifier dan credential tidak masuk knowledge publik.

## Data yang digunakan

Role/workflow dan metadata produk sesuai source; media/attendance/financial data mengikuti izin dan retention kontrak. Knowledge ini tidak menyimpan customer data, credentials atau raw receipts.

## Risiko dan asumsi

Customer kiosk, SDK/driver, Canon/Sony/DNP qualification, QRIS, signed installer, control plane/VPS dan pilot belum ditutup. Print ambigu tidak otomatis diulang. Unknown tidak ditutup dengan label SOURCE_PUSHED.

## KPI dan success metrics

KPI teknis: source dapat ditelusuri ke repo/ref/SHA, critical journey selesai tepat sekali dan recovery mempunyai bukti. Target bisnis/conversion/adoption terukur belum ditetapkan oleh audit ini; source push bukan KPI omzet.

## Ide konten pemasaran

PROPOSAL: jelaskan satu workflow yang tercatat dan tunjukkan batas fitur/source versus activation; gunakan demo sintetis berlabel, tanpa mengarang customer/testimoni.

## Contoh caption

PROPOSAL: "Kenali alur sagabooth dan cek milestone yang sudah terverifikasi sebelum mulai operasional." Draft ini bukan keputusan campaign atau klaim seluruh produk siap.

## Ide campaign

PROPOSAL: edukasi workflow dan invitation demo sesuai status produk; real customer campaign hanya setelah acceptance dan scope publiknya jelas.

## Sales talking points

Sesi dari pembayaran terverifikasi ke capture/render/print/delivery memakai checkpoint durable dan adapter perangkat yang eksplisit. Jelaskan scope implementation, kebutuhan perangkat/provider dan gate yang masih terbuka sebelum memberi janji komersial.

## Objection handling

Source tersimpan bukan jaminan hardware/provider atau hasil usaha. Tunjukkan evidence yang cocok dengan source/release dan uraikan gate berikutnya; hindari janji ROI/SLA yang belum diputuskan.

## Keputusan dan gap

Lihat [PRODUCT](PRODUCT.md), [GAPS](../../GAPS.md) dan [source registry](../../docs/SOURCE_REGISTRY.md). Customer kiosk, SDK/driver, Canon/Sony/DNP qualification, QRIS, signed installer, control plane/VPS dan pilot belum ditutup. Print ambigu tidak otomatis diulang.
