# SagaOPS Product Knowledge

Updated: 1 September 2026
Evidence status: `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / LOCAL_INTERNAL_ALPHA_ACCEPTED / IMPLEMENTED_NOT_DEPLOYED`

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaOPS. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Keputusan
terbuka berada di [GAPS](../../GAPS.md#sagaops).

## Konteks

Source private kanonik, API/service, persistence/RLS lokal, dan operator browser
UAT tersedia sebagai local integrated internal alpha. Staging, provider,
hardware, outlet production, activation, dan business readiness belum
terverifikasi.

## Ringkasan

SagaOPS adalah operating system coffeeshop. Produk dipisah menjadi SagaPOS untuk
kasir dan Back Office untuk owner/manager.

## Target pengguna

- Kasir/barista.
- Manager.
- Owner coffeeshop.
- Purchasing/inventory operator.

## Scope MVP pilot

- POS order, modifier, payment, receipt, history.
- Cash/non-cash manual/split payment.
- Shift dan closing.
- Menu management.
- Ingredient, recipe, HPP, margin.
- Inventory ledger.
- Stock guard dan manager override.
- Purchase order.
- Live dashboard.
- Audit dan approval.
- Operator console lokal untuk OWNER dan STAFF dengan role/outlet dari session
  server, CSRF, same-origin, dan session HttpOnly.
- Integrasi Member Code, Voyager quote, Points/XP/Quest/Reward event boundary,
  serta payment/recovery simulator.

## Prinsip data

- Inventory ledger adalah source of truth stok.
- Recipe/HPP adalah source of truth cost menu.
- Stock change material harus menjadi movement.
- POS harus stabil sebelum HR/report lanjutan.

## Status saat ini

Status: `LOCAL_VALIDATED / LOCAL_INTERNAL_ALPHA_ACCEPTED /
IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

- Private canonical `main` `614fe7fdaffd7c739b0c7efed97f8a5e33297eea`
  memuat operator console, API v1, domain services, migration, local PostgreSQL
  semantics, RLS, recovery, dan automated browser acceptance.
- 76 test source, clean-room browser verification, local load, security control,
  serta artifact restore lulus untuk fixture internal.
- Founder telah menerima batas Goal 1 sebagai complete local internal alpha;
  penerimaan ini bukan izin staging atau production.
- QRIS dynamic, thermal printer, real offline conflict resolution, dan provider
  nyata belum termasuk bukti production.

## Belum boleh diklaim

- Dummy data bukan transaksi outlet.
- Offline simulation bukan offline production.
- Manual QRIS bukan payment gateway.
- Local PostgreSQL/PGlite bukan bukti kapasitas atau disaster recovery staging.
- Automated browser UAT bukan human business acceptance.

## Ide konten

- Kenapa stok harus berbasis movement.
- Recipe/HPP sebagai dasar harga.
- Closing shift dan cash variance.
- Dari stock warning menjadi purchase order.
