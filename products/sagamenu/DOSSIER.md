# SagaMenu Dossier

## Tujuan dokumen

Menjelaskan product contract katalog preview-first, kesiapan, bisnis, teknis,
sales, dan konten SagaMenu.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `LOCAL_VALIDATED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`

## Overview produk

E-menu/e-katalog preview-first untuk F&B, jasa, dan bisnis dengan offering
visual.

## Masalah yang diselesaikan

Katalog tersebar, draft mudah bocor, display/mobile tidak sinkron, dan media
gagal tanpa recovery yang jelas.

## Target pengguna

Owner bisnis, editor katalog, customer/pengunjung, dan SagaDev operator.

## Persona pengguna

- Owner: ingin publish/restore aman.
- Editor: mengelola offering dan media.
- Customer: menemukan dan membandingkan offering.
- Operator: onboarding dan support.

## Value proposition

Satu immutable catalog snapshot untuk Store Display dan Mobile Catalog.

## Use case

Draft/preview/publish, display tablet, katalog mobile, QR, offering/variant,
media recovery, analytics allowlist, dan restore.

## Fitur utama

Owner dashboard, atomic publish, history/restore, appearance preset, gallery,
video retry, QR, analytics, membership/role, audit, onboarding, dan backup
baseline.

## Fitur MVP

Catalog/Collection/Offering/CatalogSnapshot informational. Cart, order, payment,
POS, inventory, dan loyalty tidak termasuk.

## Roadmap

1. Production-like staging dengan PostgreSQL/Redis.
2. SMTP, media scanning, offsite backup, restore drill, monitoring.
3. Signed acceptance mobile/tablet dan deploy immutable.
4. `NEEDS CONFIRMATION`: pricing dan self-service.

## User journey

Owner menyusun katalog → preview → publish → customer scan QR/browse → owner
melihat insight → restore bila perlu.

## User flow

Draft terpisah dari public snapshot; publish atomik; unpublish/restore
permissioned dan auditable.

## Business model

`ASSUMPTION`: subscription plus optional setup/service. Belum diputuskan.

## Pricing

`OWNER DECISION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: competitor set. Kategori: QR menu, digital catalog, menu
builder, marketplace listing, dan website builder.

## Diferensiasi produk

`RECOMMENDATION`: preview-first, immutable snapshot, tablet+mobile consistency,
restore, dan accessible media failure.

## Brand positioning

Katalog visual yang siap dipreview sebelum dipublikasikan.

## Messaging

- “Lihat persis apa yang customer lihat sebelum publish.”
- “Satu snapshot untuk display dan mobile.”

## FAQ

**Ada checkout?** Tidak pada scope pilot.
**Bisa WhatsApp order?** Bukan primary flow.
**Sudah live?** Belum; status local validated.

## Technical overview

Laravel/Filament dengan public renderers dan immutable catalog snapshots.
Target production memerlukan PostgreSQL/Redis dan infrastructure gate.

## Integrasi

Media storage/scanning, QR, analytics, SMTP, dan monitoring. Provider production
belum terverifikasi.

## Data yang digunakan

Tenant, membership, catalog, collection, offering, option/variant/inclusion,
media metadata, snapshot, QR, allowlisted event, dan audit.

## Risiko dan asumsi

Local SQLite tidak mewakili production; media, email, backup, dan monitoring
belum diverifikasi eksternal.

## KPI dan success metrics

`RECOMMENDATION`: time-to-publish, preview-to-publish, QR open, offering view,
media failure/recovery, restore frequency, dan retention. Target `NEEDS
CONFIRMATION`.

## Ide konten pemasaran

Preview-first vs edit-live; satu snapshot dua surface; media recovery; SagaMenu
vs SagaBio.

## Contoh caption

`RECOMMENDATION`: “Jangan biarkan customer menjadi orang pertama yang menemukan
menu salah. Preview, publish, dan restore dari satu snapshot yang sama.”

## Ide campaign

`ASSUMPTION`: “Catalog Cleanup Week” untuk audit katalog pilot.

## Sales talking points

Demo draft→preview→publish→restore; jelaskan scope informational dan gate
production.

## Objection handling

- “Kami butuh order/payment”: bukan scope pilot SagaMenu.
- “Bisa pakai PDF”: bandingkan update, mobile readability, media, dan insight
  tanpa mengarang ROI.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagamenu).
