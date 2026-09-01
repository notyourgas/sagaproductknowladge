# Saga Platform Dossier

## Tujuan dokumen

Menjelaskan control-plane boundary, pengguna, strategi, teknis, risiko, dan
status Saga Platform.

## Konteks dan status bukti

- Updated: 1 September 2026
- Delivery: `PRODUCTION_DEPLOYED` untuk fondasi tertentu
- Activation: `PRODUCTION_ACTIVATED` untuk fondasi yang dipakai;
  `NOT_PRODUCTION_ACTIVATED` untuk adapter/roadmap lain
- Business readiness: `NEEDS CONFIRMATION`; konteks saat ini internal-only

## Overview produk

Control plane SagaDev untuk product registry, identity, product account,
subscription, entitlement, audit, readiness, launcher, dan integration
contract.

## Masalah yang diselesaikan

Portfolio multi-produk memerlukan registry, entitlement, operator tooling, dan
integration contract tanpa menggabungkan seluruh operational data.

## Target pengguna

SagaDev super admin, support, finance, release, product operations, dan product
owner.

## Persona pengguna

- Platform operator: provisioning/suspend/recovery.
- Support: melihat context dan readiness tanpa membuka data berlebihan.
- Finance: subscription/reconciliation.
- Product service: adapter/event contract.

## Value proposition

Satu control plane untuk akses dan operasi portofolio dengan bounded context per
produk.

## Use case

Product registry/launcher, organization/membership, product account, trial,
subscription, entitlement, audit, readiness, provisioning, integration event.

## Fitur utama

Capability tercatat di [PRODUCT](PRODUCT.md); implementasi per capability
bervariasi dan tidak boleh digeneralisasi.

Saga Member merupakan bounded context/customer experience lokal yang memakai
kontrak dan authority terpisah. Goal 1 tetap `LOCAL_INTERNAL_ALPHA_ACCEPTED`;
Goal 2 diterima hanya sebagai `GOAL_2_LOCAL_VALIDATED` dengan staging dilewati
untuk scope saat ini. Provider, independent review, commissioning, controlled
pilot, production activation, dan business readiness belum dibuktikan.

## Fitur MVP

Product-scoped account, subscription/entitlement, provisioning, audit, dan
adapter untuk SagaBook/SagaView.

## Roadmap

1. Pisahkan control-plane boundary bertahap tanpa rewrite.
2. Multi-operator identity/permission.
3. Adapter per produk.
4. Unified observability public-safe.
5. Saga AI grounded retrieval.

## User journey

Operator register product/org → provision account → activate entitlement →
monitor readiness → support/suspend/resume → audit/offboard.

## User flow

Semua action material permissioned, idempotent, product-scoped, dan auditable.

## Business model

`NEEDS CONFIRMATION`: internal infrastructure atau product eksternal. Saat ini
diposisikan sebagai internal control plane.

## Pricing

Tidak ada pricing eksternal yang disetujui.

## Kompetitor

`NEEDS CONFIRMATION`: internal admin platform, SaaS control plane, entitlement
management, identity/organization platform.

## Diferensiasi produk

Product registry dan commercial control terhubung ke workflow Saga tanpa
menjadi shared operational database.

## Brand positioning

Control plane internal Saga product family.

## Messaging

“Shared identity bukan shared permission.”
“Satu registry, bounded context tetap terpisah.”

## FAQ

**Apakah semua data masuk Platform?** Tidak.
**Apakah satu akun otomatis mengakses semua produk?** Tidak.
**Apakah dijual publik?** Belum diputuskan.

## Technical overview

Control-plane services/schema dengan product_code, signed/versioned integration
events, idempotency, retry, audit, dan fail-closed outage behavior.

## Integrasi

SagaBook pilot, SagaView adapter, lalu produk lain berdasarkan readiness.

## Data yang digunakan

Product registry, organization/membership, product account, subscription,
entitlement, readiness, audit, provisioning state, dan integration metadata.

## Risiko dan asumsi

Coupling dengan operational module, privilege escalation, shared identity
confusion, event replay, observability data leakage, dan migration risk.

## KPI dan success metrics

`PROPOSAL`: provisioning success/time, entitlement incident, adapter
failure, support resolution, audit coverage, release gate accuracy. Target
`NEEDS CONFIRMATION`.

## Ide konten pemasaran

Control plane vs monolith; shared identity vs permission; integration contract.

## Contoh caption

`PROPOSAL`: “Satu akun tidak berarti satu izin. Saga Platform menjaga
identity tetap nyaman tanpa mencampur hak akses antarproduk.”

## Ide campaign

`ASSUMPTION`: engineering/build-in-public series; bukan public sales campaign.

## Sales talking points

Untuk internal stakeholders: bounded context, operability, audit, dan gradual
migration. External sales belum relevan.

## Objection handling

- “Kenapa tidak satu database?”: operational ownership, blast radius, privacy,
  dan independent release.
- “Kenapa tidak rewrite?”: gradual adapter/migration mengurangi risiko.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#saga-platform).
