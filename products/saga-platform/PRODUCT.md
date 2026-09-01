# Saga Platform Product Knowledge

Updated: 2 September 2026
Evidence status: production foundation + migration roadmap

## Tujuan dokumen

Menjadi ringkasan fakta kanonik Saga Platform. Detail product, experience,
business, technical, dan internal positioning berada di
[DOSSIER](DOSSIER.md). Keputusan terbuka berada di
[GAPS](../../GAPS.md#saga-platform).

## Konteks

Fondasi tertentu telah dipakai production, tetapi bounded-context migration dan
product adapter berlangsung bertahap.

## Ringkasan

Saga Platform adalah control plane SagaDev. Ia mengelola registry produk,
operator identity, product account, subscription, entitlement, audit,
readiness, launcher, dan integration contract.

Saga Platform bukan database gabungan seluruh operational data.

## Prinsip arsitektur

- Operational workflow dan data tetap dimiliki masing-masing produk.
- Produk terhubung melalui adapter/event contract.
- Identity bersama tidak berarti permission bersama.
- Subscription dan entitlement memiliki `product_code`.
- Event perlu signature, contract version, nonce/idempotency, retry, dan audit.
- Product outage tidak boleh membuka akses secara default.

## Target pengguna

- SagaDev super admin/operator.
- Support, finance, release, dan product operation.
- Product owner yang melihat readiness dan subscription.

## Capability

- Product registry dan launcher.
- Organization, membership, dan product account.
- Trial/subscription/entitlement.
- Billing/reconciliation.
- Audit dan readiness.
- Provisioning/suspend/resume.
- Integration/event contract.
- Knowledge/Saga AI support boundary.

## Product boundary

- SagaBook menjadi pilot control plane.
- SagaView menjadi adapter pertama.
- SagaMenu, SagaOPS, SagaBio, dan SagaFin menyusul berdasarkan readiness.
- Client projects masuk registry terlebih dahulu, bukan entitlement SaaS.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED` untuk fondasi yang tercantum di bawah.
Activation: parsial. Business model eksternal: `NEEDS CONFIRMATION`.

- Fondasi production hidup bersama repo/schema SagaBook.
- Product account dan commerce flows sudah digunakan untuk SagaBook/SagaView.
- Pemisahan bounded context dan adapter dilakukan bertahap.
- Bukan rewrite total.

### Saga Member local internal alpha dan Goal 2 local validation

- Saga Member dan Customer Platform memiliki private canonical source terpisah
  dari Contracts dan SagaOPS.
- Local alpha membuktikan Email OTP fixture, Member PWA, Points/XP/Tier,
  Voyager, Reward, Card, Quest, Push in-app fallback, SagaBook handoff, dan
  server-owned authority/replay boundaries.
- Goal 1 tetap diterima sebagai `LOCAL_INTERNAL_ALPHA_ACCEPTED`. Goal 2 kini
  diterima hanya pada scope `GOAL_2_LOCAL_VALIDATED`; staging sengaja dilewati
  untuk scope saat ini.
- Status irisan ini: `CONFIRMED / SOURCE_PUSHED / GOAL_2_LOCAL_VALIDATED /
  STAGING_SKIPPED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED /
  BUSINESS_READY=false`; ia tidak mengaktifkan provider, customer pilot, atau
  production.
- Goal 3 kini dieksekusi sampai batas lokal/kanonik: 20 wave, 120 batch, dan
  480 micro-sprint tercatat; 124 `LOCAL_PASS`, 108 `PARTIAL_LOCAL`, 118
  `EXTERNAL_GATE`, dan 130 `WAITING_PREREQUISITE`. Paket ops privat exact
  `e3a54319dfcefe9a3f2774c24f496e51b04e7197` dan CI exact commit lulus.
- Status Goal 3: `GOAL_3_LOCAL_CANONICAL_EXECUTED /
  ZERO_NEW_SPEND_LOCKED / EXISTING_VPS_AUDITED / EXTERNAL_RUNTIME_NO_GO /
  STAGING_NOT_PROVISIONED / PILOT_NOT_STARTED /
  IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
  Goal 3 belum complete; independent review, durable runtime, provider nyata,
  commissioning, pilot, dan production tetap gate terpisah.
- Pada 2 September 2026 Andreas mengganti opsi paid staging menjadi kebijakan
  nol biaya baru. Hanya domain/VPS yang sudah aktif boleh dipakai setelah audit
  fail-closed. Audit read-only menemukan disk root 83%, staging legacy yang
  bertabrakan, monitoring staging gagal, serta Customer Platform masih
  local-alpha tanpa durable PostgreSQL serving integration. Tidak ada purchase,
  resource, DNS, database, provider, pilot, atau perubahan production.
- Seluruh 432 micro-sprint Goal 4 kini memiliki disposition konservatif: 40
  `LOCAL_PASS`, 107 `PARTIAL_LOCAL`, 88 `EXTERNAL_GATE`, dan 197
  `WAITING_PREREQUISITE`. Baseline Goal 3 terbaru kembali lulus 17/17 local
  gate dan lima source candidate terinventaris sebagai clean/canonical.
- Statusnya `GOAL_4_ZERO_COST_PREPARATION_EXECUTED /
  ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`, bukan
  Goal 4 complete. Incremental spend tetap Rp0; tidak ada provider call,
  customer data, VPS/DNS, deployment, pilot, route scale, atau production
  mutation. Exact ops `b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3` dan CI
  exact commit lulus.
- Strategi Goal 5 kini tervalidasi sebagai fase **Sustainable Portfolio
  Expansion & Ecosystem Operating System**: 20 wave, 120 batch, 40
  macro-sprint, 480 micro-sprint, 60 risiko, 20 automatic safety checkpoint,
  dan 108 trace row dari Goal 4. Preparation read-only/local/synthetic boleh
  berjalan tanpa owner-wait pada incremental budget Rp0.
- Status Goal 5 `STRATEGY_VALIDATED / ZERO_COST_UNATTENDED_PREP_READY /
  ENTRY_NO_GO / ROUTE_EXECUTION_NOT_STARTED / PRODUCTION_UNCHANGED`. G417 Goal
  4, exact route, independent review dan scope masih belum diterima; planning
  ini tidak mengizinkan purchase, provider, VPS/DNS, customer data, merge,
  deployment, activation atau NFC. Exact ops
  `075a3e86c852568b67797cfb40bb764e58434167`; CI exact commit lulus.
- Seluruh 480 micro-sprint Goal 5 kini memiliki disposition konservatif: 59
  `LOCAL_PASS`, 119 `PARTIAL_LOCAL`, 106 `EXTERNAL_GATE`, dan 196
  `WAITING_PREREQUISITE`. Dua belas kategori preparation lokal/Rp0 dijalankan;
  fresh source baseline kembali lulus 17/17 dan lima canonical candidate
  terinventaris clean melalui audit read-only.
- Status eksekusinya `GOAL_5_ZERO_COST_PREPARATION_EXECUTED /
  ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`, bukan
  Goal 5 complete. Tidak ada purchase, provider, data pelanggan, VPS/DNS,
  merge, deployment, activation, ring advancement atau NFC. Exact ops
  `058ab3dc4724b808d248e61b2c42de032c1a671a`; CI exact commit lulus.
- Strategi Goal 6 kini tervalidasi sebagai fase **Durable Portfolio Institution
  & Strategic Ecosystem Expansion**: 22 wave, 132 batch, 44 macro-sprint, 528
  micro-sprint, 66 risiko, 22 automatic safety checkpoint, dan 120 trace row
  dari Goal 5. Seluruh 10 role SAGADEVS tercakup.
- Status Goal 6 `GOAL6_STRATEGY_VALIDATED /
  ZERO_COST_UNATTENDED_PREP_READY / ENTRY_NO_GO /
  ROUTE_EXECUTION_NOT_STARTED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
  Goal 5 belum complete dan G519 belum diterima; 365-day proof tidak dapat
  diganti simulasi. Preparation lokal/read-only/synthetic boleh berjalan tanpa
  owner-wait pada Rp0, sedangkan purchase, provider, data nyata, VPS/DNS,
  merge, deploy, activation, network expansion dan NFC tetap dilarang/OFF.
  Exact ops `f557f31bb0b04cfac4ac8399a33ab0ab4cc5336f`; CI run
  `33561290143` lulus.
- Program eksekusi Goal 0–6 kini memiliki one-command local pilot launcher dan
  hub loopback yang menghidupkan Member PWA, Customer API, serta SagaOPS
  operator UAT dengan credential sintetis runtime-only. Fresh component
  baseline lulus Contracts 11/11, Customer 47/47, Member 18/18 plus browser,
  dan SagaOPS 76/76.
- Status slice ini `ALL_GOALS_LOCAL_EXECUTION_STARTED /
  LOCAL_PILOT_LAUNCHER_VALIDATED / ZERO_NEW_SPEND /
  PRODUCTION_UNCHANGED / BUSINESS_READY=false`. Provider tetap simulator,
  data nyata tidak dipakai, NFC OFF, dan durable PostgreSQL/external runtime
  belum diterima. Exact ops `65615c42760e952f85acf4d1545464746e91673f`;
  CI run `33562643115` lulus.

## Gap utama

- Memisahkan control plane dari operational module tanpa merusak production.
- Multi-operator identity dan permission.
- Adapter per produk.
- Unified observability tanpa membocorkan business data.
- Saga AI grounded retrieval.

## Ide konten

- Mengapa multi-product platform tidak boleh menjadi satu database besar.
- Shared identity vs shared permission.
- Control plane untuk SaaS portfolio.
