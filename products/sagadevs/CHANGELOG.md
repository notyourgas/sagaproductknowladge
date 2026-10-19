# SagaDevs Product Hub Changelog

## 2026-10-20 - Jersey Jago revisi 05: penemuan mobile dan pemulihan gangguan

CONFIRMED, atas permintaan lanjutan Andreas untuk audit dan implementasi UX per fitur, source lokal `3a82acca4dedb81781759560e2ae2ff6a676c8e5` (belum source remote) menambah kontrol Jeda/Putar teks bergerak dengan persistensi sesi/reduced motion, fallback storage saat akses browser diblokir atau quota gagal, loading/error/retry foto pada halaman dan modal, serta alternatif ready berdasarkan klub/ukuran dengan jalur dari barang sold. Area katalog mobile dipadatkan; pada viewport 390 px awal grid sekitar 110 CSS px lebih awal dibanding revisi 04. Pencarian hanya tanda baca kini menghasilkan empty state yang dapat dipulihkan. Footer ringkas, grid Latest Drop dan alur filter/ukuran/bag tetap. Riset W3C/MDN/Baymard dipetakan per fitur dalam source `docs/usability-gaps-05.md`. Build/18 tes PASS; 14 hash publik cocok manifest, tiga path privat 404. Browser menguji pencarian/filter cancel-Apply, pause/reload/reduced motion, sold ke alternatif/fokus, wishlist/bag reload dan simulasi request foto gagal lalu retry quick look/zoom. Home/katalog/detail sold diperiksa pada 320/768/1280 px tanpa overflow horizontal teramati, ditambah alur 390 px. Storage diblokir diuji unit; iPhone fisik/screen reader/studi pembeli belum diverifikasi. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED, bukan toko transaksi aktif. Data/foto asli, grading/kebijakan dan integrasi commerce tetap OPEN; produksi/COYABAG tidak berubah.

## 2026-10-20 - Jersey Jago revisi 04: penemuan produk dan pemulihan pilihan

CONFIRMED, atas permintaan Andreas untuk riset/perbaikan tiap fitur, source lokal `d3787e495588dea4c0ecd3e1e7b21596a7c73233` (belum source remote) menambah pencarian lintas atribut dengan ukuran tepat/istilah Indonesia, hitungan facet berdasarkan draft, opsi nol, konteks stok yang dipertahankan, recovery hasil kosong berbasis data, ukuran aktual pada kartu, diagram ukuran kontekstual, zoom 2x/panning native, undo wishlist, serta alur bag lihat/undo/pindah simpan/ringkasan/kembali. Footer ringkas dan Latest Drop sejajar dipertahankan. Riset Baymard/W3C dipetakan per fitur pada dokumentasi source. Build dan 13 tes PASS; 14 hash publik cocok manifest, tiga path privat 404. Delapan halaman diperiksa pada 320/390/768/1280 px tanpa overflow horizontal atau error console teramati; dialog bertumpuk/fokus, keyboard, wishlist dan bag diuji. Ikon utama mobile 44 px. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; bukan bukti studi pembeli, screen reader atau iPhone fisik. Produksi/COYABAG tidak berubah, transaksi belum aktif; foto/data/kebijakan asli dan integrasi commerce tetap OPEN. Knowledge client/PRODUCT/DOSSIER/master/gap/sync/changelog diselaraskan pada main HEAD.

## 2026-10-20 - Jersey Jago revisi 03: footer dan alur belanja dirapikan

CONFIRMED, Andreas mengotorisasi implementasi strategi UX. Source lokal `2a735e8daecfbe6e0407f7c374a52d0d255dac6b`, belum source remote: footer ringkas, copy belanja terkelompok, filter klub/ukuran/harga/urutan dengan chip, draft Apply/Cancel, persistensi URL dan pemulihan konteks/scroll, wishlist lokal, subset New Drop, halaman cerita/panduan/pengiriman, serta accordion native yang mendukung keyboard/reduced motion. Latest Drop tetap grid sejajar. Build dan 10 tes PASS; 14 hash aset publik cocok manifest, tiga path privat tetap 404. Browser katalog/PDP/panduan diperiksa pada 320/390/768/1280 px; alur filter, wishlist, bag dan accordion diperiksa tanpa overflow horizontal atau error console teramati. Status LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; sign-off iPhone fisik dan visual tetap OPEN. Produksi/COYABAG tidak berubah; gambar/data contoh dan transaksi belum aktif. Foto/data asli, kebijakan operasional dan integrasi commerce tetap dibutuhkan. Dokumen client/PRODUCT/DOSSIER/master/gap/sync/changelog diselaraskan; knowledge main HEAD.

## 2026-10-20 - Jersey Jago: audit footer, filter dan strategi UX

CONFIRMED audit source lokal `b2ef0642f820d757c6484f75e8b5f5c8cdfb7cdc` dan browser desktop: footer sekitar 687 px dengan wordmark dominan/teks bantuan kecil; filter klub/status tersedia tetapi reload menghapus pilihan, reset mengubah konteks ke ready, New Drop belum memisahkan produk dan wishlist belum memiliki daftar tersimpan. Accordion native belum memiliki animasi buka/tutup terkontrol. Riset footer live Studio Nicholson/ASKET, arsip Awwwards Rino & Pelle, pola filter Baymard serta W3C/MDN dilakukan atas permintaan Andreas. PROPOSAL: rapikan struktur teks, footer ringkas, filter ukuran/harga/urutan/chip/state, lalu animasi native yang mendukung reduced motion. Latest Drop tetap grid sejajar. Proposal belum diimplementasikan; source/runtime dan produksi tidak berubah, transaksi belum aktif. Audit ini tidak menambah bukti mobile/perangkat fisik. Review desain, data/foto asli serta integrasi commerce tetap OPEN. Catatan client dan knowledge terkait diperbarui; knowledge main HEAD.

## 2026-10-20 - Jersey Jago: enam gambar katalog ilustrasi AI

CONFIRMED, permintaan Andreas: enam gambar jersey sementara dibuat dengan built-in image_gen dan dipasang ke semua contoh ready/sold, quick look, detail, crop, zoom dan bag. File WebP lokal menggantikan potongan screenshot; logo/desain bersifat ilustratif dan diberi label AI VISUAL, bukan foto stok atau bukti originalitas. Source lokal `b2ef0642f820d757c6484f75e8b5f5c8cdfb7cdc`, belum source remote. Build dan 5 tes PASS; 14 hash aset publik cocok manifest, tiga path privat tetap 404. Katalog desktop/390px dan galeri/zoom diperiksa; foto ready termuat, tidak ada overflow horizontal atau error console teramati. Status LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; produksi/COYABAG tidak berubah, transaksi belum aktif. Review visual serta data/foto asli tetap OPEN.

## 2026-10-20 - Jersey Jago: susunan Latest Drop dipulihkan

CONFIRMED; source lokal `7ebdb7a28d262a5d44e65d65e6871428f300fc57`. Koreksi Andreas 20 Oktober: bagian Latest Obsessions dikembalikan ke The Latest Drop dengan grid sejajar, empat kolom desktop dan dua kolom mobile. Hero, quick look dan detail produk revisi 02 tetap. Build dan browser delta desktop/390px PASS; delapan hash aset publik cocok. Empat tes baseline revisi 02 tidak diulang untuk perubahan tampilan ini. Produksi tidak berubah; review visual tetap OPEN. Alasan: koreksi visual Andreas. Dokumen client, PRODUCT/DOSSIER, master, sync serta changelog diselaraskan; knowledge main HEAD.

## 2026-10-20 - Jersey Jago revisi 02: editorial eksperimental dan detail produk

CONFIRMED, arahan Andreas; source lokal `5c050daad8585a869431d53768210091d65f5790`, belum source remote. Sebelumnya prototype streetwear dasar; kini headline bertumpuk, katalog asimetris, quick look, detail produk mengikuti hierarki Steal My Jersey, galeri depan/crop, ukuran, accordion dan aksi bag tetap di mobile. Jakarta Sans variable diperbaiki; build/4 tes PASS, browser desktop/390px/320px dan kecocokan delapan hash aset publik diperiksa. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; produksi dan COYABAG tidak berubah, transaksi tidak aktif, review visual revisi 02 OPEN. Data/foto asli dan sign-off menjadi langkah berikutnya.
Dokumen terkait: PRODUCT/DOSSIER/catatan client, changelog, master, keputusan, gap dan sync. [Rincian](JERSEY_JAGO.md). Knowledge main HEAD; URL sementara dan evidence privat tidak dipublikasikan.

## 2026-10-20 - Jersey Jago: prototype visual client

CONFIRMED: prototype statis terisolasi source lokal `9e68ebd0e8824ac85bb3d0349e958b6e75371736` memakai streetwear minimalis ivory/ink/emas, Plus Jakarta Sans dan Anton. Beranda, katalog/filter/search, detail, zoom, menu mobile, wishlist serta bag simulasi tersedia; build dan tiga tes terfokus PASS, browser desktop/390px dan temporary HTTPS preview diperiksa. Data produk contoh; hero ilustrasi AI; tidak ada order/payment/provider/data produksi. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED, bukan production atau BUSINESS_READY; review Andreas OPEN. Source/runtime COYABAG tetap. [Detail client](JERSEY_JAGO.md).
Alasan: Andreas meminta prototype visual dan akses dari HP. Klasifikasi CONFIRMED; belum merupakan design sign-off. File terkait: PRODUCT.md, DOSSIER.md, JERSEY_JAGO.md serta changelog/master portfolio.

## 2026-10-14 - Arkarupa: fresh full regression dan recovery lintas drive

`CONFIRMED`; atas permintaan Andreas, runner existing mendukung workspace QA pada drive terpisah tanpa reset/serve. Source tooling `7628b26b84d65e35c26065b4ea4e6aeac1b2a415`, docs `f2ff71a018916a00a3d31c60c14fe41c5342ef7c`. Sebelumnya regresi penuh hanya historis; kini full69/881 PASS, snapshot utama direstore ke disposable, fixture dikembalikan dan source bundle dipulihkan dengan exact source/integritas cocok. PRODUCT/DOSSIER/catatan proyek/master/gaps/sync/portfolio/root changelog diperbarui. Production tidak berubah; UAT, kapasitas database, custody offsite dan target preview masih terbuka.

## 2026-10-14 - Dokumentasi milestone Arkarupa dan kesiapan UAT

`CONFIRMED`; sumber keputusan Andreas, commit aplikasi lokal `a3c255e694fe993fbb8ce9457c89ff6e9afa73e8` dan startup/UAT `85eb82d41453c303929ea04135522120f349aba0`. Sebelumnya milestone workflow hanya tersimpan lokal; kini [catatan proyek](ARKARUPA.md), PRODUCT dan DOSSIER menjelaskan RAP ruangan, progres terverifikasi dan barang datang beserta batas bukti. Restart tanpa seed/reset terverifikasi HTTP/file/data; 12 skenario UAT siap, hasil manusia tetap OPEN. Production tidak berubah. Berikutnya UAT, review mapping, bukti visual dan target preview.

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| marketing | [Source](https://github.com/notyourgas/sagadevs-web/tree/main) | `cafb7ffa229c08040d58ef1f01cc283944177ca1` | `SOURCE_PUSHED` |

Source website SagaDevs disimpan di repo privat khusus. Preview multi-outlet finance mempunyai repo terpisah dan tetap synthetic/noncommercial menurut catatan milestone. Website marketing, portofolio knowledge dan runtime produk tidak disatukan menjadi satu aplikasi.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

## 2026-09-28 — Keuangan tiga outlet: screening ketiga dirilis, recovery aplikasi terverifikasi

- `CONFIRMED`: source privat `bf57446f82dd66b2f3f4ad00799aef8757de842a` menutup implementasi teknis F01–F20. [Preview](https://keuangan-multi-outlet-preview.vercel.app) `PRODUCTION_DEPLOYED_STATIC_PREVIEW`, deployment `dpl_GazqEsiUT1DmoJEbuBdNeuTo3BwT` READY, dummy/enam role/no login/no MySQL/API503. Private authenticated Laravel/MySQL source sama `PRIVATE_STAGING_DEPLOYED`, SSH-only/synthetic.
- Native150/1.817/Pint73, frontend91, browser29+21+21 dan actual integration5 PASS; source/hash terikat. Frozen export mengecek ulang role/scope setelah downgrade. Runtime delapan CSV/PDF authenticated/hash, gold totals dan selisih-nol/retry canary lulus tanpa perubahan saldo. Annual1095 readmodel kandidat sebelumnya dibawa dengan tree identik, bukan1095 writer/closing atau SLA; browser live eksternal belum diverifikasi.
- Windows encrypted recovery dependency PASS; PITR2detik; transfer+application recovery26,624detik (remote restore10), login Owner/report dan fingerprint lulus. Tidak restore database live atau provisioning OS/VPS baru. Rollback schema/contract3 identik dan kembali PASS; writer2 ditolak. Monitor nol alert/outbox0; task offsite Windows5menit hasil0. Retensi14hari dry-run tanpa deletion.
- `BUSINESS_READY=false`: 76humanUAT PENDING/sign-off0; master/saldo/tarif/pajak nyata, perangkat, parallel run, provisioning host baru dan SLA recovery nyata pending. Windows~337MiB (<rekomendasi2GiB), custody key terpisah/pertumbuhan seminggu pending. Hosted CI36425055930/36425055937 billing/spending-blocked sebelum job mulai; bukan PASS. Tidak ada pembelian, aktivasi API publik/TLS/DNS, data bisnis nyata atau perubahan pricing/trial.
- Detail kanonik: [SagaDevs PRODUCT](PRODUCT.md). Snapshot screening kedua di bawah ditandai histori; source dan runtime terbaru28September2026 terverifikasi.

## Histori 2026-09-28 — Screening kedua keuangan tiga outlet (DEPRECATED snapshot)

- `CONFIRMED`: implementasi screening kedua dipush pada source privat `ee2d56701482620258813f1c6305267718bb6de5`. Preview https://keuangan-multi-outlet-preview.vercel.app sudah `PRODUCTION_DEPLOYED_STATIC_PREVIEW`, deployment `dpl_GHAXKvDF4XwLHQ5rqTWXH8iAd3uK` Ready. Tujuh file cocok checksum. Dummy, enam tombol role, tanpa login dan API publik503 tetap sesuai eksperimen pribadi nonkomersial. Rollback artifact publik sebelumnya tersedia.
- `CONFIRMED / PRIVATE_STAGING_DEPLOYED`: Laravel/MySQL dan console sintetis privat memakai source yang sama. Sembilan file console cocok checksum runtime; autentikasi dan izin berasal dari server. Mutasi terotorisasi ulang setelah menunggu group lock, termasuk perubahan user/staf/task; sesi yang dicabut, dipindah atau diganti token ditolak. Akses privat melalui SSH; Hostinger/API publik/TLS/DNS belum diaktifkan.
- Workflow baru: Hari ini tiga outlet, assignment mandiri, setup delapan langkah dengan tanggal WIB dan review opening, draft actor/payload/key beku serta pemulihan receipt. Nota mempunyai diskon/ongkir, alasan nomor kosong dan versi split alokasi. Shipment/partial receipt/retur diterima atau belum dikirim menjaga kuantitas tujuan yang sudah terikat; penerima transfer satu outlet tidak memperoleh ledger pengirim. Tindakan sumber, pembayaran/kredit, preflight/history closing, sepuluh laporan dengan komponen budget, CSV/PDF bermetadata/expiry, serta lampiran10MB/10file dan soft discard orphan tersedia.
- Bukti kandidat: frontend78/78, browser lokal publik29, console privat21 dan operator18, tanpa page error; backend126/126 dengan1.346 assertion pada SQLite dan MySQL disposable. Runtime sintetis memvalidasi receipt sesudah login ulang, partial shipment/return/split, sepuluh laporan, ekspor dengan hash, lampiran clean, transfer/reversal, reader denial dan revokasi. Tiga POST dengan key identik menghasilkan satu receipt; delapan read serentak konsisten, latency196–599ms pada fixture pilot. Ini bukan benchmark100outlet atau UAT pengelola.
- `CONFIRMED`: backup DB/berkas terenkripsi dan restore disposable45tabel beserta fingerprint berkas cocok sebelum rilis final. Sesuai [DEC-216](../../DECISIONS.md), snapshot lokal dan task offsite Windows berjalan setiap lima menit. Salinan terbaru beserta base snapshot dan increment cocok checksum; task Windows sudah menjalankan penarikan dengan hasil0. Komputer harus online, pemilik login dan SSH tersedia; monitor mendeteksi offsite terlambat.
- `CONFIRMED`: follow-up runner Windows `646a7e3648f9e8911e49a9bc7ffaa844ca0dafef` mencocokkan principal task melalui SID kanonik, executable/argumen dan satu action. Installer diuji ulang pada task pemilik yang sudah ada; pemeriksaan QA independen dan penarikan berikutnya lulus. Tree frontend/backend identik dengan rilis aplikasi `ee2d567`; runtime Vercel/VPS tetap source tersebut. Ini pembaruan runner Windows, bukan redeploy aplikasi.
- Recovery nyata: binlog ROW terfilter, target Table_map/row tervalidasi dan DDL ditolak. Replay snapshot+increment pada database disposable cocok seluruh fingerprint data dalam6detik; database aplikasi tidak ditimpa. Standby writer contract2 tersedia; rollback kode dan kembali terverifikasi, rollback kontrak1 sesudah transaksi baru ditolak. Monitor sehat tanpa outbox/scan tertunda. Durasi6detik adalah drill SQL sintetis, bukan bukti RTO pemulihan VPS penuh; target RPO15menit/RTO4jam pada volume nyata masih perlu diukur.
- `BUSINESS_READY=false`: semua76 UAT tetap `OPERATOR_UAT_PENDING`, acceptance pengelola0. Rehearsal31hari/3outlet sintetis dengan93omzet/93shift cocok gold totals payroll/budget/kas/AP/pajak dan tiga closing bulanan. Parallel run buku nyata, master/tarif/opening asli, perangkat operator, review cetak/PDF dan sign-off belum dilakukan. Browser layanan live belum diverifikasi; gate browser yang disebut adalah lokal sintetis. Hosted CI frontend/backend/private-console tidak mulai karena billing/spending akun (run36404810966/36404810960); gate lokal/engine target dilaporkan terpisah. Tidak ada data bisnis nyata, transaksi bank, pesan customer, pembelian kapasitas atau aktivasi publik baru.
- Sumber: keputusan Andreas, PRD V1.1, source dan receipt runtime/recovery tanggal28September2026. Snapshot rilis sebelumnya di bawah adalah histori yang digantikan oleh entri ini.

## Histori 2026-09-28 — Rilis sebelum screening kedua (DEPRECATED snapshot)

- `CONFIRMED`: Andreas meminta seluruh strategi lanjutan diimplementasikan dan dideploy; backend memakai VPS yang biasa digunakan. Source produk terpisah dipush pada repository privat, commit `c44a394f987834ffbdcfe52d3cb97a183fd67d26`. Preview publik tetap eksperimen pribadi nonkomersial: https://keuangan-multi-outlet-preview.vercel.app, 13 halaman, enam tombol role, dummy browser, login dilewati dan tidak tersambung database. Status `PRODUCTION_DEPLOYED_STATIC_PREVIEW`.
- `CONFIRMED / PRIVATE_STAGING_DEPLOYED`: Laravel/MySQL dan console authenticated sudah aktif secara terisolasi di VPS melalui tunnel SSH. Role/izin ditentukan server, sesi hanya di memori browser, scope outlet/payroll dan revokasi diuji. Hosting publik API/TLS atau Hostinger belum diaktifkan. Homepage SagaDevs dan runtime SagaFin/SagaPOS tidak berubah.
- Workflow mencakup omzet/settlement dan revisi, nota dengan item/bahan/biaya/aset/residual, split payment/retur, kas/transit/reversal, tarif efektif/payroll/koreksi, pajak/rekonsiliasi dan closing bersnapshot. Console mempunyai review sebelum posting, outcome tidak pasti memakai payload/key tetap, master pengguna, tugas, upload privat yang dipindai dan ekspor CSV/PDF dengan snapshot serta retry. Penerimaan transfer Owner/Finance mensyaratkan scope kedua outlet; akses penerima hanya outlet tujuan masih residual.
- Bukti lokal: 68 tes frontend; 29 browser preview; 21 console (20 API terkontrol dan satu isolasi preview publik), nol page error; backend66/66 dengan765 assertion pada SQLite serta MySQL disposable. Bukti runtime: tujuh file publik cocok checksum; API dummy503; API privat authenticated, delapan ekspor empat jenis laporan cocok checksum, transfer antar-outlet/reversal dan lampiran clean/download terverifikasi. Tiga POST simultan dengan key identik menghasilkan satu receipt dan delapan pembacaan serentak konsisten; ini bukan benchmark kapasitas bisnis.
- Recovery rilis final: backup DB/berkas terenkripsi, restore disposable39tabel dengan fingerprint data dan berkas cocok, salinan offsite per rilis terverifikasi, serta rollback kode ke rilis sebelumnya dan kembali lulus pada schema identik. Snapshot lokal terjadwal setiap15menit aktif. Offsite otomatis, PITR dan target RPO15menit/RTO4jam belum dibuktikan.
- `BUSINESS_READY=false`: 76 skenario PRD semuanya `OPERATOR_UAT_PENDING`, acceptance operator0. Master/saldo/tarif asli, UAT, parallel run payroll/akhir bulan dan sign-off belum dilakukan. Hosted CI tidak dijalankan karena billing akun; gate lokal lulus. Tidak ada perubahan pricing/trial, data bisnis nyata, transaksi bank, pesan customer atau DNS.
- Sumber: keputusan Andreas, PRD V1.1, exact source dan runtime release/recovery tests tanggal28September2026. Entri preview awal di bawah adalah histori yang sudah digantikan oleh snapshot ini.

## Histori 2026-09-28 — Preview awal keuangan tiga outlet (DEPRECATED snapshot)

- `CONFIRMED / LOCAL_VALIDATED / PREVIEW_UI_ONLY`: eksperimen pribadi nonkomersial, tiga outlet sintetis dan satu pengelola. Preview publik: https://keuangan-multi-outlet-preview.vercel.app. Aplikasi terpisah; homepage SagaDevs dan runtime SagaFin/SagaPOS tidak berubah.
- Source lokal terkomit `ec8bb944d191ef62ccea3c1b8d0dad3df8cbddbd`, build `finance-preview-20260928-v1`, deployment `dpl_FNorReiW55p96BFLarkDCZQf2v47` Ready. Source belum dipush sebagai produk publik. Environment provider menggunakan production untuk URL stabil; status aplikasi tetap preview dan `BUSINESS_READY=false`.
- 13 halaman responsif mencakup ringkasan, omzet, budget, pembelian, supplier/utang, kas, biaya, payroll, pajak, laporan, periode, aktivitas dan pengaturan. Enam tombol role tanpa login; data dummy persisten di localStorage browser, CSV dan cetak PDF melalui browser.
- Validasi: 28 tes domain termasuk pembulatan/alokasi, subsidi dua sisi, pembayaran/retur, payroll historis dan lock periode; 23 pemeriksaan browser lokal dan 23 pada URL publik; tujuh file build cocok SHA-256 dan GET/POST API mengembalikan503. Angka browser lokal dan publik menguji suite yang sama, bukan46 kasus berbeda. Build/type/dependency audit lulus; hosted `CI_NOT_RUN`.
- Auth/ACL server, Laravel/MySQL, upload privat, worker ekspor, transaksi multi-perangkat, migration/backup/restore dan76UAT penuh belum dibuktikan. API/SQL baru rancangan handoff, belum dieksekusi. Scope distribusi/retur dan koreksi masih disederhanakan. Tidak ada perubahan VPS/Hostinger/DNS atau data bisnis nyata.
- Sumber: keputusan Andreas tentang eksperimen nonkomersial, PRD V1.1 dan exact source/release/browser evidence. Tidak ada perubahan pricing/trial atau janji fitur bisnis. Berikutnya review workflow preview, lalu backend dengan auth dan MySQL sebelum data nyata.

## Tujuan

Mencatat perubahan material pada website induk dan showroom SagaDevs dengan provenance public-safe.

## Konteks

Entri preview tidak otomatis berarti production atau domain activation.

## 2026-08-14 - Mobile-first Bio Link Directory Production

- Founder menyetujui route langsung `sagadevs.com/bio` sebagai link directory yang tidak muncul pada homepage.
- Initial view memuat website utama, dropdown `Lihat 8 Portfolio` yang tertutup secara default, dan Contact Us ke WhatsApp; shell tetap satu kolom maksimal 440 px pada mobile maupun desktop.
- Portfolio terverifikasi: Neo Ceramic, SagaView, SagaBook, Jersey, COYABAG, Sagafin, Saga Tech, dan Ayam Pemuda. Seluruh URL merespons HTTP 200 saat activation.
- Candidate protected Preview `dpl_zVyVGrSbNy7keqoj2i3PuE7fXRvp` dipromosikan menjadi production `dpl_FZA1XUs3G4YKymqkqaFCMHnrAx3A`; rollback langsung `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU` tersedia.
- Core/static, public-safety, bio desktop/mobile, homepage browser empat viewport, accessibility, security header, CSS/font, health, dan public-domain regression lulus. Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; `BUSINESS_READY` tetap `NEEDS_CONFIRMATION`.
- Source workspace belum memiliki commit Git kanonik untuk perubahan bio; exact deployment ID menjadi release provenance public-safe dan source commit tetap TODO.

## 2026-07-31 — Source-preserving Hero Scale v4 Production

- Release `source-preserving-hero-scale-v4` berstatus `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` pada `sagadevs.com`.
- Model GLB hero diperbesar tepat 1,5× dari Motion Polish v3 serta digeser lebih kiri pada desktop dan tablet landscape.
- Tablet portrait memiliki kompensasi posisi internal; mobile mempertahankan komposisi utuh dan center sedikit ke kiri.
- Entry module 3D memakai filename versioned agar returning visitor tidak tertahan cache immutable versi sebelumnya.
- Static, browser lokal empat viewport, accessibility desktop/mobile, visual audit sembilan viewport, protected Preview, dan browser regression production empat viewport lulus.
- Health production, root HTML, versioned module, security headers, dan `noindex` terverifikasi; production deployment `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU` berstatus `Ready`.

## 2026-07-31 — Source-preserving Motion Polish v3 Preview

- Release `source-preserving-motion-polish-v3` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- Hierarchy dan placement hero CTA diperbaiki; logo 3D digeser ke kiri dengan crop nol dan safe gap terhadap status rail.
- Judul SagaBook, SagaView, dan Sagafin memakai component-safe wrapping serta automated collision guard terhadap prototype capture.
- Reveal, product switching, stage transition, card scan, hover, dan press motion ditambah secara restrained dengan reduced-motion fallback.
- Render WebGL berhenti ketika hero keluar viewport atau tab tersembunyi dan aktif kembali saat diperlukan.
- Static, browser empat viewport, accessibility desktop/mobile, dan visual audit sembilan viewport lulus; production `sagadevs.com` tidak berubah.

## 2026-07-31 — Source-preserving Polish v2 Preview

- Release `source-preserving-polish-v2` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- CTA WhatsApp diperkecil menjadi tombol normal dan footer lengkap ditambahkan tanpa mengubah tujuh section source.
- Heading Process disejajarkan dengan Product Showroom; serif spacing, product title spacing, dan breakpoint showroom diperbaiki untuk mencegah overlap.
- IBM Plex Mono Saga kini konsisten pada seluruh metadata mono.
- Browser guard memverifikasi tiga product title bebas overlap, left edge heading konsisten, CTA maksimal 300 × 56 px, dan footer memiliki navigasi lengkap.
- Visual audit delapan viewport lulus dengan overflow, clipping, dan tiny-text bernilai nol; production `sagadevs.com` tidak berubah.

## 2026-07-31 — Source-preserving typography correction Preview

- Release `source-preserving-typography-v1` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- Source composition, original font families, tujuh section, dan fitur interaktif dipulihkan sebagai baseline kanonik.
- Perubahan dibatasi pada typography, hierarchy, spacing, density, placement, responsive layout, serta focus management menu dan command palette.
- Sembilan capture SagaBook, SagaView, dan Sagafin tetap digunakan; file preview, hero, dan product manifest cocok dengan baseline source.
- Visual audit delapan viewport, static, browser, health, security header, dan public-safety gate lulus tanpa overflow atau clipping.
- Production `sagadevs.com` tidak berubah; Preview tetap `noindex` dan dilindungi.

## 2026-07-31 — UI/UX Sprint 1–5 Vercel Preview (DEPRECATED)

- Release `ui-ux-sprints-1-5-preview-v1` berstatus `STAGING_DEPLOYED` pada Vercel Preview.
- Information architecture dipadatkan menjadi Hero, Products, Services, Process, Proof, dan Contact.
- Geist menjadi font utama lokal; navigation, hierarchy, density, responsive layout, motion, accessibility, dan WhatsApp brief diperbaiki.
- Showroom tetap memakai sembilan capture source-grounded dari SagaBook, SagaView, dan Sagafin.
- Auth/pricing/console/command surface lama tidak berada pada DOM publik.
- Static, browser, delapan-viewport visual, security-header, health, dan public-safety gate lulus.
- Production `sagadevs.com` tidak berubah; prototype tetap `noindex` dan Vercel Preview dilindungi.
- Arah visual ini ditolak karena mengubah source terlalu signifikan; digantikan oleh `source-preserving-typography-v1`.
