# SagaView Dossier

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView berdasarkan runtime production aktif.

## Konteks dan status bukti

- Updated: 4 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED`
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal
- Candidate UI terbaru: `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`

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

Katalog frame terisi production memakai alur `cari -> filter kategori/status
-> verifikasi frame`. Mobile 390x844 kini memakai kartu horizontal ringkas dan
desktop 1440x900 memakai empat kolom, sehingga delapan frame lebih cepat
dipindai. Nama, preview, kategori, slot, orientasi, harga, serta status tetap
terbaca; launcher bantuan masuk alur halaman saat tertutup dan tidak lagi
menutupi kartu mobile. Local frame tetap dapat dilihat saat offline dan cloud
recovery fail-closed. Customer picker, device/session/privacy, serta output 4R
tidak berubah.

Bantuan perangkat production sekarang fail-soft ketika backend Support Hub
belum aktif. Launcher tetap terlihat dan menyediakan `Unduh diagnostik aman`
serta `Salin format laporan`; keduanya dibangun dari status teknis ter-redact
tanpa foto, PII customer, identitas tenant/device, credential, token, atau path
file. Endpoint online baru dicoba setelah aksi operator dan kegagalan 404 tidak
lagi menghilangkan fallback. Panel touch-safe, aksesibel, bebas overflow, dan
tidak menutupi signature produk pada mobile/desktop.

Changelog Studio candidate sekarang mengutamakan release terbaru, menyediakan
pencarian, filter status, enam batch versi, satu detail terbuka, empty/reset
recovery, dan CTA kembali ke Session. Source kumulatif `2bb868f` juga menutup
delapan respons font 403 dari junction dependency dan mengembalikan fokus ke
konten utama sesudah navigasi route. Candidate lulus focused 3/3, gabungan
accessibility/navigation 12/12, 156 unit, 99 E2E, import 50/200/500, build,
visual exact 390x844/1440x900 dengan Work Sans, dan audit 0.
Production belum berubah karena backup/restore exact candidate dan approval
deploy belum tersedia; status ini tidak mengubah device/session, foto,
permission, local-first, frame, payment, atau output 4R.

Candidate sidebar deep-route memperbaiki konteks navigasi pada laptop Windows
compact. Sebelumnya `/admin/install` aktif pada 1280x720 tetapi item Install App
berada di bawah area sidebar yang terlihat. Source kumulatif `7ad38ef` kini
menjalankan scroll `nearest` ke route aktif, tanpa mengambil fokus dari konten
utama dan dengan reduced-motion. Regression mencakup 390x844, 1280x720,
1440x900, 1512x982, dan 2560x1440; focused 6/6, unit 156/156, full E2E 105/105,
build/budget, forced-colors, no-overflow, target 44 piksel, satu watermark, dan
dependency audit nol lulus. Production belum berubah karena receipt
backup/restore exact S110 dan approval belum tersedia.

Candidate dialog PIN zoom source kumulatif `808470c1` memperbaiki gerbang
override paket Studio. Dialog sekarang mempunyai nama aksesibel, focus trap,
Escape, body scroll internal, overlay di atas form asal, input 44 piksel, serta
close/action 48 piksel. Matriks 390x844, 1280x720, 1440x900, dan reflow efektif
125/150/200 persen lulus Axe, keyboard/focus, forced-colors, reduced-motion,
no-overflow, dan satu watermark. Full E2E menghasilkan 106 pass dan satu
capture-only skip; unit 156/156, build/budget, serta audit dependency nol.
Production belum berubah karena receipt backup/restore exact S111 dan approval
belum tersedia; validasi PIN dan kontrak device/session, foto, tenant, payment,
frame, serta output 4R tidak berubah.

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

`CONFIRMED` — kontrak ini aktif di production. Source backend aktif adalah
`b504dae30aee90a2b55e1e670d1934e2fc524218`, release
`20260803221207-b504dae`. Source Studio aktif adalah
`57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
`20260803221207-57c0337`; rollback Studio adalah
`20260803215526-be72510`. Session, Frames, dan Install App kini memakai render
awal SSR/client deterministik sehingga tidak memicu hydration mismatch. Output
Settings hanya menampilkan action simpan saat
dirty, tidak menutup konten mobile, mempertahankan action sticky desktop, dan
menjaga status `Belum disimpan` tetap jujur. Kontrak folder, device, foto lokal,
payment, dan output PNG 4R tidak berubah.

General Settings juga memakai action simpan kontekstual. Action hilang ketika
form bersih, mengikuti konten tanpa horizontal overflow pada mobile 390x844,
dan tetap sticky pada desktop. Accessible name, target 44 px, forced-colors,
reduced-motion, paket sesi, promo, kategori/harga, dan workflow operasional
dipertahankan.

Consent Dashboard sekarang membedakan loading, offline/error, populated,
filtered-empty, dan recovered. Gagal fetch tidak lagi menyamar sebagai data
kosong; retry tersedia tanpa memutasi izin atau file foto. Filter selected state,
target 44 px, mobile/desktop, keyboard, forced-colors, reduced-motion, dan tepat
satu `Powered by SagaView` dijaga. Kontrak backend, customer flow, local-first,
privacy, dan output 4R tidak berubah.

Install App sekarang membedakan prompt otomatis siap, install manual, dan
aplikasi sudah terpasang. Operator selalu mendapat satu action utama yang jujur,
status live, panduan Chrome/Edge atau iOS, recovery cek status, dan jalur kembali
ke Session. CTA utama 48 px serta keyboard, forced-colors, reduced-motion,
mobile/desktop, no-overflow, dan satu `Powered by SagaView` tervalidasi. Device,
session, foto lokal, backend, payment, tenant isolation, dan output 4R tidak
berubah.

Navigasi Studio Console mobile sekarang menunjukkan posisi `Menu n/8`, memakai
tombol sebelumnya/berikutnya 44 px, dan memusatkan route aktif. Operator dapat
menemukan Output, Izin Foto, Changelog, serta Install App tanpa menebak bahwa
tab dapat digeser. Session, permission, local-first, customer flow, backend,
payment, dan output 4R tidak berubah.

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
