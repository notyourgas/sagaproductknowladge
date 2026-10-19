# Jersey Jago — Client Visual Prototype

## Tujuan dokumen

Mencatat scope dan bukti prototype visual client Jersey Jago dalam layanan SagaDevs, tanpa menyamakannya dengan toko produksi atau perubahan COYABAG.

## Konteks dan status bukti

Tanggal: 20 Oktober 2026. Klasifikasi: CONFIRMED berdasarkan arahan Andreas, source commit lokal `9e68ebd0e8824ac85bb3d0349e958b6e75371736`, build dan pemeriksaan browser pada prototype yang sama. Source ini terpisah dari source/runtime COYABAG dan website marketing SagaDevs. Source client belum dipush ke repository remote; hash lokal tidak diklaim dapat diakses publik.

## Ringkasan

Prototype storefront jersey untuk review visual: streetwear minimalis, ivory/ink/emas matte, Plus Jakarta Sans untuk interface dan Anton untuk headline. Pilihan emas menggantikan lime sesuai arahan Andreas. Ini arah prototype, bukan persetujuan final desain atau penawaran komersial.

## Fitur dan alur yang diperiksa

Beranda editorial, katalog empat contoh ready dan dua sold, filter klub/ketersediaan, pencarian dan empty state, detail produk, zoom foto, menu mobile, wishlist dan bag simulasi per sesi. Filter Chelsea menampilkan dua contoh ready, pencarian tanpa kecocokan menampilkan empty state, bag menolak duplikasi SKU satuan dan barang sold.

## Source dan runtime

Build static menghasilkan delapan berkas yang diizinkan server. Pemeriksaan Node terfokus 3/3 PASS untuk filter, bag dan batas file statis. Browser desktop dan viewport mobile 390px diperiksa; pada viewport tersebut tidak ditemukan overflow horizontal. Halaman, foto dan font berhasil diakses melalui temporary tunnel HTTPS, tanpa error console pada pemeriksaan yang dilakukan. Endpoint konfigurasi/source/log yang diuji mengembalikan 404. Ini bukan audit keamanan menyeluruh atau acceptance perangkat fisik.

## Data dan aset

Seluruh harga, ukuran, kondisi dan stok adalah contoh. Foto katalog berasal dari screenshot referensi yang disediakan untuk prototype; hero adalah ilustrasi AI. Foto asli resolusi tinggi dan data produk aktual masih perlu disiapkan. Tidak ada order, pembayaran, reservasi stok, provider, customer account atau data produksi yang ditulis.

## Status saat ini

LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED. Belum toko production, belum implementasi commerce client dan belum BUSINESS_READY. URL tunnel bersifat sementara dan hanya disampaikan melalui task review; tidak dijadikan domain produksi atau tautan kanonik di knowledge publik. Preview bergantung pada proses lokal dan komputer tetap online. Source/runtime COYABAG tidak berubah.

## Keputusan dan next action

Andreas mereview visual melalui HP; persetujuan desain belum diberikan. Setelah koreksi visual, tentukan aset asli dan model stok, lalu adaptasi kontrak katalog/admin/integrasi COYABAG secara terpisah. Scope saat ini tidak mengaktifkan pembayaran, pengiriman, buyback, konsinyasi, atau printing.
