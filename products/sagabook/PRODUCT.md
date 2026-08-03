# SagaBook Product Knowledge

Updated: 3 Agustus 2026
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
  `994de01cf3586adb4da8813a9c4b931085457510`.
- Release production tercatat: `20260802221221-994de01`.
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
- Admin Booking pada source
  `500065c81cbc07e29b3370f8b22a8fcc521f7d7d` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802101645-500065c`. Daftar
  mobile menjadi kartu operasional yang
  terbaca, desktop mempertahankan tabel, detail booking dibuka pada satu drawer
  aksesibel, kontrol kritis minimal 44 piksel, dan aksi terminal mengembalikan
  fokus ke daftar. Full backend 959/959 dengan 11.001 assertions, focused UI
  mobile/tablet/desktop 6/6, build, design audit, dependency audit 0, encrypted
  backup, disposable restore, migration, readiness 100, service health, dan
  public smoke lulus. Release lama `20260802024941-b74ebb5` dipertahankan untuk
  rollback; SagaView tetap pada release `20260802042221-f26bb57`.
- Public commercial/legal branding safety pada source
  `a6bb8afbfe2353597ea55329c50829a220bc5d3e` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802104018-a6bb8af`. Pricing,
  Terms, dan Privacy kini masing-masing memiliki tepat satu signature aksesibel
  `Powered by SagaBook`, tidak fixed, tidak overflow, dan tidak tertukar dengan
  SagaView pada 390x844 maupun 1440x900. Header `X-Frame-Options` kini dikirim
  tepat satu kali di edge, sementara CSP `frame-ancestors` tetap aktif. Full
  backend 960/960 dengan 11.007 assertions, browser production 8/8, dependency
  audit 0, backup/restore, readiness 100, service health, dan smoke lulus.
  Rollback `20260802101645-500065c` dipertahankan; SagaView tidak berubah.
- Calendar operasional pada source
  `596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802160930-596b8a4`. Mobile kini
  memiliki agenda Harian, Mingguan tujuh hari, dan Bulanan berisi hari aktif,
  bukan tiga tab dengan daftar identik. Baris hari dapat dibuka dengan keyboard,
  kontrol kritis minimal 44 piksel, dan desktop mempertahankan grid hari.
  Manual Booking juga menyelaraskan tanggal aktif ketika dialog dibuka dan
  mengenali nama bulan Indonesia. Full visual matrix 430 skenario dan backend
  960/960 dengan 11.007 assertions lulus; build, design audit, dependency audit
  0, encrypted backup, disposable restore, readiness 100, service health, dan
  public smoke lulus. Rollback `20260802104018-a6bb8af` dipertahankan. Tidak ada
  perubahan pada payment/provider, storefront tenant/preset, landing page,
  watermark, atau SagaView.
- Admin Staff pada source
  `35c82192234eb84e03b2237029540e299c70e12f` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802183533-35c8219`; rollback
  `20260802160930-596b8a4` dipertahankan. Before: layar mobile masih memaksa
  tabel desktop selebar 920 piksel, kontrol penting berukuran 32-40 piksel,
  filtered-empty tidak memiliki reset, dan editor tidak memulihkan fokus.
  After: mobile memakai kartu staff, desktop tetap tabel, kontrol kritis
  minimal 44 piksel, reset filter tersedia, editor berlabel dan mengembalikan
  fokus, serta tab, forced-colors, reduced-motion, dan satu signature
  `Powered by SagaBook` tetap utuh. CRUD dan permission tidak berubah. Backend
  960/960 dengan 11.007 assertions, visual matrix 442 passed dengan 41
  controlled skip, build, design audit, dependency audit 0, encrypted backup,
  disposable restore, database audit 100, service health, journal, dan public
  browser smoke lulus.
- Residual release ini: visual production Calendar yang terautentikasi tidak
  dijalankan tanpa membuka credential; exact-source authenticated regression
  lulus. Endpoint health `/up` masih tidak mengirim HSTS, sedangkan route
  aplikasi/login yang diaudit mengirim HSTS dan XFO tepat satu. Satu error
  journal berasal dari `saga-platform-staging-monitor.service` di level host,
  bukan service SagaBook.
- Residual Admin Staff: visual live yang terautentikasi tidak dijalankan tanpa
  credential; exact-source regression mobile/tablet/desktop lulus. Endpoint
  `/up` masih tidak mengirim HSTS. Sampel login saat release mengirim HSTS dan
  CSP satu kali tetapi tidak mengirim `X-Frame-Options`; CSP
  `frame-ancestors` tetap aktif dan kontrak header perlu dinormalisasi.
- Storefront booking desktop pada source
  `994de01cf3586adb4da8813a9c4b931085457510` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802221221-994de01`; rollback
  `20260802183533-35c8219` dipertahankan. Mulai viewport 1120 piksel, layout memakai shell
  dua kolom hingga 1040 piksel dengan orientasi langkah dan ringkasan pilihan;
  mobile 390x844 tetap identik dan tablet 1024x768 tetap ringkas tanpa
  overflow. Semua langkah dan preset existing, Maps, WhatsApp, paket, slot,
  checkout, confirmation, tenant brand, dan satu `Powered by SagaBook` tetap
  tercakup. Backend 960/960, visual desktop 45/45 dengan satu mobile-only skip,
  mobile manual-transfer E2E 1/1, build, design audit, npm/Composer audit 0,
  backup/restore exact-SHA, database audit 100, service, journal, public smoke,
  dan visual live dua viewport lulus. Endpoint `/up` masih tanpa HSTS/CSP;
  route login dan booking yang diaudit mengirim header keamanan.
- Candidate signup tanpa approval owner dan trial kanonik 7 hari sudah
- Success screen WhatsApp support pada source
  `729e47da6cc6584f186c856c2718a9be15b15667` berstatus
  `IMPLEMENTED_NOT_DEPLOYED`. Before: bantuan setelah booking berhenti pada
  copy template admin. After: customer mendapat CTA 48 piksel menuju detail
  dan status booking, lalu WhatsApp cabang yang dipilih dengan pesan konteks
  public-safe; jika nomor cabang tidak valid, UI menyediakan fallback salin
  pesan. Focus keyboard, `aria-live`, forced-colors, no-overflow, serta tepat
  satu `Powered by SagaBook` lulus pada mobile 390x844, tablet 768x1024, dan
  desktop 1440x900. Focused E2E 6/6, visual success 9/9, backend 9 tests dengan
  108 assertions, build, design audit, dan npm/Composer audit 0 lulus. Full
  visual matrix belum menghasilkan final result dalam verification window 15
  menit, sehingga release fail-closed dan production tetap memakai source
  `fa228d89bc5bea32fb19bf424a4b0e48db1bc506`, release
  `20260803022430-fa228d8`, dengan rollback `20260802221221-994de01`.
- Refinement navigasi dari langkah Review pada source
  `fa228d89bc5bea32fb19bf424a4b0e48db1bc506` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260803022430-fa228d8`. Enam kontrol `Ubah` yang sebelumnya sekitar
  31x18 piksel kini menjadi tombol semantik minimal 72x44 piksel dengan label
  screen reader, focus keyboard, forced-colors, dan reduced-motion. Kelima
  preset pada mobile, tablet, dan desktop tidak overflow serta tetap memiliki
  tepat satu `Powered by SagaBook`. Booking, payment/provider, availability,
  permission, session, tenant isolation, dan SagaView tidak berubah. Backend
  960/960, focused Review 9/9, accessibility 24/24, scoped E2E mobile dan
  desktop, build, serta npm/Composer audit 0 lulus. Full matrix fresh lulus
  142/142 dengan 2 expected skips. S39 backup/restore exact-SHA, manifest,
  DB audit 100, service/public smoke, rollback, dan DOM live mobile+desktop
  lulus; watermark tepat satu, overflow false, dan seluruh tombol berukuran
  72x44 piksel. Rollback `20260802221221-994de01` tersedia.
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
