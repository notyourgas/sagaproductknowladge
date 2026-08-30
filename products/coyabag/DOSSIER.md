# COYABAG Dossier

## Tujuan dokumen

Merangkum brand, commerce workflow, readiness, bisnis, teknis, sales, dan
content COYABAG tanpa menyamakan surface live dengan commerce aktif.

## Konteks dan status bukti

- Updated: 30 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED / COMMERCE_ACTIVE`
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

## SagaDev controlled trial

`CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: Saga Platform release
`20260828203505-bec577e` memisahkan mode pembayaran order COYABAG dari gateway
subscription SagaBook. Adapter COYABAG memakai service account product-bound
dengan scope create/read, callback HMAC terpisah, batas Rp500.000 per transaksi,
dan maksimal lima intent baru per hari. Idempotent replay tidak menghabiskan
kuota dua kali. Signed readiness lulus, tetapi tidak ada transaksi provider yang
dibuat saat acceptance.

Readiness saat ini 42/42. Owner 2FA, privacy/retention, UAT 15 langkah, dan
release sign-off sudah lulus; readiness gate enforced mengembalikan
`COMMERCE_ACTIVE`. Payment Detail menyediakan recovery sesi yang permissioned,
recent-authenticated, rate-limited, dan fail-closed pada unknown attempt.
Enam exception pembayaran lama tetap terbuka untuk rekonsiliasi operator.
Pengiriman memakai tarif manual pada sembilan kota dan belum merupakan
coverage nasional atau Delivery API aktif.
Backup database COYABAG masih local-disk dan perlu dipindahkan ke backup offsite
sebelum business readiness final.

`CONFIRMED / PRODUCTION_DEPLOYED`: release `20260830-261329f`, exact source
`261329f337f1eeb95f3564679ac3cde58429a016`, dan rollback
`20260830-9be4247` menambah triase alert stok rendah setelah keputusan
karantina. Operator dapat meninjau severity, available, threshold, kekurangan
ke saldo aman, waktu pemicu, dampak storefront, alert sebelumnya/berikutnya,
filter daftar, dan ledger sebelum memakai adjustment. Snapshot berasal dari
server dan flow tidak menambah mutation baru; permission, recent auth,
revision, idempotensi, serta approval adjustment tetap authoritative. Operator wajib
meninjau dampak stok dan memberi alasan 8-240 karakter; alasan masuk ledger
serta audit. Permission, recent auth, transaction lock, idempotensi, stale
state, processing/error/success recovery, focus, dan layout mobile/desktop
tetap dijaga. Post-deploy menunjukkan readiness 42/42, invalid balance nol,
failed job nol, cron aktif, dua worker berjalan, dan public smoke empat surface
lulus. Aktivasi commerce tidak berubah dan `BUSINESS_READY=false`.

`CONFIRMED / PRODUCTION_CONFIGURED / APPROVED`: baseline retensi versi
`2026.08-v1` sudah tersimpan dengan evaluasi data pelanggan tidak aktif 730
hari, bukti pembayaran 365 hari, catatan permintaan privasi 730 hari, dan audit
log 730 hari. Audit produksi tetap `report_only` dan menemukan nol kandidat pada
verifikasi awal; tidak ada penghapusan otomatis. Kebijakan delapan bagian sudah
terverifikasi, dipublikasikan, dan disetujui owner dengan fingerprint yang cocok.

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

Release production terbaru `20260827-be8fc09` memakai exact source
`be8fc09710e26e49512f181904dff576f93a23dd` dan rollback
`20260827-beecd6f`. Admin Beranda kini menyegarkan ringkasan melalui endpoint
snapshot terautentikasi yang memiliki permission gate, rate limit, dan cache
private/no-store. Payload baru hanya mengganti layar setelah lengkap dan siap;
kegagalan mempertahankan metrik, readiness, dan pesanan terakhir dengan status
pemulihan aksesibel. Hero homepage tetap memakai campaign full-bleed monokrom
versi sebelumnya dengan headline `BAGS FOR THE SCENE`, crop `cover`, gradient
teks, dan proporsi desktop 461–521 piksel. Carousel, CTA, featured card, serta
Gallery share navigation dari release sebelumnya tetap dipertahankan.
Storefront 215/215 dan Laravel 451 total dengan 450 pass, satu skip, 4.268
assertion lulus. Navigation 16 skenario, 110 kombinasi responsive, 32 route
accessibility desktop/mobile, Admin Beranda owner/finance desktop/mobile, dan
simulasi refresh gagal yang mempertahankan snapshot juga lulus.
GitHub Actions exact SHA tidak memulai job akibat billing/spending limit, jadi
CI tidak diklaim hijau. Filter serta preview Gallery kini disinkronkan ke URL yang
dapat dibagikan. Browser Back menutup dialog dan memulihkan fokus, deep link
valid memperluas daftar awal agar foto tujuan tersedia, sedangkan tautan item
usang atau tidak cocok gagal tertutup dengan pemberitahuan tanpa menebak foto
lain. Acceptance publik desktop/mobile lulus tanpa mutasi CMS atau commerce.

Kontrak metadata versi satu untuk Home, Shop, Our Product, Bag Finder, dan
Gallery sudah `PRODUCTION_DEPLOYED` pada exact source
`beecd6f76584557defd6822d36d2efd39473e18f`. Laravel memuat kontrak ke config
cache dan React memakai sumber yang sama; kontrak tidak lengkap gagal tertutup
ke `noindex`. Storefront 215/215, Laravel 448 total dengan 447 pass, satu skip,
4.251 assertion, metadata desktop/mobile, responsive, accessibility, audit
dependency, initial JS 110,5 KiB, dan entry CSS 160 KiB lulus. Public smoke
lima route inti, API, Admin, robots, sitemap, asset, dan redirect apex lulus.
Readiness commerce tetap fail-closed pada 30/42 checks dengan 12 blocker.

Order Status sekarang dapat menghapus akses lokal dari tab
aktif setelah detail berhasil dibuka maupun ketika kode tersimpan tidak valid.
Penghapusan dibatasi pada kode sesi yang cocok, membersihkan query URL, dan
tidak memanggil mutasi atau pembatalan order server. Jika Cart direload setelah
checkout berhasil, pelanggan
dapat kembali ke pembayaran atau status demo terakhir dari sesi tab. Hanya
kode order yang disimpan; detail pembayaran tetap diverifikasi server dan
checkout nyata tetap ditutup saat readiness blocked.

Checkout juga memulihkan detail pelanggan dari penyimpanan
per tab yang berumur maksimal 30 menit, tanpa menyimpan token pilihan tujuan
atau ID quote pengiriman. Restore selalu mewajibkan verifikasi ulang tujuan dan
ongkir. UI menyediakan status loading, dipulihkan, tersimpan, dihapus, dan
gagal; draft dihapus setelah order berhasil, sedangkan kegagalan browser
storage tidak memblokir form.

Modul draft dan API checkout dimuat secara dinamis. Entry JavaScript awal
404,9 KiB dengan gzip 111,5 KiB, tetap di bawah budget 112 KiB. Product Detail
sekarang mengambil ukuran, material,
kapasitas, dan perawatan dari source of truth Admin/API, mengabaikan internal
key, serta menandai field kosong sebagai sedang diverifikasi tanpa mengarang
fakta. Katalog live baru menerbitkan perawatan; ukuran, material, dan kapasitas
masih menunggu kelengkapan operator.

Cart page dan drawer sekarang memakai variant live untuk mengganti warna,
harga, media, stok, route, serta identity; merge destination bersifat satu kali
dan quantity dibatasi ke stok. Sold-out/unknown/invalid-price gagal tertutup.
Tujuh region horizontal `/our-product` juga sudah keyboard-focusable, bernama
aksesibel, memiliki focus indicator yang terlihat, dan mendukung ArrowRight
pada mobile. Ini menutup blocker accessibility candidate Cart sebelumnya.

Storefront 213/213, Laravel 447 total dengan 446 pass, satu intentional skip,
dan 4.236 assertions, dependency/security audit nol, full release gate, 32
route accessibility production desktop/mobile, serta 110 kombinasi responsive
production lulus.
Public smoke storefront/API/admin, Nginx, PHP 8.5 FPM, Supervisor, dua worker,
checksum, backup, dan postdeploy log gate juga lulus. Deploy tidak membawa
migration atau mutasi order/payment/stock/provider. Readiness tetap 30/42
dengan 12 blocker; TokoPay dan commerce production tetap fail-closed.

Release sebelumnya `20260827-832a5f3` memakai exact source
`832a5f3fe9dae05693972f730ec7bda8993e4d5e` dan rollback
`20260827-1d5912c`. Checkout, simulator, konfirmasi, dan timeline memakai
presentasi demo khusus yang tidak dapat disalahartikan sebagai order
operasional. Simulator tetap privat, bertanda tangan, berbatas waktu, dan
terisolasi dari uang, omzet, stok, customer, pengiriman, fulfillment, invoice,
notifikasi, settlement, serta laporan produksi.

Browse-only discovery kembali menyediakan cart recovery, availability varian,
quick view, review/support, Bag Finder, Our Product, dan About berbasis CMS.
Featured card fix tetap dipertahankan, sedangkan CSS ProductGrid dipindah ke
lazy route agar entry CSS kembali pada budget 160 KiB. Storefront 199/199,
Laravel 450 total dengan 449 pass dan satu intentional skip, 110 kombinasi
responsive, 32 route accessibility desktop/mobile, 16 state runtime
performance, serta crawler SEO 14 URL indexable dan empat route noindex lulus.
Readiness tetap 30/42 dengan 12 blocker; TokoPay dan commerce production tetap
fail-closed.

Release sebelumnya `20260827-1d5912c` memakai exact source
`1d5912cd93d819d940612597edfe7e2095eba2e1` dan rollback
`20260827-1e9dcdd`.

Release sebelumnya `20260826-77ed929` memakai exact source
`77ed9295b654848fb855c599721855b992487b35` dan rollback
`20260826-0fd20c3`. Catalog sekarang membedakan preview, restock, dan ready dari
kontrak checkout serta stok varian live. Jumlah warna, stock filter, full
filter drawer, dan empty-state recovery memakai state yang sama. URL stale
dengan `stock=available` dapat dipulihkan tanpa membuang filter warna,
pencarian, atau scene yang masih valid. Browsing tetap tersedia, sedangkan
intent transaksi yang tidak valid tetap ditahan. Desktop/mobile public
acceptance, 192 storefront test, 441 Laravel test, full release gate, backup,
immutable deploy, workers, scheduler, dan log smoke lulus. Readiness tetap
30/42 dengan 12 blocker; checkout/provider fail-closed.

Release sebelumnya `20260826-0fd20c3` memakai exact source
`0fd20c3f0e5b50780735963f680d87f2fca9b53e`. Homepage membedakan `Katalog Preview`, `Menunggu
Restock`, dan state penjualan siap dari kontrak checkout serta stok varian live.
Fallback hero tidak lagi memakai klaim `Shop New Drop` saat commerce terblokir;
customer dapat membuka katalog atau wishlist tanpa mengekspos blocker internal.
Managed campaign CMS tetap dipertahankan. Entry JS turun dari 201.4 KiB ke
194.8 KiB. Desktop/mobile public acceptance, 188 storefront test, 441 Laravel
test, full release gate, backup, immutable deploy, workers, dan log smoke lulus.
Readiness tetap 30/42 dengan 12 blocker; checkout/provider fail-closed.

Release sebelumnya `20260826-a575c3b` memakai exact source
`a575c3bfbfd58124cbe361a279ebc4e02bc36d61`. Admin Payments memasking identitas customer dan memblokir
pencarian nama bagi Finance, sementara Owner mempertahankan akses sesuai
permission. Rekonsiliasi manual memakai kontrak readiness server dan hanya
menyentuh provider aktif. Daily close memakai row lock dan ditolak bila review,
exception, atau dana gateway settled yang belum matched masih terbuka; retry
tetap idempotent. Control Desk menyediakan blocker actionable, konfirmasi, dan
state operasional lengkap pada desktop/mobile. 183 storefront test, 441
Laravel test, dependency/security/build gate, immutable deploy, public smoke,
serta scheduler observation lulus. Readiness tetap 30/42 dengan 12 blocker;
checkout dan provider fail-closed.

Release sebelumnya `20260826-b6f1c55` memakai exact source
`b6f1c5540a395323d13966b83b377fea16802f9f`. Admin Stock Opname menyimpan dirty
count sebelum dialog ditutup, mempertahankan null sebagai belum dihitung, dan
memindahkan hitungan lengkap langsung ke variance review. Approval kedaluwarsa atomically
memulihkan sesi submitted ke review tanpa ledger mutation atau count loss.
Resubmission memakai revision-bound approval baru; Admin pengaju dan Owner
approver terpisah, dan idempotency guard memastikan variance hanya diposting
sekali. Desktop/mobile, 183 storefront test, 436 Laravel test,
security/dependency gate, no-migration immutable deploy, public smoke, dan
scheduler observation lulus.

Release sebelumnya `20260826-d1950e6` memakai exact source
`d1950e693ff3055f1cfe02cf10ff6a2fe432c31e`. Admin Inventory menghitung customer visibility dari status
produk, publication, activation varian, dan snapshot produk immutable terakhir.
Tujuh queue memisahkan perhatian operasional dari perhatian storefront; alert
stok tayang hanya menghitung varian live. Adjustment dipandu oleh arah Stock
Masuk/Stok Keluar, alasan yang kompatibel, saldo sebelum/sesudah, dan dampak
storefront, dengan validasi semantik yang sama pada server. Desktop/mobile,
183 storefront test, 434 Laravel test, security/dependency gate, no-migration
immutable deploy, dan public smoke lulus.

Release sebelumnya `20260826-5184bfe` memakai exact source
`5184bfe5a41a1fc0f650720c2d0f6b0eaa9d9069`. Admin Media membandingkan media mutable dengan snapshot
produk immutable terakhir dan memisahkan state live, draft, arsip, baru,
diubah, serta akan dihapus. Queue menunggu publish, ringkasan perubahan, dan
action ke checklist publikasi membuat status customer-visible eksplisit;
perubahan media tetap tidak masuk katalog sampai publish produk. Acceptance
desktop/mobile, 183 storefront test, 432 Laravel test, security/dependency
gate, no-migration immutable deploy, dan public smoke lulus.

Release sebelumnya `20260826-313aa8f` mengaktifkan Katalog studio V2 dengan
11 tipe, 31 warna, dan 372
file WebP fisik. Tujuh produk terverifikasi—YONA, KIARA, GHEA, OLLA, XENA,
KIMORA, dan ORLENA—dipublikasikan dengan 21 varian dan 12 foto per varian.
Tipe C, D, E, dan I tetap draft karena nama publik, harga, serta dimensi belum
terverifikasi. Seluruh 31 foto interior memakai label landscape dan stok semua
varian tetap nol. Sinkronisasi katalog dijalankan melalui dry-run default,
manifest SHA-256, transaksi, conflict/reservation guard, publication snapshot,
serta preservasi order. Storefront 183/183, Laravel 430 test dengan 429 pass dan
satu intentional skip, build/audit, immutable deploy, serta browser public
desktop/mobile lulus. Browser membuktikan 7 produk, 21 varian, 372 asset, 12
foto detail, dan tidak menemukan gambar rusak maupun request `/api/api/`.
Readiness tetap 30/42 dengan 12 blocker; checkout dan provider fail-closed.

Release sebelumnya `20260826-4abf96f` memakai source
`4abf96fca4215033d44a85a2ffa4db46066f6ecf` dan rollback
`20260826-3c2b8a7`. Varian baru selalu nonaktif. Aktivasi memvalidasi identitas,
effective price/weight, foto siap, dan alt text di bawah row lock. Pada produk
live, varian siap masuk status menunggu publish dan tetap dikeluarkan dari
katalog hingga publish atomik membuat snapshot baru. Varian pending tidak dapat
menggantikan varian live terakhir. State operator, remediation, stale-edit
recovery, focus trap/return, desktop/mobile acceptance, 427 Laravel test, full
RC, dependency audit, additive migration, backup, workers, dan public smoke
hijau. Readiness tetap 30/42 dengan 12 blocker dan checkout disabled.

Release sebelumnya `20260826-3c2b8a7` memakai source
`3c2b8a73898798e825dcf71786bfc04200c75ad8` dan rollback
`20260826-312caf4`. Save, publish, dan archive Produk memakai revision
server serta row lock. Publish juga memverifikasi satu context hash untuk
produk, varian, dan media yang dilihat operator. Tab stale ditolak tanpa mutasi,
draft lokal dipertahankan, dan operator mendapat tindakan aman untuk membuka
atau memuat versi terbaru. Media staging tetap tersedia ketika transaksi
publish rollback. Acceptance desktop/mobile, 424 Laravel test, full RC, audit
dependency, migrasi aditif, backup, rollback, workers, dan public smoke hijau.
Readiness tetap 30/42 dengan 12 blocker dan checkout disabled pada release
tersebut.

Release sebelumnya `20260826-312caf4` memakai source
`312caf4a6051d341f8ee29c3ea90af7d4f07f89c`. Detail Pesanan dan antrean
pembayaran memakai satu aturan
eligibility server. Operator melihat state siap atau tertahan dengan alasan
aman; keputusan mengikat sesi pembayaran, bukti, dan status order yang diamati,
kemudian menolak konteks tab lama di bawah lock tanpa mutasi. Dialog mendukung
focus trap, Escape, pengembalian fokus, dan announcement yang sesuai state;
Finance tetap menerima PII termasking. Acceptance owner/finance desktop-mobile,
418 Laravel test, full RC, audit dependency, backup, rollback, workers, dan
public smoke hijau pada release tersebut.

Release sebelumnya `20260826-c43e337` memakai source
`c43e337e18178588748c9f154e9f3c5791554ff6`. Admin Pesanan hanya memasukkan sesi dengan bukti yang
memenuhi prasyarat ke antrean pemeriksaan dan menempatkan sesi belum lengkap
pada antrean pembayaran tertahan dengan alasan aman. Finance menerima nama
termasking dan pencarian nama dinonaktifkan; owner/admin mempertahankan akses
sesuai permission.

Release sebelumnya `20260826-b45eb8d` memakai source
`b45eb8dc41eb04263442afd544e329f0391de060`. Beranda Admin memberi owner
ringkasan launch readiness dari gate 42 pemeriksaan dan memisahkan heartbeat
operasional dari riwayat aktivitas integrasi.

Release sebelumnya `20260826-ed5814f` memakai source
`ed5814f23078f625a2e83f3c66ad476f2f327b91` dan rollback
`20260826-5acbda3`. Lima route CMS dengan payload publik `verified=false`
sekarang 404/noindex, memiliki title aman yang tidak kosong, dan dikeluarkan
dari sitemap. Konten terverifikasi memakai kandidat metadata non-kosong pertama
secara konsisten pada renderer Laravel dan runtime React. Sitemap production
berisi 9 URL indexable; raw-HTML acceptance lulus untuk 9 URL indexable dan 9
state noindex/missing. Full regression, dependency audit, backup, rollback,
workers, dan public smoke hijau. Readiness tetap 30/42 dengan 12 blocker dan
checkout disabled.

Release sebelumnya `20260826-5acbda3` memakai source
`5acbda312a08d195b6cf8d235440786570c92fd4` dan rollback
`20260826-ed81263`. Framer Motion dikeluarkan dari initial static dependency
graph dan video tile memakai stable loading poster sebelum feature runtime
dimuat saat section mendekati viewport. Initial JavaScript turun 23.4% raw dan
26.6% gzip; total capability tetap dipertahankan sebagai deferred feature.
Public live acceptance lulus 16 performance state, 24 motion state, dan 110
responsive combinations. HTML dan API config tetap no-cache/private; hashed
asset memakai cache satu tahun immutable. Full regression, security audit,
backup, rollback, workers, dan smoke hijau. Readiness tetap 30/42 dengan 12
blocker dan checkout disabled.

Release sebelumnya `20260826-ed81263` memakai source
`ed81263eeb8202946a3791cdfebe7cb86867d6b1` dan rollback
`20260826-7547c4e`. Product rail hanya menampilkan panah untuk overflow nyata,
menonaktifkan batas, bergerak satu kartu, dan mengumumkan produk aktif melalui
live region. Callback DOM reference menjaga listener setelah skeleton diganti
lazy ProductGrid. Reduced-motion memakai perpindahan instan; tindakan review di
Product Detail memindahkan fokus keyboard ke heading review. Motion acceptance
lulus 24 state desktop/mobile dan public responsive live-API lulus 110
kombinasi. Storefront 177/177 serta Laravel 410 test dengan 409 pass dan satu
intentional skip lulus; dependency audit bersih. Readiness tetap 30/42 dengan
12 blocker dan checkout disabled.

Release sebelumnya `20260826-7547c4e` memakai source
`7547c4e9a441258508ff53ecbe5788b2e2012095` dan rollback
`20260826-0c920d7`. Kontras harga promo, judul Gallery, dan metadata
Lookbook/Testimonials memakai neutral token WCAG AA. Acceptance `axe-core`
lulus pada 16 route untuk desktop/mobile dan matriks responsive public live-API
lulus 110 kombinasi. Admin release smoke memvalidasi payload Inertia terstruktur.

Release sebelumnya `20260826-f98e51f` memakai source
`f98e51f0f214165f8e3318cb7552fc393334bc43` dan rollback
`20260826-7d6e0e7`. Area route memakai recovery state eager ketika lazy asset
atau render gagal. Header, navigasi, Cart, dan Footer tetap tersedia; reload
mempertahankan URL dan Cart tersimpan, sedangkan kembali ke Beranda mereset
boundary route. Error publik disanitasi, heading menerima fokus, dan perubahan
query tidak me-remount Bag Finder. TDD 173 storefront test, 410 Laravel test,
full RC, dependency/security audit, exact asset smoke, serta public live-API
acceptance 110 kombinasi pada tujuh viewport lulus. Readiness tetap 30/42
dengan 12 blocker.

Release sebelumnya `20260826-7d6e0e7` memakai source
`7d6e0e7ae6724bc1709b08465a3a7e26a636efdc` dan rollback
`20260826-44edf06`. Compact navigation sekarang lazy-loaded, menguasai viewport
compact, mengunci background scroll, membuat konten belakang inert, menjebak
fokus, dan mendukung Escape, backdrop, explicit close, active destination,
serta route focus handoff. Deterministic dan public live-API acceptance lulus
110 kombinasi pada tujuh viewport; full RC, performance, accessibility,
security, immutable deploy, metadata/asset smoke, dan zero error delta lulus.
Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-44edf06` memakai source
`44edf06ddf2cb05013cdb7806892271c8113e40f` dan rollback
`20260826-4be4f28`. FAQ dan tiga policy membutuhkan konfirmasi halaman, catatan
pemeriksaan internal, serta konfirmasi setiap jawaban atau bagian sebelum
publish/schedule. Perubahan fakta, kategori, tautan, versi, atau tanggal
berlaku membatalkan konfirmasi terkait. API publik meredaksi metadata internal
dan menyembunyikan payload legacy yang belum diperiksa; production menampilkan
FAQ sedang disiapkan dan dokumen belum diterbitkan. Desktop/mobile, 170
storefront test, 410 full Laravel test dengan 409 pass dan satu intentional
skip, full RC, dependency audit, backup/rollback, serta public smoke lulus.
Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-4be4f28` memakai source
`4be4f282f18c56603ef0f8fdb75246de6e641727` dan rollback
`20260826-347beec`. About Us membutuhkan verifikasi halaman, catatan internal,
dan konfirmasi setiap section story, warehouse, serta process sebelum publish
atau schedule. Perubahan fakta otomatis membatalkan konfirmasi terkait. API
publik menghapus metadata internal dan hanya mengirim section terverifikasi;
payload belum terverifikasi menjadi empty state jujur. Desktop/mobile,
168 storefront test, 408 full Laravel test dengan 407 pass dan satu intentional
skip, full RC, dependency audit, backup/rollback, serta public smoke lulus.
Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-347beec` memakai source
`347beecbb18383796c8a1e55b16feee2b6c6578a` dan rollback
`20260826-1e88e9e`. Testimonials mewajibkan sumber HTTPS aman tanpa credential
untuk review creator/marketplace, sedangkan review pelanggan langsung boleh
tanpa URL publik. Tujuan produk opsional; jika dipilih, produk dan warna harus
aktif serta exact. Target stale mempertahankan konteks review tanpa CTA. Admin
memakai live product/variant picker; draft belum lengkap tetap dapat disimpan,
sedangkan publish/schedule fail-closed. Production tetap memakai empty state
jujur karena belum ada review berizin yang dipublikasikan. Desktop/mobile,
166 storefront test, 406 Laravel test dengan 405 pass dan satu intentional skip,
full RC, dependency audit, backup/rollback, serta public smoke lulus. Readiness
tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-1e88e9e` memakai source
`1e88e9efcac19dcac00ff3302c5c3a3e5dde7323` dan rollback
`20260826-0bffe6e`. Lookbook fallback mencakup setiap varian aktif dengan media,
stock, price, Cart, URL scene, dan tujuan produk/warna exact. Pointer/touch
swipe, arrow, keyboard, reload, serta share URL memakai state yang sama.
Destination stale, credentialed/non-HTTPS, media tidak aman, dan varian nonaktif
kehilangan CTA; admin memakai live destination picker dan publish/schedule
guard. Desktop/mobile acceptance, 164 storefront test, 404 Laravel test dengan
403 pass dan satu intentional skip, full RC, backup/rollback, serta public
smoke lulus. Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-0bffe6e` memakai source
`0bffe6e6362b44fcce64c5e7c8c5829334b54b5a` dan rollback
`20260826-8937547`. Gallery fallback mencakup media semua varian aktif dengan
tujuan produk/warna exact, urutan editorial-first, dan deduplikasi. CMS stale
atau destination non-HTTPS mempertahankan konteks visual tetapi kehilangan CTA;
admin menyediakan pemilih destination live dan publish guard. Preview swipe,
keyboard/focus, desktop/mobile acceptance, 162 storefront test, 402 Laravel
test dengan 401 pass dan satu intentional skip, full RC, backup/rollback, serta
public smoke lulus.

Release sebelumnya `20260826-8937547` memakai source
`89375473d56ba10c42adf4d6d1a4f30d661a0431` dan rollback
`20260826-56aabbc`. Our Product menempatkan media varian terpilih sebelum media
editorial seri dan CTA memakai quantity Cart exact. Desktop/mobile acceptance,
full RC, backup/rollback, serta public smoke lulus. Readiness tetap 30/42 dengan
12 blocker.

Release sebelumnya `20260826-56aabbc` memakai source
`56aabbcb49257d545ed81243e2079074dc5f7af4` dan rollback
`20260826-0dd7b21`. Bag Finder menyatukan rekomendasi dengan varian live dan
jumlah Cart exact; CTA menutup stale/batas stok sebelum klik invalid dan pulih
ketika quantity turun. Radiogroup Arrow/Home/End, fokus antar-langkah, progress
semantik, persistence retry terverifikasi, desktop/mobile acceptance, full RC,
backup/rollback, serta public smoke lulus. Entry CSS turun menjadi 147,6 KiB.
Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-0dd7b21` memakai source
`0dd7b21b5cd088e4b9f81e5cf0ef21bd08430818` dan rollback
`20260826-aa6be85`. Customer Returns memisahkan pengisian dan review, memakai
item/quantity server-authoritative, mempertahankan idempotency pada retry, dan
menutup cancellation untuk unknown, terminal, atau refund state. Desktop/
mobile, accessibility, full regression, backup/rollback, serta public smoke
lulus. Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-aa6be85` memakai source
`aa6be850e4466cf0ade63250eb1d2ea7ab7e29fb` dan rollback
`20260826-0a57b75`. Order Status menyatukan refresh payment, delivery, dan order
state pada satu kontrol yang memakai order aktif terverifikasi. Request focus/
click paralel dideduplicasi dan network error mempertahankan detail terakhir.
Timeline public hanya mengirim copy Indonesia allowlisted; alasan internal,
actor/correlation identifier, dan manual shipment note tidak melewati customer
API. Clipboard denial bersifat fail-visible. Full regression, lima tracking dan
sembilan payment scenario, responsive/accessibility, security, performance,
backup/rollback, serta public smoke lulus tanpa order atau provider production.
Readiness tetap 30/42 dengan 12 blocker.

Release sebelumnya `20260826-0a57b75` memakai source
`0a57b75839808af865f9272027ed5a02fde8de9d` dan rollback
`20260825-e684ae3`. Checkout selesai dan Order Status memakai action pembayaran
server-authoritative, handoff tab baru, status refresh, outcome ambigu
fail-closed, dan HTTPS-only redirect.

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
