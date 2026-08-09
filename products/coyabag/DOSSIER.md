# COYABAG Dossier

## Tujuan dokumen

Merangkum brand, commerce workflow, readiness, bisnis, teknis, sales, dan
content COYABAG tanpa menyamakan surface live dengan commerce aktif.

## Konteks dan status bukti

- Updated: 9 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `BLOCKED`
- Business readiness: `BLOCKED`

## Overview produk

Ecommerce tas streetwear dengan storefront, API, dan admin operations.

## Masalah yang diselesaikan

Discovery produk, variant/media, cart/checkout, inventory/order operations, dan
content brand perlu satu sistem.

## Target pengguna

Customer fashion/streetwear, owner/admin, operator order/inventory/payment/
shipping/return/content/support.

## Persona pengguna

- Customer mobile: mencari visual, detail, variant, dan checkout yang jelas.
- Operator: memerlukan order/inventory/reconciliation/recovery.
- Owner: mengelola brand, catalog, margin, dan readiness.

## Value proposition

Storefront editorial streetwear yang terhubung ke backend operasional
fail-closed.

## Use case

Browse, search, product detail, wishlist/cart, checkout UI, order, inventory,
payment, shipping, return/refund, CMS, report, dan privacy request.

## Fitur utama

Homepage/shop/PDP, gallery/lookbook/FAQ, metadata/SEO, admin auth/RBAC/audit,
order/inventory ledger, payment/reconciliation, shipping/promo/CMS/report.

## Fitur MVP

`CONFIRMED`: surface web tersedia. Commerce MVP baru aktif setelah data, provider,
legal, 2FA, backup, dan transaction UAT lulus.

## Roadmap

1. Founder mengunci catalog, harga, stok, copy, media, seller/legal/policy.
2. Activate payment, shipping, email, storage, 2FA, backup/restore.
3. Sandbox/live transaction UAT.
4. Controlled launch dan support observation.

## User journey

Discover → browse/search → product detail → variant → cart → checkout →
payment → fulfillment → delivery → return/support.

## User flow

Cart harus dipertahankan ketika API tidak dapat diverifikasi; inventory
reservation dan terminal status fail-closed.

Source `264c6ac2ebec33c6471a4c49572ddcdc82b51cf2` juga
merekonsiliasi item tersimpan setelah katalog live siap: item/variant yang tidak
tersedia dikeluarkan, sedangkan stock, quantity, price, media, URL, nama, dan
warna mengikuti katalog server. Source sudah berada di `main`, dikunci sebagai
`v1.0.0-rc.3`, lulus empat exact-SHA CI job, dan aktif pada immutable release
`20260809-264c6ac`. Browser production desktop/mobile membuktikan recovery,
focus/Escape, no-overflow, API-failure preservation, dan checkout fail-closed.
Commerce activation tetap ditahan.

## Business model

Direct-to-consumer ecommerce. Margin, shipping subsidy, discount, tax, dan
return economics: `NEEDS CONFIRMATION`.

## Pricing

Product price dan promo final: `NEEDS CONFIRMATION`; dummy catalog tidak boleh
dipublikasikan sebagai fakta.

## Kompetitor

`NEEDS CONFIRMATION`: brand/market competitor set dan evidence. Jangan
mengarang benchmark harga.

## Diferensiasi produk

`PROPOSAL`: product storytelling editorial, streetwear identity, dan
operational integrity dari inventory sampai recovery.

## Brand positioning

Tas streetwear dengan visual hitam-putih/editorial product focus.

## Messaging

- Fokus pada design, material, detail, dan use context yang benar-benar
  disetujui.
- `NEEDS CONFIRMATION`: brand promise dan tagline final.

## FAQ

Shipping, payment, return, warranty, material, size, dan care belum boleh
dipublikasikan sebelum data owner final.

## Technical overview

React/Vite storefront dan Laravel/Inertia backend/admin dengan MySQL, Redis,
queue, cron, dan immutable release tooling.

Nginx storefront source `599f19272e3f02c35b0ed654259ca5bad2273ee6`
mempertahankan security header pada HTML dan asset walaupun kedua location
memiliki cache policy sendiri. Kontrak source, exact-main CI, syntax/reload,
public header/cache probe, dan browser desktop/mobile sudah lulus production.

Workflow CI source `b739106018b6a8ddbdccabe3046623ed413ebf5d` memakai
Node 24 untuk tiga jalur build/test, mem-pin 11 action ke commit SHA immutable,
dan menetapkan repository permission read-only. Verifier deployment menolak
floating tag, runtime Node 20, jumlah action/job yang berubah, trigger yang
hilang, atau permission yang melebar. Branch CI `31301386158` dan exact-main CI
`31301462116` lulus empat job tanpa anotasi. Ini adalah hardening CI, bukan
deployment aplikasi atau perubahan runtime production.

## Integrasi

Payment, shipping, SMTP, object storage, analytics, dan support. Production
provider belum terverifikasi lengkap.

## Data yang digunakan

Catalog/product/variant/media, customer, cart, order, inventory ledger,
reservation, payment, shipment, return/refund, promo, CMS, audit, dan privacy
request.

## Risiko dan asumsi

Surface live dapat disalahartikan sebagai checkout aktif; dummy data, provider,
2FA recovery, restore drill, monitoring, dan legal policy adalah blocker.
Residual inheritance security header storefront sudah ditutup; CSP tidak
diubah dalam hardening ini.

## KPI dan success metrics

`PROPOSAL`: PDP-to-cart, checkout completion, payment success, stock
accuracy, fulfillment time, return rate, support rate, repeat purchase, dan
margin. Baseline/target `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Editorial product detail; material/use case; behind-the-operations inventory;
build-in-public readiness.

## Contoh caption

`TODO`: menunggu copy, material, ukuran, dan value proposition final. Jangan
membuat caption produk faktual sebelum data owner tersedia.

## Ide campaign

`ASSUMPTION`: limited drop/editorial launch dapat relevan; mekanisme, stok, dan
urgency harus keputusan owner.

## Sales talking points

Gunakan fakta produk final, fit/material/use case, policy, dan fulfillment;
hindari scarcity atau testimonial palsu.

## Objection handling

Material, ukuran, ongkir, return, dan durability memerlukan data/policy final;
jangan menjawab dengan asumsi.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#coyabag).
