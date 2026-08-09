# COYABAG Product Knowledge

Updated: 9 Agustus 2026
Evidence status: production surfaces + blocked commerce activation

## Tujuan dokumen

Menjadi ringkasan fakta kanonik COYABAG dan memisahkan surface live dari
commerce activation. Detail berada di [DOSSIER](DOSSIER.md); keputusan owner
berada di [GAPS](../../GAPS.md#coyabag).

## Konteks

Storefront/API/admin dapat live sementara payment, shipping, data final, dan
operasi commerce tetap belum diaktifkan.

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

Delivery: `PRODUCTION_DEPLOYED`. Activation: `BLOCKED`. Business readiness:
`BLOCKED`.

- Storefront, API, dan admin sudah live di Hostinger.
- Scheduler terminal expiry sudah fail-closed dan concurrency-tested.
- Release candidate source `264c6ac2ebec33c6471a4c49572ddcdc82b51cf2`
  merekonsiliasi
  cart tersimpan dengan katalog live setelah API siap, mempertahankan cart saat
  API gagal, dan menahan checkout sebelum verifikasi katalog selesai.
- Batch A pada release candidate tersebut memperbarui CommonMark dan Vite storefront/
  admin serta menutup advisory dependency yang terdeteksi pada baseline.
- Candidate lulus unit, build, browser desktop/mobile, Laravel, npm/Composer
  audit, dan secret scan lokal; branch remote sudah sinkron.
- GitHub Actions `main` exact-SHA run `31292840016` lulus pada seluruh empat job:
  Frontend QA, Backend QA, MySQL 8 Integration, dan Cart Browser QA.
- Source sudah fast-forward ke `main` tanpa history rewrite dan ditag immutable
  sebagai `v1.0.0-rc.3`. GitHub prerelease memuat source, storefront, admin,
  manifest, serta checksum yang menunjuk exact SHA yang sama.
- Status `LOCAL_VALIDATED / MAINLINE_SYNCED / CI_VERIFIED /
  RELEASE_CANDIDATE / NOT_DEPLOYED`.
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
