# SagaOPS Product Knowledge

Updated: 3 September 2026
Evidence status: `CONFIRMED / SOURCE_COMMITTED_LOCAL_BRANCH / SAGA_POS_M4_LOCAL_DURABLE_RUNTIME / SAGADEV_GATEWAY_CONTRACT_LOCKED / EXTERNAL_RUNTIME_NO_GO / STAGING_NOT_PROVISIONED / IMPLEMENTED_NOT_DEPLOYED`

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
- Saga POS local sprint lab dengan lima surface: self-service Kiosk, assisted
  Cashier fallback, nota checker/KDS, Owner Dashboard, dan POS Admin.
- Catalog 18 menu Kopi Saga Salak, modifier fixture, cash/shift, QRIS simulator,
  Member/Reward fixture, sold-out versioning, refund/remake contract, report,
  export, device/print boundary, dan safe kiosk reset.

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

- Saga POS source branch `codex/saga-pos-vs01-kiosk-kds-dashboard` exact
  `8b63df321c3a0f7aeba9080eea5ac044470a6d8c` menyelesaikan local program
  24 wave/120 batch/480 micro-sprint. Disposition: 62 batch `PASS_LOCAL`, 28
  `LOCAL_SIMULATED`, 30 `BLOCKED_EXTERNAL`; readiness M4 84/100.
- 108/108 test, browser E2E lima surface, automated accessibility, dependency
  audit 0 vulnerability, 6 screenshot evidence, dan enam migration local
  PostgreSQL/RLS/cross-outlet deny
  lulus. Source commit belum dipush/merge saat knowledge ini ditulis.
- Readiness extension menambah 10 wave/40 batch/160 micro-sprint dari durable
  runtime sampai owner business-ready decision. Empat batch W25/16 micro-sprint
  lulus lokal dan membuka +4. Contract/preparation 36 batch lain telah
  dijalankan; external verify/accept masih menunggu input dan tidak membuka poin.
- Disk-backed local durable runtime menyediakan migration registry, atomic
  checkout/outbox, collision-safe order counter, signed-event replay guard,
  exactly-once fulfillment, manual-finance refund work item, dan restart
  recovery Kiosk/KDS/Dashboard. Ini bukan external Postgres atau staging proof.
- Founder mengunci SagaDev Gateway sebagai satu-satunya payment gateway Saga
  POS dengan product binding `sagaops`; PJP/acquirer tetap dikelola di belakang
  SagaDev dan tidak dikonfigurasi langsung oleh POS.
- Local contract mencakup readiness, product-scoped signed request, idempotent
  create, signed event/status recovery, amount/order/currency/replay guard,
  settlement facts, serta full-refund manual-finance yang tidak memalsukan
  status refunded. SagaDev sandbox dan transaksi nyata belum dijalankan.
- Lima surface dapat memakai disk-backed local durable runtime dan restart
  recovery sudah terbukti lokal. Evidence ini bukan bukti external PostgreSQL,
  multi-instance runtime, staging, atau production recovery.

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
- Eksekusi preparation Goal 5 kini mendisposisi seluruh 480 unit: 59 local
  pass, 119 partial local, 106 external gate, dan 196 waiting prerequisite.
  SagaOPS tetap hanya memiliki bukti source/local; outlet cluster, provider,
  hardware, payment nyata, deployment dan production belum dijalankan.
- Strategi Goal 6 mencakup SagaOPS pada wave outlet network/device fleet dan
  payment/settlement/treasury, dalam pack total 22 wave, 132 batch dan 528
  micro-sprint. Ini hanya planning serta preparation lokal/Rp0; outlet network,
  device commissioning, provider, settlement nyata, deploy dan activation
  belum dimulai. Entry Goal 6 tetap `NO_GO` karena Goal 5/G519 belum diterima.
- SagaOPS operator UAT kini dapat dijalankan bersama Member dan Customer API
  melalui one-command local pilot hub. OWNER, STAFF-01 dan STAFF-02 memakai
  credential sintetis yang dibuat di memori proses; provider, NFC dan printer
  tetap simulator/OFF/fallback. Ini local technical UAT, bukan outlet pilot.
- QRIS dynamic, thermal printer, real offline conflict resolution, dan provider
  nyata belum termasuk bukti production.

## Belum boleh diklaim

- Dummy data bukan transaksi outlet.
- Offline simulation bukan offline production.
- Manual QRIS bukan payment gateway.
- Local PostgreSQL/PGlite bukan bukti kapasitas atau disaster recovery staging.
- Automated browser UAT bukan human business acceptance.
- Fixture Member/Reward/QRIS bukan Customer Platform/provider acceptance.

## Ide konten

- Kenapa stok harus berbasis movement.
- Recipe/HPP sebagai dasar harga.
- Closing shift dan cash variance.
- Dari stock warning menjadi purchase order.
