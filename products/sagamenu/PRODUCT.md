# SagaMenu Product Knowledge

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| pilot-application-and-prototype | [Source](https://github.com/notyourgas/sagamenu/tree/main) | `2cd48139cea0f75d9a02b0a86d8f6ffe12ee2d58` | `SOURCE_PUSHED` |

Source Laravel pilot dan prototype tersimpan pada repo privat terpisah. Seluruh 380 path tracked dari subtree pilot sumber asal tersedia dalam snapshot; skeleton storage dan contoh release ikut disimpan, sedangkan runtime data/environment privat dikecualikan. Baseline workspace juga dipertahankan dalam histori repo. Ini tidak menerbitkan target PostgreSQL/VPS atau mengklaim production readiness.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

Updated: 31 Juli 2026
Evidence status: local pilot closure

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaMenu. Detail lengkap berada di
[DOSSIER](DOSSIER.md); keputusan terbuka berada di
[GAPS](../../GAPS.md#sagamenu).

## Konteks

Informasi saat ini berasal dari pilot closure lokal; infrastructure production
dan public runtime belum terverifikasi.

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
- Gallery media dengan fallback aksesibel saat gambar gagal.
- Video menu dengan status gagal, retry, dan recovery tanpa reload halaman.
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
- Public media recovery untuk Bio Menu dan Store Display sudah local validated,
  tetapi belum dideploy.
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
