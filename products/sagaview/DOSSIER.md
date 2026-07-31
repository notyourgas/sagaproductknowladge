# SagaView Dossier

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView tanpa mencampur fitur live dengan release candidate.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `PRODUCTION_DEPLOYED` untuk Studio 4R; kandidat lain
  `IMPLEMENTED_NOT_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED` untuk Studio v0.20.2;
  `NOT_PRODUCTION_ACTIVATED` untuk backend/public self-service candidate
- Business readiness: `BLOCKED`

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
- Operator: menjalankan session, import, recovery, export, dan print.
- Customer: memilih foto/frame dan mereview hasil.
- `NEEDS CONFIRMATION`: segmen studio berdasarkan volume/perangkat.

## Value proposition

> SagaView menyelesaikan setelah sesi.

Foto tetap local-first, sementara workflow selection sampai output 4R lebih
terstruktur.

## Use case

Provisioning, device activation, session/folder, import 50/200/500 foto,
selection, editor, review, output 4R, offline recovery, emergency transfer, dan
support diagnostics.

## Fitur utama

Owner Console, Studio Console, device lease, session workflow, frame catalog,
editor/review, export/print, trial/plan candidate, dan billing candidate.

## Fitur MVP

`CONFIRMED`: core Studio workflow, output 4R, serta operator-controlled session
completion/privacy handoff live. Backend trial, subscription, payment callback,
Owner Console context fix, serta public self-service adalah candidate yang
belum live.

## Roadmap

1. Selesaikan canary terotorisasi yang masih pending/unpaid dan verifikasi
   exactly-once callback evidence.
2. Promote backend candidate/migration dan public self-service atomik.
3. Verify Owner Console, trial 7+7, billing, monitoring, dan public smoke.
4. Controlled studio cohort dan support observation.
5. `NEEDS CONFIRMATION`: SagaBook integration timing.

## User journey

Owner memilih plan → provisioning → operator mengaktifkan device → membuat
session → import → customer memilih/edit → review → export/print → customer
memanggil operator → operator memverifikasi handoff → cleanup/reset.

## User flow

Device lease hanya mengunci Studio/start-session. Owner Console seharusnya
dapat digunakan dari browser setelah login. Customer tidak mereset sesi
sendiri; cleanup recovery state, error/offline/reconnect/retry, dan emergency
transfer harus fail-closed.

## Business model

Subscription SaaS bulanan per produk. Hardware, setup, support premium, dan
transaction fee: `NEEDS CONFIRMATION`.

## Pricing

`CONFIRMED`: Growth Rp200.000 dan Pro Rp500.000 per bulan. Bundle ditunda.
Limit lengkap per paket: `NEEDS CONFIRMATION`.

## Kompetitor

`NEEDS CONFIRMATION`: competitor research. Kategori pembanding: gallery
selection, kiosk/photo booth software, print workflow, dan manual folder/file
selection.

## Diferensiasi produk

`PROPOSAL`: local-photo boundary, 50/200/500 workflow, exact 4R output,
offline recovery, dan pemisahan Owner vs device-bound Studio.

## Brand positioning

Local-first studio workflow setelah sesi—dari folder ke hasil 4R.

## Messaging

- “Pilih, atur, review, dan cetak tanpa mencatat nomor file.”
- “Foto customer tetap di perangkat studio.”
- “Owner Console berbeda dari perangkat Studio yang menjalankan sesi.”

## FAQ

**Apakah foto masuk cloud?** Tidak sebagai product contract; metadata tertentu
tetap diperlukan.
**Bisa dipakai tanpa SagaBook?** Ya, produk dijual satuan.
**Apakah trial 14 hari live?** Belum boleh diklaim sampai backend candidate
production-activated.

## Technical overview

Studio frontend/PWA local-first, cloud backend untuk account, entitlement,
device/session metadata, frame sync, subscription, dan operational state.

## Integrasi

Payment, notification, printer Windows/Epson, future SagaBook handoff.
Provider nyata harus diverifikasi per exact release.

## Data yang digunakan

Organization, membership, product account, entitlement, device lease, session,
frame metadata, redacted completion event, subscription, payment state, dan
audit. Customer photo bytes dirancang tetap lokal; privacy mode memasking nama
output pada UI customer.

## Risiko dan asumsi

- Provider/payment candidate belum live.
- Hardware/browser/storage behavior memerlukan physical acceptance.
- `ASSUMPTION`: Epson L8050 adalah printer pilot utama.
- Public copy tidak boleh mendahului server enforcement.

## KPI dan success metrics

`PROPOSAL`: activation success, session completion, import duration,
recovery rate, output success, support contact, trial-to-paid, dan studio
retention. Target: `NEEDS CONFIRMATION`.

## Ide konten pemasaran

200 foto tanpa upload cloud; preview-to-print 4R; Owner vs Studio Console;
offline recovery.

## Contoh caption

`PROPOSAL`: “Dari 200 foto ke hasil 4R tanpa mencatat nomor file.
SagaView menjaga selection, framing, dan output dalam satu alur local-first.”

## Ide campaign

`PROPOSAL`: “200 Photos, One Session” sebagai controlled demo dengan foto
sintetis/non-PII dan hasil physical UAT nyata.

## Sales talking points

Demo session end-to-end, jelaskan data boundary, hardware requirement, plan,
trial, support, dan apa yang belum live.

## Objection handling

- “Internet studio tidak stabil”: jelaskan offline/reconnect scope dan batasnya.
- “Bisa di semua komputer?”: Owner Console dan Studio device lease berbeda.
- “Apakah langsung cetak?”: output harus dikonfigurasi dan diuji pada printer
  studio.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagaview).
