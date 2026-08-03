# SagaBook Dossier

## Tujuan dokumen

Memberi konteks produk, pengalaman, bisnis, teknis, sales, dan konten SagaBook
dalam satu dokumen public-safe.

## Konteks dan status bukti

- Updated: 3 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED` untuk workflow yang tercantum di
  [PRODUCT](PRODUCT.md)
- Business readiness: `NEEDS CONFIRMATION`

## Overview produk

`CONFIRMED`: SaaS booking dan operating system self-photo studio untuk workflow
sebelum sesi.

## Masalah yang diselesaikan

Booking via chat, bentrok slot, status pembayaran yang tersebar, follow-up
manual, serta kurangnya audit dan reconciliation.

## Target pengguna

Owner studio, manager/admin/cashier/operator, customer booking, dan SagaDev
super admin.

## Persona pengguna

- Owner: membutuhkan occupancy, revenue visibility, policy, dan kontrol staff.
- Operator: membutuhkan calendar, task, check-in, dan recovery yang jelas.
- Customer: membutuhkan slot, checkout, status, dan perubahan booking.
- `NEEDS CONFIRMATION`: volume, ukuran studio, dan buyer persona prioritas.

## Value proposition

> SagaBook mengatur sebelum sesi.

Satu alur dari availability sampai session handoff, dengan tenant/permission
dan status pembayaran yang server-authoritative.

## Use case

Booking publik, reschedule/cancel/refund request, check-in, task/reminder,
reconciliation, reporting, tenant onboarding, dan subscription.

## Fitur utama

Storefront, availability/capacity, checkout/payment, Customer Booking Center,
calendar, Task Center, check-in, report, staff permission, audit, dan
Activation Center, serta Support & Recovery Center.

## Fitur MVP

`CONFIRMED`: booking, slot, payment status, customer secure link, request
workflow, calendar, check-in, operator task, serta limit paket pada
[PRODUCT](PRODUCT.md) termasuk core scope.

## Roadmap

1. `TODO`: Founding Studio Pilot minimal tiga studio.
2. `TODO`: booking/payment/notification acceptance end-to-end dengan provider.
3. `TODO`: observasi kualitas support dan recovery pada cohort studio nyata.
4. `NEEDS CONFIRMATION`: integrasi SagaView setelah kedua produk siap satuan.

## User journey

Discover studio → pilih paket/slot → checkout → konfirmasi → reminder →
check-in → session handoff → perubahan/refund bila perlu.

## User flow

Customer dan operator flow rinci berada di [PRODUCT](PRODUCT.md). Mutation uang
dan booking kritis harus request/permission/idempotency aware.

## Business model

Subscription SaaS bulanan per produk/tenant. Setup, transaction fee, dan add-on
belum dikunci.

## Pricing

`CONFIRMED`: Basic Rp500.000, Growth Rp950.000, Pro Rp1.500.000 per bulan.
Basic mencakup 1 cabang/3 staff; Growth 3 cabang/10 staff; Pro maksimal 10
cabang/30 staff self-service; kebutuhan di atasnya menggunakan Custom.
Booking dipasarkan unlimited dengan fair-use.

`CONFIRMED` — kontrak ini aktif di production pada release
`20260731172605-39fb2d3`, source
`39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`.

## Kompetitor

`NEEDS CONFIRMATION`: daftar kompetitor dan evidence perbandingan. Kategori
pembanding yang relevan: generic booking, appointment scheduling, studio
management, dan workflow berbasis chat/spreadsheet.

## Diferensiasi produk

`PROPOSAL`: tekankan alur studio end-to-end, tenant operations, customer
secure center, dan session handoff—bukan booking calendar generik.

## Brand positioning

Operating system sebelum sesi untuk self-photo studio Indonesia.

## Messaging

- “Booking, pembayaran, perubahan jadwal, dan operasional studio dalam satu
  alur.”
- “Customer melihat status; operator melihat next action.”
- Klaim outcome kuantitatif: `NEEDS CONFIRMATION`.

## FAQ

**Apakah SagaBook termasuk SagaView?** Tidak. Produk dijual satuan.
**Apakah trial otomatis menagih?** Tidak. Trial dua fase tidak auto-charge.
**Apakah provider pasti mengirim reminder?** Hanya bila delivery nyata
terverifikasi; fallback manual harus tetap terlihat.

## Technical overview

Multi-tenant web application dengan storefront, admin, super-admin, background
jobs, billing, audit, dan immutable release process.

UI/UX operasional pada source
`8edd762154ec231b7e00c4a38db9c94dd0ee322c` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260801213514-8edd762`. Dashboard/admin,
staff action, storefront booking
tenant, responsive hierarchy, accessibility states, dan signature
`Powered by SagaBook` telah diintegrasikan tanpa mengubah kontrak booking,
payment, tenant isolation, invoice, atau artefak bisnis. Visual matrix
mobile/tablet/desktop lulus 400 skenario; exact-source focused release safety
lulus 19 test/131 assertions, build dan dependency audit hijau, serta backup
terenkripsi dan disposable restore exact-SHA lulus. Manifest, public smoke,
database audit, service health, dan rollback production juga lulus.

Hardening auth dan fallback surface berikutnya pada source
`d9bbbac3d5960013c6df267ff9ae2534b883710d` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`. Login, signup,
dan password recovery sekarang
memiliki tepat satu `Powered by SagaBook`, target sentuh kritis minimal 44
piksel, preview dekoratif inert, metode pemulihan dan CTA fallback minimal 44
piksel, serta dukungan forced-colors dan reduced-motion. Focused visual
regression 6/6, full backend 957/957 dengan 10.989 assertions, typecheck, build,
dependency audit, encrypted backup, dan disposable restore exact-SHA lulus.
Matriks browser desktop+mobile lulus 296/296 melalui empat shard deterministik;
production auth smoke 6/6, manifest, database audit 100, public HTTP smoke,
service health, dan rollback gate juga lulus.

Perbaikan Maps storefront dan Booking Center pada source
`76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802013852-76defd1`. Bila cabang
memiliki alamat tetapi belum memiliki URL Maps khusus, customer tetap mendapat
link pencarian Google Maps berbasis nama dan alamat; URL eksplisit dibatasi ke
host Google HTTPS. Kontrol Maps dan salin kode minimal 44 piksel. Full backend
957/957, browser desktop+mobile 298/298, backup/restore exact-SHA, manifest,
database audit, service health, public smoke, dan pemeriksaan production mobile
serta desktop lulus. URL Maps presisi dari data owner tetap opsional.

Refinement CTA cabang berikutnya pada source
`b74ebb56099849dc17d759f4a9f0c8f1a04788e4` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802024941-b74ebb5`, dengan rollback
`20260802013852-76defd1`. Before: langkah Lokasi menampilkan CTA fixed disabled
sebelum pilihan dibuat sehingga katalog cabang dapat tertutup pada mobile.
After: CTA tidak dirender sebelum cabang dipilih; setelah pilihan valid, tepat
satu CTA aktif 48 piksel muncul dan membawa customer ke langkah Paket. Tidak
ada perubahan pada booking, payment, tenant isolation, preset, Maps/WhatsApp,
atau artifact bisnis. Full backend 957/957, matriks browser desktop+mobile
298/298, typecheck, build, audit dependency 0, backup terenkripsi, disposable
restore exact-SHA, database audit, service health, public smoke, dan production
visual mobile/desktop lulus.

Admin Booking pada source `500065c81cbc07e29b3370f8b22a8fcc521f7d7d`
berstatus `PRODUCTION_DEPLOYED` sebagai release `20260802101645-500065c`.
Before: mobile memadatkan tabel desktop
dan detail selalu mengisi panel samping. After: mobile memakai kartu triage,
desktop tetap memakai tabel, detail dibuka satu per satu dalam drawer, filter,
pagination, tab, close, dan action memenuhi target minimal 44 piksel, serta
aksi batal/no-show/refund menutup drawer dan mengembalikan fokus ke daftar.
Payment reconciliation juga tidak lagi memberi false positive pada booking
paid yang sah setelah memasuki `checked_in` atau `in_session`; webhook invalid,
unpaid, duplikat, atau ledger belum verified tetap diblokir. Full backend
959/959, focused UI tiga viewport 6/6, encrypted backup, disposable restore,
migration, readiness 100, service/journal, dan public smoke lulus. SagaView
tidak berubah.

Public commercial/legal branding safety pada source
`a6bb8afbfe2353597ea55329c50829a220bc5d3e` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802104018-a6bb8af`. Before:
Pricing, Terms, dan Privacy tidak memiliki signature produk, dan response wire
memuat dua nilai identik `X-Frame-Options`. After: ketiga route memiliki tepat
satu `Powered by SagaBook` yang responsif dan aksesibel; edge mengirim satu
`X-Frame-Options`, sementara CSP `frame-ancestors` tetap enforced. Browser
production mobile/desktop 8/8, full backend 960/960, build/design/dependency
gate, backup/restore, readiness 100, tujuh service, header, journal, dan smoke
lulus. Tidak ada perubahan workflow booking/payment, provider, preset, atau
runtime SagaView; rollback `20260802101645-500065c` dipertahankan.

Calendar operasional pada source
`596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802160930-596b8a4`, dengan rollback
`20260802104018-a6bb8af`. Before: tab mobile Harian, Mingguan, dan Bulanan
menampilkan daftar hari yang sama; kontrol tanggal 40 piksel; beberapa kontrol
terlihat interaktif tanpa action; dan empty-state mempunyai callback tanggal
yang tidak valid. After: Harian mempertahankan agenda hari, Mingguan menyusun
tujuh hari nyata, Bulanan menampilkan hari aktif, baris hari dapat dibuka lewat
keyboard, kontrol kritis minimal 44 piksel, serta desktop mempertahankan grid.
Manual Booking menyelaraskan tanggal Calendar saat dialog dibuka dan parser
WhatsApp mengenali nama bulan Indonesia. Full visual matrix lulus 430 skenario
dengan 44 controlled skip; full backend 960/960 dengan 11.007 assertions;
build, design audit, npm/Composer audit 0, encrypted backup, disposable restore,
readiness 100, manifest exact-source, service health, dan public smoke lulus.
Tidak ada perubahan payment/provider, tenant isolation, storefront/preset milik
studio, landing page, watermark, atau SagaView. Authenticated production visual
Calendar tidak dijalankan tanpa credential; exact-source authenticated browser
regression lulus. `/up` belum mengirim HSTS walau route aplikasi/login yang
diaudit mengirim HSTS dan XFO tepat satu. Error journal pascarilis berasal dari
`saga-platform-staging-monitor.service` di level host, bukan service SagaBook.

Admin Staff pada source
`35c82192234eb84e03b2237029540e299c70e12f` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802183533-35c8219`, dengan rollback
`20260802160930-596b8a4`. Before: mobile memaksa tabel desktop selebar 920
piksel, target sentuh penting 32-40 piksel, filtered-empty tidak memiliki reset,
dan editor tidak memulihkan fokus. After: mobile memakai kartu operasional,
desktop mempertahankan tabel, kontrol kritis minimal 44 piksel, reset filter
tersedia, editor berlabel mengembalikan fokus, dan tab memiliki state semantik.
Forced-colors, reduced-motion, no-overflow, CRUD/permission, tenant isolation,
serta satu `Powered by SagaBook` tetap utuh. Backend 960/960 dengan 11.007
assertions, visual matrix 442 passed dengan 41 controlled skip, build, design
audit, npm/Composer audit 0, encrypted backup, disposable restore, database
audit 100, service health, journal, dan public browser smoke lulus. Visual live
Staff terautentikasi tidak dijalankan tanpa credential; exact-source regression
tiga viewport lulus. `/up` belum mengirim HSTS. Sampel login mengirim HSTS dan
CSP satu kali tanpa `X-Frame-Options`; CSP `frame-ancestors` tetap aktif dan
kontrak header perlu dinormalisasi.

Storefront booking desktop pada source
`994de01cf3586adb4da8813a9c4b931085457510` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802221221-994de01`; rollback
`20260802183533-35c8219` dipertahankan. Mulai viewport 1120 piksel, renderer menggunakan
shell dua kolom hingga 1040 piksel: panel kiri memberi orientasi langkah dan
ringkasan pilihan, sedangkan panel kanan mempertahankan transaksi. Mobile
390x844 tetap identik dan tablet 1024x768 tetap memakai layout ringkas tanpa
overflow. Seluruh langkah dan preset existing, Maps, WhatsApp, paket, slot,
checkout, confirmation, tenant brand, serta satu `Powered by SagaBook` tetap
tercakup tanpa perubahan payment/provider, availability, session, permission,
atau tenant isolation. Backend 960/960, visual desktop 45/45 dengan satu
mobile-only skip, mobile manual-transfer E2E 1/1, build, design audit,
npm/Composer audit 0, encrypted backup, disposable restore exact-SHA,
migration preflight, database audit 100, service, scoped journal, public smoke,
dan visual production dua viewport lulus. Endpoint `/up` masih tanpa HSTS/CSP;
route login dan booking yang diaudit mengirim HSTS, CSP, dan XFO SAMEORIGIN.

Refinement Review storefront pada source
`fa228d89bc5bea32fb19bf424a4b0e48db1bc506` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260803022430-fa228d8`. Enam jalur edit Review sekarang memakai tombol
semantik minimal 72x44 piksel, label screen reader, focus keyboard,
forced-colors, dan reduced-motion. Verifikasi lima preset pada mobile, tablet,
dan desktop menunjukkan no-overflow serta tepat satu `Powered by SagaBook`.
Backend 960/960, focused Review 9/9, accessibility 24/24, scoped E2E, build,
serta npm/Composer audit 0 lulus. Full matrix fresh lulus 142/142 dengan 2
expected skips. S39 backup/restore exact-SHA, manifest, migration preflight,
DB audit 100, service/public smoke, rollback, dan DOM live mobile+desktop
lulus. Runtime menunjukkan watermark tepat satu, overflow false, serta enam
tombol 72x44; rollback `20260802221221-994de01` tersedia. Kontrak booking,
payment/provider, availability, permission, session, dan tenant isolation tidak
berubah.

Success screen WhatsApp support pada source
`51a916537b51e8a503c6c88d3b130d2396558589` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260803080450-51a9165`; rollback
`20260803022430-fa228d8` tersedia. Customer diarahkan ke detail/status booking
sebelum CTA WhatsApp cabang yang dipilih; nomor tidak valid memperoleh fallback
salin pesan. Full matrix fresh lulus 448 skenario dengan 50 controlled skips
dan 0 failure pada mobile, tablet, serta desktop. Backend 960/960, build,
design audit, audit dependency 0, backup/restore exact-SHA, manifest, smoke,
service health, endpoint publik, dan visual browser produksi dua viewport
lulus. Demo SnapStudio masih belum dipublish; activation tenant nyata dan
business readiness tetap memerlukan UAT terkontrol.

## Integrasi

Payment dan notification provider, serta future SagaView handoff.
Provider/credential spesifik tidak didokumentasikan di repository publik.
Routing Fonnte tenant-scoped aktif di production: SagaDev-managed menjadi
default, owner dapat membawa koneksi Fonnte studio sendiri, dan manual-only
tersedia. Token tenant terenkripsi, tidak dikembalikan ke browser, dan setiap
delivery menyimpan snapshot route untuk menjaga retry serta audit tetap
konsisten. Release aktif: `20260731181921-378bcdf` dari source
`378bcdf4dac6c54d0bf421b5ef188103d82c6b40`.
Support Hub pusat diakses melalui adapter bertanda tangan; percakapan owner
tetap product-, tenant-, account-, dan conversation-scoped.
Platform Support menambahkan antrean operator berbasis ownership dan SLA waktu
kerja Asia/Jakarta. Aksi triage memakai idempotency key, optimistic lock, dan
receipt audit tersanitasi agar retry serta konflik antaroperator tidak
menggandakan atau menimpa tindakan.

## Data yang digunakan

Organization, tenant, branch, staff membership, catalog/package, resource,
availability, booking, payment state, request, task, audit, dan report.

## Privacy, retention, dan offboarding

`CONFIRMED` sebagai keputusan founder: seluruh keputusan P01-P18 pada draft
SagaBook telah disetujui untuk implementasi dan review legal. Kontrak target
mencakup pemisahan Controller/Processor, consent terpisah dan berversi,
retention per kategori, export/deletion, incident handling, disclosure
subprocessor, serta offboarding trial dan subscription.

Consent versioning, customer privacy request, owner triage, incident register,
offboarding timeline, dan retention preview berstatus
`IMPLEMENTED_NOT_DEPLOYED` pada source commit
`d4c96276b6b79e9a969975cfa5b4943d0c275e4b`. Retention apply sengaja ditolak;
tidak ada penghapusan otomatis. Public status tetap `NOT ACTIVE - NOT
PUBLISHED`. Klaim unrestricted public SaaS launch masih `BLOCKED` oleh review
legal, identitas/kontak resmi, destructive-retention acceptance, release, dan
publication gate.

Provenance public-safe: owner decision pada source docs commit
`295ec863ff6cfc2e79ac98183651f19c15a3b368`; implementasi source pada
`d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.

## Risiko dan asumsi

- Provider delivery dan payment tidak boleh disimpulkan dari queue/log.
- `ASSUMPTION`: self-photo studio adalah ICP awal utama.
- Policy refund/cancel default sudah `CONFIRMED`; tenant dapat mengubah policy
  secara eksplisit dan refund tetap operator-approved.

## KPI dan success metrics

`CONFIRMED` untuk exit pilot: minimal 3 studio, onboarding rata-rata maksimal
60 menit, activation maksimal 1 hari, 50 booking nyata total, minimal 95% core
journey tanpa engineer, notification receipt minimal 98%, SLA minimal 90%, dan
minimal 2 studio lanjut berbayar. Baseline aktual masih `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Booking via chat vs Customer Booking Center; double-booking prevention; alur
cancel berbayar; operator Task Center.

## Contoh caption

`PROPOSAL`: “Booking ramai bukan berarti operasional harus berantakan.
SagaBook menyatukan slot, status pembayaran, perubahan jadwal, dan tugas
operator dalam satu alur.”

## Ide campaign

`PROPOSAL`: “First Booking in One Session” untuk cohort studio, hanya
setelah onboarding/support siap.

## Sales talking points

Mulai dari workflow studio saat ini, tunjukkan activation center dan secure
customer link, Support & Recovery Center, lalu jelaskan plan, trial, fallback,
dan batas provider.

## Objection handling

- “Kami sudah pakai WhatsApp”: WhatsApp dapat tetap menjadi channel, SagaBook
  menjadi source of truth workflow.
- “Takut migrasi”: mulai dari cabang/paket terbatas dan acceptance checklist.
- “Butuh SagaView juga”: keduanya dijual satuan; integrasi bukan syarat memakai
  SagaBook.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagabook).
