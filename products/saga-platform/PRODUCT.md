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
- Strategi Goal 4 kini tervalidasi: 18 wave, 108 batch, 36 macro-sprint dan 432
  micro-sprint. Preparation lane boleh berjalan unattended dengan budget Rp0,
  tanpa menunggu approval interaktif, hanya untuk read-only/local dan data
  sintetis. Route scale tetap `PLANNED_NOT_STARTED`; external, VPS/DNS,
  provider, customer-data dan production mutation tetap dilarang.

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
