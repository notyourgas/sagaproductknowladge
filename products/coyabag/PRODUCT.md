# COYABAG Product Knowledge

Updated: 31 Juli 2026
Evidence status: production surfaces + blocked commerce activation

## Ringkasan

COYABAG adalah ecommerce tas streetwear dengan storefront React/Vite dan backend
operasional Laravel/Inertia.

Visual direction: streetwear, hitam-putih, editorial product focus, dengan
Instrument Serif untuk display dan Helvetica family untuk UI/body.

## Target pengguna

- Customer fashion/streetwear.
- Owner/admin COYABAG.
- Operator order, inventory, payment, shipping, return, content, dan support.

## Surface production

- Storefront: `https://www.coyabag.com`
- API: `https://api.coyabag.com`
- Admin: `https://admin.coyabag.com`

Surface live tidak sama dengan transaksi commerce sudah aktif penuh.

## Fitur storefront

- Homepage, shop, product detail, gallery, testimonial, lookbook, about, FAQ.
- Variant/color, gallery, product specification, review, related products.
- Search, cart, wishlist, checkout UI.
- Responsive desktop/mobile.
- Canonical metadata, OpenGraph, Twitter image, robots, sitemap, dan structured
  data.

## Fitur backend/admin

- Admin session auth, RBAC, 2FA foundation, audit.
- Order, product, variant, inventory ledger, reservation.
- Payment, reconciliation, refund, return.
- Shipping, promo, CMS, customer, report.
- Privacy request, invoice, notification outbox, health.
- MySQL/Redis/queue/cron dan immutable release tooling.

## Status saat ini

Status: `PRODUCTION_DEPLOYED_NOT_ACTIVATED`.

- Storefront, API, dan admin sudah live di Hostinger.
- Scheduler terminal expiry sudah fail-closed dan concurrency-tested.
- Commerce nyata tetap ditahan oleh blocker provider/operasional.

## Blocker business activation

- Data produk, harga, stok, copy, dan media final.
- Nomor WhatsApp, seller identity, legal/tax, policy.
- Payment dan shipping provider nyata.
- SMTP/email delivery.
- Object storage production.
- Owner 2FA enrollment dan recovery.
- Backup restore drill.
- Sandbox/live transaction UAT.

## Belum boleh diklaim

- Checkout UI tidak membuktikan pembayaran live.
- Adapter provider tidak membuktikan credential atau transaksi berhasil.
- Data dummy tidak boleh dipakai sebagai katalog production.

## Ide konten

- Streetwear product storytelling lewat storefront editorial.
- Di balik operasi inventory dan reservation.
- Mengapa ecommerce surface live belum otomatis siap menerima transaksi.
- Perjalanan dari prototype ke commerce fail-closed.
