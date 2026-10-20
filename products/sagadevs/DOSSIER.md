# SagaDevs Product Hub Dossier

## 2026-10-20 - Jersey Jago: preview hosted privat tanpa ketergantungan PC

CONFIRMED, permintaan Andreas agar preview tetap bisa dibuka dari HP saat PC mati telah dipenuhi melalui hosting Sites, status native `succeeded`. URL tetap: https://jersey-jago-preview.lucky-eft-9288.chatgpt.site/#home. Audience owner-private dipertahankan; pengunjung perlu login ChatGPT dengan akun pemilik yang berhak. Ini menggantikan ketergantungan Quick Tunnel untuk review pribadi; tunnel lokal bukan alamat tetap.

Snapshot visual revisi14 berasal dari UI source `2fd701ab5231fb6845f575c60471087eac0587b6`, dengan14 berkas statis cocok SHA256. Hosted source commit `a1fd3b57f6fbbaf0e5fa4213eaa1786546a32fe7` sudah pushed sebelum save/deploy; build remote dipakai karena pengemasan Bash lokal tidak tersedia. Browser mengonfirmasi gerbang login; UI hosted setelah autentikasi dan HP fisik belum diverifikasi karena sesi memerlukan login ulang pemilik. Status `HOSTED_PRIVATE_PREVIEW_DEPLOYED`, bukan BUSINESS_READY. Produksi hosting preview berubah; UI revisi14, COYABAG, backend, stok, order dan payment produksi tidak berubah. Foto AI/data contoh, foto/data/kebijakan asli serta UAT pembeli dan integrasi commerce tetap OPEN. Rollback memakai versi/snapshot terikat yang disimpan; tidak ada database yang diubah.

## 2026-10-20 - Jersey Jago revisi 14: layout dan alignment responsif

CONFIRMED, source lokal `2fd701ab5231fb6845f575c60471087eac0587b6` (belum source remote) merapikan gutter bersama, nav desktop terpusat/menu tablet, baris heading mobile, kartu dengan panah sejajar harga dan badge terpisah dari hati, kolom klub/fakta, catatan galeri, footer dan toolbar sticky quick look. Judul hero berjarak24px dari foto; rotasi strip yang menyebabkan scrollbar horizontal1px dibuang. Padding paragraf/garis accordion dirapikan tanpa perubahan animasi atau logika commerce. Source `docs/layout-review-14.md` mencatat reproduksi dan batas. Build14 aset/20 tes Node PASS;12 kelompok assertion browser,54 kombinasi9halaman×6viewport320/390/640/768/1024/1440. Pemeriksaan akhir halaman menunjukkan nol overflow horizontal; harga kartu sejajar setelah animasi dan baseline subtitle/aksi mobile berselisih1px. Quick look/panduan, filter invalid, bag4barang/ringkasan diuji; barang pengujian dibersihkan.14 hash publik sesuai manifest,3 path privat404; tidak ada error console teramati. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Produksi/COYABAG tidak berubah; foto/data/kebijakan asli, integrasi commerce, uji pembeli/iPhone fisik/keyboard virtual/screen reader tetap OPEN.

## 2026-10-20 - Jersey Jago revisi 13: aksi pencarian yang jelas

CONFIRMED, audit lanjutan Andreas menghasilkan source lokal `e590286b69a61dc54719dce9798132209b120ae3` (belum source remote). Kolom pencarian kini memiliki tombol Cari yang terpisah dari X; klik dan Enter memakai form native yang sama, fokus menuju hasil terlihat. Jumlah hasil menyebut Ready stock/New Drop/Arsip terjual. Live matching, query/filter dan history tetap; submit berulang tidak menambah langkah history. Riset Baymard/W3C, review tiap fitur dan prioritas konten/UAT ada di source `docs/usability-review-13.md`. Build/syntax/20 tes Node PASS;14 kelompok assertion browser meliputi submit/clear, scope stok, query+filter/recovery, Back/Forward, keyboard Tab, footer/bantuan/header search, reload serta nested guide. Empat viewport320/390/640/1280 tanpa overflow horizontal teramati; kontrol Cari46px dan X44px. Tidak ada error console teramati;14 hash publik sesuai manifest dan3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Footer/Latest Drop/arah visual dipertahankan; produksi/COYABAG tidak berubah. Foto/data/kebijakan asli, integrasi commerce dan uji iPhone fisik/keyboard virtual/screen reader/pembeli tetap OPEN.

## 2026-10-20 - Jersey Jago revisi 12: Back pada panel bertumpuk

CONFIRMED, atas permintaan audit/riset dan implementasi lanjutan Andreas, source lokal `742c33538248008521a964fdf7e82a6bb3717bc7` (belum source remote) mengintegrasikan dialog native dengan Back/Forward lokal dokumen. Back menutup panduan/quick look/bag/ringkasan per lapisan, mempertahankan halaman dan fokus; Close/Escape/backdrop, Apply serta tautan panel mengonsumsi history yang tepat. Quick look→bag→ringkasan mendukung3 lapisan. Ringkasan memakai bag terkini setelah penghapusan, feedback tambah tidak kedaluwarsa, dan foto yang selesai ketika panel tertutup tidak tertahan loading saat Forward. Reload menutup frame panel, bag sesi tetap; Forward panel tidak dipersistensikan lintas reload. Riset Baymard/W3C/MDN dan audit tiap fitur: source `docs/usability-review-12.md`. Build/syntax/20 tes Node PASS;17 kelompok assertion browser termasuk penundaan gambar,4 viewport320/390/640/1280 dengan tutup terlihat/latar terkunci/tanpa overflow dialog teramati. Tidak ada error console teramati; simulasi jaringan dibersihkan.14 hash publik sesuai manifest,3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Produksi/COYABAG dan arah visual tetap. Foto/data/kebijakan, integrasi commerce, uji iPhone fisik/gesture/keyboard virtual/screen reader/pembeli masih OPEN.

## 2026-10-20 - Jersey Jago revisi 11: riwayat refinements katalog

CONFIRMED, atas permintaan audit/riset dan implementasi lanjutan Andreas, source lokal `4dfd37c0079a358ee94ddc1c088d6eb25a55dd05` (belum source remote) membuat perubahan urutan harga, hapus chip, clear-search dan reset semua dapat dipulihkan melalui browser Back/Forward. Dropdown, chip, query, jumlah dan susunan kartu kembali sesuai state. Apply tanpa perubahan tidak menambah langkah ganda; live typing tetap replace agar tidak ada langkah per huruf. Baseline sort dua kali lalu Back keluar ke beranda; kandidat kembali ke urutan sebelumnya. Riset Baymard/MDN dan audit tiap fitur: source `docs/usability-review-11.md`. Build/20 tes Node PASS;7 kelompok assertion browser mencakup refinements, detail/Back/fokus dan Apply tanpa perubahan.9 kombinasi Ready/New Drop/arsip pada320/390/1280px sesuai urutan tanpa overflow horizontal teramati; tidak ada error console teramati.14 hash publik sesuai manifest,3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Produksi/COYABAG dan visual tetap. Foto/data SKU, kebijakan, integrasi commerce, uji pembeli/perangkat fisik serta integrasi Back khusus dialog tetap OPEN.

## 2026-10-20 - Jersey Jago revisi 10: filter layar pendek

CONFIRMED, atas permintaan audit/riset dan implementasi lanjutan Andreas, source lokal `17e01bbea92bb15211924b58fc7d3b547fba8afc` (belum source remote) memisahkan scroll pilihan filter dari heading dan aksi agar ukuran tidak tertutup pada layar pendek. Layout aksi dipadatkan pada tinggi viewport450px ke bawah; buka ulang mereset inner scroller dan resize mempertahankan bidang aktif dalam area terlihat. Baseline320x568: ukuran M y495-541 tertutup aksi mulai y410; kandidat y232-278 terlihat. Riset W3C/MDN/Baymard dan audit tiap fitur ada pada source `docs/usability-review-10.md`. Build/20 tes regresi Node PASS;7 pemeriksaan browser mencakup102 langkah Tab maju/mundur pada6 viewport termasuk landscape, Cancel/reopen, harga invalid, Apply/Reset/query, empty recovery, Back/Forward katalog dan resize. Tidak ada overflow horizontal atau error console teramati;14 hash publik cocok manifest,3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Footer/arah visual, produksi dan COYABAG tetap. Uji iPhone fisik/keyboard virtual/screen reader/pembeli asli, foto/data SKU, kebijakan dan integrasi commerce tetap OPEN.

## 2026-10-20 - Jersey Jago revisi 09: pilihan bag terlihat pada kartu

CONFIRMED, atas permintaan audit/riset dan implementasi lanjutan Andreas, source lokal `69c04de3318bc9abda45ee84c45f115037f4e268` (belum source remote) menampilkan penanda centang/teks emas dan akses Lihat bag pada SKU yang sudah dipilih. Status sinkron sesudah pencarian/filter/urutan, tambah/hapus/Undo/pindah simpan dan reload sesi pada katalog, Latest Drop, wishlist serta rekomendasi. Pemicu yang tersembunyi sesudah penghapusan mengembalikan fokus ke tautan produk yang sama. Arsip sold tidak mendapat aksi bag; pilihan tidak mereservasi stok. Riset Baymard/W3C dan audit tiap fitur: source `docs/usability-review-09.md`. Build/20 tes regresi Node PASS;8 assertion browser mencakup alur pilihan,16 kombinasi halaman/lebar320/390/768/1280 tanpa overflow horizontal teramati dan kontrol44px; tidak ada error console teramati.14 hash publik sesuai manifest,3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Footer/arah visual dan produksi/COYABAG tetap. Foto/data SKU asli, grading/kebijakan, uji pembeli/iPhone fisik/screen reader serta integrasi commerce tetap OPEN.

## 2026-10-20 - Jersey Jago revisi 08: kontrol panel panjang dan undo

CONFIRMED, atas permintaan lanjutan Andreas, source lokal `c3b300b0a1b504904cb575987edbf431bd7a6f93` (belum source remote) memperbaiki akses tutup bag panjang dengan heading sticky, menampilkan fokus Batalkan setelah hapus, serta memfokuskan SKU yang benar setelah undo bag/wishlist. Wishlist kini juga memberi aksi undo pada toast sambil mempertahankan notice persisten. Modal yang dibuka ulang dimulai dari atas; nested panduan ukuran mempertahankan quick look dan pengembalian fokus native. Baseline390x620: tutup bag y-344 dan fokus undo y-265; kandidat mempertahankan tutup dalam layar dan undo di bawah heading. Gaya visual/footer/Latest Drop dan transaksi tetap. Riset W3C/Baymard serta review tiap fitur ada pada source `docs/usability-review-08.md`. Build/20 tes regresi Node PASS; assertion browser mencakup bag/wishlist4item, hapus/undo/fokus, quick look baru, dialog bertumpuk/Escape dan filter reopen/Cancel/Apply. Bag320/390/768/1280px tanpa overflow horizontal teramati; tidak ada error console teramati.14 hash publik sesuai manifest,3 path privat404. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; belum uji pembeli, iPhone fisik atau screen reader. Foto/data SKU asli, grading/kebijakan dan integrasi commerce tetap OPEN. Produksi/COYABAG tidak berubah.

## 2026-10-20 - Jersey Jago revisi 07: gambaran produk mobile dan ringkasan bag

CONFIRMED, atas permintaan audit/riset dan implementasi lanjutan Andreas, source lokal `2a93c7158f314c73efcd64c0c919b4b90d5a412a` (belum source remote) menempatkan identitas/harga sebelum galeri di mobile dengan satu H1 dan mempertahankan galeri kiri/informasi kanan di desktop. Pada390px judul berpindah dari sekitar y815 ke y202. Ringkasan bag kini memuat link/ukuran aktual/jumlah/subtotal bersama, serta ongkir dan total akhir yang belum dihitung; aksi quick look/hapus/pindah simpan memiliki nama aksesibel kontekstual. Panel filter memperlihatkan query dengan hapus sebagai draft; Cancel/Reset/Apply konsisten. Tautan tab stok disegarkan setelah live search/sort agar konteks tidak hilang. Footer/Latest Drop/gaya visual tetap. Riset Baymard/W3C, matriks tiap fitur dan batas validasi ada dalam source `docs/usability-review-07.md`. Build/20 tes PASS;14 hash publik sesuai manifest,3 path privat404. Browser memeriksa subtotal2barang/hapus/undo/review/link/Back native, draft query/cancel/reset/apply, perpindahan stok, serta detail ready/sold pada320/390/768/1280px tanpa overflow horizontal teramati; tidak ada error console teramati. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED, bukan bukti uji pembeli/iPhone fisik/screen reader atau aktivasi transaksi. Foto/data SKU, grading/kebijakan dan integrasi commerce tetap OPEN. Produksi/COYABAG tidak berubah.

## 2026-10-20 - Jersey Jago revisi 06: konteks daftar dan feedback belanja

CONFIRMED, permintaan lanjutan Andreas untuk pemeriksaan/perbaikan UX per fitur menghasilkan source lokal `74c184c09ac3b70744e4ac6b50860656413e9c18` (belum source remote). Detail kini kembali ke wishlist/katalog/New Drop/arsip sesuai asal dengan refinements, posisi dan fokus kartu; asal bertahan setelah reload detail. Regenerasi hasil memperbarui label wishlist dan notice foto; Enter pencarian menuju jumlah hasil yang terlihat. Harga draft tidak valid mendapat feedback perbaikan tanpa jumlah hasil lama, dan bag memiliki retry foto yang dapat dipakai dari dalam modal. Footer/Latest Drop serta gaya visual tetap. Riset Baymard/W3C dan matriks per fitur tercatat di source `docs/usability-review-06.md`. Build/19 tes PASS; 14 hash publik cocok manifest, tiga path privat 404. Browser memeriksa route/fokus/reload, label kartu, harga Reset/Apply, retry bag dengan simulasi request gagal, serta katalog/wishlist/detail pada 390/768/1280 px tanpa overflow horizontal teramati; pencarian dan filter pendek diperiksa pada 320x568. Ini validasi delta, bukan uji semua fitur atau perangkat fisik. Status LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Produksi/COYABAG dan integrasi transaksi tidak berubah. Foto/data asli, grading/kebijakan, uji pembeli/HP fisik/screen reader dan commerce tetap OPEN.

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

## 2026-10-20 - Koreksi susunan Latest Drop

Koreksi Andreas 20 Oktober: bagian Latest Obsessions dikembalikan ke The Latest Drop dengan grid sejajar, empat kolom desktop dan dua kolom mobile. Hero, quick look dan detail produk revisi 02 tetap. Build dan browser delta desktop/390px PASS; delapan hash aset publik cocok. Empat tes baseline revisi 02 tidak diulang untuk perubahan tampilan ini. Produksi tidak berubah; review visual tetap OPEN.

## 2026-10-20 - Surface client Jersey Jago untuk review desain

CONFIRMED: revisi 02 prototype statis terisolasi source lokal `7ebdb7a28d262a5d44e65d65e6871428f300fc57` memakai komposisi editorial eksperimental, ivory/ink/emas, Plus Jakarta Sans variable dan Anton. Beranda bertumpuk/asimetris, quick look, detail mengikuti hierarki referensi Steal My Jersey, galeri depan/crop, condition meter, ukuran flat, accordion dan aksi bag tetap di mobile. Build dan empat tes terfokus PASS; browser desktop, 390px dan 320px diperiksa; delapan hash aset publik cocok manifest. Data contoh dan hero ilustrasi AI; tanpa order/payment/provider/data produksi. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; review revisi 02 Andreas OPEN, bukan BUSINESS_READY. COYABAG tidak berubah. [Detail client](JERSEY_JAGO.md).

## 2026-10-14 - Penutupan recovery Arkarupa

`CONFIRMED`; [proyek Arkarupa](ARKARUPA.md) kini memiliki workspace QA dan snapshot terenkripsi pada drive lain, drill restore source/data ke target disposable serta full69/881 PASS. Source tooling `7628b26b84d65e35c26065b4ea4e6aeac1b2a415`, dokumentasi `f2ff71a018916a00a3d31c60c14fe41c5342ef7c`; aplikasi aktif tetap a3c255e. Fingerprint bisnis utama sama, fixture dipulihkan, server uji kembali aktif. Drive sistem/database masih sempit; salinan belum offsite dan human UAT/public preview belum ada. Tidak mengubah pricing, fitur bisnis atau runtime produk lain.

## 2026-10-14 - Proyek klien Arkarupa

`CONFIRMED`; [Arkarupa Dashboard](ARKARUPA.md) merupakan prototype kontraktor terpisah dengan survei → RAP per ruangan → penawaran → baseline → progres dan barang datang. Barang diterima tidak menaikkan progres fisik. Source aplikasi lokal `a3c255e694fe993fbb8ce9457c89ff6e9afa73e8`, startup/paket UAT `85eb82d41453c303929ea04135522120f349aba0`; source belum memiliki remote terverifikasi. Demo lokal dilanjutkan pada 14 Oktober dengan HTTP/file/data cocok; human UAT dan akses publik belum selesai. Ini pembaruan portfolio delivery, tanpa perubahan pricing atau runtime website marketing.

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| marketing | [Source](https://github.com/notyourgas/sagadevs-web/tree/main) | `cafb7ffa229c08040d58ef1f01cc283944177ca1` | `SOURCE_PUSHED` |

Source website SagaDevs disimpan di repo privat khusus. Preview multi-outlet finance mempunyai repo terpisah dan tetap synthetic/noncommercial menurut catatan milestone. Website marketing, portofolio knowledge dan runtime produk tidak disatukan menjadi satu aplikasi.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

## 2026-09-28 — Keuangan tiga outlet: screening ketiga dirilis, recovery aplikasi terverifikasi

- `CONFIRMED`: F01–F20 screening ketiga diimplementasikan dan source privat `bf57446f82dd66b2f3f4ad00799aef8757de842a` sudah dipush. Preview [dashboard tiga outlet](https://keuangan-multi-outlet-preview.vercel.app) berstatus `PRODUCTION_DEPLOYED_STATIC_PREVIEW`, deployment `dpl_GazqEsiUT1DmoJEbuBdNeuTo3BwT` READY; tujuh file cocok checksum. Dummy, enam tombol role, tanpa login/MySQL dan API publik503 sesuai eksperimen pribadi nonkomersial.
- `CONFIRMED / PRIVATE_STAGING_DEPLOYED`: Laravel/MySQL dan console authenticated sintetis memakai source yang sama; sembilan file runtime cocok checksum. Akses tetap melalui SSH. Hostinger/API publik/TLS/DNS belum diaktifkan; produk lain tidak dipromosikan oleh rilis ini.
- Workflow: input/nilai turunan divalidasi server; verifikasi harian sumber operasional dibedakan dari finalisasi bulan sehingga payroll/biaya turunan tetap dapat diproses dengan tanggal kas terbuka. Pajak dan kredit mengikuti keluarga sumber; koreksi pembelian mengikuti alokasi efektif. Draft/pemulihan receipt, rekening scoped, tindakan Hari ini, atribusi biaya pusat, tanggal kerja/laporan, integritas, PDF Unicode dan pagination diselaraskan. Reversal payroll tetap Owner-only; HR tidak memperoleh izin memindahkan dana.
- Audit tambahan menutup frozen export setelah downgrade role/scope: list/status/retry/download memeriksa kembali akses server terhadap snapshot. Snapshot payroll lama tidak mempertahankan izin pengguna yang telah diturunkan.
- Gate exact candidate: native PHP8.5.4/MySQL8.4.11 PASS150/150 dengan1.817 assertion dan Pint73; frontend91, browser lokal publik29, console privat21, operator21 serta lima actual integration PASS. Integrasi memakai dua koneksi/barrier dan respons hilang setelah commit/login ulang tanpa posting kedua. Source175 hash dan16 artifact terikat; user uji dicabut.
- Runtime source terbaru memvalidasi gold totals historis, empat jenis laporan/delapan CSV-PDF authenticated dengan checksum, reader denial/revokasi, serta canary selisih nol/retry key sama tanpa perubahan saldo. Pemeriksaan integritas akhir revision27ok dan monitor nol alert/outbox0; enam unit produk dan layanan tetangga aktif.
- Annual readmodel1095 sumber pada kandidat sebelumnya dibawa hanya melalui bukti tree backend/frontend identik: summary1658ms, scoped599ms, enqueue1742ms, worker2323ms. Ini fixture sintetis baca/ekspor, bukan1095 normal writer/closing atau SLA production. Browser live eksternal belum diverifikasi; tes browser disebut adalah lokal.
- Recovery: full SQL perjam/checkpoint5menit/reuse private-files berdasarkan fingerprint; penarikan terenkripsi Windows5menit dependency/checksum terverifikasi. PITR disposable cocok fingerprint seluruh data dalam2detik. Salinan Windows benar-benar dikirim ulang dan artifact/database/berkas, HTTP terisolasi, anon401, login Owner serta laporan authenticated lulus: transfer+pemulihan aplikasi26,624detik, fase restore remote10detik. Database live tidak ditimpa; server/database/user drill ditutup. **OS/VPS baru belum dibangun dalam drill**, durasi bukan RTO host penuh.
- Compatible rollback kontrak3 ke standby dan kembali lulus, schema identik tanpa restore DB; writer2 ditolak sebelum pointer berubah. Retensi14hari tetap dry-run tanpa penghapusan backup/key. Task Windows penarikan terakhir hasil0; komputer harus online/login/SSH tersedia.
- `BUSINESS_READY=false`: seluruh76 UAT manusia PENDING, acceptance0. Guide/lembar pengelola siap, tetapi master/saldo/tarif/pajak asli, perangkat pengelola, parallel run buku nyata dan sign-off belum dilakukan. Windows terakhir sekitar337MiB, melampaui hard reserve256MiB tetapi di bawah rekomendasi2GiB; custody key terpisah dan pertumbuhan satu minggu belum terbukti. Hosted CI run36425055930/36425055937 tidak memulai job karena billing/spending akun; bukan PASS dan tidak membeli kuota. PDF karakter yang diuji tidak menjamin semua CJK/emoji atau formulir legal.
- Sumber: permintaan Andreas, PRD V1.1, source exact candidate serta receipt native/runtime/recovery28September2026. Entri screening kedua di bawah adalah histori yang digantikan oleh snapshot ini; tidak ada pricing/trial atau aktivasi usaha baru.

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

## Tujuan dokumen

Menjadi rujukan publik untuk positioning, experience, technical boundary, dan readiness website induk SagaDevs.

## Konteks dan status bukti

- Updated: 14 Agustus 2026.
- Delivery: `PRODUCTION_DEPLOYED` pada Vercel.
- Activation: `PRODUCTION_ACTIVATED` pada `sagadevs.com`.
- Business readiness: `NEEDS_CONFIRMATION`.
- Evidence: production deployment `dpl_FZA1XUs3G4YKymqkqaFCMHnrAx3A`, rollback `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU`, health, security headers, static/browser/accessibility gate, protected Preview, founder UAT, exact-candidate promotion, public-domain homepage regression empat viewport, serta bio regression desktop/mobile. Release redesign sebelumnya ditolak.

## Overview produk

SagaDevs adalah parent product hub dan jalur masuk jasa digital. Ia merangkum keluarga produk tanpa menggantikan landing maupun aplikasi masing-masing produk.

## Masalah yang diselesaikan

Calon pengguna membutuhkan satu pintu untuk memahami produk Saga, melihat workflow nyata, menuju landing yang tepat, atau menghubungi SagaDevs untuk kebutuhan custom.

## Target pengguna

Calon pengguna produk Saga, owner bisnis yang membutuhkan sistem digital, partner, dan reviewer.

## Persona pengguna

- Owner studio yang membandingkan SagaBook dan SagaView.
- Individu yang mengevaluasi Sagafin.
- Owner bisnis yang membutuhkan website atau operational tool.

## Value proposition

Satu hub yang menunjukkan bukti workflow asli dan meneruskan pengunjung ke produk atau percakapan jasa yang tepat.

## Use case

- Menjelajahi tiga produk aktif.
- Melihat tiga capture source-grounded per produk.
- Membuka landing produk.
- Membentuk brief jasa dan mengirimnya melalui WhatsApp.

## Fitur utama

- Original seven-section composition, numbered navigation, dan section rail.
- Hero 3D, command palette, service cards, interactive system map, process cards, workflow slider, mini-terminal, dan contact selector.
- Showroom SagaBook, SagaView, dan Sagafin dengan sembilan source-grounded capture.
- Responsive navigation dan accessible keyboard controls.
- Compact WhatsApp CTA dan footer lengkap dengan navigasi, direct product links, contact, availability, copyright, serta back-to-top.
- Component-safe product titles, repositioned 3D hero, coherent CTA hierarchy, restrained reveal/product motion, reduced-motion fallback, dan offscreen WebGL pause.
- Route tersembunyi dari homepage `sagadevs.com/bio` dengan shell mobile-first maksimal 440 px, website utama, dropdown delapan portfolio tertutup secara default, dan CTA Contact Us ke WhatsApp.

## Fitur MVP

Static public landing, sembilan preview image, link landing produk, WhatsApp conversion, health endpoint, security headers, dan noindex gate. Placeholder auth/pricing source tetap tersembunyi dan inert; bukan fitur aktif.

## Roadmap

`CONFIRMED`: link directory `/bio` memuat delapan portfolio yang dipilih founder. `PROPOSAL`: bangun Super Admin terpisah ketika kebutuhan publishing dan lead management sudah terdefinisi.

## User journey

Pengunjung memahami SagaDevs, memilih produk atau layanan, meninjau bukti, lalu menuju landing produk atau WhatsApp.

## User flow

`Hero -> Services/System Map -> Product Showroom -> source capture -> product landing`, `Hero -> Process/Workflow -> Contact -> WhatsApp`, atau direct `/bio -> website/portfolio/contact`.

## Business model

Hub mendukung akuisisi produk dan lead jasa; model komersial per produk tetap product-scoped.

## Pricing

Tidak ada pricing pada hub. Pricing harus berada pada landing dan kontrak produk terkait.

## Kompetitor

`NEEDS CONFIRMATION`: kategori pembanding dan evidence kompetitor belum dikunci.

## Diferensiasi produk

Showroom memakai capture workflow produk Saga yang benar-benar diteliti, bukan generic dashboard atau fabricated demo.

## Brand positioning

Independent digital product studio yang membangun sistem dari workflow bisnis nyata.

## Messaging

Pesan utama menekankan digital systems that make businesses move serta bukti produk dan operasional yang nyata.

## FAQ

- Apakah showroom merupakan live app? Tidak, showroom menampilkan capture prototype terkurasi.
- Apakah SagaDevs memiliki login publik? Tidak pada static hub.
- Apakah domain production sudah memakai route bio? Ya, `sagadevs.com/bio` aktif dan tidak muncul pada navigasi homepage.

## Technical overview

Static HTML, CSS, JavaScript, local font, JSON content manifest, local product images, dan Three.js hero di Vercel. Typography mempertahankan Helvetica Neue, Xanh Saga, dan IBM Plex Mono Saga; refinement ditempatkan sebagai layer CSS terisolasi.

## Integrasi

Landing produk eksternal dan WhatsApp. Tidak ada product API, iframe, analytics provider, payment, atau auth.

## Data yang digunakan

Konfigurasi produk publik dan event sessionStorage yang data-minimized. Tidak ada PII atau customer operational data.

## Risiko dan asumsi

- Source workspace belum memiliki commit Git kanonik untuk perubahan bio; provenance aktivasi dijaga melalui exact Vercel preview dan production deployment ID.
- Delapan URL portfolio aktif saat release diverifikasi, tetapi availability situs eksternal tetap dapat berubah di luar lifecycle SagaDevs hub.

## KPI dan success metrics

`PROPOSAL`: product landing click, qualified WhatsApp brief, dan conversion per product entry. Belum ada baseline production.

## Ide konten pemasaran

Before/after workflow bisnis, walkthrough source-grounded, dan perbedaan peran SagaBook, SagaView, serta Sagafin.

## Contoh caption

`PROPOSAL`: “Tiga produk, tiga workflow nyata, satu cara kerja: mulai dari masalah operator.”

## Ide campaign

`PROPOSAL`: serial tiga produk yang mengarahkan setiap episode ke landing masing-masing.

## Sales talking points

- Mulai dari workflow dan pain operator.
- Tunjukkan capture asli sebelum membahas fitur.
- Pilahkan product fit dari kebutuhan custom project.

## Objection handling

Jika calon pengguna meminta demo penuh, arahkan ke landing atau guided demo produk; jangan memosisikan image showroom sebagai aplikasi live.

## Keputusan dan gap

`CONFIRMED`: SagaDevs adalah parent hub, product landing tetap terpisah, original style/features/font dipertahankan, Hero Scale v4 aktif pada homepage, dan link directory mobile-first `/bio` aktif di production tanpa tautan dari homepage. `NEEDS CONFIRMATION`: analytics production serta scope Super Admin. `TODO`: tutup gap source Git commit untuk perubahan bio.
