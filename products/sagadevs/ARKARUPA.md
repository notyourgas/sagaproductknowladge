# Arkarupa Dashboard — prototype kontraktor

## Tujuan dokumen

Mencatat workflow dan status proyek klien yang dikerjakan melalui SagaDevs. Arkarupa merupakan aplikasi terpisah dari website marketing dan produk keuangan Saga. Entri ini bukan pengumuman harga, produk SaaS baru atau studi kasus klien yang sudah menyetujui publikasi.

## Konteks dan status bukti

Pembaruan penutupan 14 Oktober: `CONFIRMED`, runner QA `7628b26b84d65e35c26065b4ea4e6aeac1b2a415`, dokumentasi pemulihan `f2ff71a018916a00a3d31c60c14fe41c5342ef7c`. Workspace QA dan snapshot terenkripsi kini tersedia pada drive terpisah; snapshot utama benar-benar direstore ke database disposable lalu fixture dikembalikan. Row/file checksum, laporan dan relasi/izin RAP cocok. Source bundle histori lengkap telah dipulihkan dengan exact source dan integritas Git cocok. Regresi penuh terbaru **69 tes / 881 assertions PASS**, 84,48 detik; 17 file aplikasi identik dengan rilis aktif. Database aktif masih pada drive sistem yang sempit; backup drive lain masih satu komputer, bukan offsite/host baru. Demo utama tidak direset dan fingerprint 57 tabel bisnis tetap. Tidak ada browser UAT/deployment publik baru.

`CONFIRMED`; diperiksa 14 Oktober 2026 berdasarkan source lokal dan runtime demo. Source aplikasi `a3c255e694fe993fbb8ce9457c89ff6e9afa73e8`; source startup/paket UAT `85eb82d41453c303929ea04135522120f349aba0`. Source memiliki commit lokal, belum memiliki remote proyek yang terverifikasi. Tidak ada klaim SOURCE_PUSHED.

Rilis lokal 13 Oktober memiliki authenticated functional smoke berbasis DOM. Pada 14 Oktober, database dan server demo yang berhenti dilanjutkan; login HTTP 200, 17 file aplikasi cocok artifact dan fingerprint 57 tabel bisnis sama dengan checkpoint. Tidak ada seed, reset atau koreksi data existing. Ini pemeriksaan restart/HTTP/file/data; bukan authenticated browser acceptance baru.

## Masalah dan workflow

Estimator menyusun biaya per ruangan dengan input volume, bahan, tukang, jasa dan alat. Satu pekerjaan merupakan satu target fisik; komponen biaya tidak menjadi pekerjaan fisik ganda. Alur: survei → RAP per ruangan → penawaran → lingkup disepakati → baseline/PIC/jadwal → progres terverifikasi dan barang datang.

Penawaran klien terpisah dari biaya internal. Snapshot ruangan/pekerjaan dari lingkup disepakati mengikuti kontrak, baseline dan perubahan lingkup. Laporan pending tidak menaikkan progres resmi. Progres berbobot nilai kontrak net; kelebihan volume tetap tercatat tetapi indikator dibatasi 100%.

## Fitur lokal

- Form laporan singkat berdasarkan ruangan/pekerjaan; detail tenaga, alat, cuaca dan kendala tersedia bila diperlukan.
- Riwayat barang datang: baik, rusak, ditolak, tujuan ruangan/area bersama, penerima, bukti dan foto privat. Barang datang tidak sama dengan volume terpasang.
- Retur/penggantian tertaut sumber asal; penerimaan/retry tidak menggandakan biaya. Baris historis nol diringkas dan tetap dapat dibuka.
- Satuan bahan manual dapat dikonversi secara eksplisit ke katalog; catatan konversi wajib dan harga master tidak berubah otomatis.
- SPK pekerjaan campuran dibatasi komponen jasa terpilih; opname tetap memakai alokasi biaya existing.
- VO/revisi baseline mempertahankan snapshot historis dan tanggal efektif.
- Pesan validasi berbahasa Indonesia, fokus field terkait dan retensi input pada kegagalan/offline.
- Playfair Display dan Plus Jakarta Sans, navigasi monokrom, angka positif hijau/negatif merah serta reduced motion.

Stack: Laravel/Filament, PHP dan MySQL lokal. Akun dan akses tetap berbasis peran/proyek. Tidak ada layanan publik yang diaktifkan oleh penutupan ini.

## Validasi dan batas

Histori 13 Oktober: suite penuh 69 tes/872 assertions pada kandidat sebelumnya; focused follow-up 18 tes/173 assertions pada delta legacy/tanggal. Pada 14 Oktober suite penuh terkini 69/881 lulus pada workspace drive terpisah dengan file aplikasi sama; snapshot terenkripsi/disposable restore terbaru juga lulus. Migrasi forward/retry, concurrency dan aturan scope memiliki bukti milestone privat yang dipakai sesuai inputnya. Durasi pengujian bukan SLA.

Bukti browser terdahulu mencakup DOM, popup, keyboard, offline dan reflow CSS 320. Screenshot capture gagal; zoom manual Chrome dan ponsel nyata belum diterima. Koneksi browser saat pemeriksaan 14 Oktober tidak menyediakan tab lokal. Agent tidak mengisi sign-off manusia.

Status: `LOCAL_DEPLOYED` untuk kode aplikasi; restart lokal terverifikasi secara HTTP/file/data. `HUMAN_UAT_PENDING`, `NOT_BUSINESS_READY`. Public preview dan production belum aktif. Harga supplier, produktivitas, pajak, data proyek nyata dan persetujuan komersial belum divalidasi untuk operasional.

## Finalisasi dan keputusan terbuka

`NEEDS CONFIRMATION`: UAT estimator/pelaksana/reviewer dengan 12 skenario dan hasil nyata; review QS/PM atas mapping ruangan/PIC dan tujuan penerimaan lama; target hosting/domain preview dan masa akses.

`PROPOSAL`: perbaikan berikutnya berasal dari langkah yang berulang membutuhkan bantuan saat UAT. Koreksi tujuan penerimaan lama, bila diperlukan, memakai anotasi append-only, alasan/bukti, aktor/approval dan kontrol konflik; tidak menulis ulang qty/harga/histori. Gudang penuh, import Excel, OCR/AI dan portal klien tetap backlog.

Ruang drive sistem terbatas; relokasi runtime memerlukan snapshot konsisten, restore disposable dan cutover terkontrol. Drive lain tersedia, tetapi pemindahan database hidup belum dilakukan. Startup existing kini memiliki jalur tanpa bootstrap/migrasi/seed; ini bukan installer, deployment publik atau backup otomatis.

## Dampak pada portofolio

Tidak mengubah pricing, paket, trial atau runtime produk Saga lain. Dicatat sebagai proyek klien di bawah SagaDevs; bukan direktori produk independen baru. Registry source marketing SagaDevs tidak boleh dipakai sebagai provenance source Arkarupa. Tidak memuat kredensial, identitas proyek/pelanggan, raw ledger, dump atau lokasi bukti privat.
