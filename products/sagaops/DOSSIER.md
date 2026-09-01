# SagaOPS Dossier

## Tujuan dokumen

Mendefinisikan scope operating system coffeeshop, readiness, bisnis, teknis,
sales, dan konten SagaOPS.

## Konteks dan status bukti

- Updated: 2 September 2026
- Delivery: `SOURCE_PUSHED / GOAL_3_LOCAL_CANONICAL_EXECUTED / EXTERNAL_RUNTIME_NO_GO / STAGING_SKIPPED / IMPLEMENTED_NOT_DEPLOYED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`

## Overview produk

Operating system coffeeshop yang memisahkan SagaPOS untuk kasir dan Back Office
untuk owner/manager.

## Masalah yang diselesaikan

Order, shift, cost, inventory, purchase, approval, dan report sering tidak
memiliki source of truth serta audit yang sama.

## Target pengguna

Kasir/barista, manager, owner, purchasing, dan inventory operator.

## Persona pengguna

- Kasir: order/payment cepat.
- Manager: shift, override, variance, dan approval.
- Owner: HPP, margin, stock, dan performance.
- Purchasing: low-stock sampai purchase order.

## Value proposition

POS dan back office terhubung oleh inventory movement, recipe/HPP, dan audit.

## Use case

Order/modifier/payment/receipt, shift/closing, menu/recipe/HPP, inventory
ledger, stock guard, override, purchase order, dashboard, dan approval.

## Fitur utama

Workflow lokal mencakup POS/back office, operator console OWNER/STAFF,
session-derived role/outlet, checkout, recovery, closing, approval, reporting,
Member Code/Voyager/Reward integration boundary, dan fallback tanpa printer.

## Fitur MVP

Stable POS, shift, menu/recipe/HPP, inventory movement, purchase, audit, dan
manager override. Provider/hardware real belum termasuk evidence.

## Roadmap

1. Provision external PostgreSQL/queue/cache dan buktikan kapasitas, isolation,
   backup/restore, serta disaster recovery.
2. Configure Resend dan Sagadev Gateway sandbox dengan callback/replay evidence.
3. Signed SBOM, SAST/DAST dan independent release review.
4. Manual assistive-technology serta external operator/pilot validation.
5. Staging approval, controlled outlet pilot, lalu activation review terpisah.

## User journey

Setup menu/recipe/stock → open shift → order/payment → stock movement →
close/variance → purchase/replenish → owner report.

## User flow

Stock material berubah melalui ledger movement; override memiliki permission
dan reason; closing merekonsiliasi cash/non-cash.

## Business model

`NEEDS CONFIRMATION`: subscription per outlet/device, setup fee, hardware, support,
dan payment fee.

## Pricing

`NEEDS CONFIRMATION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: POS F&B, inventory/HPP tools, spreadsheet, dan integrated
restaurant operations.

## Diferensiasi produk

`PROPOSAL`: operator-first Indonesian coffeeshop workflow, ledger-based
stock, recipe/HPP, and shift variance.

## Brand positioning

Operating system coffeeshop dari kasir sampai back office.

## Messaging

- “Order cepat, stok tetap dapat ditelusuri.”
- “Recipe dan HPP menjadi dasar margin.”

## FAQ

**Apakah QRIS aktif?** Tidak; dummy/manual bukan gateway.
**Apakah bisa offline?** Simulation bukan production acceptance.
**Apakah sudah siap outlet?** Belum; Goal 2 diterima hanya sebagai local
validated. Staging dilewati untuk scope saat ini, sedangkan provider,
independent review, commissioning, pilot, production, dan business gates masih
terbuka.

**Apakah semua sprint Goal 3 sudah dikerjakan?** Seluruh sprint yang sah pada
boundary lokal/kanonik sudah dijalankan dan diklasifikasikan. Dari 480 sprint,
124 lulus lokal, 108 partial lokal, 118 membutuhkan external gate, dan 130
menunggu prerequisite. Angka external/waiting bukan pass dan Goal 3 belum
complete.

## Technical overview

Private canonical source menyediakan versioned API, domain service, operator
browser UI, migration, local PostgreSQL semantics/RLS, idempotency, recovery,
security controls, dan content-addressed clean-room artifact. Bukti ini lokal;
external database, real provider, signed release, staging, dan production belum
terverifikasi.

## Integrasi

Payment/QRIS, thermal printer, inventory/purchasing, notification, dan future
accounting/export.

## Data yang digunakan

Outlet, staff/role, shift, menu/modifier, recipe, ingredient, inventory
movement, order/payment, receipt, purchase order, override, approval, dan audit.

## Risiko dan asumsi

Stock correctness, concurrent order, printer failure, payment mismatch, offline
conflict, cash variance, tenant isolation, dan outlet recovery.

## KPI dan success metrics

`PROPOSAL`: order time, payment success, stock variance, waste,
override rate, close variance, PO cycle, uptime, dan support incident. Target
`NEEDS CONFIRMATION`.

## Ide konten pemasaran

Stock movement; recipe/HPP; closing variance; low-stock to purchase order.

## Contoh caption

`PROPOSAL`: “Stok bukan angka yang boleh berubah tanpa jejak. Setiap
penjualan, waste, dan pembelian harus menjadi movement yang bisa diaudit.”

## Ide campaign

`ASSUMPTION`: “Audit HPP 10 Menu” untuk pilot coffeeshop.

## Sales talking points

Mulai dari pain outlet dan accuracy, bukan dashboard. Jelaskan prototype status
dan hardware/provider gaps.

## Objection handling

- “POS lain lebih lengkap”: bandingkan workflow spesifik setelah competitor
  research.
- “Bisa langsung dipasang?”: belum; memerlukan pilot dan production gate.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagaops).
