# SagaOPS Product Knowledge

Updated: 2 September 2026
Evidence status: `CONFIRMED / SOURCE_PUSHED / GOAL_3_LOCAL_CANONICAL_EXECUTED / ZERO_NEW_SPEND_LOCKED / EXISTING_VPS_AUDITED / EXTERNAL_RUNTIME_NO_GO / STAGING_NOT_PROVISIONED / IMPLEMENTED_NOT_DEPLOYED`

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

Status: `GOAL_3_LOCAL_CANONICAL_EXECUTED / ZERO_NEW_SPEND_LOCKED /
EXISTING_VPS_AUDITED / EXTERNAL_RUNTIME_NO_GO / STAGING_NOT_PROVISIONED /
IMPLEMENTED_NOT_DEPLOYED / PILOT_NOT_STARTED / PRODUCTION_UNCHANGED /
BUSINESS_READY=false`.

- Private canonical `main` `614fe7fdaffd7c739b0c7efed97f8a5e33297eea`
  memuat operator console, API v1, domain services, migration, local PostgreSQL
  semantics, RLS, recovery, dan automated browser acceptance.
- 76 test source, clean-room browser verification, local load, security control,
  serta artifact restore lulus untuk fixture internal.
- Founder telah menerima batas Goal 1 sebagai complete local internal alpha;
  penerimaan ini bukan izin staging atau production.
- Founder menerima Goal 2 hanya pada batas local validated. Dua belas kelompok
  gate lokal dan full regression SagaBook 1.339/1.339 lulus; scope staging dan
  pilot tetap ditunda serta tidak diklaim selesai.
- Goal 3 memetakan dan mengeksekusi 480 micro-sprint secara konservatif: 124
  `LOCAL_PASS`, 108 `PARTIAL_LOCAL`, 118 `EXTERNAL_GATE`, dan 130
  `WAITING_PREREQUISITE`. Exact ops provenance `e3a5431` dan CI commit tersebut
  lulus; source candidate tetap menunggu independent review dan tidak digabung
  sebagai bagian dari acceptance ini.
- Kebijakan incremental spend kini Rp0. Existing VPS/domain boleh dinilai untuk
  reuse, tetapi audit read-only menemukan disk root 83%, staging legacy yang
  bertabrakan, monitoring gagal, dan source durable runtime belum siap.
  Resource/billing/DNS/database tetap tidak berubah.
- Seluruh 432 micro-sprint Goal 4 sudah didisposisi: 40 `LOCAL_PASS`, 107
  `PARTIAL_LOCAL`, 88 `EXTERNAL_GATE`, dan 197 `WAITING_PREREQUISITE`.
  Preparation lokal/zero-cost yang sah telah dijalankan; route scale,
  external runtime/provider, outlet kedua, pilot dan production tetap `NO_GO`.
  Exact ops `b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3`; CI lulus.
- Strategi Goal 5 menempatkan SagaOPS pada outlet/device operating factory dan
  payment/finance operations dalam B066-B077. Pack total tervalidasi pada 20
  wave, 120 batch dan 480 micro-sprint. Ini masih planning zero-cost:
  onboarding outlet cluster, provider, payment nyata, hardware, deployment dan
  production route belum dimulai.
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
