# SagaBook Dossier

## Tujuan dokumen

Memberi konteks produk, pengalaman, bisnis, teknis, sales, dan konten SagaBook
dalam satu dokumen public-safe.

## Konteks dan status bukti

- Updated: 31 Juli 2026
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

## Integrasi

Payment dan notification provider, serta future SagaView handoff.
Provider/credential spesifik tidak didokumentasikan di repository publik.
Support Hub pusat diakses melalui adapter bertanda tangan; percakapan owner
tetap product-, tenant-, account-, dan conversation-scoped.
Platform Support menambahkan antrean operator berbasis ownership dan SLA waktu
kerja Asia/Jakarta. Aksi triage memakai idempotency key, optimistic lock, dan
receipt audit tersanitasi agar retry serta konflik antaroperator tidak
menggandakan atau menimpa tindakan.

## Data yang digunakan

Organization, tenant, branch, staff membership, catalog/package, resource,
availability, booking, payment state, request, task, audit, dan report.

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
