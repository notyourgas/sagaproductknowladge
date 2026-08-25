# COYABAG Dossier

## Tujuan dokumen

Merangkum brand, commerce workflow, readiness, bisnis, teknis, sales, dan
content COYABAG tanpa menyamakan surface live dengan commerce aktif.

## Konteks dan status bukti

- Updated: 25 Agustus 2026
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

Release production terbaru `20260826-0a57b75` memakai source
`0a57b75839808af865f9272027ed5a02fde8de9d` dan rollback
`20260825-e684ae3`. Checkout selesai dan Order Status memakai action pembayaran
server-authoritative yang sama. Customer mendapat handoff tab baru, waktu
status terakhir diperiksa, manual refresh, return-to-tab refresh, dan recovery
error tanpa sukses palsu. Request refresh/create-session paralel dideduplicasi;
outcome ambigu tetap membutuhkan review dan redirect wajib HTTPS. Sembilan
payment acceptance scenario, full regression, responsive/accessibility live,
security, performance, backup/rollback, dan smoke lulus tanpa order atau
provider production. Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260825-e684ae3` memakai source
`e684ae38f19a4e7f17ead395903c3457946ed011` dan rollback
`20260825-5cc10ec`. Checkout Detail memvalidasi nama, penerima, WhatsApp 8-15
digit, email, destination exact, alamat, kode pos, batas catatan, dan quote
aktif sebelum payment selection. Ringkasan/error inline mengarahkan fokus;
server 422 kembali ke Detail dan mempertahankan Cart.

Release sebelumnya `20260825-0c4104b` memakai source
`0c4104b080e5575010b0fa545fe5e05aaf6f7daa` dan rollback
`20260825-68119d2`. Cart page dan drawer menyediakan bulk clear dengan
safe-first confirmation, exact product-variant snapshot, original-order Undo,
dan duplicate protection. Sesi tetap tersedia saat katalog atau persistence
gagal; checkout tetap fail-closed. Full TDD/regression, desktop/mobile,
small-mobile/landscape fixture acceptance, public Cart acceptance, responsive,
accessibility, backup/rollback, serta public smoke lulus tanpa mutasi order,
stock, payment, atau customer. Readiness tetap 30/42.

Release sebelumnya `20260825-68119d2` memakai source
`68119d2b9cbcc4b50bfceb284b0365d047c2c2ab`. Wishlist persistence sekarang
fail-visible: kegagalan penyimpanan tidak menghapus pilihan sesi, retry
memverifikasi write, update valid antartab diterapkan sekali, dan payload rusak
tidak mengosongkan Wishlist aktif. Rekonsiliasi varian tetap menunggu katalog
authoritative siap.

Release sebelumnya `20260825-838006c` hanya menampilkan review berizin yang
ditautkan ke produk exact. Atribusi, sumber HTTPS aman, rating opsional, dan
warna yang direview mengikuti CMS; review lintas produk dan testimonial brand
umum tidak bocor ke Product Detail. Published-empty dan outage state tidak
membuat kutipan atau rating pengganti. Full regression, desktop/mobile fixture
dan public acceptance, backup/rollback, serta public smoke lulus tanpa membuat
order atau mengubah data commerce. Readiness tetap 30/42 dan commerce tetap
fail-closed.

Release sebelumnya `20260825-7875667` memakai source
`7875667fc29fb54e522c102e891548e82e351c25` dan rollback
`20260825-0f09404`. Product Card serta Quick View menghitung jumlah Cart dari
identitas varian exact. State parsial menampilkan jumlah di Cart, sisa stok,
dan `Tambah Lagi`; batas live menonaktifkan purchase sebagai `Sudah Maks.`
sebelum klik invalid. Pengurangan satu unit memulihkan aksi langsung, sedangkan
warna habis tetap inspectable tetapi tidak buyable. Full regression,
desktop/mobile fixture dan production acceptance, backup/rollback, serta public
smoke lulus tanpa membuat order atau mengubah data commerce. Readiness tetap
30/42 dan commerce tetap fail-closed.

Release sebelumnya `20260825-0f09404` memakai source
`0f09404c7af59d00d9f7134ba4f04387028216a2` dan rollback
`20260825-92655c2`. Filter warna katalog memilih varian yang sama untuk media,
harga, stok, detail, Quick View, dan cart. Filter ketersediaan serta urutan
harga memakai varian terpilih; warna habis dapat diperiksa tetapi tidak dibeli.

Release sebelumnya `20260825-43a7d6b` memakai source
`43a7d6be6bc2bdde92d7b2c4c554c9d00c3196cd` dan rollback
`20260825-2880881`. Dashboard Stock Opname menyediakan scope all/attention,
blind count, autosave/resume, operator assignment, monotonic session revision,
review setelah seluruh hitungan lengkap, dan recount tanpa kehilangan progres.
Approval Owner/Admin memvalidasi ulang semua inventory revision sebelum ledger
exact-once dibuat; cancel/reject menutup sesi tanpa movement dan Finance tetap
ditolak. Loading/error/empty/autosave/review/blocked/success, desktop/mobile,
full tests, migration, backup/rollback, dan public smoke lulus; readiness tetap
30/42 dan commerce tetap fail-closed.

Release sebelumnya `20260825-2880881` memakai source
`2880881e654f06414e8155300f16cd0f2517b17f` dan rollback
`20260825-2000e78`. Dashboard Inventory menyediakan saldo on-hand, reserved,
quarantined, dan available; enam antrean stok; alert aktif; pencarian literal;
pagination; serta ledger immutable. Adjustment memerlukan observed revision,
row lock, dan exact idempotency binding. Approval perubahan besar membawa
revision yang sama dan gagal aman bila saldo berubah. Reversal mempertahankan
movement asli serta membuat movement lawan yang divalidasi terhadap saldo
terbaru. Loading/error/empty/success, tabel desktop, kartu mobile, full tests,
backup/rollback, dan public smoke lulus; readiness tetap 30/42 dan commerce
tetap fail-closed.

Release sebelumnya `20260825-2000e78` memakai source
`2000e784275d044b38d34d41fbb06ec4263fab8f`. Dashboard Media Produk menyediakan enam antrean role-aware,
storage readiness, cover galeri, dan coverage foto varian aktif. Owner/Admin
dapat mengunggah, memperbarui metadata/placement, mengurutkan, mengarsipkan,
serta menghapus media aman; role view-only tidak memperoleh mutation entry
point. Alt text gambar wajib pada boundary server. Revision guard, exact-set
reorder, dan product-level row lock melindungi retry/concurrency. Media
published pada produk aktif diarsipkan lebih dulu dan file tidak dapat dihapus
selama snapshot storefront aktif masih mereferensikannya. Seluruh visual state,
desktop/mobile acceptance, migration, backup/rollback, dan public smoke lulus;
readiness tetap 30/42 dan commerce tetap fail-closed.

Release sebelumnya `20260825-eeffc48` memakai source
`eeffc48da8aa4633715480d8ff8007aed3f19a4c`. Dashboard Varian menyediakan
antrean role-aware, harga dan berat efektif, media count, stok live, serta exact
inventory ledger. Owner/Admin
dapat membuat, memperbarui, dan mengubah status; role view-only tidak menerima
mutation entry point. Normalisasi SKU/slug dan uniqueness case-insensitive,
revision guard, serta product-level row lock menjaga retry dan tab stale.
Deaktivasi ditolak ketika ada reservasi aktif atau varian tersebut merupakan
varian aktif terakhir pada produk tayang. Semua visual state dan acceptance
desktop/mobile lulus; readiness tetap 30/42 dan commerce tetap fail-closed.

Release sebelumnya `20260825-0043c7b` memakai source
`0043c7bfb85698b9894ce01214642ffe59825750`. Dashboard Produk menggunakan composition service
role-aware dengan antrean Semua/Perlu tindakan/Draft/Tayang/Arsip, stok live
dari inventory varian aktif, publication readiness, literal search,
deterministic sorting, pagination, dan exact next action. Mutation entry point
hanya dikirim kepada role dengan products.manage. Loading, composition error,
empty/filter reset, desktop table, dan mobile card lulus acceptance. Gate
release juga merekonsiliasi persistent release-local storage tanpa overwrite;
active dan rollback release saat itu sama-sama menunjuk shared storage dengan
recovery archive privat dipertahankan.

Release sebelumnya `20260825-412d351` memakai source
`412d3518275d4139d13530587c398d7efd86d61a`. Detail Pesanan menggunakan composition service role-aware:
Owner/Admin menerima data operasional, sedangkan Finance menerima kontak
termasking, timeline pembayaran terbatas, serta bukti yang lolos permission dan
security gate. Timeline publik-admin tidak membawa actor ID atau correlation
ID. Eligibility tindakan berasal dari server; cancellation, reservation,
address correction, serta customer-access rotation membandingkan versi status
atau generation dari layar di dalam row lock sehingga tab stale gagal tanpa
mutasi. Command workspace, status rail, loading/error/blocked/processing,
dialog Escape dan focus return, serta layout desktop/mobile lulus acceptance.

Release `20260825-e25987e` memakai source
`e25987eef9676fbe3cc2927ca10c71a55d2c3324` untuk Dashboard Pesanan sebagai
workspace triage role-aware dengan antrean, filter/search tervalidasi, kontak
termasking, dan exact detail action.

Release sebelumnya `20260825-fcedf86` memakai source
`fcedf86c07e6a8b5e27afc5435fa7da7e76961a8` untuk Dashboard Beranda role-aware:
KPI, tren tujuh hari, prioritas, recent order, integration health, dan stok
varian rendah menuju workflow berizin dengan state desktop/mobile yang jujur.

Release sebelumnya `20260825-949a57b` memakai source
`949a57be913245d58013554ab36d9a678c448d0f` untuk metadata server-side,
Product schema dari varian aktif, utility/404 `noindex`, dan sitemap production
dinamis dari katalog serta konten published.

Release sebelumnya `20260825-b7bf006` memprioritaskan hero, menunda media lifestyle kartu
sampai pointer/keyboard intent, dan lazy-load media scene/capacity. Dalam
clean-context lab publik, image transfer turun 34,9% pada mobile dan 20,3% pada
desktop; 12 state runtime-performance, 79 kombinasi responsif, 20 accessibility
check, dan 14 motion state lulus di production.

Hero memiliki kontrol pause/play 44 piksel, berhenti selama
pointer/focus interaction, tab tersembunyi, atau reduced-motion, tetapi tetap
mendukung navigasi manual dan live announcement. Video teaser hanya berjalan
saat terlihat dan berhenti offscreen atau pada reduced-motion. Scroll progress,
Gallery, Video Popover, dan reveal memakai transform/opacity tanpa layout-height,
clip-path, atau blur animation. Fixture dan public live-API lulus 14 state
motion desktop/mobile; matrix responsif production tetap lulus 79 kombinasi dan
accessibility lulus 20 pemeriksaan.

Release sebelumnya `20260825-d6fe071` memakai source
`d6fe071d8ab27949b5fe5fd330dacb0f9a437821` dan rollback
`20260825-521d8a3`. Storefront memiliki skip navigation, satu main
landmark, focus dan announcement untuk perpindahan route SPA, serta Search
modal yang mengunci fokus, membuat background inert, menutup lewat Escape, dan
mengembalikan fokus secara deterministik. Feedback ID kartu produk tetap unik
meskipun produk yang sama muncul di beberapa bagian. Fixture dan public
live-API accessibility sama-sama lulus 20 pemeriksaan pada 10 route
desktop/mobile, sedangkan matrix responsif production lulus 79 kombinasi.

Production tidak lagi menampilkan source fallback product
sebelum katalog Laravel siap. Home dan Search memakai satu kontrak untuk
loading, ready, refreshing, stale, empty, error, disabled, retry, dan recovery;
failed background refresh mempertahankan katalog terakhir yang terverifikasi.
State acceptance lulus 12 flow pada 320, 390, dan 1440 piksel, sedangkan matrix
live-API postdeploy tetap lulus 79 kombinasi route/viewport. Matrix responsif
storefront mencakup 15 route dan lima profil viewport dari mobile 320 piksel
sampai desktop, termasuk mobile menu.
Product card tidak lagi menyebabkan overflow intrinsik, navigasi/CTA penting
memiliki target sentuh minimal 44 piksel, dan scroll-progress mobile tetap di
dalam viewport. FAQ hanya merender jawaban CMS published dari enam kategori;
fallback provider/marketplace dari source tidak lagi menjadi panduan publik.
Privacy, terms, dan return policy memerlukan owner publication, version,
effective date, dan section lengkap. Lifecycle policy owner-only tersedia untuk
draft, preview, schedule, publish, retract, serta immutable rollback. Production
belum memiliki FAQ approved atau policy lengkap, sehingga empty/incomplete
state jujur tampil tanpa legal promise. Loading, partial, unavailable/retry,
withdrawn, deep link, SEO runtime, lazy route, font, dan browser production
desktop/mobile lulus.

Release sebelumnya `20260825-2697be4` memakai source
`2697be48f3bfbc9d4e999c56279533be6a87b17c`. About Us hanya memakai cerita,
warehouse, process, value, media, dan destination dari CMS published. Operator
mengelola urutan, draft,
preview, schedule, publish, retract, serta immutable rollback. Publish menolak
cerita utama yang belum lengkap, ketiadaan story/warehouse, template marker,
dan tujuan eksternal non-HTTPS. Loading, partial, unavailable/retry,
broken/no-media, lazy route, Helvetica/Instrument Serif, dan browser production
desktop/mobile lulus. Production belum memiliki cerita About lengkap, sehingga
preparation state jujur tampil tanpa source-owned claim atau media.

Release sebelumnya `20260825-dead32e` memakai source
`dead32ed0cc30110d8b9b3b2b7d68b10b09cac8e`. Testimonials hanya mempublikasikan entri CMS dengan reviewer,
quote, supported type, source label, dan izin eksplisit. Statistik hanya berasal
dari entri approved; missing exact product/color menghapus CTA dan tidak
memetakan review ke produk lain. Operator mengelola urutan, attribution, sumber
HTTPS, rating opsional, media, destination, consent, serta lifecycle publish
melalui Admin. Loading, partial, empty/error/retry, broken-media, native video,
withdrawn content, lazy route assets, dan browser production desktop/mobile
lulus. Production belum memiliki review approved published, sehingga empty
state tetap jujur dan homepage preview disembunyikan. Commerce tetap
fail-closed.

Release sebelumnya `20260825-8382f7a` memakai source
`8382f7ad3eab33045eadeb79e63c4f4119b30411`. Lookbook memakai CMS published
sebagai authority dan turun ke satu scene dari media milik setiap produk live
ketika belum ada scene published. Operator mengatur judul, story, media, urutan,
serta tujuan exact product/color melalui Admin; visual failure states,
keyboard/reduced motion, cart/detail, dan lazy route assets tetap aktif.

Release sebelumnya `20260825-9abeb53` memakai source
`9abeb533069e476c33a6c099d8975af8df99616e`. Gallery memakai CMS published
sebagai authority dan hanya turun ke media katalog published milik produk
ketika CMS kosong atau unavailable. Category, order, media, destination,
filter, swipe/keyboard, preview, visual failure states, exact product handoff,
dan photos-only homepage tetap aktif.

Release sebelumnya `20260824-9819148` memakai source
`9819148e8ecce8469d7802841007f8cd111c3246`. Our Product memuat seluruh seri
published dari snapshot Laravel, mempertahankan ownership story/media/alt text,
dan menghubungkan warna,
harga, stok, exact-variant cart, serta detail produk. Video tidak dibuat sebagai
placeholder publik; static fallback, loading, error/retry, empty, missing media,
dan sold-out state lulus browser desktop/mobile. Schema
`2026-08-24-our-product-v1` aktif dan route assets dimuat lazy.

Release sebelumnya `20260824-55674a3` memakai katalog Laravel live untuk lima
langkah preferensi dan hanya memberi hasil dari produk/varian yang benar-benar
published, discoverable, berharga positif, dan tersedia. Ranking bersifat
deterministik, memberi alasan yang dapat dipahami, membawa exact variant ke
detail/cart, dapat dibagikan melalui URL, dan hanya menyimpan preferensi tanpa
PII. Loading, error/retry, empty, no-match, relaxation, dan hasil lulus browser
desktop/mobile. Build production memaksa API canonical dan menolak fallback
katalog lokal. Commerce tetap tidak aktif karena readiness masih 30/42 dengan
12 blocker.

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
memicu reconciliation segera. Checkout selesai dan Order Status berbagi satu
action card dengan manual refresh, timestamp, loading/error/success live region,
in-flight request lock, safe support payload, dan HTTPS-only redirect. Full
acceptance dan public desktop/mobile smoke lulus tanpa mengaktifkan provider
atau transaksi nyata.

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

Enam kategori publik adalah cara order, pengiriman, pembayaran, retur/refund,
produk, dan perawatan. Jawaban hanya tampil setelah diterbitkan melalui CMS;
shipping, payment, return, warranty, material, size, dan care yang belum
disetujui owner tetap tidak boleh dipublikasikan sebagai fakta.

Privacy, terms, dan return policy memiliki lifecycle terpisah dan owner-only.
Dokumen tanpa version, effective date, atau section lengkap tampil sebagai
incomplete, bukan salinan resmi.

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
