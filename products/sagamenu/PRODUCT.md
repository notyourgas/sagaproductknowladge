# SagaMenu Product Knowledge

Updated: 31 Juli 2026
Evidence status: local pilot closure

## Ringkasan

SagaMenu adalah e-menu/e-katalog preview-first untuk resto, coffee shop, jasa,
dan bisnis yang membutuhkan katalog visual.

Produk membantu pengunjung menemukan, membandingkan, dan memahami offering.
Scope pilot tidak mencakup cart, order, payment, POS, inventory, atau loyalty.

## Domain produk

- `Catalog`
- `Collection`
- `Offering`
- `CatalogSnapshot`

Store Display tablet-first dan Mobile Catalog mobile-first membaca immutable
snapshot yang sama.

## Target pengguna

- Owner F&B atau jasa.
- Editor content/catalog.
- Customer/pengunjung katalog.
- SagaDev operator untuk onboarding dan support.

## Fitur pilot

- Owner dashboard Filament.
- Draft preview, atomic publish, snapshot history, restore, dan unpublish.
- Offering, variant/option/inclusion informational.
- Appearance preset dan custom font controlled.
- Gallery media.
- QR route/download.
- Analytics allowlist dan rollup.
- Membership/role policy dan audit.
- Onboarding status dan Needs Attention view.
- Backup/restore/runbook baseline.

## Status saat ini

Status: `LOCAL_VALIDATED`.

- Wave 1-4 dan Sprint 5 pilot closure selesai secara lokal.
- Test, build, browser tablet/mobile, tenant isolation, dan release artifact
  tersedia.
- Production belum boleh diklaim karena PostgreSQL/Redis/VPS, TLS, SMTP,
  ClamAV, offsite backup, monitoring, dan restore drill eksternal belum
  diverifikasi.

## Belum boleh diklaim

- Tidak ada checkout/order/payment.
- Tidak ada production domain yang terverifikasi.
- WhatsApp order bukan primary pilot flow.
- Local SQLite tidak sama dengan production PostgreSQL.

## Ide konten

- Mengapa katalog preview-first tidak harus menjadi marketplace.
- Satu snapshot untuk display tablet dan katalog mobile.
- Publish/restore tanpa membocorkan draft.
- Perbedaan SagaMenu dan SagaBio.
