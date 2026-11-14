# SagaDevs Product Hub Changelog

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

Source commit lokal d6d5df3541b83a9f8118f7443a968b925cf0b094. Suite MySQL disposable lulus 73 tes dan 926 assertions. Pemeriksaan desktop dan viewport HP mencakup login portal, pencarian katalog dan Change Log. Status ini mencakup kandidat lokal dengan data sintetis. Demo publik memiliki riwayat rilis tersendiri. [Detail Arkarupa](ARKARUPA.md).

## 2026-11-14 - Arkarupa V1: prototype publik dua proyek

CONFIRMED / PRODUCTION_DEPLOYED untuk demo publik sintetis. [Arkarupa V1](https://arkarupa-prototype.pages.dev/) membuka dua proyek tanpa login dengan 13 modul. Alur AHSP, BUV, RAP/RAB, Kurva S, BUP, biaya, termin dan Portal Klien dapat dicoba. Percobaan tersimpan per proyek di browser. Change Log menampilkan sebelum/sesudah rilis dan aktivitas lokal. Katalog awal berisi tujuh kode Lampiran VI yang telah diperiksa. Katalog lengkap mengikuti tahap perluasan.

Provenance: source lokal `d29c8c52eec70a7ca89af9bee7e1d39b7fb9171a` terverifikasi identik dengan manifest aset SHA-256 `6c7a051aac64cc5e5b817e3ab790c826ef3d57a1f58c6fd235190097de573601`. Deployment `0a7d02fe-5442-4cd3-ac40-693f1561df2e`. Pemeriksaan browser 1440 px dan viewport mobile 390 px lulus pada URL publik, termasuk proyek kosong sampai laporan terbit, reset terisolasi dan Change Log. Ini adalah frontend demo tersendiri. UAT klien dan kesiapan operasional berada di luar bukti rilis ini.

## 2026-11-06 - Jersey Jago r72: koreksi kerah dan tepi kain yang terpotong

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis. Mask penghapusan hanger r71 ikut menghapus sebagian kain kerah. r72 memperbaiki 22 foto pada 20 set; framing tetap 1120 x 1400 dengan latar abu-abu dan whitespace. Galeri tetap 499 foto untuk 122 set batch ketiga; total katalog 164 pilihan.

Deployment `a0a3bee4-78ce-42f5-b7a0-6cc361d948e7` pada [Jersey Jago](https://jersey-jago-prototype.pages.dev/) / [artifact r72](https://a0a3bee4.jersey-jago-prototype.pages.dev/). Sebanyak 29 berkas baru/berubah; seluruh 506 entri aktif yang diverifikasi (499 foto, enam skrip dan index) cocok ukuran dan SHA256 publik. Sebanyak 1117 entri baseline dipertahankan identik byte secara lokal. Header dan 404 publik/API/privat lulus. Typecheck/build, 14 tes terfokus dan smoke browser desktop/390px lulus, termasuk framing lengkap Chelsea dan navigasi ke detail sumber.

Paket r72 SHA256 `347d7d561871e552ff0ef20f533d369b05aabee5a75309a601778dc7ab407488`; final source snapshot SHA256 `876c36b4c6a703892e9da38abda97533a3a6f7cc99e87cbe4e1b9a087138cd3d`. Source base `c26607a` adalah histori, bukan commit semua perubahan r72. Enam delta source/test/manifest dan 22 aset disimpan dengan guard baseline; tidak mengklaim source commit/push baru. Rollback langsung: r71 deployment `51771157-f615-4f2e-8712-12fb223669be` dan paket retained. Sumber: instruksi Andreas, perbandingan foto sumber, ledger artifact dan verifikasi publik.

## 2026-11-06 - Jersey Jago r71: hanger dihapus dari foto katalog

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis. Hanger dihapus pada 238 foto utama/alternatif; 16 foto utama yang sudah bersih dipertahankan. Galeri tetap 499 foto untuk 122 set batch ketiga, dan katalog tetap 164 pilihan. Seluruh foto aktif memakai referensi revisi tanpa hanger. Format 1120 x 1400, sRGB, latar abu-abu dan whitespace dipertahankan.

Deployment `51771157-f615-4f2e-8712-12fb223669be` pada [Jersey Jago](https://jersey-jago-prototype.pages.dev/) / [artifact r71](https://51771157.jersey-jago-prototype.pages.dev/). Sebanyak 506 berkas berubah, termasuk seluruh 499 foto aktif, cocok ukuran dan SHA256 setelah unggah; 612 entri baseline dipertahankan identik byte secara lokal. Header dan batas 404 publik/API/privat lulus. Typecheck/build, 14 tes terfokus dan smoke browser desktop/390px lulus; pemeriksaan foto mencakup seluruh 254 bagian leher batch terbaru dan 82 foto katalog lama.

Paket r71 SHA256 `34ac743b7e12bad2b6cbce853089130c1db69814b6e9befc4d17626353b0859a`; final source snapshot SHA256 `75f15bc2cec283b7509341bf8a3856beaf09db31174cd6f167b425020400c326`. Source base `c26607a` adalah histori, bukan commit semua perubahan r71. Delapan delta source/test/manifest dan 499 aset disimpan dengan guard baseline; tidak mengklaim source commit/push baru. Rollback langsung: r70 deployment `23dae8c6-5d29-464f-b2dd-613cc1e094b8` dan paket retained. Sumber: instruksi Andreas, hasil foto, ledger artifact dan verifikasi publik.

## 2026-11-05 - Jersey Jago r70: 499 foto katalog lebih terang

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis Jersey Jago. Sebanyak 122 set baru dengan 499 foto lebih terang (254 foto katalog dan 245 crop detail) menambah katalog dari 42 menjadi 164 pilihan. Galeri membedakan depan, belakang, alternatif, dan detail. Harga, ukuran, stok, originalitas, serta kondisi fisik belum dikonfirmasi; pembelian tetap nonaktif.

Publikasi r70 pada https://jersey-jago-prototype.pages.dev/ terikat deployment `23dae8c6-5d29-464f-b2dd-613cc1e094b8`. Seluruh 613 berkas publik, termasuk 499 foto baru, cocok ukuran dan SHA256. Header noindex/security dan batas 404 lulus; source tests 350/350, typecheck/build serta galeri pada viewport simulasi 320/390/1440 lulus. Rilis diturunkan dari artifact r69 yang terverifikasi agar perubahan lokal owner UI lain tidak ikut tayang. Tidak ada Functions, D1, pembayaran, order atau inventory activation; BUSINESS_READY tidak diklaim.

Paket statis r70 SHA256 `6cb4870f7244fa21e2d541a3037db903d0d67fbc2a56e0129653eb4de4f8af62`; source snapshot SHA256 `a5f3fc34f31fa55bfa1c2e27d4e5f53d59115a7e35f9cc08ec2bb7c5df34f68d`. Source base Git historis `c26607a` tidak disamakan dengan commit seluruh r70. Rollback adalah deployment r69 `718392c5-1d17-46bb-983b-dd21bc9d0c82` dan paket retained. Tidak ada source push baru yang diklaim. Sumber: instruksi Andreas, aset foto, ledger release dan verifikasi publik.

## 2026-10-26 - Google Maps bersama Kopi Saga dan Saga Studio

CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED khusus tautan lokasi.
Atas instruksi Andreas, [Kopi Saga](https://kopisaga.site/) dan
[Saga Studio](https://sagastudio.site/) memakai
[pin Kopi SAGA & SAGA Studio](https://maps.app.goo.gl/DDcpJm8HsEcLXbbK8?g_st=ic),
Jl. Salak No.58, Madiun. Pin lama diganti; label pin sementara Kopi dihapus.

Source Git lokal Studio `249ea2d0333721b28bac1a41a50d4784c985154c`, release
`20261026-249ea2d-maps`; Kopi `f8daa024875853c703ff34ea6a64d4ce26861439`,
release `20261026-f8daa02-maps`. Rollback masing-masing
`20261026-d94b4e7-open-ux` dan `20261023-c0552d8-whatsapp` tersedia.
Build/check27 route dan11tes Studio PASS;22halaman publik serta browser kedua
situs mengonfirmasi URL baru. Delta Studio hanya28HTML mengganti URL, aset lain
identik; Kopi3file memperbarui fallback/config/label dan versi cache. Guarded
activation, manifest/checksum dan public bytes PASS. Production kedua bio berubah;
booking/payment, database, kontak, harga/promo dan status buka tetap. Source push
GitHub/hosted CI dan uji perjalanan langsung NOT_RUN; BUSINESS_READY tidak dinilai.
Tidak ada konflik atau input menunggu konfirmasi dalam scope Maps.

## 2026-10-26 - Saga Clouds dan ilustrasi Oyen Sunkist aktif

CONFIRMED: tiga Saga Clouds aktif Rp20.000/es saja; Oyen Sunkist tetap
Rp18.000, copy sesuai resep Orange. Empat ilustrasi AI berlabel terpasang.
Native catalog130/publication12, runtimeef43989; cashier/kiosk catalog, empat
hash media dan quotes PASS. Promo kiosk20% existing menghasilkan16000/14400.
Stok fisik/HPP, menu/promo lama dan printer tetap;0transaksi. Asset source
2bdaa74/prompt9a0ca81/ledgerd3ec184; tidak ada application/Pages deploy.
Website33resep/PDF19halaman tetap. Staff/device UAT, SOP final dan HPP masih
OPEN; bukan whole-product BUSINESS_READY.

## 2026-10-25 - Strawberry Tea dan Yuzu Tea aktif di SagaPOS

CONFIRMED / MASTER_DATA_PUBLISHED / PRODUCTION_ACTIVATED khusus dua menu.
Strawberry Tea dan Yuzu Tea masuk kategoriTea dengan harga dasarRp15000,
mengikuti Lychee Ti sesuai instruksi Andreas. Lychee Ti dan Lemon Ti sudah
ada dan tidak diduplikasi. Menu baru Es saja, dengan pilihan tingkat manis
existing. Public catalog mengonfirmasi empatTea tersedia/PUBLISHED.

Native Owner catalog112→119/publication10→11, source runtime teramati
eef035db80915d924045546d7b08d30f19644d82. Dua quote Kasir15000 dan browser
daftarTea/detailStrawberry PASS. Produk/pilihan/harga lama, promo/pricing/
ordering serta printer/template tetap. Stok fisik tidak berubah; tidak ada
transaksi/payment/print atau publikasi resep/HPP. Foto menu baru belum
diberikan sehingga memakai placeholder. Tidak ada application deploy.

Timeout pada satu write diselesaikan melalui read-back versi115 yang
membuktikan hanya tiga perubahan awal tersimpan, lalu resume guarded dan
satu publish. Tidak membuat duplikat atau mengulang seluruh batch. Status
PREPARED_NOT_PUBLISHED/menunggu Owner pada entry sebelumnya sudah terselesaikan.
[Website SOP33resep](https://kopi-saga-recipe.pages.dev/) dan
[PDF19halaman](https://kopi-saga-recipe.pages.dev/SOP_Kopi_Saga_Saga_Clouds_Tea_Update.pdf)
tetap live pada source lokal fd9c9ef/deployment8db2dc38.
SOP final, kelengkapan takaran/urutan, foto aktual dan staff/device acceptance
tetap OPEN; bukan BUSINESS_READY seluruh produk.

## 2026-10-25 - Empat resep Tea dan PDF terbaru live; penambahan menu POS menunggu akses

CONFIRMED, pembaruan Andreas menambahkan Lychee Tea, Strawberry Tea,
Lemon Tea dan Yuzu Tea pada [website resep](https://kopi-saga-recipe.pages.dev/).
Koleksi33resep/7kategori; [PDF terbaru19halaman](https://kopi-saga-recipe.pages.dev/SOP_Kopi_Saga_Saga_Clouds_Tea_Update.pdf)
dapat diunduh. Cover diperbarui,16halaman isi lama dipertahankan dan dua
halaman Tea ditambahkan. Source lokal fd9c9efe3edaad4bc1763d5df9cc4e1031d6e965,
deployment8db2dc38-ceaa-4930-8e2b-2b02fcdd9b02; rollback370dd856 retained.
Status `PUBLIC_PROTOTYPE_VERIFIED`:16hash payload publik termasuk PDF cocok;
data33resep, alias pencarian/filter Tea, mode bar/HP390 dan render PDF PASS.

SagaPOS terpisah: read-only katalog publik mengonfirmasi Lychee Ti dan Lemon Ti
sudah tersediaRp15000. Andreas meminta harga menu baru mengikuti Lychee.
Kandidat hanya Strawberry Tea dan Yuzu Tea Rp15000/es saja, existing menu
dipertahankan; simulasi lokal quote/preservasi PASS tanpa transaksi.
`PREPARED_NOT_PUBLISHED`: akses Owner belum tersedia, belum ada mutasi POS.
Stok fisik/resep produksi/HPP tetap; takaran/urutan SOP yang belum lengkap dan
acceptance staf masih OPEN. Publik tanpa login tetap sesuai keputusan sebelumnya;
noindex bukan kontrol akses. Ini bukan aktivasi SagaMenu atau BUSINESS_READY.
Next: unlock akses Owner secara lokal, baca ulang katalog/draft/revisi, lalu
publikasi dua menu yang memang belum ada dan read-back produksi.

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

## 2026-10-23 - Kontak WhatsApp Saga Studio dan Kopi Saga diperbarui

`CONFIRMED`, instruksi Andreas 23 Oktober 2026: kontak bisnis publik kedua
website menjadi **085173358113**, dengan tujuan `https://wa.me/6285173358113`.
Nomor website sebelumnya `DEPRECATED` untuk kedua surface ini.

Source Git lokal Saga Studio `37329b96991048f26a07a88642a90ac9b6ebe6eb`,
release `20261023-37329b9-whatsapp`; Kopi Saga
`c0552d82c9e05f636913693605851162d4920c10`, release
`20261023-c0552d8-whatsapp`. Keduanya `PRODUCTION_DEPLOYED` dan
`PRODUCTION_ACTIVATED` khusus tautan kontak di [Saga Studio](https://sagastudio.site/)
dan [Kopi Saga](https://kopisaga.site/). Source memiliki commit lokal;
push source ke remote tidak diklaim. Knowledge dipush terpisah ke `main`.

Konfigurasi bersama Saga Studio memperbarui semua tombol kontak statis.
Kopi Saga memperbarui konfigurasi JavaScript, fallback HTML dan versi URL
konfigurasi untuk cache browser. Build/check 27 route dan 7 tes Studio PASS;
sintaks JavaScript Kopi Saga serta diff PASS. Hash artifact/manifest cocok
di server; browser mengonfirmasi kedua href baru. Sebanyak 22 route bio Studio
memberi 200 dengan nomor baru; empat route Hiring tetap 200 tanpa tautan WhatsApp.
Hiring dan Campaign QR tetap dapat dibuka. Versi sebelumnya retained untuk rollback.

Produksi website berubah hanya pada nomor dan versi cache. Tidak ada perubahan
layout, booking, payment, database, DNS, harga atau status buka. Tidak mengirim
pesan uji WhatsApp; keterjangkauan akun penerima belum diuji. Tidak ada blocker
baru pada scope tautan; status BUSINESS_READY produk tidak dinaikkan. Catatan
ini berada di SagaDevs sebagai perubahan website bisnis dalam portofolio.

## 2026-10-21 - Jersey Jago revisi17: hero editorial dan filter mobile

CONFIRMED, Andreas meminta pemeriksaan ulang UI/UX React di HP dan hero yang lebih eksperimental. Source lokal `7829ad395cb64a40696788a7bf71e9313ddcdb70` mengganti hero menjadi komposisi ink/emas, judul besar dua baris, panel foto miring dan label kolektor; CTA jelajah mendahului foto di mobile. Font Jakarta/Anton dan grid Latest Drop dipertahankan. Filter memperoleh Batal eksplisit, label/input harga sejajar, draft harga invalid tetap invalid pada Forward, drawer masuk dengan latar solid, serta tombol sekunder setinggi44px pada landscape. Tidak ada dependensi baru.

Status `TEMPORARY_REACT_PREVIEW_VERIFIED`: typecheck/build dan23 tes PASS; matriks browser publik36 kombinasi halaman/viewport320/390/768/1440 tanpa overflow horizontal atau gambar selesai yang rusak. Filter M menghasilkan2produk, draft negatif/Back/Forward/Batal dan accordion rapid-toggle diperiksa; reduced-motion hero tidak beranimasi.15aset publik cocok hash manifest dan5path privat404. Satu koreksi tinggi tombol landscape selesai. Source `docs/mobile-review-17.md` mencatat scope dan batas. Artifact kandidat terpisah menjaga build/listener revisi16 untuk rollback; tunnel baru tanpa login sudah diverifikasi. Link sementara membutuhkan PC/server/tunnel aktif, storage origin lama tidak ikut pindah; Pages tetap ditunda.

Produksi commerce/COYABAG, order/payment/stok/DNS/billing tidak berubah; bukan BUSINESS_READY. HP fisik/Safari, keyboard virtual, screen reader, zoom200%, shopper acceptance, foto/data/kondisi/kebijakan asli dan integrasi commerce tetap OPEN. Next: review visual pemilik lewat HP dan lengkapi input operasional sebelum peluncuran toko.

## 2026-10-21 - Jersey Jago revisi16: React dan Skiper aktif pada preview tunnel

CONFIRMED, Andreas mengotorisasi seluruh urutan migrasi. Source UI lokal `f74d16588528961cf2957ed4630e227bb432cdce`, delivery docs `befa5d82c81cf22639a193c97254b8213e010d26`. Seluruh halaman, shared layout, filter draft/URL, bag/wishlist, galeri dan dialog beralih ke React/Vite/TypeScript; fungsi katalog lama tetap dipakai. Skiper Free diadaptasi untuk link, nav roll, menu/panah, scroll fade dan Swiper kurator; accordion memakai port native+Motion tanpa source/pembelian Pro. Font/emas dan grid Latest Drop dipertahankan.

Status `TEMPORARY_REACT_PREVIEW_VERIFIED`: build/typecheck dan22 tes PASS;36 kombinasi halaman/viewport pada tunnel final tanpa overflow horizontal/foto rusak. Filter, nested dialog Back/Forward, bag4barang/undo/wishlist, foto gagal/retry, accordion/reduced-motion dan carousel diuji terfokus; Strict Mode tanpa langkah dialog ganda.15hash lokal/publik cocok,5path privat404. Preview publik tanpa login memakai origin/tunnel baru; v15 dan Sites privat sebelumnya retained. Hostname baru tidak membawa storage origin lama. Pages tetap ditunda, PC/server/tunnel harus menyala.

Produksi commerce/COYABAG, order/payment/stok/DNS/billing tidak berubah; bukan BUSINESS_READY. HP/iPhone fisik, keyboard virtual, screen reader, shopper acceptance, browser zoom200%, data/foto asli, kebijakan dan integrasi commerce tetap OPEN. Source `docs/react-migration-16.md` memuat hasil/batas dan rollback. Bundle utama berkurang melalui LazyMotion dibanding kandidat React awal, tanpa klaim Core Web Vitals atau jaringan HP. Next: review visual di HP dan kumpulkan data/kebijakan produk asli sebelum commerce production.

## 2026-10-21 - Jersey Jago: kembali ke tunnel lokal; strategi React disiapkan

CONFIRMED, instruksi terbaru Andreas memilih localhost dan Quick Tunnel sementara untuk review HP. Preview revisi15 berhasil diakses tanpa login;14payload lokal dan14payload publik sesuai SHA256 serta3path privat404. Browser390px membuka beranda, detail produk dan filter lalu menutupnya, tanpa error console teramati. Ini smoke runtime; uji HP fisik/Safari dan screen reader tetap OPEN. Link sementara memerlukan PC/server/cloudflared hidup.

Persiapan Cloudflare Pages sekarang `DEFERRED_BY_USER_LOCAL_TUNNEL_SELECTED`, menggantikan next action menunggu login pada entri sebelumnya. Tidak ada Pages deploy atau project baru. Publikasi Sites privat sebelumnya retained. Source dokumen lokal `52d332963166ad0c8a23389631ab3599fc544717`, UI tetap `89b777f6822d42853a13bb654d8efc3d9ade2f02`. Produksi UI/commerce, COYABAG, order/payment/stok/DNS/billing tidak berubah; bukan BUSINESS_READY.

PROPOSAL, `docs/react-skiper-migration-strategy.md` merekomendasikan kandidat Vite/React/TypeScript terpisah: parity layout, reuse domain katalog, migrasi filter/URL/dialog/bag, kemudian komponen Skiper terpilih dan QA sebelum cutover. Token brand dan grid Latest Drop dipertahankan; React dan handler DOM lama tidak berbagi subtree. Card swipe memakai Swiper/Motion; Bouncy Accordion Pro belum dibeli/diakses, opsi awal port native. Free memakai atribusi. Belum ada dependensi React atau migrasi UI yang diimplementasikan. Next: review strategi dan mulai kandidat ketika diminta; backend/data asli/UAT tetap lingkup terbuka.

## 2026-10-21 - Jersey Jago: paket Cloudflare publik siap, login pemilik menunggu

CONFIRMED, Andreas meminta preview Cloudflare tanpa login ChatGPT dan tanpa ketergantungan PC. Source profil deployment `983fe2c50dc94599efa054e75cc05a42bc3b4dfb` menyiapkan Pages Direct Upload untuk UI revisi15/source `89b777f6822d42853a13bb654d8efc3d9ade2f02`. Paket ZIP16berkas berisi14payload statis yang cocok SHA256 ditambah404/headers khusus Pages; allowlist arsip dan index di root PASS. Tidak ada perubahan UI atau commerce. Scope/prosedur: source `docs/cloudflare-preview.md`.

Status `PREPARED_WAITING_CLOUDFLARE_LOGIN`, BELUM DEPLOYED ke Cloudflare: login pemilik diperlukan sebelum verifikasi account/project dan upload. Belum ada project Cloudflare atau URL publik yang dikonfirmasi; jangan mengarang alamat pages.dev. Owner-private Sites revisi15 tetap merupakan publikasi aktif sebelumnya, dengan URL/akses tidak berubah. Next action: pemilik login langsung di browser, lalu lanjutkan upload dan verifikasi anonim tanpa cookie/Authorization. Pengunjung target nantinya tidak perlu login. Produksi hosting belum berubah pada milestone persiapan ini; backend/order/payment/stok/DNS/billing tidak disentuh, bukan BUSINESS_READY.

## 2026-10-20 - Jersey Jago revisi15: interaksi Skiper yang tetap mudah dipakai

CONFIRMED, permintaan Andreas "kerjakan semua" menghasilkan source UI `89b777f6822d42853a13bb654d8efc3d9ade2f02`, hosted snapshot `68621c8665ef87ba18a67d7e8c74ff9baafca099`. Enam referensi Skiper diterapkan sebagai HTML/CSS/JavaScript native: underline link/footer, text roll navigasi desktop, ikon interaktif, accordion lebih tenang, hint/fade scroll filter dan bag, serta carousel kurator terpisah dengan tombol/keyboard/swipe dan satu slide aktif. Grid Latest Drop, gutter bersama, Jakarta Sans/Anton dan emas tetap. Tidak menambah React/Motion/Swiper, membeli Pro, atau menyalin kode Pro; credit referensi ada di footer. Kontrak: source `docs/motion-revision-15.md`.

Build/syntax dan20 tes Node PASS. Browser home320/390/768/1440 tanpa overflow halaman/carousel, grid Latest Drop2/2/4/4; keyboard Home/End, swipe sentuh simulasi dan drag desktop tidak membuka link tanpa sengaja. Accordion klik cepat serta reduced-motion/Space sesuai, filter harga invalid/Cancel/Apply/Back/Forward diuji, kontrol landscape640x390 terlihat; bag4barang dan Back ringkasan mempertahankan scroll serta Close. Bag pengujian dibersihkan; tidak ada error console teramati. Foto carousel ditampilkan utuh. Satu timeout locator browser dikonfirmasi melalui DOM sebagai hasil akhir accordion yang sudah normal; bukan kegagalan aplikasi.

Hosting privat versi15 berhasil terbit (`HOSTED_PRIVATE_PREVIEW_DEPLOYED`) setelah satu retry versi tersimpan yang sama karena gangguan koneksi penyedia. Pemeriksaan service-access mencocokkan13 aset non-HTML dengan Git immutable; empat berkas teks lokal Windows dipetakan CRLF→LF tanpa perubahan isi terhadap dua Git tree yang identik14berkas. HTML revisi15 mempertahankan seluruh source dengan satu sisipan script938karakter dari hosting, sehingga hash HTML mentah tidak diklaim identik. Path yang tidak ada ditangani hosting sebagai shell aplikasi, bukan payload source privat. Native publication dan pemeriksaan aset bukan authenticated visitor UAT. Preview tetap owner-private dan PC-independent pada https://jersey-jago-preview.lucky-eft-9288.chatgpt.site/#home. Probe tambahan gesture vertikal terhenti oleh timeout alat browser; tidak dihitung PASS. HP/iPhone fisik, screen reader, uji pembeli, foto/data/grade/kebijakan asli dan integrasi commerce tetap OPEN. Gambar AI/data contoh, belum ada pesanan/payment/stok produksi; bukan BUSINESS_READY. Produksi hosting preview berubah; COYABAG tidak berubah.

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
