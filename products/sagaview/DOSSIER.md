# SagaView Dossier

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView berdasarkan runtime production aktif.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED`
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal

## Overview produk

`CONFIRMED`: SaaS local-first untuk workflow self-photo studio setelah sesi.

## Masalah yang diselesaikan

Pemilihan nomor file manual, framing/print rawan salah, volume foto besar,
privacy foto customer, offline/reconnect, dan perangkat studio.

## Target pengguna

Owner/admin studio, operator Windows, customer saat selection, dan support
SagaDev.

## Persona pengguna

- Owner: mengelola plan, frame, device, dan kesehatan operasional.
- Admin: mengelola frame, setting, serta report sesuai capability.
- Operator: menjalankan session, import, recovery, export, dan print.
- Customer: memilih foto/frame dan mereview hasil dalam sesi temporary.
- `NEEDS CONFIRMATION`: segmentasi studio berdasarkan volume/perangkat.

## Value proposition

> SagaView menyelesaikan setelah sesi.

Foto tetap local-first, sementara workflow selection sampai output 4R lebih
terstruktur.

## Use case

Provisioning, Owner Console, device activation, exclusive Studio lease,
session/folder, import 50/200/500 foto, frame catalog, selection, editor,
review, output 4R, offline recovery, emergency transfer, completion/privacy
handoff, support diagnostics, trial dua fase, subscription, dan billing.

## Fitur utama

Owner Console, Studio Console, device lease, session workflow, frame catalog,
editor/review, export/print, recovery, support, trial, plan, dan billing.

## Fitur MVP

`CONFIRMED`: journey Studio, output 4R, completion/privacy handoff,
Owner Console, trial dua fase, subscription, dan public self-service aktif di
production.

## Roadmap

1. Controlled cohort tiga studio dan observasi support/incident.
2. Finalisasi limit kuantitatif Growth/Pro dan policy komersial/legal.
3. Evaluasi readiness mass self-service berdasarkan telemetry ter-redact.
4. `NEEDS CONFIRMATION`: timing integrasi SagaBook; subscription tetap terpisah.

## User journey

Owner memilih plan → provisioning → operator mengaktifkan device → membuat
session → import → customer memilih/edit → review → export/print → customer
memanggil operator → operator memverifikasi handoff → cleanup/reset.

## User flow

Device lease hanya mengunci Studio/start-session. Owner Console dapat digunakan
dari browser setelah login. Customer tidak mereset sesi sendiri; cleanup
recovery state, error/offline/reconnect/retry, dan emergency transfer
fail-closed. Entitlement ditentukan server; UI hanya merender snapshot.

## Business model

Subscription SaaS bulanan per produk. SagaView dan SagaBook tetap memiliki
subscription, entitlement, ledger, serta cancellation terpisah.

## Pricing

- Growth Rp200.000 per bulan.
- Pro Rp500.000 per bulan.
- Trial 14 hari: 7 hari full access lalu 7 hari plan-limited, tanpa auto-charge.
- Bundle ditunda.

Limit lengkap per paket, hardware, setup, dan support premium:
`NEEDS CONFIRMATION`.

## Kompetitor

`NEEDS CONFIRMATION`: competitor research. Kategori pembanding: gallery
selection, kiosk/photo booth software, print workflow, dan manual folder/file
selection.

## Diferensiasi produk

`CONFIRMED`: local-photo boundary, 50/200/500 workflow, exact 4R output,
offline recovery, dan pemisahan Owner Console dari device-bound Studio.

## Brand positioning

Local-first studio workflow setelah sesi—dari folder ke hasil 4R.

## Messaging

- “Pilih, atur, review, dan cetak tanpa mencatat nomor file.”
- “Foto customer tetap di perangkat studio.”
- “Owner Console berbeda dari perangkat Studio yang menjalankan sesi.”

## FAQ

**Apakah foto masuk cloud?** Tidak sebagai product contract; metadata
operasional tertentu tetap diperlukan.

**Bisa dipakai tanpa SagaBook?** Ya, produk dijual satuan.

**Apakah trial 14 hari live?** Ya. Enforcement dua fase aktif server-side dan
tanpa auto-charge.

**Apakah semua komputer dapat memulai sesi?** Owner Console dapat diakses lintas
device, tetapi Studio/start-session tetap mengikuti entitlement dan exclusive
device lease.

## Technical overview

Studio frontend/PWA local-first; backend menyimpan account, membership produk,
entitlement, device/session metadata, frame sync, subscription, payment state,
dan operational state. Role/capability, session/cookie, subscription, audit,
dan cancellation SagaView terpisah dari SagaBook.

## Integrasi

Payment provider, notification, printer Windows/Epson, dan future SagaBook
account-link seam. Satu canary Tokopay bernilai rendah telah membuktikan jalur
callback exactly-once; release tidak membuat transaksi kedua.

## Data yang digunakan

Organization, membership, product account, entitlement, device lease, session,
frame metadata, redacted completion event, subscription, payment state, dan
audit. Customer photo bytes tetap lokal; privacy mode memasking nama output
pada UI customer.

## Reliability, security, dan operations

- Exact backend/Studio release immutable dan rollback tersedia.
- Additive migration, encrypted backup, disposable restore, deploy gate, dan
  rollback compatibility lulus.
- HSTS dan frame policy konsisten pada public, Laravel, dan Studio HTML routes.
- Monitoring pascadeploy menunjukkan services aktif, failed job nol, dan tidak
  ada error-journal baru pada window verifikasi.
- Physical Windows/Epson dan recovery memakai owner attestation carry-forward;
  artifact restricted tetap berada di evidence privat.

## Risiko dan asumsi

- Business readiness mass-scale belum dibuktikan melalui controlled cohort dan
  observasi support nyata.
- Hardware/browser/storage behavior tetap memerlukan UAT per studio.
- `ASSUMPTION`: Epson L8050 adalah printer pilot utama.
- Identitas badan usaha/pajak dan policy lintas produk masih perlu finalisasi
  owner sebelum ekspansi penjualan luas.

## KPI dan success metrics

`PROPOSAL`: activation success, session completion, import duration, recovery
rate, output success, support contact, trial-to-paid, dan studio retention.
Target kuantitatif: `NEEDS CONFIRMATION`.

## Sales dan content

Demo session end-to-end, jelaskan data boundary, hardware requirement, plan,
trial, support, dan batas klaim. Gunakan foto sintetis/non-PII dan
[Pitch Demo](PITCH_DEMO.md).

## Ide konten pemasaran

200 foto tanpa upload cloud; preview-to-print 4R; Owner vs Studio Console;
offline recovery.

## Contoh caption

`PROPOSAL`: “Dari 200 foto ke hasil 4R tanpa mencatat nomor file. SagaView
menjaga selection, framing, dan output dalam satu alur local-first.”

## Ide campaign

`PROPOSAL`: “200 Photos, One Session” sebagai controlled demo dengan foto
sintetis/non-PII.

## Sales talking points

Demo session end-to-end, jelaskan local-photo boundary, harga/trial, device
lease, support, dan batas klaim business readiness.

## Objection handling

- “Internet studio tidak stabil”: jelaskan offline/reconnect scope dan batasnya.
- “Bisa di semua komputer?”: Owner Console dan Studio device lease berbeda.
- “Apakah langsung cetak?”: output harus dikonfigurasi dan diuji pada printer
  studio.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagaview).
