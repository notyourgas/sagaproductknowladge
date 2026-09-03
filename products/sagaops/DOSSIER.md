# SagaOPS Dossier

## Tujuan dokumen

Mendefinisikan scope operating system coffeeshop, readiness, bisnis, teknis,
sales, dan konten SagaOPS.

## Konteks dan status bukti

- Updated: 3 September 2026
- Delivery: `SOURCE_COMMITTED_LOCAL_BRANCH / SAGA_POS_M3_LOCAL_SLICE / EXTERNAL_RUNTIME_NO_GO / STAGING_NOT_PROVISIONED / IMPLEMENTED_NOT_DEPLOYED`
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

Saga POS local sprint lab menambah self-service Kiosk, assisted Cashier
fallback, nota checker/KDS, Owner Dashboard, POS Admin, menu Kopi Saga Salak,
modifier, cash/shift, QRIS simulator, Member/Reward fixture, availability,
refund/remake, report/export, device health dan print spooler boundary.

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

Kebijakan aktif kini incremental spend Rp0; hanya existing domain/VPS boleh
dipakai setelah gate fail-closed. Audit read-only menemukan disk root 83%,
collision dengan staging legacy, monitor staging gagal, PostgreSQL belum
tersedia, dan Customer Platform masih local-alpha tanpa durable serving
integration. Owner self-review diterima sebagai owner review, bukan independent
review. Tidak ada resource, billing, DNS, database, provider, pilot, atau
production mutation.

Seluruh 432 micro-sprint Goal 4 kini memiliki disposition: 40 local pass, 107
partial local, 88 external gate, dan 197 waiting prerequisite. Preparation
read-only/local dan synthetic pada incremental budget Rp0 sudah dijalankan;
angka partial, external, dan waiting bukan pass. Public cohort, outlet kedua,
commercial tenant, provider nyata, deployment dan production route belum
dimulai. Statusnya `GOAL_4_ZERO_COST_PREPARATION_EXECUTED /
ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED`, bukan Goal 4 complete.

Goal 5 strategy menempatkan SagaOPS pada dua wave khusus: outlet/device
operating factory (B066-B071) dan gateway/settlement/finance operations
(B072-B077), lalu ringed outlet-cluster expansion pada B115. Seluruh pack
berisi 20 wave, 120 batch dan 480 micro-sprint; preparation hanya lokal,
read-only, synthetic dan Rp0. Tidak ada outlet baru, merchant/provider call,
hardware qualification, deployment atau production activation yang dimulai.

Execution ledger Goal 5 mencatat 480 unit sebagai 59 local pass, 119 partial
local, 106 external gate dan 196 waiting prerequisite. Fresh local source
baseline lulus 17/17, tetapi bukti ini tidak menggantikan outlet/device field
UAT, provider certification, settlement, deployment atau operating-cycle
evidence. SagaOPS tetap `IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED` untuk
scope Saga Member ini.

Goal 6 strategy menempatkan SagaOPS pada operating model jaringan outlet,
device fleet, payment/settlement/treasury, support dan bounded network
expansion. Pack keseluruhan berisi 22 wave, 132 batch dan 528 micro-sprint.
Seluruh artifact saat ini tetap planning/local/synthetic dengan incremental
spend Rp0. Goal 5/G519, exact scope, device field evidence, provider
certification, reconciliation dan operating proof belum tersedia, sehingga
route SagaOPS tetap `NO_GO` dan NFC OFF.

One-command local pilot launcher kini menyatukan akses uji SagaOPS
OWNER/STAFF dengan Member PWA dan Customer API pada loopback. Credential
operator dihasilkan runtime-only dan tidak disimpan. Fresh SagaOPS suite
76/76 lulus. Bukti ini menutup usability teknis launcher lokal saja; QRIS,
printer, NFC, device field UAT, durable runtime dan outlet operation tetap
belum terbukti.

Saga POS program khusus Kopi Saga Salak telah menjalankan 24 wave, 120 batch,
dan 480 micro-sprint pada boundary lokal. Disposition batch adalah 62
`PASS_LOCAL`, 28 `LOCAL_SIMULATED`, dan 30 `BLOCKED_EXTERNAL`; 334 micro-sprint
memiliki local pass evidence dan 118 tetap external pending/NOT_RUN. Source
exact `0618da16b3ca4c4a31a2891730c53b1eb13f5abe` lulus 100/100 test, browser
E2E/accessibility, dependency audit, screenshot evidence, serta local
PostgreSQL lima migration/RLS/cross-outlet deny.

Readiness program adalah M3+ 80/100. Founder menyetujui harga customer-final,
service 0%, PBJT configurable tetapi 0% sampai konfirmasi daerah, cash rounding
Rp100, jam pilot 07:00-22:00/last order 21:30, benefit eksklusif, serta full
refund pilot. SagaDev Gateway dikunci sebagai payment gateway dengan product
binding `sagaops`; PJP pusat tidak diekspos ke Saga POS.

SagaDev local contract mempunyai readiness gate, signed request/event,
idempotency, bounded status recovery, replay/state/amount/order/currency guard,
settlement gross/fee/net, dan full-refund manual-finance work item. Refund API
tidak direka. Runtime browser masih in-memory walaupun
durable schema contract telah ditambah. Provider QRIS, Customer Platform,
printer, NFC, installed runtime, isolated staging, staff commissioning,
controlled pilot dan production tetap `NOT_RUN`; source commit juga belum
dipush/merge saat knowledge ini ditulis.

Readiness extension yang diminta Andreas membagi gap 80 ke 100 menjadi 10 wave,
40 batch, dan 160 micro-sprint. W25 durable runtime berbobot +4 dan mempunyai
empat batch `READY_LOCAL_BUILD`. W26-W34 mencakup SagaDev sandbox, Customer
Platform, hardware/network, signed runtime, staging/security/recovery, staff
UAT, controlled pilot, guarded production activation, dan explicit owner
business-ready decision. Seluruh micro-sprint masih `NOT_STARTED`; plan ini
tidak mengubah readiness, runtime, deployment, activation, atau business state.

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
