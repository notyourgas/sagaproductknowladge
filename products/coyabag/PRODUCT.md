# COYABAG Product Knowledge

Updated: 24 Agustus 2026
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
- Release aktif `20260824-51dfa7c` dengan source
  `51dfa7c65d39554677c8a8b2e8712ac87faa2abc` tetap melayani production.
- Release ini menambahkan destination/quote integrity, payment-to-fulfillment,
  Delivery Order/AWB/pickup/label foundation, tracking webhook inbox, shipping
  finance ledger, cancellation/incident/refund workflow, command center, dan
  customer timeline.
- Empat migration additive, fresh backup/checksum, dua worker, operational
  monitor, serta 39 public smoke check desktop/mobile lulus.
- Readiness production resmi `28/40` atau 70%, `ready=false`, dengan 12
  blocker. COD, Delivery API, payment production, dan provider webhook eksplisit
  tidak diaktifkan.
- Kandidat source `5dd225c6b6cfebf34235321d0bd160a8e7f0dfd0` memperbaiki
  integritas discovery Beranda: kartu scene hanya membuka produk live yang
  sesuai, fallback aman kembali ke katalog, alias `Campus Fit` mengikuti
  taksonomi `Campus`, dan grid etalase menyesuaikan jumlah produk live.
- Unit, browser desktop/mobile, build, security/dependency, Laravel, serta
  release artifact kandidat `20260824-5dd225c` lulus. Kandidat tidak aktif:
  cutover dibatalkan dan production dikembalikan ke release sebelumnya karena
  operational monitor belum hijau setelah satu kesalahan perintah operator.
  Status perubahan ini `LOCAL_VALIDATED / COMMITTED_LOCAL /
  IMPLEMENTED_NOT_DEPLOYED`.
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
- Release tersebut aktif di Hostinger sebagai immutable release
  `20260809-264c6ac`; rollback langsung `20260730-33637aa` dipertahankan.
- Guarded cutover, fresh backup/checksum, nol migration pending, storefront/API/
  admin smoke, dua queue worker, security header API/admin, browser desktop/
  mobile, dan tiga scheduler cycle lulus. Deployment manifest public-safe
  mencatat exact source dan artifact parity.
- Source hardening `599f19272e3f02c35b0ed654259ca5bad2273ee6` menutup
  inheritance header storefront ketika HTML/asset memakai cache policy
  location-level. Exact-main CI run `31300148412`, guarded Nginx deploy,
  browser dua viewport, dan postdeploy audit lulus; HTML dan asset kini
  konsisten mengirim HSTS, nosniff, frame policy, serta referrer policy.
- Source CI hardening `b739106018b6a8ddbdccabe3046623ed413ebf5d`
  memindahkan tiga job build/test ke Node 24, mem-pin seluruh 11 pemakaian
  GitHub Action ke full commit SHA, dan membatasi permission workflow ke
  `contents: read`. Branch run `31301386158` serta exact-main run
  `31301462116` lulus empat job dengan nol anotasi, termasuk nol warning Node
  20. Status perubahan ini `MAINLINE_SYNCED / CI_VERIFIED`; production tidak
  berubah.
- Status `LOCAL_VALIDATED / MAINLINE_SYNCED / CI_VERIFIED /
  PRODUCTION_DEPLOYED`. Activation dan business readiness tetap `BLOCKED`.
- Commerce nyata tetap ditahan oleh blocker provider/operasional.

- Monitoring pembayaran order CoyaBag kini tersedia pada workspace SagaDev
  yang terlindungi. Saga Platform release `20260824104557-65f9ff4` menjalankan
  exact source `65f9ff4ee42926cabfe0ebd83de3ae1f1fcca7c0`; rollback langsung
  `20260804171621-0ab9d8e` dipertahankan.
- Control plane menyediakan tiga kontrak internal signed untuk readiness,
  create, dan status pembayaran order. Dashboard menampilkan agregat status,
  GMV, fee, net, dan settlement tanpa nama, email, telepon, atau alamat customer.
- Satu migration registrasi produk diterapkan, tetapi installation dan service
  credential CoyaBag tetap nol. Checkout publik tetap
  `PRODUCTION_READINESS_BLOCKED`; status ini adalah
  `PRODUCTION_DEPLOYED_MONITORING`, bukan payment production-activated.

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
