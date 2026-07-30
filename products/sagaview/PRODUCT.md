# SagaView Product Knowledge

Updated: 31 Juli 2026
Evidence status: partial production + release candidate

## Ringkasan

SagaView adalah SaaS local-first untuk workflow self-photo studio setelah sesi
foto: device activation, customer/session/folder, import foto, frame selection,
photo selection, editor, review, export, print, offline recovery, dan support.

Positioning singkat:

> SagaView menyelesaikan setelah sesi.

## Target pengguna

- Owner dan admin self-photo studio.
- Operator Windows studio.
- Customer yang memilih frame dan foto.
- SagaDev support/operator.

## Masalah yang diselesaikan

- Customer memilih nomor file secara manual.
- Operator mengatur frame/print dengan workflow yang mudah salah.
- Foto dalam jumlah besar harus tetap cepat dan private.
- Studio membutuhkan offline/reconnect dan transfer perangkat yang aman.

## Prinsip data

- Foto customer dan export tetap berada di device studio.
- Cloud menyimpan account, entitlement, device/session metadata, frame tenant,
  dan operational state yang memang dibutuhkan.
- Diagnostics harus ter-redact dan tidak membawa PII, credential, token, raw
  local storage, atau path file customer.

## Core journey

1. Owner/provisioning menyiapkan account dan plan.
2. Operator mengaktifkan device Studio Console.
3. Operator membuat session dan memilih folder.
4. Sistem mengimpor 50/200/500 foto.
5. Customer memilih frame dan foto.
6. Customer mengatur foto pada slot frame.
7. Operator/customer review output.
8. Sistem export/print 4R.
9. Session selesai dan data dihapus/ditahan sesuai policy.

## Fitur utama

- Owner Console dan Studio Console.
- Device activation dan exclusive lease.
- Session/customer/folder workflow.
- Import 50/200/500 foto.
- Frame catalog dan frame cloud sync.
- Photo selection, editor, review, output recovery.
- Offline/reconnect dan emergency transfer.
- Support readiness/diagnostics.
- Trial, plan/device limits, subscription, dan payment callback candidate.

## Commercial contract

### Harga satuan bulanan

| Paket | Harga |
|---|---:|
| Growth | Rp200.000 |
| Pro | Rp500.000 |

### Trial contract

- Hari 1-7: `full_access`.
- Hari 8-14: `plan_limited`.
- Hari 15-21: read-only/export grace.
- Trial satu organisasi+produk dan tidak dapat di-reset lewat email, plan, atau
  pergantian device.

Contract trial terbaru belum boleh disebut production-activated sampai backend
kumulatif dipromosikan.

## Account dan device boundary

- Owner Console dapat dibuka dari browser/device mana pun setelah login.
- Device activation/exclusive lease hanya berlaku pada Studio Console dan
  start-session.
- Identity yang sama tidak membuat role Owner SagaBook menjadi Admin SagaView.
- Entitlement, role, session, subscription, dan ledger terpisah.

## Output 4R

- Portrait: `1200x1800`.
- Landscape: `1800x1200`.
- Resolution: 300 DPI.
- Editor/review memakai canonical ratio 4R.
- Slot dapat zoom/geser/bleed, tetapi canvas melakukan clipping.
- Postcard/Square tidak ditampilkan karena renderer belum mendukung.

## Status saat ini

Status keseluruhan: `PARTIAL_PRODUCTION_DEPLOYED`.

### Sudah production

- Studio frontend fixed 4R.
- Release: `20260731023744-1c5678c`.
- Source: `1c5678c6fa8b180ebf4716d7060c2cb058c02317`.
- Public output/session/changelog smoke lulus.

### Belum production

- Backend cumulative candidate:
  `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Owner Console context fix.
- Trial dua fase server-side.
- Subscription Growth/Pro flow.
- Payment callback exactly-once.
- Device trust dan exclusive lease hardening.

Blocker: belum ada Tokopay canary/paid callback production yang terikat ke
exact runtime candidate.

## Belum boleh diklaim

- Backend candidate terbaru belum live.
- Trial dua fase belum production-activated.
- Payment/provider belum terverifikasi hanya karena test otomatis lulus.
- Foto customer tidak disimpan di cloud.

## Ide konten

- Mengapa memilih hasil print lebih baik daripada mencatat nomor file.
- Workflow 200 foto tanpa mengunggah foto customer ke cloud.
- Output 4R yang konsisten dari preview sampai print.
- Perbedaan Owner Console dan device-bound Studio Console.
