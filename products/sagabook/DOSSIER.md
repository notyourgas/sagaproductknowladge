# SagaBook Dossier

## Tujuan dokumen

Memberi konteks produk, pengalaman, bisnis, teknis, sales, dan konten SagaBook
dalam satu dokumen public-safe.

## Konteks dan status bukti

- Updated: 2 Agustus 2026
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
