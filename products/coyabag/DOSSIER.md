# COYABAG Dossier

## Tujuan dokumen

Merangkum brand, commerce workflow, readiness, bisnis, teknis, sales, dan
content COYABAG tanpa menyamakan surface live dengan commerce aktif.

## Konteks dan status bukti

- Updated: 24 Agustus 2026
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

Release production terbaru `20260824-55674a3` memakai source
`55674a3871eef05e68c9eaaf4cc5520698d5a7d2` dan rollback
`20260824-a947ce3`. Bag Finder kini memakai katalog Laravel live untuk lima
langkah preferensi dan hanya memberi hasil dari produk/varian yang benar-benar
published, discoverable, berharga positif, dan tersedia. Ranking bersifat
deterministik, memberi alasan yang dapat dipahami, membawa exact variant ke
detail/cart, dapat dibagikan melalui URL, dan hanya menyimpan preferensi tanpa
PII. Loading, error/retry, empty, no-match, relaxation, dan hasil lulus browser
desktop/mobile. Build production memaksa API canonical dan menolak fallback
katalog lokal; Our Product fail-closed ketika data belum siap. Commerce tetap
tidak aktif karena readiness masih 30/42 dengan 12 blocker.

Release sebelumnya `20260824-a947ce3` memberi customer flow quote snapshot yang divalidasi
server, payment-to-fulfillment, serta timeline order/pengiriman terpadu.
Operator memiliki shipping command center, packing/weight review, provider
operation journal, pickup/label/tracking foundation, finance ledger,
cancellation guard, incident, stock disposition, dan refund review. Seluruh
provider baru dan COD tetap fail-closed.

Payment action kini berasal dari server untuk state needs-session,
session-expired, ready, pending, completed, failed, expired, support-required,
dan unavailable. Terminal/ambiguous state tidak dapat membuat pembayaran baru;
redirect hanya tersedia ketika session masih boleh dibuka. Fokus/return ke tab
memicu reconciliation segera. Full acceptance dan public desktop/mobile smoke
lulus tanpa mengaktifkan provider atau transaksi nyata.

Delivery action kini berasal dari server untuk state not-ready, preparing,
ready-to-ship, in-transit, stale, exception, delivered, cancelled, dan
returned. Event terakhir yang tersimpan menjadi sumber kebenaran; resi,
provider promise, dan exception privat tidak dibuat atau dibocorkan. Storefront
dan panel customer-facing di Admin Shipment Detail menggunakan state yang sama,
sedangkan refresh interval digabung dengan payment dan berhenti pada state
terminal/operator-required. Browser desktop/mobile serta full release gate
lulus tanpa mengaktifkan Shipping Delivery atau mengubah order production.

Customer return creation memakai UUID client yang terikat order dan hash
payload server. Replay yang sama mengembalikan request lama, sedangkan payload
berbeda dengan key yang sama ditolak; order lock, unique constraint, dan outbox
transactional mencegah duplikasi akibat retry atau concurrency. Customer hanya
dapat membatalkan state `requested`, repeat cancel idempotent, dan quantity yang
dibatalkan kembali eligible. Storefront/Admin memakai public return action dan
safe refund state yang sama, tetapi instruksi customer tetap dipisahkan dari
catatan internal dan provider reference. Full release gate, browser dua
viewport, backup, worker, scheduler, dan smoke lulus tanpa memutasi return
production atau mengaktifkan payment/refund provider.

Quote manual/external kini memiliki identitas unik dan immutable untuk setiap
penerbitan. Waktu terbit/kedaluwarsa ikut tersimpan pada snapshot order;
Checkout menyaring quote usang, memblokir submit ketika kedaluwarsa, dan
me-refresh sebelum expiry. Admin melihat courier, service, berat aktual/tagih,
sumber tarif, waktu cek, serta masa berlaku tanpa destination hash atau payload
provider privat. Release lulus 75 storefront test, 317 Laravel test dengan satu
MySQL-only skip dan 2.374 assertion, browser desktop/mobile, build, security,
dependency, backup, worker, scheduler, public smoke, dan operational monitor.

Cart aktif menggunakan exact variant ID, merekonsiliasi harga, stok, media, dan
jumlah setelah katalog Laravel siap, menggabungkan duplikat legacy, serta
mempertahankan sesi ketika API atau storage perangkat gagal. Drawer dan halaman
Cart memiliki parity keyboard/touch, recovery, remove/undo, dan no-overflow.
Checkout/quote server menolak variant ID yang tidak aktif dan memakai published
commercial snapshot; tidak ada order atau inventory production yang diubah pada
acceptance release ini.

Cart menyegarkan katalog setelah reconnect, mendeduplikasi refresh paralel, dan
memverifikasi perubahan lintas tab. Payload lintas tab yang malformed ditolak
tanpa menghapus sesi aktif. Handoff ke customer detail melakukan refresh
authoritative; perubahan harga, stok, atau availability tetap berada pada
Review Cart dengan feedback live sampai pemeriksaan berikutnya bersih. Checkout
production tetap disabled.

Checkout dan idempotent replay kini menetapkan cookie order path-scoped
HttpOnly, Secure, SameSite Lax. Response checkout tidak lagi mengekspos raw
access token/private URL, dan frontend hanya menyimpan order code di
sessionStorage. Token legacy dimigrasikan sekali lalu dihapus. Mutasi berbasis
cookie memerlukan Origin storefront yang diizinkan; signed recovery link
terikat access generation dan tidak berlaku setelah operator melakukan reissue.

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

Adapter RajaOngkir/Komerce Cost/Delivery dan Komerce Payment sudah berada di
runtime production sebagai kemampuan default-off. Activation tetap menunggu
credential/entitlement, authenticity webhook, sandbox dan controlled-live UAT,
kurir/gudang, finance reconciliation, serta sign-off owner/admin/finance.

## Data yang digunakan

Catalog/product/variant/media, customer, cart, order, inventory ledger,
reservation, payment, shipment, return/refund, promo, CMS, audit, dan privacy
request.

## Risiko dan asumsi

Surface live dapat disalahartikan sebagai checkout aktif; dummy data, provider,
2FA recovery, restore drill, monitoring, dan legal policy adalah blocker.
Residual inheritance security header storefront sudah ditutup; CSP tidak
diubah dalam hardening ini.

Risiko private order access pada long-lived browser storage sudah ditutup oleh
release `20260824-94a54b4`. Ini tidak mengaktifkan checkout atau provider.

Readiness runtime terbaru `30/42` atau 71%, `ready=false`, dengan 12 blocker:
payment key/live mode/provider, owner 2FA, launch UAT/sign-off, mail/notification
sender, media/object storage, dan privacy-retention approval.
Status code `PRODUCTION_DEPLOYED` tidak mengubah activation maupun business
readiness yang tetap `BLOCKED`.

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
