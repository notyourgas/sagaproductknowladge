# SagaBook Product Knowledge

Updated: 2 Agustus 2026
Evidence status: production + source verified

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaBook. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Informasi yang
belum pasti dicatat di [GAPS](../../GAPS.md#sagabook).

## Konteks

Ringkasan ini memuat fakta public-safe per cut-off di atas; runtime yang dapat
berubah tetap harus diverifikasi sebelum klaim eksternal.

## Ringkasan

SagaBook adalah SaaS booking dan operating system untuk self-photo studio.
Produk mengatur perjalanan sebelum sesi: storefront, availability, checkout,
payment, confirmation, reminder, reschedule/cancel/refund request, calendar,
check-in, session handoff, reconciliation, report, dan tenant operations.

Positioning singkat:

> SagaBook mengatur sebelum sesi.

## Target pengguna

- Owner self-photo/photobox studio.
- Admin/manager/cashier/operator studio.
- Customer yang melakukan booking.
- SagaDev super admin untuk provisioning, subscription, dan support.

## Masalah yang diselesaikan

- Booking tersebar di chat dan rawan bentrok jadwal.
- Customer sulit melihat status pembayaran/perubahan booking.
- Operator perlu calendar, task, reminder, dan reconciliation yang konsisten.
- Owner memerlukan multi-branch, staff permission, audit, dan report.

## Core journey

### Customer

1. Memilih studio/cabang, paket, background, add-on, tanggal, dan slot.
2. Mengisi data yang diperlukan.
3. Memilih metode pembayaran.
4. Menerima secure booking link.
5. Memantau status booking dan pembayaran.
6. Mengajukan reschedule, perubahan, pembatalan, atau refund sesuai policy.
7. Menerima reminder, confirmation, dan result/gallery link bila tersedia.

### Operator

1. Menyiapkan cabang, resource, schedule, package, policy, dan payment.
2. Memantau booking/calendar/payment/Task Center.
3. Meninjau customer request.
4. Check-in dan menjalankan session handoff.
5. Menangani reconciliation, report, support, dan recovery.

## Fitur utama

- Public booking storefront.
- Availability dan capacity.
- Hosted/manual payment flow.
- Customer Booking Center.
- Reschedule, change, cancel, dan refund request.
- Task Center dan notification.
- Calendar, check-in, dan session lifecycle.
- Tenant, branch, staff, role, permission, dan audit.
- Payment monitoring dan reconciliation.
- Report dan export.
- SagaBook subscription portal dan trial lifecycle.
- Activation Center untuk setup tenant, preview/publish storefront, dan
  handoff menuju booking pertama.
- Support & Recovery Center untuk bantuan produk, human handoff, account
  recovery, dan bukti screenshot privat.

## Commercial contract

### Harga dan limit satuan bulanan

| Paket | Harga | Cabang | Staff | Scope utama |
|---|---:|---:|---:|---|
| Basic | Rp500.000 | 1 | 3 | Core booking dan laporan dasar. |
| Growth | Rp950.000 | 3 | 10 | Payment gateway, reminder, promo, reconciliation, dan laporan rinci. |
| Pro | Rp1.500.000 | Maks. 10 | Maks. 30 self-service | Custom domain, audit log, laporan lanjutan, dan priority support. |
| Custom | Berdasarkan penawaran | Di atas Pro | Di atas Pro | Kontrak, onboarding, dan support khusus. |

Volume booking dipasarkan sebagai unlimited dengan fair-use. Unlimited tidak
menghapus rate limit, abuse control, capacity, atau batas operasional yang aman.

### Trial 14 hari

- Hari 1-7: akses Pro dengan guardrail maksimal 2 cabang, owner + 4 staff, dan
  30 booking aktif/confirmed.
- Hari 8-14: limit paket yang dipilih dan maksimal 50 booking trial total.
- Hari 15-21: `grace_read_only`.
- Setelah hari 21: `suspended`, data tidak dihapus otomatis.
- Tidak ada auto-charge.

Trial dan subscription SagaBook tidak mengaktifkan SagaView.

### Policy booking default

Tenant dapat menerapkan policy sendiri. Bila belum ada override yang valid:

- satu reschedule gratis minimal 24 jam sebelum sesi;
- cancel minimal 48 jam: refund 100% dikurangi fee provider yang tidak dapat
  dikembalikan;
- cancel 24–48 jam: refund 50%;
- cancel kurang dari 24 jam atau no-show: tidak ada refund;
- refund selalu menunggu persetujuan operator dan tidak berjalan otomatis;
- pembatalan oleh studio: refund penuh atau reschedule gratis.

### Support, retention, dan offboarding

- Support Senin–Sabtu 10.00–18.00 WIB.
- P1 maksimal 4 jam kerja, P2 1 hari kerja, P3 3 hari kerja.
- Data aktif tersedia selama subscription.
- Setelah offboarding tersedia akses export 14 hari.
- Penghapusan data operasional maksimal 30 hari setelah permintaan
  terverifikasi; audit/security log 90 hari; tiket support 180 hari.
- Catatan keuangan/legal disimpan terpisah sesuai hukum yang berlaku.

Kontrak target SagaBook yang disetujui owner pada 31 Juli 2026, tetapi belum
aktif atau dipublikasikan:

- studio menjadi Controller untuk data booking customer; SagaBook/SagaDev
  menjadi Processor, dan menjadi Controller independen untuk account, billing,
  security, support, serta analytics teragregasi;
- booking PII 24 bulan lalu dianonimkan; ledger 5 tahun atau lebih bila hukum
  mewajibkan; bukti transfer manual 90 hari; expired hold 30 hari;
- percakapan/lampiran support 180/30 hari; log aplikasi/audit 90/365 hari;
  backup terenkripsi rolling 30 hari;
- pembatalan subscription berbayar memberi jendela read-only/export 30 hari,
  lalu data yang eligible dihapus maksimal 90 hari setelah jendela tersebut;
- implementasi, review legal Indonesia, identitas/kontak resmi, subprocessor,
  acceptance, dan publication gate wajib lulus sebelum klaim public launch
  tanpa batas.

## Account dan product boundary

- Satu identity dapat ditautkan ke organisasi yang sama.
- Membership, role, session, subscription, entitlement, dan ledger SagaBook
  tetap terpisah dari SagaView.
- Staff memakai akun individual.
- Akses tenant dan branch deny-by-default.
- Bundle belum dijual.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `PRODUCTION_ACTIVATED` untuk scope
yang dibuktikan di bawah. Business readiness: `NEEDS CONFIRMATION`.

- Customer Booking Center aktif di production.
- Source production terbaru pada cut-off: commit
  `b74ebb56099849dc17d759f4a9f0c8f1a04788e4`.
- Release production tercatat: `20260802024941-b74ebb5`.
- Storefront, admin, dan super-admin merespons public smoke.
- Tenant Onboarding dan First Booking Activation aktif melalui Activation
  Center yang tenant-scoped dan server-authoritative.
- Support & Recovery Center aktif untuk owner/admin dengan percakapan
  tenant-scoped, retry idempotent, dan human handoff.
- Platform Support aktif untuk operator dengan antrean SLA, ownership,
  penyelesaian auditable, dan perlindungan konflik antaroperator.
- Paket/limit, trial guardrail, fair-use, policy refund/reschedule, retention,
  offboarding, dan support SLA founder aktif secara server-authoritative.
- Kontrak target privacy/retention/offboarding yang lebih rinci telah
  owner-approved. Consent versioning, customer privacy request, owner triage,
  incident register, offboarding timeline, dan retention preview telah
  `IMPLEMENTED_NOT_DEPLOYED` pada source commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`. Penghapusan otomatis, publikasi,
  dan production activation tetap nonaktif.
- Routing WhatsApp per tenant sudah aktif di production pada release
  `20260731181921-378bcdf`, source
  `378bcdf4dac6c54d0bf421b5ef188103d82c6b40`: default memakai Fonnte
  SagaDev, owner dapat memilih token Fonnte studio sendiri, atau menonaktifkan
  otomatisasi. Credential tenant terenkripsi dan delivery menyimpan snapshot
  koneksi yang dipakai.
- Penyempurnaan UI/UX operasional dan storefront tenant telah
  `PRODUCTION_DEPLOYED` pada source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`, release
  `20260801213514-8edd762`. Cakupan mencakup hierarchy
  dashboard/admin, navigasi dan action staff, responsive storefront booking,
  state aksesibilitas, serta satu signature `Powered by SagaBook` yang tidak
  masuk ke invoice atau artefak bisnis. Release safety juga diperketat dengan
  backup serial, manifest checksum deterministik, receipt yang terikat ke
  source commit, dan preservasi checksum migration yang sudah aktif. Manifest,
  smoke publik, database audit, service health, dan rollback release lulus.
- Hardening auth dan fallback surface terbaru pada source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`. Login,
  signup, dan password recovery memiliki
  tepat satu signature `Powered by SagaBook`, target sentuh kritis minimal 44
  piksel, preview dekoratif tidak masuk urutan fokus, metode pemulihan dan CTA
  fallback minimal 44 piksel, serta state forced-colors/reduced-motion. Backup
  terenkripsi dan disposable restore exact-SHA lulus. Full backend 957/957,
  matriks browser desktop+mobile 296/296 melalui empat shard deterministik,
  production auth smoke 6/6, manifest, database audit 100, service health,
  public HTTP smoke, dan rollback gate lulus.
- Storefront dan Booking Center terbaru pada source
  `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802013852-76defd1`. Cabang yang
  memiliki alamat tetapi belum mempunyai URL Maps khusus tetap menyediakan
  pencarian Google Maps berbasis nama dan alamat. URL Maps eksplisit hanya
  diterima dari host Google HTTPS; link Maps dan kontrol salin kode memenuhi
  target sentuh minimal 44 piksel. Full backend 957/957, matriks browser
  desktop+mobile 298/298, backup terenkripsi, disposable restore exact-SHA,
  manifest, database audit 100, service health, public smoke, serta verifikasi
  production 390x844 dan 1440x900 lulus. URL lokasi presisi dari owner tetap
  opsional dan lebih diutamakan bila tersedia.
- Refinement CTA pemilihan cabang pada source
  `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802024941-b74ebb5`; rollback
  `20260802013852-76defd1` dipertahankan. Pada langkah Lokasi, tombol lanjut
  tidak lagi tampil disabled dan menutup katalog sebelum cabang dipilih.
  Setelah customer memilih cabang, tepat satu CTA aktif setinggi 48 piksel
  muncul dan melanjutkan ke langkah Paket. Kelima preset, Maps/WhatsApp,
  forced-colors, reduced-motion, dan satu signature `Powered by SagaBook`
  tetap utuh tanpa mengubah kontrak booking/payment. Full backend 957/957,
  browser desktop+mobile 298/298, typecheck, build, dependency audit 0,
  encrypted backup, disposable restore exact-SHA, database audit, service
  health, public smoke, serta production visual 390x844 dan 1440x900 lulus.
- Candidate signup tanpa approval owner dan trial kanonik 7 hari sudah
  `LOCAL_VALIDATED` pada source
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`. Production tetap memakai
  kontrak aktif di atas sampai ada release approval baru; status candidate
  `PRODUCTION HOLD`.

## Update terbaru

### Customer Booking Center

Before: secure link hanya berfungsi sebagai detail booking dasar.

After:

- status booking/payment dan detail jadwal tampil dalam satu halaman;
- customer dapat membuat request tanpa memutasi transaksi langsung;
- token expiring dan tenant/booking-scoped;
- request retry-safe/idempotent;
- cancel booking berbayar diarahkan ke refund;
- Task Center menerima handoff yang auditable.

### Tenant Onboarding dan First Booking Activation

Before: owner perlu membaca beberapa halaman setup terpisah dan tidak memiliki
satu status kanonik untuk mengetahui apakah storefront siap dipublikasikan.

After:

- Activation Center merangkum akun, studio, katalog, kebijakan, payment,
  notification, storefront, dan booking pertama;
- progress dan blocker dihitung server-side berdasarkan tenant aktif;
- owner dapat melanjutkan setup, preview, publish, lalu memantau booking publik
  pertama dari satu alur;
- status notification membedakan otomatis, fallback manual, dan belum siap;
- endpoint onboarding menggunakan permission settings, tenant resolution
  fail-closed, dan rate limit.

### Support & Recovery Center

Before: bantuan produk tersebar dan owner tidak dapat melanjutkan percakapan
setelah tiket dialihkan ke tim manusia.

After:

- bantuan produk, account recovery, setup, dan changelog tersedia dari satu
  halaman;
- owner dapat bertanya, melakukan human handoff, lalu melanjutkan tiket aktif;
- retry jaringan memakai idempotency key tenant-scoped agar pesan tidak
  tergandakan;
- screenshot hanya dapat dikirim setelah konfirmasi bahwa informasi sensitif
  sudah dihapus dan lampiran tetap privat;
- permission, payload public-safe, audit, dan adapter Support Hub ditegakkan
  server-side.
- operator dapat memfilter antrean berdasarkan produk, status, prioritas, SLA,
  dan ownership;
- claim, release, resolve, reopen, perubahan prioritas, private note, dan
  balasan publik memakai idempotency key serta optimistic lock;
- retry tidak menggandakan tindakan dan konflik operator menghasilkan refresh
  aman, bukan overwrite;
- receipt audit tidak memuat isi pesan, tenant ID mentah, provider reference,
  atau PII.

## Belum boleh diklaim

- Provider delivery tidak boleh dianggap berhasil hanya dari queue/log.
- Business-ready penuh tetap membutuhkan acceptance booking nyata, support
  observation, serta Founding Studio Pilot yang memenuhi seluruh exit criteria.

## Ide konten

- Dari booking via chat menjadi booking center terstruktur.
- Mengapa cancel booking berbayar tidak boleh langsung mengubah uang.
- Perbedaan secure link dengan halaman status biasa.
- Cara studio menghindari double booking dan task ganda.
