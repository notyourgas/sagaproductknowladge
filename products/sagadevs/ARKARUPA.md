# Arkarupa Dashboard — prototype kontraktor

## 2026-11-16 - Arkarupa: Penanda tanggapan dan akses dampak VO

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel a35dc00f48b809d952a1c5a68609458fa3de7d99 pada REV-003, UI-05.2 dan UI-09.2 menyamakan lencana revisi yang bisa ditanggapi antara daftar dan detail. Tautan Tinjau dampak revisi memfokuskan judul VO yang sama dan mempertahankan pilihan serta catatan. Chrome 390/1440 membuktikan perubahan pada fixture sintetis. Demo memverifikasi login, batas akses PM dan stylesheet. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Subtotal barang dan fokus setelah hapus nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel acb0336133386c1a2f40f8c9f435019c3f80eb60 pada REV-005, UI-06.1 dan UI-09.2 memperjelas subtotal tiap barang serta mengembalikan fokus ke nama barang terdekat setelah penghapusan di draf. Chrome 390/1440 dan regresi MySQL pada fixture sintetis lulus. Demo memverifikasi tambah dan hapus pada draf yang belum disimpan. Restore disposable lulus. Holsite 26/36. Procurement dan Finance masih perlu mengesahkan format metode bayar dan relasinya ke pembayaran. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Waktu kas dan kembali dari Kurva S

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel df80fd132d30ecbe00db3eaf460806ac77ffb4e1 pada REV-002, UI-05.1 dan UI-09.2 menandai kas yang dibaca saat halaman dibuka. Tautan dari Kurva S memfokuskan ringkasan nilai tanpa mengubah laporan atau filter tagihan. Regresi MySQL 117 tes dan Chrome 390/1440 pada fixture sintetis lulus. Fixture Rp100 juta baseline, Rp40 juta pekerjaan, Rp60 juta sisa dan Rp30 juta kas terverifikasi pada Portal lokal. Demo memverifikasi login, batas akses PM dan stylesheet. Tampilan terisi dibuktikan lokal. Restore disposable lulus. Holsite 26/36. Finance dan PM masih perlu mengesahkan basis nilai pekerjaan dan kas. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas divisi dan pemulihan filter upah

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel edf59a1a145d6018a44ad26424fdee778a4d50a7 pada REV-008, UI-07.2 dan UI-09.2 menonjolkan divisi dan mempertahankan nama serta kode mandor. Tampilkan semua status memulihkan hasil tanpa membuang kata kunci atau urutan. Regresi MySQL dan Chrome 390/1440 pada fixture sintetis lulus. Demo memverifikasi halaman Upah tanpa kewajiban serta stylesheet. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Jumlah versi dan hapus pencarian Document Center

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 5593fc24c42ef41d14d1ce8247314775d92c3f43 pada REV-004, UI-05.3 dan UI-09.2 menonjolkan jumlah hasil dan memberi tindakan Hapus pencarian pada hasil kosong. Filter kategori dan versi dipertahankan serta fokus kembali ke input. Fixture sintetis lokal memverifikasi versi terbit/arsip, checksum pratinjau dan unduhan, serta penolakan setelah akses dicabut. Demo memverifikasi pengalihan ke login, batas akses PM, dan stylesheet. Tampilan terisi diverifikasi lokal karena runtime publik belum memiliki akun Klien sintetis. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Tanggal rekap dan fokus setelah koreksi absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 6dbce305442157424d36b9aba75277a215652436 pada REV-009, UI-07.3 dan UI-09.2 menampilkan tanggal pada rekap dan menahan konteks keyboard setelah koreksi. Fokus kembali ke aksi baris atau filter aktif bila baris hilang dari hasil. MySQL disposable membuktikan revisi v2 dan penugasan tetap, tanpa transaksi upah baru. Demo publik memverifikasi tanggal dan filter pada 390 serta 1.440 px. Koreksi disimpan pada fixture lokal. Restore disposable lulus. Holsite 26/36. Field dan Finance masih menetapkan konversi OH dan kaitannya ke upah. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas invoice dan akses rincian sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 53db5259d10656454783afe991717e08b655c3d8 pada REV-007, UI-07.1 dan UI-09.2 memisahkan nomor, status, dan pihak pada kartu invoice. Rincian sumber kini membuka isi pada kartu dan mempertahankan fokus. Alur dua lebar dibuktikan dengan fixture lokal dan PM sintetis pada demo publik. Uji MySQL memverifikasi saldo parsial dan pembatasan PDF sesuai laporan terbit terbaru. Restore disposable lulus. Holsite 26/36. Aturan milestone dan reschedule menunggu Finance dan PM. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas material dan nama tabel RAP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel f82929f32ec86723cf60783ce8e77f7f8654e769 pada UI-08.2, UI-09.2 dan UI-09.3 menjaga kolom identitas material saat tabel pembelian RAP bergulir di HP. Tabel pekerjaan dan kebutuhan memiliki nama aksesibel berbeda. Kedua nama diverifikasi lokal. Demo publik memverifikasi tabel pembelian terisi pada 390 dan 1.440 px serta gulir di HP. Regresi MySQL menguji konversi unit, pembulatan pembelian, penerimaan dan PDF RAP multipart dengan pembatasan peran serta checksum. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Prioritas review dan fokus baris PDF nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel a7d09fa46a775796cf3ca9a0cead15c5a64b2532 pada REV-006, UI-06.4 dan UI-09.2 menonjolkan jumlah baris yang perlu diperiksa dan menahan fokus pada barang PDF yang baru ditambahkan. Tab mencapai barang berikutnya. Fixture lokal membuktikan verifikasi subtotal, penambahan dua barang tanpa duplikasi, retry dan checksum PDF privat tanpa posting sumber bisnis. Demo publik membuktikan fallback input manual dan stylesheet baru. Pembaca PDF berteks diuji secara lokal. Restore disposable lulus. Holsite 26/36. OCR foto dan retensi menunggu Procurement serta Product. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Nilai kontrak dan kembali ke revisi yang sama

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 2f820aa4b395a5c4c97ee3c7204868501437c426 pada REV-003, UI-05.2 dan UI-09.2 menonjolkan nilai kontrak sesudah pada lembar revisi. Kembali ke daftar memfokuskan tautan VO yang sedang dibaca dan mempertahankan isian tanggapan. Fixture sintetis pada 390 dan 1.440 px membuktikan alur, pemisahan berkas terbit dari lampiran privat, serta penerapan nilai tepat satu kali. Demo publik membuktikan pengalihan ke login, penolakan peran internal dan stylesheet baru. Tampilan terisi dan tanggapan klien diverifikasi lokal. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Hierarki EAC dan perlindungan isian ETC

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 472db15b0238deb18a024924bd7e331bed0319fd pada UI-09.1 dan UI-09.2 memperjelas EAC, status review dan nilai ETC. Mengisi ETC dari komitmen hanya melengkapi kolom kosong dan mempertahankan nilai nol maupun alasan review. Chrome lokal membuktikan alur dengan forecast sintetis yang disetujui. Demo publik diverifikasi dengan akun PM sintetis dan keadaan EAC belum tersedia. Regresi menjaga perhitungan aktual dan komitmen, validasi persetujuan, hak akses serta PDF klien. Pemulihan disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Total draf nota dan fokus barang baru

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel e39a87fbbeebf4cf9acc966f0fa5a4e8996b7211 pada REV-005, UI-06.1 dan UI-09.2 memperjelas total draf nota serta memfokuskan nama barang yang baru ditambahkan. Isian tetap bertahan setelah menambah atau menghapus baris. Fixture sintetis merekonsiliasi subtotal, diskon, pajak, biaya tambahan dan total, tanpa posting stok, biaya atau kas. Regresi mencakup retur dan hak akses lampiran privat. Demo publik memverifikasi fokus barang baru dengan sesi PM sintetis tanpa menyimpan nota. Pemulihan disposable lulus. Holsite 26/36. Metode bayar menunggu Finance dan Procurement. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas tim BUP dan pemulihan filter laporan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel cc2bad08332e7275162367c4dab7d7d5e696be51 pada REV-011, UI-04.2, UI-04.4 dan UI-09.2 menampilkan mandor dan divisi pada metadata kartu BUP serta label Belum tercatat pada laporan tanpa tim. Tindakan Tampilkan semua laporan memulihkan daftar dan fokus Semua setelah filter kosong. Fixture sintetis merekonsiliasi koreksi pada penugasan asal dan progres terverifikasi, dengan laporan menunggu tetap dikecualikan. Regresi Portal membuktikan batas publikasi foto privat dan progres, dan emulasi 320 px membuktikan batas Pelaksana. Demo Laravel https://arkarupa-dashboard.vercel.app/ dan pemulihan disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Subtotal area RAP dan navigasi bukti item

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 50d82b56fbb16c29f5ab6c3540b82faee9653c5c pada UI-08.2 dan UI-09.2 menjelaskan bahwa subtotal per area mencakup alokasi overhead dan cadangan. Rekap menunjukkan biaya langsung, overhead dan cadangan serta tautan dua arah yang memfokuskan judul rekap dan bukti item. Fixture sintetis merekonsiliasi subtotal area dan total RAP. Uji Browser 390/1440 px, sentuhan QS 320 px, batas akses Pelaksana, snapshot dan checksum PDF, serta pemulihan disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY masih terbuka. Demo Laravel https://arkarupa-dashboard.vercel.app/. Demo Pages c6baa67a memerlukan autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status progres dan fokus ringkasan angka proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 969dce263880c95e99318dbbe99f70611693289d pada UI-03.2, UI-03.3 dan UI-09.2 memberi label Belum tersedia pada target dan aktual yang kosong di Workspace. Tautan Ringkasan angka & sumber memfokuskan Posisi proyek di Dashboard. Proyek dan periode tetap dan Back memulihkan Workspace. Browser pada 390/1440 px serta Pelaksana pada 320 px lulus. Regresi terfokus Workspace, sumber progres, PDF privat, batas peran dan pemulihan disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Laravel https://arkarupa-dashboard.vercel.app/. Demo Pages c6baa67a memerlukan autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Periode hasil dan pintasan filter Dashboard

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 71882367cb9c9c7845bf69b294bf1ad61bcf01ef pada UI-01.2, UI-01.4 dan UI-09.2 menampilkan periode efektif Dashboard dan mengembalikan fokus dari status proyek ke filter. Proyek dan tanggal dipertahankan. Ketika rentang tidak valid, hasil menjelaskan penggunaan bulan ini dan input tetap dapat dikoreksi. Uji Chrome mencakup batas Pelaksana, rekonsiliasi saldo dan arus periode, serta tampilan publik 390/1440 px. Regresi terfokus Dashboard serta pemulihan disposable lulus. Holsite 26/36, UAT fisik dan staging privat terbuka. Demo Laravel https://arkarupa-dashboard.vercel.app/. Demo Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Safe area drawer dan fokus pembaca layar

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 2409170eb7e12589f4a0ead7e6dbe78e5c6de181 pada UI-02.2 dan UI-09.2 mengikuti safe area portrait dan landscape pada drawer mobile. Saat menu terbuka, konten latar tidak menerima fokus dan tidak tampil dalam pohon aksesibilitas Chrome. Escape dan Tutup menu mengembalikan konten dan fokus menu. Uji sentuh dan transisi rail 899–900 px menjaga cut-off Workspace. Uji laporan fixture mempertahankan proyeksi enam peran. Regresi lengkap lulus 116 tes dan 2343 asersi. Backup dan pemulihan disposable lulus pada 28 migrasi. Holsite 26/36. Uji perangkat fisik dan staging privat, UAT serta PILOT_READY terbuka. Demo Laravel https://arkarupa-dashboard.vercel.app/ terverifikasi pada 390, 768, dan 1.440 px. Pages c6baa67a masih memerlukan autentikasi Wrangler untuk koreksi penamaan AHSP.

## 2026-11-16 - Arkarupa: Identitas material dan navigasi riwayat penerimaan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 8d07abd75c615c7ee56b1c066248e619402ad9be pada REV-005 dan UI-06.2 memisahkan nama material dan kode pada tabel saldo. Tautan saldo dan riwayat memfokuskan judul. Proyek, cut-off, tujuan dan pencarian tetap saat berpindah. Riwayat menjelaskan bahwa cakupan tanggalnya berbeda dari saldo. Fixture sintetik merekonsiliasi proyeksi stok. Uji publik pada 390 dan 1.440 px mengonfirmasi fokus serta tujuan terpilih memakai akun PM sintetis. Regresi lengkap lulus 116 tes dan 2343 asersi. Pemulihan disposable lulus dan skema tetap 28 migrasi. Holsite 26 dari 36. Audit aksesibilitas lintas modul, perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Demo Laravel https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=barang#stock-cutoff-heading tersedia untuk presentasi. Demo Pages c6baa67a menggunakan penamaan AHSP lama sambil menunggu autentikasi publikasi koreksi.

## 2026-11-16 - Arkarupa: Status kosong dan navigasi penugasan upah

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel e3f0ea31bcb382815a9e57431527374d5add455c pada REV-008 menampilkan panel ketika daftar upah kosong dan menghubungkan Upah Tenaga Kerja dengan Mandor dan divisi. Enter memfokuskan judul dan mempertahankan proyek serta pencarian. Saldo dipisahkan per penugasan. PM tetap mendapat akses baca. Regresi lengkap masih terbuka. Backup dan pemulihan disposable lulus. Holsite 26 dari 36. Perangkat fisik, staging privat, UAT dan PILOT_READY masih terbuka. Demo Laravel aktif pada e3f0ea31bcb382815a9e57431527374d5add455c. PM sintetis lulus panel kosong dan navigasi dua arah pada 390 dan 1440 px. Retensi pencarian upah diuji pada fixture lokal. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai label AHSP lama dan publikasi koreksi menunggu autentikasi Wrangler.

## 2026-11-16 - Arkarupa: Status kosong dan pemulihan filter Gantt

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel f5635a5d2d401895b0fdaa1f5110846ca81f0b1d pada REV-012 memindahkan status kosong ke panel bergaris putus-putus di luar gulir tabel. Tampilkan semua aktivitas mengosongkan filter dan memfokuskan tabel sambil menjaga proyek, baseline, cut-off dan skala. Fixture lokal cocok dengan target baseline dan BUP terverifikasi pada dua cut-off. Emulasi sentuh Pelaksana 320 px lulus dengan gulir tabel setempat dan pembatasan aksi pembuatan jadwal. Regresi lengkap lulus 116 tes dan 2.343 asersi. Backup dan pemulihan disposable lulus untuk 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging privat, UAT dan PILOT_READY masih terbuka. Demo Laravel aktif pada f5635a5d2d401895b0fdaa1f5110846ca81f0b1d. PM sintetis lulus pemulihan filter dan fokus tabel dengan konteks tetap pada 390 dan 1440 px. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai label AHSP lama. Publikasi koreksi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Status dan koreksi dimensi BUP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel e1351f90c271086496a2fde359d76300c902c598 pada REV-001 memperjelas status dimensi belum lengkap dengan garis putus-putus. Setelah input ditolak, Kembali ke isian ukuran memfokuskan kolom pertama dan mempertahankan dimensi lain serta catatan. Perhitungan sintetis 5 × 4 = 20 m² lulus. Pratinjau tidak membuat laporan resmi dan tidak mengubah progres terverifikasi. Pada emulasi sentuh 320 px, Pelaksana melihat form dan hanya PM melihat aksi review yang diizinkan. Regresi lengkap lulus 116 tes dan 2.343 asersi. Backup dan pemulihan disposable lulus untuk 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging privat, UAT dan PILOT_READY masih terbuka. Demo Laravel aktif pada e1351f90c271086496a2fde359d76300c902c598. PM sintetis lulus uji status, fokus koreksi dan perhitungan ulang pada 390 dan 1440 px. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai label AHSP lama. Publikasi koreksi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Waktu rilis dan urutan riwayat Change Log

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 8b747494c38b2a37fc950af99afcba5cbb50ee9e menampilkan tanggal riwayat dengan lencana. Riwayat run berada langsung di bawah judul. Owner membuka Riwayat run atau Ringkasan perubahan awal dengan Enter dan tetap dapat membaca entri lama pada 390 dan 1440 px. Uji ulang dua fixture PDF Windows pada versi sebelumnya lulus 2 tes dan 46 asersi. Renderer dan sumber PDF sama pada kandidat ini. Regresi lengkap pada kandidat lulus 116 tes dan 2.343 asersi. Backup dan pemulihan disposable lulus untuk 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging privat, UAT dan PILOT_READY masih terbuka. Demo Laravel aktif pada 8b747494c38b2a37fc950af99afcba5cbb50ee9e. Hash CSS publik, pengalihan ke login, dan batas akses PM terverifikasi. Tampilan Owner diuji pada fixture lokal. Uji Owner sintetis pada demo publik masih terbuka. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai label AHSP lama. Publikasi koreksi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Status PDF kosong dan pintasan pindah proyek Pustaka

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel bb661dd3c04c6b68b59db1d92e4a57c2ea2f4def memperjelas status PDF kosong dengan panel monokrom bergaris putus-putus. Pintasan Pilih proyek lain memfokuskan pemilih proyek. Pengiriman form membuka Progres pada proyek terpilih. Pada emulasi sentuh 320 px, Pelaksana berpindah proyek sesuai penugasan dan kategori keuangan tetap tersembunyi. Validasi UI dan unduhan PDF Finance lulus. Regresi Windows mencatat dua error saat menghasilkan PDF penawaran pada jalur renderer yang sama dengan kandidat sebelumnya. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada bb661dd3c04c6b68b59db1d92e4a57c2ea2f4def. PM sintetis di demo publik lulus uji PDF kosong dan pindah proyek dengan keyboard pada Chrome 390 dan 1440 px. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai nama lama. Paket koreksi telah lulus uji lokal dan publikasi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Status Menu dan fokus Proyek dari Workspace

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 3f62654f771c1f6505bc8cad6f4d0dd75f053cd6 menyorot Menu saat modul aktif berada di luar Dashboard dan Proyek. Dari Workspace, membuka Menu memfokuskan Proyek pada drawer. Escape mengembalikan fokus ke Menu dengan konteks proyek dan cut-off utuh pada fixture. Emulasi sentuh 320 px dengan animasi normal lulus di dasar halaman. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 3f62654f771c1f6505bc8cad6f4d0dd75f053cd6. PM publik lulus uji indikator Menu dan fokus Proyek dari Workspace pada Chrome 390 dan 768 px. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai nama lama. Paket koreksi telah lulus uji lokal dan publikasi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Form identitas proyek dan pemulihan validasi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel db867d6b2364e0800475803d243c0ec04c602b1a menampilkan formulir Tambah proyek di halaman Proyek untuk Owner. Pesan lokasi tertaut ke kolomnya dan nama tetap terisi saat lokasi dikoreksi. Fixture membuktikan satu proyek, penugasan Owner, satu audit dan navigasi ke Workspace. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada db867d6b2364e0800475803d243c0ec04c602b1a. PM publik lulus uji batas akses pada Chrome 390 dan 1.440 px. Pembuatan proyek oleh Owner teruji pada fixture lokal. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai nama lama. Paket koreksi telah lulus uji lokal dan publikasi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Koreksi nama Rekap dan Master AHSP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 7c7a7c6452e410cccadf8b260d397bceb80f88c5 mengoreksi nama sesuai Andreas. Rekap AHSP menampilkan daftar kode dan pekerjaan. Master AHSP menampilkan koefisien, HSD dan biaya item. Uji fixture sintetis membuka rincian untuk kode yang sama dari hasil pencarian. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 7c7a7c6452e410cccadf8b260d397bceb80f88c5. Judul Rekap dan Master AHSP serta petunjuk detail lulus pada Chrome 390 dan 1.440 px. Demo Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes masih memakai nama lama. Paket koreksi telah lulus uji lokal dan publikasi menunggu autentikasi Wrangler.

## 2026-11-15 - Arkarupa: Jumlah hasil dan pemulihan pencarian proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel bde93886ea75a6dbde5137b15cf030fda1352714 menampilkan jumlah hasil pencarian Proyek sebagai lencana status. Ubah pencarian memfokuskan kolom dan menyeleksi kata kunci lama ketika hasil kosong. Uji 320 px dengan sentuh emulasi membuktikan konteks pencarian kembali dari Workspace. Pencarian nomor proyek mengikuti lingkup penugasan pada fixture yang mewajibkan penugasan. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada bde93886ea75a6dbde5137b15cf030fda1352714. Lencana jumlah hasil dan pemulihan pencarian Proyek lulus pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Status manual dan fokus checklist penutupan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 5fd1abe39b495aaf0d8a036f081547f900c02ac8 membedakan Konfirmasi manual di Workspace dengan garis putus-putus kontras. Enter pada Penutupan memfokuskan judul dan Tab berikutnya mencapai tautan yang menyebut pemeriksaan sumber. Pada fixture, checklist tetap membaca laporan terbuka, saldo Finance dan retensi manual sesuai sumber. Purchasing melihat status manual tanpa kewenangan pengajuan atau saldo Finance. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 5fd1abe39b495aaf0d8a036f081547f900c02ac8. Status dan pintasan checklist Workspace lulus pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Jumlah review dan pintasan BUP menunggu

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 1886177a4f7919c519374b9010998c41761a6a91 menampilkan jumlah antrean dalam lencana kontras di Dashboard Utama. Enter pada tautan Harian membuka BUP dengan filter Menunggu pada proyek tujuan. Pada fixture, jumlah antrean cocok dengan laporan diajukan dan rekap terverifikasi mengecualikan volume yang masih menunggu. PM dapat memverifikasi sesuai izin proyek, sementara Purchasing tidak mendapat tindakan review. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 1886177a4f7919c519374b9010998c41761a6a91. Lencana antrean dan pintasan ke BUP Menunggu lulus pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Pemisah PDF dan pintasan kategori Pustaka

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel fd7c297c35de4f0f4a75baef685254e02db29f80 memisahkan baris PDF Pustaka dengan bingkai dan menambahkan pintasan ke tiap kategori yang diizinkan. Enter memfokuskan judul kategori, dan Tab mencapai unduhan pertama dengan proyek yang sama. Nomor, proyek dan checksum PDF Finance cocok pada fixture. Purchasing mendapat kategori pengadaan sesuai izin. Regresi 116 tes dan 2.343 asersi lulus. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada fd7c297c35de4f0f4a75baef685254e02db29f80. Baris PDF dan navigasi kategori lulus pada Chrome 390 dan 1.440 px. Unduhan PDF demo lulus pada 390 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Status pembaca PDF dan isian manual nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 8c468267e5ecde1515170c6cd24c3765188db561 menampilkan status ketika pembaca PDF belum tersedia dan menyediakan tindakan yang mengarahkan fokus ke Supplier. Fixture draf mempertahankan input, dua PDF asli dan total Rp180.000 dengan nol posting. Pembaca PDF berteks lokal diuji saat diaktifkan. Regresi lengkap belum selesai. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36. Penyedia dan retensi OCR foto, perangkat fisik, staging, UAT, dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 8c468267e5ecde1515170c6cd24c3765188db561. Pesan status dan fokus menuju Supplier terverifikasi pada draf baru di Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Nominal termin dan navigasi balik sertifikasi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 9d93a2516bf350eb0211fa633550936d75e7f3f6 menonjolkan nominal termin internal dan memberi navigasi balik dari sertifikasi ke rencana termin pada proyek yang sama. Fixture kontrak Rp100 juta merekonsiliasi termin Rp30/50/20 juta serta invoice Rp50 juta dengan saldo Rp30 juta setelah alokasi Rp20 juta. PDF sebelum dan sesudah identik, akses PM dan Pelaksana mengikuti peran. Regresi 116 tes dan 2.343 asersi lulus, dengan backup dan restore disposable pada 28 migrasi. Holsite 26 dari 36. Aturan milestone dan reschedule, perangkat fisik, staging, UAT, dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 9d93a2516bf350eb0211fa633550936d75e7f3f6. Kartu termin terisi, nominal 22 px dan navigasi keyboard pada tahap Tagihan terverifikasi pada Chrome 390 serta 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Penanda periode dan navigasi balik Kurva S

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel d93ce221dc60506b01398a8650abd8387544e5cc menonjolkan Periode terakhir di tabel dan memberi tindakan kembali ke judul grafik tanpa mengubah cut-off atau pilihan Bulanan. CSV sebelum dan sesudah identik dan cocok dengan kurva laporan pada cut-off fixture. Pelaksana dapat membaca tabel dan menggunakan navigasi balik, dengan izin ekspor tetap terbatas. Regresi 116 tes dan 2.343 asersi lulus, dengan backup dan restore disposable pada 28 migrasi. Holsite 26 dari 36. Perangkat fisik, ketentuan UAT operasional, staging dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada d93ce221dc60506b01398a8650abd8387544e5cc. Tabel terisi, penanda periode, navigasi balik dan retensi cut-off Bulanan terverifikasi setelah login Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Volume neto dan fokus tutup rekap tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 86bfc82d17086a4c634fef8084457bd0eb107746 memberi volume neto satu baris penuh pada HP dan mengembalikan fokus ke Buka rekap tim saat ditutup. Fixture MySQL merekonsiliasi 4 dikurangi koreksi 1 menjadi 3 m2 di lokasi Struktur serta 6 m2 Finishing. Volume menunggu review dikecualikan. QS dapat kembali dari cut-off tidak valid dengan hak absensi tetap dibatasi. Regresi 116 tes dan 2.343 asersi lulus, dengan backup dan restore disposable pada 28 migrasi. Holsite 26 dari 36. Basis rework, kecukupan pembanding, OH, perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 86bfc82d17086a4c634fef8084457bd0eb107746. Buka dan tutup rekap lewat Enter, stylesheet dan tata letak terverifikasi setelah login Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Lencana koreksi dan fokus reset absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel a03f93ec2dea89c65ceb1abe8e6243ab07b9e9e4 menonjolkan lencana Dikoreksi dan mengembalikan fokus ke Semua setelah hasil filter kosong. Tanggal dan pencarian bertahan pada fixture Chrome. Fixture MySQL merekonsiliasi Izin revisi 2 ke Struktur dan Hadir ke Finishing serta membuktikan Finance bisa menyaring dan membaca tanpa izin koreksi. Regresi lulus 116 tes dan 2.343 asersi. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36 pemeriksaan. Keputusan OH dan upah, uji perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada a03f93ec2dea89c65ceb1abe8e6243ab07b9e9e4. Rute Absensi, filter keyboard, stylesheet dan tata letak terverifikasi setelah login Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Aksi lampiran dan pesan validasi nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 20d608a1f488e613cff3773f569bb95537595019 mengelompokkan aksi Baca dan Unduh pada PDF serta menautkan pesan validasi ke pemilih berkas. Uji fixture Chrome dan Livewire membuktikan penolakan unggahan mempertahankan PDF asli, draf dan izin. Demo publik memuat panel dan aset pada 390 serta 1.440 px. Akun PM sintetis tidak memiliki draf untuk pemeriksaan unggah. Regresi MySQL lulus 116 tes dan 2.343 asersi. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36 pemeriksaan. OCR foto, perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada 20d608a1f488e613cff3773f569bb95537595019. Panel Lampiran privat, stylesheet dan reflow terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Progres dan nama tindakan daftar Proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel da73d970b1ee8f4629028d5d74f93777d5902825 memberi angka progres daftar Proyek ukuran 20 px dan nama aksesibel yang menyebut nama serta nomor proyek pada kedua tautan. Livewire Pelaksana membuktikan pembatasan proyek dan nilai kontrak. Bukti Chrome fixture dan demo publik mencakup 390 serta 1.440 px. Regresi MySQL lulus 116 tes dan 2.343 asersi. Backup dan restore disposable lulus pada 28 migrasi. Holsite 26 dari 36 pemeriksaan. Uji perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo publik Laravel aktif pada da73d970b1ee8f4629028d5d74f93777d5902825. Daftar Proyek, nama tautan dan Enter ke workspace terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi.

## 2026-11-15 - Arkarupa: Rilis saldo stok dan fokus cut-off

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 0cff97e4f719eb778bd6f2944f53f224c705cef3 mempertahankan nama material saat tabel Saldo stok digulir pada HP. Enter pada Kembali ke stok hari ini mengembalikan fokus ke input tanggal. Fixture sintetis merekonsiliasi 60 buah saldo pembuka, 8 buah terpakai, dan 52 buah tersedia pada tanggal hari ini. Tanggal historis hanya memuat kejadian sampai cut-off. Bukti tampilan stok terisi pada Chrome 390 dan 1.440 px berlaku pada sumber stok yang identik. Livewire Finance dan rekonsiliasi saldo lulus pada kandidat. Regresi MySQL lengkap dilacak terpisah. Backup dan restore disposable lulus pada 28 migrasi. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada 0cff97e4f719eb778bd6f2944f53f224c705cef3. Tab Barang datang, stylesheet dan fokus cut-off terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Identitas material dan fokus cut-off stok

CONFIRMED / LOCAL_VALIDATED (browser dan rekonsiliasi). Kandidat Laravel 4ba49406ef3862644cc2c632864f7193bc077e01 mempertahankan nama material saat tabel Saldo stok digulir pada HP. Enter pada Kembali ke stok hari ini mengembalikan fokus ke input tanggal. Fixture sintetis merekonsiliasi 60 buah saldo pembuka, 8 buah terpakai, dan 52 buah tersedia pada tanggal hari ini. Tanggal historis hanya memuat kejadian sampai cut-off. Regresi MySQL penuh dan promosi menunggu. Refresh skema disposable melampaui jendela pengujian. Demo publik Laravel terverifikasi pada f911f2ae731d6580bd051d3271530e090709c9ef. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Hierarki saldo dan aksi unduh invoice

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel f911f2ae731d6580bd051d3271530e090709c9ef membedakan sisa piutang aktif dari rincian invoice dan memberi tautan PDF setinggi 44 px dengan nomor invoice. Enter mengunduh PDF yang sama pada fixture sintetis. Finance dan PM masih perlu menetapkan milestone, tanggal, dan persetujuan penjadwalan ulang REV-007. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada f911f2ae731d6580bd051d3271530e090709c9ef. Halaman Termin & Invoice, stylesheet saldo dan reflow terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Status HSD dan pemulihan pencarian AHSP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b804e43c8ef9e1624d323cff283036fcc3dbb7f7 menonjolkan peringatan harga satuan belum lengkap pada Rekap AHSP. Hapus pencarian memulihkan daftar, fokus dan rekap terpilih. Uji sintetis memeriksa HSD yang hilang, satuan berbeda, harga lengkap dan referensi tanpa koefisien. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada b804e43c8ef9e1624d323cff283036fcc3dbb7f7. Pemulihan fokus pencarian AHSP dan stylesheet peringatan terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Status checklist dan fokus pencarian dokumen

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 45cb6682704b0b260bf3b399790482cd95da1913 meningkatkan kontras status Perlu ditinjau pada checklist penutupan Workspace. Hapus pencarian mengembalikan keyboard ke kolom pencarian pada Workspace dan Dashboard. Uji sintetis mempertahankan tautan PO, checksum PDF dan pembatasan RAP internal. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada 45cb6682704b0b260bf3b399790482cd95da1913. Status checklist dan pemulihan fokus pencarian Workspace terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Cut-off dan pemulihan filter Dashboard

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 9e4ee014320461f3516f88bbe52dc11bf7888183 memperjelas cut-off pada tabel progres Dashboard dan mengaitkan pesan penolakan rentang ke kolom tanggal. Keyboard dapat membuka pesan lalu menuju kolom. Proyek dan periode dibawa ke Workspace pada dua fixture sintetis, dan reset periode menyimpan konteks proyek. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada 9e4ee014320461f3516f88bbe52dc11bf7888183. Tampilan cut-off dan pemulihan filter tanggal Dashboard terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Fokus menu aktif di rail dan drawer

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel d90bd738e8c2bb472c6f4506bcaad00fbadbeff8 menjelaskan posisi fokus pada menu aktif di rail dan drawer. Tombol Menu pada dock mengarahkan fokus ke halaman aktif saat drawer terbuka, dan Escape mengembalikannya ke tombol Menu. Uji sintetis membuktikan dua konteks proyek, batas menu untuk Pelaksana, animasi normal dan reduced motion. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-02.2 dan UI-09.2 belum tuntas. Uji Android dan iPhone fisik masih terbuka. Demo publik Laravel aktif pada d90bd738e8c2bb472c6f4506bcaad00fbadbeff8. Fokus menu aktif Keuangan terverifikasi setelah login pada Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Hierarki saldo dan validasi tanggal upah

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 5d322516d46f2c4aeac4210b561286059082656a memperjelas urutan label dan nominal saldo Upah pada HP dan desktop. Kolom Jatuh tempo mengaitkan petunjuk dan pesan server serta mempertahankan input ketika pengajuan ditolak. Uji sintetis mencakup akses Finance/PM, keyboard, pohon aksesibilitas Chrome dan rekonsiliasi tanpa posting baru. Regresi lulus 116 tes dan 2.343 assertion. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-09.2 parsial. Demo publik Laravel aktif pada 5d322516d46f2c4aeac4210b561286059082656a. Tata letak saldo, kondisi kosong dan petunjuk dialog Finance terverifikasi pada Chrome 390 dan 1.440 px. Penolakan tanggal diperiksa pada fixture lokal terisi. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi upah dan fokus hasil pencarian

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel da3da0a16ddca00311f668f0be4657002f3e1928 menonjolkan aksi pembayaran kewajiban terbuka dan memindah fokus ke status hasil saat Enter ditekan di kolom cari Upah. Uji sintetis meliputi keyboard, pemisahan proyek dan rekonsiliasi kewajiban antardivisi. Validasi jatuh tempo masih dalam penelusuran dialog. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-09.2 parsial. Demo publik Laravel aktif pada da3da0a16ddca00311f668f0be4657002f3e1928. Halaman Upah dan keadaan data demo terverifikasi pada Chrome 390 dan 1.440 px. Bukti tombol dan fokus pencarian memakai fixture lokal. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi absensi dan bantuan cut-off tim

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 74a44d00a0c33e019a1b0b8e31dfd34329a382f7 menonjolkan kontrol Catat kehadiran dan menghubungkan pesan cut-off yang ditolak dengan kolom tanggal di Rekap tim. Uji sintetis meliputi keyboard, batas akses peran, dan rekonsiliasi absensi antardivisi. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-09.2 parsial. Demo publik Laravel aktif pada 74a44d00a0c33e019a1b0b8e31dfd34329a382f7. Pesan cut-off dan pemulihan tanggal Rekap tim terverifikasi pada Chrome 390 dan 1.440 px. Status penugasan absensi mengikuti fixture demo. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi PDF dan fokus Pustaka laporan

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel dafab91ff2abb178049682bffa971b1cfbc618a4 membedakan nomor dokumen dari aksi Unduh PDF serta memfokuskan Progres proyek ketika pilihan proyek diterapkan. Uji sintetis meliputi fokus, pembatasan peran, integritas PDF PO, dan rekonsiliasi stok. Holsite tercatat 26 dari 36 pemeriksaan dengan UI-09.2 parsial. Demo publik Laravel aktif pada dafab91ff2abb178049682bffa971b1cfbc618a4. Fokus hasil dan status kosong Pustaka terverifikasi pada Chrome 390 dan 1.440 px. Unduh PDF PO diverifikasi pada fixture lokal. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi Katalog dan pemulihan filter

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel a378bc31440ee41470d98f4aca86c5e9c2518798 membuat Detail / Histori Katalog menjadi tombol setinggi 44 px dan mengembalikan fokus ke kolom Cari resource saat filter direset. Uji sintetis mencakup akses PDF RAP, data harga dan reflow. Holsite mencatat 26 dari 36 pemeriksaan. UI-09.3 lulus pada 84 kombinasi halaman dan lebar/zoom, termasuk pemeriksaan reduced motion. UI-09.2 masih parsial. Demo publik Laravel aktif pada a378bc31440ee41470d98f4aca86c5e9c2518798. Aksi dan pemulihan filter Katalog terverifikasi melalui Chrome pada 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi Workspace, tabel PO dan validasi Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 158d2e64e145b64cc82bdc805e9d624bb123c611 membedakan aksi utama Workspace, membuat tabel PO bisa difokuskan dan digulir dengan keyboard, serta mengaitkan pesan validasi Portal dengan kolomnya. Uji sintetis mencakup akses PDF, validasi Portal dan rekonsiliasi PO dengan saldo stok. Holsite tercatat 25 dari 36 pemeriksaan, dengan UI-09.2 parsial. Demo publik Laravel aktif pada 158d2e64e145b64cc82bdc805e9d624bb123c611. Aksi Workspace, validasi Portal dan tabel PO terverifikasi melalui Chrome pada 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Aksi BUP dan umpan balik Forecast

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel c74c42c14fd56663c17ea423e93d9a98a25db82a meningkatkan ukuran aksi Laporan baru menjadi 44 px dan mengembalikan fokus setelah dialog BUP ditutup. Pesan seperti syarat RAP tampil sebagai teks di dialog Forecast. Pesan yang memiliki kolom tetap mendukung Enter. Uji sintetis mencakup verifikasi akses dan integritas draf. Holsite tercatat 25 dari 36 pemeriksaan, dengan UI-09.2 parsial. Demo publik Laravel aktif pada c74c42c14fd56663c17ea423e93d9a98a25db82a. Aksi BUP dan dialog Forecast terverifikasi melalui Chrome pada 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Fokus dan pesan kesalahan nota

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel e3b27daed3e8cd7224c97d47baec3f4c0082a103 menampilkan ringkasan kesalahan di draf nota dan menghubungkan pesan harga serta penyesuaian ke kolom. Aksi ringkasan minimal 44 px, dan Enter memindahkan fokus ke kolom yang salah. Uji browser juga memeriksa fokus ringkasan di dalam dialog Forecast serta pemisahan izin. Cakupan Holsite 25 dari 36 pemeriksaan. UI-09.2 parsial dengan audit aksesibilitas lintas modul masih terbuka. Demo publik Laravel aktif pada e3b27daed3e8cd7224c97d47baec3f4c0082a103. Login dan asosiasi kolom serta fokus keyboard di Pengadaan lulus di Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Pulihkan draf BUP dan Forecast

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel d7496038cfe9be77aa403ee33de9224a67698f85 membedakan status simpan draf BUP dan Forecast, menyediakan Simpan ulang teks setelah koneksi kembali, dan memulihkan isian pada sesi browser baru. Uji sintetis membuktikan satu perubahan draf per isian dan pemisahan akses per akun. Uji nota, validasi, konflik, akses dan laporan kosong diulang pada kandidat yang sama. UI-09.1 lulus, 25 dari 36 pemeriksaan terverifikasi. Demo publik Laravel aktif pada d7496038cfe9be77aa403ee33de9224a67698f85. Login dan alur status draf BUP serta Forecast lulus di Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Status form dan pemulihan simpan

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 4d8bedcab37e8e966349f126783e7d06f7ad5f19 menampilkan status simpan dan petunjuk pemulihan di form. Uji sintetis pada draf nota membuktikan isian bertahan saat koneksi putus, pengguna mengirim ulang secara eksplisit, konflik revisi memberi pesan dan jumlah 0 ditolak dekat field. Regresi MySQL mencakup 116 tes dan 2.343 asersi. UI-09.1 parsial, 24 dari 36 pemeriksaan dengan pembuktian lintas modul masih terbuka. Demo publik Laravel aktif pada 4d8bedcab37e8e966349f126783e7d06f7ad5f19. Login dan status form Pengadaan lulus di Chrome 390 dan 1.440 px. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Pustaka laporan per proyek dan peran

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 2718ffcee286d10b6de2f473d749ed3decd7aed7 mengelompokkan Laporan, Master Data dan Pengaturan. Pustaka menggunakan konteks proyek pada URL untuk membuka progres, formulir laporan Portal dan PDF RAP, Penawaran, PO atau Finance sesuai peran. Uji sintetis membuktikan pemulihan pilihan proyek, ruang lingkup formulir dan checksum unduhan. UI-08.3 lulus, 24 dari 36 pemeriksaan. Laravel demo aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Rekapitulasi dan jejak item RAP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b3203158961566e379d7661611f2a412d649fc25 menampilkan subtotal RAP per area dan pintasan dari item ke BUV serta pecah bahan berdasarkan versi yang sedang dilihat. Fixture sintetis merekonsiliasi 10 m3 neto, Rp1.420.000 untuk item, dan total RAP Rp1.620.000. Revisi draf terpisah sementara PDF baseline mempertahankan checksum dan sumber. UI-08.2 lulus, 23 dari 36 pemeriksaan. Laravel demo aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Master dan Rekap AHSP

CONFIRMED. Uji browser dan integrasi AHSP lulus lokal. Regresi penuh masih terbuka. Kandidat Laravel 1b630582eeef80e05f05331c6c1d74861367d434 memberi label satuan, status koefisien dan versi pada Master. Pencarian kode dan kata kunci membuka Rekap AHSP dengan HSD aktif dan sumber per komponen. Referensi dan HSD belum lengkap menahan harga satuan. Fixture Rp142.000 per m3 menghasilkan RAP Rp1.420.000 untuk 10 m3. Perubahan HSD memperbarui Rekap sementara snapshot dan PDF RAP yang disetujui mempertahankan nilainya. UI-08.1 lulus, 22 dari 36 pemeriksaan. Laravel demo aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saldo dan navigasi invoice termin

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel f9f2792aa2afb5954cff4ed413c0578b4b303aa2 memisahkan total invoice, sisa dan jatuh tempo serta memberi navigasi keyboard dua arah antara rencana termin dan daftar invoice. Pengajuan belum menjadi piutang. Chrome dan MySQL sintetis membuktikan invoice Rp50 juta, pembayaran Rp20 juta, saldo Rp30 juta, PDF berdasarkan izin dan penolakan penagihan ganda. UI-07.1 menunggu keputusan milestone, tanggal dan persetujuan reschedule. Matriks Holsite mencatat 21 dari 36 pemeriksaan lulus. Demo Laravel aktif b8ab127 menunggu akun sintetis berwenang untuk promosi. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: pemulihan pembacaan PDF nota

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 6867160c3f735195f591b61140c7e404aae1968f menampilkan panel pemulihan PDF nota dengan identitas lampiran, fokus dan tindakan baca ulang. Chrome HP dan desktop membuktikan pemulihan draf dan hak akses lampiran. Fixture membuktikan dua PDF tetap tersimpan tanpa posting persediaan atau kas saat membaca ulang atau menyimpan draf. UI-06.4 masih terbuka untuk OCR foto. UI-06.2 lulus pada fixture stok, biaya, dua pembayaran dan sisa utang. 21 dari 36 pemeriksaan tercatat. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel demo aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: verifikasi tagihan dan termin Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel e7883d73c05fb40c0c24f96e83908ef81ade4b02 memisahkan jatuh tempo pada kartu tagihan dan menyediakan navigasi dua arah ke rencana termin. Uji sintetis membuktikan rencana 30/50/20, tagihan Rp50 juta, alokasi Rp20 juta, sisa Rp30 juta dan PDF terbit berdasarkan izin. UI-05.4 lulus, 20 dari 36 pemeriksaan. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel demo aktif b8ab127. Rilis menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: keputusan Portal dan verifikasi Document Center

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 3bb6b85d33606086becfa4374e7bb583add4729d memisahkan volume serta nilai item pada lembar revisi dan mengarahkan fokus ke Catatan saat validasi gagal. Uji sintetis membuktikan satu keputusan klien dan satu perubahan baseline setelah verifikasi internal. Enam kategori Document Center, versi, unduhan dan pencabutan akses lulus. UI-05.2 dan UI-05.3 lulus, 19 dari 36 pemeriksaan. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel demo aktif b8ab127. Rilis menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: status dan riwayat review BUP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel f9e3821e0cb446612e33abee6c9e1647a301a10a memisahkan metadata BUP dan memulihkan fokus setelah pengajuan, review serta publikasi. Pelaksana pemilik dan reviewer dapat menelusuri aktor, waktu dan alasan. Foto tetap dibatasi sesuai pemilihan PM. UI-04.4 dan UI-02.4 lulus, 17 dari 36 pemeriksaan. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel demo aktif b8ab127. Rilis menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: legenda Gantt dan cut-off historis

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 00a3ea683815f15bec7563efca5476a8bbbf71d4 memberi legenda Gantt dan tautan dua arah antara Gantt dan Progres resmi pada baseline serta cut-off yang sama. Gantt, Kurva S, tabel, laporan, snapshot Portal dan CSV cocok pada dua cut-off sintetis. UI-04.3 lulus dan matriks proyek mencatat 15 dari 36 pemeriksaan. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel demo aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: daftar proyek padat dan pencarian lokasi

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b32fe22c5acb7ecbe257f449d74d068200e50351 menggunakan tabel proyek desktop dan kartu HP. Pencarian menerima nama, lokasi atau nomor. Nilai kontrak mengikuti izin proyek. Chrome HP/desktop, izin Pelaksana dan regresi MySQL lulus. Change Log Pages https://c6baa67a.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: konteks progres workspace

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 130988cdcae3f5bb95d0955ebcaa476bab3adb75 mempertahankan cut-off, tanggal dan konteks saat berpindah dari Dashboard ke Workspace atau Lapangan. Workspace menyajikan baseline, target dan aktual. Tautan kembali memulihkan filter, scope dan fokus. Chrome HP/desktop, isolasi Portal dan MySQL lulus. Change Log Pages https://2ae56c05.arkarupa-prototype.pages.dev/#/changes terverifikasi. Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: urutan fokus drawer di HP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 026b0acccab735ce2c47d0612ae4c6f77a3cee8d memperbaiki urutan Tab pada drawer HP agar perpindahan fokus hanya memakai kontrol yang terlihat. Chrome dan regresi MySQL 115 tes lulus. Change Log Pages https://b57308d4.arkarupa-prototype.pages.dev/#/changes mencatat irisan Dashboard dan navigasi. Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Matriks UI/UX, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: grafik kas dan navigasi tablet

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b11acb4d2e029659215bdd7be1c48b15d7b78198 menyajikan grafik arus kas dan tabel rincian harian atau bulanan, menampilkan rail mulai 900 px, memulihkan fokus saat layar berubah, dan menyimpan pencarian Proyek pada tautan. Chrome HP–desktop dan MySQL disposable lulus. Runner membuktikan restore 16 migrasi tertunda. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://b57308d4.arkarupa-prototype.pages.dev/#/changes. Laravel aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Matriks UI/UX, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: jatuh tempo dan pemulihan pencarian upah

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 81f0d71f42cdbd371f377a579f92f38700d3031a memisahkan nomor kewajiban dan jatuh tempo. Pada hasil kosong, satu tindakan membersihkan pencarian dan filter serta mengembalikan fokus tanpa mengubah urutan. Chrome HP dan desktop, MySQL disposable dan restore 16 migrasi lulus. Saldo serta alokasi pembayaran per divisi konsisten dengan fixture. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://63514064.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Field dan Finance mengesahkan konversi OH dan kaitan ke upah sebelum UAT. Staging dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: pembacaan divisi dan fokus koreksi absensi

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b19bd635246f1614998231da4711101c3f86b168 menampilkan mandor dan divisi terpisah pada Absensi. Batal koreksi mengembalikan fokus ke tindakan pekerja atau judul Absensi tim bila filter menyembunyikan barisnya. Chrome HP dan desktop, MySQL disposable dan restore 16 migrasi lulus. Pembatalan tidak mengubah status, revisi atau transaksi fixture. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://cf62caab.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Field dan Finance mengesahkan konversi OH dan kaitan ke upah sebelum UAT. Staging dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: tanggal PDF dan fokus isian nota

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 0a0d178ff088e5cb014b15ecbca90fee3ba499f4 membaca tanggal nota PDF berteks dengan akhir baris CRLF dan menampilkan tanggal dalam format Indonesia. Setelah operator menerapkan identitas, fokus menuju kolom tanggal. Tanggal PDF tidak valid mempertahankan nilai sebelumnya. Chrome HP/desktop, MySQL disposable dan restore 16 migrasi lulus tanpa perubahan draf atau transaksi. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://61b9c1a5.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Interpreter PDF perlu diuji di staging. Procurement dan Release Lead menetapkan OCR foto/pindai dan retensi bersama Andreas. UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: identitas PDF dan filter selisih nota

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel f1c4f10ba321a69508ed2e77d221421a5e30b32d menampilkan supplier, nomor dan tanggal dari PDF berteks dalam kartu terpisah. Purchasing bisa menyaring baris yang perlu diperiksa. Peringatan duplikat dan pembacaan ulang lulus pada Chrome HP dan desktop tanpa perubahan draf tersimpan atau transaksi. MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://cb68a924.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi membutuhkan akun demo sintetis berwenang. Interpreter pembacaan PDF perlu disiapkan di staging. Procurement dan Release Lead menunggu keputusan OCR foto/pindai dan retensi sebelum UAT. PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: dampak kontrak dan kembali ke daftar revisi

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel d1c23e9029f496fca7db2ba859dda01fa330a9c2 menampilkan kartu nilai kontrak sebelum, sesudah dan perubahan durasi pada revisi. Tautan kembali mengarahkan fokus ke daftar dan mempertahankan isian draf. Chrome 390/1.440 px, validasi klarifikasi, MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://630bf269.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi membutuhkan akun demo sintetis berwenang. Andreas, PM dan perwakilan klien menetapkan peran penerbit dan pemeriksa keputusan sebelum UAT. Staging dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: metadata dan kategori berkas

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 579b012dfd6f0bb95a6f4077aae8776d060dd0a8 mengelompokkan kode, versi dan waktu terbit per dokumen klien. Filter kategori berpadu dengan pencarian dan status versi di dalam proyek. Laporan tetap tersedia. Chrome 390/1.440 px, pengunduhan PDF arsip, uji MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Pages menerbitkan entri Change Log di https://887868ff.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Delegasi penerbit, izin kategori dan prosedur penarikan menunggu keputusan Owner dan PM sebelum staging/UAT. PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: status pencocokan dan sumber stok

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel a630239da69c9036ec0ea6e45c24f005a5fc1566 menampilkan status kecocokan jumlah barang per baris nota, menyaring baris belum lengkap, dan mengembalikan filter saat berpindah nota. Chrome 390 dan 1.440 px, 115 tes MySQL disposable serta restore 16 migrasi lulus. DEMO_PUBLIC. Di https://a96fc812.arkarupa-prototype.pages.dev/#/renovasi-demo/belanja, tombol Lihat penerimaan menyaring riwayat stok, memusatkan fokus pada referensi sumber, dan menjaga isian draf. Change Log tersedia di https://a96fc812.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Pengadaan dan Finance masih menyepakati pajak, diskon, serta metode bayar untuk UAT nota. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saldo hasil dan urutan upah

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 1c1a0427def9c40e4d0b45790fc5695bf96444af menampilkan subtotal sisa untuk hasil pencarian atau filter status dan mengurutkan kewajiban upah dari saldo terbesar. Pengajuan yang belum disetujui tetap terlihat pada statusnya dan dikeluarkan dari subtotal saldo terbuka. Chrome 390 dan 1440 px, MySQL disposable serta restore 16 migrasi lulus. DEMO_PUBLIC. Di https://7e2ba9b8.arkarupa-prototype.pages.dev/#/renovasi-demo/upah, Pages memiliki subtotal hasil dan pengurutan saldo yang mempertahankan draf input. Change Log tersedia di https://7e2ba9b8.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Field dan Finance masih menyepakati aturan OH serta kaitan absensi dan upah. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: konteks tanggal ukur BUP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 74ac53f7540967eefe4edc87ddcb8c3dcec2710c menampilkan versi baseline dan tanggal ukur, mempertahankan dimensi selama tanggal dikoreksi, serta mengosongkan ukuran saat satuan baru tidak kompatibel. Chrome 390 dan 1440 px, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Di https://2b42f07a.arkarupa-prototype.pages.dev/#/renovasi-demo/bup, Pages menampilkan volume rencana item dan memulihkan tanggal proyek tanpa mengubah ukuran atau catatan. Change Log tersedia di https://2b42f07a.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Field dan QA masih menyiapkan uji ponsel fisik. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: cut-off jadwal dan progres

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b67c73a49a5adebf0cb2612b3f9d33165b24d66f membedakan baseline pada cut-off dan rencana tersimpan serta membuka progres resmi pada proyek dan tanggal yang sama. Chrome 390 dan 1440 px, CSV, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Di https://f7ea9951.arkarupa-prototype.pages.dev/#/renovasi-demo/progres, Pages meninjau tanggal terdahulu pada jadwal aktif dan mengembalikan tanggal terbaru tanpa mengubah data. Change Log tersedia di https://f7ea9951.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. PM dan reviewer masih menetapkan kalender, proyeksi keterlambatan dan format laporan. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saldo dan alokasi pembayaran

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 509962ca8e026de9dc33c816ee2d7b9c3b951246 memperjelas saldo terbuka dan dapat menyalin nominal kas ke satu alokasi. Chrome 390 dan 1440 px, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Di https://c0706466.arkarupa-prototype.pages.dev/#/renovasi-demo/termin, Pages menampilkan sisa tagihan terpilih, mengisi nominal saat diminta dan menolak pembayaran melebihi sisa. Change Log tersedia di https://c0706466.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Finance dan PM masih menetapkan tanggal, milestone, dan prosedur penjadwalan ulang. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: konteks laporan Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel f92a5caf4ed949a54df0eb5fd9b5f80f7f5dfa6c menandai laporan terbaru dan historis, memisahkan cut-off dan waktu terbit, dan mempertahankan filter saat kembali ke laporan terbaru. Chrome 390 dan 1440 px, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Di https://26b62e98.arkarupa-prototype.pages.dev/#/renovasi-demo/portal, Pages menampilkan status laporan dan tombol kembali ke laporan terbaru. Change Log tersedia di https://26b62e98.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Finance dan PM masih perlu mengesahkan basis RAB, cakupan kas dan pembulatan. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saldo dan penelusuran stok

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 64522db540bfc31067d6e6ead61b45991c8f882e menampilkan saldo bersama satuan dan pencarian material pada cut-off. Chrome 390 dan 1440 px, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Di https://d43d3860.arkarupa-prototype.pages.dev/#/renovasi-demo/belanja, Pages menonjolkan stok tersisa dan menyaring penerimaan atau pemakaian tanpa perubahan saldo atau draf input. Change Log tersedia di https://d43d3860.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Keputusan pajak, diskon dan metode bayar nota, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: rincian dan fokus ukuran BUP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 9e8305d5c8e1f15a5597b084d51e5008b349cab1 menampilkan rincian ukuran yang membentuk hasil BUP dan mengarahkan fokus ke kolom yang relevan saat cara ukur diganti. Chrome 390 dan 1440 px, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Pages menampilkan hasil ukuran sebelum pengajuan di https://56eb3038.arkarupa-prototype.pages.dev/#/renovasi-demo/bup. Pengajuan belum terverifikasi tidak mengubah progres. Change Log tersedia di https://56eb3038.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan memerlukan akun demo sintetis berwenang untuk promosi. Uji perangkat fisik, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: alokasi dan pencarian upah

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 1e944f7ab295359bae160d3d4cd014a08fba50f7 memisahkan pembayaran teralokasi, penyesuaian dan sisa upah. Finance dapat mencari mandor, nomor atau divisi di dalam status terpilih. Chrome 390 dan 1440 px, rekonsiliasi upah, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Pages menerbitkan pencarian uraian dan penanda sisa upah pada https://8fb7d7d0.arkarupa-prototype.pages.dev/#/renovasi-demo/upah. Change Log tersedia di https://8fb7d7d0.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Aturan OH dan tautan absensi, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: Kurva S dan tabel periode

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 72aa3dd663d9836cdca767b0cb0d2d5465343eab menandai periode terakhir dengan aktual dan menambahkan Baca tabel periode untuk pengguna keyboard. Chrome 390 dan 1440 px, rekonsiliasi CSV, izin ekspor, regresi MySQL disposable dan restore 16 migrasi lulus. DEMO_PUBLIC. Versi Pages menerbitkan tampilan, pintasan keyboard dan selisih per periode pada https://b7d46ea2.arkarupa-prototype.pages.dev/#/renovasi-demo/progres. Change Log tersedia di https://b7d46ea2.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Dasar proyeksi dan format laporan berkala, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: tinjauan hasil pembacaan PDF nota

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 5ba8ad6f1a77772e79847816f01f2131bbc58c43 memperjelas status baris dan perbandingan subtotal dari PDF berteks. Saat pembacaan gagal, pengguna dapat melanjutkan pengisian draf dengan keyboard. Chrome 390 dan 1440 px, akses lampiran privat, regresi MySQL disposable dan restore 16 migrasi disposable lulus. DEMO_PUBLIC. Change Log tersedia di https://43901b6e.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Dukungan OCR gambar dan retensi, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: pencarian nomor tagihan Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 1645b77f94d9ec7e474b439ea4f432c1a4ffcd7f memisahkan nilai tagihan, pembayaran dan penyesuaian, serta mendukung pencarian nomor tagihan yang sudah dibagikan. Pencarian mempertahankan konteks laporan, hak akses PDF dan saldo. Chrome 390 dan 1440 px serta regresi MySQL disposable lulus. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://fd5098eb.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Keputusan aturan tanggal, milestone dan penjadwalan ulang, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: pencarian pekerja di absensi

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel c03a00410d7e62789104a6cab8e7917522529e4b menonjolkan status absensi aktif dan menambahkan pencarian nama atau kode pekerja dalam proyek berizin serta tanggal yang dipilih. Chrome 390 dan 1440 px dan regresi MySQL disposable lulus. Filter mempertahankan jumlah harian dan rekap lintas modul. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://3e28392d.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Aturan konversi OH dan kaitan upah, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: rekap volume menurut lokasi

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 4f7aea63f81bfbe64df1758001a767596f7815cd menonjolkan volume neto dan koreksi pada rekap internal. PM dapat menyaring berdasarkan lokasi pada cut-off. Koreksi memakai pengelompokan sumber. Chrome 390 dan 1440 px dan regresi MySQL disposable lulus. Fixture dua lokasi menjaga neto 9 m³ dan rincian tim tetap terbatas pada akses internal. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://d861cc21.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Definisi OH, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saldo dan filter upah

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel b67004c66a63368ac35eed21f9837cac9e93f186 menampilkan nilai kewajiban, sisa upah dan status per divisi serta filter untuk Finance. Filter menggunakan saldo dokumen Finance yang sudah disetujui. Chrome 390 dan 1440 px dan regresi MySQL disposable lulus. Pembayaran dua divisi dan biaya asal tetap cocok pada fixture. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://b9fe0080.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Kesepakatan bukti penerima, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: validasi ukuran BUP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 238d2fdc7b5077b82358deb766b7cc7107d7cae7 membedakan dimensi laporan yang belum lengkap, ukuran yang perlu diperiksa, dan hasil sesuai satuan baseline. Pelaksana melihat format angka sebelum simpan dan dapat mengoreksi masukan tanpa kehilangan dimensi lain. Chrome 390 dan 1440 px dan regresi MySQL disposable lulus. Koreksi terverifikasi dan pengulangan tidak menggandakan volume. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://e637eb73.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Validasi ponsel fisik, staging, UAT serta PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: riwayat draf nota pembelian

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 417a579988d8c87b25205aa3b22461013cea5cb5 menyajikan supplier, tanggal, revisi dan total pada kartu draf nota. Tim pengadaan berizin dapat mencari nomor nota atau supplier dan melanjutkan isian editor. Chrome 390 dan 1440 px serta 114 tes MySQL disposable lulus. Regresi penerimaan, stok dan Finance lulus. Backup terenkripsi dan restore lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://c2a5eed9.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Aturan diskon, pajak, dan pembayaran, staging, UAT serta PILOT_READY masih terbuka, sesuai jadwal pilot Andreas.

## 2026-11-15 - Arkarupa: riwayat laporan Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 03cbe330b916ae27d93b3f161a9e0bfce7240d86 membedakan tanggal cut-off dan waktu terbit di riwayat Portal. Klien bisa mencari judul, menghapus pencarian dan langsung membuka laporan dari hasil. Pencarian hanya menyaring daftar proyek yang sedang dibuka. Chrome 390/1440 px, uji MySQL terfokus dan restore VPS dengan 16 migrasi disposable lulus. DEMO_PUBLIC. Change Log tersedia di https://b09dbc18.arkarupa-prototype.pages.dev/#/changes. Laravel aktif b8ab127 dan promosi memerlukan akun demo sintetis berwenang. Basis nilai pekerjaan, cakupan kas, staging, UAT dan PILOT_READY tetap terbuka.

## 2026-11-15 - Arkarupa: status dan tanggapan revisi Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 047e76dcae46ed69df59a143c7938acc7e7a3327 menampilkan status di daftar revisi dan menempatkan pintasan ke formulir pada VO yang masih menerima tanggapan. Status indeks dan lembar memakai snapshot serta tanggapan yang sama. Chrome 390/1440 px dan uji Commercial lulus, termasuk riwayat keputusan, lampiran privat dan penjagaan baseline. Restore VPS lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Change Log tersedia di https://12f0c154.arkarupa-prototype.pages.dev/#/changes. Laravel aktif b8ab127. Promosi memerlukan akun demo sintetis berwenang. Delegasi penerbit, verifikasi UAT, staging dan PILOT_READY terbuka.

## 2026-11-15 - Arkarupa: ringkasan dan filter tagihan Portal

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 7fccd0b918014f61f1e1425bd6cae16b61cd19d1 menampilkan sisa seluruh tagihan yang dibagikan dan filter Belum lunas atau Lunas. Filter mempertahankan laporan historis. Saldo berasal dari alokasi dan penyesuaian Finance, sementara akses PDF tetap mengikuti pembagian pada laporan terbaru. Chrome 390/1440 px, uji MySQL terfokus dan restore VPS dengan 16 migrasi disposable lulus. DEMO_PUBLIC. Change Log Pages tersedia di https://4fea955e.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi menunggu akun demo sintetis berwenang. Jadwal termin bertanggal, milestone, penjadwalan ulang, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: cari berkas di Document Center

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel a168ca8d39aa326a707fb4b00df7e65674bfca36 menampilkan jumlah hasil pada enam kategori dan pencarian judul atau kode berkas dengan filter versi. Hasil dibatasi menurut proyek, daftar laporan tetap tersedia, dan PDF versi lama dapat diunduh oleh klien yang masih memiliki akses. Chrome 390 dan 1440 px serta uji MySQL terfokus lulus. Restore VPS lulus untuk 16 migrasi disposable. DEMO_PUBLIC. Change Log Pages tersedia di https://f81a98ef.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127, promosi menunggu akun demo sintetis berwenang. Delegasi penerbit, hak kategori, penarikan dokumen, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: filter versi Document Center

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 01c8302c1b037c9e8543846cb497d5d376c3a095 menampilkan kartu aktif dan arsip yang mudah dibedakan dan filter untuk membaca versi aktif atau terdahulu. Laporan proyek tetap tersedia. Chrome 390 dan 1440 px membuktikan pratinjau PDF aktif dan unduh PDF lama dengan filter. Uji MySQL memeriksa isolasi proyek dan pencabutan akses. Restore VPS lulus untuk 16 migrasi disposable. DEMO_PUBLIC. Change Log Pages v1.2 tersedia di https://11ce5a21.arkarupa-prototype.pages.dev/#/changes. Laravel aktif b8ab127. Promosi menunggu akun demo sintetis berwenang. Delegasi penerbit, hak kategori, penarikan dokumen, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: ekspor progres per periode

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 6a073aeb637b753e983ffe4df404bf65e3ceadd7 menandai selisih negatif di tabel progres dan menyediakan CSV internal mingguan atau bulanan dari halaman yang sedang dibaca. Ekspor memuat versi baseline dan mempertahankan aktual mendatang kosong. Chrome 390/1440 px dan empat tes terfokus MySQL lulus, termasuk kesesuaian isi CSV, perpindahan riwayat dan pembatasan peran. DEMO_PUBLIC. Change Log Pages v1.2 tayang di https://5a56af81.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi masih menunggu akun demo sintetis berwenang. Proyeksi penyelesaian, format laporan berkala, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: progres Gantt pada tanggal pilihan

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 640843055a2b86409648712c1ebf32c588efdd3b menampilkan aktual, rencana, selisih, dan peringatan Gantt pada cut-off yang dipilih. Ringkasan memakai baseline yang berlaku pada tanggal tersebut dan sumber yang sama dengan Progres Resmi serta Kurva S laporan terbit. Chrome 390/1440 px memverifikasi pemulihan tanggal dengan keyboard. Restore VPS lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Pages v1.2 menayangkan Change Log pada https://74672768.arkarupa-prototype.pages.dev/#/changes. Demo Laravel masih b8ab127 dan promosi menunggu akun demo sintetis berwenang. Proyeksi penyelesaian, format laporan berkala, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: sumber volume dan absensi per tim

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel fea161f639c4965755d78c7a808f385fa5aa9aa4 menyandingkan volume BUP kumulatif dengan jumlah catatan hadir, izin, sakit, dan alpa per penugasan pada tanggal cut-off. Pintasan membawa pengguna berizin ke proyek dan tanggal yang sama. Chrome 390/1440 px serta 113 tes MySQL dengan 2.052 asersi lulus. Restore VPS lulus dengan 16 migrasi disposable. DEMO_PUBLIC. Pages v1.2 menampilkan Change Log di https://35934a96.arkarupa-prototype.pages.dev/#/changes. Demo Laravel aktif b8ab127 dan promosi menunggu akses akun demo sintetis berwenang. Definisi OH, kaitan upah, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: rekap volume terverifikasi per tim

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel e526c206bf542ed42c1a3656e831caacb0a30811 menampilkan volume BUP awal, koreksi dan neto per tim, pekerjaan, lokasi dan satuan pada cut-off. Hanya peran internal berizin yang dapat membuka rekap. Chrome 390/1440 px dan 113 tes MySQL dengan 2.038 asersi lulus. Restore VPS membuktikan 61 tabel bisnis, 10 berkas dan 16 migrasi pada salinan disposable. DEMO_PUBLIC. Pages v1.2 menampilkan Change Log pada https://160a49b9.arkarupa-prototype.pages.dev/#/changes. Laravel publik masih b8ab127 karena promosi memerlukan akun demo sintetis yang berwenang. OH, staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: koreksi status absensi dengan jejak audit

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 1ba76f59a227058b9e09d7b6c93e9c30a63a0add memberi Owner dan PM koreksi status absensi dengan alasan, penanda revisi dan audit sebelum–sesudah. Validasi menolak konflik revisi dan menjaga identitas pekerja, tanggal dan penugasan. Chrome 390/1440 px dan 113 tes MySQL dengan 2.029 asersi lulus. Restore VPS mencocokkan 61 tabel bisnis, 10 berkas dan 16 migrasi pada salinan disposable. Demo Laravel masih b8ab127 karena verifikasi rilis memerlukan login akun demo sintetis yang berwenang. DEMO_PUBLIC. Entri koreksi tersedia pada Pages v1.2 di https://arkarupa-prototype.pages.dev/#/changes. Definisi OH, staging privat, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: saring daftar absensi dan rapikan tampilan HP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel c946411 menampilkan daftar absensi sebagai kartu pada HP dan tabel pada desktop. Filter status bertahan setelah reload dan menyediakan pemulihan hasil kosong. Chrome 390 dan 1440 px serta 112 tes MySQL dengan 2.011 asersi lulus. Paket 7b73156 lulus restore VPS dan 15 migrasi disposable, termasuk uji pointer atomik terisolasi. Promosi aktual menunggu akses ke akun demo sintetis untuk verifikasi login. Laravel aktif b8ab127. DEMO_PUBLIC. Catatan perubahan tersedia di https://arkarupa-prototype.pages.dev/#/changes. Staging privat, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: catat absensi tim per proyek

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel 39fa6e3625af3660e0e6fdce4bbb70457a2e9ece menampilkan empat status absensi per hari dan menyimpan kode pekerja, mandor serta divisi. Pelaksana dapat mencatat, Finance dapat membaca. Chrome 390 dan 1440 px serta 112 tes MySQL dengan 2.005 asersi lulus. Perhitungan OH dan alokasi upah menunggu definisi penerimaan. Runner menuntaskan latihan VPS pada salinan disposable dengan 15 migrasi baru serta pemeriksaan backup terenkripsi terhadap 61 tabel bisnis dan 10 berkas. Runtime Laravel publik masih b8ab127 dengan promosi dan rollback kode terbuka. DEMO_PUBLIC. Change Log Pages v1.2 menyertakan catatan REV-009 pada https://arkarupa-prototype.pages.dev/#/changes. Staging privat, UAT dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: rilis demo v1.2 dan hubungkan tim BUP

CONFIRMED / DEMO_PUBLIC. Cloudflare Pages v1.2 menggunakan source 520903df dan deployment 931bd5a2-0dc0-4511-856f-c0e2f2db0630. Empat KPI portofolio, dock HP dan 58 entri kandidat tambahan tersedia pada https://arkarupa-prototype.pages.dev/ dan https://arkarupa-prototype.pages.dev/#/changes. Chrome 320, 390 dan 1440 px serta checksum aset lulus. LOCAL_VALIDATED. Kandidat Laravel b5cacccae65ac159d2058337ad6f0b2c289a63d5 mencatat mandor dan divisi pada BUP internal. Koreksi mengikuti penugasan laporan asal. Chrome 390/1440 px dan 111 tes MySQL dengan 1.984 asersi lulus. Upgrade 14 migrasi pada restore sintetis berhasil, sedangkan upgrade demo Laravel membutuhkan runner VPS untuk instance existing. Staging privat, UAT klien dan PILOT_READY masih terbuka.

## 2026-11-15 - Arkarupa: kaitkan kewajiban upah ke mandor dan divisi

CONFIRMED / LOCAL_VALIDATED. Kandidat d52c88450e43c3a281b37a3db0d8595e62db933e memungkinkan Finance memilih penugasan mandor saat mengajukan kewajiban dari biaya terverifikasi. Kartu upah dan pemilih pembayaran menunjukkan divisi. Chrome 390 dan 1440 px serta 110 tes MySQL dengan 1.965 asersi lulus, termasuk saldo dua divisi dan pembayaran parsial. Pengaitan BUP, absensi, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-15 - Arkarupa: daftarkan mandor dan divisi per proyek

CONFIRMED / LOCAL_VALIDATED. Kandidat 190e708adece8becfedda9a6f8e061c47a99eeeb menampilkan daftar mandor dan divisi di Keuangan. Finance dapat menambah beberapa divisi untuk satu mandor dengan validasi duplikat dan audit per proyek. Chrome 390 dan 1440 px, 109 tes MySQL dengan 1.940 asersi, serta restore sintetis lulus. Pengaitan sumber upah dan BUP, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-15 - Arkarupa: bagikan rencana termin di Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat edcdc91f28fc8facf805bae7e28e5ec384532ffb menampilkan rencana termin saat PM memilihnya pada laporan. Persentase dan nilai kontrak awal disimpan saat penerbitan, sedangkan akses mengikuti pilihan pada laporan terbaru. Chrome 390 dan 1440 px serta 108 tes MySQL dengan 1.916 asersi lulus. Jadwal bertanggal, pengaitan milestone, penjadwalan ulang, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-15 - Arkarupa: unduh PDF tagihan di Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat 3e7a872e8abc5230a6324597266a33fc2cd97d25 menambahkan unduhan PDF untuk tagihan terposting yang dibagikan pada laporan Portal terbaru. Klien dapat melihat status ketersediaan dan memakai keyboard untuk mengunduh. Chrome 390 dan 1440 px serta 107 tes MySQL dengan 1.889 asersi lulus, termasuk isolasi proyek dan pencabutan akses. Jadwal bertanggal, pengaitan milestone, penjadwalan ulang, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tinjau pembagian termin kontrak

CONFIRMED / LOCAL_VALIDATED. Kandidat 778f2b6327e5df82c8ea46e9074e913615cd17e7 menampilkan persentase dan nominal termin di Keuangan dengan pintasan keyboard ke sertifikasi. Kontrak sintetis Rp100 juta menghasilkan rencana Rp30 juta, Rp50 juta, dan Rp20 juta. Chrome 390 dan 1440 px serta 106 tes MySQL dengan 1.866 asersi lulus. Jadwal bertanggal, pengaitan milestone, reschedule, keluaran Portal, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: konfirmasi kaitan katalog dari PDF nota

CONFIRMED / LOCAL_VALIDATED. Kandidat 2771792350ad3287e5cb3ed3ba5cfd6767850618 menampilkan kandidat katalog ketika nama atau kode material dan satuannya cocok. Operator memilih kaitan saat memasukkan baris ke draf dan dapat melepasnya. Chrome 390 dan 1440 px serta 105 tes MySQL dengan 1.855 asersi lulus. OCR foto dan hasil pindai, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tinjau barang dan nominal PDF nota

CONFIRMED / LOCAL_VALIDATED. Kandidat a6eec6ab4b5e08874775800f4587b867dbcc9180 menampilkan barang dan nominal dari PDF berteks dengan struktur yang dikenali. Operator dapat menambahkan ke draf baris yang subtotalnya cocok dan memeriksa selisih secara manual. Chrome 390 dan 1440 px serta 104 tes MySQL dengan 1.835 asersi lulus. Pencocokan katalog, OCR foto dan pindai, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tinjau identitas dari PDF nota

CONFIRMED / LOCAL_VALIDATED. Kandidat 03ba823d137a4350dcad6dba0a59d61a29666aec membaca identitas dari PDF berteks melalui konfigurasi lokal. Operator meninjau supplier, nomor, tanggal dan kemungkinan duplikat sebelum mengisi draf. Chrome 390 dan 1440 px serta 103 tes MySQL dengan 1.829 asersi lulus. Pembacaan baris, OCR gambar, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: rekonsiliasi nota di Keuangan

CONFIRMED / LOCAL_VALIDATED. Kandidat 857bde8e6a9db103719a60855742bbbbabf4de06 menampilkan kuantitas dan selisih nilai nota terhadap sumber penerimaan. Pengguna berwenang dapat membuka form tagihan dengan satu sumber terisi. Membuka form belum mencatat utang atau kas. Chrome 390 dan 1440 px serta 103 tes MySQL dengan 1.823 asersi lulus. Tagihan gabungan, aturan pajak dan diskon, pembayaran, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: pencocokan barang penerimaan pada nota

CONFIRMED / LOCAL_VALIDATED. Kandidat 8843434f150bc0a66dc4473d5a04839e11eb3016 menyimpan pencocokan tiap baris nota dengan barang baik dari penerimaan tertaut. Kuantitas neto mengikuti retur. Validasi menjaga satuan, kuantitas dan pemakaian tunggal. Chrome 390 dan 1440 px, 102 tes MySQL dengan 1.803 asersi, dan pemulihan dua draf sintetis lulus. Penerbitan tagihan, pembayaran, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tautan nota ke penerimaan

CONFIRMED / LOCAL_VALIDATED. Kandidat 3b4e7417ef8e730a1aa610d84cd1e34d83dd079b mengaitkan satu draf nota dengan beberapa penerimaan proyek dan supplier yang sama, dengan audit serta pintasan ke dokumen sumber. Biaya dan stok tetap mengikuti penerimaan yang sudah tercatat. Chrome 390 dan 1440 px, 101 tes MySQL dengan 1.777 asersi dan restore dua tautan sintetis lulus. Pencocokan baris, tagihan, pembayaran, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tujuan biaya per baris nota

CONFIRMED / LOCAL_VALIDATED. Kandidat f3d3db8e07b3da0f6b36e8db22d66b09752a6dc5 menambahkan pencarian item RAP aktif atau biaya umum proyek per baris nota. Draf menyimpan referensi dan versi RAP. Pilihan lama tetap terlihat dan perlu diperiksa bila versi aktif berganti. Chrome 390 dan 1440 px, 100 tes MySQL dengan 1.756 asersi dan restore dua draf sintetis lulus. Penerimaan, stok, biaya aktual dan pembayaran memakai alur terpisah. Integrasi nota, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: lampiran privat draf nota

CONFIRMED / LOCAL_VALIDATED. Kandidat 6dfa59d2ddd3a6582dd5900f3f95f79224a98fb0 menambahkan unggah, riwayat dan unduh foto/PDF privat pada draf nota. Izin proyek, tipe isi, batas ukuran, deduplikasi dan integritas berkas diverifikasi. Chrome 390 dan 1440 px, 99 tes MySQL dengan 1.735 asersi, dan restore empat lampiran sintetis lulus. Mapping nota, penerimaan, pembayaran, retensi, OCR, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: draf nota pembelian

CONFIRMED / LOCAL_VALIDATED. Kandidat a58a9a3b6967cdd657b7dba38ed58a59cdb1dd19 menambahkan form dan riwayat draf nota multibaris dengan supplier, total otomatis, revisi dan audit. Simpan draf tidak memicu penerimaan, pemakaian, biaya, tagihan atau kas. Chrome 390 dan 1440 px, 98 tes MySQL dengan 1.708 asersi, restore dua draf sintetis dan latihan migrasi lulus. Lampiran serta hubungan nota ke penerimaan dan Finance masih terbuka. Demo Pages v1.1 dan kandidat Laravel lokal. Staging, UAT dan PILOT_READY terbuka.

## 2026-11-14 - Arkarupa: Kurva S di Portal Klien

CONFIRMED / LOCAL_VALIDATED. Pada kandidat 5a480602992876e8400ab4f2b40648e6ef3be50f, Portal Klien menampilkan Kurva S rencana dan aktual dengan tabel yang bisa dibuka melalui keyboard. Laporan baru menyimpan seri bersama baseline dan cut-off saat terbit. Laporan arsip tanpa seri tetap bisa dibuka. Chrome 390 dan 1440 px, 97 tes MySQL dengan 1.679 asersi, serta restore snapshot sintetis lulus. Demo Pages aktif v1.1. Pengesahan basis RAB dan cakupan kas, staging, UAT, dan PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: ringkasan nilai proyek di Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat d8a6f636899b3ed178f655747417d6b23c6a1173 menampilkan nilai baseline, pekerjaan terverifikasi, sisa pekerjaan dan kas pembayaran teralokasi. Snapshot pekerjaan mengikuti baseline laporan yang diterbitkan. Chrome 390 dan 1440 px serta 97 tes MySQL dengan 1.663 asersi lulus. Basis bisnis kas dan RAB, Kurva S Portal, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: ringkasan lampiran dan validasi balasan Owner

CONFIRMED / LOCAL_VALIDATED. Kandidat 149ce2759c7138e2a020bd0e71af88bd0a6b4754 menampilkan jumlah dan nama lampiran terpilih sebelum VO terbit dan mengaitkan kesalahan balasan dengan kolom VO. Chrome membuktikan publikasi dan balasan dari sesi Owner sintetis. Klien melihat balasan dan hanya lampiran terpilih pada 390 dan 1440 px. Regresi Commercial lulus 10 tes dan 234 asersi. Staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: balasan klarifikasi VO

CONFIRMED / LOCAL_VALIDATED. Kandidat 23d096ef4dece9048a6c6bc00c9a86e1ec4391e9 memberi Owner formulir balasan klarifikasi dari Kontrak. Klien melihat status, balasan, dan nomor pertanyaan pada Portal. Chrome 390 dan 1440 px, MySQL 97 tes dengan 1.656 asersi, dan uji migrasi disposable lulus. Uji browser Owner, staging, UAT, serta PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: lampiran privat pada VO terbit

CONFIRMED / LOCAL_VALIDATED. Kandidat 593be3889a04c47d3d8edd061384d85233146a78 menautkan PDF atau foto proyek yang dipilih Owner saat publikasi. Portal memeriksa keanggotaan, kaitan lampiran dengan VO dan checksum berkas. Klien sintetis membuka pratinjau dan unduh di Chrome 390 dan 1440 px. Uji browser atas formulir Owner, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: tanggapan VO dari Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat cca034e006a9b8a1f7ce395960f738bdc745e601 memungkinkan anggota proyek memberi tanggapan Setuju, Tolak atau Minta klarifikasi pada VO terbit. Riwayat mencatat aktor dan waktu. Verifikasi Owner diperlukan sebelum perubahan diterapkan ke baseline. Chrome 390 dan 1440 px serta 97 tes MySQL dengan 1.613 asersi lulus. Lampiran privat VO, staging, UAT dan PILOT_READY masih terbuka. Pages publik v1.1.

## 2026-11-14 - Arkarupa: dashboard dan navigasi kandidat demo

CONFIRMED / LOCAL_VALIDATED. Prototype sintetis v1.2 kandidat f6e6b863b9bb48196c7b8b4dbba20969ef6af50c memiliki empat kartu portofolio, panel Perlu perhatian dan dock navigasi HP. Artefak diuji di Chrome pada 390 dan 1440 px serta tanpa overflow pada 320 px. Alur dua proyek, 13 modul dan penyimpanan browser lulus regresi. Pages publik masih v1.1. Staging Laravel, UAT serta PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: publikasi perubahan pekerjaan di Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat 07dd76d00cc5f3bb9eec59a4056bae0d338a6673 memberi Owner konfirmasi publikasi perubahan pekerjaan yang disetujui internal. Klien yang mempunyai akses proyek melihat lembar terbit tanpa data biaya internal. Chrome 390 dan 1440 px, 96 tes MySQL dengan 1.581 asersi, serta restore sintetis lulus. Tanggapan langsung klien, lampiran privat khusus VO, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: perbandingan VO dan bukti persetujuan

CONFIRMED / LOCAL_VALIDATED. Kandidat a193b274c3d4c475b5001663ee5eda1360e125d0 menampilkan perbandingan perubahan pekerjaan dari baseline kontrak asal serta menyediakan formulir bukti persetujuan internal per VO. Chrome lulus pada 390 dan 1440 px. MySQL disposable lulus 96 tes dan 1.552 asersi, termasuk penerapan baseline satu kali. Publikasi dan keputusan langsung klien di Portal, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: publikasi dan versi berkas Portal Klien

CONFIRMED / LOCAL_VALIDATED. Kandidat f756b6d6feabb9e3f8bbf48a1cd0e7edcd575239 memberi Owner alur menerbitkan lampiran proyek dan menandai versi sebelumnya Superseded. Chrome 390/1440 px membuktikan pratinjau versi aktif dan unduh versi arsip. MySQL disposable lulus 96 tes dan 1.537 asersi termasuk isolasi proyek dan pencabutan akses. Delegasi penerbit, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: Document Center Portal Klien

CONFIRMED / LOCAL_VALIDATED untuk halaman Document Center. Kandidat a097ba65ca715c49520c5243cd8733b789401f2c membuka enam kategori dan memuat indeks laporan yang telah diterbitkan untuk proyek yang diizinkan. Chrome 390/1440 px membuktikan navigasi keyboard, laporan historis dan isolasi proyek. MySQL disposable lulus 95 tes dan 1.507 asersi. Publikasi berkas, preview, unduh, versi dokumen, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: pengukuran dan draf BUP di HP

CONFIRMED / LOCAL_VALIDATED. Kandidat 7180f5ce1ea75c6431097d0e2973c1f8befc213d memulihkan fokus pemilih item, memperbarui hasil ukuran saat pindah kolom, dan menampilkan pintasan ke draf BUP terakhir milik pengguna. Chrome 390 px membuktikan pengukuran 2,4 m³, simpan, dan pemulihan dimensi serta catatan. Progres terverifikasi tetap 25% selama BUP masih draf. Uji perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: aksi cepat HP sesuai peran dan proyek

CONFIRMED / LOCAL_VALIDATED. Kandidat f9869eda18f33c15a1c738ffe52661faccbc0ffe menyediakan akses cepat ke BUP, permintaan material dan pembayaran sesuai peran dan proyek yang sedang dipilih. Chrome 320/390 px membuktikan fokus dan pergantian proyek tanpa reload. MySQL disposable lulus 95 tes dan 1.490 asersi. Draf nota, perangkat fisik, staging, UAT dan PILOT_READY masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: rail desktop dan dock HP

CONFIRMED / LOCAL_VALIDATED. Kandidat 039fc46ed849faed48fd02585c27f93cdd208e6b menyediakan rail desktop 216/61 px dan dock Menu, Dashboard, dan Proyek di bawah 1024 px. Drawer memulihkan fokus setelah Escape. Chrome 390, 900, 1024 dan 1440 px membuktikan navigasi serta hak akses. MySQL disposable lulus 95 tes dan 1.486 asersi. Aksi cepat, perangkat fisik dan pembaca layar masih terbuka. Demo Pages v1.1. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: daftar proyek responsif dan konteks periode

CONFIRMED / LOCAL_VALIDATED. Kandidat ae9286040606a738e1dfe85368540d330c8a9a5b menampilkan progres aktual, rencana dan selisih di tabel desktop dan daftar satu kolom pada HP. Tautan keyboard mempertahankan filter ke Dokumen Proyek dan cut-off ke Lapangan. Chrome 390/1440 px membuktikan fixture 25% aktual terhadap 50% rencana, keadaan tanpa baseline, dan cakupan akses pelaksana. Demo Pages v1.1. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: arus kas dashboard, antrean review dan fokus dialog

CONFIRMED / LOCAL_VALIDATED. Kandidat 81a412b5e5a1ef4ecdb4bab06057ae64dbc40430 menampilkan kas masuk dan keluar terposting tanpa transfer internal, serta panel Perlu perhatian dari antrean review yang berizin. Escape dan Tutup mengembalikan fokus ke tombol pembuka. Chrome 390/1440 px menguji proyek terisi, proyek kosong dan hak akses. MySQL disposable lulus 95 tes dan 1.484 asersi. Demo Pages v1.1. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: kartu dashboard responsif dan pintasan status proyek

CONFIRMED / LOCAL_VALIDATED untuk kartu dan pintasan. Kandidat a58e5248f810b93aaccf8a6542a64958e494ff5b menata KPI portofolio dalam dua kolom di HP dan empat di desktop, menonjolkan piutang bagi peran berizin, serta menyediakan pintasan keyboard ke status proyek. Chrome menguji 320, 390, 900 dan 1440 px. MySQL disposable lulus 95 tes dan 1.477 asersi. Pemulihan fokus dialog sumber masih terbuka. Demo Pages v1.1. Staging, UAT dan PILOT_READY masih terbuka.

## 2026-11-14 - Arkarupa: jalur kritis dan cadangan hari kerja

CONFIRMED / LOCAL_VALIDATED. Kandidat 1dc97e7cd8746fc2ddf2a5aee6cbda262bd8c43a menandai aktivitas bercadangan nol pada Gantt. Cadangan memakai jadwal tersimpan, kalender dan dependensi finish-to-start pada versi terpilih. Filter diuji dengan keyboard di Chrome 390 px. MySQL disposable lulus 95 tes dan 1.473 asersi. Proyeksi, laporan berkala, staging dan UAT masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: peringatan Gantt pada baseline aktif

CONFIRMED / LOCAL_VALIDATED. Kandidat 92d02f373555f2a7787854248ffcfbe3de4db5fa menandai pekerjaan di bawah target atau lewat tenggat dari volume BUP terverifikasi pada baseline aktif. Operator dapat menyaring aktivitas yang perlu perhatian. Chrome 390 px dan MySQL disposable lulus 94 tes dan 1.467 asersi. Milestone tanpa volume masih ditinjau manual. Jalur kritis, staging dan UAT masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: Gantt jadwal dan baseline aktif

CONFIRMED / LOCAL_VALIDATED. Kandidat 6e72d5079eca82fbe2ec46616a400e9cc190efc7 menampilkan Gantt versi jadwal terpilih dengan skala mingguan/bulanan, durasi, bobot kontrak, milestone dan dependensi. Operator dapat kembali ke baseline aktif sambil mempertahankan skala. Chrome 390 px serta MySQL disposable lulus 93 tes dan 1.458 asersi. Jalur kritis, staging dan UAT masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: Kurva S internal dan navigasi periode

CONFIRMED / LOCAL_VALIDATED. Kandidat 61749d6bf48cd1ba74c87d28c385bf1cc92ceafd menampilkan Kurva S internal dari periode dan angka yang sama dengan tabel. Operator dapat berpindah rentang lama dan baru dengan keyboard sambil mempertahankan cut-off utama. Chrome 390 px dan MySQL disposable lulus 92 tes dan 1.446 asersi. Grafik Portal, Gantt, staging dan UAT masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: progres kumulatif mingguan dan bulanan

CONFIRMED / LOCAL_VALIDATED. Kandidat 67cb9edcffde293d4b510df76eaf92e348009687 menampilkan rekap 12 periode mingguan atau bulanan dengan angka kumulatif, deviasi dan versi baseline. Aktual berasal dari BUP terverifikasi dan ditampilkan sampai tanggal berlaku. Chrome 390 px lulus perpindahan periode dengan keyboard. MySQL disposable lulus 92 tes dengan 1.439 asersi. Grafik Kurva S, staging dan UAT masih terbuka. Demo Pages v1.1.

## 2026-11-14 - Arkarupa: pengukuran volume BUP berdasarkan baseline

CONFIRMED / LOCAL_VALIDATED. Kandidat 40b7aab7f0afed6681dd97030df4601c4c632565 menampilkan pratinjau dimensi pada BUP dan mencatat metode serta satuan asli untuk input langsung, termasuk berat dan LS. Riwayat menjaga dasar ukur dan koreksi bertaut. MySQL disposable lulus 91 tes dengan 1.427 asersi dan uji terfokus lanjutan. Uji HP fisik, staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: tindak lanjut proyek dan pencarian BUP

CONFIRMED / LOCAL_VALIDATED. Pekerjaan berikutnya memakai progres hari ini untuk rekomendasi baseline dan BUP saat Ringkasan dibuka pada cut-off historis. Tenggat tampil terpisah dan pencarian kosong dapat dipulihkan dengan keyboard. Chrome 390 px lulus uji navigasi dan MySQL disposable lulus 89 tes dengan 1.401 asersi pada kandidat 0005feec69818f6051dbac6997f3f4efd22b85cd. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: pencarian dokumen proyek

CONFIRMED / LOCAL_VALIDATED. Indeks dokumen memperjelas kontrol pencarian dan buka berkas pada HP, menyediakan pemulihan saat hasil kosong, dan mencari karakter nama secara literal. MySQL disposable lulus 89 tes dan 1.394 asersi pada kandidat dadf9360a29a33ace80f380c5c1be2214f830136. Browser 390 px lulus uji penghapusan pencarian dengan keyboard dan akses foto berizin. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: ringkasan proyek dan periode progres

CONFIRMED / LOCAL_VALIDATED. Ringkasan memisahkan Aktual, Rencana dan tanggal cut-off. PM bisa kembali ke bulan ini tanpa memilih ulang proyek. Tautan menuju Lapangan membawa tanggal yang sama, dan antrean BUP diberi label sebagai jumlah yang menunggu verifikasi saat ini. Chrome 390 px dan MySQL disposable lulus 89 tes dan 1.382 asersi pada kandidat b3f93ad5577889c5cf7305524bf373cb5016ea22. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: ringkasan progres dan pemulihan cut-off

CONFIRMED / LOCAL_VALIDATED. Layar pekerjaan menampilkan Aktual, Rencana dan Selisih pada kartu terpisah. Operator dapat memulihkan tanggal kosong dan kembali ke progres hari ini dengan keyboard. Volume dan tanggal pembaruan memakai baris BUP terverifikasi yang sama. Chrome 390 px dan MySQL disposable lulus 88 tes dan 1.369 asersi pada kandidat 75261576a615f7540511347772b61b0cd608f4d2. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: pemilihan foto sebelum laporan terbit

CONFIRMED / LOCAL_VALIDATED. Workspace memperjelas kartu pemilihan foto dan menampilkan status saat cut-off berubah. Judul tetap tersedia dan pilihan foto disegarkan. Laporan baru ditahan jika berkas foto terpilih hilang. Retry laporan yang sudah terbit mengembalikan ID yang sama. Chrome 390 px lulus uji keyboard dan MySQL lulus 87 tes dengan 1.360 asersi pada kandidat 95ae9267b999483cd18a7b621082e476e6041e37. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: riwayat dan foto Portal Klien

CONFIRMED / LOCAL_VALIDATED. Riwayat menandai laporan yang sedang dibuka. Klien dapat melihat foto penuh melalui tautan privat di tab baru. Bila semua foto terpilih sedang hilang, Portal menampilkan status ketersediaannya dan tetap menampilkan laporan. Chrome 390 px lulus uji keyboard. Regresi MySQL lulus 87 tes dan 1.348 asersi pada kandidat 7338b42f15fd18b3c7aa05d4f377f4f93afb5cc0, termasuk cakupan izin foto dan pencabutan akses. Demo Pages v1.1. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: urutan dan navigasi tagihan Portal

CONFIRMED / LOCAL_VALIDATED. Portal menempatkan tagihan bersaldo terlebih dahulu, membatasi tiap kartu, dan menyediakan tautan dari ringkasan. Chrome 390 px lulus uji fokus. Regresi MySQL lulus 87 tes dan 1.334 asersi pada kandidat 865d687f20445e25004a4eb84ef689e77d1e8ac5, termasuk pergeseran urutan setelah pelunasan dan pembalikan. Demo Pages tetap v1.1. Staging dan UAT terbuka.

## 2026-11-14 - Arkarupa: tagihan lunas dan Portal kosong

CONFIRMED / LOCAL_VALIDATED. Portal membedakan status Lunas dan menampilkan akses periksa laporan pada proyek kosong. Chrome 390 px lulus. Uji memastikan pembalikan pembayaran membuka kembali sisa tagihan pada laporan historis. MySQL disposable lulus 87 tes dan 1.329 asersi pada kandidat ab9eed395aca228157b684c793ede2882fd7b2fb. Demo Pages tetap v1.1. Staging dan UAT terbuka.

## 2026-11-14 - Arkarupa: rincian saldo dan pemulihan masuk Portal

CONFIRMED / LOCAL_VALIDATED. Portal menonjolkan sisa tagihan, mencantumkan pembayaran dan penyesuaian terpisah, serta menjaga email dan memfokuskan kata sandi setelah gagal masuk. Chrome 390 px lulus. Setelah pencabutan akses, laporan lama dan foto ditolak. Kandidat 57838a8842c46a3ed89e8db2188348fb722df868 lulus 87 tes dan 1.305 asersi. Demo Pages tetap v1.1. Staging dan UAT terbuka.

## 2026-11-14 - Arkarupa: navigasi Portal dan pemulihan proyek kosong

CONFIRMED / LOCAL_VALIDATED. Portal menunjukkan Aktual dan Target dalam kartu dan memberi tautan dari laporan historis ke laporan terbaru. Paginasi menjaga laporan yang dipilih. Kandidat 59f34389c4f85b729cbe4aff1417f262ad525d19 lulus 87 tes dan 1.294 asersi pada MySQL disposable. Pemulihan proyek sintetis mulai kosong mencocokkan 68 tabel dan lima berkas privat dengan 45 asersi baca ulang. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: rekap stok dan pemulihan kandidat

CONFIRMED / LOCAL_VALIDATED. Rekap stok menampilkan Sisa di samping Material dan menyediakan kembali ke stok hari ini. Chrome 390 px lulus cek posisi kolom dan keyboard. Kandidat menolak pengajuan opname lama setelah cut-off lebih baru disetujui. MySQL disposable lulus 87 tes dan 1.285 asersi pada kandidat 6bf4b517e8a776c836cb5886de2619c3be90c907. Pemulihan sintetis proyek terisi mencocokkan 68 tabel dan tiga lampiran. Staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: tanggal stok ditutup setelah opname

CONFIRMED / LOCAL_VALIDATED. Penerimaan, retur, pemakaian dan pembalikan baru ditolak pada atau sebelum cut-off disetujui. Retry transaksi lama mengembalikan catatan semula. Fixture menjaga 57 m³ pada cut-off dan 67 m³ pada periode terbuka. MySQL disposable lulus 86 tes dan 1.252 asersi pada kandidat a693e64ecdbd0ecaaa58504563e5d508cc5300e6. Kebijakan bukti terlambat, staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: pembalikan pemakaian saldo pembuka

CONFIRMED / LOCAL_VALIDATED. Owner atau PM dapat membalik pemakaian saldo pembuka aktif sekali dari riwayat. Fixture memulihkan 6 m³ menjadi 8,125 m³ dan menyimpan catatan awal serta koreksinya. MySQL disposable lulus 85 tes dan 1.234 asersi pada kandidat 027d7e0cc211d82955c8ff212f55b86108eefa4a. Kebijakan transaksi bertanggal mundur, staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: pemakaian stok pembuka tanpa riwayat

CONFIRMED / LOCAL_VALIDATED. Pelaksana dapat mencatat material dari saldo pembuka aktif ketika riwayat penerimaan belum tersedia. Fixture menyisakan 6 m³ dari 8,125 m³ setelah pemakaian 2,125 m³ dan menjaga nilai historis. MySQL disposable lulus 85 tes dan 1.218 asersi pada kandidat 7ecc08b809d0c0e93159e82aa53174563770933e. Pembalikan pemakaian ini, staging, dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: rekap dari saldo awal disetujui

CONFIRMED / LOCAL_VALIDATED. Rekap stok kandidat memakai hasil opname yang disetujui dan pergerakan setelah cut-off. Fixture menghasilkan 71,25 m³ dan menjaga 8,125 m³ untuk bahan tanpa riwayat. Rekap baca-saja. Pengurangan dari saldo pembuka tanpa penerimaan masih terbuka. MySQL disposable lulus 85 tes dan 1.205 asersi pada kandidat e54f5deda901f06c9bfeb66af5f1af2b3352d56a. Staging dan UAT menunggu.

## 2026-11-14 - Arkarupa: review saldo stok pembuka

CONFIRMED / LOCAL_VALIDATED. Finance atau Owner mengajukan hasil hitung fisik. PM atau Owner lain mencatat keputusan dan alasannya. Riwayat sumber yang berubah sebelum persetujuan memerlukan review ulang. Snapshot disetujui disimpan tanpa posting stok atau biaya. Regresi MySQL disposable lulus 85 tes dan 1.192 asersi pada kandidat d265fba7ea0403ab743a642d49bf790205532a9b. Penerapan saldo pada stok operasional, staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: latihan rekonsiliasi saldo fisik

CONFIRMED / LOCAL_VALIDATED. Perintah lokal membandingkan CSV hitung fisik dengan rekap stok hingga cut-off. Fixture menunjukkan selisih 1,75 m³ dan 8,125 m³ tanpa riwayat pada material lain. Hasil baca-saja. Regresi MySQL disposable lulus 84 tes dan 1.169 asersi pada kandidat 60a029905e12bdcfcfbf6b80f84ec2fa4c0c3b48. Saldo nyata menunggu proyek, dokumen opname, cut-off dan persetujuan. Demo Pages tetap v1.1.

## 2026-11-14 - Arkarupa: rekap stok pada cut-off

CONFIRMED / LOCAL_VALIDATED. Lapangan menampilkan stok per material dan satuan pada tanggal pilihan dari penerimaan baik, retur dan pemakaian neto. Fixture merekonsiliasi 52 m³ pada cut-off dan 71 m³ setelah penerimaan, retur dan pembalikan hari berikutnya. Rekap baca-saja. Regresi MySQL disposable lulus 83 tes dan 1.146 asersi pada kandidat c548d8883dd8ad901b0e3918cb34361c48f8e492. Pilot nyata, penetapan saldo fisik dan UAT menunggu proyek serta cut-off.

## 2026-11-14 - Arkarupa: Change Log demo publik v1.1

CONFIRMED / DEMO_PUBLIC. [Change Log publik](https://arkarupa-prototype.pages.dev/#/changes) menampilkan 20 riwayat pengembangan kandidat pilot dengan tanggal, sebelum–sesudah dan hasil uji sintetis. Tiga catatan rilis awal tetap tersedia. Kedua proyek demo menyimpan percobaan di browser. Deployment Pages f13d70ca lulus uji Chrome desktop dan HP serta verifikasi 10 aset publik. Source lokal d0abcc5aaa89d647ac9bfdc27128f1f0150bf4b3. Staging, UAT dan pemilihan proyek nyata tetap terbuka.

## 2026-11-14 - Arkarupa: koreksi pemakaian stok dan riwayat pilot

CONFIRMED / LOCAL_VALIDATED. Owner atau PM dapat membalik pemakaian stok dengan alasan dan jejak audit. Pada fixture, saldo 57 kembali ke 60 dengan satu efek saat retry. Biaya aktual, kas dan progres fisik tetap. Tab Change Log kandidat memuat 19 entri historis dan pembaruan ini. MySQL disposable lulus 82 tes dan 1.123 asersi. Uji akhir terfokus lulus 3 tes dan 35 asersi pada commit kandidat a4f96a6379913db3c202e1fed485e391acb4ccdb. Staging dan UAT masih terbuka. Proyek nyata dan saldo pembukanya menunggu penetapan.

## 2026-11-14 - Arkarupa: satuan set untuk pekerjaan AHSP

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel kini membawa satuan set dari estimasi dan baseline ke laporan lapangan dan PDF RAP serta penawaran. Empat tabel RISHA bersatuan set lulus fixture kalkulasi, pengadaan dan PDF. Suite MySQL disposable lulus 80 tes dan 1.100 asersi pada commit lokal 8f9ad1f2aede6690f49b8e477a876f9b8c18cfc0. Entri indeks tetap Referensi. Tiga analisis produksi bertingkat, pemetaan harga kontrak, staging dan UAT masih terbuka.

## 2026-11-14 - Arkarupa: satuan sumber daya AHSP di katalog dan estimasi

CONFIRMED / LOCAL_VALIDATED. Estimator kini dapat memilih OJ, hari, lembar dan batang di katalog sumber daya dan estimasi per ruangan. Fixture menguji persetujuan harga dasar sintetis, salin template AHSP, kebutuhan pengadaan dan unduhan PDF RAP. MySQL disposable lulus 79 tes dan 1.081 asersi pada commit lokal 521d4b6eda2c1b25532cb0d1863a61e451faeb1b. Katalog indeks tetap Referensi. Verifikasi harga kontrak, staging, UAT dan pilot nyata masih terbuka.

## 2026-11-14 - Arkarupa: dukungan satuan AHSP unit

CONFIRMED / LOCAL_VALIDATED. Kalkulator sebelumnya menolak keluaran unit untuk AC dan tangki. Kandidat Laravel kini mendukung satuan unit di katalog, estimasi, BUP hitung jumlah, dan PDF RAP serta penawaran. Fixture AC Split Duct dan tangki fiberglass memakai HSD sintetis. Suite MySQL disposable lulus 78 tes dan 1.049 asersi pada source lokal 939b76e0b4ce76bf8615efa8b39be418fdf9df28. Entri indeks tetap Referensi selama koefisien dan HSD kontrak ditinjau. Demo publik tetap sintetis. Staging, UAT, dan kesiapan pilot nyata masih terbuka.

## 2026-11-14 - Arkarupa: tautan detail katalog AHSP

CONFIRMED / LOCAL_VALIDATED. Semua 2.841 kode indeks Lampiran VI kini punya halaman detail kandidat, termasuk 24 baris dengan kode tabel yang berbeda dari ejaan indeks. Tampilan Referensi memperlihatkan kedua kode bila berbeda. Definisi yang sudah diverifikasi dipertahankan saat impor. Seluruh 77 tes MySQL disposable lulus pada commit lokal 4d1351644f65ae5f785730be06a775a08e23713a. Review unit dan koefisien penuh, staging serta UAT masih terbuka.

## 2026-11-14 - Arkarupa: pembayaran upah parsial

CONFIRMED / LOCAL_VALIDATED. Finance dapat mengajukan kewajiban dari biaya tenaga yang disetujui dan mencatat pembayaran parsial melalui alokasi kas. Pengujian sintetis Rp250.000 dibayar Rp200.000 menyisakan Rp50.000 dengan biaya tetap, dan pembalikan mengembalikan saldo. Suite MySQL disposable lulus 75 tes dan 962 assertions pada commit lokal 212d9a0391270bff3f4f300c4cda759b50f6880b. Staging, UAT operator dan pilot nyata masih terbuka.

## 2026-11-14 - Arkarupa: pencatatan pemakaian material

CONFIRMED / LOCAL_VALIDATED. Pelaksana mencatat pemakaian pada baris penerimaan dan melihat saldo stok sesudah retur dan pemakaian. Contoh sintetis 52 menjadi 50 dengan biaya, kas, dan progres fisik tetap. Suite MySQL disposable lulus 74 tes dan 938 assertions pada commit lokal 48c65297a64fde92b9ed6bc68cf32187c254d373. Pembayaran upah parsial, saldo stok pembuka, serta review operator dan aktivasi pilot masih terbuka.

## 2026-11-14 - Arkarupa: fondasi kandidat pilot

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel mempunyai workspace kosong, penugasan proyek untuk akun operasional, AHSP multi-komponen, BUP dari dimensi, Portal Klien dengan laporan terbit dan Change Log. Indeks 2.841 kode Lampiran VI tersedia sebagai Referensi untuk peninjauan detail. Proyek nyata serta UAT operator/klien masih terbuka.

Source commit lokal d6d5df3541b83a9f8118f7443a968b925cf0b094. Suite MySQL disposable lulus 73 tes dan 926 assertions. Pemeriksaan desktop dan viewport HP mencakup login portal, pencarian katalog dan Change Log. Status ini mencakup kandidat lokal dengan data sintetis. Demo publik memiliki riwayat rilis tersendiri.

## 2026-11-14 - Arkarupa V1: prototype publik dua proyek

CONFIRMED / PRODUCTION_DEPLOYED untuk demo publik sintetis. [Arkarupa V1](https://arkarupa-prototype.pages.dev/) membuka dua proyek tanpa login dengan 13 modul. Alur AHSP, BUV, RAP/RAB, Kurva S, BUP, biaya, termin dan Portal Klien dapat dicoba. Percobaan tersimpan per proyek di browser. Change Log menampilkan sebelum/sesudah rilis dan aktivitas lokal. Katalog awal berisi tujuh kode Lampiran VI yang telah diperiksa. Katalog lengkap mengikuti tahap perluasan.

Provenance: source lokal `d29c8c52eec70a7ca89af9bee7e1d39b7fb9171a` terverifikasi identik dengan manifest aset SHA-256 `6c7a051aac64cc5e5b817e3ab790c826ef3d57a1f58c6fd235190097de573601`. Deployment `0a7d02fe-5442-4cd3-ac40-693f1561df2e`. Pemeriksaan browser 1440 px dan viewport mobile 390 px lulus pada URL publik, termasuk proyek kosong sampai laporan terbit, reset terisolasi dan Change Log. Ini adalah frontend demo tersendiri. UAT klien dan kesiapan operasional berada di luar bukti rilis ini.

Bagian setelah entri ini mendokumentasikan milestone historis aplikasi Laravel.

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
