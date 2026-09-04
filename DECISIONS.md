# Riwayat Keputusan Saga Product Knowledge

## Tujuan

Menyimpan keputusan penting founder dan governance secara append-only agar
perubahan keputusan dapat ditelusuri oleh manusia maupun AI agent.

## Konteks

Dokumen ini hanya memuat informasi berstatus `CONFIRMED`. Usulan berada sebagai
`PROPOSAL`; informasi belum jelas berada di [GAPS](GAPS.md). Keputusan lama
tidak dihapus ketika berubah: statusnya menjadi `DEPRECATED` dan menunjuk ID
keputusan pengganti.

## Aturan ID dan lifecycle

- ID menggunakan format `DEC-001`, `DEC-002`, dan seterusnya.
- ID tidak digunakan ulang.
- Keputusan baru berstatus `CONFIRMED`.
- Keputusan yang diganti berstatus `DEPRECATED`.
- Field “Alternatif” bukan keputusan aktif.
- Implementasi keputusan tetap memerlukan source/release evidence.

## DEC-172 - Identifikasi Saga Member ditempatkan sebelum katalog Kiosk

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Urutan identifikasi Member dan personalisasi Kiosk Saga POS |
| Keputusan | Setelah pelanggan memilih Dine In atau Takeaway, Kiosk menampilkan pilihan identifikasi Saga Member melalui capability NFC atau Member Code sebelum membuka katalog. Member tervalidasi mendapat sapaan, rekomendasi dari produk aktif, dan kategori `Untukmu`; guest tetap dapat lanjut tanpa akun. |
| Alasan | Identitas lebih awal memungkinkan rekomendasi relevan sebelum pelanggan memilih menu dan menghindari interupsi Member setelah cart selesai. |
| Alternatif yang dipertimbangkan | Mempertahankan Member setelah cart; meminta Member saat welcome; memblokir guest sampai identitas berhasil. |
| Dampak | Flow/progress Kiosk berubah menjadi lima tahap, resolver Member harus public-safe, raw credential tidak boleh dipersistenkan ke draft, dan NFC harus menunjukkan status unavailable sampai hardware/UAT nyata tersedia. Payment authority, harga server, promo, dan canary tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / PUBLIC_DEMO_DEPLOYED / MEMBER_LOCAL_FIXTURE / NFC_NOT_RUN / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `ddb16339578e8696ff154260a027d04c162a9676`, deployment `dpl_H8kP3NdyzdufLJ2xhMABC5AmXGNo` |
| Dokumen terkait | [SagaOPS Product](products/sagaops/PRODUCT.md), [SagaOPS Dossier](products/sagaops/DOSSIER.md), [SagaOPS Changelog](products/sagaops/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-171 - Quest Saga Member menjadi journey simulasi yang dapat diulang

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Hierarchy, feedback, dan ketercobaan halaman Quest Saga Member |
| Keputusan | Ubah detail Quest menjadi journey tiga milestone dengan progres determinate, syarat kunjungan eksplisit, simulasi lokal sampai completion, CTA Reward demo, dan reset. State simulasi hanya hidup dalam memori tab dan tidak boleh mengubah saldo atau memanggil backend. |
| Alasan | Halaman sebelumnya terlalu polos dan hanya menampilkan angka, progress bar, paragraf, serta CTA Coffee; pengguna belum dapat memahami atau mencoba siklus Quest secara utuh. |
| Alternatif | Mempertahankan kartu statis; membuat progres persisten di browser; menghubungkan transaksi nyata sebelum backend diaktifkan. |
| Dampak | Main `8fadccbf96665701b2ecf1fb98a98a762ccdde65` dan deployment `dpl_57MXHh67m11Pr6twjpyMRTGcDD4V` menerapkan presenter fail-closed, milestone, live status, motion aman, dan UAT lintas mobile. Backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | SAGADEVS Product/UX review dalam mandat heartbeat Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-170 - Emoji Akses cepat Saga Member tanpa kotak kecil

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Presentasi emoji pada kartu Akses cepat Saga Member |
| Keputusan | Tampilkan emoji Coffee, Studio, Reward, dan Quest secara langsung tanpa background, border, radius, shadow, atau warna wadah per-kategori. Pertahankan ruang alignment tak terlihat dan target sentuh pada kartu utama. |
| Alasan | Andreas menilai kotak kecil di dalam kartu membuat emoji terasa berlapis dan meminta presentasi yang lebih ringan. |
| Alternatif | Mempertahankan kotak berwarna; menghapus ruang alignment; mengganti emoji dengan Feather. |
| Dampak | Main `7c72ebdbbb3088820dcbb56fcc1df3f9b90fd477` dan deployment `dpl_HzgJW5FataWqGqL6qsJuyJio8AeX` menghapus seluruh permukaan visual wadah emoji, mempertahankan alignment 42/38 px, dan menjaga target kartu minimal 44 px. Backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-169 - QRIS yang melewati countdown harus masuk handoff server

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Anti-double-payment dan recovery P08-P09 |
| Keputusan | Saat countdown QRIS mencapai `00:00`, tutup visual QR dan lakukan tepat satu status check authoritative; client tidak boleh menetapkan status payment terminal. |
| Alasan | Polling production berhenti setelah enam percobaan. Tanpa handoff, QR tetap terlihat dan label mengaku mengecek meski tidak ada request baru, sehingga pelanggan berisiko scan ulang. |
| Alternatif | Membiarkan QR terlihat; mengulang polling tanpa batas; menetapkan expired dari jam client; hanya menyediakan tombol manual. |
| Dampak | Exact source `1c383ef861b706728a0d712a02c0a9bda7596d17` aktif melalui deployment `dpl_CF5mvsKEMD7QsYhNhTDxLPvy65aN`; P08 memblokir rescan dan P09 tetap bergantung pada server truth. |
| Pemberi keputusan | SAGADEVS Product/UX/Security review dalam mandat heartbeat Andreas |
| Status | `CONFIRMED / KIOSK_PUBLIC_DEMO_PRODUCTION_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-168 - Booking manual mendukung nominal DP custom

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Fleksibilitas DP booking manual SagaBook |
| Keputusan | Pertahankan bayar lunas dan DP 50%, lalu tambahkan DP custom sebagai nominal Rupiah exact agar operator dapat mencatat kesepakatan customer di bawah atau di atas 50%. |
| Alasan | Nominal DP operasional tidak selalu tepat 50%; pencatatan harus tetap berada dalam workflow dan ledger SagaBook. |
| Alternatif | Memaksa DP 50%; memasukkan pembayaran sebagai catatan bebas; memakai persentase custom di browser. |
| Dampak | Source `1dd3c54f247c9463f51e8d7e0d678cc5eb50dd4c` menyediakan input nominal dengan validasi total server dan memakai engine installment existing tanpa migration baru. Production belum berubah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagabook/PRODUCT.md`, `products/sagabook/DOSSIER.md`, `products/sagabook/CHANGELOG.md`, `products/sagabook/FEATURE_COVERAGE_LEDGER.md` |

## DEC-167 - Beranda Saga Member memberi satu langkah lanjutan kontekstual

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Hierarchy tindakan utama Beranda Saga Member |
| Keputusan | Setelah Akses cepat, tampilkan satu kartu `Lanjutkan dari sini` yang memilih langkah paling relevan dengan urutan quest aktif, booking terkonfirmasi, reward eligible, lalu Jelajah. |
| Alasan | Beranda perlu membantu pengguna mengambil keputusan berikutnya tanpa menambah deretan kartu yang bersaing atau menyembunyikan konteks progres. |
| Alternatif | Tidak memberi rekomendasi; menampilkan seluruh rekomendasi sekaligus; mengubah urutan berdasarkan data nyata sebelum backend aktif. |
| Dampak | Main `71b12cbdbbb9248f75fbce1a0ea3c0c486561f69` dan deployment `dpl_9f8jfjtWT91is9F1Rqbfh6VztSgz` menerapkan satu kartu keputusan dengan progressbar aksesibel, CTA 44 px, input defensif, dan label data contoh. Runtime tetap dummy; backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | SAGADEVS Product/UX review dalam mandat heartbeat Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-166 - Perubahan Kiosk tervalidasi langsung dideploy ke public demo

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Default delivery perubahan Saga POS Kiosk |
| Keputusan | Setelah source dipush dan seluruh gate relevan hijau, deploy perubahan Kiosk ke stable Vercel agar Andreas dapat memeriksa dari HP. |
| Alasan | Andreas memakai HP sebagai perangkat review dan meminta hasil Kiosk tidak berhenti pada validasi lokal. |
| Alternatif | Berhenti pada local validated; hanya membuat preview; menunggu permintaan deploy terpisah setiap perubahan. |
| Dampak | Exact source `16ae7940be06dee154df5ef8ecd0ff04118d4b78` aktif melalui deployment `dpl_7mhsBWhDk2fM8Kv34YWRWePdSLRc`. Otorisasi ini tidak mengaktifkan gateway nyata, promo, canary, transaksi nyata, atau surface operator. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / KIOSK_PUBLIC_DEMO_PRODUCTION_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-165 - Ruang kanan header Kiosk diisi konteks kategori

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Hierarchy dan pemanfaatan ruang P03 Kiosk |
| Keputusan | Gunakan header dua kolom selebar konten: judul di kiri serta kategori aktif, jumlah menu, dan panduan kontekstual di kanan. |
| Alasan | Andreas menilai sisi kanan heading kosong dan meminta komposisi lebih menarik sekaligus tetap menjelaskan menu. Informasi kontekstual memberi fungsi nyata tanpa menambah ornamen atau langkah. |
| Alternatif | Memperbesar judul saja; menambah ilustrasi dekoratif; mempertahankan batas lebar 820 px. |
| Dampak | Source `16ae7940be06dee154df5ef8ecd0ff04118d4b78` mengurangi right gap 1080 px dari 148 menjadi 0 px, mempertahankan header ringkas pada dua viewport, dan tidak mengubah price/payment truth. Public deployment belum berubah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-164 - Akses cepat Saga Member memakai emoji semantik

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Bahasa visual kartu Akses cepat Beranda Saga Member |
| Keputusan | Gunakan Coffee `☕`, Studio `📸`, Reward `🎁`, dan Quest `🎯` pada empat kartu Akses cepat. Prioritaskan Apple Color Emoji, sediakan fallback emoji sistem, dan pertahankan Feather untuk ikon sistem serta navbar. |
| Alasan | Andreas meminta shortcut terasa lebih langsung, ekspresif, dan mudah dikenali tanpa menambah aset atau kompleksitas. |
| Alternatif | Mempertahankan seluruh ikon Feather; memakai aset PNG emoji; memaksakan glyph Apple pada semua platform melalui aset eksternal. |
| Dampak | Main `ddfeebc9f9629d7e2bd8c862e1bc505bcd09d8fc` dan deployment `dpl_9Y5i6hKUeFUQA44zYCWR6eiUc473` menerapkan empat emoji dekoratif, label aksesibel, kotak 42/38 px, dan target sentuh minimal 44 px. Bentuk glyph mengikuti OS pengguna; backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-163 - Bootstrap session Kiosk harus atomik

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Reliability dan latency session Kiosk |
| Keputusan | Satukan create/resume session, snapshot, CSRF, dan force-fresh rotation dalam satu POST same-origin. Pertahankan endpoint lama hanya untuk kompatibilitas. |
| Alasan | Sequence tiga request menghasilkan expected 401 pada first load, sedangkan reset dua request berisiko jatuh pada instance serverless berbeda. |
| Alternatif | Tetap mentoleransi 401; menyimpan session di client; memindahkan payment truth ke browser. |
| Dampak | Exact source `410ad19b1641dc47e84c86dc0b8324082d01083b` menurunkan first load 3→1 request, reset 2→1 request, dan failed response 1→0 tanpa mengubah server-owned price/payment. Public deployment belum berubah. |
| Pemberi keputusan | SAGADEVS Product/Engineering review dalam mandat heartbeat Andreas |
| Status | `CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-162 - Label aktif Saga Member mengambang di atas navbar ringkas

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Struktur bottom navigation mobile Saga Member |
| Keputusan | Navbar tetap pendek dan icon-only. Kotak aktif hanya mengelilingi ikon, sedangkan nama menu tampil dalam badge kecil terpisah di atas navbar ketika tujuan tersebut aktif. |
| Alasan | Andreas mengoreksi bahwa label tidak boleh menjadi baris internal yang menambah tinggi navbar; hierarchy harus tetap satu baris ikon dengan label kontekstual mengambang. |
| Alternatif | Label aktif berada di dalam navbar; semua label selalu terlihat; ikon aktif diperbesar bersama teks. |
| Dampak | Main `9a3661781158723b43da2bcb6e1960b4edad607a` dan deployment `dpl_5295PJjEdxDbheZV6yZHareHWr2Q` menerapkan navbar maksimal 60 px, badge 28 px di atas bar, ikon 22 px, indikator 42 px, tombol 48 px, serta UAT semua rute. Backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-161 - Saga POS Kiosk dideploy sebagai public simulator demo

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Public delivery Saga POS Kiosk |
| Keputusan | Deploy Kiosk ke stable Vercel URL sebagai public demo dengan QRIS simulator; jangan aktifkan gateway, promo, canary, atau transaksi nyata pada release ini. |
| Alasan | Andreas meminta project dapat dibuka melalui link publik, sementara batas payment truth dan kesiapan outlet harus tetap aman dan eksplisit. |
| Alternatif | Menahan seluruh deploy sampai durable production tersedia; mengaktifkan payment nyata pada public demo; memublikasikan seluruh operator surface. |
| Dampak | Exact runtime `7fc4ff483b053db904511f8ae2106ce34ef975e8` aktif melalui deployment `dpl_66feChVVoBJnFbtMRZ5ofmuAVWK6` pada `https://saga-pos-kiosk.vercel.app/kiosk`. Surface publik Kiosk-only, state ephemeral, dan `BUSINESS_READY=false`. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / PUBLIC_DEMO_ACTIVE / OUTLET_PRODUCTION_NOT_ACTIVATED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-160 - Bottom navigation Saga Member memakai ikon dengan label aktif

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Hierarki visual bottom navigation mobile Saga Member |
| Keputusan | Tampilkan ikon saja pada menu nonaktif. Label hanya muncul di atas ikon yang aktif; seluruh Feather icon wajib sama tinggi dan sejajar dengan distribusi jarak merata. |
| Alasan | Navbar lama menampilkan lima label sekaligus sehingga terasa padat dan mengurangi fokus pada tujuan aktif. |
| Alternatif | Mempertahankan semua label; memakai label di bawah ikon; membesarkan menu aktif hingga mengubah jarak antaritem. |
| Dampak | Main `f19bf3e2f0cd77d0a94af1021668aa342dc05feb` dan deployment `dpl_Cs4Uwe6CM8J6k7BRybdWrbEFxoad` menerapkan ikon 22x22 px, label aktif 12 px, indikator 42 px, target sentuh minimal 44 px, dan accessible name pada public dummy. Backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | Andreas |
| Status | `DEPRECATED / REPLACED_BY_DEC-162` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-159 - P03 Saga POS memakai fixed touch canvas dan equal-height categories

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Ownership scroll dan ukuran kategori Kiosk portrait |
| Keputusan | Kunci seluruh halaman P03 ke viewport fisik. Hanya panel kategori dan product grid yang boleh digeser dengan sentuhan. Seluruh kartu kategori pada breakpoint yang sama wajib memiliki tinggi identik; foto boleh mengecil atau terpotong di dalam frame tanpa mengubah ukuran kartu. |
| Alasan | Kiosk adalah perangkat touch-screen; document scroll membuat layar terasa seperti web biasa, menggeser header/dock, dan card tidak seragam mengganggu pemindaian menu. |
| Alternatif | Mempertahankan document scroll; hanya memberi scroll pada rail kategori; membiarkan tinggi card mengikuti rasio foto. |
| Dampak | Source `5568c2f26da6668a60c0c2120740395b4a542ec6` menerapkan dynamic viewport height, internal touch scroll/containment, pemulihan posisi dua panel, serta card 132/124/118 px. Production dan payment tidak berubah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md` |

## DEC-158 - Pemilihan desain Saga Member Card memakai preview lalu apply

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | State model pemilihan desain Saga Member Card |
| Keputusan | Pertahankan satu kartu aktif. Navigasi kategori/tema dan pemilihan varian hanya memperbarui preview; kartu aktif baru diganti setelah pengguna menekan `Ganti ke desain ini`. Dialog Pass dan ekspor PNG harus selalu memakai kartu aktif sampai apply. |
| Alasan | Pengguna perlu bebas membandingkan desain tanpa perubahan tidak sengaja pada identitas member yang sedang dipakai. |
| Alternatif | Mengganti kartu aktif langsung saat kategori atau varian disentuh; menyimpan setiap preview ke local storage; memakai preview pada dialog dan unduhan. |
| Dampak | Main `81e89e6b361277fda5370e51749e3bcc62f8cf3d` dan deployment `dpl_BgEheE2Ue2fnGp8WJj9S9zv8roWp` menerapkan dua state eksplisit, penanda `Preview`/`Dipakai`, CTA apply, persistence, dan parity dialog/export pada public dummy. Backend/provider/data nyata tetap OFF. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-155 - Beranda Saga Member memakai banner editorial foto penuh

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Arah visual carousel Beranda Saga Member |
| Keputusan | Jadikan referensi banner coffee editorial Andreas sebagai arah aktif: format pendek dan lebar, foto memenuhi kartu, overlay gelap menyatu, teks kiri yang tegas, serta CTA sederhana. Terapkan konsisten pada seluruh empat slide dan pertahankan satu stable public Vercel URL. |
| Alasan | Andreas menilai komposisi ini lebih kuat daripada banner sebelumnya; nested glass card menutupi foto dan terasa lebih generik. |
| Alternatif | Mempertahankan panel kaca inset; mengubah hanya slide Coffee; mengganti URL publik setiap iterasi. |
| Dampak | Main `1e8d64783cebdd21213c5c661d93a3dfd3235e41` dan deployment `dpl_3AG6DEUdFz12SrPfTq3twcAqEzw7` menerapkan V18 pada public dummy demo. Backend/provider/data nyata tetap OFF dan `BUSINESS_READY=false`. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-154 - Saga POS memakai portrait kiosk berpedoman pada Saga Member V5

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Brand guideline, UI/UX, dan execution wave Saga POS kiosk |
| Keputusan | Implementasikan seluruh wave customer kiosk portrait dengan visual language Saga Member V5 sebagai pedoman, sedangkan typography, sizing, spacing, dan touch geometry ditentukan code-native untuk layar 1080×1920 dan 720×1280. |
| Alasan | Customer flow perlu konsisten dengan ekosistem Saga, tetap terbaca pada monitor portrait, dan tidak bergantung pada teks atau layout hasil gambar generatif. |
| Alternatif | Menyalin screenshot secara pixel-perfect; mempertahankan kiosk landscape lama; memakai aset generatif untuk menu khas tanpa referensi penampilan. |
| Dampak | Source implementation `9a43a89`, current head `ca827e1`, menjalankan P01-P12, memakai Plus Jakarta Sans lokal, menguji dua viewport, serta membatasi aset generatif ke sembilan kandidat konvensional. Sembilan menu khas tetap fallback sampai brief tersedia. Production/canary tidak berubah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false` |

## DEC-149 - Saga Member memakai Contemporary Coffee Club V3

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Refinement visual dan interaksi Saga Member |
| Keputusan | Menjalankan seluruh batch redesign signifikan lalu deploy ke stable Vercel URL dengan primary hero code-native, visual route-specific, controlled gradient, local texture, restrained motion, Jelajah search/filter, dan Reward availability filter. |
| Alasan | Tampilan sebelumnya masih terasa AI-generated karena generated character hero, repetitive surface, dan hierarchy yang seragam. |
| Alternatif | Menambah dekorasi tanpa mengubah layout; mempertahankan generated character hero; mengganti stable URL; mengaktifkan backend/provider bersama redesign. |
| Dampak | Main `fd2d50c10ecbeafb5bf99525687da5a06f123013` dan deployment `dpl_7TMg8jigjcvMrxL6FegfF8wXhfrL` mengaktifkan V3 pada public dummy URL. CI, 86/86 test, UAT lima viewport, axe, offline/fallback, filter/search, dan remote smoke lulus. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_V3_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / REAL_BACKEND_OFF / REAL_PROVIDER_OFF / REAL_DATA_OFF / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-148 - Seluruh batch Gen Z UI Saga Member diintegrasikan ke public dummy demo

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Eksekusi dan release UI/UX mobile Saga Member |
| Keputusan | Menjalankan seluruh 10 macro phase, 34 batch, dan 136 micro-sprint integrasi UI, lalu memperbarui satu stable public Vercel URL setelah CI dan UAT lulus. |
| Alasan | Andreas meminta seluruh batch dikerjakan dan pengalaman Saga Member dapat langsung dicoba tanpa login serta tanpa mengaktifkan integrasi nyata. |
| Alternatif | Menyelesaikan hanya Beranda; mempertahankan aset sebagai review library; mengaktifkan backend/provider bersama UI; mengganti URL publik setiap deployment. |
| Dampak | Main `0612165bf24d7ee767a287b09c5319a617de6f4a` dan deployment `dpl_EfS6TXf6b7p2CmrzzfX5zGPnNMXz` mengaktifkan lima primary route, lima secondary route, 28 aset runtime/56 WebP, offline/fallback, dan mobile-only canvas. Canonical CI serta production UAT lima viewport lulus. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SAGA_MEMBER_GENZ_UI_PRODUCTION_VALIDATED / PUBLIC_DUMMY_DEMO_ACTIVE / VERCEL_PRODUCTION_DEPLOYED / REAL_BACKEND_OFF / REAL_PROVIDER_OFF / REAL_DATA_OFF / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-147 - Saga Member memakai visual contemporary Gen Z semi-editorial

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Arah visual library Wave A-E Saga Member |
| Keputusan | Mengganti arah aset 3D/vintage menjadi contemporary Indonesian Gen Z coffee-and-creator yang semi-editorial flat/vector-like, lalu melanjutkan regenerasi Wave B-E setelah Wave A diterima. |
| Alasan | Visual perlu terasa minimal, modern, relevan dengan coffee shop dan creator culture Gen Z, serta konsisten dengan UI mobile-first Saga Member. |
| Alternatif | Mempertahankan aset 3D; memakai gaya vintage/tradisional; memasukkan seluruh CTA/status/nilai bisnis ke dalam gambar. |
| Dampak | Exact local source `6be4ced` menambahkan 76 aset Wave B-E dan mempertahankan enam aset Wave A. Total 82 aset candidate mencakup hero, Jelajah, Member Pass, Profil, Quest, Reward, empty/system state, dan tekstur. UI fungsional tetap code-native. Test 76/76 dan browser review mobile lulus. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_VALIDATED / ASSET_LIBRARY_READY / UI_INTEGRATION_PENDING / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-146 - Saga POS memakai production-direct controlled TRIAL99 canary

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | SagaDev Gateway live canary tanpa sandbox |
| Keputusan | Mengizinkan route SagaDev production-direct, promo private `TRIAL99`, maksimal lima transaksi awal, source push, dan penggunaan uang nyata. Harga katalog tidak diubah dan transaksi hanya boleh berjalan setelah production preflight lengkap. |
| Alasan | Owner memilih validasi langsung terhadap gateway nyata dengan monetary exposure sangat kecil, tetapi tetap membutuhkan fail-closed payment, callback, settlement, dan kill-switch control. |
| Alternatif | Menunggu sandbox; membuka promo 99% secara publik; langsung mengirim transaksi sebelum product/vault/callback siap. |
| Dampak | Exact source `d9598dd94200c8cd3e2fc1bbdf8245acec1f69cc` dipush dan lulus 112/112. Guard membatasi private allowlisted device, satu item, Rp130-Rp220 per payment, lima intent, total Rp1.100, non-stacking, window, host/callback/vault/settlement, dan kill switch. Preflight tetap blocked karena external inputs belum tersedia; tidak ada live transaction atau deployment. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SOURCE_PUSHED / LOCAL_GUARDS_VALIDATED / PRODUCTION_CANARY_INPUTS_BLOCKED / LIVE_TRANSACTION_NOT_ATTEMPTED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md`, `GAPS.md` |

## DEC-145 - Seluruh readiness wave Saga POS dieksekusi sampai evidence boundary

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Eksekusi W25-W34 Saga POS |
| Keputusan | Menjalankan seluruh wave sampai batas evidence yang benar-benar tersedia; pekerjaan lokal boleh ditutup, sedangkan verify/accept yang memerlukan sandbox, hardware, staf, pilot, release, activation, atau owner acceptance wajib fail-closed. |
| Alasan | Andreas meminta semua wave dilakukan, tetapi skor dan status produksi tidak boleh naik dari persiapan, simulator, atau asumsi eksternal. |
| Alternatif | Menandai seluruh ledger selesai; menunggu semua input sebelum mengerjakan W25; mengaktifkan staging/production tanpa dependency acceptance. |
| Dampak | Exact source `8b63df321c3a0f7aeba9080eea5ac044470a6d8c` menutup W25 lokal, menjalankan contract/preparation W26-W34, lulus 108/108 test dan enam migration, serta menaikkan readiness terverifikasi menjadi 84/100. Sembilan external wave tetap blocked; source belum dipush/merge dan production tidak berubah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / W25_PASS_LOCAL / W26_W34_EXTERNAL_BLOCKED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md`, `GAPS.md` |

## DEC-144 - Saga POS memakai readiness extension 10 wave dan 40 batch

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Program peningkatan readiness Saga POS dari 80 ke 100 |
| Keputusan | Membuat execution program lanjutan 10 wave, 40 batch, dan 160 micro-sprint dengan bobot dependency-ordered dari durable runtime sampai explicit owner business-ready decision. |
| Alasan | Sisa gap terutama memerlukan sandbox, hardware, staging, staff, pilot, dan operating evidence; pekerjaan perlu dipecah menjadi gate yang dapat diverifikasi tanpa menaikkan skor dari dokumentasi saja. |
| Alternatif | Menaikkan skor berdasarkan jumlah source task; satu mega-sprint tanpa gate; langsung deploy sebelum provider/hardware/pilot acceptance. |
| Dampak | Plan awal tervalidasi pada `0618da16b3ca4c4a31a2891730c53b1eb13f5abe`; eksekusi lanjut exact `8b63df321c3a0f7aeba9080eea5ac044470a6d8c` menutup empat batch W25 lokal, menjalankan preparation 36 batch eksternal, lulus 108/108 test, dan membawa readiness ke 84/100. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / PLAN_VALIDATED / W25_EXECUTED_LOCAL / W26_W34_EXTERNAL_BLOCKED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md`, `GAPS.md` |

## DEC-143 - Saga POS memakai SagaDev Gateway dan owner-approved pilot policy

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Aturan pilot dan payment gateway Saga POS |
| Keputusan | Menerima rekomendasi aturan pilot Saga POS dan memakai SagaDev Gateway dengan product binding `sagaops`. PJP/acquirer berada di belakang SagaDev; Saga POS tidak menyimpan central merchant secret. QRIS refund pilot full-only dan manual-finance sampai capability API SagaDev disetujui. |
| Alasan | Menyatukan payment boundary lintas produk Saga, menjaga credential pusat, dan mencegah POS membuat paid/refund status dari asumsi atau endpoint yang belum tersedia. |
| Alternatif | Integrasi Midtrans/Xendit langsung; gateway provider-neutral tanpa keputusan; menganggap simulator atau refund lokal sebagai provider success. |
| Dampak | Policy lokal, signed gateway contract, settlement fields, manual refund RLS dan test diperbarui. Exact source `cf790474dbd34cb6b62db7e7da99705777b980f5` lulus 98/98; readiness menjadi 80/100. Sandbox/hardware/staging/pilot/production tetap fail-closed. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_CONTRACT_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md`, `GAPS.md` |

## DEC-142 - Seluruh strategi Saga POS dijalankan lokal dengan closure di akhir

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Eksekusi Saga POS untuk Kopi Saga Salak |
| Keputusan | Pilot memakai self-service kiosk + nota checker/KDS tanpa kasir permanen di open bar; Cashier Mode tetap mandatory fallback. Cash, QRIS, Member Code, Reward, thermal printer, dan NFC mandatory untuk eventual pilot. Seluruh strategi sprint yang aman dijalankan lokal sekarang; input/provider/hardware/staff/pilot yang belum ada dikumpulkan sebagai closure di akhir. |
| Alasan | Andreas ingin seluruh pekerjaan lokal selesai tanpa berhenti pada dependency yang dapat dilengkapi setelah implementation evidence tersedia. |
| Alternatif | Menunggu semua aturan, provider, dan hardware sebelum coding; menganggap simulator sebagai pilot pass; melewati Cashier fallback. |
| Dampak | Local lab mencapai M3 78/100 dengan lima surface, 96/96 test, dan ledger 24 wave/120 batch/480 micro-sprint. External/provider/hardware/staging/pilot/production tetap fail-closed dan `BUSINESS_READY=false`. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_SPRINT_EXECUTION_COMPLETE_WITH_EXTERNAL_CLOSURE / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; source `d942ceaeffb5ba92ed412b0de87a4e057a3e7f7e` local branch |
| Dokumen terkait | `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `products/sagaops/CHANGELOG.md`, `GAPS.md` |

## DEC-140 - Saga Member memakai public dummy auto-demo tanpa login

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Penyederhanaan akses untuk finalisasi fitur dan UI/UX Saga Member |
| Keputusan | Gunakan satu aplikasi statis publik dengan seluruh data dummy yang langsung membuka Beranda. Login, password, OTP, cookie sesi, auth Function, backend dan provider tidak digunakan pada mode ini. |
| Alasan | Andreas ingin memusatkan pengerjaan pada fitur dan UI/UX tanpa hambatan konfigurasi security/login selama fase demo. |
| Alternatif | Mempertahankan login Andreas; melanjutkan protected Preview; mengaktifkan akun/backend/provider nyata. |
| Dampak | URL stabil dapat langsung dicoba dan diiterasi, tetapi bukan akun member nyata, production backend, pilot transaksi, provider activation, atau business-ready. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED / BUSINESS_READY=false`; menggantikan DEC-139 untuk target Vercel aktif |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/saga-platform/CHANGELOG.md` |

## DEC-139 - Saga Member memakai protected Vercel D0 shell sebelum public activation

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Target deployment frontend Saga Member |
| Keputusan | Deploy frontend Saga Member ke Vercel terlebih dahulu sebagai shell D0 fail-closed pada plan existing tanpa biaya baru. Vercel Authentication tetap aktif; login, backend, data bisnis dan provider tidak dihubungkan. |
| Alasan | Menyediakan target distribusi frontend yang dapat diverifikasi tanpa membuka private VPS atau melewati prasyarat R0. |
| Alternatif | Membuka backend VPS ke internet; mempublikasikan fixture OTP; menunggu domain/TLS/provider sebelum menyiapkan target frontend. |
| Dampak | Target Vercel production berstatus READY dan browser-verifiable, tetapi produk tetap inactive dan bukan public launch, pilot, atau business-ready. |
| Pemberi keputusan | Andreas |
| Status | DEPRECATED untuk target Vercel aktif; digantikan DEC-140. Tetap dipertahankan sebagai histori deployment D0. |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `GAPS.md` |

## DEC-138 - Saga Member dipasang production-internal-alpha pada ring D0

| Field | Nilai |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Batas deployment production Saga Member |
| Keputusan | Gunakan existing private VPS tanpa biaya baru untuk deployment terisolasi D0. Seluruh business route/provider/public exposure tetap OFF; R0 hanya setelah domain, TLS, Resend, hashed allowlist, expiring passport dan UAT ulang. |
| Alasan | Memungkinkan verifikasi runtime/DR/rollback production tanpa membuka akses bisnis sebelum dependency aktivasi tersedia. |
| Alternatif | Menunggu seluruh provider/domain sebelum deploy; menambah layanan berbayar; mengaktifkan public lebih awal. |
| Dampak | Release production-class dapat diaudit, tetapi login/pilot/public/commercial/business readiness belum tersedia. |
| Pemberi keputusan | Andreas |
| Status | CONFIRMED |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `GAPS.md` |

## DEC-137 - Eksekusi seluruh Goal 0–6 dimulai dari aplikasi lokal yang dapat diuji

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Eksekusi seluruh goal dan testable local application |
| Keputusan | Andreas meminta seluruh rekomendasi dan Goal 0–6 dikerjakan dengan output aplikasi yang dapat ia coba. Eksekusi dimulai dari master plan/prompt serta one-command local pilot launcher; pekerjaan aman berjalan lokal/read-only/synthetic dan Rp0. |
| Alasan | Semua source yang sudah tervalidasi perlu menjadi pengalaman uji terpadu sebelum durable runtime, staging, provider atau production dibuka. |
| Alternatif yang dipertimbangkan | Langsung deploy ke Vercel Hobby; memulai Goal 6 sebelum predecessor; menunggu seluruh external gate sebelum membuat aplikasi lokal terpadu. |
| Dampak | Hub loopback menjalankan Member, Customer API dan SagaOPS UAT bersama credential sintetis runtime-only. Tidak ada provider, data nyata, VPS/DNS, deployment atau production mutation. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / ALL_GOALS_LOCAL_EXECUTION_STARTED / LOCAL_PILOT_LAUNCHER_VALIDATED / ZERO_NEW_SPEND / PRODUCTION_UNCHANGED`; ops `65615c4` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-136 - Goal 6 memakai zero-cost unattended preparation lane

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Strategi Goal 6 dan pekerjaan saat owner tidur |
| Keputusan | Andreas meminta strategi Goal 6 dibuat tanpa biaya dan tanpa owner-wait gate. Goal 6 didefinisikan sebagai Durable Portfolio Institution & Strategic Ecosystem Expansion. Preparation local/read-only/synthetic boleh berjalan unattended pada incremental budget Rp0; automatic safety checks tetap fail-closed. |
| Alasan | Perencanaan institusional dan ecosystem expansion perlu lengkap tanpa pembelian, data nyata, atau mutasi eksternal ketika owner tidak aktif. |
| Alternatif yang dipertimbangkan | Menunggu Goal 5 complete sebelum merancang; menghapus automatic safety checks; menganggap strategy sebagai izin mass expansion. |
| Dampak | Pack tervalidasi pada 22 wave, 132 batch, 44 macro-sprint, 528 micro-sprint, 66 risiko dan 22 checkpoint. Goal 6 execution, route, provider, data nyata, VPS/DNS, merge, deployment, activation, network expansion dan NFC tidak diotorisasi. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL6_STRATEGY_VALIDATED / ZERO_COST_UNATTENDED_PREP_READY / ENTRY_NO_GO / PRODUCTION_UNCHANGED`; ops `f557f31` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-135 - Seluruh preparation Goal 5 dijalankan pada boundary lokal zero-cost

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Eksekusi seluruh strategi Goal 5 |
| Keputusan | Andreas meminta semua strategi Goal 5 dikerjakan. Otorisasi ini menjalankan pekerjaan local/read-only/synthetic yang aman dan memberi disposition pada seluruh 480 unit; external route dan production tidak ikut diotorisasi. |
| Alasan | Semua strategy unit perlu memiliki evidence atau blocker eksplisit tanpa menganggap pekerjaan eksternal selesai. |
| Alternatif yang dipertimbangkan | Menganggap semua 480 unit pass; menunda seluruh local preparation; membuka route eksternal sebelum G417. |
| Dampak | Disposition akhir adalah 59 local pass, 119 partial local, 106 external gate dan 196 waiting prerequisite. Incremental spend Rp0; provider, data pelanggan, VPS/DNS, merge, deployment, activation, ring advancement dan NFC tetap dilarang. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL_5_ZERO_COST_PREPARATION_EXECUTED / ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; ops `058ab3d` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-134 - Goal 5 memakai zero-cost unattended preparation lane

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Strategi Goal 5 dan pekerjaan saat owner tidur |
| Keputusan | Andreas meminta strategi Goal 5 dibuat tanpa biaya dan tanpa owner-wait gate. Goal 5 didefinisikan sebagai Sustainable Portfolio Expansion & Ecosystem Operating System. Local/read-only/synthetic preparation boleh berjalan unattended dengan incremental budget Rp0; automatic safety checks tetap fail-closed. |
| Alasan | Strategi dan pekerjaan persiapan aman perlu dapat berjalan mandiri tanpa pembelian atau risiko perubahan eksternal saat owner tidak aktif. |
| Alternatif yang dipertimbangkan | Menunggu Goal 4 complete sebelum merancang; menghapus semua safety boundary; menganggap Goal 5 sebagai mass launch. |
| Dampak | Pack tervalidasi pada 20 wave, 120 batch, 40 macro-sprint, 480 micro-sprint, 60 risiko dan 20 checkpoint. Goal 5 execution, route, provider, VPS/DNS, customer data, merge, deployment, activation dan NFC tidak diotorisasi. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL5_STRATEGY_VALIDATED / ZERO_COST_UNATTENDED_PREP_READY / ENTRY_NO_GO / PRODUCTION_UNCHANGED`; ops `075a3e8` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-133 - Seluruh preparation Goal 4 dijalankan pada boundary lokal zero-cost

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Eksekusi seluruh strategi Goal 4 |
| Keputusan | Andreas meminta seluruh strategi Goal 4 dikerjakan. Otorisasi ini mengeksekusi semua pekerjaan read-only/local/synthetic yang aman dan memberi disposition pada setiap unit, tanpa memperluas izin ke external route atau production. |
| Alasan | Seluruh strategy unit perlu dapat diaudit tanpa menganggap pekerjaan eksternal yang belum sah sebagai selesai. |
| Alternatif yang dipertimbangkan | Menganggap 432 unit seluruhnya pass; menunggu seluruh blocker sebelum menjalankan persiapan; mengaktifkan route eksternal tanpa exit Goal 3. |
| Dampak | Semua 432 micro-sprint terdisposisi menjadi 40 local pass, 107 partial local, 88 external gate, dan 197 waiting prerequisite. Incremental spend Rp0; route execution, provider, customer data, VPS/DNS, deployment, pilot dan production tetap dilarang. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL_4_ZERO_COST_PREPARATION_EXECUTED / ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; ops `b1ec602` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-132 - Goal 4 memiliki preparation lane unattended tanpa biaya baru

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Strategy dan unattended preparation Goal 4 |
| Keputusan | Andreas meminta strategi Goal 4 yang dapat ditinggal tidur tanpa biaya dan tanpa owner-wait gate. Preparation lane diizinkan tanpa approval interaktif hanya untuk read-only/local, synthetic-only dan incremental budget Rp0. |
| Alasan | Perencanaan dan verifikasi lokal perlu dapat berjalan mandiri tanpa membeli layanan atau menunggu keputusan owner pada malam hari. |
| Alternatif yang dipertimbangkan | Menunggu seluruh Goal 3 selesai; menghapus seluruh safety gate; memulai external route saat owner offline. |
| Dampak | Strategy tervalidasi pada 18 wave, 108 batch, 36 macro-sprint dan 432 micro-sprint. Automatic safety checks tetap fail-closed; VPS/DNS, provider, customer data, payment, deployment, activation, merge dan production mutation dilarang. Goal 4 route execution tetap `PLANNED_NOT_STARTED`. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL4_STRATEGY_VALIDATED / ZERO_COST_UNATTENDED_PREP_READY / ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED`; ops `e0c827c` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-131 - Goal 3 Saga Member memakai existing VPS/domain tanpa biaya baru

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Kebijakan biaya dan target runtime Goal 3 |
| Keputusan | Andreas menetapkan incremental infrastructure spend Rp0. Goal 3 tidak boleh membeli layanan baru; hanya domain dan VPS yang sudah aktif boleh direuse setelah audit capacity, collision, security, backup/rollback, dan monitoring lulus. |
| Alasan | Seluruh layanan berbayar baru ditunda; domain/VPS existing menjadi satu-satunya jalur runtime yang diizinkan saat ini. |
| Alternatif yang dipertimbangkan | Paid Render; managed database/cache; free tier disposable; tetap local-only. |
| Dampak | Audit read-only existing VPS selesai dan tidak mengubah runtime. Deployment tetap NO_GO karena disk root 83%, collision staging legacy, monitor staging gagal, PostgreSQL belum tersedia, durable source runtime belum siap, dan independent review belum terpenuhi. Tidak ada purchase, resource, billing, DNS, database, provider, pilot, atau production mutation. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / ZERO_NEW_SPEND_LOCKED / EXISTING_VPS_AUDITED / EXTERNAL_RUNTIME_NO_GO / STAGING_NOT_PROVISIONED / PROVIDERS_OFF / PILOT_NOT_STARTED / PRODUCTION_UNCHANGED`; ops `6129f1c` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `GAPS.md` |

## DEC-130 - Procurement staging Saga Member dibuka dengan cap Rp100.000

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Reopen external runtime dan reviewer Goal 3 |
| Keputusan | Andreas membuka kembali isolated staging/external-runtime procurement dengan cap maksimum Rp100.000 per bulan dan menunjuk dirinya sebagai owner reviewer. |
| Alasan | Goal 3 perlu bergerak dari local/canonical evidence menuju runtime terisolasi tanpa membuka production. |
| Alternatif yang dipertimbangkan | Tetap local-only; Render persistent topology dengan cap lebih tinggi; disposable free preview; alternatif isolated VPS. |
| Dampak | Self-review tercatat tetapi tidak diklaim independen. Fresh Render assessment menunjukkan satu paid web sekitar Rp124 ribu dan minimum persistent two-API topology sekitar Rp532 ribu per bulan, sehingga provisioning belum diizinkan dalam cap. Render access juga belum tersedia. Tidak ada billing/resource/provider/pilot/production mutation. |
| Pemberi keputusan | Andreas |
| Status | `DEPRECATED / SUPERSEDED_BY_DEC-131`; histori cap Rp100.000 dan hasil assessment tetap dipertahankan, tetapi kebijakan aktif kini incremental spend Rp0 dengan existing VPS/domain only; ops historis `515402d` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md`, `GAPS.md` |

## DEC-129 - Goal 3 Saga Member Platform berjalan hanya sampai local/canonical boundary

| Field | Isi |
|---|---|
| Tanggal | 2026-09-02 |
| Topik | Batas eksekusi Goal 3 Saga Member Platform |
| Keputusan | Jalankan seluruh sprint yang sah pada local/canonical boundary, tetapi pertahankan staging, external runtime, provider, pilot, dan production fail-closed sesuai keputusan Goal 2. |
| Alasan | Andreas meminta seluruh strategi sprint dijalankan, sementara keputusan aktif tetap melewati staging dan belum memberi authority external runtime atau production. |
| Alternatif yang dipertimbangkan | Mengklaim seluruh 480 sprint complete; memprovision external runtime tanpa gate; menunda seluruh pekerjaan Goal 3. |
| Dampak | 480 micro-sprint tercatat sebagai 124 local pass, 108 partial local, 118 external gate, dan 130 waiting. Goal 3 belum complete; independent review, external runtime/provider, commissioning, controlled pilot, dan production tetap memerlukan gate terpisah. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL_3_LOCAL_CANONICAL_EXECUTED / EXTERNAL_RUNTIME_NO_GO / STAGING_SKIPPED / IMPLEMENTED_NOT_DEPLOYED / PILOT_NOT_STARTED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; ops provenance `e3a5431` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-128 - Goal 2 Saga Member Platform diterima hanya sebagai local validated

| Field | Isi |
|---|---|
| Tanggal | 2026-09-01 |
| Topik | Final scope Goal 2 Saga Member Platform |
| Keputusan | Andreas menyetujui staging dilewati untuk saat ini dan menerima Goal 2 hanya pada state `GOAL_2_LOCAL_VALIDATED`. |
| Alasan | Seluruh acceptance lokal dapat ditutup dengan evidence segar tanpa membuat klaim external runtime yang belum diuji. |
| Alternatif yang dipertimbangkan | Menyediakan isolated staging sekarang; memakai mixed infrastructure; melanjutkan langsung ke production. |
| Dampak | Scope local-only ditutup. Staging, provider sandbox, independent review, commissioning perangkat/staff, controlled pilot, production, dan business readiness tetap deferred. Scope asli staging-and-pilot tidak diklaim complete. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / GOAL_2_LOCAL_VALIDATED / STAGING_SKIPPED / IMPLEMENTED_NOT_DEPLOYED / PILOT_NOT_STARTED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-127 - Goal 1 Saga Member Platform diterima sebagai local internal alpha

| Field | Isi |
|---|---|
| Tanggal | 2026-09-01 |
| Topik | Final acceptance Goal 1 Saga Member Platform |
| Keputusan | Andreas menerima Goal 1 sebagai `COMPLETE_LOCAL_INTERNAL_ALPHA`. |
| Alasan | Ledger asli telah mencapai 191 local PASS, nol partial, satu conditional NFC N/A; clean-room, artifact restore, browser, security, load, recovery, dan Critical/High gate lulus. |
| Alternatif yang dipertimbangkan | Menahan status tetap technical-closeout sambil menunggu acceptance; memperluas acceptance langsung ke staging atau production. |
| Dampak | Goal 1 ditutup pada batas local internal alpha. Keputusan tidak memberi izin staging, provider nyata, external infrastructure, NFC, customer pilot, production deployment/activation, atau klaim business-ready. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / LOCAL_INTERNAL_ALPHA_ACCEPTED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false` |
| Dokumen terkait | `products/saga-platform/PRODUCT.md`, `products/saga-platform/DOSSIER.md`, `products/sagaops/PRODUCT.md`, `products/sagaops/DOSSIER.md` |

## DEC-126 - Deploy backend SagaView diteruskan dengan risiko kapasitas diterima

| Field | Isi |
|---|---|
| Tanggal | 2026-08-31 |
| Topik | Otorisasi production backend SagaView S373 |
| Keputusan | Andreas mengizinkan release memakai kapasitas lokal yang tersedia, tanpa melewati backup, restore, provenance, health, smoke, atau rollback. Studio Live Import aktif harus dipertahankan dan tidak boleh didowngrade. |
| Alasan | Kandidat backend telah lulus source gate; risiko margin kapasitas lokal diterima agar hardening dapat dipromosikan dengan recovery lengkap. |
| Alternatif yang dipertimbangkan | Menunda release sampai kapasitas lokal bertambah; menurunkan Studio ke kandidat kumulatif lama; melewati backup/rollback; mengklaim UAT pasangan baru dari receipt lama. |
| Dampak | Backend exact `5f642d83a9d23091f29cc356b2041bc310338812` aktif pada release `20260831080506-5f642d8`, Studio exact `8257f491bc0866bd0de814d0f3cd3e9dd6336b85` tetap aktif, dan current-pair UAT tetap residual. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / CURRENT_PAIR_UAT_PENDING / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaview/PRODUCT.md`, `products/sagaview/DOSSIER.md`, `products/sagaview/CHANGELOG.md`, `products/sagaview/FEATURE_COVERAGE_LEDGER.md` |

## DEC-125 - SagaView Live Import diaktifkan setelah UAT 14 gate

| Field | Isi |
|---|---|
| Tanggal | 2026-08-31 |
| Topik | Aktivasi production Live Import SagaView v0.21.0 |
| Keputusan | Andreas menyetujui deployment setelah menerima hasil UAT 14 gate. Production mengaktifkan mode pantau folder Lightroom dan mempertahankan Import sekali sebagai pilihan. |
| Alasan | Pemilihan foto perlu berjalan paralel dengan export Lightroom untuk mengurangi waktu tunggu operator dan customer. |
| Alternatif yang dipertimbangkan | Menahan fitur hanya pada query trial; deploy dengan flag mati; menghapus mode Import sekali; melanjutkan tanpa exact UAT receipt. |
| Dampak | Live Import aktif pada exact Studio source `8257f491bc0866bd0de814d0f3cd3e9dd6336b85` / release `20260831081456-8257f49`; rollback `20260828203620-47d68e7` tersedia. Foto/path/nama tetap lokal, override editor tetap warning+PIN-bound, dan monitoring studio tetap residual. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / SOURCE_PUSHED / UAT_ACCEPTED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false` |
| Dokumen terkait | `products/sagaview/PRODUCT.md`, `products/sagaview/DOSSIER.md`, `products/sagaview/CHANGELOG.md` |

## DEC-124 - Staff dapat mengedit pengeluaran sendiri sebelum closing

| Field | Isi |
|---|---|
| Tanggal | 2026-08-31 |
| Topik | Koreksi kesalahan input pengeluaran harian oleh staff |
| Keputusan | Staff dapat mengedit nominal, metode pembayaran, kategori, dan catatan pada pengeluaran yang ia input sendiri sebelum closing tanggal/cabang disubmit. Tanggal, cabang, dan identitas pencatat tidak dapat diganti. |
| Alasan | Kesalahan input operasional perlu diperbaiki oleh pencatat sebelum angka menjadi bagian dari closing, tanpa melemahkan ownership dan jejak audit. |
| Alternatif yang dipertimbangkan | Semua koreksi oleh Owner; reversal append-only untuk setiap typo; mengizinkan edit setelah closing; backfill ownership row lama dari nama staff. |
| Dampak | Backend memverifikasi tenant/cabang, creator ID, status closing/reversal, optimistic version, dan mutex submit; ledger mempertahankan waktu kejadian serta audit mencatat before/after. Row legacy tanpa creator ID tetap terkunci dan memakai alur koreksi terkontrol. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; source `5fb50f65b2aadd801a4dbb8f0d49b694268fe6a6`; Playwright Staff mobile+desktop 2/2; production tidak berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-123 - Deploy exact main SagaBook b37db081 disetujui

| Field | Isi |
|---|---|
| Tanggal | 2026-08-30 |
| Topik | Otorisasi production release kumulatif SagaBook |
| Keputusan | Andreas menyetujui deployment production hanya untuk exact source `b37db0810f64731e46f18d026452a6cf3f65e86c`, dengan full gate, fresh backup/restore, immutable artifact, atomic switch, verifier, rollback, dan authenticated read-only UAT tetap wajib. |
| Alasan | Kandidat exact main telah memiliki provenance dan acceptance contract lengkap, sementara deployment harus tetap fail-closed terhadap drift source, backup, atau runtime. |
| Alternatif yang dipertimbangkan | Menunda release; deploy source lain; melewati backup/UAT; membuat release paralel. |
| Dampak | Exact source aktif pada release `20260830042225-b37db08` dengan rollback `20260829175230-435dbfd`. Verifier 23/23, post-switch 37/37, dan Owner/Staff UAT lulus. Pilot dua studio serta provider canary tetap terpisah sehingga `BUSINESS_READY=false`. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / UAT_ACCEPTED / BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-122 - Manual Booking OTS dapat dimulai dari waktu server saat ini

| Field | Isi |
|---|---|
| Tanggal | 2026-08-29 |
| Topik | Walk-in dadakan mendekati atau melewati jam tutup studio |
| Keputusan | Manual Booking menyediakan aksi `Mulai sekarang` untuk role yang memiliki capability override pada seluruh tenant. Waktu mulai wajib berasal dari timezone tenant di server dan boleh berada di luar jam operasional; client tidak boleh menetapkan ulang tanggal atau jam pada mode ini. |
| Alasan | Customer OTS dapat datang dadakan dan tetap dilayani berdasarkan kondisi nyata studio, termasuk ketika slot publik atau jam operasional sudah berakhir. |
| Alternatif yang dipertimbangkan | Memaksa admin memilih slot publik; hanya mengizinkan sebelum jam tutup; menerima waktu perangkat client; menonaktifkan guard konflik pada walk-in. |
| Dampak | Booking ditandai `walk_in` dengan provenance waktu dan audit. Payment hold, konflik resource, permission, tenant/cabang, idempotency, concurrency, dan stale guard tetap berlaku. Closing terkunci menggunakan adjustment request/revisi, bukan overwrite. Fitur default-on seluruh tenant dengan kill switch; email tetap memerlukan consent operasional eksplisit. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / UAT_ACCEPTED / BUSINESS_READY=false`; source `b2790d64232b24222c3bc383c3b445d760786f2d`, release `20260829062031-b2790d6`, rollback `20260829053952-804fb58`; residual pilot dua studio dan provider canary |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-121 - Closing dibagikan manual oleh admin tanpa konfigurasi grup

| Field | Isi |
|---|---|
| Tanggal | 2026-08-29 |
| Topik | Cara membagikan laporan Closing Operasional ke grup cabang |
| Keputusan | Konfigurasi grup WhatsApp tidak menjadi syarat preflight Closing Operasional. Setelah closing disubmit, admin menyalin teks atau membuka share sheet dan mengirim laporan secara manual ke grup cabang masing-masing. |
| Alasan | Admin sudah menangani komunikasi grup secara langsung; target dan status provider di UI menambah setup yang tidak diperlukan. |
| Alternatif yang dipertimbangkan | Mempertahankan satu target grup per cabang; otomatisasi provider; menghapus seluruh tab Bagikan. |
| Dampak | Warning konfigurasi grup dan panel target/status provider dihapus. Salin Teks, share sheet, audit aksi manual, serta warning rule konsumsi stok tetap dipertahankan. API, database, payment, permission, dan provider tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false`; feature source `023c1e6a7d8d558254ac2acd18504e0f8b986499` aktif melalui cumulative source `91545d1f974b5e992cc661637c9e234ef504dbec`, release `20260828210027-91545d1`; authenticated UAT masih pending |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-120 - Add-on berbayar mengurangi consumable closing sesuai snapshot

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Kertas foto dan packaging untuk Add Person, Cetak 4R, dan add-on studio lain |
| Keputusan | Owner dapat menetapkan jumlah kertas foto dan packaging per unit add-on. Add Person maupun Cetak 4R yang sudah dibayar mengurangi stok sesuai kuantitasnya; rule yang berlaku disnapshot pada baris booking agar closing historis tidak berubah ketika katalog diedit. |
| Alasan | Add Person umumnya membawa satu cetakan tambahan dan Cetak 4R memakai satu lembar kertas, sehingga closing harus mencatat konsumsi fisik dari add-on selain konsumsi paket. |
| Alternatif yang dipertimbangkan | Menginput semua tambahan secara manual saat closing; membaca rule katalog terbaru untuk histori; menghitung add-on belum dibayar; menerapkan backfill otomatis tanpa review. |
| Dampak | Editor add-on mendapat wizard kertas/packaging, backend memakai rule versioned dan snapshot booking, closing menghitung paid/confirmed saja, serta rekonsiliasi lama default read-only dan fail-closed memakai manifest exact. Tidak ada migration baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false`; source fitur `8203f0131a366b81b8922127d6cd6bda06357b2d` aktif melalui exact cumulative source `806adbe44b5d5ee2a2437fb3f066effd73c49b67`, release `20260828174039-806adbe`; authenticated UAT dan mapping legacy masih pending |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-118 - Email customer SagaBook adalah fitur basic default-on

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Entitlement dan default confirmation pembayaran serta reminder email SagaBook |
| Keputusan | Confirmation pembayaran, reminder H-1, dan reminder H-3 memakai Resend sebagai fitur basic untuk semua paket dan otomatis aktif bagi seluruh tenant lama maupun baru. Owner tetap dapat opt-out melalui Settings. Operational WhatsApp tetap channel terpisah dan off selama transisi provider. |
| Alasan | Email adalah recovery channel dasar agar customer tetap menerima konfirmasi dan dapat membuka kembali detail booking ketika tab tertutup, tanpa bergantung pada provider WhatsApp. |
| Alternatif yang dipertimbangkan | Opt-in per tenant; hanya paket berbayar tertentu; mengaktifkan WhatsApp bersamaan. |
| Dampak | 15/15 tenant production diaktifkan secara idempotent dan beraudit; tenant baru default-on. Aktivasi tidak membuat blast langsung karena outbox kosong dan reminder dry-run tidak menemukan booking eligible. Owner opt-out, provider guard, idempotency, tenant scope, dan audit tetap dipertahankan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / TENANT_DEFAULT_ACTIVATED / BUSINESS_READY=false`; source `1af16b1331e8bb11af2d026317c93201b64816b9`, release `20260828112935-1af16b1`, rollback `20260828103607-92765aa` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-119 - COYABAG menunda 2FA hanya untuk fase demo

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Batas akses demo dan activation gate COYABAG |
| Keputusan | Owner 2FA boleh ditunda selama fase demo client agar login tidak menghambat presentasi, tetapi wajib diaktifkan sebelum persetujuan privacy/retention, release sign-off, dan commerce production activation. |
| Alasan | Demo perlu mudah diakses, sedangkan persetujuan legal dan transaksi nyata harus tetap terikat ke identitas owner yang terlindungi. |
| Alternatif yang dipertimbangkan | Memalsukan approval owner; menghapus gate 2FA dari production readiness; memaksa 2FA pada seluruh demo; membuka checkout nyata sebelum approval. |
| Dampak | Simulator demo tetap dapat dipakai sesuai DEC-112. Privacy policy dapat disiapkan sebagai draft, tetapi tidak dipublikasikan atau disetujui atas nama owner; checkout publik tetap fail-closed. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / CONDITION_FULFILLED`; owner 2FA dan policy approval aktif, provenance report `febf539`, aplikasi tetap release `20260828-10e516b`; commerce masih blocked oleh UAT dan sign-off |
| Dokumen terkait | [COYABAG Product](products/coyabag/PRODUCT.md), [COYABAG Dossier](products/coyabag/DOSSIER.md), [COYABAG Changelog](products/coyabag/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-117 - Draft frame SagaView tidak menghalangi Studio Console

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Hubungan lifecycle draft, akses Studio, dan kapasitas frame aktif SagaView |
| Keputusan | Draft frame boleh tetap belum selesai dan tidak menjadi prasyarat untuk membuka Studio Console. Ketika kapasitas aktif penuh, publish frame baru ditahan dengan alasan jelas, tetapi draft tetap aman dan Save Draft tetap tersedia. Owner membebaskan slot melalui archive yang dapat dipulihkan, bukan dipaksa menghapus frame atau draft. |
| Alasan | Operasional Studio tidak boleh berhenti karena pekerjaan authoring Owner; penghapusan sebagai satu-satunya jalan keluar berisiko kehilangan konteks dan membuat limit paket terasa seperti kerusakan aplikasi. |
| Alternatif yang dipertimbangkan | Memaksa semua draft dipublish; memaksa draft/frame dihapus; membiarkan pesan 422 generik tanpa kapasitas dan recovery. |
| Dampak | Owner Console menjadikan Studio sebagai aksi utama, menampilkan kapasitas, dan menyediakan archive/restore tenant-scoped, idempoten, revisioned, audited, serta aman terhadap concurrency. Aset, versi, draft, dan profile item dipertahankan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / DEVOPS_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false`; source/release `98f13a8d50f4ae0b97d787f1ab5e0896296007ec` / `20260828111443-98f13a8`, rollback `20260828071047-8063569` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md) |

## DEC-116 - Email customer SagaBook ramah, informatif, dan recoverable

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Copy dan recovery link pada email confirmation serta reminder SagaBook |
| Keputusan | Email confirmation pembayaran, reminder H-1, dan reminder H-3 memakai bahasa Indonesia yang ramah tetapi tetap informatif. Setiap tipe memiliki subject, heading, intro, dan CTA sesuai konteks; studio, lokasi, kode booking, jadwal, paket, dan total tetap ditampilkan. HTML dan plain text wajib membawa tenant-scoped booking-detail link beserta fallback URL agar customer dapat membuka kembali detail setelah tab tertutup. |
| Alasan | Customer perlu memahami status dan persiapan dengan cepat sekaligus mempunyai jalur pemulihan yang aman ketika tab pembayaran/booking sudah ditutup. |
| Alternatif yang dipertimbangkan | Copy generik yang sama untuk semua tipe; hanya tombol tanpa URL cadangan; link tenantless yang berisiko 404. |
| Dampak | Source production membersihkan subject dari control/bidi injection, meng-escape HTML dinamis, dan mempertahankan route tenant authoritative. Tidak ada perubahan booking/payment atau database. Outbox final kosong dan seluruh tenant toggle tetap opt-in mati; trial tanpa booking milik alamat UAT ditahan agar tidak membuat record sintetis atau recovery link 404. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false`; source `92765aa96537573859de1562e3029616b380ea3a`, release `20260828103607-92765aa`, rollback `20260828101352-90172ed` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-115 - Email confirmation dan reminder SagaBook memakai Resend dengan aktivasi terpisah

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Provider email customer SagaBook untuk konfirmasi pembayaran dan reminder sesi |
| Keputusan | Gunakan domain email terverifikasi dan Resend untuk confirmation setelah pembayaran otoritatif serta reminder H-1/H-3. Email customer, outbox, signature webhook, idempotency, retry, timezone, stale cancellation, tenant permission, dan audit harus fail-closed. Seluruh tenant toggle default-off; code deployment tidak otomatis mengaktifkan provider atau mengirim customer email. WhatsApp tetap channel terpisah dan tersuspensi selama transisi provider. |
| Alasan | Customer memerlukan konfirmasi dan pengingat yang dapat diaudit tanpa menggantungkan booking/payment pada keberhasilan provider atau menyalakan pengiriman lama secara massal. |
| Alternatif yang dipertimbangkan | Mengirim langsung tanpa outbox; mengaktifkan seluruh tenant saat deploy; memakai WhatsApp yang sedang disuspensi; menerima webhook tanpa signature. |
| Dampak | Code email Resend aktif di production. Restricted sending credential dan signing secret telah dipasang melalui secret store; canary internal dan signed webhook round-trip lulus. Seluruh tenant toggle tetap opt-in mati, sehingga tidak ada customer automation massal dan tenant-linked UAT masih diperlukan. Booking/payment tidak berubah ketika email gagal. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED IN PART by DEC-118`; provider/webhook tetap `CONFIRMED / PRODUCTION_ACTIVATED`, tetapi aturan seluruh tenant toggle default-off diganti menjadi email basic default-on dengan Owner opt-out |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-111 - Koreksi stok SagaBook memakai maker-checker dan reversal append-only

| Field | Isi |
|---|---|
| Tanggal | 2026-08-27 |
| Topik | Governance opening stock, restock, koreksi fisik, dan reversal consumable SagaBook |
| Keputusan | Owner/Manager mengatur stok awal per cabang. Admin Cabang dapat restock dan mengajukan koreksi berdasarkan hitung fisik, tetapi pengaju tidak boleh menyetujui request sendiri. Reversal harus membuat mutasi lawan tanpa menghapus histori; konsumsi/reconciliation closing tidak dibatalkan dari halaman stok. Satu pack kertas tetap 20 pcs. |
| Alasan | Revisi stok harus bisa dilakukan operator tanpa kehilangan audit trail, menimpa saldo yang lebih baru, atau menggandakan mutasi saat retry. |
| Alternatif yang dipertimbangkan | Edit saldo langsung tanpa histori; mengizinkan self-approval; menghapus movement lama; membalik movement closing dari halaman stok. |
| Dampak | SagaBook menambah capability per role, optimistic lock, idempotency, correction request, approval/rejection, reversal append-only, PII-safe note, dan halaman Stok & Closing per cabang. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; source `c21d9378e0ea0bd0352cd59ffb63b4499154093a`, PR #15; production dan business readiness tidak berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-108 - Workspace SagaWork adalah cabang operasional dalam Company

| Field | Isi |
|---|---|
| Tanggal | 2026-08-26 |
| Topik | Hierarki Company, Workspace/Cabang, Staff assignment, shift, policy, dan geofence SagaWork |
| Keputusan | Andreas menetapkan `Workspace` sebagai istilah user-facing untuk cabang/unit operasional di dalam satu Company. Satu HR dapat menangani satu, beberapa, atau seluruh Workspace sesuai scope. Staff mempunyai Workspace primer serta assignment sekunder/temporer; setiap Workspace dapat mempunyai Staff, shift, policy, timezone, dan GPS/geofence berbeda. Untuk MVP, Workspace menggunakan entity `location` yang sudah ada agar tidak membuat domain duplikat. |
| Alasan | Operasi multi-cabang memerlukan batas staf, jadwal, aturan jam kerja, dan titik attendance yang jelas, sementara schema SagaWork sudah menjadikan location sebagai tenant-safe operational scope. |
| Alternatif yang dipertimbangkan | Membuat entity Workspace baru yang menduplikasi location ditolak untuk MVP; menyamakan assignment tempat kerja dengan permission scope juga ditolak. Multi-zone dan multi-Company HR ditunda sampai ada evidence kebutuhan setelah pilot. |
| Dampak | Program finalisasi memakai 15 batch/Sprint F01-F60. Exact source/runtime `e2a0391` sudah mengaktifkan Workspace core, Staff assignment, scoped HR context, GPS setup preview, shift template dan schedule eligibility pada public synthetic trial dengan migrations `0024`/`0025`; real-pilot/production activation belum berubah. F01-F52 tetap critical path dan F53-F60 closed-beta/post-pilot. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PARTIALLY_IMPLEMENTED / PUBLIC_SYNTHETIC_TRIAL_DEPLOYED / REAL_PILOT_NO-GO` |
| Dokumen terkait | [SagaWork Product](products/sagawork/PRODUCT.md), [SagaWork Dossier](products/sagawork/DOSSIER.md), [SagaWork Changelog](products/sagawork/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-106 - Deploy seluruh kandidat SagaView yang aman setelah blocker ditutup

| Field | Isi |
|---|---|
| Tanggal | 2026-08-25/26 |
| Topik | Otorisasi guarded deploy SagaView S286/S287 dan recovery S288 |
| Keputusan | Andreas mengizinkan perbaikan blocker secara aman dan deployment seluruh kandidat SagaView yang telah memenuhi gate. Deployment wajib fail-closed, exact-source, backup/restore, rollback, smoke, dan tanpa menyentuh SagaBook atau produk lain. |
| Alasan | Kandidat estimate-only sudah siap, tetapi rollback retention dan packaging shared-storage harus ditutup sebelum traffic dipindahkan. |
| Alternatif yang dipertimbangkan | Menahan seluruh deploy; melewati gate; atau menggabungkan perubahan produk lain ditolak. |
| Dampak | Guard retensi dan rollback dipulihkan; backend/Owner exact `8d84c60...` dideploy sebagai `20260824211838-8d84c60`; Studio tetap pada exact release aktif karena tidak ada kandidat baru. Authenticated operator UAT tetap gate terpisah sebelum activation/business readiness. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-105 - SagaWork Pilot Canary 01 memakai scope Madiun dan performance OFF

| Field | Value |
|---|---|
| Tanggal | 2026-08-25 |
| Topik | Scope dan admission pilot pertama SagaWork |
| Keputusan | Pilot public-safe `KANANTA-MADIUN-CANARY-01` adalah satu company/satu lokasi Kota Madiun, 5–10 Staff, mulai 26 Agustus 2026, default tiga hari, support enabled dengan default 09.00–18.00 WIB, manual attendance parallel run, dan performance OFF. |
| Alasan | Canary kecil membatasi blast radius, menjaga pembanding operasional, dan menghindari aktivasi performance sebelum KPI/legal/fairness evidence. |
| Alternatif | Cohort lebih besar, multi-location, performance ON, atau activation tanpa seluruh evidence ditolak untuk pilot pertama. |
| Dampak | Scope dapat disiapkan, tetapi real-data activation tetap NO_GO sampai exact roster/champion, seluruh 16 evidence, signed receipt, dan change window disetujui. |
| Pemberi keputusan | Andreas |
| Status | `CONFIRMED / PRE_ADMISSION / NO_GO` |
| Dokumen terkait | [SagaWork Product](products/sagawork/PRODUCT.md), [SagaWork Dossier](products/sagawork/DOSSIER.md), [SagaWork Changelog](products/sagawork/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-104 - S288 hanya boleh memulihkan rollback inactive

| Field | Isi |
|---|---|
| Tanggal | 2026-08-25 |
| Topik | Batas otorisasi recovery rollback SagaView S288 |
| Keputusan | Andreas menyetujui S288 untuk memulihkan exact release rollback inactive tanpa mengganti active release, menjalankan migration, mengubah database, atau mendeploy kandidat. Deployment kandidat memerlukan persetujuan terpisah. |
| Alasan | Kandidat tidak aman dipromosikan ketika rollback target hilang, sementara recovery harus memiliki blast radius minimum dan fail-closed. |
| Alternatif yang dipertimbangkan | Deploy kandidat langsung; membiarkan target hilang; menggabungkan recovery dan deployment dalam satu approval. |
| Dampak | Recovery dijalankan dua kali sesuai correction cap dan berhenti fail-closed. Cleanup menjaga production utuh. Akar cached staging path dan pointer-publication concurrency window kemudian ditutup secara disposable pada exact `51250078...`; retry production tetap memerlukan approval baru karena otorisasi awal sudah habis. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / EXECUTED_FAIL_CLOSED / ROOT_CAUSE_CLOSED_DISPOSABLE / RECOVERY_APPROVAL_REQUIRED`; kandidat tidak dideploy dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-103 - SagaWork memakai no-OTP staff auth dan phased synthetic deployment

| Field | Isi |
|---|---|
| Tanggal | 2026-08-25 |
| Topik | Authentication dan deployment SagaWork |
| Keputusan | HR membuat akun staff; staff login dengan nomor HP+password tanpa OTP. HR/Owner memakai email+password+TOTP. Prototype memakai protected Vercel synthetic preview tanpa custom domain; isolated Hostinger/MySQL staging boleh synthetic, sedangkan real data/provider/DNS/closed beta memerlukan final Go/No-Go Andreas. |
| Alasan | Onboarding staff perlu sederhana, tetapi privileged access dan aktivasi real-data membutuhkan kontrol lebih kuat. |
| Alternatif yang dipertimbangkan | OTP staff; public prototype; langsung production; custom domain sejak prototype. |
| Dampak | Source dan acceptance memisahkan staff/privileged auth, synthetic preview, isolated staging, serta activation gate. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / STAGING_DEPLOYED / NOT_PRODUCTION_ACTIVATED`; business readiness blocked |
| Dokumen terkait | [SagaWork Product](products/sagawork/PRODUCT.md), [SagaWork Dossier](products/sagawork/DOSSIER.md), [Gaps](GAPS.md) |

## DEC-102 - Staff lapangan mendapat guarded override Manual Booking

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Role operasional untuk availability override booking OTS/manual SagaBook |
| Keputusan | Staff lapangan harus dapat memakai guarded availability override bersama owner, manager, dan admin cabang karena staff adalah pelaksana sesi OTS. Finance admin tetap tidak mendapat capability. Seluruh guard konflik, alasan, acknowledgement, payment/provider hold, dan isolasi booking website tetap berlaku. |
| Alasan | Kondisi studio dan keputusan penempatan sesi ditangani langsung oleh staff lapangan; membatasi override hanya pada role elevated menghambat operasi OTS nyata. |
| Alternatif yang dipertimbangkan | Mempertahankan akses hanya untuk role elevated; memberi override kepada seluruh role termasuk finance; menghapus capability guard. |
| Dampak | Database existing, seeder, dan fallback permission memberi capability khusus kepada staff tanpa memperluas akses finance atau melemahkan safety S290. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `194864cc821fd93d3b97c86f5919b54ba4809dad`, release `20260824153350-194864c`, rollback `20260824141906-0dda935`; authenticated staff UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-101 - Manual Booking dapat mengoverride slot dengan guard operasional

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Jam bebas dan availability override untuk booking OTS/manual SagaBook |
| Keputusan | Admin harus dapat memasukkan sesi sesuai kondisi studio tanpa terpaku slot tersedia. Jam bebas biasa tetap mengikuti availability; bypass penuh hanya untuk owner, manager, dan admin cabang dengan alasan, acknowledgement, catatan pengecualian, dan konfirmasi kapasitas saat konflik. Payment/provider hold tidak boleh dioverride dan website booking tetap strict. |
| Alasan | Sesi OTS dapat dimulai atau dialokasikan berdasarkan kondisi aktual studio yang tidak selalu sama dengan slot publik, tetapi konflik dan tanggung jawab operasional tetap perlu terlacak. |
| Alternatif yang dipertimbangkan | Membuka semua jam untuk seluruh staff; mengubah slot publik; bypass tanpa alasan/audit; mengizinkan override payment hold. |
| Dampak | Manual Booking memiliki mode standard, custom time, dan guarded override; lock exemption dibatasi, audit actor di-HMAC, badge/history tersedia pada kalender, list, detail, Activity, dan laporan, sedangkan website serta provider tetap fail-closed. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED / SUPERSEDED_BY_DEC-102`; source `0dda9350656d4454bfeed3744c35a3b7ff7673fa`, release `20260824141906-0dda935`, rollback `20260824094717-10462ca`; guard tetap berlaku tetapi pembatasan role diganti DEC-102 |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-100 - Bukti QRIS dan transfer OTS tersimpan privat pada booking manual

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Upload dan histori bukti pembayaran OTS Manual Booking SagaBook |
| Keputusan | Admin harus dapat mengambil foto/scan atau memilih bukti QRIS onsite dan transfer manual, lalu melihat bukti aktif maupun penggantinya di Booking Detail dan riwayat Activity. Upload bukti tidak boleh otomatis mengubah status bayar, nominal, booking, atau closing. |
| Alasan | Pembayaran OTS sering dikonfirmasi staf setelah sesi; studio memerlukan rekapan bukti yang dapat diaudit tanpa mengaburkan authority ledger pembayaran. |
| Alternatif yang dipertimbangkan | Menyimpan foto di perangkat/WhatsApp saja; menghapus file lama saat replacement; otomatis menandai booking paid setelah upload. |
| Dampak | JPG/PNG/WEBP/PDF maksimal 5 MB disimpan privat dengan viewer terautentikasi, tenant/cabang/role, signature/MIME/pixel validation, EXIF stripping, idempotency, audit, active/superseded ledger, dan late-evidence marker. Booking website/provider dan terminal state fail-closed. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `10462ca913530e61834b144ef95c33bf115f59c3`, release `20260824094717-10462ca`, rollback `20260824084125-49e4cef`; authenticated UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-099 - Pembayaran booking OTS/manual dapat dikoreksi tanpa menyentuh provider

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Koreksi metode dan status pembayaran Manual Booking SagaBook |
| Keputusan | Booking yang dibuat staff/manual harus dapat mengoreksi metode dan status pembayaran dari Booking Detail. Nominal booking, booking website, payment session/callback provider, state terminal, dan closing submitted/approved tetap immutable. |
| Alasan | Customer OTS sering mengisi form lebih dulu lalu menyelesaikan pembayaran dengan metode atau status berbeda; operator memerlukan koreksi yang menjaga expected cash, laporan, dan closing. |
| Alternatif yang dipertimbangkan | Mengedit semua booking termasuk website/provider; membuat transaksi pengganti terpisah; mengubah database langsung tanpa audit. |
| Dampak | Metode cash, QRIS onsite, EDC, dan transfer manual serta status unpaid/pending/paid dapat dikoreksi sesuai role. Tenant/cabang, optimistic lock, idempotency, hashed audit reason, slot/hold, task transfer, checkout add-on non-onsite, expected cash, dan report change feed disinkronkan atomik; add-on onsite tetap terpisah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `49e4cefae4bccf83446b17bdedba841c4c74765c`, release `20260824084125-49e4cef`, rollback `20260824001354-9e4b44e`; authenticated Owner/operator UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-098 - Kandidat kumulatif SagaView S272 diaktifkan setelah storage gate tertutup

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Guarded production deployment Gallery Frame SagaView |
| Keputusan | Seluruh kandidat SagaView yang sudah siap harus disinkronkan, direkonsiliasi, lalu dideploy dengan backup/restore, exact provenance, atomic switch, health/smoke, service/journal, dan rollback. Otorisasi tidak mencakup SagaBook atau produk lain. |
| Alasan | Gallery Frame Owner perlu kembali menampilkan preview yang dirujuk database secara konsisten, sementara activation sebelumnya wajib tetap fail-closed sampai shared storage dan backup gate benar-benar valid. |
| Alternatif yang dipertimbangkan | Menahan deployment; mengaktifkan tanpa rekonsiliasi backup; memindahkan kembali asset ke release-local storage. |
| Dampak | Backend/Owner S272 aktif dengan shared storage; seluruh 215 asset unik terbaca tanpa integrity error. Studio tutorial tetap pada release aktif sebelumnya. Tidak ada migration, payment/provider, atau upload foto/path/output customer. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend/Owner `fe2dcfc57...` / `20260824034431-fe2dcfc`, rollback `20260823091225-c828bd9`; authenticated Owner/operator UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-097 - Fondasi operasional SagaBook dipromosikan sebagai satu release kumulatif

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Aktivasi production Manual Booking, promo, edit/reschedule, dan laporan |
| Keputusan | Seluruh kandidat operasional yang sudah lolos gate harus digabung pada exact source terbaru, blocker release diperbaiki, lalu dipromosikan melalui backup/restore dan atomic activation. Canary payment/QRIS/WhatsApp customer nyata tidak termasuk otorisasi ini. |
| Alasan | Owner/operator perlu segera mencoba alur operasional yang sinkron dari UI, API, backend, database, dan response tanpa membawa source parsial atau migration terpisah. |
| Alternatif yang dipertimbangkan | Deploy per fitur; menunda sampai operator/pilot tersedia; menjalankan canary provider customer bersamaan. |
| Dampak | Manual Booking direct-first/draft/jadwal/channel, promo visual opsional-voucher, safe edit/reschedule, channel reporting, branch scope, onsite payment, dashboard recovery, closing, dan reports aktif dalam satu release. Lima migration diterapkan dan rollback immutable tersedia. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `9e4b44e5...`, release `20260824001354-9e4b44e`, rollback `20260823203109-0af456c`; Operator UAT/pilot residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-096 - Manual Booking SagaBook memakai input langsung sebagai jalur utama

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Workflow input booking operasional Owner/operator |
| Keputusan | Manual Booking harus dapat diisi langsung untuk data customer dan detail operasional tanpa mewajibkan copy-paste form. Parser chat tetap tersedia sebagai opsi bantu, bukan prasyarat. |
| Alasan | Booking walk-in/OTA perlu dicatat cepat oleh admin, termasuk nama, WhatsApp, jumlah orang, resource, jadwal, dan pembayaran yang tidak selalu tersedia dalam format form customer. |
| Alternatif yang dipertimbangkan | Mempertahankan parser sebagai satu-satunya jalur; menambah form terpisah di luar dialog; menyimpan chat mentah sebagai sumber booking. |
| Dampak | Dialog menjadi direct-first; parser mengisi field terstruktur; chat mentah tidak dipersist atau dikirim ke API; polling/version refresh ditahan selama dialog terbuka; jadwal awal mengikuti timezone dan waktu klik; validasi, masking PII, tenant/cabang, permission, audit, idempotency, dan read-after-write tetap berlaku. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; direct-entry dan draft/schedule tercakup pada cumulative source `9e4b44e5...` / release `20260824001354-9e4b44e`; Operator UAT/pilot residual |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-095 - Tutorial customer membagi lima langkah menjadi tiga halaman

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Panduan awal Customer Flow SagaView |
| Keputusan | Setelah sesi pemilihan dimulai, customer harus melihat tutorial sebelum memilih frame. Lima langkah dibagi menjadi tiga halaman dengan maksimal dua langkah per halaman, satu judul utama, ikon flat besar, teks ringkas, dan warna yang mengikuti display preset; implementasi pertama memakai Bachelor. |
| Alasan | Admin memerlukan alat bantu penjelasan yang jelas, sedangkan lima langkah dalam satu layar dan judul/deskripsi ganda membuat informasi padat, sulit dibaca, dan menyisakan hierarchy visual yang membingungkan. |
| Alternatif yang dipertimbangkan | Satu halaman lima langkah; tutorial berupa teks saja; tutorial statis dengan warna yang tidak mengikuti preset. |
| Dampak | Customer memahami frame/foto, susun/review estimasi, serta consent/panggil admin sebelum masuk picker. Local-first/no-upload dan pembayaran off-app tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Studio `ab2af26a...` / `20260823185455-ab2af26`; `BUSINESS_READY=false` sampai UAT studio nyata |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md) |

## DEC-094 - Add-on sesi SagaBook dibayar terpisah di lokasi

| Field | Isi |
|---|---|
| Tanggal | 2026-08-24 |
| Topik | Alokasi pembayaran add-on operasional SagaBook |
| Keputusan | Add-on yang dibuat admin saat sesi berlangsung adalah pembayaran onsite dengan metode dan status sendiri. Nilainya menambah total akhir booking dan expected cash closing, tetapi tidak mengubah subtotal checkout atau nominal sesi payment gateway yang sudah dibuat. |
| Alasan | Tambahan layanan di studio terjadi setelah checkout awal dan dibayar langsung di lokasi; memasukkannya ke ekspektasi gateway akan membuat status pembayaran, rekonsiliasi, serta closing tidak akurat. |
| Alternatif yang dipertimbangkan | Mengubah nominal sesi gateway lama; membuat payment gateway kedua otomatis; hanya mengubah tampilan tanpa ledger terpisah. |
| Dampak | Booking Detail Owner/Staff dan customer memisahkan booking awal, fee gateway, pembayaran onsite, dan total akhir. Backend, finance transaction, ledger, audit, serta closing memakai payment scope eksplisit; tidak ada migration. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; exact source `0af456c723fbdc6b3b569627b628ff52dd786b56`, release `20260823203109-0af456c`, rollback `20260823062531-55ede99`; authenticated Owner/operator UAT dan dua studio pilot masih residual, sehingga `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-093 - Harga cetakan tambahan menjadi authority Owner setelah jatah paket

| Field | Isi |
|---|---|
| Tanggal | 2026-08-23 |
| Topik | Harga cetakan Original tambahan dan workflow estimasi SagaView |
| Keputusan | Owner Dashboard harus dapat mengaktifkan dan mengubah harga rupiah cetakan Original tambahan. Jatah cetak gratis dari paket dipakai lebih dahulu; hanya cetakan di atas jatah yang menambah estimasi total. Pembayaran tetap ditangani staf di lokasi di luar aplikasi. |
| Alasan | Harga tambahan sebelumnya belum memiliki authority eksplisit di Owner Dashboard, sehingga operator tidak mempunyai satu sumber harga yang konsisten setelah jatah paket habis. |
| Alternatif yang dipertimbangkan | Harga tetap hanya disimpan lokal di Studio; semua cetakan dikenai harga; menambahkan proses pembayaran di aplikasi. |
| Dampak | Backend mempertahankan permission, version/checksum, stale conflict, idempotency, audit, dan preservasi setting; Studio tersambung memakai authority cloud. Tidak ada provider, QRIS, rekening, callback, status paid, atau upload foto/path/output. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend/Owner `c828bd9d...` / `20260823091225-c828bd9`, Studio `9f81f3d...` / `20260823093252-9f81f3d`; authenticated Owner UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-092 - Template Booking memakai satu draft server untuk preview dan publish

| Field | Isi |
|---|---|
| Tanggal | 2026-08-21 |
| Topik | Arsitektur dan pengalaman Template Booking SagaBook |
| Keputusan | Global Brand, style dan teks per halaman, preset, Preview Live, serta Publish harus memakai satu snapshot draft server yang sama. Save harus memiliki revision/content hash, preview harus membuktikan draft exact yang dirender, Publish hanya boleh memakai revisi tersebut, dan editor harus memberi canvas mobile proporsional yang lebih besar. |
| Alasan | Preview sebelumnya dapat terlihat tidak berubah, beberapa kontrol tidak benar-benar terhubung, konflik tab tidak terdeteksi, dan layout membuat tampilan mobile terlalu kecil atau tertekan. |
| Alternatif yang dipertimbangkan | Tetap memakai localStorage sebagai authority; publish payload client langsung; autosave tanpa revisi; mempertahankan preview 360 piksel di bawah editor. |
| Dampak | Snapshot kanonik mencakup booking brand, enam warna, dua font, copy sembilan halaman, inheritance, button style, card radius, preset, dan asset font tenant-owned. Draft rehydrate, stale/no-op handling, server preview token/ACK, exact branch-scoped publish, serta canvas 390/430/460 aktif. DEC-091 dipertahankan sebagai keputusan historis save-before-publish tetapi detail tombol kontekstualnya digantikan satu aksi save kanonik. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; exact source `57635d4a6d29218797e1406385fed64d09abf2a0`, release `20260821091334-57635d4`, rollback `20260821073107-161ba76`; authenticated UAT residual dan `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-091 - Global Brand SagaBook wajib disimpan ke preview sebelum publish

| Field | Isi |
|---|---|
| Tanggal | 2026-08-21 |
| Topik | Workflow Template Booking dan Global Brand |
| Keputusan | Edit nama studio, warna, atau font pada Global Brand harus memiliki aksi kontekstual `Simpan untuk Preview`. Preview Live memakai draft yang sudah disimpan; Publish baru boleh dilakukan setelah save preview berhasil. Customer tetap melihat versi published sampai owner menekan Publish. |
| Alasan | Tombol save sebelumnya hanya berada di header sehingga mudah terlewat dan perubahan dapat dipublish tanpa checkpoint preview yang jelas. |
| Alternatif yang dipertimbangkan | Autosave setiap input; mempertahankan save hanya di header; membiarkan Publish langsung memakai form yang belum dipreview. |
| Dampak | Tab Global Brand memiliki tombol dan status dirty; Publish digate oleh state preview tersimpan; header Preview membuka draft preview. Endpoint draft/publish, schema, pricing, payment, dan permission existing tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED IN PART BY DEC-092`; prinsip save-before-publish tetap `CONFIRMED`, tetapi tombol kontekstual Global Brand dan preview berbasis state browser diganti oleh satu save kanonik serta authority draft server. Release historis `20260821073107-161ba76`. |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-089 - Saga Product menjadi funnel bio dengan penawaran early adopter assisted

| Field | Isi |
|---|---|
| Tanggal | 2026-08-21 |
| Topik | Funnel penjualan SagaBook/SagaView, trial, dan early adopter |
| Keputusan | Aktifkan `sagatech.site/saga-product/` sebagai pintu mobile-first dari bio. SagaBook dan SagaView tetap dapat dipilih satuan; pengunjung dapat melihat UI aktual, video, penawaran, dan CTA trial. Penawaran menyebut trial 14 hari tanpa auto-charge. Early adopter yang berlangganan 1 bulan mendapat total masa aktif 2 bulan; kuota dikonfirmasi saat aktivasi. Tidak ada bundle price. Fulfillment dilakukan assisted per produk dan harus dikonfirmasi sebelum aktivasi. |
| Alasan | Owner studio membutuhkan satu tautan singkat yang menjelaskan masalah sebelum dan setelah sesi tanpa harus memahami arsitektur produk terlebih dahulu. |
| Alternatif yang dipertimbangkan | Mengirim PDF langsung pada pesan pembuka; menyatukan kedua produk sebagai bundle wajib; menaruh video/PDF pada Drive; menunda funnel sampai entitlement otomatis tersedia. |
| Dampak | SagaTech menambah landing, video first-party, viewer/PDF, link bio ber-UTM, WhatsApp, dan analytics allowlist. Runtime, pricing, entitlement, billing, dan business readiness SagaBook/SagaView tidak berubah. Lifecycle SagaBook DEC-029 tetap kanonik sampai release entitlement terpisah; GAP-010 menutup runbook fulfillment. |
| Pemberi keputusan | Andreas / founder |
| Status | Struktur landing dan urutan media `DEPRECATED` oleh DEC-090; trial, early adopter, assisted fulfillment, pilihan satuan, dan batas runtime tetap `CONFIRMED`. SagaTech V24 source `124f55191b2288fc8f2365b83c5472199fa0a310`, production historis `dpl_D1xLKDsFxrVxn3UC1BjP4ftz892x`. |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Gaps](GAPS.md), [Portfolio Changelog](changelog/PORTFOLIO_CHANGELOG.md) |

## DEC-084 - Rail SagaBook memakai satu ikon per modul bisnis

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Perilaku navigasi dua tingkat dashboard SagaBook |
| Keputusan | Rail kiri hanya berisi Operasional, Katalog, Organisasi, Keuangan, dan Pengaturan. Saat satu ikon dipilih, panel desktop/tablet hanya menampilkan grup tersebut; ikon kotak empat khusus membuka Operasional yang berisi Hari Ini, Task Center, Kalender, dan Booking. Item Operasional tidak boleh diduplikasi menjadi ikon rail terpisah. |
| Alasan | Founder menilai rail dan panel sebelumnya mendobel navigasi sehingga hirarki modul tidak jelas. |
| Alternatif yang dipertimbangkan | Mempertahankan tujuh ikon pintasan sekaligus lima grup; selalu menampilkan seluruh grup pada panel konteks. |
| Dampak | Candidate S260 memfilter panel berdasarkan route/modul aktif, tetap mempertahankan semua grup pada drawer mobile, dan menurunkan visibility modul dari capability user. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source S260 dipush, tervalidasi lokal, belum production-deployed |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md) |

## DEC-083 - SagaBook memakai arah visual dashboard SleekFlow-inspired

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Arah UI/UX dashboard admin SagaBook |
| Keputusan | Dashboard admin menggunakan pola visual SleekFlow sebagai referensi utama: rail modul navy, menu konteks terang, canvas biru-abu, active state biru, panel datar, dan Plus Jakarta Sans. Struktur capability dan identitas SagaBook tetap dipertahankan; aset serta merek proprietary SleekFlow tidak disalin. |
| Alasan | Founder menginginkan dashboard operasional yang lebih ringkas, modern, dan konsisten dengan pola SaaS omnichannel yang sudah familier. |
| Alternatif yang dipertimbangkan | Mempertahankan sidebar tunggal dan font sebelumnya; redesign tanpa referensi produk utama. |
| Dampak | Candidate S254 menerapkan shell dua tingkat dan token visual baru pada dashboard admin tanpa mengubah API, permission, database, atau booking flow. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source S254 dipush, tervalidasi lokal, belum production-deployed |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md) |

## DEC-079 - SagaTech Scope 2 menjadi qualification system

| Field | Isi |
|---|---|
| Tanggal | 2026-08-15 |
| Topik | Positioning dan journey kemitraan SagaTech |
| Keputusan | Scope 2 harus membantu calon mitra memilih model berdasarkan konteks operasi, sumber permintaan, budget, timeline, kesiapan, risiko, dan bukti sebelum handoff WhatsApp; sistem boleh menyatakan belum siap dan tidak boleh menjanjikan hasil finansial. |
| Alasan | Brosur harga saja tidak cukup menyaring kecocokan atau membangun trust yang dapat diperiksa. |
| Alternatif yang dipertimbangkan | Halaman paket statis; kalkulator ROI sebagai jalur utama; CTA WhatsApp tanpa brief. |
| Dampak | Decision Studio, Fit Engine, Risk Map, Proof Lens, dan Decision Passport menjadi journey kanonik Scope 2. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; production active pada `dpl_GTQ96ZbwH3RxxvyTqzZcwD3xHce1` |
| Dokumen terkait | [SagaTech Product](products/sagatech/PRODUCT.md), [SagaTech Dossier](products/sagatech/DOSSIER.md), [SagaTech Changelog](products/sagatech/CHANGELOG.md) |

## DEC-082 - SagaTech memisahkan public claim dan quotation lock Photobooth

| Field | Isi |
|---|---|
| Tanggal | 2026-08-17 |
| Topik | Commercial truth dan branded domain Photobooth |
| Keputusan | Website hanya memublikasikan harga mulai Rp45 juta, opsi booth lengkap/vendor lokal, ownership, self-service dengan PIC, dan batas scope yang stabil. Harga sistem-only Rp37 juta, exact device, renewal, DNP, ongkir, replacement, serta payment limits tidak menjadi janji publik dan harus dikunci pada quotation. Canonical utama adalah `https://sagatech.site`. |
| Alasan | Pertanyaan calon mitra membutuhkan jawaban lengkap tanpa mengubah harga promo, vendor terms, atau asumsi teknis menjadi janji permanen. |
| Alternatif yang dipertimbangkan | Memublikasikan seluruh jawaban chat; mempertahankan FAQ pendek; menjadikan Rp37 juta dan Rp375 ribu sebagai harga tetap. |
| Dampak | Halaman Photobooth, FAQ, simulator V5, quotation checklist, warranty matrix, local-booth handoff, metadata, dan release gate memakai satu commercial truth. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; production active pada `dpl_7kSjSQKiYTbq7HvfXqEvfqs7m7Zf` |
| Dokumen terkait | [SagaTech Product](products/sagatech/PRODUCT.md), [SagaTech Dossier](products/sagatech/DOSSIER.md), [SagaTech Changelog](products/sagatech/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-073 - SagaBook menyamarkan nomor customer secara default di admin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-10 |
| Topik | Perlindungan PII pada Dashboard, Booking list, dan Booking Detail |
| Keputusan | Nomor WhatsApp customer harus tersamarkan secara default. Nomor lengkap hanya boleh diakses melalui tindakan eksplisit Tampilkan, Salin, atau WhatsApp oleh user yang lolos capability serta scope tenant/cabang. |
| Alasan | Data operasional tetap dapat dipakai saat diperlukan tanpa terus-menerus mengekspos PII pada layar dan payload utama admin. |
| Alternatif yang dipertimbangkan | Menampilkan nomor penuh untuk semua role operasional; masking berdasarkan role saja; menghapus akses nomor dari detail. |
| Dampak | Payload dashboard dimasking; endpoint akses PII memakai no-store dan audit tanpa nomor lengkap maupun empat digit terakhir; reveal browser bersifat sementara. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source S171 dipush, belum production-deployed |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-072 - AOGTIVITY memakai permanent participant access untuk fallback WA

| Field | Isi |
|---|---|
| Tanggal | 2026-08-10 |
| Topik | Login peserta dan fallback pengiriman manual |
| Keputusan | Peserta Approved menerima satu link personal yang dapat digunakan ulang sampai admin mencabut atau memutar pass. Link boleh berada pada Sheet Restricted milik founder untuk pengiriman WA manual; sesi browser tetap terbatas dan link bukan sesi permanen. |
| Alasan | Provider WA tidak tersedia, sedangkan operator memerlukan akses yang dapat disalin tanpa terus membuat magic link baru. |
| Alternatif yang dipertimbangkan | Magic link single-use 30 menit; OTP provider baru; login nomor telepon tanpa faktor kepemilikan. |
| Dampak | Migration 030 menambah pass ledger berversi; token HMAC memakai URL fragment dan tidak disimpan mentah; login memeriksa approval/role/banned/policy/status/version; revoke mencabut sesi; Sheet tetap projection dan MySQL tetap source of truth. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; production-deployed, human UAT pending |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-109 - Snap and Fit memakai profil biometrik akun dan topology prototype low-footprint

| Field | Isi |
|---|---|
| Tanggal | 2026-08-26 |
| Topik | Identity, biometric enrollment, dan deployment awal Snap and Fit |
| Keputusan | Customer dan fotografer login Google. Customer dapat membuat profil biometrik opsional sekali melalui liveness plus referensi depan/kiri/kanan, lalu menjalankan face search hanya pada event yang dipilih; BIB tetap fallback dan biometric bukan faktor login/payment. Untuk prototype Madiun 1–2 event/bulan, web tetap di Vercel dan satu API/worker boleh memakai systemd pada VPS shared hanya dengan project-only database/user, Redis ACL/namespace, path, port, Nginx, resource limit, backup, dan rollback. AWS Malaysia tetap provider target. |
| Alasan | Enrollment berulang memperberat pengalaman customer, sedangkan volume prototype belum membenarkan VPS baru. Event scoping, consent/deletion, dan logical isolation menjaga risiko tetap terbatas. |
| Alternatif yang dipertimbangkan | Selfie baru pada setiap pencarian; BIB-only; all-on-VPS; dedicated 4 vCPU/16 GB Docker sejak awal; OpenAI untuk face recognition. |
| Dampak | Source `2aef57a` mengimplementasikan Google OAuth/profile/lifecycle/deletion dan AWS plan. Protected preview exact `167896b`/deployment `dpl_FTPTFFb7Q4WWh6jcp7Bt42151d87` sudah READY dengan backend fail-closed. Real biometric, AWS apply, DNS, Tokopay test/live, dan public activation tetap memerlukan gate terpisah; produk tetap `LOCAL_VALIDATED`. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / LOCAL_VALIDATED / PROTECTED_PREVIEW_DEPLOYED` |
| Dokumen terkait | [Snap and Fit Product](products/snap-and-fit/PRODUCT.md), [Snap and Fit Dossier](products/snap-and-fit/DOSSIER.md), [Snap and Fit Changelog](products/snap-and-fit/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-001 — Repository sebagai single source of truth

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Tata kelola product knowledge |
| Keputusan | Repository `notyourgas/sagaproductknowladge` menjadi single source of truth publik untuk product, business, technical, marketing, dan operational knowledge Saga. Setiap informasi baru yang cukup jelas wajib disinkronkan lintas dokumen, di-commit, dan di-push ke `main`. |
| Alasan | Manusia dan AI agent membutuhkan sumber kanonik yang konsisten, terbarui, dan dapat diaudit. |
| Alternatif yang dipertimbangkan | Knowledge tersebar di percakapan/repo produk; update manual sesekali; update satu file tanpa impact analysis. |
| Dampak | Wajib pull terbaru, klasifikasi informasi, impact analysis, changelog, decision/gap/sync update, validation, commit, push, dan laporan SHA. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [README](README.md), [Update Protocol](docs/UPDATE_PROTOCOL.md), [Knowledge Governance](docs/governance/KNOWLEDGE_GOVERNANCE.md), [Sync Status](SYNC_STATUS.md) |

## DEC-002 — SagaBook dan SagaView dijual satuan

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Packaging self-photo SaaS |
| Keputusan | SagaBook dan SagaView memiliki paket serta harga masing-masing. Penjualan bundle ditunda. |
| Alasan | Kedua produk memiliki workflow, account role, entitlement, dan kesiapan operasional yang berbeda. |
| Alternatif yang dipertimbangkan | Menjual hanya sebagai bundle; menyatukan pricing kedua produk. |
| Dampak | Pricing, FAQ, sales messaging, subscription, dan landing harus product-scoped. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Business Strategy](docs/business/BUSINESS_STRATEGY.md) |

## DEC-003 — Trial dua fase

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Trial SagaBook dan SagaView |
| Keputusan | Trial berjalan 14 hari: hari 1–7 full access dan hari 8–14 plan-limited. Activation tetap harus dibuktikan per produk. |
| Alasan | Pengguna perlu merasakan nilai lengkap sebelum memasuki batas paket. |
| Alternatif yang dipertimbangkan | Trial 7 hari; trial 14 hari dengan akses penuh sepanjang periode; trial tanpa batas product-scoped. |
| Dampak | Backend enforcement, UI countdown, FAQ, pricing, sales copy, entitlement, dan analytics harus konsisten. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` untuk SagaBook oleh DEC-029; tetap berlaku untuk SagaView sampai ada release product-scoped baru. |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md) |

## DEC-004 — Identity dapat sama, akses tetap product-scoped

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Account, role, dan entitlement |
| Keputusan | Identity dapat ditautkan ke organisasi/produk lain, tetapi role, membership, session, entitlement, subscription, trial, data, dan payment ledger tetap terpisah per produk. Owner SagaBook tidak otomatis menjadi Admin SagaView. |
| Alasan | Menghindari privilege escalation dan kebingungan account lintas produk. |
| Alternatif yang dipertimbangkan | Satu role global; satu session global; entitlement otomatis berdasarkan email yang sama. |
| Dampak | Authentication, permission, account linking, billing, audit, dan integration contract harus product-scoped dan deny-by-default. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Authentication and Permissions](docs/technical/AUTHENTICATION_AND_PERMISSIONS.md), [Saga Platform](products/saga-platform/PRODUCT.md) |

## DEC-005 — Finance Tracker Go adalah SagaFin

| Field | Isi |
|---|---|
| Tanggal | 2026-07-29 |
| Topik | Identitas produk finance |
| Keputusan | Finance Tracker Go dan SagaFin adalah produk yang sama dan tidak boleh dihitung sebagai dua produk. |
| Alasan | Menghindari duplikasi roadmap, status, dan knowledge. |
| Alternatif yang dipertimbangkan | Mempertahankan keduanya sebagai produk terpisah. |
| Dampak | Registry, reporting, feature scope, changelog, dan knowledge memakai nama SagaFin dengan provenance nama lama. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaFin Product](products/sagafin/PRODUCT.md), [Portfolio](docs/SAGA_PRODUCT_PORTFOLIO.md) |

## DEC-006 — Repository knowledge bersifat public-safe

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Security dan privacy repository |
| Keputusan | Repository tidak boleh menyimpan secret, credential, token, PII, raw receipt/callback, tenant/device/account identifier, database dump, private evidence URL/path, atau detail vulnerability exploitable. |
| Alasan | Repository dibagikan kepada manusia dan AI agent serta tersedia publik. |
| Alternatif yang dipertimbangkan | Menyimpan evidence operasional mentah di repository yang sama. |
| Dampak | Hanya ringkasan public-safe yang disinkronkan; evidence restricted tetap berada pada store berizin. |
| Pemberi keputusan | Andreas / founder dan governance repository |
| Status | `CONFIRMED` |
| Dokumen terkait | [Knowledge Governance](docs/governance/KNOWLEDGE_GOVERNANCE.md), [Data Privacy](docs/technical/DATA_PRIVACY.md) |

## DEC-007 — Status delivery, activation, dan business readiness dipisahkan

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Readiness dan klaim |
| Keputusan | Local validation, deployment, provider activation, dan business readiness adalah status berbeda. Dummy, fixture, simulation, log lokal, atau HTTP 200 tidak membuktikan provider/business activation. |
| Alasan | Mencegah klaim progress yang melampaui evidence. |
| Alternatif yang dipertimbangkan | Satu status gabungan untuk seluruh readiness. |
| Dampak | Product docs, changelog, sales claim, AI answer, dan release report wajib menyebut evidence level secara eksplisit. |
| Pemberi keputusan | Andreas / founder dan governance repository |
| Status | `CONFIRMED` |
| Dokumen terkait | [Status Legend](docs/STATUS_LEGEND.md), [Deployment Process](docs/technical/DEPLOYMENT_PROCESS.md) |

## DEC-008 — Paket, limit, dan trial SagaBook/SagaView

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kontrak komersial produk self-photo SaaS |
| Keputusan | SagaBook: Basic Rp500.000/bulan (1 cabang, 3 staff), Growth Rp950.000/bulan (3 cabang, 10 staff), Pro Rp1.500.000/bulan (maksimal 10 cabang, 30 staff self-service); kebutuhan di atas Pro memakai kontrak Custom. Trial hari 1–7 memakai full access dengan guardrail 2 cabang, owner + 4 staff, dan 30 booking aktif/confirmed; hari 8–14 grace read-only; setelah hari 14 suspended. SagaView: Growth Rp200.000/bulan (1 device, 10 frame aktif, 3 preset, offline 24 jam, 2 GB aset frame cloud, laporan dasar) dan Pro Rp500.000/bulan (4 device, 50 frame aktif, 10 preset, offline 168 jam, 10 GB aset frame cloud, laporan lanjutan, activity log, priority support); kebutuhan di atas Pro memakai penawaran Custom. Kontrak trial SagaView tetap product-scoped dan tidak diubah oleh release platform SagaBook ini. Booking SagaBook serta sesi/foto SagaView dipasarkan sebagai unlimited dengan fair-use; foto SagaView tetap lokal dan tidak dihitung sebagai storage cloud. Trial tidak auto-charge dan tetap product-scoped. |
| Alasan | Customer membutuhkan paket yang mudah dibandingkan, sementara sistem memerlukan batas server-authoritative yang aman dan dapat diaudit. |
| Alternatif yang dipertimbangkan | Pro tanpa batas; paket multi-term publik; satu harga/bundle; trial tanpa guardrail. |
| Dampak | Pricing, entitlement, quota, UI, billing, sales copy, trial, dan acceptance test wajib konsisten. Implementasi dan production activation tetap membutuhkan provenance source/release. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; limit frame SagaView 10/50 pada keputusan ini `DEPRECATED` oleh `DEC-039`, sedangkan harga dan benefit lainnya tetap |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Business Strategy](docs/business/BUSINESS_STRATEGY.md) |

## DEC-009 — Policy default, privacy, offboarding, dan support

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Policy operasional produk self-photo SaaS |
| Keputusan | Policy default SagaBook dapat dioverride tenant: satu reschedule gratis minimal 24 jam sebelum sesi; pembatalan minimal 48 jam menerima refund 100% dikurangi fee provider yang tidak dapat dikembalikan; 24–48 jam menerima 50%; kurang dari 24 jam atau no-show tidak mendapat refund; refund selalu membutuhkan persetujuan operator; pembatalan oleh studio menawarkan refund penuh atau reschedule gratis. Baseline kedua produk: data aktif selama subscription, akses export 14 hari setelah offboarding, penghapusan data operasional maksimal 30 hari setelah permintaan terverifikasi, audit/security log 90 hari, tiket support 180 hari, dan catatan keuangan/legal mengikuti hukum yang berlaku. Support Senin–Sabtu 10.00–18.00 WIB; P1 maksimal 4 jam kerja, P2 1 hari kerja, P3 3 hari kerja. Foto SagaView tetap lokal. |
| Alasan | Sales, billing, customer care, privacy, dan incident handling membutuhkan kontrak yang konsisten sebelum pilot bisnis. |
| Alternatif yang dipertimbangkan | Refund otomatis; policy tunggal yang tidak dapat dioverride; retention tanpa batas; SLA tanpa jam layanan. |
| Dampak | Legal copy, customer request, operator approval, retention job, support queue, onboarding, dan sales handoff harus menggunakan policy ini atau policy tenant yang lebih eksplisit. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Data Privacy](docs/technical/DATA_PRIVACY.md), [Payment Flow](docs/technical/PAYMENT_FLOW.md), [Founding Studio Pilot](docs/business/FOUNDING_STUDIO_PILOT.md) |

## DEC-010 — Founding Studio Pilot dan exit criteria business-ready

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Validasi business readiness SagaBook dan SagaView |
| Keputusan | Jalankan Founding Studio Pilot 14 hari untuk minimal 3 studio per produk; studio yang sama boleh mencoba keduanya tetapi akun, subscription, bukti, dan evaluasi tetap terpisah. Onboarding assisted maksimal 60 menit, tanpa setup fee untuk cohort pertama, feedback hari 3/7/14, dan hari ke-15 kembali ke harga daftar atau berhenti. Business-ready membutuhkan seluruh exit criteria pada runbook pilot, termasuk penggunaan nyata, core journey minimal 95% tanpa engineer, provider/recovery/SLA lulus, tidak ada incident critical, dan minimal 2 dari 3 studio per produk melanjutkan berbayar. |
| Alasan | Deployment teknis tidak membuktikan produk dapat dijual dan dipakai bisnis nyata secara berulang. |
| Alternatif yang dipertimbangkan | Langsung mass launch; pilot tanpa target kuantitatif; satu cohort gabungan tanpa pemisahan produk. |
| Dampak | Status tetap `NEEDS CONFIRMATION` untuk business readiness sampai cohort menghasilkan evidence agregat yang memenuhi semua gate. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Founding Studio Pilot](docs/business/FOUNDING_STUDIO_PILOT.md), [Status Legend](docs/STATUS_LEGEND.md), [Sales Strategy](docs/business/SALES_STRATEGY.md) |

## DEC-011 - SagaBook public privacy, retention, deletion, dan offboarding

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kebijakan publik dan data lifecycle SagaBook |
| Keputusan | Andreas menyetujui seluruh keputusan P01-P18 untuk implementasi dan review legal. Studio menjadi Controller untuk data booking customer dan SagaBook/SagaDev menjadi Processor; SagaBook/SagaDev menjadi Controller independen untuk identity, billing, security, support, compliance, dan analytics teragregasi. Consent booking wajib berversi; marketing dan izin foto terpisah serta tidak preselected. Retention target: booking PII 24 bulan lalu anonymize; ledger 5 tahun atau lebih bila hukum mewajibkan; bukti transfer manual 90 hari; expired hold 30 hari; support conversation/attachment 180/30 hari; app/security-audit log 90/365 hari; backup encrypted rolling 30 hari. Paid cancellation memberi read-only/export 30 hari dan penghapusan data eligible maksimal 90 hari setelah jendela export. Persetujuan hanya mengizinkan implementasi dan legal review; policy tetap belum aktif dan belum dipublikasikan. |
| Alasan | Produk memerlukan kontrak data lifecycle dan batas klaim publik yang eksplisit sebelum penjualan SaaS tanpa batas. |
| Alternatif yang dipertimbangkan | Publikasi langsung tanpa legal/implementation gate; retention tanpa kategori; consent gabungan; penghapusan langsung tanpa export window. |
| Dampak | Source, UI consent, policy versioning, retention/deletion jobs, export/offboarding, incident runbook, vendor disclosure, legal pages, sales claim, QA, release, dan rollback harus mengikuti keputusan ini. Bila berbeda dengan baseline umum DEC-009, ketentuan SagaBook yang lebih spesifik pada DEC-011 berlaku. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [Data Privacy](docs/technical/DATA_PRIVACY.md), [Gaps](GAPS.md) |

## DEC-012 — Branding signature SagaBook dan SagaView

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Branding product surface |
| Keputusan | Semua surface aplikasi, public, dan customer SagaBook menampilkan tepat satu `Powered by SagaBook`; SagaView menampilkan tepat satu `Powered by SagaView`. Signature harus halus tetapi terbaca, accessible, responsif, tidak menutupi konten, dan tidak dimasukkan ke foto, hasil cetak, export, invoice, atau receipt. |
| Alasan | Produk memerlukan attribution konsisten tanpa mengganggu operasi atau artifact bisnis customer. |
| Alternatif yang dipertimbangkan | Tanpa signature; watermark fixed; watermark masuk ke output customer. |
| Dampak | Shell, storefront, template, visual regression, accessibility, forced-colors, dan public knowledge harus memeriksa presence tepat satu serta mencegah cross-brand label. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md) |

## DEC-013 — SagaDevs sebagai parent hub dan Preview-only release

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Arsitektur public hub dan deployment SagaDevs |
| Keputusan | SagaDevs menjadi parent product hub dan overview layanan. SagaBook, SagaView, serta Sagafin tetap memiliki landing page masing-masing. UI/UX Sprint 1–5 dideploy sebagai Vercel Preview lebih dulu; domain production tidak diubah sampai visual UAT disetujui. Showroom harus menggunakan capture dan workflow source produk, bukan fabricated demo. |
| Alasan | Product discovery membutuhkan satu pintu yang konsisten tanpa mencampur product landing, pricing, account, data, atau operational workflow lintas produk; Preview menutup risiko visual sebelum promotion production. |
| Alternatif yang dipertimbangkan | Satu landing gabungan untuk seluruh detail produk; fabricated interactive demo; langsung promote ke production tanpa Preview UAT. |
| Dampak | Navigation, showroom, CTA, content ownership, deployment gate, noindex, dan future Super Admin harus menjaga boundary public hub versus produk. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [Portfolio](docs/SAGA_PRODUCT_PORTFOLIO.md) |

## DEC-014 — SagaDevs memakai source-preserving visual refinement

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Batas perubahan visual SagaDevs |
| Keputusan | Source, original style, keluarga font, komposisi tujuh section, dan fitur interaktif SagaDevs harus dipertahankan. Refinement hanya mencakup typography, hierarchy, spacing, density, placement, responsive behavior, restrained motion, performance, dan accessibility navigation. Arah redesign `ui-ux-sprints-1-5-preview-v1` ditolak. Setelah Motion Polish v3 disetujui, logo 3D diperbesar 1,5× dan digeser kiri sebagai `source-preserving-hero-scale-v4`, lalu dipromosikan ke production `sagadevs.com`. |
| Alasan | Founder menginginkan website yang lebih rapi tanpa kehilangan karakter, fitur menarik, dan familiaritas source sebelumnya. |
| Alternatif yang dipertimbangkan | Information architecture baru, font utama baru, penghapusan fitur lama, dan promotion langsung ke production. |
| Dampak | Audit dan perubahan berikutnya wajib memakai source composition sebagai baseline; penghapusan atau redesign komponen memerlukan keputusan baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [SagaDevs Changelog](products/sagadevs/CHANGELOG.md) |

## DEC-015 — AOGTICVITY memakai Master Recap 17 Agustus 2026

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kontrak event dan identitas produk AOGTICVITY |
| Keputusan | Nama produk terbaru adalah AOGTICVITY. PDF Master Recap Lomba 17 Agustus 2026 menjadi sumber keseluruhan data aplikasi untuk 8 tim dan 10 lomba. Durasi boleh ditentukan sementara oleh sistem dan tetap dapat diubah admin; lomba dengan peserta seluruh tim tidak meminta input nama peserta. |
| Alasan | Public, player, leader, admin, live projection, dan backend harus memakai kontrak event yang sama tanpa memaksa data roster yang tidak dibutuhkan. |
| Alternatif yang dipertimbangkan | Mempertahankan konfigurasi lama enam tim; mengunci durasi sebelum konfirmasi; meminta nama peserta untuk setiap lomba seluruh tim. |
| Dampak | Master data, schedule builder, roster rule, result policy, UI semua role, migration, audit, UAT, dan knowledge publik memakai 8 tim/10 lomba. Klausa nama Tim 7/Tim 8 yang provisional diselesaikan oleh DEC-023; keputusan open lain tetap tercatat sebagai gap. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; klausa nama produk AOGTICVITY `DEPRECATED` oleh `DEC-047`, sedangkan kontrak master recap, 8 tim, 10 lomba, durasi editable, dan roster seluruh tim tetap berlaku |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-063 - Waktu hadir dan mulai AOGTIVITY sama-sama 14.30 WIB

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Penyamaan waktu hadir dan waktu mulai AOGTIVITY |
| Keputusan | Waktu hadir peserta dan waktu mulai acara sama-sama 14.30 WIB. Opening Tim & Yel-yel tetap 14.30, Sing Song 14.45, lomba pertama 15.00, dan estimasi selesai 19.20 WIB. |
| Alasan | Founder meminta label hadir dan mulai disederhanakan menjadi satu waktu yang sama. |
| Alternatif yang dipertimbangkan | Mempertahankan hadir 14.00; menggeser seluruh lomba; menghapus label hadir. |
| Dampak | Master data version 2026.6, hero, info, timeline, admin defaults, test, dan release memakai 14.30. Jadwal MySQL 10 lomba, roster, hasil, dan migration 027 tidak berubah. Security gate release sekaligus menutup advisory high dependency transitif dengan `nanoid` 3.3.17. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; runtime `f26da5e87dc8d56729befe5f9c538cd04038674d`, Hostinger `20260808T053225Z`, Vercel `dpl_CUkHFWTxh9jnuKWgW54Z1Np2h2Li`; human operational UAT tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-070 - Nama Lingkarin Angka dan penugasan panitia AOGTIVITY final

| Field | Isi |
|---|---|
| Tanggal | 2026-08-09 |
| Topik | Finalisasi nama lomba dan pembagian panitia AOGTIVITY |
| Keputusan | `Trenggiling Bolak-Balik` diganti menjadi `Lingkarin Angka` pada slot 17.30 selama 20 menit. Master tetap berisi 10 lomba dan memiliki 12 penugasan panitia; Suit Karton serta Voli Air dibagi Grup A/B, sedangkan Name Tag Ripped memakai satu penugasan tanpa grup. |
| Alasan | Founder mengonfirmasi daftar lomba dan panitia final sebagai overlay terbaru terhadap master recap. |
| Alternatif yang dipertimbangkan | Mempertahankan nama lama; menggabungkan panitia lomba paralel; membuat grup semu untuk Name Tag Ripped. |
| Dampak | Master data version, agenda, detail lomba, admin master data, validation, tests, release, dan legacy slug memakai kontrak baru. Jadwal MySQL, peserta, roster, hasil, standing, serta schema tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; runtime `c9a6702094ea36088c44040656f638d3db28da57`, Hostinger `20260809T075137Z`, Vercel `dpl_D1ubBCWkFs6ENp9CqPz5Fv25zwYE`; authenticated operational UAT tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-064 - Polling frame stabil dan paket hanya menagih tambahan kategori

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Stabilitas galeri dan kontrak harga paket SagaView |
| Keputusan | Polling cloud tidak boleh menerapkan ulang katalog ketika tenant, version, dan checksum identik; pilihan, urutan, URL aset, dan posisi scroll operator harus tetap. Original pertama termasuk paket dan bernilai gratis; frame kategori berbayar hanya menambahkan harga kategorinya. Extra Original berikutnya tetap mengikuti biaya extra print yang dikonfigurasi. |
| Alasan | Rekonsiliasi setiap polling membuat galeri tampak refresh dan pilihan berubah. Pricing lama mengenakan base print pada Special sehingga Original yang sudah termasuk paket ikut terhitung bayar. |
| Alternatif yang dipertimbangkan | Menghentikan polling; selalu rebuild katalog; memberi debounce visual saja; mengenakan base print untuk semua kategori; menjadikan Special pemakai credit paket. |
| Dampak | Runtime memakai fingerprint dan update in-place; package credit hanya untuk nonpremium; review membedakan surcharge kategori; paket stale direkonsiliasi saat simpan. Tidak ada migration atau perubahan artwork, foto customer, payment, subscription, device lease, SagaBook, maupun Saga Platform. |
| Pemberi keputusan | Andreas / founder melalui instruksi memperbaiki refresh frame dan menjadikan Original termasuk paket |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend `8fac4f681d45660da27afdd72ba36460d4bd6d0c` / `20260808134902-8fac4f6`, Studio `91d7bd7bf13d6dcf7d386431d652a9cf9f3cdefa` / `20260808134902-91d7bd7`; authenticated UAT tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-065 - Izin foto memakai empat tindakan dan galeri hanya untuk pilihan manual

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Penyederhanaan consent penggunaan foto pada akhir sesi SagaView |
| Keputusan | Setelah aksi lanjut pada Review, tampilkan empat tindakan: izinkan semua foto, hanya foto yang sudah dipilih, pilih beberapa foto secara manual, atau jangan gunakan foto. Semua tindakan selain pilihan manual harus menyimpan keputusan dan langsung melanjutkan penyelesaian sesi; hanya pilihan manual yang membuka wizard galeri. Tidak ada pilihan aktif otomatis. |
| Alasan | Wizard besar sejak awal menambah langkah, memuat banyak thumbnail yang belum dibutuhkan, dan membuat customer harus menyimpan ulang pilihan yang sebenarnya sudah eksplisit. |
| Alternatif yang dipertimbangkan | Mempertahankan radio + preview + satu tombol simpan; selalu membuka galeri; menghapus scope foto pilihan existing; memilih default otomatis. |
| Dampak | Dialog menjadi dua step choices/specific; persistence, policy snapshot, folder-copy, export, finish, permission, dan privacy boundary lama tetap dipakai. Tidak ada backend, migration, atau mutasi data lama. |
| Pemberi keputusan | Andreas / founder melalui instruksi alur pop-up empat tombol |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source S144 `76f06a8a59a1bb88ad140250faaf2db1a8f1ce51` aktif kumulatif melalui Studio S147 `df959ccbba2a69306d4aa50795b5aa35e875ffe43` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-066 - S147 memakai exact-production integration dan guarded release

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Jalur integrasi dan release metadata no-upload SagaView |
| Keputusan | S147 wajib dibentuk dari exact source production, melewati local gate, authenticated UAT terkontrol, backup/restore, candidate+rollback rehearsal, atomic switch, live rollback, dan independent post-verification. Deployment berhenti fail-closed bila lineage, sesi aktif, data preservation, service, security header, smoke, atau rollback tidak hijau. |
| Alasan | Backend SagaView berbagi repository dengan SagaBook sehingga merge/rebase ke `main` dapat membawa perubahan produk lain. Boundary privacy juga memerlukan bukti runtime, bukan hanya test kandidat. |
| Alternatif yang dipertimbangkan | Merge ke repository `main` bersama SagaBook; deploy kandidat langsung; menunda release setelah semua gate hijau. |
| Dampak | Backend `0cda8a09` dan Studio `df959ccb` dirilis sebagai `20260808225730-0cda8a0` dan `20260808225730-df959cc`; rollback S146 tersedia; SagaBook dan Saga Platform tidak berubah. |
| Pemberi keputusan | Andreas / founder melalui persetujuan seluruh rekomendasi laporan harian |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; `BUSINESS_READY` tetap terpisah |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-067 - Metadata sesi historis dipertahankan tanpa cleanup production

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Penanganan metadata lokal historis SagaView |
| Keputusan | Lakukan dry-run agregat read-only, jangan mengubah row historis, redaksi field lokal pada response, dan larang field lokal baru pada client serta server. Cleanup production memerlukan keputusan founder baru. |
| Alasan | Redaksi read-time dan larangan write baru menutup exposure tanpa risiko mengubah riwayat sesi atau memerlukan rollback data. |
| Alternatif yang dipertimbangkan | Rewrite seluruh row saat deploy; cleanup bertahap; mempertahankan response lama tanpa redaksi. |
| Dampak | Sebelum/sesudah release tetap 31 sesi, 31 row berlabel folder, 15 row dengan key foto lokal, 14 row dengan key output lokal, dan nol embedded image. Tidak ada mutasi database; response live aman dan payload baru ditolak 422. |
| Pemberi keputusan | Andreas / founder melalui persetujuan rekomendasi default aman |
| Status | `CONFIRMED / PRODUCTION_ACTIVATED`; cleanup historis tidak diotorisasi |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Data Privacy](docs/technical/DATA_PRIVACY.md) |

## DEC-068 - Authenticated UAT SagaView dijalankan terkontrol

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Lingkungan dan data untuk UAT authenticated SagaView |
| Keputusan | Gate pre-release memakai credential, tenant, device, session, dan database sintetis/disposable. Production hanya menerima smoke nonmutating atau negative yang tidak mengirim foto/path/customer data. UAT operator pada folder Windows nyata tetap gate terpisah sebelum `BUSINESS_READY`. |
| Alasan | Auth/session boundary perlu dibuktikan tanpa memakai data customer, mengonsumsi entitlement perangkat nyata, atau mengubah tenant production. |
| Alternatif yang dipertimbangkan | Memakai akun/customer production; hanya unit test tanpa request pipeline; menunda seluruh release sampai UAT manusia. |
| Dampak | Focused backend authenticated flow dan browser acceptance selesai dengan data sintetis; live API 422, CORS, health, dan exact asset diperiksa tanpa mutasi customer. |
| Pemberi keputusan | Andreas / founder melalui persetujuan rekomendasi authenticated UAT terkontrol |
| Status | `CONFIRMED`; UAT Windows nyata dan `BUSINESS_READY` masih `NEEDS CONFIRMATION` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-069 - Screening SagaView berikutnya memprioritaskan export dan recovery lokal

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Prioritas screening vertikal berikutnya SagaView |
| Keputusan | Setelah S147, prioritas pertama adalah export/output dan recovery/quota pada Windows: permission/write failure, disk full, partial write, crash recovery, safe cleanup, retry/cancel, dan network capture no-upload. |
| Alasan | Area local-first tersebut paling dekat dengan hasil customer dan masih `NOT_SCREENED`; kegagalan filesystem dapat merusak output atau membuat operator mengulang pekerjaan. |
| Alternatif yang dipertimbangkan | Melanjutkan fitur baru; screening entitlement Owner; price/payment hold lebih dulu. |
| Dampak | Slice berikutnya dimulai dari failure matrix dan acceptance criteria, menggunakan filesystem sementara/data sintetis, tanpa mengubah pricing, provider, atau produk lain. |
| Pemberi keputusan | Andreas / founder melalui persetujuan seluruh rekomendasi laporan harian |
| Status | `CONFIRMED / READY` |
| Dokumen terkait | [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md), [SagaView Product](products/sagaview/PRODUCT.md) |

## DEC-062 - Kategori Owner authoritative dan urutan dikelola Studio

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Sinkronisasi dan urutan kategori frame SagaView |
| Keputusan | Owner Console menjadi sumber tunggal nama, status aktif, dan harga kategori. Studio Console wajib mengganti katalog lokal secara exact dari konfigurasi Owner dan tidak boleh mengarang kategori fallback. Studio boleh mengubah urutan kategori melalui satu simpan tenant/device-scoped dengan exact active set dan revision guard; urutan tersimpan berlaku pada Owner, Studio, dan default kategori customer, dengan `Original` sebagai tie-break deterministik ketika urutan sama. Metadata legacy yang tidak dikenali dipetakan saat dibaca ke kategori aktif pertama tanpa memutasi frame lama. |
| Alasan | Fixture `Basic`/`Premium` dan cache lokal membuat kategori Owner dan Studio berbeda, sedangkan urutan kategori belum dapat disesuaikan operator. Fallback diam-diam juga berisiko mengubah kategori/harga tanpa keputusan Owner. |
| Alternatif yang dipertimbangkan | Mempertahankan fixture Studio; menyinkronkan hanya nama tanpa status/harga; menyimpan urutan hanya di localStorage; selalu memaksa `Original` pertama tanpa memberi kontrol Studio; memigrasikan seluruh metadata legacy saat deploy. |
| Dampak | Owner rename mempertahankan slug dan sort order; Studio General menambah drag/naik/turun/satu simpan; API order memakai device credential dan optimistic revision; customer membuka kategori aktif pertama sesuai urutan; paket/promo direkonsiliasi. Tidak ada migration atau perubahan artwork, slot, foto customer, payment, subscription, device lease, session, atau produk lain. |
| Pemberi keputusan | Andreas / founder melalui instruksi menyinkronkan kategori Owner/Studio dan memberi pengurutan di Studio Console |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend `e6a7f97941c6b93f88fbd90e09044a4e8fa699b6` / `20260808020447-e6a7f97`, Studio `c4f664fc5ad6ec1ac3ef992fc7a75b9e7205b666` / `20260808020447-c4f664f`; authenticated Owner/Studio UAT tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-061 - Manajemen banyak frame memakai satu penyimpanan transaksional

| Field | Isi |
|---|---|
| Tanggal | 2026-08-08 |
| Topik | Manajemen metadata banyak frame SagaView |
| Keputusan | Owner dapat memilih maksimal 100 frame, menyiapkan perubahan nama, kategori, harga default/khusus, dan status per frame atau secara serentak, lalu menyimpan seluruh perubahan dengan satu tombol `Simpan semua`. Seluruh patch wajib divalidasi dan diterapkan dalam satu transaksi; jika satu target invalid, lintas workspace, hilang, tidak berizin, atau snapshot stale, tidak ada perubahan parsial dan edit UI harus tetap tersedia untuk retry. |
| Alasan | Menyimpan satu per satu memperlambat operator dan meningkatkan risiko kategori, harga, nama, atau status antar-frame tidak konsisten. |
| Alternatif yang dipertimbangkan | Tetap memakai save per frame; hanya memperluas batch kategori; auto-save setiap field; menerima partial success dan meminta operator mencari item gagal. |
| Dampak | Owner Gallery menambah dialog multi-frame dan satu CTA final; backend menambah endpoint metadata tenant-scoped dengan optimistic lock catalog/workspace; master, draft aktif, dan published aktif tetap mengikuti `DEC-057`. Artwork, slot, foto customer, pricing paket, payment, subscription, device, dan session tidak berubah. |
| Pemberi keputusan | Andreas / founder melalui instruksi menambahkan manajemen keseluruhan frame dan satu tombol save |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `369f01140e3db0144d189fb781acdad91cfe3fc5`; release `20260807173443-369f011`; authenticated Owner UAT tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-060 - Identitas administratif SagaView berasal dari workspace aktivasi

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Identitas workspace Studio dan akses Changelog Owner |
| Keputusan | Label akun/workspace administratif Studio wajib berasal dari konfigurasi aktivasi server-authoritative. `brand.studioName` tetap dapat diedit sebagai identitas visual, tetapi tidak boleh menentukan workspace aktif. Owner Dashboard wajib menyediakan Changelog pada kelompok `AKUN`, dan `Cloud vN` dijelaskan sebagai revision katalog per workspace, bukan versi aplikasi atau jumlah frame. |
| Alasan | Nama brand lama pada satu workspace membuat device yang benar terlihat seperti membuka akun lain. Changelog Owner juga hilang dari navigasi, sementara perbedaan angka Cloud antar-akun menimbulkan kesan versi aplikasi tidak sinkron. |
| Alternatif yang dipertimbangkan | Menyamakan brand secara manual setiap kali aktivasi; memakai nama brand sebagai identitas administratif; hanya menampilkan Changelog pada Studio; memaksa revision Cloud sama global untuk semua workspace. |
| Dampak | Studio shell memisahkan workspace server-authoritative dari brand editable; Owner menambah route/menu/data release Changelog; repair data hanya boleh exact-match, idempoten, transactional, dan audited. Revision katalog tetap tenant-scoped. Tidak ada perubahan pricing, entitlement, payment, device lease, session, foto customer, atau schema. |
| Pemberi keputusan | Andreas / founder melalui instruksi memperbaiki akun target dan memulihkan Changelog Dashboard |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend `c2a05076` / `20260807161105-c2a0507`, Studio `10bcaaae` / `20260807161105-10bcaaa`; authenticated Owner/Studio UAT tetap residual sebelum `BUSINESS_READY` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-059 - Durasi akhir Lomba 9, Lomba 10, dan Awarding AOGTIVITY

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Finalisasi durasi tiga blok terakhir AOGTIVITY 17 Agustus 2026 |
| Keputusan | Lomba 9/Voli Air berdurasi 30 menit pada 18.05–18.35, Lomba 10/Name Tag Ripped berdurasi 30 menit pada 18.35–19.05, dan Awarding & Closing berdurasi 15 menit pada 19.05–19.20. Ketiga durasi confirmed, tetapi tetap dapat diedit admin untuk recovery kondisi lapangan. |
| Alasan | Founder meminta ketiga durasi dipersingkat dan seluruh susunan acara dihitung ulang. |
| Alternatif yang dipertimbangkan | Mempertahankan 60/45/30 menit; mengurangi durasi tanpa menggeser blok berikutnya; mengubah jam mulai acara. |
| Dampak | Estimasi selesai berubah dari 20.20 menjadi 19.20 WIB. Master data version 2026.5, schedule builder, UI semua role, migration MySQL 027, audit, tests, release, dan rollback memakai kontrak yang sama tanpa mengubah peserta, hasil, atau assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; runtime `d97547acf92d68ad8567401858b76e27adbd0f56`, Hostinger `20260807T161422Z`, Vercel `dpl_4oWi3Yt4x8BsGKDmMbBcA36A9JBP`, migration 027; human operational UAT tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-058 - Rundown AOGTIVITY dimulai pukul 14.30 WIB

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Perubahan waktu operasional AOGTIVITY 17 Agustus 2026 |
| Keputusan | Registrasi ulang dan briefing dimulai 14.00 WIB. Acara dimulai 14.30 WIB dengan Opening Tim & Yel-yel 15 menit, Sing Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding & Closing. Durasi lomba dan penutupan tetap editable/provisional sampai dikunci panitia. |
| Alasan | Founder mengubah jam mulai acara menjadi 14.30 dan meminta seluruh susunan dihitung ulang sesuai durasi yang sudah ada. |
| Alternatif yang dipertimbangkan | Mempertahankan rundown 12.00; memotong durasi agar selesai pada jam lama; menggeser hanya opening tanpa menggeser seluruh lomba. |
| Dampak | Master data version 2026.4, landing, agenda publik, schedule builder, admin warning, reload lintas perangkat, timeline, test, dan migration MySQL 026 memakai kontrak yang sama. Jam provisional menghasilkan lomba pertama 15.00, Break 16.55, sesi kedua 17.10, Awarding & Closing 19.50, dan estimasi selesai 20.20 WIB. Migration mengarsipkan jadwal migration 025, menaikkan schedule version, menulis audit, dan menyediakan rollback tanpa mengubah peserta, hasil, atau assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` untuk struktur dua sesi; waktu hadir 14.00 `DEPRECATED` oleh `DEC-063` dan klausa durasi provisional `DEPRECATED` oleh `DEC-059`. Release historis aktif melalui runtime `6ec56e5b7e6859581d5a678a21b27971f10a5c14`, Hostinger `20260807T154156Z`, Vercel `dpl_6hKz6JJ2s2vogcLXQLFEBNEZuWEF`, migration 026 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-057 - Kategori frame memakai harga default kategori kecuali ada override eksplisit

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Sinkronisasi kategori dan harga frame SagaView |
| Keputusan | Perubahan kategori single maupun batch wajib menyinkronkan master, draft aktif, dan published aktif secara transactional. Batch kategori menghapus override harga per-frame lama sehingga harga efektif mengikuti default kategori baru; override cabang yang memang eksplisit tetap berlaku. Setiap perubahan berhasil wajib menaikkan versi/checksum katalog dan revision workspace. |
| Alasan | Kategori published yang stale serta override harga lama membuat kategori dan harga di Owner/Studio berbeda setelah batch edit. Katalog perlu sinyal versi baru agar konsumen tidak memakai konfigurasi lama. |
| Alternatif yang dipertimbangkan | Hanya mengubah master; mempertahankan seluruh override lama; memaksa operator membersihkan harga satu per satu; memperbaiki data tanpa menutup jalur tulis. |
| Dampak | Service kategori, UI Galeri Frame, response audit, cache/catalog invalidation, recovery data terarah, test integrasi, release, dan UAT wajib mengikuti kontrak ini. Missing/cross-workspace membatalkan transaksi tanpa perubahan parsial. |
| Pemberi keputusan | Andreas / founder melalui instruksi memperbaiki kategori dan harga yang tidak sinkron |
| Status | `CONFIRMED`; production backend `f05c919a` / `20260807045115-f05c919`, Studio `05c5fda0` / `20260807045115-05c5fda`; authenticated Owner UAT masih residual sebelum `BUSINESS_READY`. |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Feature Coverage Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md) |

## DEC-056 - Batch Import memiliki aksi selesai dan Galeri Frame mendukung batch kategori

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Penyelesaian Batch Import dan pengelolaan kategori banyak frame SagaView |
| Keputusan | Setelah batch import completed, failed, atau cancelled, Owner harus mendapat ringkasan dan tombol `Selesai` yang selalu terlihat; Escape dan tombol tutup juga harus dapat menutup dialog. Checkbox Galeri Frame digunakan untuk export atau mengubah kategori 1-100 frame terpilih ke kategori aktif tanpa membuka tiap frame. Batch kategori harus transactional, tenant+membership scoped, dan membatalkan seluruh aksi bila satu frame tidak tersedia atau lintas workspace. |
| Alasan | Operator tidak boleh terjebak pada dialog import panjang dan tidak perlu membuka puluhan frame satu per satu hanya untuk menyamakan kategori. |
| Alternatif yang dipertimbangkan | Hanya mengandalkan tombol tutup di header; auto-close tanpa ringkasan; edit kategori satu per satu; update parsial ketika sebagian frame invalid. |
| Dampak | Owner Console menambah footer status akhir, close via Escape, pilihan kategori massal, serta endpoint metadata tenant-scoped. Tidak ada perubahan artwork, slot, foto customer, pricing, payment, subscription, device/session, atau migration. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `f515dd7a1066b2c6b5244bb1f5bc48d306430768` / `20260807023502-f515dd7`; Studio source/release `05c5fda07a342d2977d8e6e3d836adb17a84605b` / `20260807023502-05c5fda`; authenticated Owner UAT tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-055 - Owner dan Studio SagaView wajib memakai workspace yang sama

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Penyelarasan workspace Owner Console dan Studio Console SagaView |
| Keputusan | Tenant yang dikonfirmasi server menjadi sumber request Owner sebelum API pertama. Link Studio wajib membawa workspace target dan hasil aktivasi wajib cocok. Saat berpindah workspace, Studio mengarsipkan state dan metadata runtime lama per workspace, membersihkan state aktif lintas tenant, memulihkan target bila tersedia, lalu bootstrap dan reload. |
| Alasan | Komputer yang sebelumnya membuka studio lain tidak boleh menampilkan nama, pengaturan, katalog, antrean, atau referensi sesi workspace lama saat Owner membuka Studio Console workspace target. |
| Alternatif yang dipertimbangkan | Mempercayai tenant URL/session storage; memakai satu local state global; hanya mengganti nama studio; selalu menghapus seluruh state tanpa arsip per workspace. |
| Dampak | Owner launcher dan response API memperoleh verifikasi workspace; Studio state menjadi tenant-scoped. Tidak ada migration atau perubahan pricing, entitlement, payment, device/session, foto customer, maupun data tenant. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `85ec0f64f08d7f80769480e0b7217cad55dd1591` / `20260806224422-85ec0f6`; Studio source/release `07454264ad3c95d5fb5157135a333f6139bef054` / `20260806224441-0745426`; Owner UAT dua workspace nyata tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-054 - Batch import SagaView memvalidasi workspace sebelum memilih file

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Pemulihan context tenant dan session pada Batch Import SagaView |
| Keputusan | Pemilih file dinonaktifkan sampai server memvalidasi tenant, membership, role staff, dan subscription untuk tab aktif. Target workspace wajib terlihat. URL/local storage tidak boleh mengalahkan server-auth tenant; context stale hanya boleh dipulihkan dalam session dan tenant yang sama. Preflight dan create harus terikat context tervalidasi, resume key harus tenant+membership scoped, dan perubahan context saat upload berhenti fail-closed dengan error bertipe serta pilihan file aman dipertahankan. |
| Alasan | Operator tidak boleh memilih 50-100 file lalu baru menerima pesan context generik, dan stale tab tidak boleh berisiko mengarahkan import atau resume ke tenant lain. |
| Alternatif yang dipertimbangkan | Validasi hanya setelah file dipilih; mempercayai URL/local storage; selalu memaksa login ulang; otomatis berpindah tenant tanpa konfirmasi server. |
| Dampak | Dua endpoint context dan middleware validasi ditambahkan tanpa migration. Pricing, entitlement, payment, device/session, foto customer, serta data tenant tidak berubah. Kandidat S133 tetap terpisah dan wajib direbase ke atas S134 sebelum deploy. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `902e5dd81919168b1978c8bfbcd62303920184a6` / `20260806212915-902e5dd`; Studio rebuild `20260806213012-3b66f8d`; authenticated Owner UAT 50-100 file nyata pada dua akun masih residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-053 - Rundown AOGTIVITY dimulai pukul 12.00 WIB dalam dua sesi lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Struktur waktu dan urutan operasional AOGTIVITY 17 Agustus 2026 |
| Keputusan | Registrasi ulang dan briefing dimulai 11.30 WIB. Acara dimulai 12.00 WIB dengan Opening Tim & Yel-yel 15 menit, Sing Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding & Closing. Durasi lomba dan penutupan tetap editable/provisional sampai dikunci panitia. |
| Alasan | Founder memerlukan alur acara yang dimulai lebih awal, mudah dipahami peserta, dan memiliki jeda eksplisit di antara dua sesi berisi masing-masing lima lomba. |
| Alternatif yang dipertimbangkan | Mempertahankan mulai 13.00; menaruh seluruh 10 lomba tanpa break; mempertahankan Makan Bersama sebagai agenda setelah seluruh lomba. |
| Dampak | Master data version 2026.3, landing, agenda publik, schedule builder, admin warning, reload lintas perangkat, timeline, test, dan migration MySQL 025 memakai kontrak yang sama. Jam provisional menghasilkan Awarding & Closing 17.20 dan estimasi selesai 17.50 WIB. Migration mengarsipkan jam lama, menaikkan schedule version, menulis audit, dan menyediakan rollback tanpa mengubah assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` untuk kontrak waktu oleh `DEC-058`; release historis tetap `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada runtime `1dc0532991bd8bf70ba3db906880581b34bd5329`, Hostinger `20260806T225940Z`, Vercel `dpl_7HfPz4QWhcAJqiajAei9RHZyXhk7`, dan migration 025 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-052 - Hierarchy visual AOGTIVITY mengikuti poster event founder

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Identitas event dan visual system AOGTIVITY |
| Keputusan | AOGTIVITY menjadi nama acara utama, 17 Agustus 2026 menjadi tanggal resmi, dan Army of God Madiun menjadi identitas penyelenggara. Referensi poster diterjemahkan menjadi lime, navy, magenta, halftone, petir, spark, koin, dan handheld-console frame tanpa mengganti Plus Jakarta Sans atau kontrak mobile-first. |
| Alasan | Visual aplikasi perlu konsisten dengan materi acara resmi dan tidak lagi menampilkan Pixel Matchday sebagai seolah-olah nama event. |
| Alternatif yang dipertimbangkan | Mempertahankan header Pixel Matchday; menyalin poster sebagai background raster; mengganti font utama dengan pixel font. |
| Dampak | Landing/header, theme CSS, asset pipeline, dan regression visual berubah; role, auth, API, data, domain, dan infrastructure identifier tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; visual source `9543450696760666b9ec50a19f918c3381c5d9cf` aktif secara kumulatif melalui runtime `6ec56e5b7e6859581d5a678a21b27971f10a5c14`, Hostinger `20260807T154156Z`, dan Vercel `dpl_6hKz6JJ2s2vogcLXQLFEBNEZuWEF`; visual UAT founder tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-051 - Batch import SagaView memiliki preflight, duplicate policy, dan control center

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Operasional lanjutan batch import 50-100 template frame SagaView |
| Keputusan | Sebelum upload, Owner harus melihat preflight kuota frame aktif, storage, dan estimasi publish/draft. Duplikat checksum+geometri harus dapat dilewati, dibuat copy, atau disimpan sebagai draft review. Batch harus memiliki riwayat, notifikasi selesai, cancel aman, laporan CSV, serta bulk retry gagal, publish draft, ganti kategori, dan remove draft/item gagal. Semua kontrol tetap tenant+membership scoped dan hasil yang sudah published/draft tidak boleh terhapus saat cancel. |
| Alasan | Resumable upload S121 sudah mengatasi putus jaringan, tetapi operator masih membutuhkan prediksi kapasitas, keputusan duplikat, recovery pasca-import, dan pengelolaan hasil puluhan frame tanpa membuka editor satu per satu. |
| Alternatif yang dipertimbangkan | Mempertahankan S121 tanpa control center; selalu skip duplikat; selalu auto-publish; menyediakan CSV saja; memindahkan seluruh processing ke browser. |
| Dampak | Backend menambah migration aditif untuk duplicate policy, counter skipped/removed, acknowledgement, fingerprint, dan relasi duplikat; tiga endpoint kontrol ditambahkan. Frontend menambah preflight, history, notification, CSV, selection, dan bulk actions. Pricing, Growth 50/Pro 100, payment, device/session, foto customer, dan source Studio tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source/release `b6af5797fb6fdcea499e727ee2bdb1e4dc666165` / `20260806200400-b6af579`; rollback S121 dipertahankan; authenticated Owner UAT import 50-100 file nyata pada dua akun masih residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-050 - Batch import SagaView memakai upload resumable dan antrean server

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Keamanan dan ketahanan batch import 50-100 template frame SagaView |
| Keputusan | Batch import menerima maksimal 100 `.sagaview-frame` atau satu ZIP. Upload harus memakai chunk, checksum, retry, dan resume; server menyimpan batch/item secara durable, memprosesnya serial melalui queue, serta memperlihatkan hasil per item. File invalid tidak membatalkan item valid, dan publish yang ditolak mempertahankan draft. ZIP harus fail-closed terhadap traversal, folder, entry non-template/duplikat, expanded size berlebih, dan compression bomb. |
| Alasan | Import 50-100 frame tidak boleh bergantung pada satu request/browser session atau mengalami kegagalan jaringan serupa export ZIP sebelumnya. Operator juga harus dapat melanjutkan pekerjaan tanpa mengulang seluruh batch. |
| Alternatif yang dipertimbangkan | Mempertahankan proses sequential di browser; satu upload/request besar tanpa resume; all-or-nothing import; auto-publish tanpa draft preservation; menaikkan timeout server saja. |
| Dampak | Backend menambah schema batch/item additive, endpoint upload/status tenant-scoped, queue serial, TTL purge, dan rate limit. Browser mengirim chunk 4 MB dengan SHA-256 dan maksimal lima retry otomatis. Growth tetap 50, Pro tetap 100; pricing, payment, device/session, foto customer, dan source Studio tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `e850d6c7542c10e97309ca045ebe2f700a488ebf`, backend release `20260806133407-e850d6c`, Studio release `20260806133407-3b66f8d`; authenticated Owner UAT 50-100 file nyata dan dua akun tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-049 - ZIP bulk export SagaView disiapkan server-side

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Stabilitas export ZIP Galeri Frame besar |
| Keputusan | Satu atau dua frame tetap diunduh langsung. Tiga sampai 100 frame disiapkan sebagai satu ZIP tenant-neutral pada private temporary storage backend, lalu browser melakukan satu native download. Export ID harus deterministik agar retry idempotent, paket berumur 30 menit, akses tenant-scoped, dan satu kegagalan membatalkan seluruh arsip. |
| Alasan | ZIP client-side berhenti pada 39 dari 51 frame dengan `Network Error` karena browser memegang artwork dan paket besar di memori sekaligus. Server-side preparation mengurangi tekanan RAM browser dan tetap menghasilkan satu download. |
| Alternatif yang dipertimbangkan | Memperbesar timeout client-side; memecah menjadi beberapa ZIP; menurunkan batas pilihan; mempertahankan client-side ZIP dengan concurrency lebih kecil. |
| Dampak | Backend menambah endpoint authenticated tenant-scoped untuk prepare/download dan scheduler purge. Arsip tetap kompatibel dengan batch import, tenant-neutral, tanpa foto customer. Pricing, Growth 50/Pro 100, payment, device/session, schema, dan Studio source tidak berubah. Klausa `DEC-048` bahwa ZIP dibuat client-side menjadi deprecated; threshold satu-dua versus tiga atau lebih tetap berlaku sampai batas 100. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `ea432e977d02ada8f4b7289bfbd43c6e56941f9a`, backend release `20260806122125-ea432e9`, Studio release `20260806122126-3b66f8d`, rollback `20260806111019-555682b` / `20260806111020-3b66f8d`; authenticated Owner UAT 51 frame nyata, retry, dan dua akun tetap residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-048 - Tiga atau lebih bulk export SagaView dikemas sebagai ZIP

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Threshold packaging bulk export Galeri Frame SagaView |
| Keputusan | Satu atau dua frame terpilih tetap diunduh sebagai file `.sagaview-frame` terpisah. Tiga frame atau lebih dikemas menjadi satu ZIP client-side yang berisi file template tenant-neutral yang sama. ZIP hanya boleh diunduh setelah seluruh template berhasil disiapkan; kegagalan satu template membatalkan seluruh arsip tanpa partial download. |
| Alasan | Founder ingin export puluhan frame hanya memicu satu download agar browser tidak membanjiri operator dengan banyak file atau permintaan izin multiple-download. Threshold tiga mempertahankan alur sederhana untuk satu atau dua template. |
| Alternatif yang dipertimbangkan | Seluruh jumlah tetap direct download; dua atau lebih selalu ZIP; format bundle multi-template baru; ZIP server-side. |
| Dampak | Tombol/helper text Galeri Frame mengikuti jumlah pilihan; schema `.sagaview-frame`, sanitasi tenant/customer, dan import tetap kompatibel. ZIP dibuat di browser tanpa route, migration, pricing, entitlement, payment, device/session, foto customer, atau perubahan Studio source. Klausa DEC-044 bahwa setiap pilihan selalu diunduh terpisah menjadi deprecated, sementara selection/filter/export massal lainnya tetap berlaku. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / HISTORICAL PRODUCTION`; source `555682bb749fc2c97a16172bbf09de2b6d8026d4`, backend release `20260806111019-555682b`; klausa ZIP dibuat client-side `DEPRECATED` oleh `DEC-049`, sedangkan threshold satu-dua direct download dan tiga atau lebih ZIP tetap berlaku sampai batas 100 |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-047 - Nama produk menjadi AOGTIVITY dengan domain tetap

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Rebrand produk event dan batas compatibility identifier |
| Keputusan | Nama produk kanonik berubah dari AOGTICVITY menjadi **AOGTIVITY** untuk seluruh surface yang aman diubah. Domain root dan role tetap memakai `aogticvities.fun`. Slug repository/path deploy, environment variable, cookie/session prefix, database, service, header, cache prefix, dan identifier integrasi `aogticvity` dipertahankan agar sesi, data, integrasi, dan rollback tidak terputus. |
| Alasan | Founder meminta satu nama produk baru di seluruh pengalaman pengguna tanpa mengganti domain atau memaksakan migrasi identifier teknis yang berisiko. |
| Alternatif yang dipertimbangkan | Mengganti domain; mengganti semua identifier teknis sekaligus; hanya mengganti logo; mempertahankan nama lama. |
| Dampak | UI, metadata, PWA, aset, pesan WhatsApp baru, dokumentasi aktif, Better Auth, dan issuer TOTP baru memakai AOGTIVITY. Label TOTP yang telah tersimpan pada authenticator pengguna tidak dapat diubah dari server, tetapi kode lama tetap valid. Histori release mempertahankan nama lama sebagai provenance. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source runtime `e4c217b36a215b94922785f97a14b828ff87826a`, Hostinger `20260806T093015Z`, Vercel `dpl_2ZfuhtLs4v8crJ1g3NnRyv8TSzU9`; business readiness keseluruhan tetap `BLOCKED` |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-046 - Chatbot SagaDev product-scoped dan ditingkatkan melalui guarded knowledge evaluation

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Batas knowledge, gaya respons, dan peningkatan berkala chatbot SagaDev |
| Keputusan | Chatbot hanya membantu informasi produk SagaDev yang tersedia. Jawaban harus natural, hangat, ringkas, grounded pada dokumen `CONFIRMED`, membedakan production/candidate/roadmap, dan meminta maksimal satu klarifikasi bila pertanyaan masih mungkin terkait produk. Topik yang benar-benar di luar SagaDev dijawab dengan fallback natural yang mengarahkan kembali ke SagaBook, SagaView, atau produk SagaDev lain. Peningkatan per jam berarti knowledge sync, prompt/retrieval/RAG evaluation, drift monitoring, dan guarded rollout; bukan fine-tuning bobot otomatis. |
| Alasan | Founder ingin AI makin akurat mengikuti perubahan produk tanpa menjawab topik umum, mengarang status, mencampur produk, atau membocorkan data tenant/customer. |
| Alternatif yang dipertimbangkan | Menjawab seluruh topik umum; menganggap semua unknown sebagai knowledge gap; fine-tuning otomatis tiap jam; mengunggah dokumen/customer chat privat ke provider; menyatukan SagaBook/SagaView. |
| Dampak | Inventory surface/model/provider wajib didahulukan. Corpus hanya memakai knowledge canonical public-safe. Unknown produk tetap dapat menjadi knowledge gap/human handoff, sedangkan out-of-scope tidak membuat tiket palsu. Pertanyaan account-specific wajib melalui API terautentikasi/terotorisasi. Prompt injection, cross-tenant, secret, PII, payment, dan foto customer fail-closed. Promotion wajib memakai eval, backup/rollback, smoke, dan status AI terpisah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; implementasi awal source `73de3f5541006dbe9eeed0abc00a39fbe5989998` `AI_EVAL_VALIDATED / AI_KNOWLEDGE_NOT_PROMOTED`, production belum berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-045 - Galeri Frame SagaView mendukung batch import dan auto-publish

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Import puluhan portable frame template tanpa membuka editor satu per satu |
| Keputusan | Owner dapat membuka `Batch import` langsung dari Galeri Frame, drag-and-drop atau memilih sampai 100 file `.sagaview-frame`, lalu sistem memvalidasi, membuat draft, dan mencoba mempublish setiap template valid secara berurutan. Kategori dicocokkan pada akun tujuan atau fallback ke kategori pertama/Basic dan tetap dapat diedit setelah import. |
| Alasan | Pemindahan katalog 40-50 frame antar akun tidak boleh mengharuskan operator masuk ke halaman editor dan mengimpor satu file demi satu file. |
| Alternatif yang dipertimbangkan | Mempertahankan import satu file; menerima hanya ZIP/bundle baru; menghentikan seluruh batch pada error pertama; membuang draft ketika publish gagal; mengabaikan category/key collision. |
| Dampak | Galeri memperoleh modal drag-and-drop, batas 100 file, progress dan status per file, strict decoder template v1, collision-safe key, category matching/fallback, sequential draft/publish, invalid-file continuation, serta draft preservation saat publish ditolak. Backend tetap mengotorisasi permission, entitlement/limit aktif, storage, dan publish. Tidak ada route, migration, pricing, payment, device/session, foto customer, atau Studio runtime baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `1657c16ca3e05dd442db66ad11177f13edae1d37`, backend release `20260806092647-1657c16`, Studio release `20260806092648-3b66f8d`, rollback `20260806071707-7397954` / `20260806071733-3b66f8d`; authenticated Owner UAT 40-100 file nyata pada dua akun masih residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-044 - Galeri Frame SagaView mendukung pilihan dan export massal

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Pemilihan banyak frame pada Galeri Frame SagaView |
| Keputusan | Owner dapat memilih frame satu per satu atau memakai `Pilih semua hasil` untuk seluruh frame yang sedang tampil sesuai pencarian/filter, lalu mengekspor semua pilihan. Pilihan di luar filter tetap dipertahankan sampai dikosongkan. Setiap frame tetap diekspor sebagai file `.sagaview-frame` terpisah agar kompatibel dengan import yang sudah aktif. |
| Alasan | Memindahkan keseluruhan atau sebagian besar katalog tidak boleh mengharuskan operator membuka dan mengekspor frame satu per satu. |
| Alternatif yang dipertimbangkan | Export per frame saja; select-all selalu seluruh katalog tanpa mengikuti filter; membuat format bundle baru yang belum kompatibel dengan import; mengekspor semua otomatis tanpa review pilihan. |
| Dampak | Galeri Frame memperoleh checkbox per kartu, select-all filtered results, partial state, jumlah pilihan, clear, dan sequential batch download. Jalur validasi serta sanitasi template versi 1 dipakai ulang; API, migration, pricing, entitlement, payment, device/session, foto customer, dan Studio runtime tidak berubah. Browser dapat meminta izin beberapa download. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `73979542ceeb8fc11e658c7d27346ca983dc163f`, backend release `20260806071707-7397954`, Studio release `20260806071733-3b66f8d`; klausa setiap frame selalu direct download `DEPRECATED` oleh `DEC-048`, sedangkan selection/filter/export massal lainnya tetap berlaku; authenticated Owner UAT tetap residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-016 — Deploy public prototype AOGTICVITY ke Vercel

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Public prototype release AOGTICVITY |
| Keputusan | Deploy seluruh perubahan AOGTICVITY yang sudah lulus gate lebih dulu ke domain public Vercel agar dapat dicoba. Deployment publik tidak mengaktifkan MySQL/auth production yang belum aman. |
| Alasan | Founder membutuhkan URL yang dapat dibuka dari mana saja sebelum finalisasi auth, persistence multi-device, custom domain, dan UAT. |
| Alternatif yang dipertimbangkan | Menunggu seluruh backend production selesai; mempertahankan hanya dark staging internal; mempromosikan deployment lama dengan provenance yang salah. |
| Dampak | Public prototype tersedia di `https://olimpiade-kemerdekaan.vercel.app`; delivery menjadi `PRODUCTION_DEPLOYED`, tetapi activation tetap `NOT_PRODUCTION_ACTIVATED`. UI wajib tetap melabeli prototype dan API database fail-closed. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` untuk klausa auth belum aktif oleh DEC-019; keputusan memakai public Vercel tetap berlaku sebagai histori delivery |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-017 — Fonnte tenant routing dan persiapan auto-trial SagaDev

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | WhatsApp tenant routing dan signup trial SagaBook/SagaView |
| Keputusan | Implementasikan secara lokal routing Fonnte SagaBook dengan SagaDev-managed sebagai default, opsi token Fonnte milik studio, dan manual-only. Implementasikan secara lokal signup SagaBook/SagaView yang dapat mengaktifkan trial 7 hari tanpa approval owner atau verifikasi email. Deployment production auto-trial ditahan sampai ada approval baru. |
| Alasan | Studio memerlukan default WhatsApp yang siap dipakai tanpa kehilangan opsi membawa provider sendiri; calon pengguna juga membutuhkan onboarding trial yang lebih cepat, tetapi perubahan identity/provisioning harus tetap melewati release gate terpisah. |
| Alternatif yang dipertimbangkan | Satu credential global tanpa override; mewajibkan credential setiap studio; mempertahankan approval manual untuk semua signup; langsung mengaktifkan auto-trial di production. |
| Dampak | Routing credential harus tenant-scoped dan encrypted; delivery menyimpan sender snapshot; owner setting dan canary wajib diuji. Auto-trial harus idempotent, product-scoped, tepat 7 hari, tidak membuat tagihan, dan login tetap fail-closed sampai provisioning ready. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; production S71 `DEPLOYED` dan `ACTIVATED` pada release `20260731181921-378bcdf`; production S72 `HOLD` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Gaps](GAPS.md) |

## DEC-018 — AOGTICVITY memakai festival motion system

| Field | Isi |
|---|---|
| Tanggal | 2026-08-01 |
| Topik | Arah UI/UX dan motion AOGTICVITY |
| Keputusan | Buat keseluruhan UI/UX AOGTICVITY lebih fun dan hidup menggunakan public animation library yang layak, tetapi pertahankan mobile-first canvas, Plus Jakarta Sans, Feather-style icons, serta fungsi yang sudah ditentukan. Motion harus menarik tanpa membuat hierarchy, font, icon, spacing, atau workflow operator kembali berantakan. |
| Alasan | Founder menilai UI sebelumnya terlalu statis dan membutuhkan feedback/karakter yang lebih kuat setelah masalah hierarchy mobile dibereskan. |
| Alternatif yang dipertimbangkan | CSS animation saja; animasi dekoratif berat; mengganti font/icon/design system; redesign desktop lebar. |
| Dampak | Motion for React menjadi layer route/state/gesture/layout; canvas-confetti dibatasi ke success bernilai tinggi; reduced-motion wajib; visual QA mobile 400 px dan desktop mobile-canvas menjadi release gate. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production release terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-019 - AOGTICVITY memakai password auth tanpa MFA wajib di Vercel

| Field | Isi |
|---|---|
| Tanggal | 2026-08-01 |
| Topik | Public identity architecture dan kebijakan MFA AOGTICVITY |
| Keputusan | AOGTICVITY tetap memakai public Vercel dan admin MFA tidak wajib. Password auth harus tetap database-backed dengan forced bootstrap change, HttpOnly session, expiry, rate limit, RBAC, suspend/revoke, dan audit. Vercel memakai guarded HTTPS proxy ke backend Hostinger; MySQL tidak boleh dibuka ke internet. |
| Alasan | Founder menginginkan akses yang lebih sederhana dan tetap dapat dicoba melalui URL Vercel tanpa mengorbankan session server-side atau membuka database publik. |
| Alternatif yang dipertimbangkan | Tetap mewajibkan TOTP; membiarkan Vercel sebagai localStorage prototype; membuka MySQL langsung ke dynamic Vercel egress. |
| Dampak | MFA menjadi opsional. Public login dan database session aktif melalui Vercel; owner password claim telah diselesaikan pada release registrasi 2 Agustus 2026. Activation keseluruhan tetap menunggu operations UAT dan physical rehearsal. Klausa auth belum aktif pada DEC-016 digantikan oleh keputusan ini. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-020 - AOGTICVITY menghapus participant demo dan mengaktifkan registrasi MySQL

| Field | Isi |
|---|---|
| Tanggal | 2026-08-02 |
| Topik | Sumber data pendaftaran dan kesiapan trial AOGTICVITY |
| Keputusan | Hapus data participant demo dan localStorage registration. Finalisasi public registration agar submit tersimpan pada MySQL, muncul pada authenticated admin verification desk, dan dapat segera dipakai mendaftar. Canonical event master tidak dihapus. |
| Alasan | Form browser-local dan 80 participant fixture tidak dapat dipakai lintas perangkat atau dianggap sebagai pendaftaran nyata. |
| Alternatif yang dipertimbangkan | Mempertahankan demo sambil menunggu seluruh event workflow selesai; mengimpor fixture ke production; membuka database langsung dari Vercel. |
| Dampak | Registrasi memakai server validation, consent, anti-bot, rate limit, idempotency, receipt, transaksi, RBAC, optimistic concurrency, dan audit. Auth dan registration menjadi `PRODUCTION_ACTIVATED`; activation produk keseluruhan tetap menunggu rehearsal operasi hari-H. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-021 - AOGTICVITY mengikat link dan dashboard ke role admin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-02 |
| Topik | Assignment role, navigasi, dan scope lomba AOGTICVITY |
| Keputusan | Admin menetapkan role akun dan tim leader. Pengguna tidak memilih role; setelah login server mengarahkan akun ke home kanonik admin, operator, leader, atau player. Leader hanya mengelola timnya, player hanya membaca profil/tim/penugasan terhubung, dan operator tidak memperoleh menu konfigurasi admin. |
| Alasan | Role berbasis URL atau pilihan pengguna berisiko membuka workspace yang salah dan membuat alur hari-H membingungkan. |
| Alternatif yang dipertimbangkan | Role selector setelah login; satu dashboard admin bersama untuk admin/operator; PIN tim leader; hanya menyembunyikan menu tanpa enforcement server. |
| Dampak | Route dan API memakai session/database sebagai sumber role. Perubahan assignment mencabut session lama. Roster perwakilan dan status lomba menjadi persisten, versioned, idempotent, permission-scoped, dan diaudit. UAT role nyata serta rehearsal multi-device tetap wajib sebelum business-ready. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi, authenticated role UAT masih menunggu |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-022 - AOGTICVITY memakai taxonomy komunitas Teen dan Youth

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Kategori utama dan subcategory pendaftaran AOGTICVITY |
| Keputusan | Hapus kategori demo dari pendaftaran baru. Kategori final adalah `TEEN` dengan `CG teen 1` sampai `CG teen 6`, serta `SOUTH, WEST, CENTRAL` dengan `CG youth 1` sampai `CG youth 8`. |
| Alasan | Form dan operasi peserta harus memakai struktur komunitas aktual, bukan distrik dan nama CG contoh. |
| Alternatif yang dipertimbangkan | Mempertahankan South/Central/West; menyimpan label panjang sebagai primary key; menghapus atau menebak pemetaan record lama. |
| Dampak | UI memakai label final; persistence memakai kode stabil `Teen`/`Youth`; API dan MySQL menegakkan pasangan kategori-subcategory. Record lama dipertahankan sebagai legacy read-only agar audit dan rollback aman. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-023 - AOGTICVITY menetapkan nama final Tim 7 dan Tim 8

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Identitas dua tim terakhir AOGTICVITY |
| Keputusan | Tim 7 memakai nama **Team Kindness** dengan arti Kebaikan dan Tim 8 memakai nama **Team Patience** dengan arti Kesabaran. |
| Alasan | Founder meminta kedua tim memiliki nama buah Roh berbahasa Inggris agar konsisten dengan enam tim sebelumnya. |
| Alternatif yang dipertimbangkan | Tetap memakai Tim 7/Tim 8; nama buah Roh lain seperti Goodness, Gentleness, atau Self-Control. |
| Dampak | Label kanonik UI dan profil tim berubah; ID `team-7`/`team-8`, warna, anggota, assignment, roster, hasil, dan leaderboard tetap sama. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source, migration, Hostinger, dan public Vercel runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-024 - AOGTICVITY memakai safe delete untuk peserta admin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Penghapusan peserta pada platform admin |
| Keputusan | Admin memperoleh tombol `Hapus` dan filter Aktif/Dihapus. Aksi tersebut memakai lifecycle `Withdrawn`, bukan hard delete database: akses, sesi, assignment tim, dan roster dicabut sementara audit serta histori dipertahankan. |
| Alasan | Admin perlu menghilangkan pendaftaran ganda/batal dari operasi aktif tanpa merusak referensi hasil, roster, audit, atau recovery insiden. |
| Alternatif yang dipertimbangkan | Hard delete seluruh relasi; mempertahankan label Arsipkan; menyembunyikan record hanya di browser. |
| Dampak | Delete wajib admin-only, same-origin, idempotent, version-checked, transactional, dan memerlukan alasan audit. UI memisahkan record aktif dan dihapus; export hanya memuat peserta aktif. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi, authenticated human UAT masih menunggu |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-025 - AOGTICVITY memakai agenda waktu mulai tunggal tanpa ikon lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Kepadatan visual kartu agenda AOGTICVITY |
| Keputusan | Kartu agenda publik/peserta hanya menampilkan satu waktu mulai. Durasi dipindahkan menjadi teks `(n menit)` pada baris kategori dan ikon jenis lomba dihapus. |
| Alasan | Founder meminta layar agenda lebih sederhana, mudah dipindai, dan tidak memakai dua baris waktu atau ikon yang mengambil ruang judul pada mobile. |
| Alternatif yang dipertimbangkan | Mempertahankan rentang waktu; memindahkan durasi ke metadata desktop saja; menyembunyikan ikon hanya pada viewport kecil. |
| Dampak | Grid kartu menjadi waktu, informasi lomba, dan panah pada semua viewport. Lokasi, status, link detail, sumber rundown, auth, dan permission tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-026 - AOGTICVITY melonggarkan layout timeline resmi

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Spacing timeline resmi pada halaman Info AOGTICVITY |
| Keputusan | Timeline resmi memakai padding milestone 14 px, gap antarkartu 12 px, deskripsi full-width di bawah judul/status, dan jarak 16 px sebelum panel keselamatan. |
| Alasan | Founder menilai milestone dan panel keselamatan terlalu mepet, sementara badge status membuat deskripsi terasa sempit. |
| Alternatif yang dipertimbangkan | Hanya mengecilkan font; memindahkan badge status ke bawah; mengubah seluruh notification list global. |
| Dampak | Timeline Info lebih mudah dipindai pada mobile tanpa mengubah data timeline, daftar notifikasi lain, auth, role, atau permission. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-027 - AOGTICVITY menampilkan riwayat pemenang per lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Riwayat kemenangan pada Standing resmi AOGTICVITY |
| Keputusan | Standing resmi menyediakan satu accordion untuk masing-masing dari 10 lomba. Hasil resmi menampilkan Juara 1/2/3; lomba tanpa hasil menampilkan status menunggu. |
| Alasan | Founder ingin standing tidak hanya memperlihatkan agregat tim, tetapi juga dapat ditelusuri sampai siapa pemenang pada setiap lomba. |
| Alternatif yang dipertimbangkan | Menampilkan hanya lomba yang selesai; mencampur draft operator; membuat halaman riwayat terpisah. |
| Dampak | Endpoint publik tetap mengecualikan `Draft`; `Published`/`Corrected` menjadi sumber podium. Public/player melakukan refresh periodik dan recovery focus/reconnect tanpa mengubah schema, permission, atau workflow scoring. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-028 - AOGTICVITY memisahkan pendaftaran pemain undangan

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Jalur pemain dari luar komunitas AOGTICVITY |
| Keputusan | Sediakan link pendaftaran tambahan untuk pemain undangan yang hanya meminta nama, nomor WhatsApp, status sudah/belum memiliki CG, dan consent. Public tidak memilih role atau tim; admin memilih tim saat approval. |
| Alasan | Pemain undangan tidak seharusnya dipaksa memakai taxonomy komunitas atau menentukan permission dan tim sendiri. |
| Alternatif yang dipertimbangkan | Memakai form komunitas yang sama; menambah field role/tim pada form public; menyimpan guest pada dataset terpisah. |
| Dampak | Guest tetap memakai participant identity kanonik, mendapat workflow WhatsApp/player/check-in/roster yang sama, tetapi sumbernya eksplisit. Approval guest admin-only, memerlukan roster Draft dan team assignment atomik; generator otomatis mempertahankan tim guest. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED`; digantikan DEC-032 untuk approval VIP tanpa tim dan generator seimbang |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-029 - SagaBook memakai trial aktif 7 hari

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Durasi trial dan lifecycle SagaBook |
| Keputusan | Trial aktif SagaBook berlangsung tepat 7 hari. Hari 8–14 menjadi grace read-only dan setelah hari 14 status suspended. Trial tidak auto-charge, tetap product-scoped, dan approval owner manual tetap berlaku sampai S72 auto-trial memperoleh release terpisah. |
| Alasan | UI, katalog pusat, subscription, dan lifecycle harus memakai satu durasi kanonik agar approval tidak menciptakan entitlement 14 hari yang bertentangan. |
| Alternatif yang dipertimbangkan | Mempertahankan trial aktif dua fase 14 hari; langsung mengaktifkan auto-trial; memperpanjang trial tanpa batas melalui approval. |
| Dampak | SagaDev Control Center, katalog SagaBook, migration/backfill, countdown, entitlement, FAQ, dan acceptance test memakai 7 hari aktif serta 7 hari grace. Subscription berbayar tidak diubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `0ab9d8e3bff95a6c46425a376d93b732c22b7b52`, platform release `20260804171621-0ab9d8e` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-030 - AOGTICVITY memakai domain aogticvities.fun

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Domain kanonik dan hostname role AOGTICVITY |
| Keputusan | Domain kanonik adalah `aogticvities.fun`. Public memakai root, admin memakai `admin`, player memakai `app`, dan leader memakai `appl`; `www` diarahkan ke root. |
| Alasan | Founder membeli domain tersebut dan mengonfirmasi ejaannya sebelum aktivasi. |
| Alternatif yang dipertimbangkan | Tetap memakai URL Vercel; membeli ejaan singular; mengarahkan DNS langsung ke VPS Hostinger. |
| Dampak | Vercel tetap menjadi edge publik dan Hostinger tetap upstream/MySQL runtime. Auth allowlist, metadata, WhatsApp public origin, TLS, routing, smoke, serta rollback harus menggunakan domain baru. URL Vercel lama dipertahankan sampai cutover lulus. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; domain, DNS, TLS, runtime origin, dan role routing production-activated |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-031 - Storefront booking SagaBook selalu mobile

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrak viewport dan batas produk storefront booking SagaBook |
| Keputusan | Website/storefront booking milik studio selalu memakai satu canvas mobile maksimum 460 piksel pada semua viewport, termasuk desktop dan monitor besar. Desktop hanya memusatkan canvas mobile; storefront tidak boleh memiliki rail/sidebar desktop, workspace dua kolom, canvas lebar, device/window frame, atau layout landing page. Optimasi desktop adaptif hanya berlaku untuk dashboard/admin SagaBook serta aplikasi/dashboard SagaView. |
| Alasan | Storefront adalah alur booking customer yang mobile-first, bukan landing page marketing atau workspace desktop. Konsistensi satu alur mengurangi drift antarlayar dan menjaga fitur booking tetap mudah dijangkau. |
| Alternatif yang dipertimbangkan | Canvas storefront 1040/1280 piksel; rail orientasi desktop; dua kolom pada monitor besar; landing page khusus desktop. |
| Dampak | Arah storefront lebar S94/S108 berstatus `DEPRECATED` dan digantikan S109. Seluruh preset, visual regression, automation heartbeat, accessibility, CTA, Maps/WhatsApp, checkout, confirmation, recovery, dan watermark harus mempertahankan canvas mobile pada setiap viewport. Dashboard SagaBook dan SagaView tidak dibatasi 460 piksel. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `33de71c6b7ab8bf2c0b2cc8fd5fef327fb68f0a5` local-validated dan staging-ready, production belum berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-032 - AOGTICVITY memakai access policy dan pembagian tim VIP

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Masa berlaku link peserta dan pembagian tim pemain luar |
| Keputusan | Admin dapat membuka/menutup link peserta dan memilih TTL 15 menit, 30 menit, 1 jam, 6 jam, atau 24 jam. Off menolak link baru dan link belum dipakai tanpa memutus sesi aktif. Pemain luar disebut VIP, disetujui tanpa tim, lalu ikut generator tim seimbang bersama peserta komunitas. |
| Alasan | Founder perlu mengendalikan periode akses dari dashboard dan meminta VIP tidak langsung ditempatkan pada tim saat approval. |
| Alternatif yang dipertimbangkan | TTL tetap 30 menit; off mencabut semua sesi; admin memilih tim VIP saat approval; VIP dipisahkan dari generator. |
| Dampak | Migration 021 menambah policy, idempotency, dan audit; UI admin mendapat kontrol access; approval VIP tidak memiliki team selector; generator mencakup VIP. Storage legacy `Guest` dipertahankan agar rollback aplikasi aman. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production deployment terverifikasi, operational activation menunggu UAT manusia |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-033 - Editor frame SagaView mempertahankan rasio dan kontrol geometri

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrak preview frame, feather, dan penyesuaian slot foto SagaView |
| Keputusan | Artwork frame tidak boleh dipenyet ketika orientasi canvas berubah. Landscape harus mendukung putar kanan/kiri 90 derajat dengan pemetaan ulang slot. Deteksi memakai feather awal 4 px; operator dapat mengatur feather semua slot 0–12 px atau ±2 px, memindahkan slot pada canvas, resize dari empat titik sudut, dan tetap memakai input X/Y/W/H untuk presisi. |
| Alasan | Frame landscape sebelumnya terlihat terdistorsi, arah putar tidak bekerja, dan operator kehilangan kontrol feather serta resize visual yang dibutuhkan untuk menyesuaikan slot agar tidak terlalu mepet. |
| Alternatif yang dipertimbangkan | Memaksa artwork mengikuti rasio canvas; hanya menyediakan input angka; hanya menyediakan satu arah rotasi; menerapkan feather permanen tanpa kontrol operator. |
| Dampak | Editor frame menjaga rasio asli dan memberi kontrol geometri langsung tanpa mengubah tenant, device/session, foto local-first, payment, pricing, entitlement, atau output 4R. Regression harus mencakup kedua arah rotasi, feather, empat handle, drag-move, dan drag-resize. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `9b4b68a126cbf5f98f67ddf562eedbc93df60a2f`, release production `20260805053500-9b4b68a` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-034 - Slot frame SagaView dibuat setelah auto-detect

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Urutan authoring frame dan pembuatan slot foto SagaView |
| Keputusan | Frame baru harus dimulai dengan 0 slot. Operator memasukkan PNG/WebP terlebih dahulu, lalu menjalankan `Deteksi otomatis`; hasilnya baru menjadi slot untuk diperiksa atau dikoreksi. Penambahan slot manual hanya tersedia setelah deteksi pernah dicoba, dan draft tanpa minimal satu slot tidak dapat disimpan. Frame existing tetap memuat slot tersimpan. |
| Alasan | Founder meminta slot tidak dibuat sebelum artwork frame tersedia karena sumber geometri harus berasal dari transparansi PNG dan proses deteksi, bukan placeholder satu slot. |
| Alternatif yang dipertimbangkan | Mempertahankan satu slot bawaan; menjalankan deteksi otomatis langsung saat file dipilih; membolehkan slot manual sebelum percobaan deteksi. |
| Dampak | Empty state, enable/disable action, draft validation, dan regression editor mengikuti urutan PNG -> deteksi -> review/koreksi -> save. Tenant, device/session, foto local-first, payment, pricing, entitlement, dan output 4R tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source kumulatif `5906028703759d49ef930a7363c5efc293f6be97`, release production `20260805133709-5906028` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-035 - Setiap box slot SagaView memiliki rotate individual

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrol orientasi individual pada slot foto frame editor SagaView |
| Keputusan | Setiap box slot foto memiliki ikon rotate kecil. Satu klik memutar geometri slot tersebut 90 derajat dengan menukar lebar dan tinggi di sekitar titik tengah serta menjaga hasil tetap berada di dalam canvas. Rotate tidak memutar artwork frame atau slot lain. |
| Alasan | Founder membutuhkan koreksi orientasi langsung pada masing-masing box tanpa mengubah keseluruhan frame. |
| Alternatif yang dipertimbangkan | Rotate hanya dari inspector; memutar seluruh frame; menyimpan angle bebas per slot; menampilkan ikon hanya pada slot aktif. |
| Dampak | Tombol rotate selalu terlihat dan accessible pada setiap slot, tetap kompatibel dengan drag, empat resize handle, feather, dan input X/Y/W/H. Tidak ada perubahan API atau metadata karena rotasi 90 derajat direpresentasikan sebagai pertukaran W/H. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` oleh `DEC-036`; source `5906028703759d49ef930a7363c5efc293f6be97`, release production `20260805133709-5906028` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-036 - Rotate slot SagaView menggunakan drag sudut bebas

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Interaksi rotate individual pada slot foto frame editor SagaView |
| Keputusan | Ikon rotate pada setiap box adalah drag handle. Operator menahan ikon lalu menggeser ke kiri untuk sudut negatif atau ke kanan untuk sudut positif; box slot benar-benar miring tanpa menukar W/H. Sudut per slot disimpan pada metadata, diterapkan di preview Studio dan export PNG, serta dapat dikoreksi melalui keyboard atau input sudut dan reset. |
| Alasan | Founder mengoreksi implementasi klik 90 derajat karena kebutuhan sebenarnya adalah menyesuaikan slot dengan opening frame yang miring. |
| Alternatif yang dipertimbangkan | Pertukaran W/H 90 derajat; rotate seluruh artwork; input angka tanpa drag handle; rotasi hanya di preview tanpa persistensi/export. |
| Dampak | Kontrak metadata menambah angle opsional per slot dengan default 0 derajat untuk frame lama. Backend membatasi -180 sampai 180 derajat dan menolak rotated bounds di luar canvas. Drag, feather, empat resize handle, X/Y/W/H, customer transform, dan output 4R tetap tersedia. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Owner/API source `0b655da4aeea270ce9048d853e7df09d42a36dd9`, release `20260805193458-0b655da`; Studio source `2121ebb80fa4238e91eef4003f852d34841e923f`, release `20260805193458-2121ebb`; commerce canary dipulihkan melalui lifecycle resmi sebelum gate 6/6 dan deployment |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-037 - Release UI SagaView tidak menunggu aktivasi subscription tenant

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Gate promosi frontend compact all-menu SagaView |
| Keputusan | Aktivasi subscription tenant dilewati untuk release frontend Studio `2b0331d5`. Seluruh gate teknis lain tetap wajib dan subscription, entitlement, payment, tenant isolation, serta data tenant tidak boleh diubah. Waiver ini tidak membuktikan UAT tenant berlangganan dan tidak mengubah status business readiness. |
| Alasan | Founder meminta pekerjaan UI/UX dilanjutkan tanpa menunggu aktivasi subscription tenant, sementara kandidat frontend tidak membawa migration atau perubahan kontrak bisnis. |
| Alternatif yang dipertimbangkan | Menahan seluruh release UI sampai subscription pilot aktif; mengaktifkan subscription hanya untuk melewati gate; mengubah entitlement. |
| Dampak | Source Studio `2b0331d53dc4c590dee5329ef892ea01fa4a8a97` dipromosikan setelah backup/restore, backend schema/route/security/backup, build, audit, atomic switch, service/header/journal, dan live browser acceptance lulus. Business readiness tetap `NEEDS CONFIRMATION` dan Founding Studio Pilot tetap wajib sebelum klaim mass-scale. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; release Studio `20260805170231-2b0331d`, rollback `20260805133709-57c0337` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-038 - Authoring SagaView memisahkan Simpan Draft dan Publish Frame

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Hasil penyimpanan frame pada Owner Console SagaView |
| Keputusan | `Publish Frame` menjadi CTA utama pada workspace Tambah Frame dan menjalankan save draft lalu publish. `Simpan Draft` tetap tersedia sebagai aksi sekunder yang hanya menyimpan pekerjaan privat. Bila publish gagal setelah draft tersimpan, draft tidak boleh hilang dan operator harus menerima alasan API yang spesifik. Kode frame ber-spasi dinormalisasi menjadi format slug. |
| Alasan | Founder menegaskan bahwa simpan draft dan publish memiliki hasil operasional berbeda; frame lengkap seharusnya dapat langsung dipublish tanpa harus menebak langkah lanjutan di galeri. |
| Alternatif yang dipertimbangkan | Tetap satu tombol Simpan Draft lalu publish dari Galeri Frame; auto-publish tanpa opsi draft; satu tombol dengan menu dropdown. |
| Dampak | Hierarki aksi editor berubah, tetapi kontrak draft privat tetap dipertahankan. Publish memakai endpoint existing secara berurutan, tidak mengubah tenant isolation, quota, payment, device/session, foto local-first, atau output 4R. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source Owner/API `9ee5bcca14ace7771a169bf8823df1e9ba7241c9`, branch `codex/s70-single-device-production-lineage`, release `20260805203055-9ee5bcc`; Studio source `2121ebb80fa4238e91eef4003f852d34841e923f`, release `20260805203055-2121ebb` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-039 - Limit frame aktif SagaView Growth 50 dan Pro 100

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kapasitas frame aktif paket SagaView |
| Keputusan | Paket Growth mendukung maksimal 50 frame aktif dan Pro maksimal 100 frame aktif. Full-access trial mengikuti kapasitas authoring Pro 100; fase plan-limited mengikuti paket terpilih. Harga, device, preset, offline grace, storage aset frame, reports, support, payment, dan fair-use tetap. |
| Alasan | Founder meminta kapasitas Growth dinaikkan dari 10 ke 50 dan Pro dari 50 ke 100 agar katalog frame studio tidak terlalu cepat mencapai batas paket. |
| Alternatif yang dipertimbangkan | Mempertahankan 10/50; menaikkan Growth saja; menjadikan limit custom per tenant tanpa kontrak paket baru. |
| Dampak | Commercial policy, entitlement license/trial, katalog harga owner, validasi publish frame, metadata plan, test, dan release tooling harus menggunakan 50/100 secara konsisten. Migrasi bersifat additive dan rollback runtime tidak mencabut ekspansi entitlement yang sudah diberikan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `c8538060f64cfabce46dc7f837531015673e7a1c`, branch `codex/sagaview-frame-limits-s116`, backend release `20260805155517-c853806`, Studio release `20260805155605-3b66f8d`; entitlement live Growth 50/Pro 100 |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Pitch Demo](products/sagaview/PITCH_DEMO.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md) |

## DEC-040 - AOGTICVITY mengganti dua lomba menjadi lomba tim bola

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Pengganti Makan Kerupuk dan Balap Karung Helm |
| Keputusan | `cmp-2` menjadi Ambil Bola Pakai Sarung dan `cmp-8` menjadi Paralon Bola. Keduanya diikuti seluruh tim tanpa input nama perwakilan. Durasi awal 10 menit bermain ditambah 5 menit pergantian; pemenang ditentukan dari jumlah bola, dengan tie-break wajib untuk seri yang memengaruhi podium. |
| Alasan | Founder mengganti dua lomba individual menjadi permainan kerja sama tim: mengambil bola oleh satu anggota yang diangkat bersama memakai sarung, serta estafet bola melalui paralon dari anggota depan ke belakang. |
| Alternatif yang dipertimbangkan | Membuat ID lomba baru; mempertahankan lomba perwakilan; memakai ranking manual tanpa skor; mengizinkan publish saat seri belum diselesaikan. |
| Dampak | ID dan legacy URL dipertahankan. Event master, agenda/detail, roster player/leader, scoring operator/admin, standing, asset, migration/archive, rollback, safety, dan acceptance test mengikuti kontrak baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED`; source `5bc951e0b8747e113b69b18162a200c592b39d3c`, Hostinger `20260805T145857Z`, Vercel `dpl_DacHrH6BN3u3bbD4ckFje7rU3fST` |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-041 - Screening UI/UX dilanjutkan dengan integrasi fitur per fitur

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Heartbeat acceptance SagaBook dan SagaView |
| Keputusan | Setelah UI/UX sebuah fitur tervalidasi, heartbeat melanjutkan screening fitur tersebut secara end-to-end: UI state, frontend, network/API atau boundary local-first, backend/service, database/storage, response UI, failure/retry, permission/tenant-negative, dan data integrity. Coverage disimpan dalam ledger per produk dan tidak boleh diklaim penuh sebelum seluruh fitur prioritas hijau. |
| Alasan | Founder meminta pemeriksaan bertahap agar tampilan yang baik juga benar-benar terhubung ke data dan backend tanpa sukses palsu, schema drift, kebocoran permission, atau kehilangan data. |
| Alternatif yang dipertimbangkan | Hanya mengaudit UI/UX; mengaudit seluruh produk sekaligus tanpa ledger; menganggap mock/localStorage/fixture sebagai integrasi; memindahkan alur foto SagaView ke cloud. |
| Dampak | SagaBook mengikuti urutan auth sampai template publish. SagaView mengikuti urutan auth/device sampai dashboard/entitlement, tetapi ingest foto, editor, recovery, dan export tetap local-first dengan no-upload guarantee. Aktivasi subscription tenant tetap dilewati sampai instruksi baru, dan website booking yang sudah aktif tidak dinonaktifkan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; kebijakan acceptance/heartbeat, bukan klaim bahwa seluruh integrasi sudah selesai |
| Dokumen terkait | [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [Gaps](GAPS.md) |

## DEC-042 - Metadata frame SagaView dapat dipindahkan lintas akun

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Export/import template frame pada Owner Console SagaView |
| Keputusan | Owner dapat mengekspor artwork frame dan metadata portable termasuk orientasi, posisi/ukuran slot, hasil feather, serta angle per slot; akun lain dapat mengimpornya sebagai draft baru lalu mengganti nama atau kategori. Import tidak boleh auto-publish atau menimpa frame existing. Paket harus tenant-neutral dan tidak membawa foto customer, identifier akun/tenant, device/session, credential, path lokal, atau payment. |
| Alasan | Setup frame dan peletakan slot yang sama tidak perlu diulang manual pada setiap akun. Draft-first dan collision-safe key menjaga operator tetap memeriksa konteks akun tujuan. |
| Alternatif yang dipertimbangkan | Mengulang upload/deteksi/koreksi secara manual; menyalin data langsung antar-tenant di server; import yang langsung publish; paket hanya metadata tanpa artwork. |
| Dampak | Owner Console mendapat file `.sagaview-frame`, checksum artwork/metadata, sanitasi field, import-as-draft, editable name/category, serta suffix copy. API authoring tenant-scoped yang sudah ada tetap menjadi boundary save; pricing, entitlement, payment, device/session, foto customer, dan output 4R tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `1158926b2be35887aff7dc8a09cb0111e8a71fc7`, backend release `20260806050513-1158926`, Studio release `20260806050546-3b66f8d`; authenticated Owner UAT lintas dua akun tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-043 - AOGTICVITY menambah kategori Other Region

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Perluasan kategori utama dan subcategory pendaftaran AOGTICVITY |
| Keputusan | Tambahkan kategori utama `Other Region` dengan subcategory yang hanya terdiri dari `AOG Ponorogo` dan `AOG Magetan`. Kategori `TEEN` dan `SOUTH, WEST, CENTRAL` tetap berlaku tanpa perubahan. |
| Alasan | Founder membutuhkan jalur pendaftaran kanonik bagi peserta dari wilayah AOG di luar kategori Teen dan Youth yang sudah ada. |
| Alternatif yang dipertimbangkan | Memasukkan Ponorogo/Magetan ke kategori Youth; memakai input teks bebas; memakai jalur VIP untuk anggota komunitas Other Region. |
| Dampak | Source taxonomy, form publik/admin, validasi API, export, migration/constraint MySQL, test, dan knowledge memakai kode stabil `OtherRegion` serta dua label subcategory yang disetujui. Pasangan silang ditolak dan data existing tidak dimutasi. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source runtime `5a2d3ef3fdb21503f9a559334796cea656f1a087`, Hostinger `20260806T055642Z`, Vercel `dpl_4RtjNcViWkxN3fZSTZ15VWiumy5G`, migration 024 |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-071 - SagaBook menggabungkan S168 dan S169 untuk release production

| Field | Isi |
|---|---|
| Tanggal | 2026-08-09 |
| Topik | Promosi manual deploy gate dan centered Background editor |
| Keputusan | Kandidat S168 dan S169 boleh digabung menjadi satu source integrasi dan dipromosikan melalui release immutable setelah seluruh Quality Gate, backup terenkripsi, checksum, disposable restore, rollback, service, dan public smoke hijau. |
| Alasan | Founder menyetujui penggabungan agar hardening deploy dan perbaikan area kerja Background masuk dalam satu kandidat yang memiliki provenance dan rollback tunggal. |
| Alternatif yang dipertimbangkan | Mendeploy dua kandidat terpisah; menahan S169 sambil hanya mempromosikan S168; tetap membiarkan keduanya lokal. |
| Dampak | Source/main `f69170a7e61080f90a3bcea7df1f22f5612f0369` aktif sebagai release `20260809153848-f69170a`, rollback `20260809083131-5c76735`. Deploy production kini manual-only dan editor Background terpusat. Provider canary, aktivasi subscription, authenticated Owner UAT, dan business readiness tidak ikut disetujui oleh keputusan ini. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; belum `BUSINESS_READY` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-074 - Indikator booking SagaBook mengikuti sembilan langkah universal

| Field | Isi |
|---|---|
| Tanggal | 2026-08-10 |
| Topik | Konsistensi progress customer dengan workflow booking |
| Keputusan | Indikator customer harus memakai urutan Lokasi, Paket, Jadwal, Background, Add-on, Detail, Review, Bayar, dan Selesai yang sama dengan workflow universal. Preset tetap hanya mengubah skin/data; fungsi lanjut/kembali dan skip Background tidak diubah. |
| Alasan | Indikator lima label sebelumnya membuat Background, Add-on, dan Review terlihat seolah menjadi Detail, sehingga posisi customer membingungkan. |
| Alternatif yang dipertimbangkan | Mempertahankan lima label; hanya menampilkan angka tanpa state; mengubah workflow agar mengikuti indikator lama. |
| Dampak | Storefront memakai progressbar dan sembilan marker semantik dengan state selesai, aktif, berikutnya, dan lewati; baseline visual/accessibility diperbarui. API, backend, database, payment, tenant, permission, dan production tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / UIUX_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; source `e70b2389a7488d7e9d30a399cb1863a8bd8fc4dc` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-075 - AOGTIVITY menambah opening transparan dan satu pertandingan Name Tag Ripped

| Field | Isi |
|---|---|
| Tanggal | 2026-08-13 |
| Topik | Rundown acara dan format Name Tag Ripped |
| Keputusan | Registrasi & Perkenalan Tim berlangsung 14.30-15.00, Opening AOGTIVITY 15.00-15.15, lima lomba lalu Break 15 menit, lima lomba berikutnya, dan Awarding & Closing 19.20-19.35. Break serta closing tampil di agenda publik. Name Tag Ripped tetap ID `cmp-10` dan durasi 30 menit, tetapi menjadi satu pertandingan bersama tanpa Grup A/B. |
| Alasan | Founder membutuhkan rundown transparan bagi peserta serta format Name Tag Ripped yang lebih sederhana tanpa pembagian dua grup. |
| Alternatif yang dipertimbangkan | Mempertahankan opening lama; menyembunyikan break/closing dari agenda; membuat entitas lomba baru; mempertahankan Grup A/B atau bracket tujuh pertandingan. |
| Dampak | Jadwal publik, detail agenda, schedule builder, migration/archive/rollback, dan acceptance test mengikuti jam baru. Sepuluh ID lomba, peserta, roster, hasil, operator, serta relasi data dipertahankan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `0cbde68e91d5e35779f4d5708e9c63ec29e056fe`, Hostinger `20260813T164834Z`, Vercel `dpl_Gxp1T1LCi1RfSYXo5n4qr3DtoXTm`, migration 031-032 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-076 - AOGTIVITY menetapkan lokasi final seluruh lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-14 |
| Topik | Lokasi lomba dan awarding |
| Keputusan | Berdasarkan urutan agenda aktif, lomba 1-2 memakai Pendopo Utama; lomba 3, 5, 7, 9, dan 10 memakai Lapangan A; lomba 4, 6, dan 8 memakai Lapangan B; Awarding & Closing memakai Pendopo Utama. Ejaan lokasi pada antarmuka dinormalisasi tanpa mengubah maksud founder. |
| Alasan | Peserta dan panitia membutuhkan lokasi final yang eksplisit dan konsisten pada agenda publik serta backend operasional. |
| Alternatif yang dipertimbangkan | Mempertahankan arena lama; memakai kapitalisasi mentah yang tidak konsisten; mengubah urutan atau membuat ulang entitas lomba. |
| Dampak | Agenda publik, schedule builder, reload API, master recap, MySQL, acceptance test, migration/archive, dan rollback mengikuti lokasi final. Registrasi, Opening AOGTIVITY, Break, waktu, urutan, sepuluh ID kompetisi, peserta, roster, hasil, operator, dan relasi data dipertahankan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `70aa749764cdeb6a5bc59b36438c23e22c3a1e66`, Hostinger `20260813T171101Z`, Vercel `dpl_EvVDPn38C6R5h56oyRNdzT8abHu6`, migration 033 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-077 - AOGTIVITY menambah kategori VOLTAGE

| Field | Isi |
|---|---|
| Tanggal | 2026-08-14 |
| Topik | Perluasan taxonomy registrasi komunitas AOGTIVITY |
| Keputusan | Tambahkan kategori utama berlabel `VOLTAGE` dengan stable code `Voltage` dan tepat satu subkategori `ALL CG VOLTAGE`. Pasangan kategori-subkategori wajib konsisten pada form publik/admin, API, proyeksi laporan, dan MySQL. |
| Alasan | Founder membutuhkan pengelompokan seluruh CG VOLTAGE sebagai kategori kanonik tersendiri tanpa memetakan ulang kategori peserta lama. |
| Alternatif yang dipertimbangkan | Memakai kategori Youth; menambah banyak subkategori CG VOLTAGE; menyimpan label tanpa stable code. |
| Dampak | Source menambah kontrak taxonomy dan migration 034 dengan rollback fail-closed. Tidak ada peserta lama yang dimigrasikan/dihapus, MySQL tetap source of truth, dan kategori kini aktif pada form publik/admin, API, laporan, serta database production. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `f9f43e16d5fe885fbd12b4cf627bfbdd343b38e9`, Hostinger `20260814T053031Z`, Vercel `dpl_Bn3Y8p71Y3AZdK3p4iYam5aer9JF`, migration 034; backup/restore, preservation, test kandidat, dan public regression lulus |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-078 - SagaDevs mengaktifkan mobile-first bio link directory

| Field | Isi |
|---|---|
| Tanggal | 2026-08-14 |
| Topik | Link bio, portfolio, dan boundary homepage SagaDevs |
| Keputusan | Aktifkan `sagadevs.com/bio` sebagai link directory satu kolom maksimal 440 px yang tidak ditautkan dari homepage. Initial view hanya menampilkan website utama, dropdown `Lihat 8 Portfolio` yang tertutup secara default, dan Contact Us. Dropdown memuat Neo Ceramic, SagaView, SagaBook, Jersey, COYABAG, Sagafin, Saga Tech, dan Ayam Pemuda. |
| Alasan | Link bio harus ringkas, mobile-first, mudah dipindai, dan tidak memperpanjang atau mengubah navigation website utama. |
| Alternatif yang dipertimbangkan | Menampilkan seluruh portfolio sejak initial load; memakai layout desktop melebar; menambahkan route bio ke navigation homepage. |
| Dampak | Route baru memakai CSS terisolasi `/bio/styles.css`, target sentuh dan keyboard disclosure terverifikasi, homepage tetap tanpa link bio, dan seluruh portfolio membuka URL eksternal dengan guard aman. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; production `dpl_FZA1XUs3G4YKymqkqaFCMHnrAx3A`, rollback `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [SagaDevs Changelog](products/sagadevs/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-080 - SagaBooth menjadi instant photobooth hybrid offline-first

| Field | Isi |
|---|---|
| Tanggal | 2026-08-16 |
| Topik | Product boundary, delivery model, stack, dan hardware roadmap SagaBooth |
| Keputusan | SagaBooth adalah software instant photobooth mandiri, bukan SagaBook atau SagaView. Internal assisted pilot didahulukan sebelum lisensi/SaaS. Runtime Windows memakai Electron dengan SQLite/filesystem lokal dan durable outbox; control plane memakai NestJS, MySQL 8.4 LTS, Next.js, serta target VPS/domain Hostinger. V1 menargetkan Canon R10/R50 dan DNP; Sony a6700/ZV-E10 II masuk qualification V1.1; QRIS wajib melalui PJP berizin. |
| Alasan | Booth harus tetap beroperasi dan pulih saat internet tidak stabil, sementara konfigurasi, lisensi, observability, dan audit dapat dikelola terpusat tanpa mencampur domain produk lain. |
| Alternatif yang dipertimbangkan | Web-only booth; cloud-first media; memakai SagaBook/SagaView sebagai runtime booth; mendukung semua kamera sejak V1; menyimpan media sebagai blob MySQL. |
| Dampak | M0 membakukan contracts, state machine, adapters/simulators, filesystem media, idempotency, payment verification, dan boundary aplikasi. Hardware/payment compatibility tetap tidak boleh diklaim sebelum implementation dan qualification nyata. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; exact source `c08765f3a5ab40ff39e5741c1abfc609006ceef5`, GitHub CI dan branch protection masih memiliki blocker akun/plan |
| Dokumen terkait | [SagaBooth Product](products/sagabooth/PRODUCT.md), [SagaBooth Dossier](products/sagabooth/DOSSIER.md), [SagaBooth Changelog](products/sagabooth/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-081 - AOGTIVITY menjadi public event hub tanpa login peserta

| Field | Isi |
|---|---|
| Tanggal | 2026-08-17 |
| Topik | Penutupan pendaftaran dan penyederhanaan akses informasi peserta |
| Keputusan | Tutup pendaftaran publik, tampilkan informasi bahwa pendaftaran sudah ditutup, dan hilangkan kebutuhan login peserta. Domain utama menjadi public event hub untuk agenda transparan, pembagian delapan tim, katalog/detail lomba, standing, pengumuman, dan info. Login tetap khusus admin/operator/leader. Direktori tim publik hanya boleh memuat nama dan team membership setelah roster Published/Locked. |
| Alasan | Daftar peserta dan pembagian tim sudah difinalkan; peserta lebih membutuhkan akses langsung ke informasi hari-H daripada onboarding dan session tambahan. |
| Alternatif yang dipertimbangkan | Mempertahankan form dalam mode disabled; mempertahankan participant login untuk membaca informasi; membuka roster saat Draft; menghapus backend historis beserta data. |
| Dampak | `/register` dan `/register/guest` menjadi halaman status ditutup; POST registration `410`; `/app` dan subdomain player redirect permanen ke public hub; route publik utama dapat dibuka tanpa akun. Auth panitia, MySQL source of truth, ID/relasi peserta, roster, hasil, dan audit tetap dipertahankan. Tidak ada migration atau mutasi data. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `a74221c4720b0afc59cadbf3f115e4934c4745e1`, Hostinger `20260816T185201Z`, Vercel `dpl_F2nGXwrWRSNerhKybbWUUikwz94G`; public registration dan participant login `DEPRECATED / CLOSED` |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-085 - SagaBook memakai satu urutan paket kanonik per cabang

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Urutan dan kategori paket pada website booking |
| Keputusan | Owner mengatur satu urutan paket per cabang dari menu Paket melalui drag-and-drop atau tombol naik/turun. Urutan yang sama berlaku untuk seluruh Template Booking. Kategori disimpan eksplisit sebagai Solo, Couple, Grup, Family, atau Lainnya; draft boleh diposisikan tetapi tetap tidak tampil publik. |
| Alasan | Sorting admin sebelumnya tidak memengaruhi website dan kategori diinferensikan dari kapasitas, sehingga urutan Couple/Group dan paket lain tidak dapat dikontrol secara konsisten. |
| Alternatif yang dipertimbangkan | Mempertahankan urutan database implisit; membuat urutan berbeda per template; mengurutkan hanya paket aktif; tetap menebak kategori dari kapasitas. |
| Dampak | Schema bertambah secara aditif; API reorder transaksional dan tenant/cabang-scoped; admin, preview, dan publik membaca urutan yang sama. ID paket, relasi booking, harga, availability, payment, dan permission authority dipertahankan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / OWNER_UAT_APPROVED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; feature source `26a34eca77d63dfb3eea35678a7b63caed4ebce8`, exact release source `7ac5efd371b83162566120c7c832cb2c25943c71`, release `20260820080539-7ac5efd` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-086 - Area upload Foto Paket harus ringkas dan kontekstual

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Penyederhanaan UI/UX upload Foto Paket SagaBook |
| Keputusan | Area upload menampilkan satu header dan count, satu status yang sesuai state saat ini, satu dropzone utama, hasil upload, serta bantuan singkat. Teks berulang, status pasif yang tidak relevan, dan panduan panjang tidak ditampilkan bersamaan. |
| Alasan | Founder menilai tampilan sebelumnya terlalu padat, teksnya panjang, dan empat status sekaligus membuat proses upload lebih sulit dipindai. |
| Alternatif yang dipertimbangkan | Mempertahankan empat kartu status; hanya memendekkan copy tanpa mengubah hierarki; menyembunyikan semua petunjuk; membuat wizard upload terpisah. |
| Dampak | Form Paket lebih pendek dan satu CTA lebih jelas, sementara batas 10 foto, aturan file, cover pertama, validation, keyboard focus, live status, error placement, dan persistensi upload tetap dipertahankan. Shared upload surfaces memperoleh struktur ringkas yang sama tanpa perubahan backend. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / OWNER_UAT_APPROVED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; feature source `a6d585eb5627071f3a62c3bef342284598adb751`, exact release source `6d89fc14649f48886f38d39f66580a36e2784552`, release `20260820084829-6d89fc1` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-087 - Customer melihat satu biaya layanan gabungan

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Penyederhanaan breakdown biaya QRIS SagaBook |
| Keputusan | Ringkasan pembayaran customer menampilkan satu baris `Biaya layanan` sebesar selisih nominal final terhadap subtotal booking. Persentase SagaDev, biaya atau nama provider, dan paragraf penjelasan tidak ditampilkan; total dibayar via QRIS tetap eksplisit. |
| Alasan | Founder menilai customer sudah memahami konsep biaya layanan dan rincian internal membuat kartu pembayaran terlalu panjang. |
| Alternatif yang dipertimbangkan | Tetap menampilkan dua fee; mengganti nama provider saja; menyembunyikan seluruh fee dan hanya menampilkan total. |
| Dampak | Hierarki pembayaran lebih ringkas tanpa mengubah calculation, jumlah yang dibayar, ledger, settlement, audit, API, database, atau payment flow. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / OWNER_UAT_APPROVED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; feature source `63b17f9a6af5437e663db265a3f1f2c6305a4ce5`, exact release source `5a4e24fa67d28ab0e15c7d8110d7742f26d875a0`, release `20260820103024-5a4e24f` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-088 - Release S265 boleh melewati satu failed job Fonnte secara terbatas

| Field | Isi |
|---|---|
| Tanggal | 2026-08-20 |
| Topik | Pengecualian release gate Fonnte SagaBook S265 |
| Keputusan | Founder mengizinkan release S265 dilanjutkan meskipun Fonnte platform-managed disconnected, hanya bila tepat satu `failed_jobs_24h` menjadi satu-satunya failed smoke check. Exception harus tertulis di evidence; check lain, perubahan jumlah, atau scope berbeda tetap menghentikan atau me-rollback deploy. |
| Alasan | Perubahan S265 hanya pada presentasi biaya layanan dan founder menerima sementara bahwa notifikasi WhatsApp terkait belum sehat. |
| Alternatif yang dipertimbangkan | Menunggu reconnect Fonnte; menghapus failed job; retry otomatis; melewati seluruh smoke gate. |
| Dampak | S265 dapat diaktifkan tanpa menghapus audit atau melakukan blind retry. Fonnte dan notifikasi gagal tetap residual, readiness 80/100, dan `BUSINESS_READY=false`; exception bukan bukti provider sehat. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / PRODUCTION_ACTIVATED`; exact release source `5a4e24fa67d28ab0e15c7d8110d7742f26d875a0`, release `20260820103024-5a4e24f` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-090 - Saga Product memakai funnel mobile-only PDF lalu video

| Field | Isi |
|---|---|
| Tanggal | 2026-08-21 |
| Topik | Penyederhanaan sales funnel SagaBook dan SagaView dari bio |
| Keputusan | `/saga-product/` hanya menampilkan pilihan SagaBook dan SagaView. Setelah produk dipilih, owner langsung melihat viewer/PDF penawaran, video inline, lalu CTA trial. Semua viewport memakai mobile shell maksimum 430 px tanpa layout desktop alternatif. Bukti SagaView memakai UI aktual data dummy dengan frame TRIAL 3 enam slot; SPECIAL 17 dan ORIGINAL 14 tidak dipakai pada funnel V25. |
| Alasan | Owner studio perlu memahami penawaran secepat mungkin dari browser Instagram/TikTok tanpa melewati landing panjang, dan bukti frame harus konsisten serta mudah dibaca. |
| Alternatif yang dipertimbangkan | Mempertahankan landing panjang V24; membuat layout desktop terpisah; menampilkan video sebelum PDF; memakai UI/frame generatif. |
| Dampak | Funnel menjadi tiga tahap ringkas, media tetap first-party dan fullscreen, serta UI produk tidak dipalsukan. Trial/early adopter, runtime, pricing, entitlement, device/output, dan business readiness tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `6cfab80a9a06b50ec72e139b46ad5e4b3171f87a`, production `dpl_5S2BWzukN4Fat1xdpPVsx9kvFbFF`, rollback V24 `dpl_D1xLKDsFxrVxn3UC1BjP4ftz892x` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Portfolio Changelog](changelog/PORTFOLIO_CHANGELOG.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md) |

## DEC-107 - AOGTIVITY diarsipkan dan runtime Hostinger dipensiunkan

| Field | Isi |
|---|---|
| Tanggal | 2026-08-26 |
| Topik | Penutupan operasi AOGTIVITY setelah event dan pengurangan kapasitas VPS |
| Keputusan | Arsipkan AOGTIVITY/AOGTVT beserta runtime legacy Olimpiade, verifikasi arsip restricted di luar VPS, lalu pensiunkan backend, worker, timer, credential config, dan release Hostinger. Pertahankan database historis dalam keadaan cold karena ukurannya kecil dan berguna sebagai recovery layer. |
| Alasan | Event sudah selesai dan runtime tidak lagi dipakai, sedangkan VPS membutuhkan ruang. Arsip dan database cold menjaga recovery tanpa membiarkan service lama terus mengonsumsi kapasitas dan proses. |
| Alternatif yang dipertimbangkan | Membiarkan seluruh runtime aktif; menghapus tanpa arsip; menghapus juga database cold; hanya memangkas release lama tanpa memensiunkan service. |
| Dampak | Backend dan port origin AOGTIVITY/legacy tidak lagi aktif. Public edge/domain yang masih resolve bukan layanan operational. Reaktivasi memerlukan restore terkontrol, rotasi credential, deploy baru, smoke test, dan UAT. Produk serta database aktif lain tidak diubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / ARCHIVED / HOSTINGER_RUNTIME_RETIRED`; provenance detail berada pada evidence restricted dan tidak dipublikasikan |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-110 - Closing operasional memakai satu snapshot stok dan laporan per cabang

| Field | Isi |
|---|---|
| Tanggal | 2026-08-26 |
| Topik | Kontrak Closing Operasional Studio SagaBook V1 |
| Keputusan | Satu pack berisi 20 kertas foto. Jumlah cetak dan packaging disimpan pada rule paket/add-on. Rusak/gagal, invitation, Google Review, dan sampel frame diisi admin serta mengurangi stok kertas. Laporan boleh dibagikan saat submit dengan status menunggu review, dan setiap cabang memiliki satu target grup. |
| Alasan | Operator memerlukan laporan closing konsisten yang berasal dari data dan stok authoritative, tanpa hitung ulang atau copy manual. |
| Alternatif yang dipertimbangkan | Template teks manual; stok tanpa ledger; angka global untuk semua paket; multi-group atau auto-send pada V1. |
| Dampak | SagaBook menambah snapshot rule historis, ledger append-only, physical count/variance, artifact teks/PNG privat, review/revision, dan delivery audit. Source dan additive migration sudah production-deployed, sementara mapping nyata, opening stock, target/provider, human UAT, feature activation, dan pilot tetap gate terpisah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / MERGED / PRODUCTION_DEPLOYED / FEATURE_OFF / NOT_PILOT_ACTIVATED`; feature commit `89e440138536eba7ad0e1042ffb4a031e07fd3e4`, PR #14, exact release source `69cb91370aacfdfe9c8c6db3799bd422f2079f0a`, release `20260826164130-69cb913` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md) |

## DEC-112 - Demo checkout COYABAG memakai simulator terisolasi lebih dahulu

| Field | Isi |
|---|---|
| Tanggal | 2026-08-27 |
| Topik | Batas payment demo dan payment production COYABAG |
| Keputusan | Gunakan simulator privat bertanda tangan dan berbatas waktu untuk demonstrasi client. TokoPay tetap terlihat tetapi locked sampai credential dan UAT transaksi nyata lulus. |
| Alasan | Client perlu mencoba alur checkout end-to-end tanpa membuka pembayaran nyata, membuat klaim provider palsu, atau mengotori data commerce production. |
| Alternatif yang dipertimbangkan | Membuka TokoPay tanpa credential/UAT; memakai manual transfer sebagai bukti gateway; menunda seluruh demonstrasi sampai commerce production-ready. |
| Dampak | Simulator dipisahkan dari uang, omzet, stok, customer, pengiriman, fulfillment, invoice, notifikasi, settlement, dan reporting production. Evidence simulator tidak boleh dipakai sebagai bukti payment provider atau commerce aktif. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / NOT_PRODUCTION_ACTIVATED`; exact source `2dad82c3e1cb41db2149915eb1977512e5fc6069`, release `20260827-2dad82c` |
| Dokumen terkait | [COYABAG Product](products/coyabag/PRODUCT.md), [COYABAG Dossier](products/coyabag/DOSSIER.md), [COYABAG Changelog](products/coyabag/CHANGELOG.md) |

## DEC-113 - WhatsApp operasional SagaBook disuspensi selama transisi provider

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Batas runtime WhatsApp SagaBook selama rencana penggantian provider |
| Keputusan | Suspensi sementara seluruh dispatch WhatsApp operasional customer dan owner, termasuk routing tenant, retry, queue baru, dan closing delivery. OTP tetap dikendalikan secara terpisah dan tidak ikut dimatikan. Pertahankan dua delivery lama tanpa mutasi; release exception hanya boleh menerima exact count 2 bila itu satu-satunya failure audit dan suspend terverifikasi. |
| Alasan | Perbaikan 404 pascapembayaran perlu dapat dirilis tanpa mengirim melalui provider yang akan diganti, tetapi data integrity, provenance, dan batas OTP tidak boleh dilonggarkan. |
| Alternatif yang dipertimbangkan | Tetap mengirim melalui provider lama; mematikan OTP sekaligus; menghapus dua delivery agar audit hijau; menunda seluruh perbaikan pembayaran. |
| Dampak | Perbaikan payment return dapat aktif secara aman. WhatsApp operasional tidak boleh diklaim aktif atau sehat sampai provider pengganti, credential restricted, migration, UAT, dan canary berizin lulus. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; exact source `a9127dc4595f2d8d7e60094ac330cac76448b255`, release `20260827210830-a9127dc`, `BUSINESS_READY=false` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-114 - Booking Detail menyediakan tiga template WhatsApp yang dapat disalin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-28 |
| Topik | Template komunikasi customer dari Booking Detail SagaBook |
| Keputusan | Setiap Booking Detail menyediakan aksi salin untuk Konfirmasi Sesi Foto, Pengingat Sesi Foto, dan Pengiriman Link Drive Foto. Pesan memakai detail booking terbaru dan dapat diedit melalui Template Editor. Booking Detail tidak membuka WhatsApp melalui tombol maupun API; admin menempel dan mengirim sendiri. |
| Alasan | Operator membutuhkan pesan customer yang konsisten dan siap ditempel tanpa mengetik ulang detail setiap booking. |
| Alternatif yang dipertimbangkan | Mempertahankan satu template hard-coded; menyalin template mentah dari halaman editor; langsung mengirim otomatis melalui provider. |
| Dampak | Renderer server-side, template default, placeholder allowlist, capability copy terpisah, tenant/cabang guard, serta audit public-safe ditambahkan. Copy tetap manual, tidak mengubah status atau delivery ledger, dan tidak melewati suspend provider. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / BUSINESS_READY=false`; exact source `68b978e533d2fcc23dd7be23ddf23b2328f51a6b`, release `20260828063524-68b978e`, rollback `20260828062330-4aae315`; authenticated clipboard UAT residual |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md) |

## DEC-141 - SagaView S382 boleh diaktifkan dengan residual physical UAT

| Field | Isi |
|---|---|
| Tanggal | 2026-09-03 |
| Topik | Batas owner exception untuk activation SagaView S382 |
| Keputusan | Founder mengizinkan exact pair S382 dideploy dengan kondisi penyimpanan yang ada dan tanpa receipt physical UAT exact pair, selama seluruh gate source, backup, restore, provenance, health, public/security smoke, rollback, dan shared release lock tetap lulus. |
| Alasan | Perbaikan cumulative dan kompatibilitas build VPS sudah terverifikasi, sedangkan physical UAT memerlukan langkah operator terpisah. |
| Alternatif yang dipertimbangkan | Menahan deployment sampai physical UAT; melewati seluruh release gate; mengonversi receipt kandidat lama. |
| Dampak | Production dapat diaktifkan, tetapi pengecualian bukan bukti UAT. Physical UAT 12 gate, count 50/200/500, konfirmasi operator/reviewer, dan receipt final tetap residual; `UAT_ACCEPTED` dan `BUSINESS_READY` tidak boleh diklaim. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / PRODUCTION_ACTIVATED / PHYSICAL_UAT_EVIDENCE_PENDING / BUSINESS_READY=false`; backend `ceb33732144badbb929d212b0d5d7b3fd0e24474`, Studio `6bd8e54a0d472e700ec9acf00112f468656a0583` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-150 - Saga Member memakai V4 Editorial Coffee Utility pada public dummy

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Arah visual dan deployment Saga Member public dummy |
| Keputusan | Terapkan seluruh batch perbaikan UI/UX sebagai V4 Editorial Coffee Utility, merge ke canonical main, dan deploy ke satu stable public Vercel URL. Runtime tetap memakai data dummy dan tidak mengaktifkan backend, provider, transaksi, atau data nyata. |
| Alasan | Founder meminta perubahan visual yang signifikan, lebih rapi, mobile-first, tidak terasa generatif, dan bisa langsung dicoba melalui satu link publik tetap. |
| Alternatif yang dipertimbangkan | Mempertahankan V3; hanya mengganti aset hero; menunda deployment sampai backend nyata aktif. |
| Dampak | Lima primary route, typography, palette, texture, gradient, effects, motion, dan navigation berubah pada static public demo. Private VPS D0, QRIS, Resend, Push, NFC, printer, real account, dan business readiness tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V4_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `99ca02a06bb85d52570d35454cd5c3c0a0d4087d`, PR #18, deployment `dpl_58yvx5Me4wLb3xwgBMnaczZmmGGY` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |

## DEC-156 - Saga Member Card memakai overlay stroke dan stepper tema satu baris

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Keterbacaan ekspor kartu dan navigasi tema Saga Member public dummy |
| Keputusan | Hapus rectangle di belakang identitas, Member ID, dan NFC pada preview serta PNG; gunakan stroke adaptif. Ganti rail tujuh tema dengan satu tema aktif dan tombol kiri/kanan yang siklik. |
| Alasan | Founder menemukan posisi rectangle pada PNG tidak presisi, rectangle menutupi artwork, dan rail tema kurang responsif pada mobile. |
| Alternatif yang dipertimbangkan | Memperbaiki ukuran rectangle; mempertahankan rail horizontal; memakai dropdown tema. |
| Dampak | Artwork lebih bersih, identitas tidak terpotong panel, pemilihan tema konsisten pada 320–430 px, dan target sentuh tetap 44 px. Backend, provider, NFC nyata, data, dan transaksi tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V21_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `a788cce43fda9f12d12c4fbb9db9f69bf492f841`, PR #37, deployment `dpl_APiyaJGgW9v4BecMyGEHWT3TkELz` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |

## DEC-157 - Hero Jelajah Saga Member memakai lockup dua baris rata tengah

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Hierarki typography hero Jelajah Saga Member public dummy |
| Keputusan | Pusatkan eyebrow, judul, dan deskripsi hero Jelajah; kunci judul menjadi dua baris `Temukan yang kamu` / `butuhkan.`; gunakan ukuran responsif 28-32 px dan spacing vertikal yang lebih lega. |
| Alasan | Founder menilai wrap tiga baris sebelumnya terlalu menumpuk dan meminta komposisi di tengah dengan line break serta jarak yang disengaja. |
| Alternatif yang dipertimbangkan | Mempertahankan wrap otomatis tiga baris; mengecilkan font tanpa mengubah komposisi; memakai satu baris yang akan terlalu sempit pada mobile. |
| Dampak | Hero lebih tenang dan mudah dipindai pada 320-430 px tanpa mengubah navigasi, data, backend, provider, atau transaksi. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V22_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `7c82148e599fea9cd42eac1f8cb7f5bf617f310e`, PR #38, deployment `dpl_9qWcZtJ52cpwoRPgMXEVapJgpHhL` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |

## DEC-151 - Saga Member memakai V5 Urban Coffee Club pada public dummy

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Finalisasi visual dan deployment Saga Member public dummy |
| Keputusan | Jalankan seluruh batch V5 Urban Coffee Club, merge melalui canonical main, dan deploy ke satu stable public Vercel URL setelah Preview, CI, dan UAT lulus. Runtime tetap memakai data dummy tanpa backend/provider nyata. |
| Alasan | Founder meminta peningkatan signifikan pada animasi, typography, warna, tekstur, gradient, dan effect agar tampilan lebih modern, editorial, serta tidak terasa AI-generated. |
| Alternatif yang dipertimbangkan | Mempertahankan V4; memperbanyak gambar generatif; mengubah URL publik; mengaktifkan backend/provider bersama redesign. |
| Dampak | Lima primary route dan route sekunder memakai hierarchy Urban Coffee Club, tiga local SVG texture, restrained gradient/effect/motion, minimum typography 12 px, touch target 44 px, dan nav clearance. Static public dummy berubah; private VPS D0, QRIS, Resend, Push, NFC, printer, real account, serta business readiness tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V5_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `f11172a8540263c4394666fb4f722e15546f9bba`, PR #19, deployment `dpl_EQ64iVww84S8DsSbSLVY8W1MhVoW` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |

## DEC-152 - Beranda Saga Member memakai V6 Daily Lobby pada public dummy

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Home experience dan deployment Saga Member public dummy |
| Keputusan | Jalankan seluruh sepuluh batch perbaikan Beranda sebagai V6 Daily Lobby, merge melalui canonical main, lalu promosikan exact Preview ke satu stable public Vercel URL. Runtime tetap data dummy tanpa backend/provider nyata. |
| Alasan | Founder meminta Beranda yang tidak polos, memiliki experience lebih khas, small-wide slideshow, serta typography dan sizing yang lebih matang. |
| Alternatif yang dipertimbangkan | Mempertahankan Home V5; autoplay dua detik; memperbanyak gambar generatif; mengubah route lain sekaligus. |
| Dampak | Beranda memiliki sapaan waktu lokal, compact wallet, empat-slide carousel, shortcut, context, tier, dan activity. Carousel memakai interval empat detik untuk keterbacaan, kontrol pause/manual/swipe, pause saat off-screen, serta reduced-motion. Runtime public dummy berubah; private VPS D0, QRIS, Resend, Push, NFC, printer, real account, serta business readiness tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V6_DAILY_LOBBY_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `85a6f8bc4151e414bb0ca7235922162d0d914190`, PR #20, deployment `dpl_CqeoVBX1Q11ZKc4C4p2tVRkXkMLv` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |

## DEC-153 - Beranda Saga Member memakai V7 Home Editorial Final pada public dummy

| Field | Isi |
|---|---|
| Tanggal | 2026-09-04 |
| Topik | Finalisasi pengalaman Beranda Saga Member public dummy |
| Keputusan | Lengkapi seluruh perbaikan Beranda menjadi V7 Home Editorial Final, validasi melalui Preview dan CI, lalu promosikan ke satu stable public Vercel URL. Runtime tetap data dummy tanpa backend, provider, transaksi, atau data nyata. |
| Alasan | Founder meminta seluruh rekomendasi Beranda dikerjakan: compact first fold, shortcut yang lebih kaya, prioritas daily context, storytelling tier/activity, motion, loading, dan fallback agar experience meningkat signifikan. |
| Alternatif yang dipertimbangkan | Mempertahankan V6; memperbanyak foto; mengubah route lain bersamaan; mengaktifkan backend/provider saat redesign. |
| Dampak | Beranda memakai shortcut dua kolom, agenda Studio prioritas, Points context, tier journey, activity timeline, progress carousel, serta placeholder foto sintetis Coffee/Studio dengan fallback. Mobile boundary 320–430 px, Plus Jakarta Sans, Feather icon, motion transform/opacity, public dummy runtime, dan business boundary tetap. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / IMPLEMENTED / SAGA_MEMBER_V7_HOME_FINAL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; source `83b969d7c77a2ce8015fb087074d3d59e7acea39`, PR #21, deployment `dpl_7ZMPhGXxmfFG4SyUkXFZe2zWjGym` |
| Dokumen terkait | [Saga Platform Product](products/saga-platform/PRODUCT.md), [Saga Platform Dossier](products/saga-platform/DOSSIER.md), [Saga Platform Changelog](products/saga-platform/CHANGELOG.md) |
