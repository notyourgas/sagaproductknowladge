# Jersey Jago — Client Visual Prototype

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

## Tujuan dokumen

Mencatat prototype visual client Jersey Jago dan batas buktinya dalam layanan SagaDevs.

## Konteks dan status bukti

20 Oktober 2026. CONFIRMED: atas arahan Andreas, source lokal `d3787e495588dea4c0ecd3e1e7b21596a7c73233` mengimplementasikan review fitur/usability menjadi revisi 04. Source terpisah dari COYABAG dan marketing SagaDevs; belum dipush ke source remote. Hash lokal bukan tautan repository publik.

## Arah visual revisi 04

Streetwear minimalis dengan komposisi editorial lebih eksperimental: headline bertumpuk, foto rail offset, stempel emas, culture strip bergerak, katalog sejajar, baris klub dan footer ringkas dengan navigasi terkelompok (wordmark footer besar diganti pada revisi 03). Palette ivory/ink/emas dan Plus Jakarta Sans/Anton dipertahankan. Font sekarang memakai WOFF2 yang sesuai; Jakarta Sans variable mendukung bobot bold. Preferensi reduced motion mematikan animasi.

## Detail produk dan alur

Hierarki visual mengikuti halaman detail Steal My Jersey yang diperiksa: foto besar di kiri, judul sans-serif tebal, harga, kondisi tersegmentasi, aksi utama, facts, pengukuran flat dan accordion. Katalog memiliki quick look yang membuka full details. Galeri depan/crop, zoom, wishlist dan bag simulasi tersedia. Mobile mempunyai aksi bag tetap; state SKU tersinkron di quick look/detail/tombol mobile. Skip-to-content mempertahankan halaman produk.

## Validasi

Build statis kini empat belas berkas; tiga belas tes Node PASS untuk filter, SKU satuan, allowlist server, format font dan mapping enam WebP unik. Browser desktop, 390px dan beranda 320px diperiksa tanpa overflow horizontal yang teramati. Quick look, full details, galeri, zoom, accordion, menu mobile, empty search, sold serta bag diperiksa. Grade 8.5 menampilkan setengah segmen. Empat belas hash berkas publik cocok manifest; tiga path privat/source/config yang diuji mengembalikan 404. Tidak ada error console teramati. Ini pemeriksaan terfokus, bukan audit keamanan menyeluruh atau acceptance perangkat fisik.

## Data dan aset

Empat ready dan dua sold merupakan contoh. Harga, ukuran, kondisi dan ketersediaan adalah data ilustratif. Foto produk kini enam ilustrasi AI yang konsisten. Galeri menampilkan depan dan crop dari ilustrasi yang sama, dengan label AI VISUAL. Tidak diklaim sesuai stok atau desain jersey resmi tertentu; logo dan detail bersifat ilustratif. Screenshot lama hanya dipertahankan untuk mark brand kecil. Hero merupakan ilustrasi AI. Foto asli resolusi tinggi, label dan catatan pemeriksaan setiap barang masih dibutuhkan. Tidak ada order/payment, reservasi stok, provider, customer account atau data produksi yang ditulis.

## Runtime dan status

LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Temporary HTTPS tunnel untuk review HP tetap bergantung pada PC, server dan proses tunnel online. Kedua proses dijalankan terpisah dari shell peluncur; tidak ada service, autostart atau DNS produksi baru. URL sementara tidak menjadi domain kanonik di knowledge publik. Source/runtime COYABAG dan produksi lain tidak berubah; belum BUSINESS_READY.

## Keputusan dan tindak lanjut

Scope implementasi strategi dikonfirmasi Andreas; sign-off visual revisi 04 dan iPhone fisik masih OPEN. Berikutnya review visual dan aset/data nyata, lalu adaptasi katalog/admin/integrasi commerce COYABAG sebagai pekerjaan terpisah. Payment, shipping, buyback, konsinyasi dan printing belum diaktifkan.
