# SagaView Dossier

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView berdasarkan runtime production aktif.

## Konteks dan status bukti

- Updated: 1 Agustus 2026
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

UI production memakai shell operasional solid dengan hierarchy lokasi,
tenant, status, dan aksi utama yang jelas. Target interaktif minimal 44 px,
motion dibatasi 180 ms, forced-colors/reduced-motion didukung, dan tepat satu
`Powered by SagaView` tampil pada surface aplikasi/public/customer tanpa masuk
ke export, print, invoice, atau receipt.

Pemilihan frame production memakai preview, selected state, jumlah cetakan,
serta satu aksi `Terapkan & lanjut`. Editor dan Review kini menjadi alur
vertikal yang dapat dijangkau pada mobile 390x844, sambil mempertahankan
workspace tiga/dua kolom pada desktop, output 4R, status lokal/offline,
error/retry, stepper aktif, dan target sentuh 44/48 px.

Mulai sesi production memakai checklist perangkat, paket, folder, frame, dan
output serta satu CTA kontekstual 48 px. Utility cloud/recovery yang sehat
diringkas; detail terbuka otomatis saat operator perlu bertindak. Alur tetap
fail-closed untuk device, import safety, frame/output recovery, dan offline.

Display Settings production kini memakai alur `pilih tampilan -> periksa
preview -> sesuaikan -> simpan`. Pada mobile 390x844 preview tampil sebelum
pengaturan tanpa overflow; preset memiliki state `Dipakai`, keyboard focus,
target 44 px, status local/offline, validasi warna, dan recovery save. Kontrak
frame customer, device/session/privacy, serta output 4R tidak berubah.

Katalog frame terisi production kini memakai alur `cari -> filter kategori/
status -> verifikasi frame`. Mobile 390x844 memakai satu kolom yang legible dan
desktop 1440x900 memakai tiga kolom stabil. Nama, preview, kategori, slot,
orientasi, harga, serta status aktif/nonaktif tidak lagi terpotong; local frame
tetap dapat dilihat saat offline dan cloud recovery fail-closed. Customer
picker, device/session/privacy, serta output 4R tidak berubah.

## Fitur MVP

`CONFIRMED`: journey Studio, output 4R, completion/privacy handoff,
Owner Console, trial dua fase, subscription, dan public self-service aktif di
production.

## Roadmap

1. Founding Studio Pilot tiga studio dan observasi support/incident.
2. Verifikasi implementasi dan penggunaan limit Growth/Pro pada cohort nyata.
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

Growth: 1 device, 10 frame aktif, 3 preset, offline 24 jam, 2 GB aset frame
cloud, dan laporan dasar. Pro: 4 device, 50 frame aktif, 10 preset, offline 168
jam, 10 GB aset frame cloud, laporan lanjutan, activity log, dan priority
support. Session/foto dipasarkan unlimited dengan fair-use; foto tetap lokal.

`CONFIRMED` — kontrak ini aktif di production. Source Studio aktif adalah
`a130ee5939f64fd76d575908b7748bacd75a6878`, release
`20260801101538-a130ee5`; rollback Studio adalah
`20260801073058-fa78207`.

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
- Responsive production audit pada 390x844, 1024x768, dan 1440x900 tidak
  menemukan overflow, target audit di bawah 44 px, atau Axe serious finding.

## Risiko dan asumsi

- Business readiness mass-scale belum dibuktikan melalui controlled cohort dan
  observasi support nyata.
- Hardware/browser/storage behavior tetap memerlukan UAT per studio.
- `ASSUMPTION`: Epson L8050 adalah printer pilot utama.
- Identitas badan usaha/pajak dan policy lintas produk masih perlu finalisasi
  owner sebelum ekspansi penjualan luas.

## KPI dan success metrics

`CONFIRMED` untuk exit pilot: minimal 3 studio, onboarding rata-rata maksimal
60 menit, activation maksimal 1 hari, 50 session nyata total dan minimal 10 per
studio, minimal 95% core journey tanpa engineer, 4R/offline/transfer lulus per
studio, SLA minimal 90%, dan minimal 2 studio lanjut berbayar. Baseline aktual
masih `NEEDS CONFIRMATION`.

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
