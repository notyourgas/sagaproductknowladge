# Jersey Jago — Client Visual Prototype

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

20 Oktober 2026. CONFIRMED: atas arahan Andreas, source lokal `2a735e8daecfbe6e0407f7c374a52d0d255dac6b` mengimplementasikan strategi UX menjadi revisi 03. Source terpisah dari COYABAG dan marketing SagaDevs; belum dipush ke source remote. Hash lokal bukan tautan repository publik.

## Arah visual revisi 03

Streetwear minimalis dengan komposisi editorial lebih eksperimental: headline bertumpuk, foto rail offset, stempel emas, culture strip bergerak, katalog sejajar, baris klub dan footer ringkas dengan navigasi terkelompok (wordmark footer besar diganti pada revisi 03). Palette ivory/ink/emas dan Plus Jakarta Sans/Anton dipertahankan. Font sekarang memakai WOFF2 yang sesuai; Jakarta Sans variable mendukung bobot bold. Preferensi reduced motion mematikan animasi.

## Detail produk dan alur

Hierarki visual mengikuti halaman detail Steal My Jersey yang diperiksa: foto besar di kiri, judul sans-serif tebal, harga, kondisi tersegmentasi, aksi utama, facts, pengukuran flat dan accordion. Katalog memiliki quick look yang membuka full details. Galeri depan/crop, zoom, wishlist dan bag simulasi tersedia. Mobile mempunyai aksi bag tetap; state SKU tersinkron di quick look/detail/tombol mobile. Skip-to-content mempertahankan halaman produk.

## Validasi

Build statis kini empat belas berkas; sepuluh tes Node PASS untuk filter, SKU satuan, allowlist server, format font dan mapping enam WebP unik. Browser desktop, 390px dan beranda 320px diperiksa tanpa overflow horizontal yang teramati. Quick look, full details, galeri, zoom, accordion, menu mobile, empty search, sold serta bag diperiksa. Grade 8.5 menampilkan setengah segmen. Empat belas hash berkas publik cocok manifest; tiga path privat/source/config yang diuji mengembalikan 404. Tidak ada error console teramati. Ini pemeriksaan terfokus, bukan audit keamanan menyeluruh atau acceptance perangkat fisik.

## Data dan aset

Empat ready dan dua sold merupakan contoh. Harga, ukuran, kondisi dan ketersediaan adalah data ilustratif. Foto produk kini enam ilustrasi AI yang konsisten. Galeri menampilkan depan dan crop dari ilustrasi yang sama, dengan label AI VISUAL. Tidak diklaim sesuai stok atau desain jersey resmi tertentu; logo dan detail bersifat ilustratif. Screenshot lama hanya dipertahankan untuk mark brand kecil. Hero merupakan ilustrasi AI. Foto asli resolusi tinggi, label dan catatan pemeriksaan setiap barang masih dibutuhkan. Tidak ada order/payment, reservasi stok, provider, customer account atau data produksi yang ditulis.

## Runtime dan status

LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Temporary HTTPS tunnel untuk review HP tetap bergantung pada PC, server dan proses tunnel online. Kedua proses dijalankan terpisah dari shell peluncur; tidak ada service, autostart atau DNS produksi baru. URL sementara tidak menjadi domain kanonik di knowledge publik. Source/runtime COYABAG dan produksi lain tidak berubah; belum BUSINESS_READY.

## Keputusan dan tindak lanjut

Scope implementasi strategi dikonfirmasi Andreas; sign-off visual revisi 03 dan iPhone fisik masih OPEN. Berikutnya review visual dan aset/data nyata, lalu adaptasi katalog/admin/integrasi commerce COYABAG sebagai pekerjaan terpisah. Payment, shipping, buyback, konsinyasi dan printing belum diaktifkan.
