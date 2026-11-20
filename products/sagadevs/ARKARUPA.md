# Arkarupa Dashboard — prototype kontraktor

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

Sumber: arahan Andreas dan verifikasi20November2026. AreaUI/UX/workflow/QA Arkarupa;facts,release dan changelog SagaDevs/master/status diperbarui. [Dashboard demo](https://arkarupa-dashboard.vercel.app/).

## 2026-11-20 - Arkarupa: Kurva S terbaca dan panduan native

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Source `d331f3f6457d587a5a23bc607ff8b90a48681637` memperjelas legenda rencana/aktual menjadi label14px dengan contoh garis28px monokrom. Panduan Cara membaca Kurva S dapat dibuka dengan Enter dan ditutup dengan Space tanpa request, menjelaskan baseline, pekerjaan terverifikasi, titik belum tersedia dan selisih dalam poin persentase. Grafik, angka, rumus dan hak akses dipertahankan. Partial bersama digunakan lapangan dan portal klien; sumbu portal menjadi13px. Lapangan diverifikasi pada demo publik; portal klien diverifikasi melalui fixture tanpa JavaScript, bukan login/UAT klien.

Validasi terfokus:60 kombinasi fixture lapangan/portal pada lima keadaan data dan enam viewport/mode gerak;24 kombinasi publik PM/Finance;16 ekspor CSV pada dua cut-off dan dua proyek sintetis untuk kedua role. Keenam kolom CSV cocok dengan tabel, seluruh koordinat Kurva S sesuai nilai sumber, dan delapan pembandingan Gantt cocok dengan baseline/aktual/rencana/selisih pada cut-off yang sama. Source/runtime/aset dan restore disposable cocok. Tidak ada perubahan schema/data klien atau aktivasi pilot. Hosted CI/full regression tidak dijalankan. Laporan klien terbit belum tersedia pada fixture publik yang diperiksa; QA perlu menyiapkan snapshot sintetis disposable sebelum UAT portal. Versi historis yang berbeda belum terpicu pada fixture publik; PDF/laporan, seluruh36 pemeriksaan, review visual Andreas serta UAT/Owner/HP fisik tetap terbuka. Hasil29/36 tetap historis, bukan persentase implementasi saat ini.

Sumber: arahan Andreas dan verifikasi rilis20November2026. Area: UI/UX Arkarupa serta penerimaan data/CSV; facts,workflow,release dan changelog SagaDevs/master/status diperbarui. [Dashboard demo](https://arkarupa-dashboard.vercel.app/).

## 2026-11-20 - Arkarupa: finalisasi tautan matriks tanpa nilai

**CONFIRMED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Kandidat final `c1c807ec27caeda7c4e9acc5b66b472e546f040e` mempertahankan legenda Gantt monokrom dan navigasi keyboard, serta menyembunyikan tautan kembali ketika baseline tidak menghasilkan matriks nilai. Ketersediaan mengikuti proyeksi dan izin existing. Verifikasi final48 kombinasi fixture termasuk nilai kosong,24 browser publik dan16 skala/cut-off lulus; angka/aktivitas/konteks cocok sebelum-sesudah, source/runtime/aset serta restore disposable cocok. Rilis pertama `697840ed58aafed2e4aa37ff981bcff6a1fe8000` dan bukti historis tetap dicatat di bawah. Tidak ada perubahan schema/rumus/data klien/aktivasi pilot;36 pemeriksaan penuh, review visual dan UAT fisik tetap terbuka. Sumber: arahan Andreas dan verifikasi20November2026. Area dan dokumen terdampak: UI/UX Arkarupa, facts/release/changelog SagaDevs, master dan status sinkronisasi.

## 2026-11-20 - Arkarupa monokrom dan legenda jadwal

**CONFIRMED / LOCAL_VALIDATED / DEMO_PUBLIC_VERIFIED / NOT_BUSINESS_READY.** Arahan Andreas 20 November mengganti palet biru/pastel dengan putih, abu-abu dan hitam, sambil mempertahankan komposisi serta navigasi Holsite dan Plus Jakarta Sans. Status tetap memakai label, pola garis dan bentuk. Perbaikan diterapkan bertahap dari level 1 menuju level 2; penilaian visual Andreas masih terbuka.

Rilis Laravel demo sintetis `697840ed58aafed2e4aa37ff981bcff6a1fe8000` memperjelas legenda Gantt menjadi kartu berlabel dengan contoh pola yang lebih besar. Dari akhir Gantt, pengguna internal yang berhak dapat kembali ke matriks bobot dengan keyboard dan fokus terlihat di bawah header. Ringkasan matriks, navigasi awal/akhir tabel dan kelompok skala monokrom dari rilis sebelumnya dipertahankan. Rumus, bobot, target, tanggal, hak akses dan schema tidak berubah.

Verifikasi terfokus: 42 kombinasi fixture tampilan/keyboard; 24 kombinasi browser publik PM/Finance; 16 kombinasi skala mingguan/bulanan pada dua cut-off dan dua proyek sintetis untuk kedua role. Snapshot angka, aktivitas, grafik dan konteks sebelum-sesudah cocok. Source/runtime dan aset publik cocok; backup/restore disposable lulus. Angka ini adalah skenario uji, bukan jumlah kriteria penerimaan atau skor desain. Hosted CI dan full regression tidak dijalankan pada rilis ini.

**NEEDS CONFIRMATION.** Seluruh 36 pemeriksaan belum diikat dan disahkan pada kandidat ini. 29/36 merupakan hasil teknis historis, bukan persentase implementasi terbaru atau kualitas visual. REV-012 masih parsial: penutupan menyeluruh Gantt, Kurva S, laporan/ekspor dan histori baseline belum disahkan pada kandidat ini. UAT manusia, Owner, HP fisik, screen reader, staging eksternal dan pemilihan proyek pilot nyata masih terbuka. Demo statis tidak diperbarui pada rilis ini. Tidak ada aktivasi pilot, migrasi data klien atau akses akun nyata.

Sumber: instruksi Andreas 19-20 November 2026, source commit dan verifikasi runtime 20 November 2026. [Dashboard Laravel demo](https://arkarupa-dashboard.vercel.app/).

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
