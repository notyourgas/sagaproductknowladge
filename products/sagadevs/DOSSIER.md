# SagaDevs Product Hub Dossier

## Tujuan dokumen

Menjadi rujukan publik untuk positioning, experience, technical boundary, dan readiness website induk SagaDevs.

## Konteks dan status bukti

- Updated: 31 Juli 2026.
- Delivery: `STAGING_DEPLOYED` pada Vercel Preview.
- Activation: `NOT_PRODUCTION_ACTIVATED`.
- Business readiness: `NEEDS_CONFIRMATION`.
- Evidence: corrected Vercel Preview `source-preserving-motion-polish-v3`, health, security headers, static/browser/accessibility gate, dan visual audit sembilan viewport. Release redesign sebelumnya ditolak.

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

## Fitur MVP

Static public landing, sembilan preview image, link landing produk, WhatsApp conversion, health endpoint, security headers, dan noindex gate. Placeholder auth/pricing source tetap tersembunyi dan inert; bukan fitur aktif.

## Roadmap

`PROPOSAL`: tambahkan portfolio client setelah evidence dan izin publik tersedia. `PROPOSAL`: bangun Super Admin terpisah ketika kebutuhan publishing dan lead management sudah terdefinisi.

## User journey

Pengunjung memahami SagaDevs, memilih produk atau layanan, meninjau bukti, lalu menuju landing produk atau WhatsApp.

## User flow

`Hero -> Services/System Map -> Product Showroom -> source capture -> product landing` atau `Hero -> Process/Workflow -> Contact -> WhatsApp`.

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
- Apakah domain production sudah memakai release ini? Belum.

## Technical overview

Static HTML, CSS, JavaScript, local font, JSON content manifest, local product images, dan Three.js hero di Vercel. Typography mempertahankan Helvetica Neue, Xanh Saga, dan IBM Plex Mono Saga; refinement ditempatkan sebagai layer CSS terisolasi.

## Integrasi

Landing produk eksternal dan WhatsApp. Tidak ada product API, iframe, analytics provider, payment, atau auth.

## Data yang digunakan

Konfigurasi produk publik dan event sessionStorage yang data-minimized. Tidak ada PII atau customer operational data.

## Risiko dan asumsi

- Vercel Preview dilindungi dan memerlukan akses reviewer.
- Production promotion menunggu visual UAT founder.
- Portfolio client menunggu sumber, izin, dan claim review.

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

`CONFIRMED`: SagaDevs adalah parent hub, product landing tetap terpisah, original style/features/font harus dipertahankan, koreksi hanya menyentuh hierarchy/typography/placement/motion/accessibility, dan Motion Polish v3 hanya berada pada Vercel Preview. Production belum berubah. `NEEDS CONFIRMATION`: visual UAT, promotion date, analytics production, portfolio publik, serta scope Super Admin.
