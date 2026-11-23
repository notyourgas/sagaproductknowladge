# SagaDevs Product Hub Knowledge

## 2026-11-24 — Arkarupa: strategi PMS mengikuti referensi baru

**PROPOSAL — RINCIAN BATCH, BELUM IMPLEMENTASI.** Strategi diperinci menjadi16batch dalam3gelombang: B01–B03 shell/sidebar/konteks dan visualRAB; B04–B08 registrasi/role/masterAHSP/QTO/BUV/BOQ/RAB/review/komersial; B09–B16 dokumen/jadwal/pengadaan/progres/keuangan/VO/closeout/UAT. Setiapbatch memiliki dependensi, lingkup dan syaratlulus. Tracker16baris serta pemetaan50IDpenerimaan disimpan pada source dokumentasi `2ffc465aad08cdca5065505198911e84b4ed9961`. Semua masih PLANNED_NOT_IMPLEMENTED;0/16batch dinyatakan selesai. Validasi hanya jumlah/keunikanID, pemetaan, dependensi dan tautan dokumen. Tidak ada perubahanfungsi/UI/schema/izin/runtime, deployment atau aktivasi automation. KeduaChangeLog lokal dibacaulang; catatan tabdemo menunggu rilisfitur berikutnya. Langkah pertama saat implementasi diminta: B01→B02→B03;16batch tidak digabung menjadi satu perubahan besar.

**CONFIRMED — ARAHAN DESAIN, BELUM IMPLEMENTASI.** Andreas meminta strategi fitur, navigasi dan UI/UX mengikuti referensi PMS yang diberikan sedekat mungkin. Target sidebar menjadi Beranda, Proyek, Master Data, Pengaturan dan Pusat Bantuan; submenu Proyek adalah Overview, Dokumen, RAB, Jadwal, Progress, Perubahan dan Laporan. Master Data memuat AHSP, Database Upah, Database Material dan Database Peralatan. Target komposisi/navigasi ini menggantikan Holsite untuk pengembangan berikutnya; monokrom dan Plus Jakarta Sans tetap. Lihat DEC-335.

**PROPOSAL — STRATEGY_PLANNED_NOT_IMPLEMENTED.** Strategi memakai Foto1 untuk sidebar, Foto2 untuk workspace RAB desktop1280×720, serta Master Plan11halaman untuk aturan bisnis. Tiga tab RAB/Analisa Harga Satuan/Master Pekerjaan memakai sumber AHSP yang sama. QTO, Back Up Volume, BOQ, analisis dan rekap menjadi workspace terintegrasi; harga dasar, internal, penawaran, negosiasi dan kontrak tetap dibedakan. Pengadaan/keuangan tetap memiliki akses kontekstual. Detail penempatan, role, rumus dan kebijakan komersial belum otomatis disahkan.

Dokumentasi source `0ba177b583c16b9e99bd4797f618a977032005a7` memuat strategi, peta navigasi usulan dan50pemeriksaan:10NAV,8VIS,12RAB,6DATA,8FLOW,6QA. Semua PLANNED_NOT_IMPLEMENTED,0/50 dinyatakanlulus. Sembilan paketP0–P8 memprioritaskan shell/navigasi dan kerangka visualRAB, kemudian master/QTO/BOQ/RAB, review/komersial, projectcore, jadwal/progres/operasional dan closeout. Rute target bukan rute yang sudah tersedia.36pemeriksaanHolsite lama perlu pemetaan; kelulusan lama tidak otomatis membuktikan target baru.

**CONFIRMED — DOKUMENTASI SAJA.** Tidak ada perubahan UI/fungsi/schema/izin, migrasi, deployment atau aktivasi pilot dalam penyusunan strategi. Runtime terakhir yang diverifikasi tetap `224fcd7d9edba84871457ab9723b633425319b0e`; tidak diperiksa ulang pada task strategi. Kedua Change Log lokal dibaca ulang; catatan kajian/strategi belum terbit ke tab demo dan akan ikut rilis fitur berikutnya. Automation tetap PAUSED. Sumber strategi dan matriks tersedia dalam docs source commit di atas. Validasi hanya struktur dokumen,50IDunik/semuaPLANNED, jumlah/menu navigasi dan tautan lokal; tidak mengklaim tes aplikasi.

Langkah berikutnya: rancangan rinci P0 dan implementasi P1 setelah instruksi implementasi; kecocokan screenshot desktop/HP dan satu alur AHSP→QTO→BUV/BOQ→RAB menjadi gerbang awal. Data nyata, UAT manusia dan PILOT_READY tetap terpisah.


## 2026-11-24 — Arkarupa: Master AHSP PDF dan template RAP

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `224fcd7d9edba84871457ab9723b633425319b0e`. Katalog awal diterbitkan pada `aa15b6a8a0c916e1494ba91fada2a871816f3251`, menggantikan `54914028dc0266b1496276db3a795976fd5fb9b4`; rilis akhir merapikan filter status pada HP. Demo yang sebelumnya memiliki nol AHSP Lampiran VI kini memuat seluruh **2.841 kode** dari indeks Cipta Karya edisi 47/SE/Dk/2026. Rincian 143 tabel/812 koefisien berasal dari delapan batch yang sudah diperiksa. Sebanyak **136 analisis langsung/767 koefisien** dipetakan ke template RAP dan 131 resource tanpa harga. **2.705 kode tetap Referensi**, termasuk tujuh detail RISHA yang belum boleh dihitung. Katalog kode lengkap bukan klaim seluruh koefisien PDF selesai.

Owner/QS dapat mencari kode/nama, memeriksa satuan dan sumber, mengisi volume, lalu memakai template untuk kebutuhan bahan, tenaga dan alat. Master menampilkan jumlah dan filter status memakai komponen pilihan bersama. Harga dasar diisi terpisah; harga kosong tetap belum lengkap. Impor transaksional/idempoten menjaga analisis perusahaan yang diedit dan snapshot RAP tersimpan. Perbandingan isi JSON kanonik mengatasi perubahan urutan kunci pada MySQL. Izin, harga pasar dan transaksi bisnis tetap.

Sembilan tes/2.742 asersi lulus untuk seluruh 136 analisis, harga kosong, impor ulang, isolasi perusahaan, snapshot, unit/set/konversi pembelian, template, approval serta PDF RAP. Uji impor memakai membership ketat; regresi lama mengikuti konfigurasi default dan mengaktifkan membership sesuai skenario. Regresi sempat terhambat drive lokal penuh, lalu memakai database disposable terpisah. Backend rilis akhir identik dengan source yang diuji; perubahan akhir hanya tampilan filter dan catatan.

Runner kanonik membuktikan backup terenkripsi, restore 73 tabel/10 berkas privat dan migrasi 28→29 pada disposable sebelum promosi katalog. Rilis filter tidak menambah migrasi. Versi aktif, enam file source, jumlah AHSP, checksum tabel bisnis di luar katalog dan lima entri Change Log cocok. Master AHSP serta pergantian filter pada 320/1440 lulus. UAT manusia, HP fisik, full suite, staging dan PILOT_READY tetap terbuka. Automation tetap **PAUSED**. Tidak ada tambahan klaim seluruh 36 pemeriksaan UI/UX lulus.

Langkah berikutnya: verifikasi rincian 2.705 kode tersisa per divisi dan pemetaan HSD lokal. Tujuh detail RISHA memerlukan pemeriksaan estimator atas lingkup, konversi dan analisis bertingkat. Riwayat 22 dan 24 November dipertahankan di kedua Change Log.

[Master AHSP](https://arkarupa-dashboard.vercel.app/katalog#ahsp-master-heading) · [Analisis yang dapat dipilih di RAP](https://arkarupa-dashboard.vercel.app/katalog?workState=verified#ahsp-master-heading).


### 2026-11-22 — Catatan baseline berbagi keuangan: alat lokal terblokir

**CONFIRMED — BLOCKED_BEFORE_IMPLEMENTATION; runtime demo tidak berubah.** Source lokal f881b4db8357b8fe4170643da101582ba1379543 hanya menambah Change Log. Versi aktif tetap54914028dc0266b1496276db3a795976fd5fb9b4. Rancangan rincian berbagi keuangan yang dapat diringkas dan fokus review belum diterapkan; belum ada screenshot sesudah atau kandidat UI baru yang lulus.

Baseline lokal gagal ketika navigasi login20detik menunggu respons awal32detik. Satu koreksi harness memakai DOMContentLoaded/HTTP200 dengan anggaran60detik dan navigasi45detik. Percobaan berikutnya gagal pada readiness MySQL30detik; engine baru siap53detik. Tidak mengulang baseline lagi dalam sisa waktu run. Patch readiness60detik disiapkan untuk review, belum dijalankan; satu koreksi login telah dipakai dan batas koreksi tidak direset. Executor/QA melanjutkan dari review patch dan identitas engine, lalu baseline penuh sebelum implementasi. Ini temuan alat lokal, bukan bukti demo publik rusak.

Empat baseline publik PM pada dua proyek320/1440 lulus empat kombinasi pilihan berbagi, judul tetap dan fokus review, tanpa POST. Ini perilaku existing, bukan fitur baru. Fingerprint tabel lokal tetap pada kegagalan pertama; DB disposable tersisa0 dan kedua engine owned berhenti secara graceful. Tiga tes SQL yang direncanakan NOT_RUN. UAT manual disiapkan/NOT_RUN; guidebookv2.2tetap336halaman. Kedua Change Log source dibaca ulang; entri17.39tidak diduplikasi. Tab publik masih memuat rilis004403, sementara173901/175401menunggu paket fitur lulus berikutnya. Tidak ada deploy hanya untuk catatan, perubahan aplikasi/schema/formula/izin/PDF atau data bisnis. Full-ID36/skor visual tidak bertambah; Owner publik, HP fisik, staging, UAT dan PILOT_READY tetap terbuka. Gate blocked sebelumnya tidak diulang. Pricing, trial, demo statis dan produk lain tetap.

[Workspace terakhir terverifikasi](https://arkarupa-dashboard.vercel.app/workspace?project=2#client-report-heading) · [Change Log terakhir terbit](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261122-004403).

## 2026-11-22 — Arkarupa: berkas yang layak untuk penerbitan klien

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime 54914028dc0266b1496276db3a795976fd5fb9b4, sebelumnya dbe8977c4053a0cb7b90c06b4cc247de37884058. Label formulir penerbitan khusus Owner diperbesar14→16px, jumlah berkas siap16px dan panduan format14px. Pilihan penerbitan hanya menawarkan berkas yang tersedia dengan MIME PDF/JPEG/PNG/WEBP, memakai PREVIEW_MIMES dari service yang sama. Ekstensi saja tidak menentukan kelayakan. Bila tidak ada berkas layak, tampil status kosong. Lihat lampiran proyek menuju indeks privat dengan fokus; input sementara tetap ada. Tindakan ini tidak menerbitkan dokumen.

16baseline/16kandidat lokal lulus pada320/1440:2kasus Owner dengan PDF/foto,2tanpa berkas layak dan12kasus peran tanpa panel. Seluruh tabel dan hash berkas privat tetap, zero POST. Tiga tes SQL/89asersi lulus versi dan arsip klien, idempotency, audit, unduhan scoped, filter berkas tersedia/MIME/proyek/role, keadaan kosong setelah file dihapus serta izin unduh internal. Write handler, service publikasi, schema, transaksi, izin, formula dan format PDF/CSV tidak berubah. Query Owner membaca path untuk kelayakan; path bukan properti publik Livewire.

Empat baseline/empat hasil publik PM hanya membuktikan panel penerbitan tersembunyi. Alur positif Owner belum diverifikasi melalui browser publik; bukti positif berasal dari fixture lokal. Canonical backup terenkripsi, restore disposable, promosi, autentikasi, empat hash runtime/CSS publik dan tiga anchor Change Log lulus. Kedua Change Log dibaca ulang; histori byte dan prefix dipertahankan. Guidebook v2.2 tetap336halaman/hash6d09af6c, ralat UI terpisah. UI-03/UI-05/UI-09 masih subset tanpa tambahan full-ID36/skor visual. Gate Escape picker/history/pagination RPC lama tidak diulang. UAT manusia, HP fisik, staging dan PILOT_READY tetap terbuka; proyek pilot nyata belum dipilih. Demo statis, pricing, trial dan produk lain tetap.

[Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#client-document-publish) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261122-004403).

## 2026-11-22 — Arkarupa: rentang workspace dan pencarian asal

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source dan runtime dbe8977c4053a0cb7b90c06b4cc247de37884058, sebelumnya aee5ddb603e62f64a95613c10de769279f00dbc2. Pemicu Ubah periode progres diperbesar dari14menjadi16px. Tanggal mulai dan cut-off14px kini terlihat ketika filter tertutup, dalam format dd/mm/yyyy dengan atribut datetime ISO. Bantuan memakai14px. Form GET dan reset periode mempertahankan kata kunci pencarian asal yang telah disanitasi ketika masuk workspace. Setelah menerapkan tanggal atau kembali ke periode saat ini, Daftar proyek membawa pencarian tersebut dan memfokuskan jumlah hasil. Tanpa pencarian tidak ditambahkan field atau query kosong. Perubahan ini tidak mengubah saldo atau mencatat approval.

Sebanyak16baseline dan16kandidat lokal lulus untuk Owner, PM, Pelaksana dan Finance pada320/1440, dengan dan tanpa pencarian. Alur GET, reset, kembali ke direktori, proyek, tanggal, keyboard dan reflow diperiksa; tidak ada POST dan fingerprint tabel tetap. Delapan baseline dan delapan hasil publik PM pada dua proyek lulus. Baseline membuktikan hilangnya kata kunci sebelum perubahan. Tiga tes SQL dengan64asersi lulus untuk rekonsiliasi periode BUP dan versi baseline, penolakan tanggal invalid422tanpa posting serta membership daftar/survei/lampiran. Regresi formulir diperluas untuk ampersand dan tanda kutip yang terescape, URL reset dan query array yang dinormalisasi kosong. Backend, formula, schema, izin dan format laporan/PDF/CSV tetap.

Canonical backup terenkripsi, restore disposable, promosi, autentikasi, tiga hash runtime, CSS publik dan tiga anchor Change Log lulus. Kedua Change Log sumber/runtime dibaca ulang; histori byte dan prefix dipertahankan. Guidebookv2.2tetap336halaman dengan hash6d09af6c; ralat UI terpisah. Gate Escape picker, history dan pagination RPC lama tidak diulang atau dinyatakan pulih. UI-03/UI-09masih subset, tanpa tambahan full-ID36atau skor visual. UAT manusia, HP fisik, staging, Owner publik dan PILOT_READY masih terbuka. Proyek pilot nyata belum dipilih. Demo statis, pricing, trial dan produk lain tetap.

[Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261122-002902).

## 2026-11-22 — Arkarupa: pesan validasi dan pemulihan kalkulator

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime aee5ddb603e62f64a95613c10de769279f00dbc2, sebelumnya b212402e1ee5ad6183928c82c6532fd9e4465ff2. Pesan error bersama12→14px dengan pembungkusan teks; tautan pesan ringkasan14→16px dan hitungan14px. Saat validasi kalkulator gagal, Kembali ke ringkasan kesalahan mengembalikan fokus tanpa membuang input. Enter/Ke isian pertama menuju input invalid. Setelah koreksi50kg dan hitung ulang, ringkasan/pintasan hilang dan fokus menuju hasil3kemasan, sisa30kg, biayaRp180.000. Pintasan mencegah navigasi fragmen native saat JavaScript aktif agar fokus hanya dipindahkan sekali; href tetap tersedia sebagai fallback.

Delapanbaseline/delapankandidat lokal lulus pada320/1440:6alurOwner/PM/Finance dan2Pelaksana403. Dua baseline/duaafterpublik PM lulus invalid→pemulihan→kalkulasi valid. Semua hasil dan fingerprint tabel lokal tetap; RPC hanya calculate dengan lima field yang dikenal pada kelas Calculator dan exactURI dari DOM. Tiga SQLtes/39asersi lulus konversi/pembulatan/unit invalid, snapshotbasis/angka besar/recalculate dan kalkulator+persistensi katalog disposable. SQL dilakukan sebelum koreksi satu handler fokus; backend hashidentik dan UI final diretest penuh. Formula/schema/izin/formatlaporanPDFCSV tidak berubah.

Baselineharness dikoreksi melalui metadata request, URI Livewireberhash dan nama kelas namespace aktual. Notifikasi __dispatch tetap tidak diizinkan; gate notification/pagination lama tidak dinyatakan pulih. Candidate pertama5/6alurpositif lalu fokusFinance1440gagal; satu koreksi preventdefault+fokus/scroll tunggal menghasilkan8kasusfinalPASS. Gatehistory/Esc lama tidakdiretry. Canonical backupterenkripsi/restoredisposable/promosi/autentikasi,4hashruntime/CSSpublik serta3anchorChangeLog lulus. Entri guidebookv2.2yang sebelumnya antre kini ikut terbit; PDF tetap336halaman dan screenshotce511cf7, ralatUIterpisah. UI-09.2/3subset, tidak menambah full36ID/skorvisual. UATmanusia/HPfisik/staging/Ownerpublik/PILOT_READY terbuka; proyekpilotnyata belumdipilih. Demo statis/pricing/trial/produk lain tetap.

[Kalkulator](https://arkarupa-dashboard.vercel.app/kalkulator) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261122-001302).

### 2026-11-22 — Catatan dokumentasi Arkarupa: manual bergambar v2.2

**CONFIRMED — DOCUMENTATION_LOCAL_VALIDATED; bukan rilis fitur atau UAT.** Guidebook operasional diperjelas menjadi336halaman A4,149screenshot asli pada33kelompok layar,44bookmark dan88tautan. Petunjuk76kelompok model isian kini membedakan identitas klien/proyek/pekerjaan, BUP/opname tambahan versus sertifikat kumulatif, fraction versus persen/rupiah, total komponen manual, ETC biaya sisa dan isi/harga kemasan. Ralat tampilan sesudah snapshot digabung ke PDF. Semua336halaman dirender,13cek aritmetika dan22cek editorial lulus; v2.1 tetap utuh.

Source dokumentasi 5c97119f352da8b9bcb5518fb3ac5fcdeeb64b65; catatan ChangeLog kandidat Laravel 3d18d074e96c74d2b698b73900d31379856f70b7. SHA256 PDF6d09af6c451070f80097d770038757560829d0bc180b9a1221e6b44e568c1721. Screenshot tetap snapshot sintetis sourcece511cf7fed496e2d7a7f4affe27c0cb7d4d469b; bukan capture baru dari demo aktif. Runtime demo diperiksa read-only tetapb212402e1ee5ad6183928c82c6532fd9e4465ff2/serviceactive. KeduaChangeLogsource dicatat; entri publik baru belum dipromosikan. Dokumen tersedia lokal, tidak dipublikasikan ke website lewat task ini. Tidak ada perubahan aplikasi, formula, schema, akun, data bisnis atau gate36. Staging/UAT/HPfisik/PILOT_READY tetap terbuka; blocker sebelumnya tidak diretry. Pricing, workflow produk dan aktivasi tetap.

## 2026-11-21 — Arkarupa: riwayat serah terima dan review panjang

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime b212402e1ee5ad6183928c82c6532fd9e4465ff2, sebelumnya8f0e9b7. Source awal d6b7a43 hanya menambah log terblokir yang belum terbit; entri tersebut kini ikut rilis fitur ini. Tanggal serah terima/retensi tampil dd/mm/yyyy dengan datetime ISO tetap. Identitas versi15→16px dan label catatan13→14px. Catatan review lebih dari240karakter memakai native details dengan jumlah karakter; Enter/Space membuka/menutup dan fokus tetap pada ringkasan. Catatan pendek terlihat langsung, kosong tetap Belum diisi. Bukti berita acara, kewajiban tersisa dan peringatan sumber berubah tetap tampak penuh. Pembukaan catatan tidak mengajukan, menyetujui, melunasi atau menutup proyek.

16baseline/16kandidat lokal lulus pada320/1440:4alur Owner/PM,4keadaan tanpa riwayat dan8kasus peran tanpa riwayat. Sumber teks, tanggal, status, hash dan reflow tetap; seluruh POST diblokir dan fingerprint tabel utuh. Fixture mematok3catatan historis untuk pengujian tampilan, bukan bukti serah terima nyata. Empat baseline/empat after publik PM semuanya0riwayat: hanya kondisi kosong diverifikasi publik; bukti positif disclosure hanya lokal. Tidak menambah data publik untuk uji.

Tiga tes SQL baru/38asersi lulus upah parsial tanpa biaya ganda, reviewer Owner berbeda/penolakan sumber stale dan progres tepat100% pada bobot pecahan nonterminating. Formula, schema, gate, query dan format PDF/CSV tetap. Canonical backup terenkripsi/restore disposable, promosi segar/auth smoke, tiga hash runtime/CSS publik dan render Change Log lulus. Kedua Change Log dibaca ulang, termasuk entri blocked23.23 yang kini terbit tanpa mengubah hasil historisnya. Guidebookv2.1 tetap335halaman dengan ralat UI terpisah.

Gate baseline pencarian Change Log, Esc workspace dan pagination RPC lama tetap BLOCKED/tidak diretry. UI pencarian Change Log tidak diterapkan. Tidak menambah full-ID36 atau skor visual. Fullsuite/hostedCI, Owner publik, HPfisik, staging, UAT manusia dan PILOT_READY belum dibuktikan. Proyek pilot nyata belum dipilih. Demo statis/pricing/trial/entitlement/produk lain tetap.

[Penutupan workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#project-closeout) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-234301).

## 2026-11-21 — Arkarupa: baseline Change Log terblokir, rilis tidak dilakukan

**CONFIRMED — BLOCKED_NO_UI_RELEASE; NOT_BUSINESS_READY.** Source dokumentasi d6b7a43d3eeddc97b4fe7c3b99507c958420e4f2 hanya menambah catatan run terblokir. Runtime terakhir tetap 8f0e9b7a8da4bf536b0b669f81d41cc80fc67ff0; service dan CSS publik exact dibaca ulang. Tidak ada implementasi/publikasi UI baru atau redeploy hanya untuk checkpoint.

Rancangan label snapshot teknis historis dan pencarian lokal Change Log disiapkan sebagai patch terpisah, belum diterapkan. Baseline browser tidak lengkap: satu kasus Owner320 membuka701entri lulus; desktop/peran lain belum selesai. Kegagalan awal meliputi native Node Windows exit-1073740791 dan screenshot timeout, lalu selector ambigu karena dua native details berbagi nama. Dua correction rounds dipakai untuk serialisasi browser/Chrome tanpaGPU dan selector unik. Percobaan terakhir gagal karena runner menganggap navigasi URL sama selalu mengembalikan respons HTTP; respons null dibaca statusnya. Ini kesalahan asumsi alat, bukan bukti aplikasi rusak. Gate dihentikan sesuai sagadevs-deployment; tidak mengganti nama kandidat untuk mereset batas.

Tiga tes SQL independen/44asersi lulus untuk katalog company-scoped/read-only, akses akun scoped/reversible/revocation dan draf server/revisi serentak. Database disposable dihapus dan proses owned berhenti. Gate Esc workspace dan pagination RPC lama tidak diretry. Format PDF/CSV, data, formula, schema dan akses produk tidak berubah.

Kedua Change Log source ditulis/dibaca ulang, histori/tanggal dipertahankan. Entri publik run23.23 antre untuk rilis fitur lulus berikutnya; belum ditampilkan sebagai rilis baru. Owner publik belum diuji karena password item vault belum tersedia; tidak direset. Tidak menambah full-ID36, skor visual atau PILOT_READY. Staging/HPfisik/UAT/proyek nyata tetap terbuka; guidebookv2.1 tetap335halaman. Fullsuite/hostedCI NOT_RUN. Demo statis/produk lain tetap.

PIC executor/QA: pisahkan pemeriksaan status HTTP dari navigasi hash/URL sama; siapkan penanganan null yang tetap memverifikasi status dokumen, lalu review langkah unblock sebelum retry. [Tautan rilis terakhir terverifikasi](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-230801).

## 2026-11-21 — Arkarupa: tanggal foto terbaca dan pemulihan pencarian

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime 8f0e9b7a8da4bf536b0b669f81d41cc80fc67ff0, sebelumnya b706c31. Nama lokasi foto 14→16px; tanggal ISO 13px menjadi dd/mm/yyyy 14px dengan datetime ISO tetap. Pencarian menerima ISO maupun bentuk tampilan. Kondisi tanpa hasil mempunyai Tampilkan semua foto: query dikosongkan, fokus kembali ke pencarian dan pilihan foto tetap pada formulir. Tidak menerbitkan laporan atau mengubah file/data karena pencarian dipulihkan. Komposisi Holsite, monokrom, Plus Jakarta Sans, ikon existing dan reduced motion tetap.

16 baseline dan16 kandidat lokal lulus pada320/1440:4alur foto positif Owner/PM,4keadaan tanpa foto dan8kasus peran terbatas. Enter/Space, ISO/tanggal tampilan, sumber, pilihan, hash unduhan PNG privat dan reflow lulus; seluruh POST diblokir dan fingerprint tabel tetap. Fixture mempunyai5foto privat terverifikasi melalui FieldCommands. Helper RAP/kontrak/jadwal memakai accepted quote yang dipatok untuk uji downstream; ini bukan bukti penerimaan penawaran atau UAT komersial. Empat baseline/empat after publik PM semuanya0foto eligible: hanya kondisi kosong dan tipografi jumlah yang diverifikasi publik. Bukti positif pemulihan foto hanya lokal. Tidak menambah data publik untuk menciptakan bukti.

Tiga tes SQL baru/49asersi lulus pemakaian material tanpa posting ulang biaya/progres, reload/reject laporan/izin foto/isolasi lintas proyek, dan snapshot termin portal opt-in/frozen/revocable. Formula, schema, gate, query server dan format PDF/CSV tetap. Canonical backup terenkripsi/restore disposable, promosi segar/auth smoke, tiga hash runtime/CSS publik dan render Change Log lulus. Kedua Change Log dibaca ulang. Guidebookv2.1 tetap335halaman dengan ralat UI terpisah.

Gate Esc pemilih bagian dan pagination RPC lama tetap BLOCKED/tidak diretry. Tidak menambah full-ID36 atau skor visual. Fullsuite/hostedCI, Owner publik, HPfisik, staging, UAT manusia dan PILOT_READY belum dibuktikan. Proyek pilot nyata belum dipilih. Demo statis/pricing/trial/entitlement/produk lain tetap.

[Pemilih foto Portal Klien](https://arkarupa-dashboard.vercel.app/workspace?project=2#portal-photo-selector) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-230801).

## 2026-11-21 — Arkarupa: tautan Portal Klien terbaca dan salin dengan pemulihan

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime b706c313a5f7f7535a49126b92e08b43e9578b35, sebelumnya d03f13a. Label dan URL Portal Klien14→16px, petunjuk13→14px dalam panel monokrom. Salin tautan memakai Clipboard API native dan konfirmasi setelah berhasil; saat ditolak, URL readonly dipilih dan petunjuk menyalin manual muncul. Pilih tautan tetap tersedia. Pola clipboard memakai implementasi existing Change Log; inputtext readonly/inputmodeurl mendukung seleksi native yang dapat diperiksa. Tidak menerbitkan laporan, mengirim pesan, mengubah akses klien atau menerbitkan data karena menyalin URL.

16baseline/16kandidat lokal pada empat peran, dua proyek dan320/1440 lulus:8alur Owner/PM mencakup8salin native,8fallback ditolak terkontrol,8retry;8kasus Pelaksana/Finance tanpa kontrol penerbitan. Draf judul, URL, proyek, sumber dan data tetap; seluruh POST diblokir setelah login dan fingerprint seluruh tabel identik. Empat baseline/empat after publik PM membuktikan native clipboard, fallback, retry dan reflow pada dua proyek320/1440. Tidak ada koreksi harness pada run ini.

Tiga tes SQL baru/282asersi lulus saldo satu mandor per divisi/proyek, portal hanya progres terverifikasi/foto dipilih/klien ditugaskan, dan integritas/scope PDF invoice. Rumus, schema, gate, query serta format PDF/CSV tetap. Canonical backup terenkripsi/restore disposable, promosi segar/auth smoke, tiga hash runtime/CSS publik dan render Change Log lulus. Kedua Change Log dibaca ulang. Guidebookv2.1 tetap335halaman dengan ralat terpisah untuk kontrol baru.

Ini irisan independen dari gate Esc pemilih bagian dan pagination RPC lama; keduanya tetap BLOCKED/tidak diretry. Tidak menambah full-ID36 atau skor visual. Fullsuite/hostedCI, Owner publik, HPfisik, staging, UAT manusia dan PILOT_READY belum dibuktikan. Proyek pilot nyata belum dipilih. Demo statis/pricing/trial/entitlement/produk lain tetap.

[Portal Klien dalam workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#client-report-heading) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-225301).

## 2026-11-21 — Arkarupa: keterbacaan tahap workspace; Esc masih terblokir

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime d03f13a0cfb086caba5a46aafafc2c327f22fb63, sebelumnya 8818f778. Judul kartu tahap proyek14→16px dan keterangan12→14px. Komposisi Holsite, monokrom, Plus Jakarta Sans, SVG original dan reduced motion tetap. Hanya CSS dan Change Log dirilis; template workspace, sumber data, navigasi, gate, formula, schema dan format PDF/CSV tidak berubah.

16baseline/16visual-after empat peran, proyek seed/kosong dan320/1440 lulus keterbacaan/reflow; sumber kartu, tautan dan progres identik. Seluruh POST diblokir setelah login dan fingerprint seluruh tabel tetap. Tiga tes SQL final/53asersi lulus koreksi pemakaian stok sekali/histori/izin, periode GET workspace valid-invalid, konteks akses tim read-only. Empat baseline/empat after publik PM pada dua proyek320/1440 membuktikan keterbacaan dan sumber yang sama tanpa POST. Canonical backup terenkripsi/restore disposable, promosi segar, auth smoke, dua hash runtime/CSS publik dan render Change Log lulus.

**UX Esc BLOCKED, PATCH EXCLUDED.** Urutan keyboard Semua bagian belum selesai setelah dua koreksi gate fokus: tunggu async dan pembatalan hash-focus tertunda. Final timeout30s pada PM/proyek kosong setelah5kasus. Patch dan kegagalan disimpan; template workspace dikembalikan ke sumber sebelumnya sebelum tes final. Tidak dirilis, tidak diberi PASS, tidak diulang dengan nama kandidat lain. Dua koreksi baseline harness (selector label dinamis/ekspektasi role) terpisah dari gate fokus tersebut. PIC executor berikutnya perlu mengisolasi kondisi expanded/hash/activeElement pada kasus terakhir sebelum langkah unblock. Gate pagination RPC lama juga tetap BLOCKED/tidak diretry.

Kedua Change Log dibaca ulang. Guidebookv2.1 tetap335halaman dengan ralat visual terpisah; bukan panduan fitur Esc baru. Tidak menambah full-ID36/skor visual. Fullsuite/hostedCI, Owner publik, HPfisik, staging, UAT manusia dan PILOT_READY belum dibuktikan. Proyek pilot nyata belum dipilih. Demo statis/pricing/trial/entitlement/produk lain tetap.

[Tahap proyek workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#workspace-workflow) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-223330).

## 2026-11-21 — Arkarupa: identitas dokumen dan filter jenis kosong lokal

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime 8818f778e8d5d1259990642f403574c7734088f7, previous7c5b384. Dokumen proyek pada Dashboard/workspace memakai identitas16px dan waktu Dicatat dd/mm/yyyyHH:mm14px; ISO/waktu sumber tetap, tanpa konversizona baru. Checkbox Sembunyikan jenis kosong hanya menyaring kartujenis tanpa entri pada halaman ini. Jumlah sumber, pencarian, proyek, halaman, URL dan berkas tetap; uncheck memulihkan semua jenis. Jika seluruhjenis pada halaman kosong, petunjuk menjelaskan cara memulihkan tampilan. Default menampilkan semua jenis. Palet monokrom dan PlusJakartaSans tetap.

32baseline/32candidate Owner/PM/Pelaksana/Finance320/1440 pada dua halaman/berisi-kosong lulus label/date/datetime/reflow, Space/touch44px, fokus/count/URL/search tetap, privatePDFhashexact dan roleprojection. SeluruhPOST diblokir, fingerprint seluruhtabelutuh. Fixture mempunyai45lampiranbaru ditambah1seed sehingga46sumber/6entrihalaman3; asumsi awal5dikoreksi pada harness sebelumeditaplikasi, bukti gagal disimpan.

TigaSQLbaru34asersi lulus: konversisatuan/pembulatankemasan/incompatibility AHSP; unduhanlampiranprivat berizin/tidakdiwebroot; dokumensearch/pagination/sumberlama/literalwildcard/projectscope/role dan HTML. Testdokumensearch dijalankan ulang karenaBladenya berubah;25asersi historis tidak dipakai sebagai penerimaanHTML baru. Query/rumus/role/schema/form/formatPDFCSV tidak berubah.

GatebrowserRPCpagination dari runsebelumnya tetapBLOCKED dan fiturHalamanpertama tidak diimplementasikan. Ini irisan GET/filterAlpinelokal independen, bukan retry atau penggantian kandidat gategagal tersebut. Delapan publicbaseline/delapan after PM pada dua proyek/dua halaman320/1440 membuktikan filter tampilan dan sumber tetap tanpaPOST. Seluruhkosong positif diuji lokal; fixturepublik berisi dokumen. Canonical encryptedbackup/disposablerestore/authsmoke, tiga hash runtime/CSSpublik dan actualChangeLogrender lulus.

KeduaChangeLog dicatat/dibaca ulang; entri blocked21.51 kini ikut terbit, status historisnya tetap. Guidebookv2.1 tetap335halaman/hashb25cbbac67b7adf27ecf765d100f81ffda0f6c80d943f8315de7f6d87f54e9e9, ralat terpisah; PDF belum dipublikasikan website. Staticdemo tetap. Tidak menambah full-ID36 atau skorvisual. Ownerpublik/HPfisik/staging/UAT/proyeknyata/PILOT_READY terbuka; fullsuite/hostedCI NOT_RUN. Tidak mengubah pricing/trial/entitlement atau produk lain.

[Dokumen workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#project-documents) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-221130).

## 2026-11-21 — Arkarupa: tanggal tindak lanjut dan alasan panjang

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `7c5b3842b0528920bacbe50e8077266b4d6645d2`, previous `a5f8f85`. Komponen Pekerjaan berikutnya pada Dashboard dan workspace memakai tanggaldd/mm/yyyy14px dengan ISOdatetime dan urutan sumber tetap. Alasan lebih160karakter dibuka melalui disclosure native Alasan tindak lanjut; alasan pendek tetap terlihat. Identitas proyek/PIC, tanggal dan Tindak lanjuti tidak disembunyikan. Enter/Space membuka; Escape menutup, memulihkan fokus dan membawa summary terlihat setelah pengguna menggulir. Nama akses memuat seluruh teks label terlihat.

32baseline/32final browser Owner/PM/Pelaksana/Finance pada320/1440 dan dua halaman lulus alasan panjang/hasil kosong, sourceexact/dateformat, escapedtext, keyboard/44px/deepscrollfocus, reflow dan URL/project/pencarian/sourceurl tetap. Finance tidak memperoleh kendala lapangan lewat pencarian.32first-after dan32fase label dipertahankan; final32 diulang setelah nama akses/fokusperguliran dilengkapi. Semua businessPOST diblokir, fingerprint seluruhtabel tetap. DuaMySQLtes30asersi membuktikan laporanlama tetap masuk tugas/pencarian/deeplink dan PDFinvoiceklien sesuai scope/integritasfile. SQLsekali sebelum perubahan atributakses/fokus terakhir, service/controller/test tetap. Fixture downstreampinnedaccepted bukan bukti deal baru.

Delapan publicbaseline/delapan after PM pada dua proyek/dua halaman/dua viewport lulus: satu proyek kosong, satu berisi dua tugas dengan satu tanggal. Alasan pendek publik tetap terlihat; alasan panjang positif hanya lokal, tanpa menambahkan tugas atau notifikasi publik. Canonical encryptedbackup/disposablerestore/authsmoke, tiga hash runtime, CSSpublik dan actualChangeLogrender lulus. Rumus/schema/role/query/form/formatlaporanPDFCSV tidak berubah; staticdemo tidak berubah.

KeduaChangeLog dicatat/dibaca ulang; guidebookv2.1 tetap335halaman/hashb25cbbac67b7adf27ecf765d100f81ffda0f6c80d943f8315de7f6d87f54e9e9 dengan ralat terpisah. PDF belum dipublikasikan website. Tidak menambah full-ID36 atau skor visual. Ownerpublik/HPfisik/staging/UAT/proyeknyata/PILOT_READY terbuka; fullsuite/hostedCI NOT_RUN. Tidak mengubah pricing/trial/entitlement atau produk lain.

[Workspace/Pekerjaan berikutnya](https://arkarupa-dashboard.vercel.app/workspace?project=2#project-tasks) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-213229).

## 2026-11-21 — Arkarupa: ringkasan nota dan navigasi pencocokan

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `a5f8f856502b6ac54ca692a62679a2a91daea0a2`, previous `4ec596e`. Ringkasan rekonsiliasi pada Keuangan/Utang supplier kini menampilkan identitas nota, Total nota tersimpan24px dan tanggaldd/mm/yyyy. Label dan total memakai bidang penuh sehingga nilai tidak terbelah pada320px. Nilai tetap snapshot tersimpan, bukan posting tagihan otomatis. Native Ke rincian pencocokan/Kembali ke ringkasan nota memindahkan fokus tanpa mengganti proyek/tahap atau menghapus filter Hanya baris belum lengkap. Service/rumus/schema/role/form/format laporanPDFCSV tetap.

12baseline/12final browser Owner/Finance/PM pada320/1440 lulus nilai/sumber/status, rolepreparebuttons, reflow, satu baris nominal, Enter/fokus/query dan filter tetap saat bolak-balik. Inspeksi visual pada12first-after menemukan nominal24px terbelah; CSS diberi bidang penuh dan12final diulang. First-after disimpan, tidak diklaim hasil final. Seluruh businessPOST diblokir dan fingerprint semua tabel tetap. Dua tesMySQL46asersi lulus rekonsiliasi/preparation/role/projectscope dan pencocokan penerimaan satu kali/kuantitas neto setelah retur. SQL sekali sebelum koreksiCSS, PHP/test/service tidak berubah.

Canonical encrypted backup/disposable restore, authsmoke, tiga hash runtime, CSS publik dan actualChangeLogrender lulus. Delapan baseline Finance kosong/invalid pada runtime4ec yang sama dipakai kembali; delapan publicafter lulus dua proyek320/1440. Tidak ada nota publik sehingga selected-positive hanya lokal; tidak menciptakan nota publik untuk verifikasi. Ownerpublik/HPfisik/staging/UAT/proyeknyata/PILOT_READY tetap terbuka. Tidak full-ID36 atau skorvisual baru; fullsuite/hostedCI NOT_RUN.

Entri Change Log source yang sebelumnya menunggu paket (gate baseline tertahan dan manualv2.1) kini ikut terbit dan anchor aktual diverifikasi satu kali. PDFmanualv2.1 tetap335halaman/hashb25cbbac67b7adf27ecf765d100f81ffda0f6c80d943f8315de7f6d87f54e9e9; ralat layar baru terpisah. PDF belum dipublikasikan pada website. Static demo tidak berubah.

[Rekonsiliasi nota demo](https://arkarupa-dashboard.vercel.app/keuangan?project=2&stage=utang#finance-note-title) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-211729). Tidak mengubah pricing/trial/entitlement atau produk lain.

## 2026-11-21 — Arkarupa: koreksi manual bergambar v2.1 (dokumentasi)

**CONFIRMED — DOCUMENTATION_LOCAL_VALIDATED; NOT_BUSINESS_READY.** Manual operasional bergambar v2.1 menggantikan v2 sebagai file panduan yang direkomendasikan. Inspeksi visual lanjutan menemukan penanda posisi otomatis dashboard v2 tidak sesuai dengan kontrol pada screenshot. V2.1 menghapus semua overlay/legenda koordinat dan menggunakan nama tombol serta kolom dalam tabel referensi per fitur. PDF v2 dan screenshot asli dipertahankan; angka149gambar beranotasi pada catatan historis v2 bukan klaim pemetaan koordinat yang sudah terbukti benar.

V2.1 memiliki335halamanA4,149screenshot asli pada33kelompok layar,43bookmark dan86tautan. Katalog fungsi tombol/kolom, peran/prasyarat/langkah/hasil/pemulihan, alur proyek sampai closeout, RAP/AHSP, backupvolume, BUP/progres, pengadaan, upah dan keuangan tetap. Berkurang389ke335halaman karena legenda duplikat dihapus. Seluruh335halaman dirender, teks searchable, font PlusJakartaSans/InstrumentSerif tertanam dan13cek aritmetika lulus. InstrumentSerif masih interpretasi sementara atas nama IsomensSerif yang belum dikonfirmasi.

PDF `Arkarupa-Manual-Operasional-Bergambar-v2.1.pdf` SHA256 `b25cbbac67b7adf27ecf765d100f81ffda0f6c80d943f8315de7f6d87f54e9e9`; screenshot source `ce511cf7fed496e2d7a7f4affe27c0cb7d4d469b`. Provenance log/source `6a72e1896fb90a97d09b99bc7ef9063ef71396e3`. Ini koreksi dokumentasi lokal, bukan perubahan fitur atau rilis aplikasi. Demo runtime terakhir diverifikasi tetap `4ec596ef3fd5a4664e6b13022cba529e52337d17`; PDF baru belum dipublikasikan di website. Source Change Log sudah mencatat koreksi tetapi menunggu paket runtime berikutnya. Tidak menambah full-ID36 atau skor desain. Capture sintetis bukan fullworkflowUAT; perangkatfisik/Ownerpublik/staging/proyeknyata/PILOT_READY tetap terbuka. Tidak mengubah pricing/trial/permission/schema atau produk lain.

[Dashboard demo](https://arkarupa-dashboard.vercel.app/) · [Panduan dalam aplikasi](https://arkarupa-dashboard.vercel.app/panduan-demo). Jangan menganggap seluruh fixture buku tersedia pada demo publik.

## 2026-11-21 — Arkarupa: draf nota dan navigasi penerimaan terkait

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `4ec596ef3fd5a4664e6b13022cba529e52337d17`, previous `7fb3cac`. Riwayat nota menampilkan status Draf tersimpan, nomor18px, total20px, tanggal14px serta garis netral untuk draf aktif. Angka riwayat tetap dari snapshot yang tersimpan, berbeda dari input editor yang belum disimpan dan tidak berarti posting biaya. Editor memiliki pintasan native Ke penerimaan terkait dan Kembali ke editor draf; fokus berpindah ke heading tanpa mengganti proyek/tahap atau menyimpan otomatis. Guard peran, service/form/schema/formula dan format PDF/CSV tetap.

10baseline/10kandidat browser Owner/Purchasing/Finance pada320/1440 lulus drafbaru/aktif/nomor panjang, totalexact, reflow, Enter/fokus/konteks dan input sementara yang terjaga saat bolak-balik. Finance tanpa manage-purchase tetap tidak memiliki editor/pintasan. Fingerprint semua tabel utuh; hanya RPC pembacaan/openNote atau state component. Dua tesMySQL75asersi lulus save/reopen/revisi/idempotency serta drafttanpapostingstockcostcash dan upload/privateattachment/projectroleisolation.

Canonical encrypted backup/restore73tabel/10berkas/28migrasi, auth smoke, tiga hash runtime, CSS publik serta render Change Log lulus. Empat baseline/empat publik Purchasing pada dua proyek320/1440 membuktikan kondisi editor baru/kosong dan nativejump; riwayat terisi/aktif positif hanya lokal karena tidak ada nota pada fixture publik, tanpa membuat nota publik. UAT manusia/perangkat fisik/Owner publik/staging/proyek nyata/PILOT_READY tetap terbuka. Guidebookv2 snapshotce511cf dipertahankan dengan ralat terpisah; kedua Change Log diperbarui/dibaca ulang. Tidak ada full-ID36 atau skor desain baru; fullsuite/hostedCI NOT_RUN.

[Draf nota demo](https://arkarupa-dashboard.vercel.app/pengadaan?project=2&stage=nota) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-204426). Static demo tidak berubah. Tidak mengubah pricing, trial, entitlement atau produk Saga lain.

## 2026-11-21 — Arkarupa: validitas penawaran dan navigasi dokumen resmi

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `7fb3cacd193d3ef1e30c2355803a4731c9bfa17d`, previous `ce511cf`. Tanggal masa berlaku kini berlabel dd/mm/yyyy18px di histori dan versi penawaran terpilih. Kondisi issued yang sudah lewat tanggal memakai garis putus-putus netral dan petunjuk meninjau penerimaan; predicate dan aturan expiry server tidak berubah. Pratinjau menyebut versi, dibedakan dari dokumen terbit, serta memiliki pintasan native Ke status & PDF resmi yang memindahkan fokus ke panel dokumen tanpa mengganti proyek/tahap. Nomor dan tautan HTML/PDF tetap berasal dari versi sumber; keadaan belum terbit dijelaskan. Server/schema/rumus/izin/form dan format PDF/CSV tidak berubah.

12baseline/12kandidat browser Owner/QS/PM pada320/1440 lulus future/expired, tanggal, tautan, fokus, reflow dan unduhan PDF exact. Enam QA tambahan PM mencakup future/expired/belumterbit dan memperbaiki posisi kamera bukti HP. Fingerprint bisnis utuh/zero businessPOST. Dua tesMySQL79asersi lulus expiry/zero-ratio/idempotency/foreignscope serta alur issue-accept-contract-VO/privatePDFimmutable; tidak menjalankan fullsuite.

Canonical runner membuktikan encrypted backup/restore73tabel/10berkas/28migrasi sebelum promosi, lalu auth smoke, empat hash runtime, CSS publik dan render Change Log. Dua baseline/dua kasus publik PM pada satu proyek berquote memverifikasi state ready/nonexpired dan PDFexact; kondisi expired positif hanya lokal. Source Change Log dokumentasi guidebook19.31 turut terbit dalam paket ini. Guidebookv2 tetap snapshotce511cf dengan ralat label terpisah; tidak menimpa PDF/histori. Lembar UAT manusia disiapkan NOT_RUN; Owner publik/perangkat fisik/staging/UAT/proyek nyata/PILOT_READY terbuka. Tidak menambah full-ID36 atau skor kualitas visual.

[Penawaran demo](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=penawaran) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-202726). Static demo tidak berubah. Tidak ada perubahan pricing, trial, entitlement atau produk Saga lain.

## 2026-11-21 — Arkarupa: manual operasional konstruksi bergambar v2

**CONFIRMED — DOCUMENTATION_LOCAL_VALIDATED; PUBLIC_RUNTIME_UNCHANGED; NOT_BUSINESS_READY.** Atas klarifikasi Andreas, guidebook ringkas v1 dikembangkan menjadi PDF A4 389halaman dengan 149gambar layar/popup aktual beranotasi, petunjuk tombol/kolom, peran/prasyarat/langkah/hasil/pemulihan, daftar isi klik dan43bookmark. Mencakup33kelompok layar: proyek/akses, survei dan backup volume, RAP manual/AHSP, penawaran/deal/kontrak/VO, jadwal/Gantt/KurvaS, BUP, material/absensi/pengadaan/upah, forecast/tagihan/kas, portal dan closeout. “Backup volume/progress” dibedakan dari backup database. Screenshot memakai fixture sintetis; harga/pajak contoh bukan kebijakan operasional.

Source layar `ce511cf7fed496e2d7a7f4affe27c0cb7d4d469b`; provenance entri dokumentasi lokal `2bf96bffc70c0fb3fedaca4889383745fa766fe8` (hanya Change Log, belum dirilis). Artifact `Arkarupa-Manual-Operasional-Bergambar-v2.pdf`, SHA256 `69e226c50d0313e6cb55a6f492a18c4b1148224e14490faef25d4e9c231212d2`. Semua389halaman dirender, teks searchable, font Jakarta/Instrument embedded dan13contoh aritmetika lulus.479capture bukan479skenario QA; fingerprint bisnis tetap dan disposable dibersihkan. Tidak menjalankan ulang fullsuite atau menyatakan workflow/perangkat fisik UAT lulus. Satu penanda margin angka32% diperiksa visual dan berada dalam halaman. V1 dipertahankan.

Plus Jakarta Sans digunakan untuk isi dan Instrument Serif untuk judul; interpretasi atas permintaan “Isomens Serif” tetap **ASSUMPTION** sampai konfirmasi. Manual diserahkan sebagai artifact lokal, belum dihosting pada website. Kedua Change Log lokal/jadwal ditulis dan dibaca ulang, termasuk waktu asli pemicu yang tertunda saat lock tugas buku. Demo publik terakhir pada checkpoint sebelumnya tetapce511cf; tidak ada deploy, perubahan fitur/schema/rumus/izin atau aktivasi baru dari dokumentasi ini. Staging/UAT/HP fisik/proyek nyata/PILOT_READY tetap terbuka. Next: latihan operator pada perangkat nyata serta lanjutkan UI yang siap; sertakan entri dokumentasi pada paket fitur berikutnya, tanpa rilis checkpoint tersendiri.

[Dashboard demo](https://arkarupa-dashboard.vercel.app/) · [Panduan demo](https://arkarupa-dashboard.vercel.app/panduan-demo). Tidak memengaruhi pricing, trial, entitlement atau produk Saga lain.

## 2026-11-21 — Arkarupa: konteks review dokumen diajukan

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; REVIEW_GUIDANCE_LOCAL_VALIDATED; NOT_BUSINESS_READY.** Source/runtime `ce511cf7fed496e2d7a7f4affe27c0cb7d4d469b`, previous `db23baf`. RAP/penawaran submitted yang sedang dipilih menampilkan kartu monokrom jenis/versi dan Menunggu persetujuan Owner. Penyusun Owner mendapat alasan memerlukan Owner lain; QS/PM mendapat arahan sesuai peran. Owner berbeda mendapat pintasan native ke tombol approval RAP atau kolom alasan penawaran existing. Enter memindahkan fokus tanpa menyetujui otomatis; proyek/tahap tetap. Server, rumus, schema, izin, form dan format PDF/CSV tidak berubah; tidak ada fitur request revisi baru.

24 baseline/24 final HTTP Owner/QS/PM pada 320/1440 mencakup dua penyusun dan RAP/quote; peran/tombol/fokus/reflow serta computed border lulus. Semua tabel fingerprint utuh; hanya pemilihan versi/read RPC. Dua tes MySQL/33 asersi lulus penolakan self-approval Owner, fresh snapshot tetap, approver berbeda tersimpan, guidance hilang setelah approved serta margin/markup/diskon/exception. Tes diulang setelah memperkuat fresh assertion; CSS border specificity dikoreksi dan 24 HTTP diulang, bukti awal dipertahankan.

Canonical encrypted restore 73 tabel/10 berkas/28 migrasi, auth smoke, empat hash runtime/CSS dan log render lulus. Delapan baseline/delapan publik PM memverifikasi kondisi non-submitted; positive0 karena fixture publik saat ini tidak submitted, tanpa mutasi untuk membuat status. Positif Owner/QS/PM hanya lokal; Owner publik, HP fisik, staging/UAT dan PILOT_READY tetap terbuka. Tidak ada fullID36 atau skor visual baru. [Penawaran demo](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=penawaran), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-191055).


## 2026-11-21 — Arkarupa: label perbandingan VO dan kembali ke lingkup

**CONFIRMED — DEMO_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `db23bafe010614f53195703d4c7c771267f6917d`, previous `62af4a0`. Volume dan nilai jual Sebelum–Sesudah VO kini berlabel dengan angka 16px memakai pola metrics existing. Setiap VO memiliki heading perbandingan dan tautan native kembali dari bagian bawah. Enter membawa fokus ke heading VO yang sama; proyek/tahap tetap. Form, izin, rumus quantity/money, backend, schema dan format PDF/CSV tidak berubah.

Delapan baseline/delapan kandidat HTTP Owner/PM pada 320/390/768/1440 lulus kesamaan nilai/lingkup dan role projection, reflow, return focus, modal serta zero POST bisnis. Semua tabel fingerprint utuh. Tiga baseline/tiga publik PM pada 320/390/1440 juga lulus. Dua tes MySQL/26 asersi lulus identitas ruangan/snapshot awal VO dan PDF invoice klien berdasarkan cakupan laporan/integritas file. Hipotesis Tab tertutup dock tidak terbukti pada baseline; satu koreksi ekspektasi runner dan screenshot/output gagal dipertahankan. Native Tab sudah clear pada Komersial/Workspace; Javascript/dock bersama tidak diubah, bukan klaim bug dock diperbaiki.

Canonical encrypted backup/restore 73 tabel/10 berkas/28 migrasi, auth smoke, tiga hash runtime/CSS publik dan render Change Log lulus. Lembar UAT manusia ditambah skenario VO/kembali. HP fisik/Safari, Owner publik, staging/UAT dan PILOT_READY tetap terbuka; tidak ada full ID/36 atau skor visual baru. [VO demo](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=kontrak#vo-comparison-1), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-185454).


## 2026-11-21 — Arkarupa: nilai kontrak dan syarat pembayaran ringkas

**CONFIRMED — DEMO_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Source/runtime `62af4a0e545dc8c5784653a0c5db81636e5b73b8`, previous `da0974e`. Nilai kontrak diberi label dan ukuran 28px pada HP hingga 36px desktop, dibanding 24px sebelumnya. Nilai awal/versi tetap. Eksposur VO belum diterapkan diberi bidang monokrom dan tetap terpisah dari nilai kontrak. Syarat pembayaran dan milestone dipindah ke disclosure native: DP, retensi, tenggat dan durasi berlabel; recovery serta milestone memakai sumber yang sama. Enter/Space membuka, Escape menutup dan mengembalikan fokus; refresh menutup rincian tanpa mengganti proyek/tahap.

18 baseline dan 18 kandidat HTTP disposable Owner/PM/Finance pada 320/390/1440, terisi/kosong, reduced/normal motion lulus. Semua tabel fingerprint utuh dan tidak ada POST bisnis. Fixture UI memakai quote accepted langsung di disposable; bukan bukti acceptance baru. Dua tes MySQL/81 asersi lulus rencana termin berbasis nilai awal serta alur issue/accept/contract/VO dan PDF privat immutable. Satu koreksi baseline runner untuk navigasi URL sama, dengan failed proof dipertahankan.

Enam baseline/enam skenario publik PM pada tiga viewport lulus; kontrak V2 dan proyek kosong terverifikasi tanpa POST bisnis. Canonical encrypted backup/restore 73 tabel/10 berkas/28 migrasi, auth smoke, tiga hash runtime, CSS dan render Change Log lulus. Rumus, model, schema, terms, izin, form dan format PDF/CSV tidak berubah. Lembar UAT manusia disiapkan; dock HP fisik, Owner publik, staging/UAT dan PILOT_READY tetap terbuka. Tidak ada full ID/36 atau skor visual baru. [Kontrak demo](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=kontrak#commercial-contract-source), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-183954).


## 2026-11-21 - Arkarupa: konteks proyek dari workspace ke akses tim

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; OWNER_UI_LOCAL_VALIDATED; NOT_BUSINESS_READY.** Source/runtime `da0974e09f1859803fde0ee62c26f7b5b5407f50`, previous `4589dd8`. Workspace sekarang memiliki tautan **Atur akses tim** khusus Owner. Halaman Akun & peran menampilkan kartu konteks monokrom dengan nama proyek18px, ID, wilayah dan petunjuk penugasan manual. Nama sangat panjang membungkus. Enter memindahkan fokus ke judul; konteks bertahan setelah membuka editor anggota. Browser Back kembali ke URL asal; tautan Workspace proyek kembali ke proyek yang sama dengan fokus pada pintasan, tanpa menjanjikan periode historis. Membuka pengaturan tidak menugaskan akun otomatis.

ProjectContext existing dipakai; query ID malformed/array/lintas perusahaan ditolak404.16baseline/16candidate HTTP disposable (8Owner dan8batas QS/PM) pada320/390/768/1440 dengan reduced motion lulus. Seluruh tabel fingerprint dan relasi penugasan utuh; tidak ada POST bisnis.3tesMySQL78asersi lulus konteks/sesi/read-only serta report/source roleprojection dan unduhan privat. Satu koreksi tes pivot compositekey, failedproof dipertahankan. Model/izin bisnis, rumus, schema dan format PDF/CSV tidak berubah.

Canonical runner backup terenkripsi/restore73tabel10file28migrasi dan smoke autentikasi lulus;5hash runtime/CSS publik/exclusion test/render Change Log cocok. Sebelum/sesudah publik: anonimlogin danPM403 tanpa POST bisnis. Owner publik belum diuji karena item vault relevan belum mempunyai password; tidak direset. PDF panduan v1 tetap40halaman dengan hash/tanggal asli, ralat navigasi disiapkan terpisah. Tidak ada fullID36/levelvisual baru; staging/UAT/HPfisik/PILOT_READY tetapOPEN. [Workspace proyek](https://arkarupa-dashboard.vercel.app/workspace?project=1#workspace-team-link), [Akses tim (Owner)](https://arkarupa-dashboard.vercel.app/fondasi?stage=akun&project=1#team-project-context), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-182154).


## 2026-11-21 - Arkarupa: pilihan proyek tim dan penutupan popup akses

**CONFIRMED — DEMO_CODE_PUBLIC_VERIFIED; OWNER_UI_LOCAL_VALIDATED; NOT_BUSINESS_READY.** Source/runtime `4589dd8377501c461e4a61dc2cc8b6a93e9a9fcd`, previous `92605d9`. Pilihan akses proyek menampilkan nama 15px terpisah dari nomor/wilayah 13px pada kartu monokrom dengan checkbox existing; nama panjang membungkus dan fokus keyboard terlihat. Setelah simpan akun/akses berhasil, form yang dihapus kini diikuti close-modal eksplisit dan fokus kembali ke Ubah akses. Validasi gagal tetap membuka popup dan menjaga input. TeamCommands, model/izin, perhitungan, schema dan format PDF/CSV tidak diubah.

Delapan baseline dan delapan kandidat HTTP Owner/QS pada 320/390/768/1440, reduced motion/normal, lulus pilihan tiga proyek, nama panjang, Enter/Space, fokus balik, validasi gagal dan status akses QS 200/403. Delapan perubahan izin per fase dilakukan sengaja hanya pada database disposable; penugasan asal, nama dan hash password tetap, tanpa membuat RAP/quote. Tiga tes MySQL/31 asersi lulus simpan/nonaktif/reaktif, Owner guard, isolasi perusahaan/proyek serta unduhan lampiran privat. Dua kendala runner baseline diselesaikan sebelum edit fitur; failed proof dipertahankan. Canonical recovery 73 tabel/10 file/28 migrasi, auth smoke, hash empat file runtime, CSS publik, test exclusion dan render Change Log lulus. Anonim diarahkan ke login; PM tetap 403 pada Pengaturan, sebelum/sesudah rilis tanpa POST bisnis.

Owner UI publik belum diuji karena kredensial demo Owner belum tersedia; local Owner PASS dibedakan dari public Owner UAT. Panduan v1 tetap snapshot lama; ralat alur popup disiapkan tanpa mengganti hash/tanggal PDF. Tidak ada full ID/36 atau level visual baru; perangkat fisik, staging/UAT dan PILOT_READY tetap terbuka. [Akun & peran (Owner)](https://arkarupa-dashboard.vercel.app/fondasi?stage=akun), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-180153).


## 2026-11-21 - Arkarupa: guidebook penggunaan RAP, volume dan progres

**CONFIRMED — GUIDEBOOK_LOCAL_DELIVERED; CHANGE_LOG_DEMO_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Guidebook v1.0, 40 halaman A4, mencakup akses/proyek, survei dan backup volume, RAP/AHSP, margin/markup, penawaran/negosiasi/kontrak/VO, baseline, BUP/koreksi, progres berbobot/Kurva S, tim/absensi, pengadaan/stok/upah, forecast, tagihan/kas, laporan/portal dan penutupan. Terdapat checklist, rumus dan lembar ukur/BUP cetak. Dokumen memakai Plus Jakarta Sans dan Instrument Serif tertanam, 52 tautan, 40 bookmark dan teks yang dapat dicari. Seluruh 40 halaman dirender dan batas layout diperiksa; 10 contoh aritmetika lulus, termasuk service Measurement dan QuantityCalculator aktual. PDF diserahkan sebagai file lokal melalui chat, belum menjadi unduhan publik website. Hash PDF `0f5a70c150c1e9763c7bff1e1f9ea39b1615943432db4ed0229a63c17d0af9a3`.

**ASSUMPTION:** nama font yang disebut Isomens Serif ditafsirkan sementara sebagai Instrument Serif setelah pertanyaan klarifikasi; ARAP ditafsirkan RAP. Materi mengacu perilaku source `07c8668` dan audit komersial sebelumnya; bab lain diperiksa terhadap source, bukan klaim seluruh alur diuji ulang. Screenshot aktual sintetis dan diagram vektor dipisahkan dari contoh ilustratif. Batas demo/UAT serta fitur belum tersedia dijelaskan dalam buku. Runtime aktif `92605d9103a3d8a6338b553bb3e807d65a181842` hanya menambah entri Change Log, tanpa perubahan bisnis/schema/izin/transaksi. Canonical runner recovery 73 tabel/10 berkas/28 migrasi, smoke autentikasi, hash runtime dan render entri log lulus. Tidak ada full acceptance baru atau PILOT_READY. [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-175653).


## 2026-11-21 - Arkarupa: audit alur proyek, RAP dan negosiasi

**CONFIRMED — LOCAL_WORKFLOW_VALIDATED; AUDIT_LOG_DEMO_PUBLIC_VERIFIED; NOT_BUSINESS_READY.** Perilaku diuji pada source `426420e5c80a462694d87920941fb091acb457b5`; source aktif `07c8668203f8ffb20deb7f8abbcefeac9a36def1` hanya menambahkan Change Log dan menyelaraskan dua asersi penghitung proyek usang (test commit `d09e362`). Browser HTTP disposable dengan Owner/QS terpisah menyelesaikan proyek kosong, penugasan QS, RAP dua ruangan/dua pekerjaan Rp2.500.000, review asumsi, submit dan approval Owner lain. Penawaran V1 margin 20% Rp3.125.000 direvisi dengan diskon Rp125.000 menjadi V2 Rp3.000.000; kedua versi disetujui dan diterbitkan PDF. Checksum PDF V1 tetap identik setelah V2. Acceptance dicatat internal dan satu kontrak active merujuk V2; baseline RAP tetap Rp2.500.000. Sembilan tes backend/167 asersi dan persistence lulus; database serta HTTP server audit dibersihkan. Lima belas checkpoint browser mencakup satu catatan UX, bukan 15 pemeriksaan Holsite penuh.

Fungsi inti berjalan, tetapi UX belum lancar: QS perlu ditugaskan terpisah melalui Pengaturan; popup akses berhasil disimpan tetapi tetap memerlukan Tutup manual; self-approval dilarang; belum ada tombol khusus minta revisi; dock HP 390px menutupi sebagian ringkasan kontrak pada posisi awal yang diuji. Kesepakatan dicatat tim, bukan negosiasi/chat/tanda tangan atau penerimaan penawaran mandiri lewat portal klien. Pajak/ongkir default belum dikonfigurasi. Temuan ini belum diperbaiki dalam audit. UAT manusia/HP fisik, staging proyek nyata dan PILOT_READY tetap terbuka; tidak ada persentase atau full acceptance baru. Publikasi hanya catatan audit: canonical runner backup/restore 73 tabel/10 file/28 migrasi dan smoke autentikasi lulus; hash sumber aktif serta render Change Log dibaca ulang. Journey transaksi tidak diulang pada demo publik. [RAP dan penawaran](https://arkarupa-dashboard.vercel.app/komersial), [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261121-170933).


## 2026-11-21 - Arkarupa: tanggal utang dan identitas sumber dokumen

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `426420e5c80a462694d87920941fb091acb457b5`. Tanggal utang tampil d/m/Y16px dengan datetimeISOasli; overdueexisting ditandai label Lewat jatuh tempo dan batas monokrom putus-putus. Pada Utang, pemicu/heading rincian sumber menyebut nomor dokumen; tahap lain memakai headingexisting. Data total/saldo/pihak/nomor/status/tanggalasli/snapshot/wireactions tetap.24baseline24candidate HTTP disposable Owner/Finance/PM terisi/kosong320/768/900/1440 dan24dialog, serta16baseline16public PM/Finance dan24dialog lulus Enter/Escape/fokusasal/query/reflow/labels/zeroPOST/fingerprintutuh. Public3dokumenpostedoverdue pada proyek3 dan proyek4kosong; positif8cases/24dialog terbukti publik. Screenshotbeforeafter berasal dari runtime aktual, filenamesunikproject/doc/viewport; tidakada rekonstruksi.

DuaSQLtes29asersi lulus PO/receipt/bill/payment/forecast/supplierpricedelta dan finance role/companyisolation serta invoicePDFimmutable/bytes setelahmasterberubah. Baselineharness menghitungadjustmentcardssebagaidokumen; duakoreksi rowselector selesai sebelumfeatureedit danfailedproofdisimpan. Freshcanonicalencryptedbackup/restore73tabel10file28migrasi/authsmoke/runtime3/publicCSS/testexcluded dan kedua Change Log readback PASS. Monokrom/PlusJakarta/Holsite/reducedmotion/backend/rumus/schema/form/izin/PDFCSV unchanged.8currentfullcarry/21historicalreconcile/7open;tidaknewfullID/skorvisual. Missingduedatefixturebaru/fullsuite/HPfisik/screenreader/staging/UAT/proyekpilot/PILOT_READY tetapOPEN/NOT_RUN. [Dokumen Utang](https://arkarupa-dashboard.vercel.app/keuangan?project=3&stage=utang#finance-debt-documents).

## 2026-11-21 - Arkarupa: saldo upah terbuka dan seluruh status mandor

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `40e571c03176710b479dd3061e208af1a3b5d6fc`. Saldo upah proyek positif diberi bidang monokrom gelap dengan angka/label putih; nol tetap netral dan cakupan proyek dibedakan dari hasil filter. Pintasan permandor mengisi kode/membuka semua status, menjaga urutan dan memusatkan fokus hasil; pencarian biasa mempertahankan status melalui opsi reset defaultfalse.24baseline24candidate HTTP disposable Owner/Finance/PM pada320/768/900/1440 terisi/kosong lulus values/roles/status/date/Enter/focus/sort/whitecomputed/zeroneutral/fingerprintutuh.8baseline8public PM/Finance masih kondisi kosong; cabang mandor terisi hanya lokal. Struktur250000-dibayar200000=sisa50000;Finishing150000lunas. DuaSQLtes97asersi lulus alokasi/saldo/adjustment/pelunasan/newoptionalreset/defaultsearch dan penugasanprojectscoped/idempotent/duplicateinput; SQLdibawa hash setelah perbaikan artefak browser saja, bukan rerun.

Gate runner lama pulih setelah diagnosismembuktikan magiccall $commit terblokir, bukan kegagalan filter aplikasi. Allowlist terbatas pada commit/updatepencarian/urutan dan event notifikasi di komponen notifications; businesswrites tetap ditolak. Bukti before visual positif memakai snapshotdata aktual dan stylesheet commit baseline; PNG runtime positif sebelum TIDAK_TERSEDIA karena tertimpa kasus kosong. Rekonstruksi berhenti setelah kegagalan dan bukan bukti penerimaan; gambar nol asli/failedproof disimpan. Sesudah dari runtimekandidat, nominalidentik. Fresh encryptedbackup/restore73tabel10file28migrasi/authsmoke/runtime5/publicCSS/testexcluded serta kedua Change Log readback PASS. Monokrom/PlusJakarta/Holsite/reducedmotion/form/izin/rumus/schema/PDFCSV tetap.8currentfullcarried/21historicalreconcile/7open; tanpa skorvisualbaru. Reviewvisual/HPfisik/staging/UAT/proyekpilot/PILOT_READY terbuka. [Keuangan](https://arkarupa-dashboard.vercel.app/keuangan?project=2&stage=utang#finance-foremen).

## 2026-11-21 - Arkarupa: divisi mandor dan kembali dari hasil upah

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `c0281b0c36f9973d3d2c3a3e6201ea8aa1b5f9d6`. Label divisi mandor kini14px, mempunyai padding/pembungkusan dan semantik daftar. Tautan native44px setelah hasil kewajiban upah kembali ke judul mandor, menjaga proyek/tahap serta nilai.24baseline/24candidate HTTP disposable Owner/Finance/PM pada320/768/900/1440 proyek terisi/kosong dan8baseline/8public PM/Finance lulus dataexact/role/Enter/fokus/query/reflow/zeroPOST; fingerprint lokal tetap. Data mandor terisi hanya dibuktikan lokal; proyek publik yang diperiksa kosong. Struktur250000 dikurangi200000 teralokasi menyisakan50000;Finishing150000lunas. Dua SQLtes91asersi baseline pemisahan saldo/alokasi/penyesuaian/pelunasan dan tanpa biaya ganda dibawa viahash karena backend/tests unchanged.

Rencana shortcut filter mandor tidak diimplementasikan: baseline filter timeout setelah dua koreksi runner, lalu gate dihentikan. Perbaikan visual/native diverifikasi terpisah; tidak menutup gate filter. Fresh runner encryptedbackup/restore73tabel10file28migrasi/authsmoke/runtime4file/publicCSS dan kedua Change Log readback lulus. Monokrom/PlusJakarta/Holsite/reducedmotion dipertahankan; form/izin/rumus/schema/PDFCSV tidak berubah.8currentfullcarried/21historicalreconciliation/7open tetap; review visual, HPfisik, staging/UAT/proyekpilot/PILOT_READY terbuka. [Keuangan](https://arkarupa-dashboard.vercel.app/keuangan?project=2&stage=utang#finance-foremen).

## 2026-11-21 - Arkarupa: verifikasi monokrom dan catatan publik

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `5521161f25d5a5d81f6bde91f0c09f75f003042a` hanya menerbitkan Change Log verifikasi: pewarnaan monokrom sudah ada pada baseline, bukan fitur warna baru. CSS publik exact, 1340 literal hex netral, pemeriksaan autentik PM pada HP390/desktop1440 lulus computed palette/font Plus Jakarta Sans dan nol POST bisnis. Holsite geometry/navigation dipertahankan; grafik memakai label/garis utuh-putus. Kedua Change Log dibaca balik; runner backup/restore disposable 73 tabel/10 file/28 migrasi dan public smoke lulus. Data, schema, izin dan PDF/CSV tidak berubah; 8 current full carried/21 historical reconciliation/7 open tetap. HP fisik, staging, UAT dan PILOT_READY tetap terbuka. [Dashboard](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: rincian keuangan proyek berlabel dan tautan Keuangan

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `32a6754e009d4e008b23cab05a2d38a046b0a426`. AP/AR/forecast/EAC yang sebelumnya satu paragraf kini empat bidang DL berlabel, angka16px dan kartu monokrom responsif. Tautan BukaKeuangan dengan count aktual dan nama proyek ditempatkan setelah daftar dokumen, hanya bila count>0. Tujuan tetap Keuangan proyek; tidak menjanjikan filter dokumen otomatis. Status/versi/sumber/N/A/nilai tetap, dan cut-off progres tetap dibedakan dari waktu pembacaan saldo saat ini.

36 baseline/36 kandidat HTTP disposable Owner/Finance/Pelaksana dan24 baseline/24 final publik PM/Finance/Pelaksana pada320/768/900/1440 lulus values/aging/URLs/KPIraw/roles/zero/missing, EnterKeuangan/Back/EscapeReturn/zeroPOST; hanya timestamp pembacaan current dinormalisasi dalam pembanding. Fixture13 dokumen/AR13000/EAC100000Reviewed dan0dokumen/EACN/A lulus. Kasus publik dengan count dokumen positif: 0; cabang positif juga diuji lokal. DuaSQLtes80asersi lulus satu mandor lintas divisi dengan upah parsial/pelunasan terpisah (REV008subset), serta PDFinvoiceklien ready/header%PDF/GET200/bytesimmutable sesudah master berubah/tanpa cost-margin dan penolakan akses pelaksana/perusahaan lain.

Correction1 memperjelas display/padding/minheight CTA; correction2 menunggu transisi modal stabil sebelum ukuran diukur, final44px tanpa transform. SQL80 asli dipertahankan dengan hash sesudah perubahan CSS saja, PHP/backend/tests tetap; HTTPfreshretry lulus. Probe publik awal Animation.finished dibatalkan/AbortError; kode aplikasi tidak berubah, penantian diperbaiki menjadi polling playState/pending,24publik diulang tanpa promosi ulang. Semua bukti gagal dipertahankan, DB/server disposable ditutup. Runner fresh backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3file/publicCSSexact serta kedua Change Log readback lulus. Monokrom/PlusJakarta/reducedmotion/Holsite tetap; schema/backend/form/rumus/izin/PDFCSV tidak berubah.8 current full carry/21 historis perlu rekonsiliasi/7 open;UI03.4/UI09/REV008subset,tidak ada full ID baru atau kenaikan skor visual. Demo statis unchanged;fullsuite/visualPDF/CSV/HPfisik/screenreader/staging/UAT/proyekpilot/PILOT_READY OPEN atau NOT_RUN. [Dashboard proyek dan Rincian sumber](https://arkarupa-dashboard.vercel.app/?project=2#status-proyek).

## 2026-11-21 - Arkarupa: sumber KPI dan kesiapan fokus dialog terverifikasi

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `2f83fc74c704768c17eada2451be1578b2437db6`. Kandidat sumber KPI14.59 yang sebelumnya tertahan kini terbit setelah perbaikan kesiapan native focus trap. Tiga kolom sumber menjadi dua: Proyek/sumber dan Nilai/kelengkapan; nama proyek14px menjadi link44px berlabel KPI+proyek/dideskripsikan nilai, dengan semantic rowheader dan kartu HP monokrom. Angka/status kelengkapan/KPIraw/URL sumber tetap.

Diagnostik menangkap Finance portfolio768: dokumen aktif, modal/jendela/input terlihat dan isTrapActive=true, tetapi activeElement tetap tombol KPI di luar modal; trace open tidak diikuti focusin pencarian. Source-specific event x-modal-opened kini mengoordinasikan native trap dengan kesiapan input yang telah memiliki bounds, memakai nextTick/rAF dan guard run/isConnected/isOpen. Tidak menambahkan focus manual, setTimeout, dependency, atau perubahan vendor.36 HTTP disposable Owner/Finance/Pelaksana dan24 final publik PM/Finance/Pelaksana pada320/768/900/1440 lulus autofocus, putaranTab/ShiftTab tetap dimodal, filterempty/Escapeclear/close/fokusKPI, Enter sumber/Back, role/empty/missing dan nilai/URL exact dibanding24 baseline publik fresh. Nol POST bisnis/fingerprint fixture tetap.

Dua tes SQL17 asersi lulus forecastincomplete/belowcommitment/stale/snapshot serta tanggal/tax/overalloc/negativeinvoice/staledraft. Bukti SQL asli dibawa dengan hash selama deltaUI/diagnostik, backend/tests tetap, bukan rerun. Diagnostik awal kehilangan trace setelah Back, instrumentation perdocument diperbaiki; bukti gagal dipertahankan. DB/server disposable ditutup. Runner fresh backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3file/publicCSSexact lulus. Kedua Change Log readback lulus; entri14.59 tertunda kini ikut terbit dengan tanggal/bukti lama utuh. Monokrom/PlusJakarta/reducedmotion/Holsite tetap. Schema/backend/form/rumus/izin/PDFCSV tidak berubah.8 current full carry denganUI01.2 recheck scope ini;21 historis perlu rekonsiliasi/7 open; tidak ada full ID baru atau kenaikan skor visual. Demo statis unchanged; full suite/PDFCSV/HP fisik/screen reader/staging/UAT/proyek pilot/PILOT_READY OPEN atau NOT_RUN. [Dashboard dan Detail sumber KPI](https://arkarupa-dashboard.vercel.app/#dashboard-level2).

## 2026-11-21 - Arkarupa: kandidat sumber KPI tertahan autofocus desktop

**CONFIRMED — LOCAL_IMPLEMENTED_BLOCKED, NOT_RELEASED.** Kandidat lokal `f193342bd3d5f03917333db02bdd45791b5534a7`. Demo publik aktif/terakhir terverifikasi `7cb627cfe621ceadca9d2baa49177dbf45f66c64` tetap, source/service/tiga file/CSS publik cocok. Tabel sumber KPI lokal berubah tiga menjadi dua kolom dengan nama proyek sebagai tautan44px, label KPI+proyek/deskripsi nilai, semantic rowheader, judul14px/latartransparan dan HP cards monokrom. Perubahan ini belum tersedia pada demo publik.

36 baseline HTTP Owner/Finance/Pelaksana dan24 baseline publik PM/Finance/Pelaksana pada320/768/900/1440 lulus pada kode aktif sebelum perubahan. Kandidat gagal gate Finance portfolio1440: autofocus pencarian tidak tiba hingga5detik. Correction1 memperjelasfont/background dan menunggu linkvisible sesudah Escape filter; correction2 menunggu fokusaktual tanpa focusmanual menggantikan jeda250ms, tetap gagal. Batas dua correction tercapai; tidak ada promosi, full PASS atau kenaikan skor visual. PICFrontendQA perlu merekam activeElement/urutan ark-dialog dan fokus Filament sebelum memperbaiki akar penyebab; tidak menunggu keputusan pengguna.

Dua tes SQL51 asersi lulus settlementuangmuka/refund/internaltransfer/existingcost tanpa biaya ganda dan paginasiDashboard/total/missing/review/izinLivewire. Bukti SQL asli dipertahankan dengan hash setelah koreksi CSS saja; PHP/backend/tests tetap. Gagalprobe dipertahankan dan DB/server disposable ditutup. Schema/backend/rumus/KPIraw/URL/form/izin/PDFCSV tidak berubah. Kedua Change Log lokal ditulis/dibacaulang; entri run ini di tab publik menunggu kandidat fitur lulus.8 current full milik kodeaktif tidak dipindah ke kandidat WIP;21 historis perlu rekonsiliasi/7 open. Monokrom/PlusJakarta/reducedmotion/Holsite tetap. Demo statis unchanged; full suite/PDFCSV/HP fisik/screen reader/staging/UAT/proyek pilot/PILOT_READY OPEN atau NOT_RUN. [Dashboard terakhir terverifikasi](https://arkarupa-dashboard.vercel.app/#dashboard-level2).

## 2026-11-21 - Arkarupa: rincian komponen RAP yang dapat diringkas

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `7cb627cfe621ceadca9d2baa49177dbf45f66c64`. Rincian komponen RAP yang sebelumnya kalimat rapat kini memisahkan nama tebal dan jumlah x harga, dengan batas/ritme netral. Disclosure native terbuka default menampilkan jumlah komponen; Space/Enter/click membuka/menutup dengan fokus tetap. Volume/biaya pekerjaan tetap terlihat; pencarian dan reset mempertahankan pilihan buka/tutup. Palet monokrom, Plus Jakarta Sans dan reduced motion tetap; tidak ada JavaScript/controller baru.

12 baseline dan12 kandidat HTTP disposable Owner/PM/Finance serta8 baseline dan8 final publik PM/Finance pada320/768/900/1440 lulus data exact, nama panjang, reflow, keyboard dan disclosure; nol POST bisnis publik dan fingerprint fixture tetap. Dua tes SQL32 asersi lulus penerimaan parsial/penggantian/pengurangan/refund dan rekonsiliasi biaya, serta tautan nota idempotent, lintas proyek/supplier/role ditolak, stok10/biaya10000 tanpa posting keuangan/kas tambahan. Harness awal kekurangan direktori sesi; koreksi loop direktori dan pemisahan exit code SQL/HTTP dibuktikan lewat fresh SQL/HTTP, bukti gagal dipertahankan.

Runner backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3berkas/publicCSSexact dan kedua Change Log readback lulus. Schema/backend/form/rumus/izin/PDFCSV tidak berubah.8 current full carry/21 historis perlu rekonsiliasi/7 open; UI03.4/UI04/UI09 subset, tidak ada full ID baru atau kenaikan skor visual. Demo statis unchanged; full suite/PDFCSV/HP fisik/screen reader/staging/UAT/proyek pilot/PILOT_READY OPEN atau NOT_RUN. [Rincian RAP per ruangan](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=rap#rap-rooms-heading).

## 2026-11-21 - Arkarupa: ringkasan dan pencarian RAP per ruangan

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `e6a0c2102575bf380699d0c7f97cf84e27ac7bdd`. Volume dan biaya yang sebelumnya satu baris kini berlabel; hierarki ruangan/subtotal/komponen diperjelas. Pencarian lokal kode/pekerjaan/ruangan memiliki hitungan hasil, kosong, reset dan Escape, dengan penjelasan bahwa total tetap mencakup seluruh pekerjaan. Palet monokrom, Plus Jakarta Sans dan reduced motion tetap.

12 kasus HTTP disposable Owner/PM/Finance dan 8 kasus publik PM/Finance pada 320/768/900/1440 lulus; seluruh nilai, subtotal, versi dan total identik baseline, nol POST bisnis publik. Tiga kasus pergantian versi lokal 2→3→2 baris dan enam RPC baca lulus. Dua tes SQL/28 asersi pengukuran/kemasan/margin/markup/diskon/review/selfapproval lulus. Fixture awal melampaui batas coverage group, hanya deskripsi fixture dikoreksi; validator aplikasi tetap, bukti gagal disimpan dan HTTP fresh retry lulus. Bukti SQL asli dibawa dengan hash.

Runner backup/restore73 tabel/10 berkas/28 migrasi, promosi, runtime3 berkas dan CSS publik exact serta kedua Change Log readback lulus. Backend/schema/rumus/izin/form tidak berubah.8 current full carry/21 historis perlu rekonsiliasi/7 open; UI03.4/UI04/UI09 subset, tidak ada full ID baru. Tabel metode nonmanual menunggu data publik yang sesuai. Demo statis unchanged; full suite/PDFCSV/HP fisik/screen reader/staging/UAT/proyek pilot/PILOT_READY OPEN atau NOT_RUN. [RAP per ruangan](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=rap#rap-rooms-heading).

## 2026-11-21 - Arkarupa: kartu kebutuhan RAP dan navigasi area

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `43862024af6791bb65470853a3d651b5287eb905`. Lima kolom kebutuhan/pembelian RAP menjadi kartu berlabel Perlu/Kemasanbeli/Sisa/Biaya pada container<=760px; desktop tetap tabel. Resource/kelompok/satuan,8desimal,kemasan,purchased,leftover,biaya tetap. Nativeanchor dua-arah rekaparea/kebutuhan kini memfokuskanheading dengan scrollmargin90px danoutline netral; queryproyek/stage/versi/rekaparea tetap, refreshdeeplink danproyektanpaRAP diuji. Monokrom,PlusJakarta,reducedmotion tetap.

12HTTPdisposable Owner/PM/Finance320/768/900/1440 dan8publikPM/Finance lulus cards/data/Enter/fokus/headingterlihat/query/version/refresh/empty;zeroPOSTbisnis/fingerprintutuh. Seluruhkebutuhan/kemasan/sisa/biaya/versi/rekaparea identik8baselinepublik. DuaSQLtes18asersi lulus konversikemasan5zak/pembulatansekali/zeroreceipttidakjadikedatangan, serta baseline3386270/hashes tetapketikamasterberubah, refreshoptin/selfapprovaldeny/idempotentapproval. Ujiawal menolakpurchasingfixture belumditugaskan; satuassignment ditambahhanyadites, izinapp tetap. Probeanchorawal membatasi y<=300 tidakvalid dekatakhirhalaman; digantikeheadingterlihat80-910danfokus. Failedproofdisimpan danDBfreshdiulang. Testfileexcludedartifactdibuktikan.

Fresh backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime4file/publicCSSexact serta keduaChangeLogreadback lulus. Backend/schema/rumus/permission/form/PDFCSV unchanged.8currentfullcarry/21historicalrekonsiliasi/7open;UI03.4/UI04/UI09subset,bukanIDbaru/skorvisualnaik. Demo statis unchanged;fullsuite/PDFCSV/HPfisik/screenreader/staging/UAT/proyekpilotnyata/PILOT_READY OPEN/NOT_RUN. NextFrontendQA tabelRAPmetode/rekonsiliasiID;Andreas reviewvisual/HPfisik/proyekpilot. [Kebutuhan RAP](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=rap#rap-needs-heading).

## 2026-11-21 - Arkarupa: kartu katalog adaptif dan Escape histori

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `f926dbb9ba23ee6ae8fb4c11280822b86454c96f`. Kartu katalog kini mengikuti lebararea konten<=760px melaluiCSScontainer, sehingga tablet768 dan900denganrail216 terbuka memakai kartu berlabel Satuan/Harga terakhir/Asal. Pada900railringkas dan1440 tetap tabel; resize tidakmemerlukanrequest atau mengubahdata. Sebelumnya kartu hanya pada viewport<=639px; tabel900expanded melebar76px, sementara768memadat tanpaoverflow. Monokrom, Plus Jakarta Sans, reduced motion dan komposisiHolsite tetap.

Escape pada pencarianhistori kini bertahap: pertama membersihkan query, saatkosong kembali fokus ke resourceasal melalui tombolKembalidaftar existing, atau ke pencarianresource ketika resource tersaring. Detail/harga tidakdihapus, queryresource dan jenis dipertahankan.12HTTPdisposable Owner/PM/Finance320/768/900/1440 dengan3historiharga serta8publikPM/Finance lulus card/table/railresize/Enter/Escape/fallback/jenis/empty/reflow;36lokal dan24publik RPCbaca, zeroPOSTbisnis danfingerprint utuh.20resource dan seluruhhistori/ID/nilai/sumber/satuan identik8baselinepublik. Seluruhform/ekspresiuang/controller/service/schema/permission/PDFCSV unchanged.

DuaSQLtes32asersi lulus manualprice/dailylabor/reprice/idempotensi dan katalogterpisah (RAP3.850.000,8OH,reprice4.250.000,tanpaharga/resourceglobalbaru), serta popupbayar dokumenopen10.000.000 yangtidakmemposting, arah/tagihanlunas/draftguard. Dua koreksiprobe baseline dipertahankan: asumsi768overflow dikoreksi pengukuran0px, dan menunggu x-show setelahreset tanpa melemahkan asersicount. Tidakada sourcefixpascagagalHTTPkandidat.

Fresh backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime4file/publicCSSexact serta keduaChangeLogreadback lulus.8currentfullcarry/21historicalrekonsiliasi/7open;UI03.4/UI08.1/UI09subset,bukanpersentaseproduk/skorvisual. Fullsuite/PDFCSV/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged, populatedMasterAHSPpublik masihmenunggufixtureyangsah. NextFrontendQA: tabelpadatlain danrekonsiliasiID;Andreas reviewvisual/HPfisik/proyekpilot. [Katalog material](https://arkarupa-dashboard.vercel.app/katalog?kind=material#catalog-resource-results-heading).

## 2026-11-21 - Arkarupa: panah rail dan fokus menu aktif

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `a098c0e70f185e3dfd6c88057377c8ffa22b922b`. Panah rail desktop yang berupa karakter salah encoding kini menjadi chevronSVG existing dalam bidangnetral28px, target44px dan arahberputar sesuai expanded. Accessiblelabel Perluas/Perkecil, monokrom, Plus Jakarta Sans dan geometriHolsite dipertahankan. Membuka rail kini memfokuskan menu halamanaktif (fallback menupertama); Escape menutup dan fokus kembali ke pemicu. Scrollnearest menjaga menuaktif terlihat di sidebar.

Dua belas HTTPdisposable Owner/PM/Finance pada900normal/1440reduced/320normal/390reduced serta12publik PM/Finance (8Dashboard+4Katalog) lulus SVG/EnterActive/EscapeReturn/batas899-900/retensistatusrefresh/drawerHP/reflow danzeroPOSTbisnis. Katalog membuktikan menuaktif bukan linkpertama. Seluruh href/labelmenu setiaprole identik12baselinepublik. Snapshotawal saatlebarrail masihtransisi disimpan sebagai bukanbuktifinal; probe menunggu216px danHTTPdiulang DBfresh. SQL33 original dibawa viahash padaulangHTTP, bukan diklaimrerun.

DuaSQLtes33asersi lulus bobotkontrak timelineversioned/durasi/dependency/milestone/kembalikebaselineaktif serta PDFtagihanklien scopedlaporanterbaru: bytes/headerdownload tepat, missing/privat/proyeklain/checksumrusak/dicabut ditolak; laporanlama tidakmenghidupkankembali invoiceyangdicabut. Ini ujiintegritas/downloadPDFfixture, bukan rendererPDF. Fingerprintbisnis tetap; backend/schema/href/rumus/permission unchanged.

Fresh backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3file/publicCSSexact serta keduaChangeLogreadback lulus.8currentfullcarry ditinjaupadadeltanavigasi,21historicalrekonsiliasi/7open;UI09subset,bukanskorvisualatauUATfisik. Fullsuite/CSV/rendererPDF/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. MasterAHSPpopulatedpublic tetapbelumadafixtureyangsah, bukanblockeririsanrail. NextFrontendQA: rekonsiliasiIDlain/fixtureAHSP;Andreas reviewvisual/HPfisik/proyekpilot. [Dashboard dan rail](https://arkarupa-dashboard.vercel.app/), [Menuaktif Katalog](https://arkarupa-dashboard.vercel.app/katalog).

## 2026-11-21 - Arkarupa: kartu komponen AHSP dan tutup rekap

**CONFIRMED — DEMO_PUBLIC_DEPLOYED, populated AHSP flow LOCAL_VALIDATED, NOT_BUSINESS_READY.** Source `264a39d61a2c8a89b295967a6824f6a04f175385`. Komponen HSD menjadi kartu berlabel Koefisien/HSD aktif/Biaya komponen pada HP; desktop tetap tabel. Nama panjang membungkus, satuan/koefisien/harga/sumber/wilayah/tanggal/alasan harga belum lengkap tetap. Tombol Tutup Master AHSP mengosongkan pilihan rekap existing, menghapus parameter URL, lalu kembali fokus ke pekerjaan asal atau pencarian ketika hasil tersebut tidak lagi ada. Kata kunci dipertahankan; refresh tetap tertutup. Monokrom, Plus Jakarta Sans dan reduced motion tetap.

Enam HTTP disposable Owner/PM/Finance pada320 normal dan1440 reduced lulus kode/kata kunci, metadata, komponen berharga dan resource missing, refresh, Enter/open/close/fokus/fallback/empty/reflow. Seluruh nilai dan metadata sama dengan enam baseline;24RPC baca, tanpa businessPOST dan fingerprint bisnis utuh. DuaSQLtes20asersi lulus AHSPindex metadata/idempotensi/preservasi definisi serta penolakanwrite role/company. Controller/service/schema/rumus/izin/formatPDFCSV unchanged.

Publicdemo saatini hanya5analisislegacy, tanpa formatAHSP. Empat baseline dan empat final PM/Finance membuktikan pencarian A01 serta emptyMaster pada desktop/HP; populatedHSD dan tutuprekap **belum tersedia untuk validasi publik**, diuji hanya pada database disposable. Data publik tidak disisipkan untuk memaksakan bukti. Runner backup/restore73tabel10berkas28migrasi, promosi/authsmoke/runtime3file/publicCSS exact dan keduaChangeLog readback lulus. Entri verifikasi monokrom13.05 ikut diterbitkan. Delapan currentfull dibawa,21historicalrekonsiliasi/7open;UI03.4/UI08.1/UI09subset, tidak ada ID baru ditutup atau kenaikan skor desain. HPfisik/screenreader/fullsuite/PDFCSV NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. Next: fixtureAHSPpublik yang sah untuk verifikasi populatedflow dan rekonsiliasiUI08.1; Andreas reviewvisual/HPfisik. [Katalog dan Master AHSP](https://arkarupa-dashboard.vercel.app/katalog#ahsp-recap).

## 2026-11-21 - Arkarupa: harga terakhir dan pintasan penerimaan terverifikasi

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `48ba76a2c238193e110125995e907344cf8c25b1`. Histori harga kini menandai recordcurrentPrice existing sebagai Harga terakhir di katalog denganlabel/border/pillmonokrom; catatanlain Catatansebelumnya. Nilai/unit/tanggal/sumber/region/notes tidak berubah.6HTTPdisposable Owner/PM/Finance320normal/1440reduced menguji3histori/1IDcurrent tepat dan4publikPM/Finance mengulang dataexisting identik. Pencarianhistori/empty/Escape/reflow lulus;PlusJakarta/reducedmotion tetap.

POapproved mendapat pintasanheader keformulirpenerimaan existing melaluihelperark-open-action dan gatereceive-purchase yangsama.6lokal/4publik lulus Enter/visiblechildwindow/Tutup/fokusbalik/drafttutup-bukaulang/Financehidden/proyektanpaPO; tanpa businessPOST. HanyaRPCselect katalogberwenang. Blockerprobe lama ditutup berdasarbuktibaru: rootheight0 bukanjendeladialog; timeout lama tidakvalid untukmenyimpulkan appsumbergagal. Bukti3percobaan/2correctionround tetapdisimpan/tidakdireset. Baseline4tombolnative lulus denganpredicatechildbenar. Probeexactname tombol lama sempatgagal karena statusdraft menambahnamanya; selectorstabil memperbaiki probe tanpa mengubah statusdraft.

SQLdua tes34asersi lulus PO/receipt/bill/payment/forecast/supplierpricedelta/credit serta konfirmasikatalognota/reopen/satuan/perusahaan. Fingerprint bisnis utuh; sourceform/controller/modelrelasi/service/permission/PDFformat unchanged. Backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime4fileexact dan keduaChangeLogreadback lulus.8currentfullcarry,21historicalrekonsiliasi/7open;UI08.1/UI06/UI09subset,bukanpersentaseproduk/skorvisual. Fullsuite/HPfisik/screenreader/PDFruntime NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. [Pintasan penerimaan](https://arkarupa-dashboard.vercel.app/pengadaan?project=2&stage=material&po=1#procurement-po-heading).

## 2026-11-21 - Arkarupa: kartu resource katalog dan fokus pagination

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `25b2686a28ab434018f834c10c2c2b3537c69537`. Tabel resource katalog kini kartuHP berlabel Satuan/Hargaterakhir/Asal dengan aksi Detail/Histori; desktop tetap tabel. Kolomsticky dinonaktifkan padaHP untuklebarpenuh namapanjang. Nilai/unit/harga/provenance dan ekspresiBlade tetap. Paginationexisting next/previous kini memfokuskan judulhasil danmengumumkan halaman; filtermaterial, refreshhalaman2,emptysearch danEscape tetap.

6HTTPdisposable Owner/PM/Finance320normal/1440reduced24requestbaca serta4publikPM/Finance16requestbaca lulus.20baris/IDhalaman1 dan20IDhalaman2 tepat sama sebelum/sesudah; tidakada businessPOST danfingerprintbisnis utuh. SQLdua tes51asersi lulus satuanresourceOJ/hari/lembar/batang darikatalog melaluiAHSP/ruangan/RAP/PDF serta dokumenlama/pagination/pencarianliteral/isolasiproyek/role/download. Form/controller/services/izin/rumus unchanged. Probeawal memblokir commitbaca Livewire; safeallowlistdiperbaiki tanpa membuka businessmethod,bukti disimpan danbaseline4diulang. HTTPfinalCSS diulang,SQL51 dibawaviahash. Monokrom/PlusJakarta/SVG/reducedmotion tetap. Read-onlytrace dan screenshot penerimaanexisting membuktikan childdialog390x1000 terlihat; rootcontainer320x0 menjadikan visiblelocatorfalse walau stateopen true. Timeoutprobe run12.12 tidakvalid untukmenyimpulkan dialogaplikasi gagalterbuka; inferensitersebut dicabut dengan buktilama tetapdisimpan. Eksperimenheaderbaru tidakdiulang/belumterverifikasi/tidakditerbitkan. NextFrontendQA koreksipredicatekevisiblechild sebelumvalidasi;2correctionroundtetapdisimpan.

Backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3fileexact dan keduaChangeLogreadback lulus.8currentfullcarry,21historicalPASS rekonsiliasi/7open;UI03.4/UI08.1subset,bukanpersentaseproduk/skorvisual. Fullsuite/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. [Katalog material](https://arkarupa-dashboard.vercel.app/katalog?kind=material#catalog-resource-results-heading).

## 2026-11-21 - Arkarupa: kartu material PO; pintasan penerimaan tertunda

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `75f8bda96407082891f52d0f15cc61dd6cadf307`. Scope rilis UI saja. Rincian material PO enam kolom kini menjadi kartu HP berlabel Dipesan/Baik neto/Dikurangi/Sisa/Biaya aktual; desktop tetap tabel. Deskripsi/ID/unit/nilai sama sebelum/sesudah. Monokrom, Plus Jakarta Sans, SVG dan reduced motion tetap.12HTTPdisposable Owner/PM/Finance dua proyek320normal/1440reduced dan8publik PM/Finance lulus kartu/tabel/nama panjang/nominal/unit/empty/role/reflow; fingerprint bisnis utuh, tanpa businessPOST.

Eksperimen pintasanheader penerimaan gagal membuka dialog denganEnter tiga kali setelahdua correctionround. Gate dihentikan; eksperimen dihapus, tidak diterbitkan dan tidak diklaim lulusUXbaru. Form/dialog existing tetap byteexact. FrontendQA melanjutkan read-only event/modalstate trace sebelum koreksi berikutnya. SQLdua tes22asersi lulus penerimaanparsial/retur/pengurangan/refund/biaya serta pembulatan landedcost, PDFPOprivate/immutable/checksum/oneeffect,Owner200/Pelaksana403. SQL22 dibawa viahash saatHTTPulang. Helperlokal sempatmengubah encoding teksglobal; buktiUIawal dicabut, source dipulihkan dariGitblobexact dan12HTTPdiulang; versi itu tidak dipromosikan. Backend/schema/rumus/otorisasi/formatPDF unchanged. Backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3fileexact serta keduaChangeLogreadback lulus.8currentfull carry,21historicalPASS rekonsiliasi/7open;UI03.4 subset, bukanpersentaseproduk/skorvisual. Fullsuite/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. [Rincian material PO](https://arkarupa-dashboard.vercel.app/pengadaan?project=2&stage=material&po=1#procurement-po-heading).

## 2026-11-21 - Arkarupa: kartu progres periode dan kembali ke Dashboard

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `0a020601888202b6e09e51450d384ddfb7998579`. Tabel progres periode sebelumnya selebar560px sehingga angka keluar layar HP. Kini tiap periode menjadi kartu berlabel Rencana/Aktual/Selisih; desktop tetap tabel. Nilai, tanggal, baseline, penanda periode terakhir dan data belum tersedia tidak berubah. Palet monokrom, Plus Jakarta Sans, SVG original dan reduced motion dipertahankan. Dashboard proyek kini menjaga from/to dari konteks Workspace yang sudah tervalidasi dan mengikuti proyek pilihan Livewire.

20HTTPdisposable Owner/PM/Pelaksana pada kandidatantara dibawa untuk markup/alurvalid yangtidakberubah;12HTTPdisposablefinal lulus guardtipe/invalid/terbalik/array/legacy/Enter.20publik PM/Pelaksana dua proyek320normal/1440reduced lulus kartu/tabel, proyek/periode, Back/refresh dan reflow. Data semua baris publik identik sebelum/sesudah;20baselinepublik kehilangan periode.Probe tambahan menemukan500 existing pada arraytanggal; guard is_string sebelumvalidasi memperbaikinya.8GETpublik kandidatfinal lulus invalid/reversed/array dates, legacy overview context dan keyboardEnter. Publik hanya pergantianproyek berwenang, tanpa businessPOST. SQLdua tes59asersi lulus pembalikanpemakaianmaterial exactlyonce/history serta rekonsiliasi periodeBUP/baseline/weekly/monthly/history/futureactualnull/CSV. Pelaksana ditolak403 untuk eksporCSV. Fingerprint bisnis utuh; schema/controller/services/rumus/formatCSV tidak berubah. HTTPawal gagal urutanCSS, diperbaiki danHTTPdiulang DBbaru;SQL59 dibawa viahash. Backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime4fileexact serta keduaChangeLogreadback lulus.8currentfull carry,21historicalPASS rekonsiliasi/7open;UI03.4 subset, bukanpersentaseproduk/skorvisual. PDF/fullsuite/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. Nextrekonsiliasi historical/UI03.4 danreviewvisualHP bersamaAndreas. [Progres periode](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=progres#field-period-heading).

## 2026-11-21 - Arkarupa: pemilih proyek dan palet monokrom

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `5bf5b7fd5f10d7c34b5ed398d55dcb4e7609f9bf`. Andreas menegaskan warna monokrom. Palet putih/abu/hitam existing dipertahankan, stylesheet Holsite diperiksa token netral dan runtime exact; PlusJakarta dan geometri Holsite tetap. Jumlah hasil pemilih proyek dipindah dari bawah daftar ke dekat pencarian agar cepat terlihat. Pencarian dialog kini pulih saat Back/refresh melalui history.state perakun/perentri, dibatasi80karakter; metadata asing/nonstring diabaikan. URL/pilihanproyek, metadataLivewire dan izin tidak berubah.

12HTTPdisposable Owner/PM/Pelaksana dan8publik PM/Pelaksana dua proyek320normal/1440reduced lulus Back/refresh/isolasiakun/invalid80/empty/Escape/fokus/reflow;8baselinepublik kehilangan pencarian. Direktori/manyprojects/emptyproject dari kandidat sebelumnya dibawa viaexactsource. UI03.1 kini LULUS;8currentfull,21historicalPASS perlu rekonsiliasi/7open, bukanpersentaseproduk/skorvisual. SQLdua tes28asersi approvalharga append-only/idempotent/aktorberbeda dan pengelolaanakun scoped/reversible/revocation lulus pada disposable saja. Fingerprint bisnis utuh;publik hanyapergantianproyek berwenang. Tidak ada perubahan schema/data nyata/akun nyata/calculation/export. Probeawal gagal konteksbrowsermultipletab, diperbaiki danHTTPdiulang DBbaru;SQL28 dibawaviahash. Backup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime3fileexact dan keduaChangeLogreadback lulus. PDF/CSV/fullsuite/HPfisik/screenreader NOT_RUN;staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis unchanged. Next rekonsiliasi historical/UI03.4, reviewvisualHP bersama Andreas. [Dashboard](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: kartu proyek dan kembali ke pencarian

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `08ec3fcd7c89ad619013973af020e8ce3cff960b`. Kartu direktori proyek HP memisahkan progres/kontrak dalam panel monokrom berlabel, memakai SVG original dan aksi Buka proyek penuh. Nilai/cutoff/izin tidak berubah. PlusJakarta/reducedmotion dipertahankan. Screenshot publik sebelum/sesudah memakai data sama; fixturelokal nama/wilayah panjang lulus.

Buka proyek meneruskan pencarian; Daftar proyek pada Workspace mengembalikan qkanonik danfokus jumlah hasil. Metadata navigasi locked dinormalisasi string trim/maks80karakter, arraydiabaikan; kosong kembali ke semuaproyek. Native browserBack sebelumnya tidak diklaim rusak.12HTTPdisposable Owner/PM/Pelaksana duaproyek320normal/1440reduced dan>=14proyekOwnerPM,serta8publik PM/Pelaksana lulus untuk query/hasil/proyek/filtertugasLivewire/BackForwardRefresh/fokus/empty/metadata/reflow. Tidak ada businessPOST; fingerprintbisnis utuh. Pemulihan pencarian dialog pemilih proyek belumditutup.

SQLdua tes17asersi lulus konversi/pembulatan kemasan/unit incompatible serta akses lintasperusahaan/proyek/berkas privat. Pelaksana tidak menerima kolom kontrak. Uji negatif publik NOT_RUN karena tidak ada proyek ditolak pada fixture existing; data/akses publik tidak diubah. SatuHTTPdisposable tambahan membuktikan directWorkspace luarscope denganmetadata mendapat403 tanpa isiWorkspace;fingerprint/cleanup lulus,tanpa SQLrerun. Probe publik diperketat menunggu DOMhasil filterserver;8POSTfilter terverifikasi,hasilclient-only awal tidak diklaim commitserver. Sourcecalculation/transaksi/schema/izin/export tidak berubah; PDF/CSVtidakdiujiulang. Runner kanonikbackup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime5fileexact serta keduaChangeLogreadback lulus. Current7fullIDcarry,22historicalPASS perlu rekonsiliasi/7open;UI03.1/03.4 subset, bukanpersentaseproduk/skorvisual. Reviewvisual/HPfisik/staging/UAT/proyekpilotnyata/PILOT_READY OPEN. [Daftar proyek](https://arkarupa-dashboard.vercel.app/proyek?q=%232#project-result-count).

## 2026-11-21 - Arkarupa: kartu RAP dan konteks pergantian proyek

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `dad1a63068639d7094de343b5d269505ef7e3afa`. Pekerjaan RAP per metode menjadi kartu berlabel di HP, row header memisahkan kode/deskripsi, nominal rata kanan desktop. Nilai/satuan/status/aksi/izin tidak berubah. Delapan fixture Blade historis/kandidat3203907681440 membandingkan nilai sama, font PlusJakarta dan reflow. Empat actualHTTP positif dan empat proyek tanpa RAP diuji pada database disposable. Data publik saat ini hanya RAP manual, sehingga tabel metode positif diverifikasi dengan actualHTTP lokal serta actualLinuxruntime Blade fixture sintetis; outputHTML sama. Fixture visual tidak mewakili harga konstruksi/data publik.

Tautan Workspace kini mempertahankan periode ketika proyek diganti melalui dialog; proyek mengikuti projectIdLivewire. Baseline publik8pergantian kehilangan periode; sesudah8HTTPdisposable/16pergantian,4publik/8pergantianKomersial,dan16publik/32pergantianempatmodul lulus. Back/Forward/refresh/proyek/periode/fokus benar; hanya selectProject diizinkan, tidak ada businessPOST. Monokrom/SVG/PlusJakarta/reducedmotion serta guard draf tetap.

Dua tesSQL80asersi lulus: upah mandor terpisah per divisi dan CSVabsensi/filter/formula injection. Fingerprint bisnis utuh/cleanup selesai. Target pecahan fixture diperbaiki menjadi setengah+sisa tepat; SQLhash dibawa saat retryHTTP, bukan rerun. Renderer awal serif/ekspor encoding gagal dicabut sebagai bukti visual, kemudian UTF8/font loaded dan8kasus ulang lulus. Backend/schema/rumus/formatPDFCSV tidak berubah; PDFtidakdiujiulang. Runner kanonikbackup/restore73tabel10berkas28migrasi/promosi/authsmoke/runtime5fileexact dan keduaChangeLogreadback lulus. Current7fullIDcarry;UI03.4 subset satu tabel,22historicalPASS rekonsiliasi/7open. Reviewvisual/HPfisik/staging/UAT/proyekpilotnyata/PILOT_READY OPEN. [Komersial](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=rap&workspaceFrom=2026-11-01&workspaceCutoff=2026-11-20).

## 2026-11-21 - Arkarupa: nama proyek dan semua tampilan modul

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `5d6892452b0e35787a4b7bd3c998f7ccbf166da4`. Header modul membungkus nama proyek/wilayah tanpa spasi secara utuh. Semua tampilan membuka seluruh tombol tahap, 44px; Escape meringkas dan memulihkan fokus. Palet monokrom, Plus Jakarta Sans, aset original, komposisi Holsite dan reduced motion dipertahankan.

12 HTTP disposable Owner/PM/Pelaksana pada dua proyek /36 perjalanan dan 8 publik empat peran /22 perjalanan lulus. Meliputi stage Livewire lewat keyboard, indikator aktif, proyek/periode/stage saat refresh dan Back/Forward/return. Hanya update stage dan aksi $set kosong diizinkan probe sesuai Livewire4; tidak ada business POST. Dua koreksi probe mengikuti endpoint dan format payload installed4.4.7; bukti gagal dipertahankan. SQL dua tes41 asersi lulus untuk stok cut-off tanpa future movement/posting serta draft reload/foto/akses lintas proyek. SQL hash dibawa saat retry HTTP, bukan diklaim rerun. Fingerprint bisnis utuh dan cleanup disposable selesai.

Runner kanonik backup/restore73 tabel10 berkas28 migrasi, promosi/auth smoke/runtime exact dan dua Change Log readback lulus. UI-03.3 LULUS;enam ID terdahulu carry menjadi7currentfull,22historicalPASS perlu rekonsiliasi/7open. UI-03.4 baru subset header, tabel padat belum ditutup. Checklist UAT modul disiapkan lokal; review visual/HPfisik/staging/UAT/proyek pilot/PILOT_READY OPEN. Backend/schema/auth/rumus/formatPDFCSV tidak berubah; ekspor tidak diuji ulang. [Modul](https://arkarupa-dashboard.vercel.app/komersial?project=2&stage=rap).

## 2026-11-21 - Arkarupa: caption tahap dan kembali ke workspace

**CONFIRMED — DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `db3b2251fcecd0128f8d9f25d4c4f55f3e257f19`. Caption progres tahap maksimal dua desimal dengan tanda perkiraan bila dibulatkan; raw source dipertahankan. Tombol Workspace proyek dan Dashboard proyek terpisah, 44px; periode valid dibawa dari workflow dan metadata invalid dibuang. Monokrom/Plus Jakarta Sans/SVG/reduced motion dipertahankan.

12 HTTP disposable dengan 36 perjalanan dan 8 publik dengan 22 perjalanan lulus, termasuk proyek/periode, Back/Forward/refresh, fokus dan zero business POST. Dua tes MySQL disposable/31 asersi lulus untuk identitas progres dan pemulihan draf/concurrent revision. Kegagalan Blade dan probe navigasi diperbaiki lokal, verifikasi diulang dan bukti lama dipertahankan. Backend/schema/auth/rumus/format ekspor tidak berubah; PDF/CSV tidak diuji ulang.

Runner kanonik backup/restore disposable 73 tabel/10 berkas/28 migrasi, promosi/auth smoke serta runtime exact lulus. Kedua Change Log readback lulus. Enam ID full sebelumnya carry; UI-03.3 masih subset karena stage asinkron belum diuji. 23 historical PASS memerlukan rekonsiliasi, 7 open; bukan 36/36 atau skor visual. HP fisik/review visual/staging/UAT/proyek pilot nyata/PILOT_READY OPEN. [Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#workspace-workflow).

## 2026-11-21 - Arkarupa: koreksi kontras angka aktual workspace

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Sourcekoreksi `dbf031f894b0a1a2c49e92430c4661859419dbe9` menggantikan `da269fce6a3600befeb07e3262e41aa412b255f1`. Claimvisual/UI-03.2LULUS pada da269fc danentri knowledge495e7ec **DICABUT/DEPRECATED**: pemeriksaangambar setelahassertddputih menemukanangka strong masihgelapdiatasgelap. Riwayatdipertahankansebagaibuktikoreksi.

Koreksiround1 menetapkanputih langsungpadaangkaactual danstrongexact.8previewCSSdan8publickoreksi memeriksacomputedcolor,webkitTextFillColor,exactstrong serta gambarangka putih;target/actualnull tetapbidangterang. Monokrom/PlusJakarta/SVG/geometri/angka/rawpercent/cutoff/reducedmotion tetap. FokushashBack/Forward/refresh danreturnanchor lulus.16fullHTTPdisposablelogic/data/zeroactual/missingbaseline/namapanjang sertaSQL2tes24asersi(cutofflateverification,CSVfilter/formula) dibawa denganGitblob/inputscopeidentik,tanparerun. PreviewCSSpadaDOMpublik tidakdisamakandenganfullHTTPcandidate.

Canonicalrunner backupterenkripsi/restoredisposable73tabel10berkas28migrasi,promosi/authsmoke baru danruntimekumulatif3file/CSSexact lulus. Delta koreksi hanyaCSS+entriChangeLogrunyangsama;duplikat tidakditambahkan. KeduaChangeLog readbacklulus. UI-03.2 LULUS hanya padaSHAkoreksiini;5IDlaincarry,total6currentfullPASS,23historicalPASSreconcile/7open tetap. UI03.3subset;reviewvisual/Ownerbrowserpublik/HPfisik/staging/UAT/proyekpilotnyata/PILOT_READYOPEN. Backend/schema/auth/data/formatPDFCSV tidakberubah;PDFtidakdiujiulang. [Workspacekoreksi](https://arkarupa-dashboard.vercel.app/workspace?project=2#workspace-level2).

## 2026-11-21 - Arkarupa: aktual terverifikasi dan fokus riwayat workspace

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `da269fce6a3600befeb07e3262e41aa412b255f1` menegaskanactualtersedia dengan bidanggelapnetral danangka/outlineputih. Target danactualnull/tanpabaseline tetapbidangterang;persen/rawsource/versi/cutoff tidakberubah. Monokrom,PlusJakarta,SVG,geometriHolsite danreducedmotion dipertahankan.

Back/Forward/refresh pada hashbagianworkspace kini memulihkanfokus kebagianyangsesuai;sebelumnyaBackkePekerjaan masihfokusDokumen,refreshfokusbody. Hanyahashyangada pada navigasi sesuaiizin ditangani;anchorbalikdetailprogres tetapbekerja.16actualHTTPcandidate PM/Pelaksana baselineactual0/missingbaseline/namapanjang dan8publicactualfractional pada320/390normal/900/1440reduced lulusheader/rawexact/sourceGET200/projectcutoff/fokus/aria-current/zeroPOST/reflow. Dua tesMySQLdisposable24asersi membuktikancutoff/lateverification sertaCSVabsensifilter/formulaneutralization. FingerprintbisnisHTTPtetap,DB/serverdibersihkan. Backend/schema/auth/rumus/formatPDFCSV tidakdiubah;PDFtidakdiujiulang.

Backupterenkripsi/restoredisposable73tabel10berkas28migrasi,promosi/authsmoke,runtime3file/publicCSSexact lulus. KeduaChangeLog ditulis/dibacaulang. **UI-03.2 LULUS pada kandidatini.**5fullPASS laincarry;6currentfullPASS,23historicalPASSperlurekonsiliasi,7historicalopen tetap. UI03.3masihsubsetinternalhash,bukansemuaalurantarhalaman. Bukan persentaseimplementasi/signoffvisual. ReviewAndreas/Ownerbrowserpublik/HPfisik/screenreader/staging/UAT/proyekpilotnyata/PILOT_READYOPEN. Demostatis tidakberubah. [Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2#workspace-level2).

## 2026-11-21 - Arkarupa: KPI langsung terbaca dan sumber berizin

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `e902143a540eea76816754fc0a7117d1446d1d7c` mengecualikan kartuKPI dari entryfade320ms/stagger480ms agar angka langsungterbaca. Monokrom,PlusJakarta,SVG,gradien/layout/nilai utuh dipertahankan;animasi nonKPI/teks eksplisit danreducedmotion tetap. Fokusawal Detail sumber kini konsistenke pencarian:12/12dialogpublik dan14/14lokal,sebelumnya8/12baseline. Nomatch→kosong,Escapepertama clearquery,Escapekedua tutup/fokuskembaliKPI;total tidakberubah.

18actualHTTPcandidate Owner/Finance/Pelaksana portfolio/kontrakterisi/proyekkosong pada390normal/1440reduced serta12afterpublikPMFinancePelaksana+4crewprogres lulusdata positive/zero/missing,semuasumberKPIutama yangdiizinkanHTTP200,proyeksi tugas/progres danisolasi finansial. Fixtureacceptedquote dipin secara sintetis,bukanacceptanceklien. Dua tesMySQLdisposable37asersi membuktikan rekonsiliasikas/aging/nonkas/periode danpenolakanperusahaanlain/proyektidakditugaskan/lampiranprivat. FingerprintbisnisHTTPtetap,DB/serverdibersihkan. Backend/schema/auth/uang/PDFCSV tidakdiubah;PDF/CSV tidakdiujiulang.

Backupterenkripsi/restoredisposable73tabel10berkas28migrasi,promosi/authsmoke,runtime3file/publicMotionexact lulus. KeduaChangeLogditulis/dibacaulang. **UI-01.2 LULUS pada kandidatini.** UI-01.1/UI-01.3/UI-01.4/UI-02.1 carry melaluideltaterbatas;5currentfullPASS,24historicalPASSmenunggurekonsiliasi,7historicalopen tetap. Ini bukan persentaseimplementasi atau signoffvisual. ReviewAndreas/Ownerbrowserpublik/HPfisik/screenreader/staging/UAT/proyekpilotnyata/PILOT_READYOPEN. Demo statis tidakberubah. [DashboardKPI](https://arkarupa-dashboard.vercel.app/?project=2#overview-metrics-heading).

## 2026-11-21 - Arkarupa: judul langsung terbaca dan Aksi cepat ke Menu

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `3f9aafb8a445884946768895255d08f68bb1c6ba` mengeluarkan judul halaman dari splitText/fade500ms agar langsung terbaca. Monokrom,PlusJakarta,geometriHolsite,SVG,reducedmotion dananimasi teks eksplisit lain dipertahankan. Animasi kartu tidak diubah.

Aksi cepat memiliki tombol sekunder44px Buka menu navigasi: dialog ditutup sebelum drawer terbuka,fokus ke halaman aktif danTutup/Escape kembaliMenu. Deferredclose tidak menarik fokus yang sudah dipindah pengguna. Defek lama direproduksi;sesudahnya Menu mempertahankan fokus.32baselinepublik jalurmanual+32actualHTTPcandidate+32publicafter padaPM/Pelaksana,Dashboard/workspace,portrait/landscape320–1440 normal/reduced lulusjudul,TabShiftTab/Enter/Escape/Tutup,satuoverlay,konteks,reflow,zeroPOST. Dua tesMySQLdisposable53asersi membuktikan proyeksi workspace/sumber6role serta unduh lampiranprivat;fingerprintbisnisHTTPtetap,DB/serverdibersihkan. PDF/CSVformat tidak berubah/tidakdiujiulang.

Backupterenkripsi/restoredisposable73tabel10berkas28migrasi,promosi/authsmoke,runtime4file/publicMotionexact lulus. KeduaChangeLog ditulis/dibacaulang. CSS/mainpartial/desktopmenu identik;4fullPASS UI-01.1/UI-01.3/UI-01.4/UI-02.1 carry,25historicalPASS menunggu rekonsiliasi,7historicalopen tetap. UI-02.3/UI-09 subset,bukan36/36atau signofflevelvisual. ReviewAndreas/Ownerbrowserpublik/HPfisik/screenreader/staging/UAT/proyekpilotnyata/PILOT_READYOPEN. Demostatis tidak berubah. [Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2).

QA tambahan4kasuspublik Finance/Purchasing,portrait390normal/landscape740reduced,lulusjalurkas/material,konteks,target44px,Menu/fokus/satuoverlay/zeroPOST. Totalpublik36kasus,32utama+4tambahan. Ownerbrowser/QS/klien/HPfisik belumditutup.

## 2026-11-21 - Arkarupa: dock monokrom dan nama halaman aktif

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `a8639bcaf5c14feceba865345b2b09d6f1ab00a9` memperjelas penanda dock HP dari putih transparan menjadi bidang putih solid dengan ikon gelap dan outline fokus gelap. Link inert meredup saat drawer terbuka,pulih saat tutup;drawer dapat menutupi dock sehingga perubahan utama visual dibuktikan pada keadaan tertutup. Komposisi Holsite/PlusJakarta/gradien netral/SVG/reduced motion tetap.

Menu pada modul selain Dashboard/Proyek menyebut halaman aktif dan memakai aria-current location dari navigasi sesuai izin.40baselinepublik+40actualHTTPcandidate+40afterpublik,PM/Pelaksana,4route320–1440 luluspenanda/label/konteksproyek/44px/keyboard/Escape/nooverflow/zeroPOST.100asersiMySQLdisposable pada2tes membuktikan isolasikonteks danarsipdokumenklienversi/izin;fingerprintbisnisHTTP tetap. DB/server dibersihkan. Backupterenkripsi/restoredisposable73tabel10berkas28migrasi,promosi/authsmoke danruntime3file/CSSexact lulus. KeduaChangeLog ditulis/dibacaulang. Backend/schema/auth/nilaibisnis/PDFCSV tidakdiubah;CSVtidakdiujiulang.

UI-02.2/UI-09 masih subset;4fullPASS UI-01.1/UI-01.3/UI-01.4/UI-02.1 carry melalui delta mobile terbatas.25historicalPASS perlu rekonsiliasi dan7historicalopen tetap. Bukan persentase implementasi atau signoff levelvisual. ReviewAndreas/Ownerbrowserpublik/HPfisik/screenreader/staging/UAT/proyekpilotnyata/PILOT_READYOPEN. Demostatis tidakberubah. [Dashboard](https://arkarupa-dashboard.vercel.app/?project=2).

## 2026-11-21 - Arkarupa: navigasi tablet tunggal dan Escape rail desktop

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `68eb0503e5ac954b3acf7449c9327fe565c30435` meningkatkan label kelompok navigasi dari11px ke13px netral. Kontrol open/close native Filament yang sebelumnya ikut tampil pada900–1023px disembunyikan hanya pada desktop Arkarupa>=900;toggle Holsite tetap menjadi kontrol desktop. Rail61px ringkas/216px terbuka dan header54desktop/60HP dipertahankan sesuai pengukuran arsip. Brand Arkarupa,palet monokrom,PlusJakarta,SVGoriginal dan reduced motion tetap.

Escape dari sidebar/toggle desktop terbuka merapikan rail dan memulihkan fokus ke toggle. Escape dari konten/dialog tidak merapikan rail;drawer dan aksi cepat HP tetap memulihkan fokus masing-masing.40baselinepublik+40preview actualBlade+40afterpublik padaPM/Pelaksana,Dashboard/workspace dan10viewport-motion lulus geometri,label,href,reflow,keyboard,one-control dan zeroPOST.12hotresize per stage membuktikan899↔900,1023↔1024,preferensi dan focus handoff tanpa reload. Preview bukan full HTTP candidate;public after dan exact runtime membuktikan source final.

Dua tesMySQLdisposable41asersi lulus upah parsial tanpa posting biaya lagi serta Finance role/isolation/Livewire dan immutable client PDF;bytes PDF tetap setelah master company berubah. DB/server disposable dibersihkan. Backend/schema/auth/angka transaksi/formatPDFCSV tidak berubah;CSV tidak terdampak/tidak diuji ulang. Runner kanonik backup terenkripsi/restore disposable73tabel10berkas28migrasi,promosi/authsmoke lulus;runtime3file/CSSpublik exact. KeduaChangeLog ditulis/dibaca ulang dengan tanggal dan bukti lama utuh.

**UI-02.1 LULUS pada kandidat ini.** UI-01.1/UI-01.3/UI-01.4 dibawa dengan overview/partial identik dan delta CSS/menu yang terbatas.25PASS historis lain menunggu rekonsiliasi penuh,7historicalopen tetap terbuka. Ini bukan skor implementasi atau sign-off level visual Andreas. Ownerbrowserpublik,HPfisik,screenreader,staging,UAT,proyekpilotnyata danPILOT_READYOPEN. Demo statis tidak berubah. [Workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2).

## 2026-11-21 - Arkarupa: tabel proyek, konteks sumber dan fokus setelah refresh

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `9409f3eab62af635d7d02570be8e14fe3b62b028` memperbesar judul kolom tabel proyek dari10px uppercase ke13px sentence case dengan abu-abu lebih gelap. Dialog rincian sumber menyebut nama proyek dan cut-off progres; keterangan terpisah menjelaskan bahwa saldo keuangan mengikuti waktu pembacaan, bukan otomatis saldo historis pada cut-off. Palet monokrom, Plus Jakarta Sans, komposisi Holsite, aset SVG original dan reduced motion dipertahankan.

Bug fokus setelah refresh diperbaiki: URL, proyek dan halaman kedua sebelumnya tetap benar, tetapi fokus jatuh ke body. Daftar proyek kini memulihkan fokus secara instant hanya bila hash menunjuk tautan progres yang ada.12kasus actual Laravel HTTP disposable pada enam viewport-motion lulus proyek kosong, akun tanpa akses, delapan proyek/halaman2, Detail progres, tautan kembali, browser Back, refresh dan fokus pagination. Fingerprint bisnis semua tabel tetap sama. Dua tesMySQL70asersi lulus cut-off/periode/reset/baselinekosong/pagination/RBAC; bukti SQL dipakai ulang dengan hash untuk retry HTTP karena source bisnis tidak berubah.24publik PM/Finance sebelum dan24sesudah lulus judul tabel, nama/cut-off dialog, angka keuangan exact, Escape/fokus, reflow dan zeroPOST; direct hash/refresh fokus juga diuji pada demo aktif.

**UI-01.4 LULUS pada kandidat ini:** bukti progres/alert/tautan dari kandidat sebelumnya dibawa dengan partial progres dan action href identik, lalu dilengkapi HTTP disposable kosong/multipage dan verifikasi publik current. UI-01.1/UI-01.3 tetap LULUS melalui partial KPI/kas identik serta CSS/caller yang terbatas pada tabel proyek.26PASS historis lain masih perlu rekonsiliasi penuh,7baris historis terbuka tetap terbuka. Ini bukan persentase implementasi atau persetujuan level visual Andreas.

Backend/schema/auth, formula progres/uang dan format laporanPDFCSV tidak berubah;ekspor tidak diuji ulang. Runner kanonik lulus backup terenkripsi/restore disposable73tabel10berkas28migrasi,promosi/authsmoke;runtime3file/CSSpublicexact. Kedua Change Log ditulis/dibaca ulang dengan riwayat tetap. Owner browser publik, HP fisik, screenreader, zoom200lintasmodul,reviewAndreas,staging,UAT,proyekpilotnyata danPILOT_READY terbuka. Demo statis tidak berubah. [Tabel proyek](https://arkarupa-dashboard.vercel.app/?from=2026-10-01&to=2026-11-21#status-proyek).

## 2026-11-21 - Arkarupa: kandidat tabel dan fokus lokal menunggu QA

**CONFIRMED. IMPLEMENTED_NOT_DEPLOYED / QA_INCOMPLETE.** Kandidat lokal `aa41c7167aa45d2d8e1b8e35f078310585458335` memperbesar judul tabel proyek menjadi13px sentence case dengan kontras netral lebih kuat. Dialog sumber menyebut proyek/cut-off progres dan membedakannya dari waktu pembacaan saldo. Fokus hash tautan progres setelah refresh halaman2 diperbaiki; URL dan halaman sebelumnya tetap benar tetapi fokus body. Palet monokrom, Plus Jakarta Sans, layout Holsite dan reduced motion dipertahankan.

Dua tesMySQLdisposable70asersi dan24baselinepublik lulus. Rangkaian HTTP disposable terakhir melewati enam skenario PM (dialog,halaman2,kembali,Back,refresh,pagination) lalu berhenti pada recovery akun tanpa proyek: selector harness tidak menyertakan simbol panah yang terdapat pada nama tautan. Pesan kosong/nol baris sudah terbaca. Koreksi selector disiapkan, belum diuji. Fingerprint bisnis tetap; semua database/server milik run dibersihkan. Ini bukan PASS12 atau penutupan UI-01.4. PDF/CSV tidak terdampak dan tidak diuji ulang.

**Demo publik tetap `e4b3a826fbd255aea6b8e587f011c9007e0d1fbb`; tidak ada deployment kandidat ini.** UI-01.1/UI-01.3 tetap penerimaan pada kandidat publik sebelumnya;UI-01.4 parsial,27PASS historis lain memerlukan rekonsiliasi,7historicalopen tetap terbuka. Tidak menaikkan skor visual atau persen implementasi. Change Log kandidat lokal dan jadwal ditulis/dibaca ulang; entri run lokal belum tampil pada tab demo publik sampai promosi yang lulus. Next Frontend+QA: focusedHTTP12 dengan selector yang dikoreksi, lalu package/rehearsal/promote dan24verifikasi publik pada kandidat yang sama. Backend/schema/auth/formula tidak berubah;staging/UAT/HPfisik/Ownerbrowser/reviewAndreas/PILOT_READY terbuka. [Demo terakhir terverifikasi](https://arkarupa-dashboard.vercel.app/?from=2026-10-01&to=2026-11-21#status-proyek). Demo statis tidak berubah.

## 2026-11-21 - Arkarupa: progres ringkas dengan angka lengkap per proyek

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `e4b3a826fbd255aea6b8e587f011c9007e0d1fbb` merapikan persentase pada tabel Progres & sumber proyek. Sebelumnya angka tampil hingga enam desimal. Kini aktual/rencana/selisih ringkas maksimal dua desimal, dengan ≈ jika dibulatkan. Nilai positif di bawah0,01 ditulis <0,01. Contoh44,571428% menjadi≈44,57%;25/50/100 dan nol yang exact tidak ditandai perkiraan. Status tertinggal/di atas/sesuai tetap dihitung dari variance sumber penuh, dan progress meter tetap memakai nilai asli.

Kontrol native Angka lengkap memiliki nama proyek dan menampilkan aktual/rencana/selisih presisi asli. Enter membuka, Escape menutup dan memulihkan fokus secara instant;target44px dan reduced motion dipertahankan. Holsite monokrom, Plus Jakarta Sans dan keluarga SVG asli tetap, tanpa aset dekorasi baru.42fixtureactualBlade sebelum/sesudah mencakup fractional,exact,zero,tiny,near100,ahead,missing pada320/390/768/900/1440reduce+390normal. BigInt oracle memverifikasi pembulatan,tanda≈,nilai/aria/metervalueexact serta keyboard/reflow/zeroPOST.36publik PM/Finance/Pelaksana sebelum/sesudah pada dua scope juga lulus nilai/alert/tautan proyek-periode, Enter ke Detail progres dan kembali memulihkan konteks/fokus.

Dua tesMySQLdisposable70asersi lulus cutoff historis/current,lateverification,reset/invalid422,missingbaseline,pagination,reviewqueue,RBACdanisolasi. Tidak ada perubahan backend/schema/auth,formula progres atau format laporanPDFCSV;ekspor tidak diuji ulang. Runner kanonik lulus backup terenkripsi/restore disposable73tabel10berkas28migrasi,promosi/authsmoke;runtime4file/CSSpublicexact. Kedua Change Log ditulis/dibaca ulang dengan riwayat tetap.

UI-01.4 masih PASS_SUBSET:proyek kosong dan navigasi kembali lintas halaman memerlukan penerimaan penuh. UI-01.1/UI-01.3 dibawa dengan bukti delta terbatas:Gitblob KPI/cash identik,overview hanya mengganti sel progres dengan partial dan CSS hanya menambah selector khusus disclosureprogres.27PASS historis lain menunggu rekonsiliasi penuh,7baris historis terbuka tetap terbuka. Bukan persentase implementasi atau penilaian level visual baru. Ownerbrowser,HPfisik,screenreader,zoom200lintasmodul,reviewAndreas,staging,UAT,proyekpilotnyata danPILOT_READYOPEN. Demo statis tidak diubah. [Progres proyek](https://arkarupa-dashboard.vercel.app/?from=2026-10-01&to=2026-11-21#status-proyek).

## 2026-11-21 - Arkarupa: grafik kas monokrom mempertahankan periode nol

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `4d6998259225a23c7ba6beba7acd543c4f0799f0` memperbaiki grafik kas untuk rentang bulanan lebih dari setahun. Sebelumnya bulan tanpa transaksi dapat dilewati dan garis menghubungkan bulan aktif. Kini bulan kosong berada di nol; titik pada awal/akhir dan tetangga bulan aktif menjaga representasi tanpa memperluas seluruh rentang panjang. Caption menyebut jumlah hari/bulan bertransaksi dari seluruh periode. Ledger, nilai tabel, total, izin serta kontrak ProjectReports tetap.

Palet Holsite monokrom hitam/putih/abu, Plus Jakarta Sans, aset SVG asli dan reduced motion dipertahankan. Kas masuk memakai garis utuh, kas keluar putus-putus, dilengkapi tabel alternatif dan kontrol keyboard. Computed palette/font lulus pada390/1440px.30fixtureactualBlade sebelum/sesudah mencakup kosong, harian, bulanan,35bulan dan1211bulan pada320/390/768/900/1440 reduced serta390normal. Oracle kalender memeriksa setiap periode dan jumlah titik dibatasi.24publik PM/Finance sebelum/sesudah lulus rekonsiliasi data, komposisi70:30desktop/HPbertumpuk, tabel Enter/Escape/fokus, reflow dan zeroPOST.2tesMySQLdisposable109asersi lulus sumberkas/nonkas/transfer/periode serta35bulan;database disposable dibersihkan.

**UI-01.3 LULUS pada kandidat ini. UI-01.1 dibawa dengan bukti delta terbatas:** Gitblob komponen KPI identik dengan kandidat sebelumnya, perubahan CSS satu aturan khusus caption kas,24regresi publik membuktikan posisi4x1desktop/2x2HP. Matriks36current kini mengikat2ID tersebut;27PASS historis lain menunggu rekonsiliasi,7baris historis terbuka tetap terbuka. Ini bukan persentase implementasi produk atau persetujuan level visual baru.

Runner kanonik lulus backup terenkripsi/restore disposable73tabel10berkas28migrasi, promosi dan autentikasi smoke. Runtime3file/CSSpublik exact;testFinanceTest source tidak dipaketkan. Kedua Change Log ditulis/dibaca ulang dengan riwayat dipertahankan. Backend/schema/auth/rumus uang serta format PDF/CSV tidak berubah;ekspor tidak diuji ulang. Ownerbrowser, HPfisik, screenreader, zoom200lintasmodul, reviewAndreas, staging, UAT, pemilihan proyek nyata dan PILOT_READY OPEN. Demo statis tidak diubah. [Grafik kas monokrom](https://arkarupa-dashboard.vercel.app/?from=2024-01-01&to=2026-11-21#overview-cash-title).

## 2026-11-21 - Arkarupa: KPI triliun terbaca dan penerimaan final UI-01.1

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `6c42bbc8aab2817b788a52205ce15cb7729fa2d1` menandai angka ringkas KPI dengan ≈ hanya bila pembulatan dua desimal unit kompak mengubah representasi. Contoh1.234.567→≈1,23jt,sedangkan1.230.000→1,23jt tetap exact. Pemeriksaan sisa memakai bcmath, bukan perbandingan float. Prefix netral ditumpuk agar nominal muat pada320px. NilaiRpraw,aria-label,title dan tautan sumber dipertahankan;kompaktfinalmemakaiT(triliun)danmenghapus,00tanpamenambahestimasiuang. Nilai lengkap memiliki namaKPI,open memusatkan panel danEscape memulihkan fokus secara instant di antara header dan dock. Holsite,monokrom,PlusJakarta,reduced motion danSVGoriginal tetap.

**UI-01.1 LULUS ulang pada kandidat ini:** empat posisi KPI4×1desktop/2×2HP,label panjang dan nominal18digit pada320px,serta kondisi nol/missing.36fixture actualBlade sebelum dan36sesudah pada enam viewport-motion lulus grid/card/pagenooverflow/roundingtruth/rawexact/keyboard;fixture bukan Owner/RBAC browserUAT.12baseline+12afterpublikPMFinance juga lulus empat posisi termasuk pengganti jumlah proyek sesuai role. Dua tesMySQLdisposable70asersi lulus9batas pembulatan dan rekonsiliasi Dashboardcash/aging/nonkas/transfer/periode. Pembanding harness memperbaiki JSONoptionalundefined/propertyhilang ke serialisasi yang sama;assert data dan geometri tetap,36diulangPASS.

Matriks36 sekarang mengikat UI-01.1 ke kandidat current. Status29/36 pada kandidat historis tetap riwayat;28PASS historis lain memerlukan rekonsiliasi delta dan tujuh baris historis terbuka tidak ditutup otomatis. Kandidat awal7aba0e8 disupersesi setelah review visual token18digit;final memakai T(triliun),menghapus ,00 danmengujitokenangka satu baris sertaformatmelaluiBigIntoracle. NilaiRpraw tetap exact. Ini bukan persentase implementasi produk atau penilaian level visual baru. UI-09 masih PASS_SUBSET;HPfisik,Ownerbrowser,screenreader,zoom200lintasmodul,reviewAndreas,staging,UAT,proyekpilotnyata danPILOT_READY OPEN.

Backend/schema/auth/rumus nilaiuang/format laporanPDFCSV tidak berubah;ekspor tidak diuji ulang. Backupterenkripsi/restoredisposable/promosi runnerkanonik lulus,runtime3file/CSSpublikexact;testsourceFinanceTestexcludedruntime sesuai allowlist. KeduaChangeLog ditulis/dibaca ulang dengan riwayat tetap. Demo statis tidak berubah. [KPI Dashboard](https://arkarupa-dashboard.vercel.app/?project=2#overview-metrics-heading).

## 2026-11-21 - Arkarupa: penanda pembulatan KPI dan penerimaan ulang UI-01.1

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `7aba0e8277bb80e0c554533c68c67c30fa370eac` menandai angka ringkas KPI dengan ≈ hanya bila pembulatan dua desimal unit kompak mengubah representasi. Contoh1.234.567→≈1,23jt,sedangkan1.230.000→1,23jt tetap exact. Pemeriksaan sisa memakai bcmath, bukan perbandingan float. Prefix netral ditumpuk agar nominal muat pada320px. NilaiRpraw,aria-label,title,angka kompak dan tautan sumber dipertahankan. Nilai lengkap memiliki namaKPI,open memusatkan panel danEscape memulihkan fokus secara instant di antara header dan dock. Holsite,monokrom,PlusJakarta,reduced motion danSVGoriginal tetap.

**UI-01.1 LULUS ulang pada kandidat ini:** empat posisi KPI4×1desktop/2×2HP,label panjang dan nominal18digit pada320px,serta kondisi nol/missing.36fixture actualBlade sebelum dan36sesudah pada enam viewport-motion lulus grid/card/pagenooverflow/roundingtruth/rawexact/keyboard;fixture bukan Owner/RBAC browserUAT.12baseline+12afterpublikPMFinance juga lulus empat posisi termasuk pengganti jumlah proyek sesuai role. Dua tesMySQLdisposable60asersi lulus7batas pembulatan dan rekonsiliasi Dashboardcash/aging/nonkas/transfer/periode. Pembanding harness memperbaiki JSONoptionalundefined/propertyhilang ke serialisasi yang sama;assert data dan geometri tetap,36diulangPASS.

Matriks36 sekarang mengikat UI-01.1 ke kandidat current. Status29/36 pada kandidat historis tetap riwayat;28PASS historis lain memerlukan rekonsiliasi delta dan tujuh baris historis terbuka tidak ditutup otomatis. Ini bukan persentase implementasi produk atau penilaian level visual baru. UI-09 masih PASS_SUBSET;HPfisik,Ownerbrowser,screenreader,zoom200lintasmodul,reviewAndreas,staging,UAT,proyekpilotnyata danPILOT_READY OPEN.

Backend/schema/auth/rumus nilaiuang/format laporanPDFCSV tidak berubah;ekspor tidak diuji ulang. Backupterenkripsi/restoredisposable/promosi runnerkanonik lulus,runtime3file/CSSpublikexact;testsourceFinanceTestexcludedruntime sesuai allowlist. KeduaChangeLog ditulis/dibaca ulang dengan riwayat tetap. Demo statis tidak berubah. [KPI Dashboard](https://arkarupa-dashboard.vercel.app/?project=2#overview-metrics-heading).

## 2026-11-21 - Arkarupa: kontrol periode progres workspace

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `e051b3231e28a2cfc3baf132dc96088a30cce28e` memperjelas label ringkasan workspace12→13px dan menambahkan panel native Ubah periode progres dengan label14px/target44px, marker disclosure bawaan dan palet monokrom. FormGET membawa proyek, tanggal mulai dan cutoff ke validasi server yang sudah ada. Nilai progres tetap kumulatif sampai cut-off; tanggal mulai diteruskan pada tautan sumber. Batas tanggal native/required, Escape kembali ke summary dan tautan periode saat ini tersedia. Penerapan memuat ulang workspace; helper mengingatkan menyimpan isian lain. Hanya periode progres yang berubah; checklist, tugas dan saldo mengikuti sumber terkini. Tidak menambahkan autosave untuk isian bisnis yang belum dikirim.

18fixture actual Blade leaf tanggal normal/lintas tahun/satu hari pada6kondisi viewport-motion lulus font, invalid future/rentang/required, Escape, retensi field, tanpa overflow dan tanpa POST bisnis. Property$this diproyeksikan ke variable harness; binding asli diuji HTTP disposable.24baseline dan24pemeriksaan publik PM/Pelaksana dua proyek lulus nativeGET15→10Nov,Back/Refresh/reset/project/from/cutoff/hash serta progress/tautan sumber exact. Dua tes MySQLdisposable18asersi lulus GETvalid/invalid422/tanpa business posting dan stale stock opening review yang tidak dapat mengganti approved cutoff lebih baru.

Backend/schema/auth/rumus/format laporan/PDF/CSV tidak berubah; ekspor tidak diuji ulang. Backup terenkripsi/restore disposable dan promosi runner kanonik lulus, runtime4file/CSSpublik exact;OperationsTest source tidak masuk artifact runtime sesuai allowlist. Kedua Change Log ditulis dan dibaca ulang, riwayat dipertahankan. UI-03.2/UI-03.3/UI-09 tetap PASS_SUBSET; belum36/36 atau persetujuan level visual baru. HP fisik, screenreader, Owner browser, review Andreas, staging, UAT, proyek pilot nyata dan PILOT_READY masih OPEN. Demo statis tidak berubah. [Periode progres workspace](https://arkarupa-dashboard.vercel.app/workspace?project=2&from=2026-11-01&cutoff=2026-11-15#workspace-level2).

## 2026-11-21 - Arkarupa: jumlah antrean dan pintasan Perlu perhatian

**CONFIRMED. DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `186658d7be08b3bf2b1c2bc8c3b2a7bfd5a1f609` memperjelas badge jumlah antrean Dashboard dari 12 ke 14 px tabular, putih di atas #262626 dengan ukuran minimum 40 × 32 px. Bagian Dashboard memiliki pintasan Perlu perhatian ketika panel tersedia. Enter memfokuskan judul dengan outline 2 px dan ruang header 82 px, lalu Tab menuju tautan antrean pertama. Lingkup proyek terhubung ke judul melalui aria-describedby. Jumlah, label, tujuan antrean, hak akses, Plus Jakarta Sans, palet monokrom, Holsite dan reduced motion dipertahankan.

24 fixture actual Blade nav/panel kosong, satu, sepuluh label panjang escaped dan panel tersembunyi pada enam kondisi viewport-motion lulus kontras, target 44 px, fokus, query/hash, tanpa overflow dan tanpa POST bisnis. Ini fixture DOM, bukan HTTP aplikasi lokal.24 baseline dan24 pemeriksaan publik PM/Finance portofolio serta proyek terpilih lulus data/link/count/scope exact, keyboard dan refresh hash. Dua tes MySQL disposable61asersi lulus review queue/pagination/roles dan partial invoice/credit/unapplied/reversal. Dua assert baru membuktikan ProjectReports memisahkan transaksi43jt dan pembalikannya menjadi43jt masuk/43jt keluar pada seri harian yang sama. Fixture negatif lama tidak mewakili kontrak agregat runtime; grafik tidak diubah berdasarkan fixture itu. Harness Tab menunggu dua frame setelah fokus, tanpa pelemahan assertion.

Backend/schema/auth/rumus/format laporan/PDF/CSV tidak berubah; ekspor tidak diuji ulang. Backup terenkripsi/restore disposable dan promosi runner kanonik lulus, runtime4file/CSSpublik exact;test source tidak masuk artifact runtime sesuai allowlist. Kedua Change Log ditulis dan dibaca ulang, riwayat dipertahankan. UI-01.3/UI-09 tetap PASS_SUBSET; belum36/36 atau persetujuan level visual baru. HP fisik, screenreader, Owner browser, review Andreas, staging, UAT, proyek pilot nyata dan PILOT_READY masih OPEN. Demo statis tidak berubah. [Perlu perhatian](https://arkarupa-dashboard.vercel.app/#overview-review-title).

## 2026-11-21 - Arkarupa: sumbu kas terbaca dan panduan pola monokrom

**CONFIRMED. Status DEMO_PUBLIC_VERIFIED, NOT_BUSINESS_READY.** Source `dd53c17734e6bdea47b16e383325b5a990e60ffb` meningkatkan label sumbu grafik kas dari 10 ke 12 px tabular dengan warna netral #595959, serta legenda dari 10 ke 13 px. Kolom sumbu mengikuti panjang isi agar nominal besar tetap di luar plot. Legenda menyebut Kas masuk · garis utuh dan Kas keluar · garis putus-putus, dengan nama daftar Panduan garis arus kas. Pola garis, data seri, koordinat, periode, nilai tabel, hak akses, Plus Jakarta Sans, monokrom dan komposisi Holsite tetap. Tidak menambah aset atau animasi.

24 fixture Blade kosong/tunggal/banyak/bulanan pada enam kondisi viewport-motion lulus font, kontras teks minimal 4,5:1, pola minimal 3:1, label di luar plot, tabel keyboard, tanpa overflow dan tanpa POST bisnis. Fixture merupakan render leaf pada DOM autentik, bukan HTTP aplikasi lokal. Dua belas baseline dan dua belas kasus publik PM/Finance lulus nilai/koordinat/total/periode exact serta Enter/Space/Escape/fokus tabel. Dua tes MySQL disposable 45 asersi lulus rekonsiliasi sumber kas/periode/nonkas serta advance/refund/transfer tanpa biaya ganda. Startup awal belum siap dan folder sesi harness yang hilang dikoreksi; tes diulang pada DB fresh, bukti gagal dipertahankan. Backend/schema/auth/rumus serta format laporan/PDF/CSV tidak berubah; ekspor tidak diuji ulang.

Backup terenkripsi/restore disposable dan promosi runner kanonik lulus; runtime tiga file dan CSS publik exact. Kedua Change Log ditulis dan dibaca kembali tanpa menimpa riwayat. UI-01.3/UI-09 tetap PASS_SUBSET; belum seluruh 36 kriteria pada kandidat yang sama atau penilaian visual baru. HP fisik, screenreader, Owner browser, review Andreas, staging, UAT dan PILOT_READY masih OPEN. Demo statis tidak berubah. [Grafik Dashboard](https://arkarupa-dashboard.vercel.app/#overview-cash-title).

## 2026-11-21 - Arkarupa: kontras filter BUP dan jumlah hasil

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `8f934293461e62a95dffaa973081cf02fd3f89c3` memperbaiki teks filter BUP aktif dari#383838diatas#171717(kontras1,53:1) menjadi putih pada latar netralyangsama(17,93:1). Filter inaktif11,73:1 dipertahankan. Monokrom,Plus Jakarta Sans,layoutHolsite,reduced motion danSVGoriginal tetap. Ringkasan menampilkan jumlah tampildaritotalpaginator serta status aktif,menggunakan rolestatus/polite/atomic danterhubung kenav untukfeedbacksetelah hasilberubah. Tidak menambah query bisnis,nilai atau notifikasi palsu.

30actualBladefilterleaf5status/0/1/20dari61 pada6viewport-motion lulus textcontrastmin4,5/count/keyboard/nooverflow/zeroPOST;ini fixtureDOM,bukanserverHTTPapplokal.50baseline+50after publik PM/Pelaksana pada5statusx5kondisi(320/390/900/1440reduce+390normal) lulus count terikat agregatreadonlyfixture,statuspressed/URLrefresh,metadata/aksi exact danzeroPOST. Label/targetWiretetap. PengumumanATdipersiapkanmelaluimarkup;screenreaderfisik belum diuji.

Dua tes MySQLdisposable46asersi lulus Livewirefilter/count/reasonpreserved/statuslaporanimmutable/roleview danstockcutoff/openingquantity yangmenolakfuturemovement/costposting. PercobaanawalfullpagePHPmenangkapsyntaxinline@phpyangtidakmunculpadafixtureleaf;digantiblockPHPmultiline,laluduaSQLdiulangDBbaruPASS. Failureproofretained,tanpapelemahanassertion. OwnedtmpD/DBfreshguarded,dropped/serverMySQLshutdown/ownedsessionsremoved. Backend/schema/auth/rumus/formatPDFCSV tidakberubah;laporan/PDF/ekspor tidakterdampak/tidakdiujiulang. Test source termasukcommit tetapi tidakdipaketkan keruntime sesuaiallowlistrunner.

Backupencrypted/restoredisposable73tables10files28migrasi/promosi/runtime3file/CSSpublicexact lulus. KeduaChangeLogditulis/dibacaulang,riwayatdipertahankan. UI04.4/UI09 tetapPASS_SUBSET,bukan36/36atau levelvisualbaru. Ownerbrowser/HPfisik/screenreader/zoom200/reviewAndreas/staging/UAT/proyekpilotnyata/PILOT_READY OPEN. Demo statis tidak berubah. Berikutnya cek kontras seri/legenda DashboardUI01.3 danlanjutkonsolidasi matriks. [Filter BUP](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=harian#field-report-list-heading).

## 2026-11-21 - Arkarupa: alasan review dan kembali ke BUP

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `238f01aee7391b61c72b0d2e354cf2c968722f03` memberi panel monokrom pada alasan review danpetunjuk penolakan minimal5karakter sesuai service existing. Isi alasan review mengingat bookmark laporan sebagai string agar ID18digit tidak kehilangan presisi. Tautan Kembali ke laporan menavigasi native hash/fokus heading asal sambil mempertahankan isian. Bookmark ini untuk navigasi;tidak mengubah ID laporan pada tindakan server. Target tidak ditemukan membatalkan hash,fokus ke filter danpesan lokal tanpa menghapus alasan. Event status BUP berubah membersihkan bookmark/pesan. Monokrom,Plus Jakarta Sans,Holsite,reduced motion danSVGoriginal tetap.

12fixture actualBlade panel/jump/opening section short/longheading/18digitID x6viewport-motion lulus reasonretention/nativehash/fokus/44px/missingrecovery/lifecycleclear/nooverflow/zeroPOST. Ini fixtureDOM pada halaman publik terautentikasi,bukanserverHTTPapp lokal.12baseline+12after publik PM/Pelaksana lulus metadata/aksi exact,6alur PM dan6denyUIreviewCrew. Missingtarget diuji denganDOMremoval danlifecycle denganCustomEvent;tidakmengklaimfilterRPCatau transaksi review publik. Tidak ada POSTbisnis. Satu fixture awal tidak menyertakan tabindex heading seperti source asli;fixture dikoreksi tanpa melemahkan fokus. Kandidat9d66645 hanya rehearsal,lalu disempurnakan untuk cleanup konteks sebelum satu promosi final.

Dua tes MySQL disposable33asersi lulus verifiedprogress40ke46/koreksi/excess/idempotency danreviewhistory/reasonrequired/author-reviewer-Finance. Bukti data dipertahankan setelah delta terakhir hanya cleanup client event;backend/query/auth identik. OwnedtmpD/DBbaru guarded,dropped/serverMySQLshutdown/ownedsessionsremoved. Backend/schema/auth/rumus/nilai/tindakanreview/PDFCSV tidak berubah;laporan/PDF/ekspor tidakterdampak/tidakdiujiulang. Backupencrypted/restoredisposable73tables10files28migrasi/promosi final/runtime3file/CSSpublicexact lulus. KeduaChangeLog ditulis/dibacaulang,riwayatdipertahankan.

UI04.4/UI09 hanyaPASS_SUBSET;tidakmenyatakan36/36atau levelvisualbaru. Ownerbrowser/HPfisik/screenreader/zoom200/reviewAndreas/staging/UAT/proyekpilotnyata/PILOT_READY tetapOPEN. Demo statis tidak berubah. Berikutnya konsolidasi matriks danperiksa kontras seri/legenda Dashboard pada data asli sebagai irisan siap berikutnya. [Review BUP](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=harian#field-report-list-heading).

## 2026-11-21 - Arkarupa: identitas BUP bernama dan lookup laporan lama

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Kandidat akhir run identitas BUP adalah `98d095e0dd80a35bd71274fed7aaed54d0871111`, menggantikan1419656 yang sempat terbit pada run sama. Visual dua kolom label13px/nilai14px danpanel kode native44px dipertahankan. Grup dl kini bernama Laporan #ID melalui aria-label agar identitas self-contained bagi aksesibilitas serta lookup laporan lama tetap tersedia.12fixture leaf diulang setelah label ditambahkan;12pemeriksaan publik final lulus group label/nomor/date/key/title/meta/actions exact/defaultclosed/EnterSpace/fokus/nooverflow/zeroPOST. Nama grup diperiksa pada Chrome accessibility tree untuk dua role di390px;ini bukan screenreader atauUATfisik.

Regresi tambahan disposable lookup laporan lama,paginasi antrean,fokusdeep link danstale report action lulus1tes9asersi pada kodeakhir. Bukti2tes23asersi reviewhistory/draft/photo/crossproject pada1419656 dipertahankan karena backend/query/auth tidak berubah;tidakdiklaimsebagaiSQLrunulangpadaSHAakhir. Labelharnessreceiptgenerikmerujukrunnerasal;nama/filtertesdan9asersi aktualada dilogeksekusi. Backupencrypted/restoredisposable73tables10files28migrasi/promosi final lulus;runtime3file/CSSpublicexact. Rilisawal danbuktinyatetapriwayat,tidakditulisulangsebagaiSHAakhir. KeduaChangeLogmemuatfinalcandidate dandibacaulang.

UI04.4/UI09 tetapPASS_SUBSET;tidakmenyatakan36/36,levelvisualbaru,Ownerbrowser,HPfisik,screenreader,zoom200,staging/UATatauPILOT_READY. Demo statis tidak berubah. Berikutnya konsolidasikan bukti acceptance dengan kandidat terkini danlanjutirisan Lapangan/Portal yangsiap. [Riwayat BUP](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=harian#field-report-list-heading).

## 2026-11-21 - Arkarupa: identitas BUP dan kode pekerjaan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `1419656a229bd9008903c33c78bb6e641e94666b` memisahkan nomor laporan dan tanggal kejadian BUP yang sebelumnya bercampur dengan kode pekerjaan dalam satu baris13px. Identitas kini memakai dl dua kolom,label13px/nilai14px tabular. Kode tetap exact dan escaped dalam native details defaultclosed dengan summary44px danfocusoutline;Enter/Space membuka-menutup tanpa RPC. Foto/status/volume/lokasi/tim/aksi serta izin tidak berubah. Monokrom,Plus Jakarta Sans,Holsite,reduced motion dan SVG original tetap;tidak menambah aset raster atau dependensi.

12fixture actualBlade identityleaf short/longescaped pada6viewport-motion lulus13/14/defaultclosed/EnterSpace/fokus/44px/nooverflow/zeroPOST;ini bukanserverHTTPapp lokal.12baseline+12after publik PM/Pelaksana pada fixtureexisting lulus nomor/tanggal/kode/title/meta/actions exact. Screenshotmenggunakanheadingdenganmarginexisting agaridentitas tidakterpotongheader;ini koreksiframing bukti,bukan patchlayouttambahan. Dua probe awal baseline gagal karena parser separator danencodingANSI;harnessUTF8 danpemisahanliteral memperbaikinyatanpamengubahdata. Computedfontawalterbukti13px;asumsi12pxpadaentryjadwalawal dikoreksidenganriwayatdipertahankan.

Dua tes MySQL disposable23asersi lulus histori review author/reviewer vs Finance,alasanreviewrequired,pemulihandraf/stalerevision,fotoprivat danpenolakanlintasproyek. OwnedtempD/DBbaru dijaga;DBdropped/serverMySQLshutdown/ownedsessionsremoved. Backend/schema/auth/data/rumus/formatPDFCSV tidak berubah;laporan/PDF/ekspor tidakterdampak/tidakdiujiulang. Runner kanonik backupencrypted/restoredisposable73tables10files28migrasi/promosi lulus;runtime3file/CSSpublicexact. KeduaChangeLogditulis/dibacaulang,riwayatdipertahankan.

UI-04.4/UI-09 hanya subset;tidak mengklaim36/36 ataulevelvisualbaru. Ownerbrowser/HPfisik/screenreader/zoom200/reviewAndreas/staging/UAT/proyekpilotnyata/PILOT_READY tetapOPEN. Demo statis tidak berubah. Berikutnya lanjut irisan Lapangan/Portal yangsiap dankonsolidasi matriks pada kandidat terbaru. [Buka riwayat BUP](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=harian#field-report-list-heading).

## 2026-11-21 - Arkarupa: tabel periode Lapangan dan pintasan baca

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `dabd5909c5fe8f4df0d7eeb86832d823634d6f09` memperbesar angka/header tabel progres per periode dari12px pada HP menjadi14px,metadata baseline13px danminimumlebar560px dalam wilayah gulir sendiri. Halaman tidak melebar. Monokrom,Plus Jakarta Sans,layoutHolsite,seriaktual danreducedmotion tetap. Tabelmenjaga teks/nilai/date/baseline/status persis;format angka/rumus/CSV/PDF tidak berubah. Tombol Baca tabel periode kini memfokuskan region tanpa gulir otomatis kemudian menyelaraskan awal tabel di bawah header setelah frame dock;kolom yang sedang dibaca dipertahankan.

18fixture actualBlade leaf0/1/12baris pada6viewport-motion lulus14px/fokus/arrow/columnretention/nooverflow/zeroPOST;fixtureleafkosong bukan klaim fullpageempty.12baseline+12after publik PM/Pelaksana pada proyek sintetis yang sudah memiliki baseline lulus rowtexts exact danperilakuyang sama. Proyekpubliklainyangtidakmemilikitabelperiode tidakdienrich atau dipaksakan sebagai fixture. Satu koreksiharness menunggu native keyboard scroll selesai sebelum membandingkan scrollLeft. Tabeltinggi mengungkap pass clearance dock yang menggeser awal;handler menunggu frame tersebut lalu menyelaraskan awal. Bukti gagal retained.

Dua tes MySQL disposable44asersi lulus rekonsiliasi weekly/monthly/baselinehistoris/progresverified/futureunknown/CSVexact/eksporditolakPelaksana dan kalender/dependensi/snapshotlock. Percobaanawal terhalang tmp MySQL di Ckehabisanruang;serverowned diulang dengan tmpdirektoriD danDBbaru,kemudianPASS. Tidak menghapus file pengguna atau mengubah server lain. DBdropped/serverMySQLshutdown/ownedsessionsremoved. Backend/schema/auth/data/formatPDFCSV tidakberubah;PDFtidakterdampak/tidakdiujiulang.

Runner kanonik backupencrypted/restoredisposable73tables10files28migrasi danpromosiPASS;runtime3file/CSSpublicexact. KeduaChangeLog ditulis/dibacaulang danriwayatdipertahankan. UI-04.3/REV-012/UI-09 hanya subset;tidak mengklaim seluruh36 ataulevelvisualbaru. Ownerbrowser/HPfisik/screenreader/zoom200/reviewAndreas/staging/UAT/proyekpilotnyata/PILOT_READY tetapOPEN. Demo statis tidak berubah. Berikutnya lanjut irisan Lapangan/Portal yangsiap dan konsolidasi matriks pada kandidat terbaru. [Buka progres Lapangan](https://arkarupa-dashboard.vercel.app/lapangan?project=2&stage=progres#field-period-table).

## 2026-11-21 - Arkarupa: header monokrom dan pintasan konten

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `ee6d0fa4e8f9f3c6a8d06dfa3e1dcac6e37f1be3` memperbaiki header transparan yang menumpuk konten saat scroll menjadi bidang abu-abu netral opaque. Tinggi header54px desktop/60px HP dan komposisi Holsite tetap. Plus Jakarta Sans, SVG original, monokrom dan reduced motion dipertahankan. Pintasan bawaan Lewati ke konten tetap memakai href/hash/history native;sesudah aktivasi fokus preventScroll dan scrollIntoView start instant dengan scrollmargin82px membuat awal main terlihat di bawah header. Target pintasan saat fokus minimal44px. Tidak menambah library/gambar/dekorasi.

20baseline publik PM/Pelaksana Proyek/Lapangan pada320/390/899/900/1440 menunjukkan header alpha0 dan target main tertutup.24fixture actualBlade component/CSS pada DOM publik terautentikasi dalam6kondisi viewport-motion lulus opaque/fokus/BackQueryRefresh/nooverflow/zeroPOST;ini bukan serverHTTP lokal.24after publik pada kandidatfinal lulus nativehash/fokus/pemulihanq/project,6tautan sumber kontrak PM tidak terintersep,serta dua alur drawer/aksi cepat Escape/fokus pada HP. Runtime3file danCSSpublicexact;duaChangeLog ditulis/dibacaulang,riwayatdipertahankan. UI-02.1/UI-09.2 hanya subset;tidak menaikkan levelvisual atau menyatakan36/36.

Data/integrasi danQA: dua tes MySQL disposable52asersi lulus riwayat penerimaan scoped/private/pricefree,returpenggantian idempotent/progres fisik terpisah,serta CSVabsensi mengikuti filter danmenetralisasi formulasel. Satu kegagalanHTTPfoto500 berasal dari direktori file-session harness yangbelumada;setelah folderowned disiapkan,kedua tes diulang pada DBbaru danlulus. DBdropped/serverMySQLshutdown;tidakmengubahbackend/schema/auth/rumus/dataatauformatPDFCSV. Packagingawal belum menemukan foldertujuan;folderowneddibuat laluartifactimmutable dipaketkan,tanpamodifikasirunnerfrozen. Backupencrypted/restoredisposable73tables10files28migrasi lulus sebelum promosi.

Ownerbrowser/HPfisik/screenreader/zoom200/reviewvisualAndreas/staging/UAT/proyekpilotnyata/PILOT_READY tetapOPEN. Demo statis tidak berubah. Berikutnya konsolidasi sisa pemeriksaan danirisan visual/UX siap pada PaketB,di luar header/pintasan yangbaru ditangani. [Buka Proyek](https://arkarupa-dashboard.vercel.app/proyek?q=%232).

## 2026-11-21 - Arkarupa: hierarki nilai kontrak dan sumber langsung

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `ec09111135e3277233c799c2f91945520cf8ef39` membedakan mata uangRp13px, nominal exact16px tabular danstatus Belum ada kontrak14px pada daftar Proyek. Tidak membulatkan uang atau mengubah formula. Lihat sumber kontrak44px hanya tampil pada role internal yang boleh membaca nilai;tautan native membawa proyek/stagekontrak/hash sumber,fokus heading danscrollmargin82px. Klik/Enter,Back danrefresh mempertahankan pencarianq. Nominal tetap sesuai sumber,harga tersembunyi untukPelaksana. Monokrom/Holsite/Plus Jakarta Sans/reduced motion tetap.

UI-03.4 **PASS_ENGINEERING** pada kandidat ini berdasarkan dua proyek berbeda akses(PM2/Pelaksana1),nama/region panjang,nominal besar/zero/null,unitRp/persen/m2 serta status pada tabel desktop/kartu HP.24fixture actualBlade pada6viewport-motion lulus uang exact,font13/16/14,escaping,textfit/URL/nooverflow/zeroPOST. ActualLaravelHTTPdisposable32skenario lulus24positive8denied denganrole/options/context,harga rolehidden,sourcefocus,BackQueryRefresh dannoLeak. Subset12skenario terarah lulusprice8/rolehide4/unitStatus8/viewportFit.24baseline+24after publikPM/Pelaksana dua proyek lulus angka/aksi/context exact,12perjalanan sumbernative/BackRefresh danpenolakan akseslangsung sumberkontrak bagiPelaksana. HPfisik/UAT tidak disamakan dengan viewportChrome;UI-03.3/UI-09 tetap subset. Tidak mengklaim seluruh36pemeriksaan atau skor desain baru.

FixtureHTTP menggunakan service estimasi/approval/quote/contract/schedule existing untuk nominalbesar,unitm2,statusBelumdimulai danbaselineV1;statusquoteaccepted dipin mengikuti polaOperationsTest,bukan buktiPDFissue/clientacceptance atau dasar konstruksi nyata. HTTP APP_ENVtesting/loopback/file-session,duaakseslokal bukan staging/UAT eksternal. Satu koreksi harness membaca textContent agar spasiakhir nama tidak hilang;subsetviewport memakai batas dock yang benar-benar tampil,tidak menyisakan ruang dockHP pada desktop. SQLproof yang sudahlulus dipertahankan/dipakai ulang untukHTTP retry,tanpa mengklaim SQLrun baru. Dua tes MySQL26asersi luluscriticalpath workday/weekend/branch danfinance matchednote/sourceavailability. Serverowned berhenti/DBdropped/MySQLshutdown. Backend/schema/auth/data/rumus/PDF/CSV tidak berubah;laporan/PDF/ekspor tidak terdampak dantidak diuji ulang.

Runner kanonik backup terenkripsi/restore disposable73business tables10file28migrasi sebelum promosi lulus;runtime4file/CSSpublicexact. Kedua Change Log diperbarui/dibaca ulang,riwayat dipertahankan. Ownerbrowser,reviewvisualAndreas,HPfisik/screenreader/zoom200,staging/UAT/proyekpilotnyata/PILOT_READY tetap terbuka;seluruh36pada satu kandidat masih memerlukan konsolidasi. Demo statis tidak berubah. [Buka daftar Proyek](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-21 - Arkarupa: panduan pencarian dan browser dua akses

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `f32e92caf48e8efa0208239df329fbd778a80009` merapikan petunjuk pencarian/keyboard pada pemilih proyek menjadi disclosure native Panduan pencarian, default tertutup dengan target44px. Teks14px dibuka saat diperlukan; klik/Enter/Space bekerja. Escape saat terbuka menutup panel dan memfokuskan summary, sementara dialog tetap terbuka; Escape saat panel tertutup boleh menutup dialog dan memulihkan fokus pemicu. Deskripsi input tetap memakai helperID lama dan paragraf clipped di luar details, sehingga Chrome Accessibility Tree tetap memiliki teks asli saat tertutup maupun terbuka tanpa duplikasi. Monokrom,Holsite,Plus Jakarta Sans,SVG original,reduced motion,query/opsi/proyek aktif/wire-handler danHapus yang sudah tersedia tetap.

24fixture actualBlade 0/1/3/50proyek panjang escaped pada6viewport-motion serta24baseline+24after publik PM/Pelaksana dua proyek lulus text/helperID/ChromeAXdescription exact,defaultclosed,keyboard,panel viewport/hit,Escape bertingkat,opsi/selected/context,Hapus retained,reflow danzeroPOST sesudahlogin. Fixture lokal Blade bukan bukti role. Bukti baru actual Laravel HTTP loopback dengan MySQL disposable menguji dua proyek bernama sama/panjang danregion panjang,PM memiliki dua proyek sedangkanPelaksana satu.32kasus pada320/390/1440reduce serta390normal lulus24positive dan8denied:workspace/lapangan200/403,daftarID sesuai role,konteks/selected,403tanpa nama proyek bocor dantautanDashboard,nooverflow/zeroPOST setelahlogin. File sesi berada di storage disposable,APP_ENVtesting;ini bukti lokal/auth-scope,bukan CSRFproduction ataustaging/UAT eksternal. Hash UI dinormalisasi LF dan diikat ke kandidat final. Fixture/hak akses publik tidak dimutasi.

Dua tes MySQL disposable39asersi lulus unitREV001 dari estimasi ke baseline/BUP serta pembalikan pemakaian material yang idempotent dan menjaga riwayat. Setelahtes,HTTPfixture disiapkan ulang hanya padaDB disposable terverifikasi. ServerPHP loopback dihentikan,DBdihapus danownedMySQL shutdown/noListener. Tidak ada perubahan backend/schema/auth/rumus/data/PDF/CSV;laporan/ekspor tidak terdampak dantidak diuji ulang.

Runner kanonik membuktikan backup terenkripsi/restore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublicexact. Kedua Change Log diperbarui/dibaca ulang,riwayat dipertahankan. Gap browser dua lingkup akses mendapat bukti lokal pada kandidat ini;UI-03.4 masih perlu konsolidasi nominal/satuan/status danmatriks36pada satu kandidat. UI-09 tetap subset;screenreader fisik/HPfisik/zoom200,Ownerbrowser,reviewAndreas,staging/UAT/proyekpilotnyata/PILOT_READY masih terbuka. Demo statis tidak berubah. [Buka Lapangan](https://arkarupa-dashboard.vercel.app/lapangan).

## 2026-11-21 - Arkarupa: lingkup hasil dan hapus pencarian proyek

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `8154c108c875b724de36fddcfe73a3c0f356168c` memperjelas penghitung pemilih proyek dari jumlah proyek cocok menjadi x dari y proyek dalam akses, font14px dengan angka tegas dan status live atomic. Total berasal dari koleksi proyek yang sudah mengikuti akses. Hapus eksplisit44px tersedia ketika pencarian berisi, termasuk spasi. Klik/Enter membersihkan query dan mengembalikan fokus ke pencarian tanpa mengganti proyek atau membuat RPC. Nomor/nama/wilayah, pilihan aktif, wire handler selectProject, validasi draft dan role tidak berubah. Monokrom/Holsite/Plus Jakarta Sans/SVG original/reduced motion tetap. Koreksi monokrom sebelum promosi menghilangkan nativeWebKit search-cancel biru karena fungsi hapus sudah disediakan tombol berlabel; rule CSSOM dan screenshot Chrome diperiksa, Safari/iPhone fisik belum diuji.

24fixture actualBlade 0/1/3nama sama/50nama-region panjang escaped pada6viewport-motion lulus count/total14px,clear44px pointer/Enter,focus,selected unchanged,matching ID/empty/whitespace,escaping,nooverflow,zeroPOST danEscape close/restore opener.24baseline+24after publik PM/Pelaksana dua proyek lulus options/IDs/pressed/context exact danperilaku baca yang sama. Satu koreksi specificity font dan koreksi harness untuk menunggu x-show/target44 settled serta mengambil screenshot jendela modal yang terlihat dipertahankan bersama bukti gagal. Pseudo computed style tidak mengukur native UA shadow; browser-parsed CSSrule serta screenshot digunakan. Tidak melonggarkan gate44/focus. Probe diagnostik1/6kasus bukan bukti24penuh.

Audit read-only pada empat role demo menemukan masing-masing empat proyek visible dan nol denied. Tidak mengklaim bukti browser negative atau UI-03.4 penuh; fixture publik dengan lingkup berbeda masih diperlukan. Dua tes MySQL disposable74asersi lulus draft reload/izin foto/aksi lintas proyek serta satu snapshot stok approved tanpa posting inventori. DB disposable dihapus/server owned shutdown. Tidak ada perubahan backend/schema/auth/data/PDF/CSV. Laporan/PDF/ekspor tidak terdampak dantidak diuji ulang.

Runner kanonik membuktikan backup terenkripsi/restore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublic exact. Kedua Change Log diperbarui/dibaca ulang danriwayat dipertahankan. UI-03.4/UI-09 subset,tanpa klaim36/36 atau kenaikan level desain dari jumlahtes. Ownerbrowser,review visual Andreas,HPfisik/screenreader/zoom200,staging/UAT/proyekpilotnyata/PILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka Lapangan](https://arkarupa-dashboard.vercel.app/lapangan).

## 2026-11-21 - Arkarupa: persentase workspace ringkas dan presisi sumber

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `e2a865192f6651a74aa5aff08bf7c5272a93b9ee` merapikan persentase Target dan Aktual terverifikasi pada ringkasan workspace dari hingga enam desimal menjadi dua desimal. Tanda perkiraan hanya muncul jika pembulatan mengubah angka: 43,333333 menjadi sekitar43,33; 99,999999 menjadi sekitar100,00; nilai positif sangat kecil dapat tampil sekitar0,00. Nol dan100 exact tanpa tanda perkiraan; null tetap Belum tersedia. Native Nilai lengkap membuka angka sumber penuh14px, target44px. Klik/Enter/Space membuka/menutup; Escape menutup dan memulihkan fokus terlihat; panel dipusatkan dengan scroll instant agar di atas dock. Pola existing daftar Proyek dipakai ulang; tidak menambah dependency atau abstraksi. Monokrom, Holsite, Plus Jakarta Sans, SVG original dan reduced motion tetap.

Satu koreksi visual sebelum freeze mempertahankan hierarki angka24px desktop/16px HP karena gaya summary global sempat mengecilkan angka13px dan menambah padding. Gate font ditambahkan dan36fixture actualBlade diulang: zero/fraction/tiny/almost100/roundhalf/null/exact100 pada320/390/768/900/1440reduce serta390normal lulus rounding/approx,raw exact,full precision,escaping,pointer/Enter/Space/Escape,fokus/panel hit,reflow danzeroPOST. Fixture lokal bukan bukti role atau36pemeriksaan penerimaan.24baseline+24after publik PM/Finance dua proyek lulus angka sumber/header/cutoff/baseline/tautan exact dan disclosure. Empat perjalanan Gantt danempat detail progres membuktikan query proyek/periode/cutoff historis,return focus,Browser Back danrefresh. Satu proyek tidak memiliki baseline pada tanggal historis: Gantt tidak dibuat danprogres tetap tidak tersedia,bukan nol. Kegagalan awal harness yang mengasumsikan dua Gantt disimpan lalu diperbaiki berdasarkan data,tanpa mengubah aplikasi.

Dua tes MySQL disposable27asersi lulus bobot kontrak versioned/timeline/kembali ke baseline aktif sertaCSV absensi dengan filter aktual dan formula-cell neutralization. DB disposable dihapus danserver owned shutdown. Tidak ada perubahan backend/schema/auth/formula/data/PDF/CSV; ekspor CSV diuji terpisah sebagai QA,bukan format baru. VisualPDF/fullsuite/hostedCI/HPfisik/screenreader/zoom200 tidak diuji ulang. Runner kanonik membuktikan backup terenkripsi/restore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublic exact. Kedua Change Log diperbarui/dibaca ulang danriwayat dipertahankan.

UI-03.2/UI-03.3/UI-09 tetap subset,tanpa klaim36/36 atau kenaikan level desain dari jumlahtes. Review visual Andreas,Ownerbrowser,HPfisik,staging/UAT/proyekpilotnyata/PILOT_READY masih terbuka. Demo statis tidak berubah. [Buka daftar Proyek](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-21 - Arkarupa: ringkasan workspace dan konteks terbaca

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `b9183cec31a2912b0f52cac1ed6a6020d6d4111c` menaikkan metadata proyek pada header workspace dari11px ke13px dengan line-height1.5 dan pembungkusan region panjang. Palet monokrom,komposisi Holsite,Plus Jakarta Sans,ikon original dan reduced motion tetap. Ringkasan menjadi tautan pertama dan lokasi aktif awal pada navigasi bagian. Kembali ke ringkasan proyek pada akhir daftar Dokumen memakai anchor native,target44px,fokus ke header berlabel/tabindex-1 dan scroll instant dengan margin82px sehingga konteks progres/cut-off dapat ditemukan kembali. URL/navigasi lama,role,angka,tanggal,baseline,form dan data tidak berubah.

24fixture actualBlade normal/nama panjang/region120karakter/escaped serta reviewtruefalse pada6viewport-motion lulus13px,escaping,reflow,pointer/Enter,fokus viewport/hit,HomeEnd danzeroPOST. Koreksi harness memulihkan separator Unicode dan menunggu duaRAF agar pemulihan fokus sebelumnya settled sebelum menekan End;assertion tidak dilonggarkan dan source tidak diubah untuk tes.24baseline+24after publik PM/Finance dua proyek lulus konteks/header/nilai/tautan lama exact,navigasi Ringkasan,Back danrefresh mempertahankan proyek/hash dokumen,lokasiaktif danzeroPOST sesudahlogin. Fixture lokal bukan bukti role;role dibuktikan pada browser publik.

Dua tes MySQL disposable30asersi lulus pembulatan biaya penawaran diterima melalui tiga penerimaan,alokasi landed cost,PDF PO immutable/akses Owner dan penolakan Pelaksana;serta25dokumen,pencarian/pagination danisolasi akses. Bukti PDF berupa integritas bytes/checksum/izin,bukan review visual PDF baru. Percobaan awal menunggu startup ownedMySQL selesai tanpa restart;tes dijalankan setelah listener siap dan positive DBtarget preflight. DB disposable dibuang/server owned shutdown. Tidak ada perubahan backend/schema/auth/formula/PDF/CSV,eksporCSVtidakdiujiulang.

Runner kanonik membuktikan backup terenkripsi danrestore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublicexact. Kedua Change Log diperbarui/dibaca ulang danriwayat dipertahankan. UI-03.2/UI-03.3/UI-09 tetap subset,tanpa klaim36/36 ataukenaikan levelvisual dari jumlahtes. Seluruh matriks pada satu kandidat,reviewAndreas,Ownerbrowser,HPfisik/screenreader/zoom200,staging/UAT/proyekpilotnyata/PILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka daftar Proyek](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-21 - Arkarupa: panduan keyboard bertahap dan monokrom

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `ba30e72fced7726d9bae5a42d1ca47eb88eec52f` merapikan petunjuk keyboard pada workspace dan empat modul menjadi disclosure native Panduan keyboard, tertutup saat awal, target44px/teks14px. Klik/Enter/Space membuka; Escape menutup dan memulihkan fokus terlihat; panel terbuka dipusatkan dengan scroll instant agar tidak tertutup dock HP. Deskripsi aksesibilitas navigasi tetap tersedia saat tertutup melalui paragraf clipped di luar details. Koreksi prafreeze memindahkan deskripsi keluar karena Chrome accessibility tree kehilangan deskripsi dalam details tertutup. Tidak mengganti URL, kontrol navigasi, stage, role atau data.

12fixture actualBlade dan60baseline+60after publik PM/Finance pada lima halaman/enam viewport-motion lulus textID/Chrome AXdescription exact,navcontrols exact,keyboard/fokus/panel hit,tidak overflow danzeroPOST sesudah login. Fixture lokal bukan bukti role;role dibuktikan pada halaman publik. Palet monokrom yang telah terbit dipertahankan sesuai penegasan Andreas: Holsite geometry,Plus Jakarta Sans,abu-hitam-putih,label/ikon dan pola garis grafik. Audit warna computed di60halaman workspace/modul dan12Dashboard lulus netral;ini verifikasi ulang,bukan perubahan warna baru.

Dua tes MySQL disposable45asersi lulus koreksi status absensi tanpa mengubah identitas/stale revision ditolak,serta penulisan katalog dibatasi company dan role readonly ditolak. DB disposable dihapus/server owned shutdown. Tidak ada perubahan backend/schema/auth/rumus/laporan/PDF/ekspor;PDF/CSV tidak diuji ulang. Runner kanonik membuktikan backup terenkripsi/restore disposable73business tables10file28migrasi sebelum promosi;runtime4file danCSSpublic identik dengan source. Kedua Change Log diperbarui dan dibaca ulang,riwayat dipertahankan.

UI-03/UI-09 subset;tidak mengklaim36/36pemeriksaan penerimaan. Seluruh matriks pada satu kandidat,review visual Andreas,Ownerbrowser,HPfisik/screenreader/zoom200,staging/UAT/proyek pilot nyata danPILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka Dashboard monokrom](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: progres ringkas dan nilai sumber lengkap

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `d736d9ed8c8bf9ea473522b4a787baa34e6482c7` merapikan progres pada daftar Proyek dari hingga enam desimal menjadi dua desimal. Tanda perkiraan muncul hanya jika pembulatan mengubah angka: contoh43,333333→≈43,33;99,999999→≈100,00 bukan100pasti;nilai kecil positif dapat tampil≈0,00. Nol dan100exact tidak memakai tanda perkiraan;tanpa baseline tetap Belum ada baseline. Nilai mentah progress bar,max100,versi baseline,harga,tautan dan perhitungan tidak berubah. Monokrom,Holsite,Plus Jakarta Sans,SVG original dan reduced motion tetap.

Satu koreksi UX sesudah kandidat awal lulus keyboard memperbaiki panel yang berada di belakang dock setelah klik390. Open toggle kini memusatkan panel dengan scroll instant,dan gate pointer menuntut panel berada dalam viewport serta menerima hit sebelum screenshot. Nilai lengkap tersedia melalui disclosure native pada baris angka,target44px. Enter/Space membuka/menutup;Escape menutup dan mengembalikan fokus terlihat ke summary. Nilai sumber penuh tampil14px;nama proyek dan presisi sumber tersedia dalam label aksesibilitas/aria-valuetext bar,tidak hanya angka ringkas. Semua interaksi baca ini tanpa POST/RPC.36fixture actualBlade zero/fraction/tiny/almost100/full100/missing×6viewport-motion lulus angka terlihat,rounding/approx,sourceexact,keyboard/focusHit/escaping/reflow. Fixture memakai models sintetis dan tidak memanggil DB;kolom komersial diomit,bukan bukti permission. Satu koreksi visual sebelum freeze menghapus helper text yang utility CSS-nya tidak tersedia dan memperketat asersi teks terlihat.

24baseline+24publik PM/Finance all/filtered pada320/390/768/900/1440 serta390normal lulus raw progress/max/label,baseline,harga,nama dan tautan exact;disclosure dan pintasan pertama tetap bekerja tanpa POST. Dua tes MySQL disposable18asersi lulus cut-off kosong pulih serta verifikasi terlambat tidak masukcutoff,dan laporan historis tetap ada pada tugas/deep link yang benar. Database disposable dihapus/server owned shutdown. Backend/schema/auth/rumus/PDF/format ekspor tidak berubah;PDF/CSV tidak diuji ulang karena tidak terdampak.

Runner kanonik membuktikan backup terenkripsi dan restore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublikexact. Kedua Change Log diperbarui/dibaca ulang. UI-03.4/UI-09 masih subset;36fixture angka bukan36pemeriksaan penerimaan. Seluruh matriks pada satu kandidat,review visual Andreas,Ownerbrowser,HPfisik,safearea/screenreader,zoom200,staging/UAT/proyek pilot nyata dan PILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka daftar Proyek](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-21 - Arkarupa: lingkup hasil dan fokus proyek pertama

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `95b9a011677fe8bdc4cd688f211a244e5b3cac9e` mengganti jumlah hasil13px proyek ditampilkan menjadi x dari y proyek dalam akses14px, dengan angka tegas dan pembungkusan teks netral. Total tetap hanya proyek visibleTo pengguna, sudah tersedia pada header sebelumnya. Pintasan Ke proyek pertama memfokuskan tombol Buka proyek pertama yang tampil, tanpa membuka halaman atau mengirim RPC; target44px,hilang saat hasil kosong dan disabled saat request pencarian. Pintasan menggantikan kontrol Ke hasil proyek saat ada hasil; saat kosong kontrol Ke hasil proyek tetap ada. Satu koreksi visual menghapus duplikasi agar toolbar HP tidak bertambah baris. Layout Holsite,monokrom,Plus Jakarta Sans,SVG original,reduced motion dan Gate tetap.

24fixture actual Blade0/0,0/4,1/4,3/10000 dan nama panjang escaped pada320/390/768/900/1440 serta390normal lulus count/font/target/focusHit/escaping/nooverflow/zeroRPC. Hanya fixture offline yang melepas wire binding;models/angka sintetis,kolom komersial diomit,bukan bukti permission.24baseline+24publik PM/Finance all/filtered lulus: nilai/baris/tautan/cutoff exact,filter tanpa hasil,pintasan hilang lalu pulih sesudahEscape,query dan jumlah tersimpan setelah workspace→Back→refresh pada390. NativeEscape sehat dan dipertahankan,tidak ada handler Escape baru. LoadingDisabled diuji dengan menahan RPC pencarian read-only pada390 kedua role. Tidak ada request bisnis; guard hanya mengizinkan property projectSearch dan magic commit/pengosongan property itu.

Diagnosis awal memakai URL/method Livewire lama sehingga guard memblokir request read dan memunculkan hasil stale di browser uji. Endpoint aktual dan magic $commit diverifikasi pada framework lokal; sesudah guard dibetulkan,nativeEscape memulihkan hasil dengan satu RPC dan tanpa blocked request. Bukan bug produk dan tidak menjadi alasan mengubah auth/query/backend. Bukti gagal dipertahankan. Dua tes MySQL disposable21asersi lulus: akses lintas company/proyek tidak ditugaskan/file privat ditolak serta CSVabsensi memakai filter terlihat dan menetralisir sel formula. Database disposable dihapus/server owned shutdown. Backend/schema/rumus/data/format ekspor tidak berubah.

Runner kanonik membuktikan backup terenkripsi dan restore disposable73business tables10file28migrasi sebelum promosi;runtime3file/CSSpublikexact. Kedua Change Log diperbarui dan dibaca ulang. UI-03.1/UI-09.1/09.2/09.3 tetap SUBSET,karena banyak proyek nyata/zoom200/perangkat fisik dan seluruh matriks belum ditutup. UI-02.3 dari run sebelumnya tidak diubah; tidak mengklaim36/36 atau skor kualitas visual naik. Ownerbrowser/reviewAndreas/HPfisik/screenreader/UAT/proyek pilot/PILOT_READY terbuka. Demo statis tidak berubah. [Buka daftar Proyek](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-21 - Arkarupa: drawer halaman aktif dan pemulihan fokus

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `6ebfe64a1cc8742bab21223c8c6d5d51af726e41` memperjelas header drawer HP: label11px/nama12px/Tutup12px menjadi13px/14px/14px. Nama halaman yang sebelumnya hanya teks kini tombol Ke halaman aktif dengan target44px. Klik atau Enter memfokuskan dan menampilkan menu aktif tanpa navigasi/request; judul kosong tidak membuat tombol. Layout Holsite, monokrom putih-abu-hitam, Plus Jakarta Sans, SVG original dan reduced motion dipertahankan; tidak membutuhkan ilustrasi raster.

24fixture actual Blade current/long/escaped/none pada320/390/768/900/1440 serta390normal lulus font,target44px,escaping,current focus,closeEnter,nooverflow dan zeroPOST.48baseline+48publik sesudah promosi mencakup PM/Pelaksana/Purchasing/Finance,Dashboard/Proyek dan6kondisi. Drawer lulus Tab/Shift+Tab/Home/End,Enter buka/tutup,Escape,fokus kembali serta background inert. Aksi cepat lulus Enter/Tab/Shift+Tab/Tutup,ditambahEscape pada390 tiap role. Drawer/quick bergantian dengan satu overlay; resize899/900 menutup overlay,memulihkan fokus ke navigasi yang terlihat dan melepas inert. Nama/tautan/status aktif menu tetap. UI-02.3 LULUS ENGINEERING pada Chrome kandidat ini; bukan klaim semua36,perangkat fisik atau level visual disetujui Andreas. UI-09.2/09.3 masih subset. Timeout awal harness terjadi saat resize dilakukan sebelum fokus overlay settle; source baseline yang sama lulus48 setelah menunggu kondisi fokus. Tidak mengklaim bug resize produk diperbaiki.

Dua tes MySQL disposable33asersi lulus: pemakaian material mengubah sisa tersedia52→50 dengan idempotensi/kelebihan/lingkup proyek ditolak,tanpa posting biaya/progres/kas; unduhan PDF invoice mengikuti laporan klien terbaru,checksum/byte/private headers,missing/unshared/foreign scope dan revokasi ditolak. PDF memakai fixture bytes, bukan render visual atau parser PDF baru. Database disposable dihapus/server owned shutdown; startup dingin sempat belum ready lalu target positif diverifikasi. Backend/schema/auth/rumus/format ekspor tidak berubah. Runner kanonik membuktikan backup terenkripsi dan restore disposable73tabel10file28migrasi sebelum promosi;runtime3file/CSSpublikexact. Kedua Change Log diperbarui/dibaca ulang.

UI-02.3 engineering berbeda dari review Andreas,Ownerbrowser,HPfisik/safearea/rotasi/screenreader,zoom200,UAT,proyek pilot nyata dan PILOT_READY yang tetap terbuka. Demo statis tidak berubah. [Buka Dashboard dan Menu](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: identitas proyek dan workspace Aksi cepat

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `a7378b484f63881334f134666e3a7ff7517442c2` memperjelas Aksi cepat HP: nama proyek disertai nomor pembeda netral, metadata13px dan tautan Buka workspace44px. Tautan membawa proyek aktif agar pengguna dapat memeriksa konteks sebelum mulai BUP, permintaan material atau pembayaran sesuai role. URL/label aksi utama, hak akses, data dan transaksi tidak berubah. Layout Holsite, palet putih-abu-hitam, Plus Jakarta Sans, SVG original dan reduced motion tetap.

Pada Chrome, baseline Tab setelah kontrol terakhir dialog mencapai BODY meski modal tetap terbuka. Kini Tab/Shift+Tab di ujung kontrol terlihat berputar dalam dialog; Escape/Tutup mengembalikan fokus ke pemicu.24 fixture lokal tanpa proyek, dua nama sama dengan nomor berbeda dan nama panjang escaped pada320/390/768/900/1440/reduced-normal motion lulus konteks, URL,13px/44px,fokus,escaping,noPOST dan nooverflow.48 baseline publik dan48 sesudah rilis mencakup PM/Pelaksana/Purchasing/Finance,dua proyek dan6 kondisi viewport/motion. Delapan alur Buka workspace→Back→refresh mempertahankan proyek. Baseline trap lama tidak diklaim lulus; nilai BODY dicatat sebagai bukti sebelum. Dua koreksi harness whitespace dipertahankan; nama diuji textContent exact. Satu koreksi visual sesudah kandidat awal lulus menempatkan Buka workspace dan Ganti proyek pada baris terpisah, dibuktikan dengan posisi kedua target pada viewport844px.

Bukti dua tes MySQL disposable90asersi run sebelumnya dipakai ulang hanya untuk backend/schema/permission yang identik: enam role/deeplink/denial dan snapshot stok approved terbaru tidak ditimpa pending lama. Bukan tes SQL baru. Tidak mengubah rumus/format PDF/ekspor. Runner kanonik membuktikan encrypted backup dan restore disposable73tabel10file28migrasi sebelum promosi;source/runtime3file dan CSS publik exact. Kedua Change Log diperbarui dan dibaca ulang, termasuk entri verifikasi monokrom yang sebelumnya tertunda lokal.

UI-02/UI-03/UI-09 berstatus subset terverifikasi, bukan seluruh baris penerimaan atau36/36. Tidak menaikkan level kualitas visual berdasarkan jumlah tes. Review Andreas,Ownerbrowser,HPfisik,safearea,screenreader,zoom200,proyek pilot,UAT dan PILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka Dashboard dan Aksi cepat](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: status sumber dan pintasan periode

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `7836ec98912812b6a59a3e2db1a85ff39f8fc86b` mengganti singkatan N/A pada KPI tanpa sumber menjadi Belum tersedia14px monokrom. Nominal nol tetap Rp0, nilai penuh/aria/title/rumus dan alasan sumber tidak berubah. Label yang belum tersedia dibedakan dari angka, termasuk empat kartu utama dan metrik sekunder. Holsite, Plus Jakarta Sans, SVG original dan reduced motion tetap.

Pintasan Ubah periode tersedia langsung di samping tanggal hasil. Pintasan memakai alur filter lama yang teruji; fokus ke tanggal awal, draf dipertahankan, tidak menerapkan filter atau mengirim request bisnis. Tanggal hasil tetap berasal dari report sampai pengguna menerapkan perubahan.54 skenario lokal actual Blade(context18/KPI18/tiga pintu18) pada320/390/768/900/1440 dan390normal lulus termasuk kosong/nol/nominal besar,nama panjang escaped,grid4x1atau2x2,14px/44px,draf,Escape/Tutup/fokusSummary,nooverflow/zeroRPC.24 baseline+24 publik PM/Finance portfolio/proyek lulus:72 pintu buka filter setelah rilis, nilai sumber dan periode tetap. UI01.1 lulus ulang engineering pada kandidat ini;Owner browser dan review visual manusia tetap terpisah.

Diagnosis read-only atas refactor filter tertunda memastikan root/event/ref benar dan summary menerima fokus. Kegagalan lama berasal dari hit-test yang menuntut nodeSummary padahal titik tersebut mengenaiSpan anak yang sah. Refactor opsional dibatalkan, tidak dipulihkan ke source atau dianggap perlu untuk alur publik lama yang sehat. Pemeriksaan baru mengharuskan fokus/viewport dan hit pada target atau turunannya;asersi nilai dan request tetap.

Dua tes MySQL disposable39asersi lulus konversi material/harga proyek/satuan pembelian dan AHSP unit OJ/hari/lembar/batang ke estimasi,snapshotPDF serta respons unduh. Tidak mengklaim parsing ulang PDF biner terpisah. Database disposable dihapus/server milikrun shutdown. Backend/schema/auth/rumus/ekspor tetap. Runner kanonik membuktikan encrypted backup/restore disposable73tabel10file28migrasi sebelum promosi;runtime4file/CSSpublikexact. Kedua Change Log diperbarui dan dibaca ulang.

Akses browser Owner masih terbuka:entri vault terkait demo belum memuat password login;tidak ada perubahan akun/password/vault atau unlock ulang. Seluruh36 pada satu kandidat,visualAndreas,Ownerbrowser,HP fisik,screenreader,zoom200,UAT dan PILOT_READY belum disahkan.29/36 historis bukan skor seluruh kandidat ini. Demo statis tidak berubah. [Buka Dashboard Utama](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: konteks hasil Dashboard terlihat

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `d436cd7dffc51c79c5091cf35dc415f297501c9e` menampilkan nama proyek atau seluruh proyek dalam akses serta periode hasil di atas KPI, meski filter tertutup. Label13px/nilai14px monokrom, Filter14px, tanggal dari hasil report dan penjelasan saldo kumulatif tetap terpisah. Draf tanggal yang belum diterapkan tidak dinyatakan sebagai periode hasil. Holsite, Plus Jakarta Sans, SVG original dan reduced motion dipertahankan.

Rilis dibatasi UI. Upaya handler fokus filter bersama belum lulus verifikasi lokal sehingga dikecualikan dari source rilis; alur filter lama tetap dipakai. Kegagalan dan checkpoint UX dipertahankan, tanpa klaim perbaikan fokus baru selesai.

18 fixture konteks(portfolio/nama panjang escaped/draf invalid) dan18 fixture actual Blade KPI(nol/nominal besar/sumber belum tersedia) pada320/390/768/900/1440 dan390normal lulus. Urutan stylesheet fixture disamakan dengan provider:base sebelum Holsite. UI01.1 lulus ulang untuk layout empat posisi4x1 desktop dan2x2HP serta label/nominal320.24 baseline+24 publik PM/Finance portfolio/proyek membuktikan konteks hasil,grid aktual,nilai sumber tetap dan48pintu buka filter lama tanpa request bisnis. Fixture empat-key membuktikan layout, bukan Owner browser atau sign-off visual manusia.

Dua tes MySQL disposable38asersi lulus current review versus historical progress/reset periode serta forecast incomplete/commitment/stale/snapshot guards. DB disposable dihapus dan server milikrun shutdown. Backend/schema/auth/form/rumus/ekspor/PDF tidak berubah. Runner kanonik membuktikan encrypted backup/restore disposable73tabel10file28migrasi sebelum promosi;runtime4file dan CSS publik cocok exact source. Kedua Change Log diperbarui dan dibaca ulang. UI01.1 satu baris engineering yang terverifikasi pada kandidat ini;29/36 historis bukan skor seluruh kandidat saat ini. Seluruh36,reviewAndreas,Owner browser,HP fisik,screenreader,zoom200,UAT dan PILOT_READY tetap terbuka. Demo statis tidak berubah. [Buka Dashboard Utama](https://arkarupa-dashboard.vercel.app/).

## 2026-11-21 - Arkarupa: hierarki dan pintasan Dashboard

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `27d8cf462dc6c8423de205dbde9dc2362023c61f` membesarkan label antrean Dashboard dari12 menjadi14px, metadata proyek13px dan kondisi kosong14px. Judul Posisi proyek17px kini terlihat. Navigasi pintas membawa pengguna langsung ke Posisi proyek, Ke status proyek dan Pekerjaan; Dokumen tersedia bila konteks proyek dipilih. Palet putih/abu/hitam, Holsite, Plus Jakarta Sans, SVG original dan reduced motion tetap. Tidak ada grafik atau notifikasi tambahan.

Pintasan native mempertahankan query proyek/periode serta browser Back, berukuran minimal44px dan tanpa request bisnis. Setelah fokus, tujuan digulir ke awal sehingga judul Dokumen yang panjang tetap terlihat. Tautan Ke status proyek juga memulihkan affordance yang diharapkan pengujian peran pelaksana.

30 skenario lokal actual Blade(review18+nav12) dan18reviewbaseline kosong/satu/10panjang-escaped/3atau4tujuan pada320/390/768/900/1440 dan390normal lulus tipografi,target44px,Enter/Back,fokus-visible,querytetap,noRPC/nooverflow.24 baseline+24 publik PM/Finance portfolio/proyek lulus;nilai KPI,antrean,kas,progres dan tautan sumber cocok sebelum/sesudah. Kegagalan awal fokus native pada section tinggi disimpan dan diperbaiki tanpa melonggarkan asersi.

Dua tes keuangan MySQL disposable68asersi lulus rekonsiliasi kas/nonkas/APAR/aging/periode/biaya, pagination, baseline belum tersedia, pengecualian review pengajuan sendiri, izin Livewire serta isolasi perusahaan/keanggotaan. DB disposable dihapus dan server milikrun shutdown. Backend/schema/auth/form/angka/format ekspor/PDF tidak berubah; laporan/PDF tidak diuji ulang pada delta navigasi ini. Runner kanonik membuktikan encrypted backup/restore disposable73tabel10file28migrasi sebelum promosi;runtime4file dan CSS publik cocok exact source. Kedua Change Log diperbarui dan dibaca ulang.

UI01/UI03/UI09 parsial, tanpa ID36 penuh baru. Seluruh36 pada satu kandidat, review visual Andreas, Owner browser, HP fisik, screenreader,zoom200,UAT dan PILOT_READY tetap terbuka. Demo publik terpisah dari staging dan aktivasi pilot. [Buka Dashboard Utama](https://arkarupa-dashboard.vercel.app/).

## 2026-11-20 - Arkarupa: semua bagian workspace pada HP

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `eb9d68f883bd3b706ae38e3c898cf4b9d978cbe5` membesarkan label navigasi bagian workspace dari12 menjadi14px. Tombol Semua bagian pada lebar di bawah900px menampilkan semua tujuan dalam dua kolom; Ringkas bagian kembali ke baris yang dapat digeser. Penanda aktif monokrom, nama/href bagian, akses per role dan keyboard Arrow/Home/End dipertahankan. Tidak ada request atau mutasi data dari buka/ringkas. Holsite, Plus Jakarta Sans, SVG original dan reduced motion tetap.

18 fixture aktual Blade empat/enam tujuan serta label panjang pada320/390/768/900/1440 dan390normal lulus label14px,target44px,expand/collapse,fokuskeyboard,tautan tetap dan nooverflow/noRPC.12 baseline+12 publik PM/Finance lulus; Enter membuka bagian Dokumen, fokus tujuan dan browser Back mempertahankan navigasi tanpa request tambahan. Header/workflow/form/data workspace di luar navigasi byte-identik. Dua tes MySQL disposable67asersi lulus: proyeksi workspace/sumber enam role, serta cut-off stok approved menolak gerakan backdate baru sambil menerima retry idempoten. DB disposable dihapus dan server milikrun shutdown.

Runner kanonik membuktikan backup terenkripsi/restore disposable73tabel10file28migrasi sebelum promosi;runtime tiga file dan CSS publik cocok exact source. Kedua Change Log diperbarui dan dibaca ulang. Backend/schema/auth/angka/format ekspor/PDF tidak berubah; laporan/PDF tidak diuji ulang karena delta terbatas navigasi. UI03/UI09 parsial tanpa ID36 penuh baru. Seluruh36 pada satu kandidat, review visual Andreas, Owner browser, HP fisik, screenreader,zoom200,UAT dan PILOT_READY tetap terbuka. Demo publik terpisah dari staging atau aktivasi pilot. [Buka daftar proyek lalu Workspace](https://arkarupa-dashboard.vercel.app/proyek).

## 2026-11-20 - Arkarupa: histori harga monokrom dan pencarian lokal

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `dc80860dc3806e615c38572be84a0c100c3c8ee0` menerapkan histori harga monokrom dengan tanggal, jenis sumber, wilayah dan catatan terpisah dari nominal. Label13px/nilai14px; Asumsi demo dijelaskan tanpa klaim verifikasi. Metadata kosong ditandai, nilai nol dan URL sumber dipertahankan. Jumlah hasil memakai lencana hitam dan total bukti harga tetap terbaca. Holsite, Plus Jakarta Sans dan reduced motion dipertahankan.

Pencarian lokal berdasarkan tanggal/sumber/wilayah mendukung trim/casefold, kosong, reset dan Escape tanpa perubahan harga. Berpindah resource mereset query. Reset/Escape memulihkan fokus dan menempatkan input di tengah viewport agar terlihat di bawah header HP. Perbaikan ini menutup masalah fokus tersembunyi pada versi demo sebelumnya.

24 fixture +24 baseline actual Blade0/1/3parsial-nol/50panjang pada320–1440/reduced-normal lulus metadata/nominal/tautan exact, filter/reset/Escape, DOMsync, fokus viewport-hitInput,zeroRPC/nooverflow setelah satu setup select readonly.6 baseline+6 publik PM/Finance masing-masing dua resource lulus dua selectRPC readonly per kasus, query reset dan sumber/nilai tetap. Pemeriksaan reset setelah scroll390px lulus fokus terlihat tanpa request tambahan.

Dua tes MySQL disposable94asersi lulus catalog pagination/filter/rounding/scope dan deep link/panduan enam role; DB disposable dihapus. Bukti sebelumnya3tes32asersi approval append-only/idempotent/aktor berbeda/companyscope tetap relevan karena backend/query/form tidak berubah. Runner kanonik membuktikan backup terenkripsi dan restore disposable73tabel10file28migrasi sebelum promosi. Kedua Change Log dicatat dan dibaca ulang. Backend/schema/auth/harga/ekspor/PDF tidak berubah.

UI08.1/UI09 parsial; tanpa ID36 penuh baru. Seluruh36 pada satu kandidat, review visual Andreas, Owner browser, HP fisik, screenreader,zoom200,UAT dan PILOT_READY tetap terbuka. Demo publik terverifikasi terpisah dari staging/aktivasi pilot. [Buka Master Data lalu Detail/Histori](https://arkarupa-dashboard.vercel.app/katalog#ark-catalog-results).

## 2026-11-20 - Arkarupa: basis kalkulator dan kembali ke kebutuhan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `a3905eba54879af7acd0cf275f794455ef9795cf` memisahkan basis hasil terakhir menjadi kebutuhan awal, isi dan harga kemasan, berlabel13px/nilai14px monokrom. Ubah kebutuhan membawa fokus native ke input pertama, tanpa menghitung ulang. Scrollmargin90px menjaga input terlihat di bawah header; batas viewport dan elementFromPoint=input diverifikasi. Draf dan basis/hasil lama tetap; peringatan Input berubah dan aturan Hitung ulang dipertahankan. Holsite, Plus Jakarta Sans, reduced motion, validasi dan rumus tidak berubah.

24 fixture +24 baseline actual result Blade empty/normal/decimal/dirty pada enam kondisi320–1440/reduced-normal lulus basis/results exact,13/14px,target44px,fokusinput,draf tetap,zeroRPC/nooverflow. inputs() dibind hanya untuk render fixture.6 baseline +6 publik PM/Finance lulus satu calculateRPC per kasus dengan input default yang diizinkan: hasil3kemasan/Rp180.000 dan basis120kg tetap saat draf121. Tombol kembali tidak mengirim request tambahan; payload guard hanya mengizinkan calculate, bukan aksi bisnis lain.

Tiga tes MySQL disposable/63 asersi lulus: satuan/pack rounding/incompatible; histori basis, angka besar, nol dan desimal; nonposting dua role pada enam tabel bisnis. Database disposable dibersihkan. Backend/schema/auth/rumus/format ekspor/PDF tetap. HostedCI/fullsuite/HP fisik/Owner browser/screenreader/zoom200 tidak diulang. UI09.1–09.3 parsial, tanpa ID36 penuh baru; seluruh36 pada satu kandidat, review Andreas dan PILOT_READY terbuka. Kedua Change Log dipertahankan dan dibaca ulang. [Buka Kalkulator Satuan](https://arkarupa-dashboard.vercel.app/kalkulator#calculator-field-1-quantity).

## 2026-11-20 - Arkarupa: identitas PDF dan navigasi hasil Pustaka

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `feeb6d3565940fa65bbf880ea459650423c07f9e` memperjelas nomor PDF dengan label13px/nilai15px dan penanda fokus monokrom. Tombol Ke PDF pertama yang cocok membawa fokus ke tautan unduhan hasil terlihat teratas, tanpa mengunduh atau request. Pencarian trim/casefold/reset, nomor/tautan/proyek/hak akses, Holsite, Plus Jakarta Sans dan reduced motion tetap.

24 fixture +24 baseline scoped Blade0/1/3/50longEscaped, enam kondisi320–1440/reduced-normal, lulus13/15px/44px/fokus hasil/URL sama/reset/zeroPOST/noDownload/nooverflow. Progress card tidak berubah dan diomit dari fixture.12 baseline +12 publik PM/Finance pada dua proyek lulus; proyek pertama kosong, proyek kedua satuPDF sehingga enam kasus fokus positif diverifikasi. Tiga tes MySQL disposable/53 asersi lulus: lingkup library dua role/dua proyek/foreign deny; pembalikan pemakaian stok idempotent/histori; landed offer split rounding dan PDF PO privat immutable. Database disposable dibersihkan; backend/schema/izin/rumus/format PDF tetap. PDF baru tidak diterbitkan di publik.

UI08.3/UI09 parsial, tanpa ID36 penuh baru. Seluruh36 pada satu kandidat, Owner browser, HP fisik, screenreader, zoom200, review Andreas dan PILOT_READY terbuka. Kedua Change Log dipertahankan dan dibaca ulang. [Buka Pustaka Laporan](https://arkarupa-dashboard.vercel.app/pustaka-laporan#ark-library-document-search).

## 2026-11-20 - Arkarupa: riwayat serah terima dan pemulihan checklist

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `1dfd3166730d279b3bddb97bc0af93a5b8a2347a` memisahkan versi/status, tanggal/PIC/retensi, bukti, kewajiban dan catatan review dalam kartu riwayat monokrom. Metadata berlabel13px/nilai14px; retensi/review kosong dinyatakan jelas dan catatan bernilai0 tetap tampil. Peringatan sumber berubah dipertahankan. Riwayat kosong kini dijelaskan; pintasan dari catatan atau kondisi kosong membawa fokus ke checklist sumber tanpa request. Komposisi Holsite, Plus Jakarta Sans, reduced motion dan aturan Owner/non-self/submitted/snapshot tetap; guard dan tombol review byte-identik.

24 fixture +24 baseline dari workspace Blade (0/1submitted/approvedStale/12longEscapedMissing, enam kondisi320–1440/reduced-normal) lulus nilai/tanggal/stale tetap, metadata13/14px, target44px, fokus native, zeroPOST/nooverflow.12 baseline +12 publik PM/Finance pada dua proyek lulus: checklist/riwayat/aksi sama; riwayat publik kosong, catatan terisi dibuktikan fixture, tanpa menambah data publik.

Tiga tes MySQL disposable/40 asersi lulus: render escaping/stale/zero reason; REV012 timeline versi kontrak/bobot/milestone/kembali baseline aktif; REV009 CSV absensi mengikuti filter, menetralkan formula dan menolak akses tanpa izin. Database disposable dibersihkan. Backend/schema/auth/rumus/format PDF-ekspor tetap; PDF publik/hostedCI/full suite tidak diulang. UI03.4/UI09 parsial, tanpa ID36 penuh baru. Seluruh36 satu kandidat, HP fisik, Owner browser, screenreader, zoom200, review Andreas dan PILOT_READY masih terbuka. Kedua Change Log dipertahankan dan dibaca ulang. [Buka riwayat serah terima](https://arkarupa-dashboard.vercel.app/workspace#closeout-records-heading).

## 2026-11-20 - Arkarupa: status draf berbagi dan pintasan daftar foto

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `980c330dbd6fb3d5b1297b5295b03ca86e7a1d24` memperjelas pilihan keuangan pada formulir Portal dengan label monokrom “Draf · Disertakan/Tidak disertakan”. Label mengikuti checkbox dan tidak menyatakan laporan sudah terbit. Pintasan sebelum daftar foto menuju pilihan berbagi dengan fokus keyboard; judul dan pilihan foto tetap, tanpa menyimpan atau menerbitkan. Komposisi Holsite, Plus Jakarta Sans, palet netral, reduced motion, checkbox deferred, cut-off dan hak akses dipertahankan.

24 fixture +24 baseline Blade (0/1/3/50 foto; 320–1440 px, reduced/normal motion) dan12 baseline +12 publik PM/Finance lulus: status13px, target44px, fokus native, draf tetap, zeroPOST setelah login, tanpa overflow. Finance tidak melihat editor. Dua tes MySQL disposable/197 asersi memverifikasi progres terverifikasi/foto terpilih/klien ditugaskan dan penutupan dengan reviewer berbeda serta penolakan sumber stale. Database disposable dibersihkan; backend/schema/rumus/format PDF/ekspor tidak berubah. PDF publik/hostedCI/full suite tidak diulang.

REV-012/UI-03/UI-09 tetap parsial; tidak ada ID36 penuh baru ditutup. Seluruh36 pada satu kandidat, HP fisik, Owner browser, screenreader, zoom200, review Andreas dan PILOT_READY masih terbuka. Kedua Change Log dipertahankan dan dibaca ulang. [Buka pilihan berbagi Portal](https://arkarupa-dashboard.vercel.app/workspace#client-report-sharing).

## 2026-11-20 - Arkarupa: cut-off laporan dengan acuan workspace

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `235c100eeb3772ef617d48ba34760b2ff6e6e66b` menampilkanacuan cut-off workspace13/14px di dekatinputlaporanPortalKlien. TombolGunakan cut-off workspace mengisitanggal draf melalui1RPCexisting,mempertahankanjudul danmengosongkanpilihanfoto mengikutiaturanexisting;inputtanggal mendapatfokus. Saat tanggal sama,statusSama denganworkspace menggantikanbutton. Monokrom,PlusJakartaSans,gradien,reducedmotion,defaulttanggal/Gate/validasi tetap;tindakan tidakmenerbitkanlaporan.

24fixture+24baseline8Bladeequal/historical/emptyDraft/crossMonth pada6kondisi320-1440/motion luluscontext13/date14/focus44/action/inputconstraintsexact/nooverflow. Wireactiondilepashanyauntukfixturefocus;actualsetterdibuktikanPHPtestdanpublik.12baseline+12publikPMFinance2proyek lulus:enamPMcase1RPCdraft(tanggalmanualsebelum/tombolsesudah),enamFinanceeditorhidden0RPC. Judul/cutoff/photoCountstate akhir sama,tanpapublish. Harnessmemakaipolaendpointfingerprintedrunnerexisting sesuaidokumentasilokal,setelahguardawal belum mengenalinya;payloadtetapdibatasidraft. Penandamethod$settanpaparameter diterimahanyajikaupdatecutoffpersisnilaifixture,terkonfirmasidariimplementasilibrarylokal;kodekandidat tidakdiubah.

3tes82asersiMySQLdisposable lulus:newdraftrecoverytitle/photoreset/emptydate dan2integrasiexisting(budget/progress/stock/wages/cash/clientexport serta latest-reportinvoicePDFscope/fileintegrity). DBdropped/ownedservershutdown. Backend/schema/auth/PDF/CSV tidakdiubah;PDFpublik/HostedCI/fullsuite tidakdiulang. REV012/UI03.2/UI09 danQAUI05.4 tetapparsial,tanpaIDpenuhbaruditutup;29/36historis bukanskorvisual/persentasekandidatbaru. Seluruh36/HPfisik/screenreader/Ownerbrowser/reviewAndreas/PILOT_READY tetapOPEN. [Buka acuan cut-off laporan](https://arkarupa-dashboard.vercel.app/workspace?cutoff=2026-11-15#portal-workspace-cutoff-context).

## 2026-11-20 - Arkarupa: pencarian lokal foto Portal Klien

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `0f7674b1f89385a11be1731cd9aa6bc4ca25cfe4` memperjelas pilihanfotoPortalKlien denganlokasi14px/tanggal13px,paletmonokrom,PlusJakartaSans danreducedmotion tetap. Pencarianlokasi/tanggal trim-casefold menampilkanjumlahhasil danpilihan. Foto tersembunyi olehfilter tetapdipilih,Enter tidakmengajukan,Escape/reset memulihkanfokus. Tidakadapilihsemua/publikasiotomatis;Gate/cutoffreset/validasi/backend tetap. Daftar dipisahmenjadipartialdi dalamauthboundaryyangsama;wirekeyfoto daneventsyncUIexisting menjagafilter/count setelahmorph.

24fixture+24baseline memakai8fragmentactualBlade0/1/3/50longEscaped pada6kondisi320-1440px/motion:copy/URL/model/value/date exact,selectedhiddenpreserved/noMatch/ISOdate/resetfocus44/EnterNoSubmit/zeroPOST/nooverflow lulus. Pembacaanvisibilitas disinkronkan setelahupdateDOM,tanpamelemahkanasersi. Simulasi DOM49dari50/selectionreset0 memverifikasipostMorphresync,bukanRPCcutoffpublik.12baseline+12publik PM/Finance2proyek lulus:PMeditorkosong0foto,Financeeditorhidden;daftarterisi/pencarian diuji fixturelokal,tanpamenambahfotopublik.

Dua tesbackend260asersi MySQLdisposable lulus:portalhanyaprogresverified/fototerpilihkepadaassignedclient,arsipdokumenversioned/privateterbatasizin. DBdibersihkan/ownedservershutdown. Backend/schema/auth/PDF/CSVtidakdiubah;PDFpublik/HostedCI/fullsuite tidakdiulang. REV012/UI03/UI09 tetapparsial,tanpaIDpenuhbaruditutup;29/36historis bukanskorvisual/persentasekandidatbaru. Seluruh36/HPfisik/screenreader/Ownerbrowser/reviewAndreas/PILOT_READY tetapOPEN. [Buka pemilihan foto Portal Klien](https://arkarupa-dashboard.vercel.app/workspace#portal-photo-selector).

## 2026-11-20 - Arkarupa: tahap workspace lebih terbaca dan navigasi kembali

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `3cf6a2996265a6c58d19c61ee36b04078b48d70a` memperjelas kartu tahap workspace denganjudul15px/keterangan13px,paletmonokrom,PlusJakartaSans,SVGoriginal danreducedmotion tetap. Tahapproyek menjadi tujuanpertama navigasibagian;tautan setelahdaftarpekerjaan memfokuskan navtahap menggunakananchor native. Home/Enter pada navigasi menuju alur yangsama,tanpaRPC;role,URL,cutoff danangka tidakberubah.

24fixture+24baseline memakai8fragmentactualBlade dari4role dan komponentugas0/1/12/24hasil padaenamkondisi320-1440px/motion. Font,fokus44/outline2,anchor/navHomeEnter,roleURLsexact,zeroPOST/nooverflow lulus. Asetfixtureoffline dipetakankebyteSVGoriginalyangsama danassertloaded;tidakadaassetprodukbaru.12baseline+12publikPMFinance2proyek pada320reduced/390normal/1440reduced lulus dengancutoffhistoris15November:angka/URL/stagecards/projek tetap.

Tiga tes111asersi MySQLdisposable lulus:1renderfixtureUI,2integrasi AHSP/RAP/BUPverified/baselinehistoris danstokopname. FixtureRAP2499120/penawaran2749032,verified50%/rencana40%,pembayaran400rb/sisa600rb tetap terpisahdariprogresfisik. Opname membedakantercatat60/fisik58,25(selisih-1,75) dari8,125tanpariwayat;CSVCLI mengembalikan statuscocok/selisih/inputinvalid tanpa postinginventory/kas. Backend/schema/auth/PDF/CSV/SVG tidakdiubah;PDFpublik/HostedCI/fullsuite tidakdiulang. UI03/UI09.2/UI09.3 tetapparsial,tanpaIDpenuhbaruditutup;29/36historis bukanpersentasekandidatbaru/skordesain. Seluruh36/HPfisik/screenreader/Ownerbrowser/reviewAndreas/PILOT_READY tetapOPEN. [Buka tahap workspace](https://arkarupa-dashboard.vercel.app/workspace#workspace-workflow).

## 2026-11-20 - Arkarupa: catatan modul inline dengan disclosure native

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `14078117bbfb7e5cd5058f1c24c00c29cef12723` menampilkan Catatan sumber & approval sebagai panel inline monokrom di konteksmodul,ringkasan13px/isi14px menggantikan dialoglayarpenuh untuk satuparagrafpanduan. Enter/Space/click membuka atau menutup;Escape menutupdanmemulihkan fokusringkasan,tanpaoverlay/POST. Deskripsi,proyek,stage danaksi tetap. PlusJakartaSans,komposisiHolsite danreducedmotion dipertahankan;tidakadaasetbaru.

24fixture+24baseline dan8fragmentactualFullBlade mencakupteksnormal,panjang,escaped,kosong padaenamkondisi320-1440px/motion. Copyexact,summary13/body14,target44,fokus/zerooverlay/zeroPOST/nooverflow lulus.24baseline+24publikPMFinance4modulKomersial/Lapangan/Pengadaan/Keuangan pada320reduced/390normal/1440reduced lulus;deskripsi/proyek/stage/tabactions exact. Temuanminheight36 bukanbugaktif karenaCSSHolsite existing sudah44px;tidakdiklaimsebagaiperbaikanukuran.

DuaOperationsTest69asersi MySQLdisposable lulus:stokcutoff60-5-3=52m3,tanpagerakanmasadepan,hariini71;biayatidakdipostingulang/kas0. Riwayatpenerimaan terscope,tanpaharga/pathprivat;foto hanyaakunproyek,foreignowner ditolak;validasitanggal/bukti mempertahankanPOdraft danrowlegacy0tidakditulisulang. Database dibersihkan/ownedservershutdown. Backend/schema/auth/PDF/CSV tidakberubah;ekspor/HostedCI/fullsuite tidakdiulang. UI09.1/09.2/09.3 tetapparsial;tidakadaIDpenuhbaruditutup.29/36historis bukanpersentasekandidatbaru atau skordesain. Seluruh36/HPfisik/screenreader/Ownerbrowser/reviewAndreas/PILOT_READY tetapOPEN. [Buka catatan sumber di Lapangan](https://arkarupa-dashboard.vercel.app/lapangan#ark-source-note-summary).

## 2026-11-20 - Arkarupa: pemilih proyek dengan navigasi keyboard

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `4559fbc94d83bff07797e0307c0f090219f4efee` mempertajam status proyekaktif dengan garis putih danbadge putih bertulisan hitam pada kartu gelap. Monokrom putih-abu-hitam,PlusJakartaSans,komposisiHolsite danreducedmotion tetap. Dari pencarian ArrowDown menuju hasilcocok pertama yangtidakdinonaktifkan;ArrowUp/Down/Home/End memindahkan danmembungkus fokus tanpa memilih proyek. Nama/wilayah/exactID,Escape reset,Tutup/fokuspemicu serta pemeriksaan draf existing dipertahankan.

24fixtureactualFullBlade+24baseline mencakupkosong,satu,3IDberjeda,30namapanjang escaped padaenamkondisi320-1440px/motion. Status13px/kontrasbadge,focus44px,filter/wrap/skipdisabled/modifier,zeroPOST/nooverflow lulus.24baseline+24publikPM/Finance padaempatmodulKomersial/Lapangan/Pengadaan/Keuangan dan320reduced/390normal/1440reduced lulus. Opsi/proyekaktif/aksi/URL tetap sama;tidakmemilihproyek atauRPC.

DuaUi04Test77asersi MySQLdisposable lulus:kontekslintas4modul setelahproyekbaru,5route menolakproyekasing,6roleworkspace/sumbermetrik mengikutiizin. Margin hanyaOwner/QS;Pelaksana tidakmendapataktual/RAPinternal. Database dibersihkan danserverownedshutdown. Backend/schema/auth/PDF/CSV tidakberubah;ekspor/HostedCI/fullsuite tidakdiulang. UI-02.4/UI-09.2/UI-09.3 tetapparsial,tidakadaIDpenuhbaruditutup.29/36historis bukanpersentasekandidatbaru atau skordesain. Seluruh36/HPfisik/Ownerbrowser/screenreader/reviewAndreas/PILOT_READY tetapOPEN. [Buka pemilih proyek di Lapangan](https://arkarupa-dashboard.vercel.app/lapangan).

## 2026-11-20 - Arkarupa: identitas mandor dan pintasan penugasan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `83c99984bd77bbb9dec1ad407b2f027a5fc6cc49` memperjelas kartu Mandor dan Divisi dengan nama utama16px,label kode/jumlahdivisi13px,nilai14px dantagdivisi13px. Palet putih-abu-hitam,PlusJakartaSans danreducedmotion tetap. Pintasan Tambah penugasan hanya bagi pengelola,membuka disclosure danmemfokuskan pilihanMandor;klik/Enter/Space tidakmenyimpan,draf tetap saatditutupsementara.

24fixtureactualBlade+24baseline mencakupkosong,satu,bacasaja,20mandornamapanjang escaped pada320-1440px/enamkondisiviewport-motion:isinilai sama,target44px,fokus,draf,nooverflow,zeroPOST lulus.12baseline+12publik Finance kedua proyek semuanya belum memiliki mandor;hanyastatekosong/form terbuka/tertutup diuji di publik,daftarterisi fixturelokal. Tidakmenambahkan data publik untukbukti.2FinanceTest89asersi MySQLdisposable lulus:proyek-scoped,idempotensi,duplikat/inputrecovery,PMditolak,duadivisi menerima pembayaranterpisah,biaya tidakdipostingulang.

UI-07.2/REV-008 danUI-09.2 tetapparsial,tidakadaIDkriteriapenuhbaruditutup.29/36adalahhistoris,bukanskorvisualatau persentasekandidatbaru. Seluruh36/allroles/HPfisik/screenreader/reviewAndreas/PILOT_READY tetapOPEN. Backend/schema/PDF/CSV tidakberubah dan ekspor tidakdiujiulang. HostedCI/fullsuiteNOT_RUN. [Buka Mandor dan Divisi](https://arkarupa-dashboard.vercel.app/keuangan?stage=utang#finance-foremen).

## 2026-11-20 - Arkarupa: progres ruangan terverifikasi setelah koreksi fixture

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `22372f5abf076a39ecfdea83c8531c6118237c17` menerbitkan fitur WIP progres ruangan yang sebelumnya tertahan. PIC,rentang rencana,pembaruan terverifikasi danrencana percut-off kini menjadi empat fakta berlabel13px/nilai14px. Tautan kembali kedaftar hanya muncul pada multiruangan;anchor native menggantikan handler fokus tertunda agar klik modifier tidak merebut fokus. Monokrom,PlusJakartaSans,reducedmotion,nilai/meter serta izin tetap.

Verifikasi mempertahankan SHAfiturWIPa154fdd sampai24kasus sesudah+24baseline lulus,termasuk20ruangan/320px,nama panjang escaped,null/legacy,Enter/fokus44px,Ctrl/Meta,nilai/meter/aksi exact danzeroPOST/nooverflow. Satu-satunya koreksi input adalah hostQA min-width0/max-width100%;asersi tidak diubah. SetelahPASS,hanya entriChangeLog ditambah pada kandidatfinal danhashfitur tetap sama.12browser publik PM dua proyek (satu kosong dan satu dengan2ruangan) lulus zeroPOST serta rekonsiliasi seluruh metadata/meter/tombol. Catatanrun19.35yangsebelumnyalokal ikutditerbitkan.

Dua OperationsTest baru/16asersi MySQLdisposable lulus:bobotkontrak tiga pekerjaan menghasilkan42,5%,riwayatreviewBUP terlihatbagi penulis/reviewer,alasan wajib danFinance tidak melihat riwayat. Database dibersihkan danserver milikrun dihentikan. Bukti8fragment fullBlade/3tes66asersi dari runsebelumnya direuse denganhashfitur sama,bukan diklaimtesbaru. Backend/schema/PDF/CSV tidak berubah atau diujiulang penuh. Seluruh36,semuarole/HPfisik/pembacalayardanreviewAndreas/PILOT_READY tetapOPEN. HostedCI/fullsuite tidakdijalankan. [Buka progres ruangan](https://arkarupa-dashboard.vercel.app/lapangan?stage=progres#field-room-navigation).

## 2026-11-20 - Arkarupa: kandidat progres ruangan menunggu verifikasi fixture

**CONFIRMED / IMPLEMENTED_NOT_DEPLOYED / QA_BLOCKED / NOT_BUSINESS_READY.** Kandidat lokal `a154fddeec22726998a49d42223033753c553ac5` memisahkan PIC, rentang rencana, pembaruan terverifikasi dan rencana per cut-off menjadi empat fakta berlabel13/14px. Tautan kembali ke daftar hanya muncul pada multiruangan; anchor native menggantikan handler fokus yang tertunda. Monokrom, Plus Jakarta Sans, nilai dan izin tetap. Ini belum tersedia di demo publik.

Tiga tes MySQL disposable/66 asersi lulus untuk identitas ruangan disepakati, volume verified, pemulihan cut-off dan verifikasi terlambat serta render UI. Database disposable dihapus dan proses milik run dihentikan. Browser menyelesaikan24baseline dan18dari24kasus sesudah; kasus20ruangan pada320px tertahan pada visibility. Diagnosis: fokus sudah benar, tetapi host fixture/nav melebar8243px. Eksperimen layout terpisah membatasi host menjadi288px; hasil ini bukan kelulusan gate. Setelah dua putaran koreksi, kandidat tidak dipromosikan. PIC QA/Frontend perlu memperbaiki constraint host dan mengulang matriks pada kandidat yang sama, dengan asersi tetap.

Demo tetap memakai `873bc96d3ef3465e666b949bd5dd6430ca844f90`, telah diperiksa pada12skenario baca dua proyek dengan FPM aktif. Backend/schema/rumus dan demo statis tidak berubah; tidak ada deployment aplikasi baru pada run ini. Entri Change Log terbaru berada pada kandidat lokal dan jadwal, belum diterbitkan di demo. Seluruh36, review Andreas, pembaca layar/ponsel fisik dan PILOT_READY tetap terbuka. [Buka progres demo terakhir](https://arkarupa-dashboard.vercel.app/lapangan?stage=progres).

## 2026-11-20 - Arkarupa: indeks barang pada draf nota

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `873bc96d3ef3465e666b949bd5dd6430ca844f90` menampilkan jumlah baris13px dan legenda barang14px pada editor nota. Indeks horizontal Barang1dst muncul ketika lebih dari satu baris;tautan native memfokuskan isian nama menggunakan key aktual,termasuk indeks berlubang,setelah penghapusan. Tidak menyimpan atau mengubah jumlah/harga. Monokrom,PlusJakartaSans,reducedmotion danbatas24baris tetap.24fixture actualfullBlade+24baseline kosong/satu/sparse0-4-9/maks24 pada6viewport/motion lulus;target44px,fokus,nilai,total/URLexisting tetap,nooverflow/POST. Native input fixture dihidrasi dari data sintetis tanpa event setelah snapshot dikeluarkan.6browser publik PM menambah satu baris dengan methodexisting yang hanya mengubah stateform;Enter/click indeks menjaga semuaisian dengan0RPCtambahan,tanpamemanggilsimpan/upload.

Tiga test/143asersi padaMySQLdisposable lulus:fixture render dan targetunik;nota dua barang subtotalRp170rb-diskonRp10rb+pajakRp16rb+biayaRp4rb=Rp180rb,validasi/reload/duplikat/revisi,idempoten,edit menjadiRp70rb tanpapostingstok/biaya/kas;lampiranPNG/PDF privat divalidasi,deduplicated,downloadterscope danchecksumditolakbila berubah. DBdisposable dihapus danserver milik run dihentikan. Backend/schema/PDFekspor tidakdiubah. REV005/UI06.1/UI09.2subset;seluruh36,OCR/businessacceptance,semuarole/HPfisik/pembacalayardanreviewAndreas/PILOT_READY tetapOPEN. HostedCI/fullsuite tidakdijalankan. [Buka Pengadaan - Nota](https://arkarupa-dashboard.vercel.app/pengadaan?stage=nota).

## 2026-11-20 - Arkarupa: kartu tindak lanjut dan status pencarian

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `5db13ccba77d42946330776ee7f3be1bffb348ed` memisahkan tiap tindak lanjut pada Pekerjaan berikutnya menjadi kartu berbingkai dan gradien monokrom. Status Memperbarui daftar pekerjaan ditampilkan setelah jeda ketika pencarian/halaman menunggu Livewire, tanpa memindahkan fokus atau mengubah tujuan/hasil.24fixture actualBlade+24baseline mencakup kosong,satu,halaman2nama panjang escaped,tanpa cocok pada6viewport/motion;nilai,link,disabled danpaginasi exact.12browser PM/Finance memakai RPC pencarian baca yang dibatasi, respons diperlambat terkendali untuk menguji status pending;daftar lama tetap sampai respons,hasil kosong dan Escape recovery menjaga fokus/hasil dengan tepat2RPC per kasus. Seluruh daftar publik yang diperiksa kosong; kartu berisi dibuktikan pada fixture, tanpa menambah tugas palsu. Monokrom,PlusJakartaSans danreducedmotion tetap.

Dua OperationsTest/37asersi MySQL disposable lulus: pemakaian3 dari stok60 menjadi57,dibalik sekali kembali60 denganriwayat+3/-3 tetap,biaya/progres/kas tidakdiposting ulang;CSVabsensi memakai filteraktif,menolak isian belum diterapkan/akses tak berhak danmenetralkan selberawalan formula. DB disposable dihapus danserver milikrun dihentikan setelah readiness positif. Backend/schema/PDF/template ekspor tidakberubah. UI-03.4/UI-09.1/UI-09.2subset;seluruh36,semuarole/networkfailure/pagingpending nyata,pembacalayardanHPfisik/reviewAndreas/PILOT_READY tetapOPEN. HostedCI/fullsuite tidakdijalankan. [Buka Pekerjaan berikutnya](https://arkarupa-dashboard.vercel.app/workspace#project-tasks).

## 2026-11-20 - Arkarupa: periode grafik kas dan navigasi sumber

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `682c8f4517d0fa8bd1ac488a119ab00634af7378` menampilkan label Harian/Bulanan13px pada grafik kas, memperjelas pesan kosong14px dan membuat grid nominal menyesuaikan lebar panel agar nilai standar tetap utuh di HP. Tombol Ke periode terakhir memfokuskan baris sumber terakhir dengan Enter/Space, tanpa mengubah angka/filter. Escape/Tutup memulihkan fokus. Monokrom,Plus Jakarta Sans dan reduced motion tetap.24fixture actual Blade+24baseline mencakup kosong,satu hari,20hari,21bulan pada6viewport/motion;geometri grafik,total dan baris exact.24browser publik PM/Finance lulus pada state kosong tanpa POST. Kedua proyek demo belum mempunyai arus kas terposting:state aktif diverifikasi melalui fixture, tanpa membuat transaksi atau grafik palsu.

Dua Featuretest/37asersi MySQL disposable lulus untuk kas/aging/nonkas/periode harian-bulanan tanpa mengubah saldo dan penolakan akses lintasperusahaan/proyek/file privat. DB disposable dihapus dan server milikrun dihentikan. Backend/schema/PDF/CSV tidak berubah atau diklaim diuji penuh. UI-01.2/UI-09.2 subset;seluruh36,reviewAndreas,pembaca layar/HPfisik,publicactivecashUAT dan PILOT_READY terbuka. HostedCI/fullsuite tidak dijalankan. [Buka Dashboard](https://arkarupa-dashboard.vercel.app/).

## 2026-11-20 - Arkarupa: pemilih monokrom dan keyboard

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `e431bda39730810a86d4f171000b49d08e6043e7` memperjelas pemilih bersama dengan lencana netral13px untuk jumlah pilihan cocok. ArrowDown dari pencarian serta ArrowUp/Down/Home/End memindahkan fokus dan melewati opsi disabled; nilai baru dipilih secara eksplisit dengan Enter. Escape menutup dan memulihkan fokus. Palet putih-abu-hitam mengikuti arahan Andreas; Plus Jakarta Sans dan reduced motion tetap.18fixture actual Blade+18baseline mencakup kosong,3/20opsi panjang escaped dan alias pada6kondisi viewport/motion;12browser publik PM/Finance lulus tanpa POST atau perubahan nilai/form.

Dua Featuretest/17asersi pada MySQL disposable lulus untuk konversi pack/pembulatan/penolakan unit tak kompatibel serta isolasi katalog dan izin role. Database disposable dihapus dan server milik run dihentikan. Backend/formula/PDF/CSV tidak diubah atau diklaim diuji penuh. Ini subset UI-09.1/UI-09.2; seluruh36, review desain Andreas, pembaca layar, HP fisik dan PILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Buka Kalkulator](https://arkarupa-dashboard.vercel.app/kalkulator).

## 2026-11-20 - Arkarupa: status draf dan panduan pemulihan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `6e0281f6a6a5c83e62cd3ed2d9538ff3c2596db9` memisahkan judul Draf teks14px dari status13px dan memperjelas catatan pemilihan ulang foto dengan batas netral. Disclosure native Apa yang tersimpan otomatis? menjelaskan bahwa pemulihan teks belum mengajukan dokumen dan foto harus dipilih ulang.24fixture actualBlade+24baseline idle/available xphoto/noPhoto termasuk timestamp panjang escaped lulus;12browser PM pada dua proyek forecast serta2pemeriksaan Finance editor-absence lulus. Buka/tutup Enter/Space mempertahankan fokus, nilai,status,revisi dan tombol restore tanpa POST. Holsite,monokrom,Plus Jakarta Sans dan reduced motion tetap.

Dua Featuretest/18asersi MySQL disposable lulus: dimensi dan catatan dipertahankan hanya pada baseline yang kompatibel; pergantian unit baseline mengosongkan perhitungan yang tak kompatibel tanpa membuat laporan. QA reload/review/revisi menolak foto tak valid,akses lintasperusahaan/proyek dan role tak berhak. Database disposable dihapus dan proses milikrun dihentikan. Script autosave/form serta backend tidak berubah;tidakada mutasi draf atau dokumen publik. UI-04.3/UI-05.3/UI-07.2 source-bound; seluruh36,reviewAndreas,UATmanusia/HPfisik danPILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Buka Keuangan - Forecast](https://arkarupa-dashboard.vercel.app/keuangan?stage=forecast).

## 2026-11-20 - Arkarupa: ringkasan validasi dan pemulihan isian pertama

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `2783bfd5263b36fefb3d22a2576acaefb65fea1f` memperjelas jumlah bagian bermasalah melalui lencana monokrom13px dan pesan14px. Tombol Ke isian pertama hanya tampil bila resolver existing menemukan input terkait; Enter/Space membawa fokus tanpa mengubah draf atau mengirim aksi bisnis.24fixture actualBlade+24baseline meliputi kosong,mapped,mixed/unmapped dan pesan panjang escaped.12browser Dashboard PM/Finance membuktikan validasi tanggal melalui applyFilters yang hanya membaca; aksi fokus tidak menambah RPC, nilai tanggal/proyek tetap.

Dua Featuretest/26asersi MySQL disposable lulus: serverdraft pulih tanpa submission, konflik revisi dan isolasi role ditolak; validasi lapangan mempertahankan volume/catatan gagal lalu koreksi menyimpan satu draf. Database disposable dihapus dan proses milikrun dihentikan. Guard draf/offline/request dan field mapper identik di luar dua blok UI baru. Pemicu18.01WIB ditunda karena run17.46 masih aktif dan dicatat pada kedua Change Log. UI-04.3/UI-05.3/UI-07.2 source-bound; seluruh36,reviewAndreas,UATmanusia/HPfisik danPILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Buka Dashboard dan Filter](https://arkarupa-dashboard.vercel.app/).

## 2026-11-20 - Arkarupa: keterbacaan sumber biaya dan kembali ke ringkasan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `adb159a6de1e09894552677af03902210d9018eb` memisahkan nominal actual18px dari identitas sumber14px,tanggal/RAP13px dan deskripsi14px pada kartu sumber biaya Pengadaan. Monokrom,Plus Jakarta Sans,gradien dan sumber nilai tetap. Dari akhir rincian,tautan native Kembali ke ringkasan biaya membawa fokus ke nominal actual tanpa POST,menjaga proyek/stage dan mendukung Back.18fixture actualBlade+18baseline kosong/nol/20baris/negative/nominal20digit/deskripsi panjang escaped,serta24browser PM/Finance pada dua proyek lulus terfokus.

Dua existing Featuretest/20asersi pada MySQL disposable membuktikan SPK/opname satu efek,alokasi biaya langsung lintasproyek,rounding penerimaan,privatePOPDF immutable/checksum dan izin download;1PDF hasilrenderer juga terparse. Database disposable dihapus dan proses milikrun dihentikan. Rumus actual/commitment,coverage,form,role dan PDFtemplate tidak berubah;tidakada mutasi data publik. UI-04.3/UI-05.3/UI-07.2 source-bound;seluruh36,reviewvisualAndreas,UATmanusia/HPfisik/PILOT_READY tetap terbuka. Ini bukti sumberbiaya parsial,bukan penutupan alur nota dua pembayaran seluruhnya. HostedCI/fullsuite tidak dijalankan. [Buka Pengadaan - Biaya sumber](https://arkarupa-dashboard.vercel.app/pengadaan?stage=biaya).

## 2026-11-20 - Arkarupa: tampilan aktif dan navigasi keyboard modul

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `0b9d935e545de2ee21f4e6a5966e062ed03dbb89` menambahkan label Tampilan aktif berukuran14px pada menu horizontal modul. ArrowLeft/Right,Home/End memindahkan fokus dan menggulir tombol ke area terlihat;Tab/ShiftTab juga membawa fokus terlihat. Memindahkan fokus tidak mengganti tampilan atau mengirim POST. Pola Holsite,monokrom,Plus Jakarta Sans,wire/action dan guarddraf tetap.24fixture actualBlade+24baseline modul3/4/5tombol serta nama panjang escaped,dan24browser publik PM/Finance pada Komersial/Keuangan lulus terfokus. Enter/Space native hanya diuji pada fixture terisolasi;konfirmasi draf publik tidak dibypass.

Dua existing Featuretest/94asersi MySQL disposable lulus:forecast hanya mengisi nominal kosong tanpa menimpa0/manual/alasan,serta deep link enamrole/empatmodul dengan fallbackstageinvalid dan penolakan update422. DBdisposable dihapus,proses milikrun dihentikan;data publik tidak dimutasi. UI-04.3/UI-05.3/UI-07.2 source-bound;seluruh36,reviewvisualAndreas,UATmanusia/HPfisik dan PILOT_READY masih terbuka. HostedCI/fullsuite tidak dijalankan. [Buka modul Komersial](https://arkarupa-dashboard.vercel.app/komersial).

## 2026-11-20 - Arkarupa: identitas dan pencarian pemilih proyek

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `532b180203f3bd415bedc3a1d6a515af9d8becff` memisahkan nama proyek15px,ID,wilayah dan penanda aktif pada opsi monokrom. Pencarian #12 atau12 mencocokkan nomor tepat;nama danwilayah tetap tersedia. Ini membantu membedakan nama serupa tanpa mengubah urutan,aksi selectProject atau akses.18fixture actualBlade+18baseline meliputi kosong,20proyek,namapanjang/escaped danID1vs10;12browser publik PM/Finance membuktikan pencarian,clear/Escape/fokus tanpa POST dan data/aksi tetap.

Dua Featuretest/52asersi MySQL disposable lulus:penugasan mandor perproyek/idempotency/pemulihan inputduplikat dan perpindahan PM/Finance padaduamodul dengannamaserupa serta akses proyek tidakditugaskan tetap ditolak. Tidakada posting biaya dari pergantian;DBdisposable dihapus danproses milikrun dihentikan. UI-04.3/UI-05.3/UI-07.2 source-bound;seluruh36,visualreviewAndreas,UATmanusia/HPfisik danPILOT_READY masih terbuka. HostedCI/fullsuite tidakdijalankan. [Buka demo Komersial lalu Ganti proyek](https://arkarupa-dashboard.vercel.app/komersial).

## 2026-11-20 - Arkarupa: tujuan navigasi daftar proyek

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `0eea1c08d7f725198c46b6e53e76074af64c02ea` memperjelas daftar proyek lewat zebra monokrom desktop,aksi14px dan jumlah13px;kartuHP/gradien tetap. Petunjuk terlihat dan deskripsi aksesibel membedakan Buka proyek ke workspace tim dari Lihat ringkasan ke angka/sumber. Panah internal sesuai perilaku tab yang sama;href,target,role,progres dan nilai kontrak tetap.18fixture actualBlade kosong/nol/tanpa-baseline/nama-panjang/angka-besar/perizinan campuran,24browser PM/Finance dan8alur dua tujuan/Back/refresh/query lulus.

Empat test/58asersi MySQL disposable lulus:dua skenario integrasi nota-receipt/finance menjaga sumber eligible tanpa posting stok/biaya/kas ganda;satu skenario membership membatasi list/survei/download;satu test menghasilkan fixture visual. Database disposable dihapus dan proses MySQL milik run dihentikan;data publik tidak diubah. UI-04.3/UI-05.3/UI-07.2 source-bound;seluruh36/reviewAndreas/UATmanusia/HPfisik/PILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Daftar proyek demo](https://arkarupa-dashboard.vercel.app/proyek).


## 2026-11-20 - Arkarupa: konfirmasi manual dan konteks penutupan

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `4d30dcaef4d05e7946b8cd9c52f62a930c5b2f73` membedakan Konfirmasi manual dari Perlu ditinjau melalui batas putus-putus netral dan label13px. Catatan tanggal menjelaskan checklist memakai sumber terkini; cut-off progres historis pada header tidak mengubah checklist tersebut. Tautan Ke konfirmasi manual membawa fokus ke syarat manual pertama tanpa request atau perubahan status.18fixture actualBlade kosong/tanpa-manual/mixed true-false-null dan24browser PM/Finance pada proyek current/historical lulus;jumlah,syarat,tautan,form dan izin tetap. Monokrom,Holsite dan Plus Jakarta Sans dipertahankan.

Dua Feature test/32asersi MySQL disposable lulus:rehearsal stock opname membedakan histori hilang dari nol tanpa posting stok,serta serah terima harus direview Owner lain dengan penolakan sumber stale/self-review dan tanpa menghapus saldo. Database disposable dihapus dan proses MySQL milik run dihentikan;data publik tidak diubah. UI-04.3/UI-05.3/UI-07.2 source-bound;seluruh36/reviewAndreas/UATmanusia/HPfisik/PILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Checklist penutupan demo](https://arkarupa-dashboard.vercel.app/workspace#project-closeout).


## 2026-11-20 - Arkarupa: metadata pekerjaan dan penerimaan upah per divisi

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `36cbc1cc02934a6976f443687ac2f9eed9c36570` memperbesar metadata proyek/PIC dan tanggal pekerjaan menjadi13px,label pencarian14px pada Dashboard/Workspace. Tautan Ke awal daftar mengembalikan fokus ke heading tanpa request atau mengubah filter/halaman.18fixture actualBlade dan24browser publik PM/Finance lulus terfokus;judul,PIC,tanggal,jumlah,URL danform tetap. Monokrom,Holsite,Plus Jakarta Sans dan reduced motion dipertahankan.

UI-07.2 diverifikasi ulang secara engineering pada database MySQL disposable: satu mandor dengan dua penugasan,alokasi parsial/lunas tetap terkait divisi,filter/search/sort/reset/pergantian proyek,tanggal/bukti/snapshot sumber. Dua skenario/115asersi dan18kartu UI tersanitasi untuk semua/belum-lunas/lunas lulus. QA pembayaranupah juga membuktikan approval idempotent,penolakan lebihbayar dan pembalikan tanpa biaya ganda. Database disposable dihapus,proses MySQL milik run dihentikan;data publik tidak diubah. UI-04.3/UI-05.3 source-bound;29/36 tetap historis,seluruh36/visualreviewAndreas/UATmanusia/HPfisik/PILOT_READY tetap terbuka. Aturan konversi OH/proyek nyata tidak disahkan oleh fixture ini. HostedCI/fullsuite tidak dijalankan. [Pekerjaan berikutnya demo](https://arkarupa-dashboard.vercel.app/workspace#project-tasks).


## 2026-11-20 - Arkarupa: indeks dokumen dan kembali ke pencarian

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `1563908fe1ceda1567c63e0ddf04a3fa591bdb8e` memperjelas jenis,jumlah dan nomor sumber pada indeks dokumen bersama Dashboard/Workspace memakai kartu monokrom,jumlah tabular serta judul15px/badge14px. Tautan footer Ubah pencarian mengembalikan fokus ke input tanpa request atau menghapus isi.18fixture actualBlade dan24browser publik PM/Finance di dua halaman lulus terfokus;label/status/tanggal/URL,form dan izin tetap. Layout Holsite dan Plus Jakarta Sans dipertahankan.

Tiga Feature test/65asersi pada MySQL disposable lulus:AHSP satuan unit/set mengalir ke RAP,PDF dan progres lapangan;indeks dokumen menjaga paginasi,karakter literal pencarian serta batas peran/proyek. Dua PDF hasil render yang tersisa terbaca sebagai PDF1halaman. Fixture/storage terisolasi,database disposable dihapus dan proses MySQL milik run dihentikan. Tidak mengubah data publik. Hipotesis perbaikan Escape tidak diterapkan karena native Chrome sudah membersihkan state;perilaku pencarian/debounce tetap. UI-04.3/UI-05.3 source-bound,seluruh36/UATmanusia/reviewAndreas/HPfisik/PILOT_READY tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Indeks dokumen demo](https://arkarupa-dashboard.vercel.app/workspace#project-documents).


## 2026-11-20 - Arkarupa: antrean review workspace dan navigasi monokrom

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `6a774cce8348a0fd4644c21de4c009e6d69622e3` memisahkan label dan hitungan antrean review dalam kartu monokrom. Tautan Review pada navigasi bagian menuju heading dengan fokus terlihat; hanya tampil bila antrean existing tersedia. Sumber jumlah,role,URL,form dan data tetap.18fixture kosong/satu/banyak-nama-panjang,12kasus shell/Alpine lokal dan24kasus browser publik PM/Finance lulus terfokus. Layout Holsite,Plus Jakarta Sans dan reduced motion dipertahankan.

Tiga Feature test stok/66asersi lulus pada MySQL disposable terisolasi: pemakaian,pembalikan sekali dan saldo historis cut-off termasuk penolakan tanggal mendatang/pemulihan. Pembacaan tidak memposting biaya/kas. Database disposable dihapus dan proses MySQL milik run dihentikan;database publik tidak diubah. UI-04.3/UI-05.3 memakai bukti source terikat ulang; seluruh36/humanUAT tetap terbuka,29/36 historis bukan skor desain. Review visual Andreas,HPfisik,akses Owner dan proyek pilot nyata tetap terbuka. HostedCI/fullsuite tidak dijalankan. [Buka review workspace demo](https://arkarupa-dashboard.vercel.app/workspace#workspace-review-heading).


## 2026-11-20 - Arkarupa: pilihan berbagi monokrom dan pemeriksaan dokumen

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `8403206eaebe0bac7217cd94964578ead43c2e28` memperjelas pilihan keuangan pada formulir laporan: kartu monokrom berlabel, garis tepi pada centang draf, dan tombol Periksa pilihan berbagi untuk kembali dengan keyboard. Pilihan, data, izin serta aksi penerbitan tetap;18fixture lokal dan24kasus browser publik PM/Finance lulus. Layout/navigasi Holsite dan Plus Jakarta Sans dipertahankan.

QA dokumen:2Feature tests/244asersi pada MySQL disposable; rerun enam kategori174asersi untuk artefak UI tersanitasi,12PDF valid, preview/unduh versi aktif/lama dan pencabutan akses403.12kasus viewport arsip aktif/lama lulus. UI-05.3 diverifikasi engineering; UI-04.3 memakai bukti terikat source identik.29/36 tetap angka historis, seluruh36 belum diterima pada kandidat yang sama. Tidak menerbitkan fixture laporan/dokumen ke publik. Password Owner demo belum tersedia; UAT manusia/HPfisik, staging proyek nyata dan PILOT_READY tetap terbuka. HostedCI/full regression tidak dijalankan. [Dashboard demo](https://arkarupa-dashboard.vercel.app/).


## 2026-11-20 - Arkarupa: tautan Portal dan validasi snapshot disposable

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `be8855e5caee0d7534025c2d4346d9deaad1ec20` memisahkan URL Portal Klien dalam wadah monokrom berlabel. Pilih tautan memfokuskan input readonly dan memilih seluruh URL untuk salin manual, tanpa clipboard otomatis, request atau publikasi laporan. URL,form,cut-off,foto,opsi keuangan dan akses tetap.18kombinasi fixture dan24browser publik PM/Finance lulus terfokus.

Enam Feature test existing dengan292asersi lulus pada MySQL8.4.9/PHP8.4.1 lokal yang terisolasi. Cakupan: histori baseline/kontrak,peringatan dan jalur kritis kalender,Gantt/KurvaS/tabel/CSV,laporan snapshot hanya progres terverifikasi/foto terpilih,akses klien yang ditugaskan dan termin opt-in/frozen/revocable. Dua database disposable dihapus dan proses MySQL milik run dihentikan;server lain dan database demo publik tidak diubah. UI-04.3 diverifikasi ulang secara engineering pada kandidat ini, dengan bukti browser/CSV sebelumnya diikat melalui source relevan yang identik. Ini bukan penambahan menjadi30/36:29/36 tetap historis dan seluruh36 belum diterima pada kandidat yang sama. UAT manusia/Owner/HPfisik,review visual dan aktivasi pilot tetap terbuka. Laporan disposable tidak diterbitkan ke demo publik. HostedCI/full regression tidak dijalankan.

Sumber: arahan Andreas dan verifikasi20November2026. AreaUI/UX/workflow/QA Arkarupa;facts,release dan changelog SagaDevs/master/status diperbarui. [Dashboard demo](https://arkarupa-dashboard.vercel.app/) · [Status Arkarupa](ARKARUPA.md).

## 2026-11-20 - Arkarupa: Kurva S terbaca dan panduan native

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `d331f3f6457d587a5a23bc607ff8b90a48681637` memperjelas legenda rencana/aktual menjadi label14px dengan contoh garis28px monokrom. Panduan Cara membaca Kurva S dapat dibuka dengan Enter dan ditutup dengan Space tanpa request, menjelaskan baseline, pekerjaan terverifikasi, titik belum tersedia dan selisih dalam poin persentase. Grafik, angka, rumus dan hak akses dipertahankan. Partial bersama digunakan lapangan dan portal klien; sumbu portal menjadi13px. Lapangan diverifikasi pada demo publik; portal klien diverifikasi melalui fixture tanpa JavaScript, bukan login/UAT klien.

Validasi terfokus:60 kombinasi fixture lapangan/portal pada lima keadaan data dan enam viewport/mode gerak;24 kombinasi publik PM/Finance;16 ekspor CSV pada dua cut-off dan dua proyek sintetis untuk kedua role. Keenam kolom CSV cocok dengan tabel, seluruh koordinat Kurva S sesuai nilai sumber, dan delapan pembandingan Gantt cocok dengan baseline/aktual/rencana/selisih pada cut-off yang sama. Source/runtime/aset dan restore disposable cocok. Tidak ada perubahan schema/data klien atau aktivasi pilot. Hosted CI/full regression tidak dijalankan. Laporan klien terbit belum tersedia pada fixture publik yang diperiksa; QA perlu menyiapkan snapshot sintetis disposable sebelum UAT portal. Versi historis yang berbeda belum terpicu pada fixture publik; PDF/laporan, seluruh36 pemeriksaan, review visual Andreas serta UAT/Owner/HP fisik tetap terbuka. Hasil29/36 tetap historis, bukan persentase implementasi saat ini.

Sumber: arahan Andreas dan verifikasi rilis20November2026. Area: UI/UX Arkarupa serta penerimaan data/CSV; facts,workflow,release dan changelog SagaDevs/master/status diperbarui. [Dashboard demo](https://arkarupa-dashboard.vercel.app/) · [Status Arkarupa](ARKARUPA.md).

## 2026-11-20 - Arkarupa: finalisasi tautan matriks tanpa nilai

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Kandidat final `c1c807ec27caeda7c4e9acc5b66b472e546f040e` mempertahankan legenda Gantt monokrom dan navigasi keyboard, serta menyembunyikan tautan kembali ketika baseline tidak menghasilkan matriks nilai. Ketersediaan mengikuti proyeksi dan izin existing. Verifikasi final48 kombinasi fixture termasuk nilai kosong,24 browser publik dan16 skala/cut-off lulus; angka/aktivitas/konteks cocok sebelum-sesudah, source/runtime/aset serta restore disposable cocok. Rilis pertama `697840ed58aafed2e4aa37ff981bcff6a1fe8000` dan bukti historis tetap dicatat di bawah. Tidak ada perubahan schema/rumus/data klien/aktivasi pilot;36 pemeriksaan penuh, review visual dan UAT fisik tetap terbuka. Sumber: arahan Andreas dan verifikasi20November2026. Area dan dokumen terdampak: UI/UX Arkarupa, facts/release/changelog SagaDevs, master dan status sinkronisasi. [Status Arkarupa](ARKARUPA.md).

## 2026-11-20 - Arkarupa monokrom dan legenda jadwal

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `697840ed58aafed2e4aa37ff981bcff6a1fe8000` memakai palet putih/abu-abu/hitam sesuai arahan Andreas, mempertahankan komposisi Holsite, Plus Jakarta Sans dan akses. Legenda Gantt kini berlabel dalam kartu berpola lebih jelas; pengguna internal dapat kembali ke matriks bobot dengan fokus keyboard terlihat. 42 kombinasi fixture,24 browser publik dan16 skala/cut-off lulus terfokus; source/runtime/aset dan restore disposable cocok. Rumus/data/schema tetap. Seluruh36 pemeriksaan, review visual, UAT/Owner/HPfisik dan proyek pilot belum disahkan;29/36 tetap historis. Demo statis tidak berubah. Sumber: instruksi Andreas19-20November dan verifikasi rilis20November2026.

[Detail dan batas penerimaan Arkarupa](ARKARUPA.md). Area: UI/UX demo Arkarupa; pembaruan facts/release/decision/gaps/changelog pada dokumen SagaDevs,master dan status sinkronisasi.

## 2026-11-18 - Arkarupa: judul dan skala matriks langsung

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `09531808f7252d69d9bcf110165503b45bc73880` membuat judul matriks terlihat saat dibuka lewat deep link dan menambahkan pilihan Mingguan/Bulanan langsung pada matriks. Kontrol tetap memakai state jadwal existing dan tersinkron dua arah dengan Gantt. Space/ArrowLeft mempertahankan fokus. Akses internal tidak berubah; Pelaksana tetap membaca Gantt tanpa kontrol matriks nilai. Regresi MySQL disposable122tes/2500asersi, delapan kombinasi lokal320/390/740/1440 dengan reduced-motion/normal, PM publik390/1440 dalam dua mode gerak, hash runtime/CSS dan backup/restore disposable lulus. Tidak ada perubahan schema, baseline/aktual, kas, data klien atau aktivasi pilot. Penerimaan tetap29/36; tujuh keputusan/perangkat, staging privat dan UAT fisik masih terbuka. [Matriks demo](https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=jadwal#field-schedule-matrix) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261118-183409).


## 2026-11-18 - Arkarupa: fokus matriks dan rincian target HP

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `416baf6148777e6ada847f041b826821630434c2` mempersempit kolom pekerjaan padaHP, memperbesar teks rincian dan memberi pemisah visual. Saat fokus berpindah ke angka matriks, tabel bergulir hingga angka dan rincian terlihat di luar kolom melekat. Sebelumnya rincian terpotong pada320/390px; kini delapan kombinasi lokal320/390/740/1440 dengan reduced-motion/normal memeriksa32target awal/akhir mingguan/bulanan, Enter dan Tab balik tanpa clipping. Regresi MySQL disposable122tes/2497asersi serta PM publik390/1440 dalam dua mode gerak lulus. Hash runtime/CSS dan recovery disposable diverifikasi. Tidak ada perubahan schema, akses, baseline/aktual/kas, data klien atau aktivasi pilot. Penerimaan tetap29/36; tujuh keputusan/perangkat dan UAT fisik tetap terbuka. [Matriks demo](https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=jadwal#field-schedule-matrix) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261118-181909).


## 2026-11-18 - Arkarupa: bulan dan porsi volume matriks

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `1c98c8cf4982b23acb5ff38ad74ec0d0c21f9a93` menambahkan header bulan sesuai tanggal awal periode dan rincian yang membedakan persentase volume item dari kontribusi terhadap proyek. Minggu lintas bulan tetap menampilkan rentang tanggal sebenarnya. Pembagi nol dan target kosong tidak menghasilkan angka palsu. Izin existing `view-internal` tetap berlaku; Pelaksana mempertahankan Gantt tanpa matriks nilai internal. Regresi MySQL disposable122tes/2497asersi, fokus proyeksi/izin3tes/25asersi, serta browser lokal320/1440 dan publik390/1440 lulus. Hash source/CSS dan backup/restore disposable diverifikasi. Tidak ada perubahan schema, baseline, aktual, kas, data klien atau aktivasi pilot. Penerimaan tetap29/36; tujuh keputusan/perangkat, editor baru dan ekspor matriks masih terbuka. [Matriks demo](https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=jadwal#field-schedule-matrix) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261118-180009).


## 2026-11-18 - Arkarupa: izin matriks nilai mengikuti akses internal

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `0ba8c1ad365eb84dce203566e5fc0974d6e45ee8` membatasi matriks bobot bernilai rupiah dengan izin existing `view-internal`. PM/Owner/QS/Finance yang berhak membaca matriks; Pelaksana tetap membaca Gantt tanpa matriks nilai internal. Koreksi terfokus ini mengikuti rilis fitur pertama `2ad2a2b8cd4780d8d429b223f6951ef7873f053a`. Tiga tes final21asersi mencakup proyeksi dan render PM/Pelaksana. Regresi121tes/2488asersi adalah bukti kandidat sebelum tambahan guard view; full suite tidak diulang setelah delta guard. PM publik390/1440, hash source/CSS serta backup/restore disposable final diverifikasi. Tidak ada perubahan schema/data klien/aturan kas atau aktivasi pilot. Penerimaan tetap29/36; tujuh keputusan/perangkat serta ekspor matriks/editor baru tetap terbuka. [Matriks demo](https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=jadwal#field-schedule-matrix).


## 2026-11-18 - Arkarupa: matriks bobot rencana per periode

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source Laravel `2ad2a2b8cd4780d8d429b223f6951ef7873f053a` memperluas halaman Baseline dengan matriks rencana mingguan/bulanan. Sebelumnya Gantt menampilkan rentang dan bobot item; kini operator membaca nilai baseline, bobot, kontribusi tiap periode serta rekap periode/kumulatif dari versi kontrak/jadwal yang sama. Disclosure native menampilkan target volume lewat keyboard. Kolom pekerjaan tetap terlihat dalam gulir tabel lokal; caption aksesibel dan lebar HP diperiksa secara visual.

Proyeksi memakai selisih nilai kumulatif berpresisi sumber, sehingga pembulatan sel tidak mengubah akhir rencana lengkap100%. Target parsial tetap ditandai, dan tampilan dibatasi104periode dengan peringatan eksplisit. Dua tes baru16asersi mencakup contoh totalRp357juta/sembilan item, pecahan1/3, lintas bulan, rencana parsial dan rentang panjang. Regresi MySQL disposable121tes/2488asersi lulus. Chrome lokal320/1440 dan PM demo publik390/1440 memverifikasi matriks, Enter, pergantian skala serta overflow; hash source dan CSS aktif cocok. Backup/restore disposable28migrasi/73tabel lulus; sumber posting dan bukti sintetis tetap identik.

Scope rilis hanya matriks rencana baca saja. Tidak mengubah schema, hak akses, baseline tersimpan, perhitungan aktual, kas, pricing, akun nyata atau data klien. Editor target baru, ekspor matriks dan penyajian matriks pada laporan/Portal tetap tahap berikutnya. Holsite tetap29/36; tujuh pemeriksaan UI-05.1/06.3/06.4/07.1/07.3/07.4/09.4 masih terbuka untuk keputusan basis nilai/termin, OCR/retensi, OH/upah, pembanding serta perangkat fisik. Staging privat, UAT operator dan PILOT_READY belum selesai. Demo statis c6baa67a tidak dirilis ulang.

Sumber: referensi Andreas18November2026, source/test dan verifikasi rilis pada tanggal yang sama. [Matriks demo](https://arkarupa-dashboard.vercel.app/lapangan?project=3&stage=jadwal#field-schedule-matrix) · [Change Log](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#run-20261118-173239).


## 2026-11-18 - Arkarupa: ringkasan penerimaan dan keputusan terbuka

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source Laravel `3ce77e74fda58520639befda45ca9b7c92050aa1` menampilkan snapshot penerimaan bertanggal **29/36 (80,6%)** pada Change Log Owner. Sebelumnya pengguna membaca riwayat panjang untuk menemukan progres dan keputusan. Kini kartu monokrom menyatakan batas data sintetis dan belum PILOT_READY; disclosure keyboard membuka tujuh ID, keputusan dan PIC.

Chrome lokal 320/390/1440 serta tes Change Log 1/1 lulus. Demo publik memverifikasi penolakan PM pada Foundation, akses Kas, versi aktif dan hash template/CSS; sesi Owner publik belum diuji. Draf, tiga bukti asli dan sumber posting identik, nol posting baru. Backup/restore disposable 28 migrasi/73 tabel lulus. Suite penuh 119 tes/2.472 assertion adalah bukti historis `9170480`, tidak diulang untuk panel ini. Tidak ada perubahan schema, izin, aturan bisnis, pricing, akun nyata atau data klien.

Tujuh ID **UI-05.1/06.3/06.4/07.1/07.3/07.4/09.4** tetap terbuka: Finance/PM menetapkan basis nilai dan termin; Procurement/Product OCR foto dan retensi; Field/Finance OH serta upah; PM rework/pembanding; QA/Andreas perangkat fisik dan pilihan proyek pilot. Staging privat, UAT operator dan PILOT_READY belum selesai. Demo statis terakhir `c6baa67a` tidak dirilis ulang. [Ringkasan Owner](https://arkarupa-dashboard.vercel.app/fondasi?stage=rilis#pilot-acceptance-snapshot).

Sumber: arahan Andreas dan verifikasi kandidat 18 November 2026. Sinkronisasi yang tertunda dilanjutkan dari checkout bersih yang sama dengan origin/main; histori lokal dipertahankan. Ini pembaruan knowledge atas milestone panel penerimaan, tanpa klaim penambahan pemeriksaan lulus.

## 2026-11-18 - Arkarupa: Dock dan konteks proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 9170480d79d77ed3b24bdeb7cc3586d1f156cf0b mempertahankan konteks proyek yang diperiksa aksesnya pada dua tautan dock Utama/Proyek. Sebelumnya daftar Proyek membuang parameter dan kembali ke Utama dapat membuka portofolio. Dua tes server membuktikan konteks valid serta ID proyek perusahaan lain tidak diteruskan. UI-02.2 lulus fungsi dock di Chrome: 24 kombinasi lokal empat rute, lebar 320/390/740, potret/lanskap, reduced motion/normal, inset CDP terkendali, status aktif bersama drawer, target minimal 44 px dan sentuhan emulasi pada konten panjang. Desktop 900/1440 dan transisi 899-ke900 memulihkan fokus. PM publik memverifikasi delapan kombinasi 390/740 dengan sentuhan emulasi dan konteks tetap. Holsite 29/36 (80,6%); UI-09.4 tetap BELUM TUNTAS untuk Android/iPhone atau perangkat UAT fisik yang disepakati. Bukti ini tidak mengklaim safe area atau sentuhan perangkat aktual. Tujuh ID terbuka: UI-05.1/06.3/06.4/07.1/07.3/07.4/09.4. Regresi penuh 119 tes/2472 assertion; digest draf/bukti dan sumber posting identik, nol posting baru. Backup/restore disposable 28 migrasi/73 tabel lulus. Schema, aturan bisnis, akun nyata dan data klien tidak berubah. OCR/retensi, basis nilai/termin, OH/upah, rework/pembanding, perangkat fisik, staging privat, UAT operator dan PILOT_READY tetap terbuka. Demo statis terakhir c6baa67a tidak dirilis ulang. Sumber: kriteria Holsite bagian 4 dan bukti kandidat 18 November 2026.


## 2026-11-18 - Arkarupa: Koreksi angka nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 5d0a33b1815b8829b63609775fa427e6f2233f39 menandai barang dengan kesalahan jumlah/harga memakai Perlu koreksi. Sebelumnya judul barang tidak menunjukkan kesalahan server dan tombol input manual kembali ke supplier ketika jumlah nol ditolak. Kini fokus menuju jumlah/harga yang ditolak, termasuk ketika validasi HTML menganggap input terisi. Identitas, isian belum disimpan dan tiga lampiran tetap. Membuka ulang draf membersihkan penanda lama; barang lain tidak ikut ditandai. Chrome disposable320/390/1440, harga negatif, fallback formulir valid dan jumlah kosong lulus. Digest draf/bukti dan sumber posting identik, nol posting baru. Regresi penuh119 tes/2464 assertion. PM publik390/1440 memverifikasi validasi server jumlah nol, marker dan fokus tanpa penyimpanan berhasil. Backup/restore disposable28 migrasi/73 tabel lulus. Aturan angka, schema, akun nyata dan data klien tidak berubah. Holsite tetap28/36(77,8%). OCR foto/retensi, aturan OH/upah, basis nilai klien, termin, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis terakhir c6baa67a tidak dirilis ulang. Sumber: arahan Andreas dan bukti kandidat18 November2026, perubahan UI/UX nota.


## 2026-11-18 - Arkarupa: Pemulihan nota dan bukti tersimpan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel f32733f8dd3ff88db8da26e5e8175444c11b31f0 selalu memperlihatkan jumlah lampiran tersimpan ketika pembacaan PDF gagal. Jalur manual menuju isian barang yang belum lengkap sesudah identitas nota valid. Sebelumnya jumlah bukti hanya terlihat saat kapasitas penuh dan fokus kembali ke supplier. Browser disposable 320/390/1440 px membuktikan fokus kuantitas, retensi isian serta tiga lampiran asli. Kegagalan extractor PDF terkontrol lalu retry pembaca asli mempertahankan isian; checksum sumber cocok, akses Finance ditolak dan tidak ada posting baru. Regresi penuh 119 tes/2464 assertion. PM publik memverifikasi fokus manual di 390/1440 px; pembaca PDF diuji lokal. Backup/restore disposable 28 migrasi/73 tabel lulus. Holsite tetap 28/36 (77,8%); UI-06.4 belum ditutup karena kegagalan OCR foto belum terbukti. Provider/retensi OCR, perangkat fisik, staging privat, UAT operator, pilihan proyek pilot serta PILOT_READY terbuka. Demo statis terakhir c6baa67a, tidak dirilis ulang. Sumber: arahan Andreas dan bukti kandidat 18 November 2026; perubahan UI/UX nota, tanpa perubahan schema, akun nyata atau data klien.


## 2026-11-18 - Arkarupa: Cakupan CSV dan pencarian yang belum diterapkan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 5c5e1220766d2b8368eb43a0c23394d05cc63236 menampilkan tanggal, jumlah, status, UTF-8 dan delapan kolom pada cakupan CSV absensi. Kata kunci yang belum diterapkan menahan unduhan di browser dan server. Terapkan pencarian memulihkan fokus ke hasil; hasil kosong tetap menahan ekspor dan Hapus pencarian memulihkan fokus. Fixture disposable membuktikan CSV sesuai pencarian, formula terlindungi serta sumber tanpa posting biaya/upah. PM publik memverifikasi panel cakupan dan guard tanggal kosong. Holsite 28/36. OH/upah, perangkat fisik, staging privat, UAT operator dan PILOT_READY tetap terbuka. Demo statis c6baa67a.


## 2026-11-17 - Arkarupa: Identitas penugasan dan ekspor CSV absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 3cdd8d9c93fab1a2f9f1e75422abcf518b6a8bb1 memisahkan mandor dan divisi pada rekap tim. CSV absensi mengikuti tanggal, status dan pencarian, memakai UTF-8 BOM dan melindungi sel formula. Filter dan fokus tombol bertahan sesudah unduhan. Fixture disposable membuktikan isi CSV, akses Finance, guard hasil kosong dan sumber tanpa posting biaya/upah. PM publik memverifikasi tombol nonaktif pada tanggal kosong dan fokus tanggal; ekspor berisi data diuji lokal. Holsite 28/36. Field/Finance menetapkan OH dan kaitan upah. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.


## 2026-11-17 - Arkarupa: Pratinjau foto nota dan fokus pengisian manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 3e49601f0bad2eea228d32776ff2065c67b3d4b5 menampilkan foto privat pada daftar bukti serta menyediakan retry saat gambar gagal dimuat. Isi nota dari foto memfokuskan isian pertama yang perlu dilengkapi, termasuk metode bayar. Fixture lokal membuktikan preview, retry, integritas PNG/PDF serta batas akses Finance. PM memverifikasi fokus manual di demo. Holsite 28/36. Provider OCR foto dan retensi, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Metode bayar nota dan pintasan koreksi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e90544cd02203a842209cfbf1683aea7efbdaf79 menyimpan metode bayar sesuai teks nota pada snapshot, menampilkannya di riwayat dan rekonsiliasi Finance, serta menyediakan pintasan ke kolom. Validasi, retry, draf dan pemanggil lama, pengosongan, empat PDF asli serta integritas posting diuji pada fixture MySQL. PM memverifikasi kolom pada demo. UI-06.1 lulus. Holsite 28/36. Delapan pemeriksaan lain, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah entri per tanggal dan salin tautan Change Log

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel a7f169a51bc5d6a533a66f3feec8365041ca48b9 menampilkan jumlah entri Change Log per tanggal dan tombol salin tautan. Owner sintetis di lokal memverifikasi tautan terbaru dan historis, konfirmasi, serta kolom terpilih saat clipboard ditolak. Demo publik memverifikasi batas akses PM 403, SHA aktif dan hash template/CSS. Akun Owner sintetis belum tersedia pada demo, sehingga alur Owner publik masih terbuka. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Rekap absensi per penugasan dan pintasan pencarian

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 4e71d33328f4a1e1ac7c676a4868a316446cd3c4 menampilkan Hadir, Izin, Sakit, dan Alpa per penugasan. Pintasan di akhir hasil memfokuskan pencarian dengan tanggal dan filter aktif. Chrome lokal dan fixture MySQL memverifikasi dua penugasan serta hak baca Finance. Demo publik memverifikasi kondisi tanggal kosong, fokus tanggal, dan SHA aktif. Definisi OH dan kaitan upah, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pemulihan PDF saat lampiran penuh

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e026f1b26d017c50202b3cbdfd37e3c582e2afdf menampilkan kapasitas bukti pada galat PDF ketika lampiran penuh dan memfokuskan PDF tersimpan lain bila ada. Jika hanya ada satu PDF, pengguna dapat melanjutkan isian manual. Chrome lokal membuktikan slot penuh, slot tersedia, dan akses bukti. Demo publik memverifikasi jalur manual dan SHA aktif. Interpreter staging, OCR foto, retensi, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Dasar sisa nilai dan ringkasan laporan terbaru

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 5e7dbdfe5fe4a741a372323dbcc4c1be8891d6b6 menampilkan nominal baseline dan pekerjaan terverifikasi sebagai dasar sisa nilai Portal. Pintasan dari laporan historis menuju ringkasan terbaru mempertahankan konteks pencarian dan filter. Klien sintetis menguji perilaku secara lokal. Demo publik memverifikasi akses Portal dan hash templat aktif. Finance, PM dan Andreas masih mengesahkan basis nilai. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Tanggal kejadian BUP dan pintasan alasan review

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 4e3e0d59cbc373f59b8bbeec68163f22911c4fa6 melabeli tanggal kejadian BUP dengan format Indonesia dan memberi reviewer pintasan dari kartu yang menunggu ke kolom alasan. QA memverifikasi hak reviewer, filter dan rekap tersendiri berdasarkan cut-off. Demo publik memverifikasi tanggal dan fokus dalam Chrome. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Antrean sertifikasi dan pintasan termin

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 29d7a3e7ca1064580b32132262011aef9c93bd17 menampilkan jumlah sertifikat dan yang menunggu di halaman Tagihan. Dari rencana termin, pengguna dapat berfokus pada sertifikat menunggu terbaru saat tersedia, dengan konteks proyek yang sama. Fixture lokal memverifikasi antrean, jumlah termin dan saldo serta isolasi proyek. Demo publik memverifikasi jumlah dan navigasi ke sertifikasi. Aturan milestone, tanggal dan persetujuan reschedule menunggu PM dan Finance. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: PDF sumber dan fokus isian nota manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel bc223ce85559fc416c2069216a9c1617994d44d8 menandai PDF sumber pada hasil pembacaan yang gagal dan mengarahkan tindakan isi manual ke kolom identitas pertama yang perlu diisi. Fixture lokal memverifikasi batas halaman, file terkunci, isian yang bertahan dan hak unduh. Demo publik memverifikasi alur manual. Interpreter PDF publik, provider OCR foto, retensi, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jarak dock dari cutout dan lompatan fokus

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ff2fe45356b43a999fe22eaa86b4ddea92040b88 memberi ruang dari batas cutout untuk dock dan Aksi cepat pada layar lanskap. Home menuju Menu dan End menuju Proyek pada dock tanpa mengubah konteks proyek. Chrome menguji safe area emulasi dan penyerahan fokus ke rail pada 900 px. Pemeriksaan demo membaca halaman Tagihan dan mencocokkan versi aktif. Safe area Android/iPhone fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pulihkan koreksi absensi saat revisi berubah

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel d44e7a04aa33b16356e02c2123a8e2ac485be0bc menampilkan revisi absensi terbaru ketika dua operator mengoreksi baris yang sama. Operator dapat memuat revisi terbaru, melanjutkan dengan alasan yang sudah diisi dan memeriksa kembali pilihan status. Fixture lokal membuktikan pemulihan fokus dan satu audit per baris tanpa posting tambahan. Pemeriksaan demo publik membaca halaman absensi dan mencocokkan versi aktif. Field dan Finance perlu menetapkan definisi OH dan kaitan ke upah. Uji perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pembanding nomor nota manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ad364697feefcf9d183b427dcb0b99fe555abc7c menampilkan pembanding draf tersimpan saat supplier dan nomor nota manual bentrok. Operator dapat membaca identitas dan nilai tersimpan serta nilai isian, lalu kembali ke kolom nomor tanpa mengganti isian. MySQL disposable membuktikan draf, bukti dan posting sama sebelum dan sesudah. Demo publik memverifikasi editor dan versi, sedangkan benturan diuji pada fixture lokal. Metode bayar dan kaitan kas perlu keputusan Procurement dan Finance. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Halaman aktif drawer dan navigasi panah dock

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 7ab423d84da6b16844642d23115f10339f0bf2e0 menampilkan bagian aktif di header drawer HP. Panah kiri dan kanan pada dock memindahkan fokus di antara Menu, Utama dan Proyek. Keadaan aktif, Tab, pemulihan fokus dan konteks proyek teruji pada Chrome sintetis. Demo memverifikasi alur pada potret 390 px dan lanskap pendek 740 px. Android dan iPhone fisik, pembaca layar, staging privat, UAT operator dan PILOT_READY masih terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status pelunasan dan sumber kas per invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel f6f267225977784bac9b4b966bae0c3c47d874ff menampilkan status penyelesaian invoice dan nominal kas teralokasi per transaksi. Tautan menuju pembayaran terposting pada proyek yang sama. Pembayaran yang dibalik tetap ada di riwayat Kas dan dikecualikan dari alokasi aktif. Fixture sintetis lulus Chrome 320, 390 dan 1.440 px, termasuk alokasi lintas invoice dan batas akses. Demo menguji dua tautan sumber secara terautentikasi. Finance dan PM masih mengesahkan milestone, tanggal dan persetujuan penjadwalan ulang. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan PDF nota dan pemulihan hasil pembacaan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 48c41e1517c7380c4158a77b2ceeef572355920d enforces the five-page limit for the configured receipt PDF reader and explains longer or password-protected documents with a path to another attachment or manual entry. Chrome synthetic flows passed at 320, 390 and 1,440 px with the reader configured locally. The public demo verified manual mode while the PDF interpreter is disabled there. The OCR provider and retention decision for photos/scanned PDFs and the staging PHP-FPM interpreter are open. Physical devices, private staging, operator UAT and PILOT_READY remain open. Holsite 27/36. Static demo c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan lokasi dan sumber BUP rekap tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 2e5566d8f06c5f0d7f962b68c234dffe6aae267c membuka BUP terverifikasi sesuai lokasi rekap volume tim dan tanggal cut-off. Koreksi mengikuti lokasi laporan asal yang memenuhi cut-off. Chrome pada fixture sintetis lulus pada 320, 390 dan 1.440 px serta demo menguji cakupan, keadaan kosong, dan kembali ke hasil rekap. Field dan Finance masih mengesahkan OH, biaya dan kaitannya dengan upah. PM menetapkan rework dan baseline. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan kas dan akses Kurva S dari nilai pekerjaan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 20cad8f87beea91e4d6fff14908c89b1496d7757 mencantumkan cut-off laporan sumber tagihan di kartu kas saat ini. Nilai pekerjaan menautkan Kurva S laporan yang sama selama tersedia. Chrome klien sintetis lulus pada 320, 390 dan 1.440 px. Demo memverifikasi batas login Portal dan template aktif. Pengesahan Finance dan PM untuk basis UI-05.1 masih terbuka. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan versi dan kembali ke filter dokumen

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e1f617f25867d8621f1056dd52f52aeaaeb15e32 menyajikan versi dan cakupan pada hasil Document Center. Kembali ke filter versi memfokuskan penyaring sambil menjaga kata kunci, kategori, versi dan halaman. Chrome klien sintetis lulus pada 320, 390 dan 1.440 px. Demo memverifikasi batas login Portal dan template aktif. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status tanpa proyek dan fokus pemilih Aksi cepat

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 2211526db8cf99dbb15bbebe46d7f5615b6392b7 menandai kondisi tanpa proyek pada Aksi cepat dan memfokuskan hasil direktori saat proyek dipilih. Catat BUP mengikuti proyek hasil pilihan. PM sintetis lulus di Chrome 320, 390 dan 740 px pada fixture, dan di 390 serta 740 px pada demo. Uji Android dan iPhone fisik untuk UI-02.2 masih terbuka. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Identitas lampiran dan fokus bukti revisi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 10126de0f50792f02e6ffebffc90db4bfb2f024f menampilkan jumlah lampiran pada revisi terbit. Tautan dari formulir ke bukti dan kembali memindahkan fokus serta menjaga isian. Fixture klien lokal lulus di Chrome 320, 390 dan 1.440 px. Demo memverifikasi batas login Portal dan kecocokan kode template aktif. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Koneksi terputus dan pemulihan simpan nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel db4be523591dba4f4b03464a4f999b50d129b3d8 menjelaskan kondisi koneksi terputus pada nota. Tombol simpan draf dan lampiran menunggu koneksi kembali. Nomor nota, pilihan lampiran dan PDF asli bertahan pada fixture Chrome 320, 390 dan 1.440 px. Editor nota baru pada demo PM sintetis lulus pada 390 dan 1.440 px. Keputusan provider OCR dan retensi masih terbuka. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status draf dan fokus catatan BUP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel fde93ba19d3d1fba410b8d541976bf7baccffcda menampilkan tanggal kejadian dan status pada kartu draf BUP. Ke catatan dan bukti memfokuskan isian catatan tanpa kehilangan isian. Draf teruji pada fixture Chrome 320, 390 dan 1.440 px. Laporan baru di demo PM sintetis lulus pada 390 dan 1.440 px. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Sumber HSD dan fokus ke komponen AHSP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel fe23a8ca29472aa4deb2c1aa5ba6fa6dc31f8858 menampilkan wilayah, jenis sumber dan tanggal observasi untuk HSD. Pintasan Ke komponen HSD memfokuskan tabel dan tautan kembali memulihkan pencarian. Rincian terisi lulus pada fixture lokal Chrome 320, 390 dan 1.440 px. Katalog demo PM sintetis lulus pada 390 dan 1.440 px dalam kondisi Master AHSP kosong. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status baseline dan fokus progres Workspace

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel a571e82cb12f238303d7cf4237594e65488f4db0 menampilkan versi baseline dalam lencana dan memakai garis putus-putus ketika baseline belum tersedia. Detail progres dari Workspace memfokuskan Progres resmi. Tautan kembali memulihkan proyek, periode dan fokus. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo PM sintetis lulus pada 390 dan 1.440 px. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Ringkasan nominal dan pintasan riwayat pembayaran

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 2321a13e054838146eba1ed866655bb6641d0285 menampilkan nominal, kas belum dialokasikan dan status pada riwayat pembayaran. Pintasan dari ringkasan Kas memfokuskan judul riwayat pada proyek yang sama. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo PM sintetis lulus pada 390 dan 1.440 px. Ledger sintetis dan izin tetap sesuai sumber. Keputusan milestone, jatuh tempo, reschedule, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Tanggal hasil absensi dan fokus pencarian aktif

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b9540b44e8a561c2fae7cf9a42b2d00657d47f39 menampilkan tanggal pada Hasil absensi. Pada hasil yang cocok, Ubah pencarian aktif memfokuskan dan menyeleksi kata kunci dengan status serta tanggal tetap terjaga. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo memverifikasi tanggal hasil dan fokus tanggal pada 390 dan 1.440 px. Aturan OH dan upah, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah riwayat review BUP dan kembali ke laporan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 96e332d7df377d6f0875706e8caa8b288f1c7170 menampilkan jumlah catatan riwayat review BUP. Kembali ke laporan ini memfokuskan judul BUP yang sama dengan filter dan cut-off lokal tetap aktif. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo PM sintetis memverifikasi lencana dan fokus pada 390 dan 1.440 px. Hak baca audit dan angka rekap tetap sesuai sumber. Perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penyesuaian nota dan fokus total draf

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b7ea6e274fe7f450aec6bc16d72c0df8b0da1f7e mengelompokkan diskon, pajak dan biaya tambahan. Tinjau total nota memfokuskan hasil baru dengan isian tetap terisi. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo PM sintetis memverifikasi judul dan fokus pada 390 dan 1.440 px. Metode bayar, format nomor nota, perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cut-off Kurva S dan tutup rincian

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel f963796778ddca78e6bb6cfe710f342089f661d1 menampilkan cut-off aktual dalam lencana Portal. Tutup rincian Kurva S melipat tabel dan memulihkan fokus dengan laporan, filter dan angka yang sama. Fixture klien lokal membuktikannya pada Chrome 320, 390 dan 1.440 px. Demo publik memverifikasi template dan batas akses. Finance/PM, perangkat fisik, staging privat, UAT operator serta PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Tanggal cut-off dan fokus ke progres resmi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 9ef5c6b09b4681829d01af2e4f190038904ea447 menampilkan cut-off progres sebagai tanggal hari/bulan/tahun. Detail progres memfokuskan judul Progres resmi. Tautan kembali memulihkan periode, halaman dan fokus tautan sumber. Chrome lokal lulus pada 320, 390 dan 1.440 px. Demo PM sintetis lulus pada 390 dan 1.440 px. Android/iPhone fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Konteks proyek dan ganti proyek dari Aksi cepat

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ee0d3218206ed679dc9b101d58a767814e7db2a0 menampilkan label Proyek aktif di Aksi cepat. Ganti proyek membuka direktori dan Catat BUP mengikuti proyek baru. Chrome lokal memverifikasi alur penuh pada 320, 390 dan 740 px. Demo publik PM sintetis memverifikasi dialog dan tautan pada 390 dan 740 px. Android/iPhone fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Identitas alokasi dan kembali ke nominal kas

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 58cd320b9aac0eae9377a71d6ead4e0f3bf25803 menampakkan nomor dokumen dan saldo terbuka pada alokasi pembayaran. Pintasan kembali ke nominal mempertahankan isian alokasi. Chrome dan fixture Finance lokal membuktikan fokus, hak akses PDF dan kecocokan sumber tanpa posting baru. Demo publik memverifikasi halaman Kas sesuai izin PM. Milestone, penjadwalan ulang, HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan sumber BUP dan kembali ke rekap volume

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 0aede8b63c9c9eb315be70da050bf6171ed2dfca membedakan lokasi rekap dari cakupan sumber BUP. Tab BUP membawa konteks dan pintasan kembali ke hasil rekap. Browser lokal dan demo publik memverifikasi navigasi. Fixture sintetis memverifikasi cut-off dan angka volume. Dasar OH, upah dan rework, HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Nomor potensi duplikat PDF dan pencarian draf pembanding

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel a5336760f72897440d6baf6217e84fbf7fcb2602 menampilkan nomor pada peringatan PDF duplikat dan menjalankan pencarian draf ketika supplier dan nomor cocok. Fokus hasil dan retensi isian teruji pada fixture lokal, tanpa posting baru. Demo publik memverifikasi editor. Provider foto dan hasil scan, retensi bukti, HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Waktu saldo tagihan dan fokus kembali ke kas Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 7781ead983e447b05e42f455b285926d448278a8 memisahkan label saldo dan jam WIB dari tanggal cut-off laporan, serta menambahkan pintasan dari tagihan ke kas diterima dengan laporan dan filter tetap. Fixture klien sintetis memverifikasi nilai, fokus dan izin PDF. Demo publik memverifikasi login dan penolakan PM. Basis nilai dan kas, HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda versi koreksi dan fokus ke absensi yang diperbarui

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel de5f1ac657becac77851e1e2dd179c572a36d673 menampilkan revisi yang tercatat sebelum koreksi absensi. Jika filter aktif sesuai status lama, simpan mengarahkan pemeriksa ke status baru dan kembali ke baris pekerja yang sama. Tanggal serta pencarian tetap. Fixture sintetis memverifikasi audit, akses Finance dan tidak ada posting upah. Demo publik memverifikasi halaman absensi serta fokus tanggal. Basis OH, uji perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Keterbacaan penerimaan dan inspeksi tanpa meninggalkan draf

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 99167d51921c4dc5f5eb901af95d9339acb94aba menampilkan tanggal lokal, nomor PO dan jumlah baris pada penerimaan terkait. Penerimaan membuka tab baru sehingga isian sementara di nota tetap dapat diteruskan. Browser lokal sintetis memverifikasi fokus, data tetap dan batas akses Finance. Demo publik memverifikasi editor dan versi rilis. Ketentuan metode bayar, HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Keterbacaan rencana termin dan penelusuran invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b1a7d66fb26948b14b0fc22ec168159f986c6356 menyelaraskan nominal dan porsi rencana termin pada desktop serta menyediakan pintasan yang memfokuskan invoice terbit pertama dengan saldo terbuka. Chrome lokal dan demo publik memverifikasi fokus invoice. Sintetis MySQL memverifikasi nilai termin, alokasi dan saldo. Persetujuan milestone, tanggal dan penjadwalan ulang, uji perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Tanggal foto dan navigasi bukti laporan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 070b622a1482d4448f51a9f7b9c1dc7951438a50 membedakan area dan tanggal foto laporan. Pintasan muncul pada laporan yang mempunyai foto dan memulihkan fokus saat kembali. Fixture klien sintetis membuktikan JPEG asli, pembatasan arsip dan rekonsiliasi nilai terbit. Demo publik memverifikasi login dan batas akses PM. Basis nilai Finance, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Dasar sertifikat dan fokus kembali dari invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 68b87773493879425cbfaa1128abf4347e294895 menampilkan dasar dan tanggal pengajuan sertifikat. Tombol Susun invoice memuat sertifikat serta sisa lingkup dan menerima fokus saat dialog ditutup. Fixture disposable merekonsiliasi termin, tagihan dan saldo tanpa posting baru. Demo sintetis memverifikasi kartu dan izin baca PM. Milestone, penjadwalan ulang, uji HP fisik, staging privat, UAT operator dan PILOT_READY masih terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pemulihan unggahan lampiran nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ad514b238eff0a74f090c5cec319fee29a7cc794 menampilkan panel pemulihan saat unggahan lampiran nota terputus. Pilih ulang berkas mengosongkan dan memfokuskan pemilih, lalu simpan aktif setelah pilihan berhasil. Fixture disposable membuktikan dua lampiran asli, nilai draf dan posting tetap utuh. Demo sintetis memverifikasi panel Lampiran privat dan prasyarat simpan draf. Provider dan retensi OCR foto, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cut-off tahapan Workspace dan tautan Gantt

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 5de6bcebb8ff61c4bc0fe91c6bae0492f73b56dc memakai satu cut-off pada header dan tahapan Workspace, membuka Gantt yang sesuai bila baseline tersedia, lalu mengembalikan fokus ke tautan sumber. Fixture disposable merekonsiliasi Workspace, Gantt, Dashboard dan BUP. Demo sintetis memverifikasi alur dua arah di proyek yang ditugaskan. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status baseline dan fokus halaman proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 3d16dc3920a8870064f4e312abee1c826cec2e8c menonjolkan baseline yang belum tersedia pada cut-off terpilih. Pergantian halaman memindahkan fokus ke judul Progres & sumber proyek dan mempertahankan periode. Fixture disposable membuktikan 8 proyek terbagi 6 dan 2 tanpa mengubah total portofolio atau cakupan izin. Demo sintetis memverifikasi lencana dan tautan progres bertanggal. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Total tersimpan dan fokus riwayat draf nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 6bb36aa3feb189b420a73e25d4f9520a83fab088 membedakan total tersimpan pada riwayat nota dan nilai yang sedang diedit. Pintasan mengembalikan fokus ke aksi draf yang sama atau ke pencarian jika hasil menyembunyikan draf. Fixture disposable membuktikan nilai Rp26.000 tersimpan, nilai Rp27.200 sementara, dan stok serta Finance tetap konsisten. Demo sintetis memverifikasi riwayat nota dan pencarian. Metode bayar, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda dan fokus komponen HSD belum lengkap

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 30fb4c60a491f698b23b0dfabdd0b4e33204bb79 menandai alasan harga komponen AHSP belum lengkap. Pintasan mengarahkan fokus ke komponen pertama dan mempertahankan pencarian. Fixture disposable membuktikan kasus HSD kosong, unit berbeda, nilai lengkap dan isolasi tenant. Demo sintetis memverifikasi akses Katalog dan keadaan awal Master AHSP. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah filter dan pemulihan pencarian absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e7a375512cd1dafb8b114f56c5927bed17518974 menampilkan jumlah harian pada filter status absensi. Dari hasil kosong, Ubah kata kunci memfokuskan dan menyeleksi teks sementara tanggal dan status dipertahankan. Fixture disposable membuktikan pemulihan hasil, izin baca Finance dan kesetaraan data. Demo sintetis memverifikasi jumlah filter, status aktif dan fokus tanggal pada HP. Dasar OH serta kaitan upah, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Kejelasan dan validasi tanggal invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 833f98ad54529e283aacfabae921e064c9fe47ee menjelaskan hubungan tanggal invoice dan jatuh tempo pada formulir Finance. Browser memvalidasi batas tanggal dan memfokuskan jatuh tempo sambil menjaga input yang sudah diisi. Fixture disposable dan akun Finance sintetis membuktikan tidak ada pengiriman saat tanggal tidak valid. PM tetap dapat membaca daftar sesuai peran. Milestone dan persetujuan penjadwalan ulang, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Ringkasan pencocokan dan pemulihan satuan nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel d8337cf8c6f2a34a63339eaa8cc5980157695643 menampilkan kuantitas cocok pada judul rincian penerimaan nota. Pencocokan diperbarui saat keluar dari kolom satuan. Bila satuan tak sesuai, tautan mengembalikan fokus ke baris yang sama. Fixture lokal membuktikan pemulihan pilihan tanpa posting baru serta akses baca rekonsiliasi Finance. Demo sintetis memverifikasi editor dan target fokus pada dua lebar. Metode bayar dan dampak jurnal, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Validasi dan pintasan cut-off volume tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ed2300c4041bd24847acb9de33911e48fb19ea33 menempatkan pesan tanggal cut-off di bawah isian dan menyediakan Ubah cut-off volume dari rekap tim terisi maupun kosong. Fixture disposable membuktikan fokus, lokasi, proyek, neto BUP dan batas akses absensi untuk QS. Demo sintetis memverifikasi validasi, fokus, dan pemulihan tanggal. Dasar OH, upah, biaya, rework dan pembanding, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cut-off ringkasan dan pemulihan Kurva S kosong

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel a858360d706774b8c81fb78a609329c286ce81f8 menampilkan tanggal cut-off pada judul Ringkasan nilai proyek. Pada Kurva S kosong, tautan Cari laporan lain mengarahkan fokus ke judul pencarian dan menjaga filter serta laporan yang sedang dilihat. Fixture lokal membuktikan jalur ke Kurva S terbaru, snapshot, alokasi kas dan lingkup PDF. Demo membuktikan gerbang masuk, batas PM, dan template Portal cocok dengan kandidat. Finance dan PM masih perlu mengesahkan basis nilai, kas dan pembulatan. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status sumber PDF dan kembali ke lampiran gagal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 10e3ab9c78dc39cfeadbf7706877e19c7b9961b2 menandai PDF nota yang gagal dibaca dan menyediakan fokus balik ke tombol Baca PDF milik berkas yang sama. Uji fixture membuktikan penanda berpindah saat sumber diganti, unduhan mempertahankan berkas asli dan nomor nota tetap terisi. Demo memverifikasi mode manual dan akses lampiran privat. Provider OCR, retensi, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 27/36. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penugasan dan validasi koreksi absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel c9d996802c7887c98b8428f0f0bdcab8ae8b3729 menampilkan mandor dan divisi saat koreksi absensi dan meminta operator memilih status baru sebelum menyimpan alasan. Chrome dengan fixture disposable membuktikan validasi mencegah pengiriman saat status kosong, alasan tetap terisi, dan Finance dapat membaca absensi kedua divisi sesuai perannya. Demo publik memverifikasi akses halaman dan fokus ubah tanggal pada kondisi absensi kosong. Holsite 27/36. Uji HP fisik, keputusan pemakaian OH dan upah, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Label Aksi Cepat dan fokus

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e16330981b3771756ac7e0fbc472916dc4ccb9e5 menampilkan label Aksi pada tombol Aksi Cepat. Fokus di celah antara dua kendali bawah mempertahankan posisi halaman, dengan jarak untuk kontrol yang tertutup dock atau Aksi. Fixture disposable membuktikan akses QS dan konteks proyek Catat BUP. Demo publik memeriksa label dan pergeseran pada Chrome HP serta lanskap. Perangkat fisik masih menunggu QA. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Lingkup sertifikat dan invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel dbe618463c6297473c450d0451d184b9b7d46808 menampilkan sisa lingkup sertifikat setelah invoice terposting. Jika sisa nol, tindakan beralih ke sumber invoice dan permintaan lama tidak membuka formulir baru. Fixture disposable membuktikan sisa positif dan nol serta baca saja PM. Demo publik membuktikan jalur Tagihan pada proyek sintetis tanpa sertifikat. Milestone, jatuh tempo serta penjadwalan ulang tetap menunggu Finance dan PM. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pencarian riwayat Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel aa3f7b0a6ad56a533ffd126d0b0160a737c44ddf menampilkan jumlah hasil pencarian riwayat Portal dan pilihan Ubah kata kunci saat hasil nol. Uji klien disposable membuktikan fokus keyboard, kata kunci lama, laporan arsip dan filter tagihan. Login Portal dan batas peran PM diverifikasi di demo publik. Basis nilai pekerjaan dan cakupan kas masih menunggu Finance dan PM. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cut-off sumber BUP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel efa0ca7f3a534e543d8a6878c9eb5520fe4663d7 menunjukkan tanggal dan lokasi daftar sumber pada rekap tim. Tautan membawa cut-off yang sama ke BUP terverifikasi. Daftar dan rekap memakai tanggal laporan serta waktu verifikasi sampai akhir hari WIB. Rekonsiliasi sintetis dan navigasi demo publik lulus. Field dan Finance masih perlu menetapkan OH dan biaya, serta PM menetapkan rework dan pembanding. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Bukti nota manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel af1f17a31901e836ea3708b136c801fc6188f59e memberi lencana pada lampiran siap simpan dan tautan untuk kembali ke pemilih setelah validasi. Fixture disposable Chrome membuktikan fokus, nomor nota tetap terisi dan satu PDF asli setelah retry. Demo publik menguji jalur Simpan draf karena belum memiliki draf. Provider OCR foto/pindai dan retensi masih menunggu keputusan. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Label dock dan jarak fokus

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 886e15627570e352ee382f160d4102f7ab025d83 memperbesar label Menu, Utama, dan Proyek dari 11 ke 12 px. Kontrol konten yang mendapat fokus sekarang bergulir di atas dock bila tertutup. Chrome fixture lokal dan demo publik membuktikan gaya dan fokus. Pengujian safe area, rotasi dan pembaca layar pada perangkat fisik terbuka. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda koreksi dan tautan laporan BUP sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 1ac2a2bdbe9155d28afd7fba58692db1b0e5a22f menandai koreksi BUP dengan lencana. Bila sumber ada pada daftar, pintasan memfokuskan laporan asal. Saat sumber terfilter atau berada di halaman lain, nomor sumber tetap tersedia. Fixture lokal membuktikan rekap dan izin QS. Demo publik membuktikan versi, checksum template serta navigasi BUP tanpa contoh koreksi. Dasar OH, biaya dan pembanding tetap terbuka. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda kas dan akses semua tagihan sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 00fec13047ac272280fb40fd323425e7bd281f62 memperjelas penanda kas kini di Portal. Pintasan semua tagihan sumber menghapus filter dan pencarian tagihan serta mempertahankan laporan yang sedang dibaca. Fixture lokal membuktikan fokus, PDF dan batas akses. Demo publik membuktikan versi, checksum template dan batas login/role. Basis nilai pekerjaan, cakupan kas dan pembulatan menunggu keputusan. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Porsi termin dan fokus kontrak sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 651cc04be27eee53c4f10af9e4356c2d48ae5e96 memberi lencana persentase pada kartu termin Keuangan dan Portal. Tautan Keuangan memfokuskan kontrak sumber di proyek yang sama, termasuk keadaan tanpa kontrak. Fixture lokal memverifikasi porsi 30/50/20 dan izin PDF Portal. Demo publik membuktikan fokus pada keadaan tanpa kontrak. Pemicu milestone dan persetujuan reschedule masih menunggu keputusan. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status bukti dan pintasan lampiran nota manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 77c6e512bb8d0d81e9ff03cfbf42b127a25ce61d menampilkan jumlah bukti tersimpan dalam mode nota manual. Pintasan menuju bukti tersimpan, pemilih berkas atau Simpan draf sesuai keadaan, dengan isian tetap terjaga. Chrome fixture disposable dan demo publik memverifikasi alur. Penyedia OCR dan retensi masih menunggu keputusan. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda dan pintasan entri terbaru Change Log

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 6d5e397b0ad5e29390f719c6f30c399a9eecf46d memberi lencana Terbaru dan pintasan yang membuka riwayat serta memindahkan fokus ke entri. Uji Chrome pada fixture disposable memverifikasi riwayat. Demo publik membuktikan versi aktif dan pembatasan tab Owner bagi PM. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda koreksi dan perlindungan tanggal absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 912bd0a5a90d6f0d34fb8de914ede4ba91bfd9d0 memberi label pada baris yang sedang dikoreksi, menahan perubahan tanggal hingga koreksi selesai, dan mengembalikan fokus melalui Lanjutkan koreksi. Chrome pada fixture disposable membuktikan retensi alasan. Demo publik membuktikan navigasi tanggal dengan tanggal tanpa catatan dan kecocokan versi aktif. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda tutup drawer dan Aksi Cepat lanskap

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel bebe8f6221b95c73e54f2957b970118309ddf1e1 memperjelas tombol Tutup pada drawer dan membuat Tutup Aksi Cepat langsung dapat diketuk di lanskap pendek. Isi panel tetap bisa digulir dan fokus kembali ke pemicu. Bukti emulasi Chrome dan demo publik terverifikasi. Holsite 27/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status pencarian dan koreksi riwayat nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e6292834fae850e3cc5908a94e424812758bc988 menonjolkan hasil pencarian Draf nota dan memberi cara untuk menyeleksi kata kunci saat hasil kosong. QA lokal membuktikan koreksi, karakter khusus, pemulihan daftar dan unduhan PDF. PM sintetis memverifikasi hasil nol, fokus dan retensi input di demo publik. Holsite 27/36. Keputusan metode bayar, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Dasar saldo invoice dan pintasan pembayaran

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ef8637edde4862cd5d95dee0660c87230c509c88 memperjelas dasar sisa tagihan pada halaman Termin dan Invoice. Pintasan membuka Kas dan alokasi pembayaran pada proyek yang sama. Fixture mencocokkan rencana termin, saldo dan kas. PM sintetis memverifikasi penjelasan dan navigasi pada demo publik. Holsite 27/36. Milestone, tanggal dan persetujuan penjadwalan ulang, staging privat, UAT operator serta PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Panduan PDF manual dan pintasan tanggal nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 5a7d8bd30da1239e56f24f1878dad385e66d4885 membedakan penyimpanan bukti dari isian nota saat pembacaan PDF berteks belum tersedia. Pintasan memfokuskan Tanggal nota sambil menjaga isian. QA lokal membuktikan PDF pindai utuh dan batas akses unduhan. PM sintetis memverifikasi panduan dan fokus tanggal di demo publik. Holsite 27/36. Penyedia OCR foto, retensi, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status aktif dock dan navigasi panah drawer

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel a2e78c7c3e61c800a14987dc5f68d52a3f7877b1 membedakan halaman aktif dan tombol pembuka menu di dock HP. Panah atas dan bawah memindahkan fokus di dalam drawer, dan Escape mengembalikannya ke pemicu. QA lokal membuktikan pemulihan fokus saat pindah ukuran dan indikator Katalog. PM sintetis memverifikasi dock, panah dan retensi proyek pada demo publik. Holsite 27/36. Safe area perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah hasil dan kembali ke rekap absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 6b91077cfb062e5a6bec4f98f52dda5ce58544fd memperjelas jumlah hasil absensi dan menambah navigasi keyboard dari daftar ke rekap harian. Finance menguji pemulihan pencarian serta hak baca pada fixture, dan PM sintetis memverifikasi jumlah, fokus dan retensi tanggal pada demo publik. Hitungan dua hari dan sidik data sumber cocok. Holsite 27/36. Dasar OH dan kaitan upah UI-07.3, staging privat, UAT perangkat dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah lampiran dan kembali ke editor nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 893346aa63a4f3227033a72f4bcbec0ca0e1110c memperjelas kapasitas terpakai pada Lampiran privat dan menambahkan pintasan keyboard ke editor. Fixture membuktikan retensi masukan, pemulihan kegagalan unggah sementara, checksum PDF asli dan draf Rp180.000 tetap cocok. PM sintetis memverifikasi hitungan serta tautan pada demo publik. Holsite 27/36. Pilihan OCR foto, retensi, staging privat, UAT perangkat dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Hasil kosong dan koreksi pencarian Rekap AHSP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b5a241bf830ba4dba51b620bdb964599c18994b0 menandai hasil kosong Rekap AHSP dan menyediakan aksi untuk memfokuskan sekaligus menyeleksi istilah pencarian. QS menguji pemulihan menuju Master AHSP pada fixture. PM sintetis menguji batas filter dan fokus pada demo publik. Nilai lengkap Rp142.000/m³ dan HSD yang belum lengkap cocok pada fixture. Holsite 27/36. Staging privat, UAT perangkat dan PILOT_READY terbuka. Demo statis c6baa67a masih menunggu autentikasi Wrangler untuk koreksi label terpisah.

## 2026-11-17 - Arkarupa: Kolom aktual dan fokus rincian Kurva S

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel f53fd2e37e5a583134fed6b395daa194704d3cad membedakan kolom Aktual pada rincian Kurva S dan menyediakan tautan ke kontrol rincian. Browser klien pada fixture menguji fokus, penutupan tabel, pembatasan proyek dan PDF terbit. Template dan stylesheet demo publik cocok, dengan login dan batas akses diuji terpisah. Holsite 27/36. Dasar harga, kas dan pembulatan UI-05.1, staging privat, UAT dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Lokasi aktif dan pintasan filter volume tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 558a59a13034ebacb180dde954bfc9688e4ae2fb menandai lokasi yang diterapkan dan memberi pintasan menuju pemilih lokasi dari hasil rekap volume tim. Chrome membuktikan fokus dan retensi tanggal. PM sintetis memverifikasi alur demo publik. Volume Struktur 3 m² dan Finishing 6 m², sumber BUP dan absensi cocok sebelum dan sesudah. Holsite 27/36. Dasar OH, biaya, rework dan pembanding UI-07.4, staging privat, UAT dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Keadaan kosong invoice dan kembali ke termin

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b6a804136f968caba4069e742ab7f5599f51fabc menampilkan panel kosong daftar invoice dan aksi keyboard dalam panel menuju rencana termin proyek yang sama. Chrome memverifikasi kondisi kosong dan alur rincian invoice terisi. Fixture kontrak, sertifikat, alokasi, saldo dan kas cocok. Holsite 27/36. Pemicu milestone dan persetujuan reschedule UI-07.1, staging privat, UAT operator dan PILOT_READY masih terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Nilai draf dan akses total nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ea649390105c90cf829318d9001aa27063be86d0 menandai total nota sebagai nilai draf dan menyediakan pintasan keyboard ke ringkasan. Chrome pada fixture sintetis membuktikan retensi isian dan pemulihan diskon. Demo publik mengonfirmasi fokus pintasan. Nilai draf, metadata PDF, dan hitungan terkait stok, biaya, Finance dan kas tetap cocok. Holsite 27/36. Metode bayar dan dampak jurnal UI-06.1, staging privat, UAT operator dan PILOT_READY masih terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status OH dan pintasan filter absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 2fbc2a71d09a3c031d2eaec147ae88484cbc9f38 menandai bahwa orang-hari belum dihitung dan memberi pintasan fokus ke filter absensi aktif. Browser lokal memverifikasi tanggal, status, pencarian serta akses baca Finance. PM sintetis memverifikasi fokus dan status pada demo publik. Data absensi, biaya, Finance, kas dan laporan cocok sebelum dan sesudah. Holsite 27/36. Dasar OH dan kaitannya dengan upah UI-07.3, staging privat, UAT operator dan PILOT_READY masih terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan nilai laporan dan pintasan ringkasan Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 7d4ffdb2950f834db940bc9ff91ac4512f3bfa68 menandai nilai pekerjaan per cut-off dan memfokuskan ringkasan Portal dari laporan terbit. Fixture lokal membuktikan konteks laporan historis, filter tagihan, checksum PDF dan penolakan akses lintas proyek. Demo publik memverifikasi template, CSS dan batas akses. UI klien terautentikasi diuji lokal karena demo publik belum memiliki akun klien aktif. Holsite 27/36. Basis harga, kas dan pembulatan UI-05.1, staging privat, UAT operator serta PILOT_READY masih terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Sumber BUP terverifikasi dari rekap tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel e89910b3cd65547abbcfeda081a3eb407bb07456 menandai volume kumulatif dan membuka daftar BUP terverifikasi pada proyek yang sama. Browser lokal membuktikan konteks rekap asal dan akses baca QS. PM sintetis memverifikasi tautan dari kondisi kosong pada demo publik. Data BUP dan volume cocok sebelum dan sesudah. Holsite 27/36. Basis OH, biaya, rework dan pembanding UI-07.4 masih terbuka. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cakupan termin dan jadwal proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel c6d0ca3126b36174c3984e1bf839574159257135 memperjelas status rencana termin dan membuka Baseline & revisi dalam tab baru. Browser lokal menguji proyek dengan tiga termin dan proyek tanpa kontrak aktif. PM sintetis memverifikasi tautan pada demo publik. Finance memiliki akses baca jadwal. Rekonsiliasi data jadwal, kontrak, sertifikat, invoice, alokasi dan kas lulus. Holsite 27/36. UI-07.1 menunggu pemicu, tanggal dan persetujuan penjadwalan ulang. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Bukti PDF dan pintasan barang nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 3606a6820fe9a3d95a8f2044fcfd645afa8aac14 menandai Mode manual pada pemulihan PDF serta memberi pintasan keyboard ke nama barang pertama. Demo publik memverifikasi jalur manual dan pemulihan fokus pada dua lebar. Fixture lokal memverifikasi PDF pindai, checksum asli, draf dan jumlah baris penerimaan, biaya serta kas. Holsite 27/36. UI-06.4 menunggu penyedia OCR foto, izin sampel dan retensi. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Kartu dan tautan per entri Change Log

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 6b29d8f6c416a68ab125fbab0fa46ede34cb0fd4 menampilkan panel Sebelum dan Sesudah serta tautan per entri Change Log. Tampilan Owner lulus pada kandidat lokal. Template, aset dan batas akses tamu serta PM terverifikasi di demo publik. Dua entri dibaca balik di kedua Change Log, termasuk pemicu tertunda 16 November pukul 00.27 WIB. Holsite 27/36. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Pilihan berbagi dan tinjau judul Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel dfb0c34a75f37e5e46685a00215c339a15cb6b96 memisahkan opsi berbagi tagihan dan termin pada Workspace dan menambahkan pintasan peninjauan judul. Demo publik memverifikasi pengisian tanpa publikasi. Fixture lokal memverifikasi integritas laporan, alokasi dan hak Finance. Holsite 27/36. UI-05.1 menunggu pengesahan basis nilai pekerjaan, kas dan pembulatan. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Hari rekap dan pintasan hasil absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 8bdc219e2794f6b315b92d05d53a4589a91764d8 menambahkan nama hari pada rekap absensi dan menautkan rekap langsung ke hasil. Demo publik memverifikasi tanggal serta filter yang bertahan. Fixture lokal memverifikasi pemulihan hasil Finance dan sumber dua tanggal. Holsite 27/36. UI-07.3 menunggu konversi OH dan keterkaitannya dengan upah. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Jumlah dan pintasan hasil volume tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel bb72d9f3d306740a840227c4ae413ebfa591ca34 menonjolkan jumlah baris volume dan menautkan filter langsung ke hasil. Demo publik memverifikasi kondisi nol. Fixture lokal memverifikasi volume, validasi cut-off dan batas akses. Holsite 27/36. UI-07.4 menunggu definisi OH, biaya, dan aturan pembanding. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Dasar nilai termin dan pintasan kontrak sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 2d69937065dc6dfd31a67684f96c4e600426f074 menonjolkan dasar nilai atau status rencana termin dan membuka sumber kontrak di tab baru. Demo publik memverifikasi navigasi. Fixture lokal memverifikasi pembagian 30/50/20, saldo dan batas akses. Holsite 27/36. UI-07.1 menunggu pemicu milestone serta persetujuan penjadwalan ulang. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Kapasitas dan pintasan lampiran nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 675b6a405edbf90fc864488a5991cca56c04cd88 menjelaskan batas lampiran nota serta menunjukkan sisa atau kondisi penuh pada draf tersimpan. Pintasan memfokuskan pemilih atau daftar tersimpan. Demo publik memverifikasi draf baru. Fixture lokal memverifikasi kapasitas dan unduhan. Holsite 27/36. UI-06.3 menunggu provider OCR foto dan retensi. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Skala arus kas dan pemulihan periode kosong

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 3c17249da315d2ced9bef3fb418a9ee35c9dc0da menampilkan skala Harian atau Bulanan pada grafik kas Dashboard Utama. Dari periode kosong, pintasan memfokuskan tanggal awal dan menjaga periode serta proyek. Demo publik dan fixture lokal memverifikasi alur. Holsite 27/36. UI-06.1 menunggu metode bayar dan aturan pembukuan. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Prioritas checklist penutupan Workspace

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 66304809cd16080c26e647d404e2dea556d05e70 menonjolkan jumlah pemeriksaan penutupan yang perlu ditinjau. Pintasan memfokuskan pemeriksaan pertama dan menjaga rentang laporan Workspace. Demo publik dan fixture lokal memverifikasi alur. Holsite 27/36. UI-06.1 menunggu metode bayar dan aturan pembukuan. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Status lampiran dan fokus simpan draf

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b78cdb113e4af200b93941a44831eff7b1b1bd75 menonjolkan prasyarat simpan sebelum unggah lampiran. Pintasan memfokuskan tombol simpan dan mempertahankan isian sementara. Demo publik dan fixture lokal memverifikasi alur. Holsite 27/36. UI-06.1 menunggu metode bayar dan aturan pembukuan. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Penanda arsip dan tautan Kurva S terbaru

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel da9e2728f262480333cb1634a3b82d8c628d2d42 menonjolkan status arsip dan menautkan Kurva S terbaru saat data arsip kosong. Fixture memverifikasi navigasi, filter tagihan, PDF, dan izin klien. Demo publik memverifikasi jalur login dan pembatasan akses. Holsite 27/36. UI-05.1 menunggu pengesahan basis nilai pekerjaan dan kas. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-17 - Arkarupa: Cut-off dan pemulihan lokasi volume

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 0cfbacacbfb7561413bfe3ff4365f01596511f05 menonjolkan tanggal cut-off dan memfokuskan pemilih lokasi dari hasil kosong. Fixture lokal memverifikasi pemulihan volume dan izin QS. Demo publik memverifikasi label dan fokus pemilih. Holsite 27/36. UI-07.4 menunggu basis OH, biaya, rework dan pembanding. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Tanggal pencatatan dan buka form absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel ef8d822f10cfe8e5cf24bc3fe2cf16553f1af347 menonjolkan tanggal pencatatan dan memfokuskan kode pekerja dari hasil kosong. Fixture lokal memverifikasi izin Finance dan rekonsiliasi dua divisi. Demo publik memverifikasi pemulihan tanggal. Holsite 27/36. UI-07.3 menunggu konversi OH dan kaitannya dengan upah. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Identitas PDF dan fokus lampiran sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 59bd378710cdedc1a089b170ff5aac335419609c menandai PDF nota aktif dan mengembalikan fokus ke lampiran sumber. Fixture lokal memverifikasi dua PDF dan checksum. Demo publik memverifikasi jalur isi manual. Holsite 27/36. UI-06.4 menunggu keputusan OCR foto dan retensi. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Jenis invoice dan tutup rincian sumber

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 79d6874f31ba981734c415af88610d8ea1e2915f menampilkan jenis invoice dan menutup rincian sumber saat kembali ke dokumen. Fixture lokal memverifikasi PDF, pemisahan dua panel dan pencatatan kas. Demo publik memverifikasi Termin dan fokus invoice asal. Holsite 27/36. UI-07.1 menunggu keputusan milestone, tanggal dan persetujuan penjadwalan ulang. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Hitungan status dan fokus pencarian upah

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel b279697594914a808561ec360ced3ce9fc45454f menampilkan jumlah per status untuk kata kunci upah aktif. Enter memfokuskan hasil yang telah diperbarui. Fixture lokal memverifikasi tampilan dan saldo dua divisi. Demo publik memverifikasi kondisi daftar kosong dan fokus. Holsite 27/36. UI-07.3 menunggu keputusan hubungan OH dengan upah. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Status total dan fokus isian nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel cbc55949c96f0da5df5ed1b88beda6b7b28d38d6 menampilkan status total nota dan menautkan kolom penyebab hitungan terhenti. Fixture lokal memverifikasi harga, diskon, jumlah, dan draf tetap. Demo publik memverifikasi fokus harga kosong pada draf baru. Holsite 27/36. UI-06.1 menunggu keputusan metode pembayaran. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Bedakan subtotal dan baris PDF manual

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 6ed834fb7e3d2f9775b4cc87e070a59be8277a0d memisahkan selisih subtotal dari baris isi manual. Barang yang terbaca tetap tampil ketika PDF hanya perlu input manual. Fixture lokal memverifikasi filter, input sementara dan checksum asli. Demo publik memverifikasi jalur manual. Holsite 27/36. UI-06.3 menunggu penyedia OCR foto/pindai dan retensi. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Drawer lanskap dan gulir latar

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel f30bcf04172c3dbb6d329a3ce9352f8ff3e27bb5 memakai satu area gulir pada drawer lanskap pendek dan menahan gulir halaman di belakangnya. Chrome dengan safe area simulasi memverifikasi tombol Tutup, Escape dan perpindahan breakpoint. Holsite 27/36. UI-02.2 dan UI-09.4 menunggu HP fisik. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Arah koreksi dan fokus cut-off volume

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 11f4c29e8d0a6f1b3f534d9dfbb72e445f029e95 memberi label pengurangan pada koreksi volume tim dan memulihkan fokus cut-off dengan lokasi tetap. Fixture lokal membuktikan volume dan akses QS. Demo publik memverifikasi keyboard setelah reset tanggal. Holsite 27/36. UI-07.4 menunggu keputusan OH, biaya, rework dan pembanding. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Identitas koreksi dan pulih dari tanggal kosong

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 40786eed8eced333326cee0c20f182d61d168af0 menampilkan kode pekerja, status dan tanggal saat membuka koreksi absensi. Pengguna dapat kembali ke hari ini dari tanggal historis kosong. Fixture lokal membuktikan rekap dan akses baca Finance. Demo publik memverifikasi fokus dan tanggal rekap. Holsite 27/36. UI-07.3 menunggu keputusan OH dan kaitan upah. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Aksi lampiran dan unduh PDF saat gagal baca

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel de85c9b2e10fec8fb7618daf35e3dd1c1d82a96e merapikan aksi lampiran nota dan menautkan PDF asli langsung dari panel gagal baca. Fixture lokal memverifikasi checksum unduhan, draf tetap, dan izin. Demo publik memverifikasi jalur manual karena pembaca PDF berteks belum diaktifkan. Holsite 27/36. UI-06.4 menunggu keputusan OCR foto/pindai dan retensi. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Laporan aktif dan pulih dari halaman kosong

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 73c1f18cce2b86fb0b5f4b0ad50aaa73b690a68d menandai laporan yang sedang dibuka dan memulihkan halaman riwayat di luar jangkauan dengan filter tetap. Alur klien lulus pada fixture lokal. Demo publik memverifikasi login Portal, pembatasan akses PM dan versi aset. Holsite 27/36. UI-05.1 menunggu persetujuan basis realisasi dan kas. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Porsi termin dan navigasi daftar invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 4c1d9cb933ed11b14cbd97e8564d8dc3fbdab727 memperlihatkan porsi masing-masing termin Finance dan memberi jalur keyboard dari panel tanpa kontrak ke daftar invoice. Fixture sintetis dan Chrome demo lulus. Holsite 27/36. UI-07.1 menunggu keputusan Finance dan PM tentang pemicu milestone, tanggal dan persetujuan perubahan jadwal. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Safe area dan gulir Aksi cepat

CONFIRMED / DEMO_PUBLIC_VERIFIED. Laravel 7523e10afc9fe5bb68aca85fe2e73d29f2161c05 menahan Aksi cepat Workspace di safe area dan mengunci gulir halaman saat dialog terbuka. Gulir isi dialog pada lanskap pendek dan pemulihan fokus lulus di Chrome dengan fixture sintetis. Demo Workspace memverifikasi perubahan. Holsite 27/36. UI-02.2 dan UI-09.4 menunggu perangkat fisik. Staging privat, UAT operator dan PILOT_READY terbuka. Demo statis c6baa67a.

## 2026-11-16 - Arkarupa: Kontras pilihan dan fokus pemilih keyboard

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel f2c703dbd5908560535d41f5eba3f031278ced5d menonjolkan pilihan aktif dengan kontras monokrom. Enter dan Spasi membawa fokus ke pencarian pemilih. Escape atau pemilihan mengembalikan fokus. Fixture sintetis dan demo Barang Datang lulus. Holsite 27/36 berdasarkan matriks penerimaan. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Selisih jual dan akses dampak VO internal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-003, UI-05.2 dan UI-09.2, Laravel 16bb6479a19a80dc79521b1fae43c03542a77f3d menonjolkan selisih jual dalam kartu dampak VO internal. Ke dampak VO memfokuskan revisi yang dipilih sambil mempertahankan proyek. Fixture lokal membuktikan kartu, fokus, batas izin, dan perbandingan serta PDF pada Portal Klien. Demo publik memverifikasi halaman Komersial kosong dan aset CSS yang cocok. Regresi MySQL dan restore disposable lulus. Holsite 26/36. HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Penanda Proyek dan fokus menu sentuh

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-02.2 dan UI-09.2, Laravel 83ddf41b089c2f3afe12f1f6cdda7692802c27fe menandai Proyek pada rail, drawer dan dock ketika Workspace terbuka. Fokus masuk ke Proyek meski aktivasi Menu tidak memfokuskan tombol terlebih dahulu. Chrome lokal dan demo publik membuktikan penanda, fokus dan konteks Workspace. Regresi MySQL dan restore disposable lulus. Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Upah dibayar sebagian dan fokus hasil filter

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-008, UI-07.2 dan UI-09.2, Laravel a590f637d9031f75eccb5c21618f81b27f42ed03 menandai upah dibayar sebagian jika alokasi positif dan saldo tersisa. Filter status memfokuskan hasil sesudah diperbarui sambil mempertahankan pencarian dan urutan. Fixture lokal membuktikan dua divisi, pemulihan filter dan batas peran PM. Demo publik membuktikan halaman upah kosong dan bingkai fokus setelah login. Regresi MySQL dan restore disposable lulus. Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Draf aktif dan fokus hasil riwayat nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-005, UI-06.1 dan UI-09.2, Laravel ebcf70027ed4bc0aa9ebc3cc8cb47fd1feb68d6c menandai draf yang sedang dibuka. Cari memindahkan fokus ke jumlah hasil atau pesan kosong dan mempertahankan isian editor. Pengujian kartu draf berlangsung pada fixture lokal. Demo publik membuktikan alur pencarian kosong dan pemulihan fokus. Regresi MySQL dan restore disposable lulus. Metode bayar, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Holsite 26/36. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Status stok historis dan koreksi pencarian

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-005, UI-06.2 dan UI-09.2, Laravel 4f7a9cc38fa566e85b85ecf37a75153085f38e2f menandai saldo historis pada tanggal lampau. Saat kata kunci tidak menemukan material, Ubah pencarian menyeleksi input dan mempertahankan tanggal dan tujuan penerimaan. Chrome lokal dan demo publik, rekonsiliasi stok, regresi MySQL dan restore disposable lulus. Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Kembali dari absensi ke rekap tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-009, UI-07.3 dan UI-09.2, Laravel dcb6d8f66312da5bf99abbb746c5ed8e736df5b4 menampilkan konteks rekap volume saat membuka Absensi dan memulihkan proyek, cut-off, lokasi serta fokus saat kembali sesuai izin. Verifikasi publik, uji peran sintetis, regresi dan restore disposable lulus. Definisi OH dan relasi ke upah masih terbuka. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Paginasi AHSP dan fokus hasil

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-08.1 dan UI-09.2, Laravel d9fe1600b51b1932853ee1812ccd1717a94a89c0 menandai halaman AHSP aktif dan memfokuskan pekerjaan pertama ketika pengguna berpindah halaman. Uji dua halaman lulus pada fixture lokal. Demo satu halaman memverifikasi kedua kontrol nonaktif. Regresi dan restore disposable lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Cut-off dan navigasi daftar proyek

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel bc072290700ea4a37696612a91deedadbe0b6a87 menampilkan cut-off progres di daftar proyek. Ke hasil proyek memfokuskan jumlah hasil dengan kata kunci tetap terisi. Verifikasi browser, pencarian kosong sesuai izin, rekonsiliasi progres sintetis, regresi dan restore disposable lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Periode dan fokus Ringkasan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel e25aec102b4895882e62b9da648ff06fec6ec337 menampilkan periode hasil dan sumber saldo kumulatif dalam satu panel dengan label terpisah. Filter yang berhasil memfokuskan Posisi proyek. Verifikasi browser, pemulihan rentang terbalik, rekonsiliasi kas sintetis, regresi dan restore disposable lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan dan navigasi penutupan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel 5a956253a9e69d342c4a420aa7f8c99411aa4d38 menampilkan ringkasan status penutupan berdasarkan checklist yang terlihat untuk peran aktif. Tautan kembali memfokuskan tahap Penutupan dan menjaga konteks proyek. Verifikasi browser, pembatasan peran, rekonsiliasi sintetis, regresi dan restore disposable lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Navigasi pada dialog formulir

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-02.2 dan UI-09.2, Laravel 9ad9f846d690edf69910b820f4dc3107fd9cc6d7 menata tiga tombol footer dalam satu baris pada HP, menyembunyikan navigasi bawah saat dialog modal aktif dan memfokuskan pengantar saat formulir dibuka. Verifikasi dialog BUP, keyboard survei, rekonsiliasi sintetis, regresi dan restore disposable lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan dan navigasi survei

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel 1abddc12e8484e2ee2a807479d4d1ee4bc5d4506 menampilkan ringkasan identitas calon proyek. Enter pada daftar memfokuskan ringkasan, lalu editor dibuka dari Ubah survei. Uji ruang lingkup PM, data survei sintetis, regresi, restore disposable dan uji demo lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Hierarki dan fokus hasil kalkulator

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel 48396cb5486f57c2c367ea7c2efd3480ab8a8253 menggabungkan angka dan label kemasan di Kalkulator Satuan. Hitung yang berhasil memfokuskan hasil. Uji satuan tidak kompatibel, perhitungan fixture, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Pesan kosong dan pemulihan pemilih

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-09.2, Laravel 9ca375ab7b10d81ed081e8215782b09d69472fd6 menampilkan status ketika pencarian pemilih kosong. Hapus pencarian pilihan memulihkan daftar dan fokus dengan pilihan tetap. Bukti Barang datang dan Dashboard, rekonsiliasi stok, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Rentang dan fokus skala Gantt

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-012, UI-04.3 dan UI-09.2, Laravel 429eaf889b2bf6cca9e3ad3c557e727f5acdc4af menampilkan rentang rencana di Gantt dan pintasan ke skala aktif. Tombol panah mengganti skala sambil menjaga proyek, cut-off dan filter. Baseline, BUP, CSV Progres, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan saldo dan fokus cut-off stok

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-005, UI-06.2 dan UI-09.2, Laravel 1b070313fbc8961bb5a82db6124c742a6e1370da membedakan saldo semua lokasi dari filter tujuan riwayat penerimaan. Ubah cut-off stok mengembalikan fokus tanpa menghapus kata kunci atau tujuan. Peralihan tanggal dari hasil kosong, rekonsiliasi stok, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Jumlah dan fokus hasil AHSP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-08.1 dan UI-09.2, Laravel 2ad161b018320bfad0a2462f219f5c307f5804cd menampilkan rentang dan total pencarian Rekap AHSP. Pintasan menuju judul hasil pertama pada halaman aktif. Fixture membuktikan halaman kedua, HSD aktif dan HSD belum lengkap. Regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Pemulihan tanggal absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-009, UI-07.3 dan UI-09.2, Laravel a6665398bc06b36dbec527a1f606179383b086fa menampilkan panel untuk tanggal absensi di luar batas. Gunakan tanggal hari ini memulihkan rekap dan fokus, serta menjaga proyek dan filter. Bukti Finance historis, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Dasar OH dan hubungan ke upah, uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan dan navigasi Pustaka PDF

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-007, UI-08.3 dan UI-09.2, Laravel b02327c795597b3c3574055d9d25d74b965f60b1 menampilkan jumlah PDF terbit pada kategori yang memiliki dokumen. Kembali ke kategori mengembalikan fokus dan menjaga proyek. Fixture membuktikan PDF invoice yang sama dan izin Purchasing. Regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Navigasi dialog formulir

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-001 dan UI-09.2, Laravel 094a893e2d111e9f669cda15261393bc0eb71b55 menampilkan petunjuk draf secara terpisah di footer. Ke awal formulir menempatkan fokus pada pengantar dan Tab meneruskan ke isian. Catatan draf tetap terisi. Uji dialog baca-saja, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu rilis koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan validasi dan fokus formulir

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-001 dan UI-09.2, kandidat Laravel 6a7d9037f610b3a4a08675f426b74c03676b9c1c menampilkan jumlah isian bermasalah pada ringkasan. Enter memfokuskan isian pertama dan mempertahankan catatan di draf BUP. Uji tanggal Dashboard, regresi, restore disposable dan uji PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Kontras dan pesan pemilih bersama

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-001, REV-005 dan UI-09.2, kandidat Laravel b29e8e7cae7106bc290fefb0da52fcede3ac106f menampilkan label pilihan, penanda invalid dan keterangan yang dibaca kontrol keyboard. Pesan item BUP memakai bahasa Indonesia. Fixture memastikan volume resmi dan jumlah catatan tetap serta memeriksa pemilih stok dan Dashboard. Regresi, restore disposable dan smoke PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Jumlah hasil dan pemulihan pencarian pekerjaan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada UI-01.2, UI-03.2 dan UI-09.2, kandidat Laravel d5a1a50f387437984c4e4c56819e3e3cc04cbf4a membedakan hasil dan total tindak lanjut pada Dashboard Utama dan Workspace. Aksi pada hasil kosong mengembalikan fokus ke pencarian dengan proyek dan periode tetap. Fixture mengonfirmasi daftar sumber yang sama dan alur Pelaksana ke laporan harian sesuai izin. Regresi, restore disposable dan smoke PM sintetis lulus. Matriks Holsite 26/36. Uji HP fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan alokasi dan pemulihan pihak pembayaran

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-007, UI-07.1 dan UI-09.2, kandidat Laravel dd630a1b7476d1cee380aef24512cbe614bb82fe menampilkan pihak dan jumlah dokumen terbuka pada panel alokasi. Dari hasil kosong, Finance dapat mengembalikan fokus ke pemilih sambil mempertahankan nominal dan referensi. Fixture merekonsiliasi saldo Rp31 juta dan jumlah transaksi tetap. Regresi, restore disposable dan smoke Finance sintetis lulus. Matriks Holsite 26/36. PM dan Finance masih menetapkan milestone, tanggal dan persetujuan penjadwalan ulang. Staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas nota dan koreksi tanggal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-005, UI-06.1 dan UI-09.2, kandidat Laravel 6f73baf6f05f150b019004fdeb0fbca131ed91fd mengelompokkan identitas nota dan menghubungkan pesan supplier dan tanggal berbahasa Indonesia ke kolom terkait. Pengguna dapat memperbaiki tanggal dengan nomor nota tetap terisi. Fixture mengonfirmasi hash draf, metadata lampiran dan catatan transaksi tetap. Regresi, restore disposable dan smoke PM sintetis lulus. Matriks Holsite 26/36. Procurement dan Finance masih menetapkan metode bayar. Staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan publikasi dan pemulihan cut-off Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-002, UI-05.1 dan UI-09.2, kandidat Laravel 2f8cb313476a9c347ce4ab81b227b9350eebed2a memberi kelompok bernama untuk opsi tagihan dan termin di Workspace. Dari daftar foto kosong, operator dapat memfokuskan cut-off dan mempertahankan judul serta pilihan. Fixture merekonsiliasi nilai snapshot, pembayaran teralokasi, saldo tagihan terbit dan batas akses PDF. Regresi, restore disposable dan pemeriksaan PM sintetis pada demo lulus. Matriks Holsite 26/36. Finance dan PM masih mengesahkan basis realisasi serta kas. Staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Hasil filter dan pemulihan Gantt

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-012, UI-04.3 dan UI-09.2, kandidat Laravel 94e211f4893027e30b53df816ad4e1d679211134 membedakan jumlah hasil dan peringatan Gantt. Aksi pada keadaan kosong memulihkan fokus tabel serta mempertahankan proyek, cut-off, dan skala. Fixture dua cut-off, izin ekspor, kecocokan CSV, regresi MySQL dan restore disposable lulus. PM sintetis memeriksa filter dan fokus pada demo. Matriks Holsite 26/36. Pengujian perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. PM dan reviewer masih menetapkan kalender, proyeksi, dan format bulanan. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan dan akses riwayat BUP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Pada REV-001, UI-04.4 dan UI-09.2, kandidat Laravel 12c39d32a665182f1535721c62331dec8adff018 menampilkan asal volume langsung, hasil ukuran atau koreksi bertaut pada kartu BUP. Pintasan keyboard memfokuskan daftar dengan proyek dan filter tetap. Fixture progres merekonsiliasi 9 m² terverifikasi. Draf ukuran 3 m² dan 2 m² menunggu verifikasi dikecualikan. Regresi MySQL 117 tes, restore disposable, serta smoke demo PM sintetis lulus. Matriks Holsite 26/36. Uji perangkat fisik, staging privat, UAT operator dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan saldo upah dan akses daftar kewajiban

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 9b4e4e5f755fe0f214675cd72b877abeef78c55d pada REV-008, UI-07.2 dan UI-09.2 membedakan saldo upah proyek dari hasil filter. Pintasan memfokuskan status daftar dengan proyek dan filter tetap. Fixture dua divisi merekonsiliasi saldo Rp50.000 dan hasil Lunas Rp0. Uji PM memeriksa pesan kosong pada pohon aksesibilitas. Smoke publik membuktikan cakupan dan fokus saat daftar kosong pada dua viewport. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Field dan Finance masih perlu mengesahkan hubungan OH, absensi dan upah pada UI-07.3. QA melanjutkan uji perangkat fisik. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas penerimaan dan fokus tujuan barang

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel ed64ade980ac80ae331cbe7be3c842f6b37fc0ac pada REV-005, UI-06.2 dan UI-09.2 memisahkan tanggal, PO, nomor penerimaan dan tujuan pada kartu riwayat. Ubah tujuan penerimaan memfokuskan pemilih dari daftar terisi maupun kosong dengan proyek, cut-off dan pencarian material tetap. Fixture H11 merekonsiliasi 2, 0 dan 2 m³ serta izin Pengadaan. Smoke publik membuktikan identitas penerimaan tetap dan navigasi keyboard pada dua viewport. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Procurement dan Finance masih perlu mengesahkan metode bayar nota. QA melanjutkan uji perangkat fisik. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Ringkasan invoice dan akses daftar saldo

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 130f58bcb63fd6aa57b47be32dbad8ce5e8f38ea pada REV-007, UI-07.1 dan UI-09.2 memisahkan gross pekerjaan, DP diterima, saldo DP dan retensi pada ringkasan invoice. Pintasan keyboard dua arah mempertahankan proyek dan tab. Fixture Rp100 juta merekonsiliasi rencana termin, invoice dan saldo, PDF, serta snapshot laporan. Smoke publik memeriksa nominal yang sama sebelum dan sesudah serta fokus dua arah. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. PM dan Finance masih perlu mengesahkan pemicu milestone, tanggal dan persetujuan penjadwalan ulang. QA melanjutkan uji perangkat fisik. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Tanggal absensi dan kembali ke volume tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 7c999444cb516e85f800168e066f60050ca09a56 pada REV-010, UI-07.4 dan UI-09.2 menampilkan tanggal absensi harian dan status OH belum dihitung di rekap tim. Kembali ke hasil volume memfokuskan daftar dengan proyek, cut-off dan lokasi yang sama. Fixture sintetis merekonsiliasi neto 9 m² dan absensi dua tim serta memeriksa izin QS yang terpisah. Smoke publik memeriksa tanggal dan pintasan pada ringkasan absensi kosong. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Field dan Finance masih perlu mengesahkan OH, biaya dan hubungan upah. PM masih perlu menetapkan dasar rework dan kecukupan pembanding. QA melanjutkan uji perangkat fisik. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Sumber PDF nota dan kembali ke lampiran

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 38517170b29ce1ae33d936366a786db88de56db3 pada REV-006, UI-06.4 dan UI-09.2 memberi nama dan unduhan PDF sumber pada hasil baca nota. Ke lampiran privat memfokuskan judul lampiran sambil menjaga isian. Fixture sintetis merekonsiliasi draf Rp180.000 dan dua checksum berkas serta menguji gagal baca PDF tanpa teks, retry dan akses QS. Smoke publik memeriksa pintasan dan fokus Supplier pada jalur manual. Pembaca PDF berteks baru diuji secara lokal. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. QA dan Release Lead menyiapkan staging pembaca PDF. Procurement dan Product menetapkan OCR foto dan retensi. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Konteks filter dan pemulihan pencarian absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel d46e014c99749889fe68e64d0791c06544425769 pada REV-009, UI-07.3 dan UI-09.2 menampilkan status serta kata kunci aktif pada hasil absensi. Dari hasil kosong, Hapus pencarian memfokuskan kolom pencarian sambil menjaga tanggal dan status. Rekonsiliasi tiga catatan pada dua hari dan dua divisi lulus pada fixture. Pelaksana bisa memulihkan filter sesuai akses baca dan pencatatan. Smoke publik memeriksa label status serta fokus tanggal pada rekap kosong. Pemulihan hasil pencarian dengan data dibuktikan di fixture lokal. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Field dan Finance masih perlu mengesahkan konversi OH serta hubungan absensi ke upah. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Lokasi pekerjaan dan pemulihan cut-off rekap tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel bf418ccaf3d2ebe2e58adbe9eeb0a8b3a7b61751 pada REV-011, UI-04.2 dan UI-09.2 memisahkan label lokasi dari pekerjaan dan memfokuskan tanggal dari rekap tim kosong dengan lokasi tetap dipilih. Fixture dua tim membuktikan koreksi tetap pada lokasi sumber, volume neto yang sama dan hak baca QS terpisah dari absensi. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Field dan Finance masih perlu mengesahkan konversi OH serta hubungan absensi ke upah. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Penanda saldo nol dan pemulihan tujuan penerimaan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel f0bf5d4923d71c428354b063289fb63e68fded7a pada REV-005, UI-06.2 dan UI-09.2 menandai saldo nol pada cut-off serta memulihkan riwayat dari tujuan kosong dengan fokus yang jelas. Fixture membuktikan keadaan sebelum penerimaan, saldo nol dan saldo setelah pembalikan. Pencarian stok dan cut-off tetap saat tujuan dikosongkan. Catatan penerimaan, stok, biaya, utang dan kas konsisten. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Procurement dan Finance masih perlu mengesahkan metode bayar nota. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Jatuh tempo lewat dan tautan balik ke sertifikat

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 295f371acb360d77c84eb91540fcd8d7de7957ec pada REV-007, UI-07.1 dan UI-09.2 menandai invoice bersaldo yang lewat tanggal WIB dan menautkan invoice terbit ke sertifikat sumber. Fixture membuktikan pemisahan jatuh tempo hari ini, tautan dua arah, checksum PDF Finance dan PM, dan ledger piutang yang sama. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. PM dan Finance masih perlu mengesahkan milestone, tanggal dan persetujuan reschedule. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Rentang CSV dan kembali ke periode terbaru

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 4591df0eb75ddd614bf89a892e583c5428a5a7dc pada REV-012, UI-04.3 dan UI-09.2 memperlihatkan rentang tanggal ekspor periode serta pintasan ke periode terbaru tanpa kehilangan skala, cut-off atau fokus. CSV sebelum dan sesudah identik pada dua rentang fixture. Pelaksana dapat menggunakan riwayat dengan izin ekspor tetap terbatas. Regresi MySQL 117 tes, rehearsal restore dan smoke panel serta CSV PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. PM dan reviewer masih perlu mengesahkan kalender kerja, proyeksi keterlambatan dan laporan bulanan. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Penekanan progres aktual dan kembali ke Workspace

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 09286544ce30f53298791e44ebfb56461324d12e pada UI-03.2, UI-03.3 dan UI-09.2 menonjolkan aktual terverifikasi dan membawa pengguna kembali dari Lapangan ke Workspace dengan proyek, awal periode, cut-off dan fokus. Fixture membuktikan perbandingan dengan sumber, keadaan sebelum baseline dan pemisahan konteks setelah ganti proyek. Regresi MySQL 117 tes, rehearsal restore dan smoke demo PM sintetis lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Uji perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan antrean dan tujuan review Harian

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel f45d189210b6288d505b8b3b2082994928e2d5f3 pada UI-01.3 dan UI-09.2 menampilkan cakupan Perlu perhatian. Antrean Harian dibagi per proyek dan tautan menuju daftar laporan Menunggu dengan fokus pada judul tujuan. Fixture membuktikan jumlah tiap proyek, cakupan Owner dan PM, akses Purchasing serta volume resmi tim tetap. Regresi MySQL 117 tes, rehearsal restore dan smoke login demo publik lulus. Holsite 26/36. Staging privat, UAT operator dan PILOT_READY terbuka. Uji pembaca layar pada perangkat fisik berikutnya. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status rekonsiliasi dan tautan penerimaan nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 6976d79a65d99bf9cab7b354b97a22d152ef954f pada REV-005, UI-06.1, UI-06.2 dan UI-09.2 menandai keadaan tanpa nota terpilih dan membuka sumber penerimaan di tab baru dengan konteks review tetap. Fixture dua nota membuktikan pencocokan PO dan penerimaan, selisih, akses baca PM, serta nol tagihan dan pembayaran baru. Uji terfokus browser dan data MySQL, pengulangan regresi 117 tes, restore disposable serta smoke publik pada panel kosong dan halaman penerimaan lulus. Holsite 26/36. Procurement dan Finance masih mengesahkan metode bayar dan aturan posting. Staging privat, UAT perangkat dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan rekap dan pintasan tanggal absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel fe8b57a6d44a833839cd0a44b5ef46a6de027e4c pada REV-009, UI-07.3 dan UI-09.2 memperjelas bahwa rekap absensi mencakup semua catatan pada tanggal terpilih. Tautan dari hasil memfokuskan tanggal dengan status dan pencarian tetap. Fixture merekonsiliasi empat status pada dua divisi, koreksi hanya pada tanggal sumber serta nol posting baru. Regresi MySQL 117 tes, restore disposable, serta smoke publik 390/1440 lulus. Holsite 26/36. Field dan Finance masih mengesahkan konversi OH dan kaitan upah. Staging privat, UAT perangkat dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status sertifikat dan tautan invoice terbit

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 3fc565ff1bdfb22d5fd8df891ef325cc50d5fd1d pada REV-007, UI-07.1 dan UI-09.2 memisahkan status serta nominal sertifikat progres dan menautkan invoice terbit yang terkait. Fixture dua invoice membuktikan alokasi kas hanya mengurangi saldo target dan kedua tautan memfokuskan invoice yang benar. Regresi MySQL 117 tes, restore disposable, serta smoke publik 390/1440 lulus. Holsite 26/36. PM dan Finance masih mengesahkan milestone, tanggal dan reschedule. Staging privat, UAT serta PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Alasan duplikat dan pintasan riwayat PDF nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel f6c3839c3aea511ba3096b2124549e3197a11484 pada REV-006, UI-06.3, UI-06.4 dan UI-09.2 membedakan sinyal supplier dan nomor nota yang sama dari checksum PDF yang sama. Pintasan ke riwayat draf menjaga fokus, proyek dan isian. Fixture Chrome 320/390/1440, isolasi proyek, checksum, regresi MySQL 117 tes dan restore disposable lulus. Rilis publik memverifikasi CSS dan jalur manual nota. Holsite 26/36. Procurement dan Product masih mengesahkan provider OCR foto dan retensi. Staging privat, UAT perangkat dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Cakupan saldo dan pemulihan pencarian tagihan

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 83d39ee6bc61766501e4a633264ff08eeb01980f pada REV-002, UI-05.1 dan UI-09.2 menandai cakupan saldo Portal saat tagihan disaring. Hasil kosong menyediakan pemulihan pencarian dengan fokus dan konteks laporan tetap. Fixture klien di Chrome 320/390/1440 membuktikan saldo setelah pembayaran, hak baca PDF dan snapshot laporan tetap. Regresi MySQL 117 tes dan restore disposable lulus. Pemeriksaan publik mencakup versi aktif, CSS serta batas login dan akses Portal. Holsite 26/36. Finance dan PM masih mengesahkan basis nilai. Staging privat, UAT perangkat dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Ruang dock dan fokus awal–akhir Menu

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 8db66f1ebdf37ea91662514a81a75a0a78493820 pada UI-02.2 dan UI-09.2 mencegah dock menutupi Aksi cepat pada viewport sempit dengan inset samping. Home dan End memfokuskan kontrol awal atau akhir Menu. Chrome emulasi 320/390/768, rail desktop, alur BUP dua proyek, regresi MySQL 117 tes dan restore disposable lulus. Demo membuktikan lebar dock dan keyboard Menu. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status volume kosong dan pintasan absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 6525fb5d06adc39f4b2419200f87266a3fa82743 pada REV-010, UI-07.4 dan UI-09.2 memperjelas volume kosong dan memfokuskan ringkasan absensi sambil mempertahankan cut-off dan filter volume. Hasil BUP 9 m² cocok dengan progres. Absensi dua tim tetap terpisah per tanggal. Chrome 320/390/1440, izin QS/PM, regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi panel kosong dan fokus ringkasan. Holsite 26/36. Keputusan OH, biaya, rework dan pembanding masih terbuka. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Penanda revisi dan pintasan pencarian draf

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 4d1a9bf205a21871cc51fc27b4908848086cab14 pada REV-005, UI-06.1 dan UI-09.2 memisahkan tanggal dari lencana revisi dan memfokuskan pencarian draf dengan isian editor tetap terjaga. Chrome 320/390/1440, rekonsiliasi draf Rp170 ribu, pencarian terisolasi per proyek, regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi pintasan dan fokus. Holsite 26/36. Procurement dan Finance masih perlu menyetujui metode bayar dan kaitan pembayaran. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status daftar dan pintasan ringkasan invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 04758e38e342c5ff410c7ac808219104244c6d27 pada REV-007, UI-07.1 dan UI-09.2 menampilkan keadaan daftar invoice kosong. Pintasan menuju ringkasan pada proyek berkontrak dan rencana termin pada proyek tanpa kontrak. Chrome 320/390/1440, termin Rp30/50/20 juta, saldo Rp30 juta, izin dan checksum PDF, regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi pintasan dan peran baca PM. Holsite 26/36. Finance dan PM masih perlu menyetujui milestone, tanggal serta reschedule. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status Kurva S dan pintasan riwayat Portal

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 77f2c5d8979d9ff14b2c56bcbd2b56a024de4dd3 pada REV-002, UI-05.1 dan UI-09.2 menampilkan panel untuk laporan tanpa Kurva S dan pintasan riwayat yang menjaga laporan serta pencarian saat fokus berpindah. Chrome 320/390/1440, snapshot historis dan terbaru, PDF sesuai izin, regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi CSS baru dan akses Portal. Fixture autentikasi klien diverifikasi lokal. Holsite 26/36. Finance dan PM masih perlu mengesahkan dasar nilai dan kas. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status kosong dan fokus catat absensi

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 2faa8bd978c42239f099200573440d17f3416fd5 pada REV-009, UI-07.3 dan UI-09.2 menampilkan panel tanggal tanpa catatan. Seusai simpan, form tetap terbuka dengan fokus di kode pekerja kosong pada tanggal yang sama. Kode duplikat mempertahankan isian untuk koreksi. Chrome 320/390/1440, rekonsiliasi per tim, audit, izin baca Finance, regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi panel kosong dan filter pada 390/1440. Holsite 26/36. Field dan Finance masih perlu mengesahkan OH dan kaitan upah. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Jenis lampiran dan fokus pemilih nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel d4ebd82fca342aab90e7d078978c8fd952cf5e29 pada REV-006, UI-06.3, UI-06.4 dan UI-09.2 menampilkan Foto/PDF terpisah dari nama dan ukuran. Kosongkan pilihan mengembalikan fokus ke pemilih dan mempertahankan isian draf. Fixture dibuktikan di Chrome 320/390/1440, meliputi pengunduhan privat dan deduplikasi ulang dengan SHA-256 tetap. Regresi MySQL 117 tes dan restore disposable lulus. Demo memverifikasi panduan input manual pada 390/1440. Holsite 26/36, retensi bukti dan provider OCR masih memerlukan keputusan. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Status dokumen dan pintasan indeks Workspace

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 7cab47e2d92012cf06429ea420ef2d8f3811701a pada REV-004, UI-03.4 dan UI-09.2 memisahkan lencana status dan waktu di indeks dokumen internal. Pintasan jenis yang tersedia memfokuskan judul dan menjaga kata kunci Workspace dan Dashboard. Fixture membuktikan paginasi 21 lampiran, isolasi proyek dan hak akses PDF PO. Chrome 320/390/1440, regresi MySQL, dan restore lulus. Demo memverifikasi status dan fokus pada Workspace dan Dashboard. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Kas neto dan fokus tutup rincian Dashboard

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel afe880782637c5d881b289fe6f262a4919020717 pada UI-01.3 dan UI-09.2 menampilkan kas neto tanpa transfer pada Dashboard. Tombol di bawah tabel menutup rincian serta mengembalikan fokus ke pemicu. Demo memverifikasi angka dan fokus pada 390/1440. Fixture disposable merekonsiliasi periode harian, bulanan, transfer internal dan izin Pelaksana. Regresi MySQL dan restore lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Finance dan PM melanjutkan keputusan dasar nilai Portal. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Lingkup stok dan pemulihan hasil pencarian

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 080f2cc3f0185652c7f033590178c5d08fc716b4 pada REV-005, UI-06.2 dan UI-09.2 memperlihatkan cut-off serta cakupan seluruh lokasi untuk stok, terpisah dari filter tujuan riwayat penerimaan. Hapus pencarian di area hasil mengembalikan fokus dan daftar. Chrome 320/390/1440 dan regresi MySQL lulus. Fixture membuktikan perbedaan antara riwayat kosong, saldo nol dan pembalikan pada tanggal berikutnya serta izin pelaksana. Demo memverifikasi cakupan serta reset. Restore disposable lulus. Holsite 26/36. Procurement dan Finance melanjutkan keputusan metode bayar. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Rincian penyelesaian dan kembali ke invoice

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 168796244a98aff12d3061072d7ea4e8136febb1 pada REV-007, UI-07.1 dan UI-09.2 menunjukkan kas teralokasi dan penyesuaian tercatat sebagai nilai terpisah pada invoice. Tautan dari rincian sumber memfokuskan invoice yang sama. Fixture lokal membuktikan kredit memengaruhi piutang tanpa posting kas dan PDF tetap sesuai checksum. Chrome 320/390/1440, hak akses PDF dan regresi MySQL lulus. Demo membuktikan rincian saldo serta fokus pada invoice terbit. Restore disposable lulus. Holsite 26/36. Finance dan PM melanjutkan aturan milestone dan reschedule. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Lingkup lokasi dan pemulihan filter volume tim

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel d63d32ba587fd436ef41dbf9c28429becfd02ab4 pada REV-010, UI-07.4 dan UI-09.2 menunjukkan cut-off dan lokasi di rekap BUP terverifikasi. Hapus filter lokasi memfokuskan hasil dan mempertahankan tanggal. Fixture lokal membuktikan cut-off historis, hubungan ke Absensi serta izin QS dan Pelaksana. Chrome 320/390/1440 dan regresi MySQL lulus. Demo membuktikan dua hasil, satu lokasi tersaring dan pemulihan fokus. Restore disposable lulus. Holsite 26/36. Field dan Finance melanjutkan definisi OH serta upah. PM melanjutkan dasar rework dan kecukupan kohort. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Penyesuaian biaya dan fokus diskon nota

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel b56f00aca0e2cbf8d6b8ad42a4294c48786ac0e5 pada REV-005, UI-06.1 dan UI-09.2 memperlihatkan tanda diskon, pajak dan biaya tambahan di Draf nota. Pintasan memfokuskan Diskon dan menjaga isian draf. Chrome 320/390/1440 dan regresi MySQL membuktikan nominal, penolakan diskon melebihi subtotal serta pemulihan isian di fixture lokal. Demo membuktikan pintasan dan isian yang bertahan di draf kosong. Restore disposable lulus. Holsite 26/36. Procurement dan Finance melanjutkan pilihan metode bayar. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Identitas versi dan pintasan tabel Gantt

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 9815aba75a2e087de641b489a6b45e4ee066afff pada REV-012, UI-04.3 dan UI-09.2 membedakan versi jadwal dan kontrak pada header. Pintasan memfokuskan tabel dengan versi dan cut-off tetap. Fixture sintetis memverifikasi dua keadaan filter dan mencocokkan unduhan CSV dengan data pada cut-off. Chrome 390/1440 dan regresi MySQL lulus. Demo memverifikasi lencana dan pintasan pada Gantt terisi. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

## 2026-11-16 - Arkarupa: Satuan harga dan kembali ke pekerjaan AHSP

CONFIRMED / DEMO_PUBLIC_VERIFIED. Kandidat Laravel 86bf1b31d9d69d323c91cef2e8d67fdd820ce8f9 pada UI-08.1 dan UI-09.2 memperjelas harga per satuan pada Master AHSP. Tautan kembali memfokuskan pekerjaan yang sama di Rekap AHSP atau kolom pencarian bila hasil sudah berganti. Chrome 390/1440 dan regresi MySQL pada fixture sintetis lulus. Demo membuktikan nama modul, keadaan awal dan stylesheet. Restore disposable lulus. Holsite 26/36. Perangkat fisik, staging privat, UAT dan PILOT_READY terbuka. Pages c6baa67a menunggu autentikasi publikasi koreksi AHSP.

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

CONFIRMED / LOCAL_VALIDATED. Kandidat Laravel mempunyai workspace kosong, penugasan proyek untuk akun operasional, AHSP multi-komponen, BUP dari dimensi, Portal Klien dengan laporan terbit dan Change Log. Indeks 2.841 kode Lampiran VI tersedia sebagai Referensi untuk peninjauan detail. Proyek nyata serta UAT operator/klien masih terbuka. [Detail Arkarupa](ARKARUPA.md).

## 2026-11-14 - Arkarupa V1: prototype publik dua proyek

CONFIRMED / PRODUCTION_DEPLOYED untuk demo publik sintetis. [Arkarupa V1](https://arkarupa-prototype.pages.dev/) membuka dua proyek tanpa login dengan 13 modul. Alur AHSP, BUV, RAP/RAB, Kurva S, BUP, biaya, termin dan Portal Klien dapat dicoba. Percobaan tersimpan per proyek di browser. Change Log menampilkan sebelum/sesudah rilis dan aktivitas lokal. Katalog awal berisi tujuh kode Lampiran VI yang telah diperiksa. Katalog lengkap mengikuti tahap perluasan.

Provenance: source lokal `d29c8c52eec70a7ca89af9bee7e1d39b7fb9171a` terverifikasi identik dengan manifest aset SHA-256 `6c7a051aac64cc5e5b817e3ab790c826ef3d57a1f58c6fd235190097de573601`. Deployment `0a7d02fe-5442-4cd3-ac40-693f1561df2e`. Pemeriksaan browser 1440 px dan viewport mobile 390 px lulus pada URL publik, termasuk proyek kosong sampai laporan terbit, reset terisolasi dan Change Log. Ini adalah frontend demo tersendiri. UAT klien dan kesiapan operasional berada di luar bukti rilis ini.

[Detail Arkarupa](ARKARUPA.md).

## 2026-11-06 - Jersey Jago r72: koreksi kerah dan tepi kain yang terpotong

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis. Mask penghapusan hanger r71 ikut menghapus sebagian kain kerah. r72 memperbaiki 22 foto pada 20 set; framing tetap 1120 x 1400 dengan latar abu-abu dan whitespace. Galeri tetap 499 foto untuk 122 set batch ketiga; total katalog 164 pilihan.

Artifact diturunkan dari r71 terverifikasi agar pending owner UI lain tidak ikut tayang. Tidak ada Functions, D1, auth, order, payment atau inventory activation. Harga, ukuran, originalitas, stok dan kondisi fisik belum dikonfirmasi; pembelian nonaktif dan BUSINESS_READY tidak diklaim.

Rilis aktif r72 menggantikan snapshot r71 di bawah. Detail: [Jersey Jago](JERSEY_JAGO.md).

## 2026-11-06 - Jersey Jago r71: hanger dihapus dari foto katalog

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis. Hanger dihapus pada 238 foto utama/alternatif; 16 foto utama yang sudah bersih dipertahankan. Galeri tetap 499 foto untuk 122 set batch ketiga, dan katalog tetap 164 pilihan. Seluruh foto aktif memakai referensi revisi tanpa hanger. Format 1120 x 1400, sRGB, latar abu-abu dan whitespace dipertahankan.

Rilis diturunkan dari artifact r70 terverifikasi agar owner UI lokal lain tidak ikut tayang. Tidak ada Functions, D1, auth, order, payment atau inventory activation. Harga, ukuran, originalitas, stok dan kondisi fisik tetap belum dikonfirmasi; pembelian nonaktif dan BUSINESS_READY tidak diklaim.

Rilis aktif r71 menggantikan snapshot r70 di bawah. Detail provenance dan pemeriksaan: [Jersey Jago](JERSEY_JAGO.md).

## 2026-11-05 - Jersey Jago r70: 499 foto katalog lebih terang

CONFIRMED / PRODUCTION_DEPLOYED untuk prototype statis Jersey Jago. Sebanyak 122 set baru dengan 499 foto lebih terang (254 foto katalog dan 245 crop detail) menambah katalog dari 42 menjadi 164 pilihan. Galeri membedakan depan, belakang, alternatif, dan detail. Harga, ukuran, stok, originalitas, serta kondisi fisik belum dikonfirmasi; pembelian tetap nonaktif.

Publikasi r70 pada https://jersey-jago-prototype.pages.dev/ terikat deployment `23dae8c6-5d29-464f-b2dd-613cc1e094b8`. Seluruh 613 berkas publik, termasuk 499 foto baru, cocok ukuran dan SHA256. Header noindex/security dan batas 404 lulus; source tests 350/350, typecheck/build serta galeri pada viewport simulasi 320/390/1440 lulus. Rilis diturunkan dari artifact r69 yang terverifikasi agar perubahan lokal owner UI lain tidak ikut tayang. Tidak ada Functions, D1, pembayaran, order atau inventory activation; BUSINESS_READY tidak diklaim.

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

CONFIRMED / MASTER_DATA_PUBLISHED / PRODUCTION_ACTIVATED khusus katalog.
Andreas menetapkan Cookie Cloud, Berry Cloud dan Choco Cloud Rp20.000; tiga
menu baru tersedia Es saja pada kategori Saga Clouds. Oyen Sunkist mengikuti
resep Orange, tetap kategori Soda/harga dasar Rp18.000. Empat gambar dibuat
melalui built-in image_gen sesuai komposisi SOP, diberi label Ilustrasi AI dan
catatan bahwa penyajian dapat berbeda; bukan foto produk aktual.

Native Owner catalog119→130/publication11→12 pada runtime
`ef439898c82bff69c78b8edb0ee64b9a72e5940a`. Source aset lokal
`2bdaa74a8b96bac2a20a3cbd98271040d5161f6a`, prompt9a0ca81, ledgerd3ec184.
Read-back Owner/cashier/kiosk dan hash empat gambar PASS. Quote kasir tiga
Clouds20000/Oyen18000; kiosk16000/14400 karena promo20% existing. Browser
[kategori Clouds](https://sagapos.site/menu?category=saga-clouds) dan detail
Cookie/Oyen PASS. Produk lama, pilihan, promo/pricing/ordering serta
printer/template dipertahankan. Stok fisik/HPP tidak berubah;0order/payment/print.

Dua public-proxy timeout diselesaikan dengan read-back exact draft dan satu
publish native API melalui SSH loopback, dengan Owner/CSRF/revision guard sama.
Tidak mengulang batch atau deploy/restart aplikasi. Penyebab proxy timeout
belum dipastikan. Website33resep/PDF19halaman tetap pada deployment8db2dc38.
Staff/device UAT, takaran/urutan SOP final, foto aktual dan HPP tetapOPEN;
bukan BUSINESS_READY seluruh produk. Gambar Tea masih placeholder.

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

## 2026-10-20 - Koreksi susunan Latest Drop

Koreksi Andreas 20 Oktober: bagian Latest Obsessions dikembalikan ke The Latest Drop dengan grid sejajar, empat kolom desktop dan dua kolom mobile. Hero, quick look dan detail produk revisi 02 tetap. Build dan browser delta desktop/390px PASS; delapan hash aset publik cocok. Empat tes baseline revisi 02 tidak diulang untuk perubahan tampilan ini. Produksi tidak berubah; review visual tetap OPEN.

## 2026-10-20 - Jersey Jago: prototype visual client

CONFIRMED: revisi 02 prototype statis terisolasi source lokal `7ebdb7a28d262a5d44e65d65e6871428f300fc57` memakai komposisi editorial eksperimental, ivory/ink/emas, Plus Jakarta Sans variable dan Anton. Beranda bertumpuk/asimetris, quick look, detail mengikuti hierarki referensi Steal My Jersey, galeri depan/crop, condition meter, ukuran flat, accordion dan aksi bag tetap di mobile. Build dan empat tes terfokus PASS; browser desktop, 390px dan 320px diperiksa; delapan hash aset publik cocok manifest. Data contoh dan hero ilustrasi AI; tanpa order/payment/provider/data produksi. LOCAL_VALIDATED / TEMPORARY_PREVIEW_VERIFIED; review revisi 02 Andreas OPEN, bukan BUSINESS_READY. COYABAG tidak berubah. [Detail client](JERSEY_JAGO.md).

## 2026-10-14 - Arkarupa: pemulihan source/data dan regresi terkini

`CONFIRMED`; tooling lokal `7628b26b84d65e35c26065b4ea4e6aeac1b2a415`, panduan penutupan `f2ff71a018916a00a3d31c60c14fe41c5342ef7c`. Workspace QA/backup berada pada drive terpisah, restore source dan snapshot utama ke database disposable lulus; fixture dikembalikan. Full69/881 PASS pada file aplikasi yang sama dengan runtime; data utama tetap. Database aktif masih pada drive sistem, backup belum offsite; human acceptance dan preview publik tetap OPEN. Ini validasi/pemulihan, bukan fitur atau aktivasi baru. [Detail Arkarupa](ARKARUPA.md).

## 2026-10-14 - Arkarupa: workflow kontraktor dan finalisasi demo lokal

`CONFIRMED`; proyek klien Arkarupa memiliki RAP per ruangan, progres terverifikasi, riwayat barang datang, retur/penggantian, SPK jasa dan VO. Kode aplikasi `a3c255e694fe993fbb8ce9457c89ff6e9afa73e8` terpasang lokal; startup tanpa seed/reset dan paket UAT 12 skenario ada pada source lokal `85eb82d41453c303929ea04135522120f349aba0`. Restart 14 Oktober memverifikasi HTTP login, file dan data tetap; bukan browser UAT baru. Tidak ada remote source proyek/public preview/production yang dinyatakan berhasil. UAT manusia, review data lama, bukti visual dan target hosting masih OPEN. Lihat [catatan proyek Arkarupa](ARKARUPA.md). Pricing/produk Saga lain tidak berubah.

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

Updated: 14 Agustus 2026
Evidence status: Vercel production deployed

## Tujuan dokumen

Menjadi ringkasan kanonik website induk SagaDevs sebagai portfolio product hub dan jalur masuk jasa digital.

## Konteks

Release `source-preserving-hero-scale-v4` tetap menjadi baseline homepage production `sagadevs.com`. Pada 14 Agustus 2026, route link bio mobile-first `/bio` ditambahkan melalui protected Preview, founder UAT, promotion exact candidate, dan public-domain regression. Seluruh hub tetap `noindex`. Release redesign `ui-ux-sprints-1-5-preview-v1` telah ditolak dan tidak lagi menjadi baseline visual.

## Ringkasan

SagaDevs adalah parent product hub untuk memperkenalkan keluarga produk Saga dan menerima lead jasa website, aplikasi, workflow, serta automation. Setiap produk tetap memiliki landing page, runtime, data, account, pricing, dan release sendiri.

Produk yang ditampilkan pada showroom saat ini:

- SagaBook: booking dan operasi studio sebelum sesi.
- SagaView: workflow seleksi dan hasil foto setelah sesi.
- Sagafin: pencatatan dan kejelasan keuangan personal.

Showroom menggunakan sembilan capture source-grounded, masing-masing tiga per produk. Ia bukan demo interaktif pengganti aplikasi produk.

Route langsung `sagadevs.com/bio` adalah link directory mobile-first terpisah yang tidak ditautkan dari homepage. Surface ini menampilkan website utama, dropdown delapan portfolio yang tertutup saat initial load, serta CTA Contact Us ke WhatsApp. Portfolio aktif: Neo Ceramic, SagaView, SagaBook, Jersey, COYABAG, Sagafin, Saga Tech, dan Ayam Pemuda.

## Target pengguna

- Calon pengguna yang ingin memahami portofolio Saga.
- Calon client yang membutuhkan website, web app, mobile, desktop, atau automation.
- Partner dan reviewer yang membutuhkan jalur jelas ke landing produk.

## Batas produk

SagaDevs public hub tidak memiliki login, pricing, payment, product admin, atau operational database yang aktif. Placeholder auth/pricing dari source dipertahankan dalam keadaan tersembunyi dan inert agar tidak dapat dianggap sebagai fitur produksi. Super Admin masa depan harus menjadi surface terlindungi dan terpisah dari landing publik.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED` pada Vercel.

Activation: `PRODUCTION_ACTIVATED` pada `sagadevs.com`.

Business readiness: `NEEDS_CONFIRMATION`.

Health, security headers, sembilan capture, tujuh section asli, responsive layout, navigation keyboard/mobile, dan noindex telah terverifikasi. Seluruh fitur visual source seperti hero 3D, command palette, system map, product showroom, workflow slider, dan mini-terminal tetap dipertahankan. Hero Scale v4 memperbesar model GLB tepat 1,5× dari Motion Polish v3, menggesernya lebih kiri, dan memberi kompensasi tablet portrait tanpa mengubah section lain. Entry module versioned mencegah cache immutable lama mempertahankan skala sebelumnya. Browser regression homepage empat viewport serta bio desktop/mobile lulus tanpa overflow atau runtime error. Production deployment aktif adalah `dpl_FZA1XUs3G4YKymqkqaFCMHnrAx3A`; rollback langsung tersedia melalui deployment sebelumnya `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU`.

## Belum boleh diklaim

- Jangan menyebut public hub memiliki Super Admin, database lead, login, pricing, atau payment.
- Jangan menyebut showroom sebagai live product demo; yang ditampilkan adalah capture prototype terkurasi.
