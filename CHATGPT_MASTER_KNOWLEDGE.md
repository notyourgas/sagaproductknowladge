# Saga Product — Master Knowledge for ChatGPT

Evidence cut-off: 31 Juli 2026
Owner: Andreas / SagaDev
Visibility: public-safe

## Cara menggunakan dokumen ini

Dokumen ini adalah ringkasan kanonik untuk brainstorming produk, fitur, konten,
sales, dan support. Baca dokumen produk terkait untuk detail.

Jangan menganggap `planned`, `prototype`, `local validated`, atau
`implemented not deployed` sebagai fitur production. Jangan menggabungkan
pricing, role, trial, atau subscription antarproduk.

## Arah besar SagaDev

SagaDev membangun software operasional untuk bisnis nyata. Produk diposisikan
berdasarkan workflow, bukan sebagai kumpulan fitur generik.

### Self-photo studio

- **SagaBook mengatur sebelum sesi**: booking, jadwal, pembayaran, reminder,
  check-in, customer request, dan operasi studio.
- **SagaView menyelesaikan setelah sesi**: folder foto, frame, pemilihan foto,
  komposisi, export, dan print.

SagaBook dan SagaView dijual satuan. Bundle ditunda sampai penjualan dan
operasional produk satuan stabil. Akun/identity dapat memiliki seam bersama,
tetapi role, permission, session, entitlement, subscription, trial, data, dan
payment ledger tetap terpisah per produk.

## Ringkasan produk

### SagaBook

SaaS booking dan operasi self-photo studio. Customer melakukan booking,
pembayaran, menerima status/reminder, dan mengelola request dari secure booking
link. Operator mengelola calendar, task, check-in, session, payment,
reconciliation, report, staff, tenant, dan subscription.

Status: `PRODUCTION_DEPLOYED`.
Harga bulanan: Basic Rp500.000, Growth Rp950.000, Pro Rp1.500.000.
Trial: 14 hari dua fase; hari 1-7 full access dan hari 8-14 plan-limited,
kemudian grace read-only hari 15-21.

Update terbaru: Customer Booking Center production.

### SagaView

SaaS local-first untuk workflow studio setelah pemotretan. Operator mengaktifkan
device, membuka session, memilih folder, mengimpor 50/200/500 foto, membiarkan
customer memilih frame/foto, menyusun output, lalu export/print. Foto customer
tetap berada di device studio.

Status: Studio frontend `PRODUCTION_DEPLOYED`; backend komersial terbaru
`IMPLEMENTED_NOT_DEPLOYED`.
Harga bulanan: Growth Rp200.000, Pro Rp500.000.
Trial contract: 14 hari dua fase; production activation backend terbaru masih
menunggu provider canary.

Update terbaru: output 4R production, portrait 1200x1800, landscape 1800x1200,
300 DPI.

### SagaBio

Custom mini website link-in-bio untuk bisnis lokal, creator, dan personal brand.
Fokus awal F&B. Positioning: customer-journey front door dari Instagram/QR
menuju menu, promo, lokasi, WhatsApp, dan e-menu; bukan clone Linktree dan bukan
pengganti SagaMenu.

Status: `LOCAL_VALIDATED`, belum production.

### SagaMenu

E-menu/e-katalog preview-first untuk bisnis F&B, jasa, dan katalog visual.
Domain kanonik: Catalog, Collection, Offering, dan immutable CatalogSnapshot.
Store Display tablet-first dan Mobile Catalog membaca snapshot yang sama.
Kedua surface memiliki fallback gambar aksesibel serta video failure, retry,
dan recovery yang sudah local validated.
Produk tidak memiliki cart/order/payment pada scope pilot.

Status: `LOCAL_VALIDATED`, production gate eksternal belum tersedia.

### SagaFin

Finance tracker personal mobile-first berbahasa Indonesia. Core flow:
`Catat -> Review -> Setujui -> Budget dan Laporan`. Transfer internal dan tarik
tunai tidak boleh dihitung sebagai pengeluaran aktual. Data hasil OCR/import
harus masuk review sebelum memengaruhi laporan.

Finance Tracker Go dan SagaFin adalah produk yang sama.

Status: `CONTROLLED_PUBLIC_TRIAL`. Pricing final belum dikunci.

### COYABAG

Ecommerce tas streetwear dengan storefront React/Vite dan backend
Laravel/Inertia. Storefront, API, dan admin live, tetapi commerce production
penuh masih fail-closed sampai data final, payment/shipping/email/storage,
owner 2FA, legal, backup restore, dan provider UAT selesai.

Status: `PRODUCTION_DEPLOYED_NOT_ACTIVATED`.

### AOGTICVITY

Web app mobile-first untuk operasi event/kompetisi: registrasi, verifikasi,
check-in, enam tim, lomba, roster, jadwal, hasil, standing, pengumuman, audit,
dan live projection. Ini adalah nama terbaru project 17an/Olimpiade
Kemerdekaan.

Status: `PROTOTYPE/LOCAL_RELEASE_CANDIDATE`. Domain target belum diaktifkan.

### SagaOPS

POS dan Back Office coffeeshop: order, payment, shift, recipe/HPP, inventory
ledger, purchase order, live dashboard, approval, dan closing. Prototype
frontend membuktikan workflow, tetapi belum memiliki backend production.

Status: `PROTOTYPE`.

### Saga Platform

Control plane SagaDev untuk registry produk, account, subscription, entitlement,
audit, readiness, launcher, dan integrasi. Operational data tetap dimiliki
masing-masing produk.

Status: `PRODUCTION_FOUNDATION` dengan migrasi boundary bertahap.

### Saga AI

Knowledge/retrieval/support layer yang harus menjawab berdasarkan sumber
disetujui, permission, dan status release aktual. Ia bukan alasan untuk
menggabungkan data atau credential lintas-produk.

Status: `PLANNED/FOUNDATION`.

## Keputusan komersial penting

- SagaBook dan SagaView memiliki harga satuan yang berbeda.
- Bundle ditunda.
- Trial dua fase memberi pengalaman penuh di tujuh hari pertama, lalu
  plan-limited pada tujuh hari kedua.
- Produk kedua tidak otomatis aktif hanya karena user memakai email/identity
  yang sama.
- Pricing SagaFin belum final.
- COYABAG adalah client commerce project, bukan entitlement SaaS SagaDev.

## Larangan klaim

- Jangan sebut SagaView backend terbaru live sebelum provider canary dan release
  production selesai.
- Jangan sebut SagaBio atau SagaMenu production.
- Jangan sebut COYABAG siap transaksi penuh.
- Jangan sebut AOGTICVITY production multi-device.
- Jangan klaim Gmail sync, Google Sheets, atau PDF server-side SagaFin sebagai
  fitur aktif bila bukti terbaru belum berubah.
- Jangan menyebut dummy/fixture/local log sebagai bukti provider.

## Ide konten yang selaras

- Before-after masalah operator.
- Demonstrasi workflow end-to-end.
- Kesalahan manual yang dihilangkan.
- Cara produk menjaga data dan role tetap aman.
- Perbedaan antara fitur demo, staging, dan production.
- Cerita membangun produk lokal untuk pain bisnis Indonesia.
