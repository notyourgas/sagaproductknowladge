# SagaDevs Product Hub Knowledge

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
