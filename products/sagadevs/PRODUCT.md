# SagaDevs Product Hub Knowledge

## 2026-09-28 — Preview eksperimen keuangan tiga outlet

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
