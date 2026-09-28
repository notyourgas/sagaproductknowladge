# SagaDevs Product Hub Changelog

## 2026-09-28 — Keuangan tiga outlet: workflow operator dan recovery Windows

- `CONFIRMED`: implementasi screening kedua dipush pada source privat `ee2d56701482620258813f1c6305267718bb6de5`. Preview https://keuangan-multi-outlet-preview.vercel.app sudah `PRODUCTION_DEPLOYED_STATIC_PREVIEW`, deployment `dpl_GHAXKvDF4XwLHQ5rqTWXH8iAd3uK` Ready. Tujuh file cocok checksum. Dummy, enam tombol role, tanpa login dan API publik503 tetap sesuai eksperimen pribadi nonkomersial. Rollback artifact publik sebelumnya tersedia.
- `CONFIRMED / PRIVATE_STAGING_DEPLOYED`: Laravel/MySQL dan console sintetis privat memakai source yang sama. Sembilan file console cocok checksum runtime; autentikasi dan izin berasal dari server. Mutasi terotorisasi ulang setelah menunggu group lock, termasuk perubahan user/staf/task; sesi yang dicabut, dipindah atau diganti token ditolak. Akses privat melalui SSH; Hostinger/API publik/TLS/DNS belum diaktifkan.
- Workflow baru: Hari ini tiga outlet, assignment mandiri, setup delapan langkah dengan tanggal WIB dan review opening, draft actor/payload/key beku serta pemulihan receipt. Nota mempunyai diskon/ongkir, alasan nomor kosong dan versi split alokasi. Shipment/partial receipt/retur diterima atau belum dikirim menjaga kuantitas tujuan yang sudah terikat; penerima transfer satu outlet tidak memperoleh ledger pengirim. Tindakan sumber, pembayaran/kredit, preflight/history closing, sepuluh laporan dengan komponen budget, CSV/PDF bermetadata/expiry, serta lampiran10MB/10file dan soft discard orphan tersedia.
- Bukti kandidat: frontend78/78, browser lokal publik29, console privat21 dan operator18, tanpa page error; backend126/126 dengan1.346 assertion pada SQLite dan MySQL disposable. Runtime sintetis memvalidasi receipt sesudah login ulang, partial shipment/return/split, sepuluh laporan, ekspor dengan hash, lampiran clean, transfer/reversal, reader denial dan revokasi. Tiga POST dengan key identik menghasilkan satu receipt; delapan read serentak konsisten, latency196–599ms pada fixture pilot. Ini bukan benchmark100outlet atau UAT pengelola.
- `CONFIRMED`: backup DB/berkas terenkripsi dan restore disposable45tabel beserta fingerprint berkas cocok sebelum rilis final. Sesuai [DEC-216](../../DECISIONS.md), snapshot lokal dan task offsite Windows berjalan setiap lima menit. Salinan terbaru beserta base snapshot dan increment cocok checksum; task Windows sudah menjalankan penarikan dengan hasil0. Komputer harus online, pemilik login dan SSH tersedia; monitor mendeteksi offsite terlambat.
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
