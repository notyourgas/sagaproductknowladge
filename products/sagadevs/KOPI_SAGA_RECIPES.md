# Kopi Saga Recipe Book

## Tujuan dokumen

Mencatat prototype resep operasional, provenance rilis dan batas penggunaannya.

## Konteks

Permintaan Andreas pada 25 Oktober 2026 menggunakan PDF SOP sebagai sumber.
Catatan ini berada dalam portofolio website SagaDevs dan tidak menggantikan
kontrak produk SaaS SagaMenu atau database SagaPOS.

## 2026-10-25 - Kopi Saga Recipe Book prototype publik di Cloudflare Pages

CONFIRMED, Andreas meminta website prototype untuk mencari dan memperbesar
resep saat staf meracik. [Kopi Saga Recipe Book](https://kopi-saga-recipe.pages.dev/)
sudah `PUBLIC_PROTOTYPE_VERIFIED` melalui Cloudflare Pages Direct Upload.
29 resep/base dari PDF sumber, termasuk tiga Saga Clouds, memiliki pencarian
nama/bahan, enam kategori, detail, mode bar bertulisan besar, checklist sesi
dan resep tersimpan lokal per browser. UI bergaya buku menu krem/hijau;
ilustrasi original diberi label dan bukan foto/standar plating.

Source commit lokal `c047582042d5acb74fd679f4bce029e1b03300ca`, tanpa klaim
source remote. Deployment `370dd856-5d5b-4e55-aa2b-0695c8fc17b9`; artifact
17 berkas statis. 15 payload publik cocok SHA256, header noindex/CSP dan
empat path source/privat/tidak tersedia ditolak 403/404. Pemeriksaan data,
sintaks, pencarian, filter, hasil kosong/reset, favorit setelah reload,
mode bar/checklist serta viewport HP/desktop PASS pada scope yang diuji.
Tidak ada error console teramati pada browser publik.

Andreas memilih publik tanpa login untuk sementara, menggantikan preferensi
awal khusus staf. Seluruh resep dapat dibaca pengunjung; noindex bukan
kontrol akses. SOP final, takaran/urutan yang belum lengkap, foto aktual,
uji staf pada perangkat fisik dan pembatasan akses tetap OPEN. Gram dan ml
dipertahankan; langkah kosong tidak direka dan Sweet Foam tidak disamakan
dengan Magic Milk Foam. Ini prototype website terpisah dalam portofolio
SagaDevs, bukan aktivasi SagaMenu, SagaPOS, database/HPP, stok atau website
utama Kopi Saga. Tidak ada backend atau checkout. Bukan BUSINESS_READY.
Next: review Andreas/staf, konfirmasi detail SOP, lalu iterasi UI atau akses.
