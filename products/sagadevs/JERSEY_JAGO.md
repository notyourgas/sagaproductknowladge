# Jersey Jago — Client Visual Prototype

## 2026-10-20 - Koreksi susunan Latest Drop

Koreksi Andreas 20 Oktober: bagian Latest Obsessions dikembalikan ke The Latest Drop dengan grid sejajar, empat kolom desktop dan dua kolom mobile. Hero, quick look dan detail produk revisi 02 tetap. Build dan browser delta desktop/390px PASS; delapan hash aset publik cocok. Empat tes baseline revisi 02 tidak diulang untuk perubahan tampilan ini. Produksi tidak berubah; review visual tetap OPEN.

## Tujuan dokumen

Mencatat prototype visual client Jersey Jago dan batas buktinya dalam layanan SagaDevs.

## Konteks dan status bukti

20 Oktober 2026. CONFIRMED: atas arahan Andreas, source lokal `7ebdb7a28d262a5d44e65d65e6871428f300fc57` merevisi prototype client ke versi 02. Source terpisah dari COYABAG dan marketing SagaDevs; belum dipush ke source remote. Hash lokal bukan tautan repository publik.

## Arah visual revisi 02

Streetwear minimalis dengan komposisi editorial lebih eksperimental: headline bertumpuk, foto rail offset, stempel emas, culture strip bergerak, katalog sejajar, baris klub dan wordmark footer miring. Palette ivory/ink/emas dan Plus Jakarta Sans/Anton dipertahankan. Font sekarang memakai WOFF2 yang sesuai; Jakarta Sans variable mendukung bobot bold. Preferensi reduced motion mematikan animasi.

## Detail produk dan alur

Hierarki visual mengikuti halaman detail Steal My Jersey yang diperiksa: foto besar di kiri, judul sans-serif tebal, harga, kondisi tersegmentasi, aksi utama, facts, pengukuran flat dan accordion. Katalog memiliki quick look yang membuka full details. Galeri depan/crop, zoom, wishlist dan bag simulasi tersedia. Mobile mempunyai aksi bag tetap; state SKU tersinkron di quick look/detail/tombol mobile. Skip-to-content mempertahankan halaman produk.

## Validasi

Build statis delapan berkas; empat tes Node PASS untuk filter, SKU satuan, allowlist server dan format font. Browser desktop, 390px dan beranda 320px diperiksa tanpa overflow horizontal yang teramati. Quick look, full details, galeri, zoom, accordion, menu mobile, empty search, sold serta bag diperiksa. Grade 8.5 menampilkan setengah segmen. Delapan hash berkas publik cocok manifest; tiga path privat/source/config yang diuji mengembalikan 404. Tidak ada error console teramati. Ini pemeriksaan terfokus, bukan audit keamanan menyeluruh atau acceptance perangkat fisik.

## Data dan aset

Empat ready dan dua sold merupakan contoh. Harga, ukuran, kondisi dan ketersediaan adalah data ilustratif. Foto produk berasal dari screenshot yang diberikan; galeri menampilkan depan dan crop dari foto yang sama, bukan foto belakang/label yang dikarang. Hero merupakan ilustrasi AI. Foto asli resolusi tinggi, label dan catatan pemeriksaan setiap barang masih dibutuhkan. Tidak ada order/payment, reservasi stok, provider, customer account atau data produksi yang ditulis.

## Runtime dan status

LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Temporary HTTPS tunnel untuk review HP tetap bergantung pada PC, server dan proses tunnel online. Kedua proses dijalankan terpisah dari shell peluncur; tidak ada service, autostart atau DNS produksi baru. URL sementara tidak menjadi domain kanonik di knowledge publik. Source/runtime COYABAG dan produksi lain tidak berubah; belum BUSINESS_READY.

## Keputusan dan tindak lanjut

Scope revisi dikonfirmasi Andreas; sign-off hasil revisi 02 masih OPEN. Berikutnya review visual dan aset/data nyata, lalu adaptasi katalog/admin/integrasi commerce COYABAG sebagai pekerjaan terpisah. Payment, shipping, buyback, konsinyasi dan printing belum diaktifkan.
