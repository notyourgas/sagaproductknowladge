# SagaDevs Product Hub Dossier

## 2026-09-28 — Keuangan tiga outlet: workflow operator dan recovery Windows

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

## Tujuan dokumen

Menjadi rujukan publik untuk positioning, experience, technical boundary, dan readiness website induk SagaDevs.

## Konteks dan status bukti

- Updated: 14 Agustus 2026.
- Delivery: `PRODUCTION_DEPLOYED` pada Vercel.
- Activation: `PRODUCTION_ACTIVATED` pada `sagadevs.com`.
- Business readiness: `NEEDS_CONFIRMATION`.
- Evidence: production deployment `dpl_FZA1XUs3G4YKymqkqaFCMHnrAx3A`, rollback `dpl_5qvER4vn4H8m2CmpgmEtkcbnNxcU`, health, security headers, static/browser/accessibility gate, protected Preview, founder UAT, exact-candidate promotion, public-domain homepage regression empat viewport, serta bio regression desktop/mobile. Release redesign sebelumnya ditolak.

## Overview produk

SagaDevs adalah parent product hub dan jalur masuk jasa digital. Ia merangkum keluarga produk tanpa menggantikan landing maupun aplikasi masing-masing produk.

## Masalah yang diselesaikan

Calon pengguna membutuhkan satu pintu untuk memahami produk Saga, melihat workflow nyata, menuju landing yang tepat, atau menghubungi SagaDevs untuk kebutuhan custom.

## Target pengguna

Calon pengguna produk Saga, owner bisnis yang membutuhkan sistem digital, partner, dan reviewer.

## Persona pengguna

- Owner studio yang membandingkan SagaBook dan SagaView.
- Individu yang mengevaluasi Sagafin.
- Owner bisnis yang membutuhkan website atau operational tool.

## Value proposition

Satu hub yang menunjukkan bukti workflow asli dan meneruskan pengunjung ke produk atau percakapan jasa yang tepat.

## Use case

- Menjelajahi tiga produk aktif.
- Melihat tiga capture source-grounded per produk.
- Membuka landing produk.
- Membentuk brief jasa dan mengirimnya melalui WhatsApp.

## Fitur utama

- Original seven-section composition, numbered navigation, dan section rail.
- Hero 3D, command palette, service cards, interactive system map, process cards, workflow slider, mini-terminal, dan contact selector.
- Showroom SagaBook, SagaView, dan Sagafin dengan sembilan source-grounded capture.
- Responsive navigation dan accessible keyboard controls.
- Compact WhatsApp CTA dan footer lengkap dengan navigasi, direct product links, contact, availability, copyright, serta back-to-top.
- Component-safe product titles, repositioned 3D hero, coherent CTA hierarchy, restrained reveal/product motion, reduced-motion fallback, dan offscreen WebGL pause.
- Route tersembunyi dari homepage `sagadevs.com/bio` dengan shell mobile-first maksimal 440 px, website utama, dropdown delapan portfolio tertutup secara default, dan CTA Contact Us ke WhatsApp.

## Fitur MVP

Static public landing, sembilan preview image, link landing produk, WhatsApp conversion, health endpoint, security headers, dan noindex gate. Placeholder auth/pricing source tetap tersembunyi dan inert; bukan fitur aktif.

## Roadmap

`CONFIRMED`: link directory `/bio` memuat delapan portfolio yang dipilih founder. `PROPOSAL`: bangun Super Admin terpisah ketika kebutuhan publishing dan lead management sudah terdefinisi.

## User journey

Pengunjung memahami SagaDevs, memilih produk atau layanan, meninjau bukti, lalu menuju landing produk atau WhatsApp.

## User flow

`Hero -> Services/System Map -> Product Showroom -> source capture -> product landing`, `Hero -> Process/Workflow -> Contact -> WhatsApp`, atau direct `/bio -> website/portfolio/contact`.

## Business model

Hub mendukung akuisisi produk dan lead jasa; model komersial per produk tetap product-scoped.

## Pricing

Tidak ada pricing pada hub. Pricing harus berada pada landing dan kontrak produk terkait.

## Kompetitor

`NEEDS CONFIRMATION`: kategori pembanding dan evidence kompetitor belum dikunci.

## Diferensiasi produk

Showroom memakai capture workflow produk Saga yang benar-benar diteliti, bukan generic dashboard atau fabricated demo.

## Brand positioning

Independent digital product studio yang membangun sistem dari workflow bisnis nyata.

## Messaging

Pesan utama menekankan digital systems that make businesses move serta bukti produk dan operasional yang nyata.

## FAQ

- Apakah showroom merupakan live app? Tidak, showroom menampilkan capture prototype terkurasi.
- Apakah SagaDevs memiliki login publik? Tidak pada static hub.
- Apakah domain production sudah memakai route bio? Ya, `sagadevs.com/bio` aktif dan tidak muncul pada navigasi homepage.

## Technical overview

Static HTML, CSS, JavaScript, local font, JSON content manifest, local product images, dan Three.js hero di Vercel. Typography mempertahankan Helvetica Neue, Xanh Saga, dan IBM Plex Mono Saga; refinement ditempatkan sebagai layer CSS terisolasi.

## Integrasi

Landing produk eksternal dan WhatsApp. Tidak ada product API, iframe, analytics provider, payment, atau auth.

## Data yang digunakan

Konfigurasi produk publik dan event sessionStorage yang data-minimized. Tidak ada PII atau customer operational data.

## Risiko dan asumsi

- Source workspace belum memiliki commit Git kanonik untuk perubahan bio; provenance aktivasi dijaga melalui exact Vercel preview dan production deployment ID.
- Delapan URL portfolio aktif saat release diverifikasi, tetapi availability situs eksternal tetap dapat berubah di luar lifecycle SagaDevs hub.

## KPI dan success metrics

`PROPOSAL`: product landing click, qualified WhatsApp brief, dan conversion per product entry. Belum ada baseline production.

## Ide konten pemasaran

Before/after workflow bisnis, walkthrough source-grounded, dan perbedaan peran SagaBook, SagaView, serta Sagafin.

## Contoh caption

`PROPOSAL`: “Tiga produk, tiga workflow nyata, satu cara kerja: mulai dari masalah operator.”

## Ide campaign

`PROPOSAL`: serial tiga produk yang mengarahkan setiap episode ke landing masing-masing.

## Sales talking points

- Mulai dari workflow dan pain operator.
- Tunjukkan capture asli sebelum membahas fitur.
- Pilahkan product fit dari kebutuhan custom project.

## Objection handling

Jika calon pengguna meminta demo penuh, arahkan ke landing atau guided demo produk; jangan memosisikan image showroom sebagai aplikasi live.

## Keputusan dan gap

`CONFIRMED`: SagaDevs adalah parent hub, product landing tetap terpisah, original style/features/font dipertahankan, Hero Scale v4 aktif pada homepage, dan link directory mobile-first `/bio` aktif di production tanpa tautan dari homepage. `NEEDS CONFIRMATION`: analytics production serta scope Super Admin. `TODO`: tutup gap source Git commit untuk perubahan bio.
