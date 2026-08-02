# Saga Product — Master Knowledge for ChatGPT

Evidence cut-off: 1 Agustus 2026
Owner: Andreas / SagaDev
Visibility: public-safe

## Tujuan

Memberi konteks portofolio minimum yang aman dimuat pertama oleh ChatGPT atau AI
agent.

## Konteks

Dokumen ini adalah ringkasan; detail dan gap tetap berada pada dokumen produk,
[INDEX](INDEX.md), dan [GAPS](GAPS.md).

## Cara menggunakan dokumen ini

Dokumen ini adalah ringkasan kanonik untuk brainstorming produk, fitur, konten,
sales, dan support. Baca dokumen produk terkait untuk detail.

Daftar isi kanonik: [INDEX.md](INDEX.md). Pertanyaan yang belum diputuskan:
[GAPS.md](GAPS.md).

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

### SagaDevs

Parent product hub dan jalur masuk jasa digital. Production release
`source-preserving-hero-scale-v4` mempertahankan original style, font, tujuh
section, fitur interaktif, serta sembilan capture source-grounded SagaBook,
SagaView, dan Sagafin. Perubahan hanya pada typography, hierarchy, spacing,
density, placement, responsive behavior, motion, accessibility, dan focus
management. Hero Scale v4 memperbesar logo 3D tepat 1,5× dari Motion Polish v3,
menggesernya lebih kiri, memberi kompensasi tablet portrait, dan memakai entry
module versioned untuk cache safety. Hub tidak
memiliki login, pricing, payment, database lead, atau Super Admin aktif;
placeholder source yang tersisa tersembunyi dan inert.

Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` pada `sagadevs.com`;
prototype tetap `noindex`.

### SagaBook

SaaS booking dan operasi self-photo studio. Customer melakukan booking,
pembayaran, menerima status/reminder, dan mengelola request dari secure booking
link. Operator mengelola calendar, task, check-in, session, payment,
reconciliation, report, staff, tenant, dan subscription.

Status: `PRODUCTION_DEPLOYED`.
Harga bulanan: Basic Rp500.000, Growth Rp950.000, Pro Rp1.500.000.
Limit: Basic 1 cabang/3 staff; Growth 3 cabang/10 staff; Pro maksimal 10
cabang/30 staff self-service; kebutuhan lebih besar menggunakan Custom.
Booking dipasarkan unlimited dengan fair-use.
Trial: 14 hari dua fase; hari 1-7 full access dan hari 8-14 plan-limited,
kemudian grace read-only hari 15-21.

Update terbaru: Support & Recovery Center production. Owner/admin dapat
bertanya, melakukan human handoff, melanjutkan tiket, mengakses account
recovery/setup/changelog, dan mengirim screenshot privat dari satu halaman.
Retry pesan idempotent dan scope produk/tenant/akun/percakapan ditegakkan
server-side. Platform Support juga aktif dengan antrean SLA, ownership
operator, optimistic lock, dan receipt audit tersanitasi. Paket/limit, trial,
fair-use, refund/reschedule, retention, offboarding, serta support SLA founder
aktif. Activation Center dan Customer Booking Center tetap aktif. Source
production terbaru: `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`,
release `20260731172605-39fb2d3`.

Routing Fonnte tenant-scoped sudah aktif di SagaBook production pada release
`20260731181921-378bcdf`, source `378bcdf4`: default SagaDev, token Fonnte
studio sendiri, atau manual-only. Candidate signup pada source `dcb5a3f3`
menyiapkan trial 7 hari otomatis tanpa approval owner/email verification,
dengan login tetap menunggu provisioning ready. Auto-trial itu belum
production dan tetap `PRODUCTION HOLD`.

UI/UX operasional pada source `8edd7621` memperbaiki
dashboard/admin, action staff, storefront booking milik tenant, hierarchy
responsif, accessibility states, dan signature `Powered by SagaBook` tanpa
masuk ke invoice atau artefak bisnis. Release safety exact-SHA juga telah
diperketat dan backup/restore lulus. Statusnya `PRODUCTION_DEPLOYED` pada
release `20260801213514-8edd762`; manifest, public smoke, database audit,
service health, dan rollback lulus. Ini adalah template website booking milik
studio, bukan landing page marketing SagaBook.

Hardening auth pada source `d9bbbac3` aktif sebagai release
`20260802002923-d9bbbac`. Release berikutnya, source `76defd19`, aktif sebagai
`20260802013852-76defd1`: storefront tenant dan Booking Center tetap memberi
pencarian Google Maps berbasis nama/alamat ketika URL khusus belum tersedia;
URL eksplisit dibatasi ke host Google HTTPS dan kontrol kritis minimal 44
piksel. Full backend 957/957, matriks browser desktop+mobile 298/298,
backup/restore exact-SHA, manifest, database audit 100, public smoke, service
health, rollback, dan visual production mobile/desktop lulus. URL Maps presisi
dari data owner tetap opsional dan tidak disimpan di knowledge publik.

Keputusan privacy/retention/offboarding SagaBook yang lebih rinci telah
disetujui owner untuk implementasi dan legal review pada source docs commit
`295ec863ff6cfc2e79ac98183651f19c15a3b368`. Workflow consent berversi,
customer privacy request, owner triage, incident, offboarding, dan retention
preview sudah `IMPLEMENTED_NOT_DEPLOYED` pada source commit
`d4c96276b6b79e9a969975cfa5b4943d0c275e4b`. Kontrak belum aktif atau
dipublikasikan; penghapusan otomatis tetap nonaktif dan unrestricted public
SaaS launch menunggu legal, acceptance, release, serta publication gate.

### SagaView

SaaS local-first untuk workflow studio setelah pemotretan. Operator mengaktifkan
device, membuka session, memilih folder, mengimpor 50/200/500 foto, membiarkan
customer memilih frame/foto, menyusun output, lalu export/print. Foto customer
tetap berada di device studio.

Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
mass-scale `NEEDS CONFIRMATION`.
Harga bulanan: Growth Rp200.000, Pro Rp500.000.
Growth mencakup 1 device, 10 frame, 3 preset, offline 24 jam, dan 2 GB aset
frame cloud. Pro mencakup 4 device, 50 frame, 10 preset, offline 168 jam, 10 GB
aset frame cloud, laporan lanjutan, activity log, dan priority support. Sesi dan
foto dipasarkan unlimited dengan fair-use; foto tetap lokal.
Trial contract: 14 hari dua fase server-side; hari 1–7 full access, hari 8–14
plan-limited, tanpa auto-charge.

Update terbaru: backend/Owner tetap memakai source
`f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
`20260801101515-f26bb57`, sedangkan Studio aktif memakai source
`a130ee5939f64fd76d575908b7748bacd75a6878`, release
`20260801101538-a130ee5`. Owner Console lintas browser,
Studio exclusive lease, output 4R, session completion/privacy handoff,
trial/subscription, serta public Home/Pricing/Help/Contact/Privacy/Terms/Legal
aktif. Limit device/frame/preset, quota aset frame cloud, fair-use,
support/retention/offboarding, backup/restore, additive migration, regression,
security header, rollback, monitoring, dan public smoke lulus. Shell aplikasi
memakai hierarchy operasional solid, target minimal 44 px, reduced-motion/
forced-colors, serta tepat satu `Powered by SagaView` pada tiap surface tanpa
masuk ke export/print/invoice/receipt. Pemilihan frame memakai preview,
selected state, jumlah cetakan, dan `Terapkan & lanjut`; Editor/Review mobile
390x844 kini vertikal dan tidak memotong canvas, checklist, CTA, atau retry,
sementara workspace desktop dan output 4R tetap. Mulai sesi kini memakai
checklist perangkat/paket/folder/frame/output dan satu CTA kontekstual 48 px;
utility cloud/recovery sehat diringkas tanpa mengubah local-first, device,
privacy, atau 4R. Display Settings kini menuntun pilihan preset ke preview,
penyesuaian, validasi, dan save tanpa overflow pada mobile; selected, keyboard,
44 px, offline, dan retry state tetap eksplisit. Satu canary payment production
berhasil dibayar dan callback diproses exactly-once; release tidak membuat
intent/QRIS/transaksi kedua. Katalog frame terisi kini dapat dicari dan difilter
berdasarkan kategori/status, menampilkan status aktif/nonaktif dengan teks,
memakai satu kolom legible di mobile dan tiga kolom stabil di desktop, serta
mempertahankan local frame saat offline tanpa mengubah customer picker atau 4R.

Candidate Saga Platform `dcb5a3f3` menyiapkan signup SagaView auto-trial 7 hari
tanpa approval owner/email verification. Login tetap menunggu provisioning
ready dan device tetap diaktivasi dari aplikasi studio. Statusnya
`LOCAL_VALIDATED / PRODUCTION HOLD`, bukan production.

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

Status runtime: `UNVERIFIED`; `CONTROLLED_PUBLIC_TRIAL` adalah fase bisnis yang
pernah dilaporkan. Pricing final belum dikunci.

### COYABAG

Ecommerce tas streetwear dengan storefront React/Vite dan backend
Laravel/Inertia. Storefront, API, dan admin live, tetapi commerce production
penuh masih fail-closed sampai data final, payment/shipping/email/storage,
owner 2FA, legal, backup restore, dan provider UAT selesai.

Delivery: `PRODUCTION_DEPLOYED`. Activation dan business readiness: `BLOCKED`.

### AOGTICVITY

Web app mobile-first untuk operasi event/kompetisi: registrasi, verifikasi,
check-in, delapan tim, sepuluh lomba, roster, jadwal, hasil, standing,
pengumuman, audit, dan live projection. Master recap 17 Agustus 2026 sudah
dipublikasikan pada MySQL dark staging dengan durasi yang tetap provisional.
Public Vercel memakai guarded HTTPS proxy ke Hostinger untuk identity MySQL,
database session, forced password change, optional admin MFA, role
authorization, user/session operations, serta server-authoritative result
persistence dan audit. Direct BFF fail-closed dan MySQL tetap loopback-only.
Public registration juga aktif pada MySQL dengan validation, consent,
idempotency, rate limit, receipt, audit, dan admin verification desk; participant
fixture serta localStorage registration telah dihapus.
Ini adalah nama terbaru project 17an/Olimpiade Kemerdekaan.

Delivery: `PRODUCTION_DEPLOYED`. Activation produk keseluruhan:
`NOT_PRODUCTION_ACTIVATED`; auth dan registration: `PRODUCTION_ACTIVATED`.
Business readiness: `BLOCKED`. Public delivery aktif di
`https://olimpiade-kemerdekaan.vercel.app`; target custom domain belum
diaktifkan. Real credential login dan database-backed session sudah terbukti;
admin password claim dan registration UAT sudah selesai. Roster/check-in/result
rehearsal, notification/recovery provider, dan physical multi-device UAT belum
selesai. Sebagian non-registration UI masih memakai bundled master/local state.
Sejak release 1 Agustus 2026, surface
tersebut memakai festival UI/UX mobile 430 px dengan Plus Jakarta Sans,
Feather-style icons, Motion for React, restrained celebration, dan
reduced-motion fallback.

### SagaOPS

POS dan Back Office coffeeshop: order, payment, shift, recipe/HPP, inventory
ledger, purchase order, live dashboard, approval, dan closing. Prototype
frontend membuktikan workflow, tetapi belum memiliki backend production.

Status: `PROTOTYPE`.

### Saga Platform

Control plane SagaDev untuk registry produk, account, subscription, entitlement,
audit, readiness, launcher, dan integrasi. Operational data tetap dimiliki
masing-masing produk.

Fondasi tertentu: `PRODUCTION_DEPLOYED` dengan migrasi boundary bertahap.
Activation bersifat parsial.

### Saga AI

Knowledge/retrieval/support layer yang harus menjawab berdasarkan sumber
disetujui, permission, dan status release aktual. Ia bukan alasan untuk
menggabungkan data atau credential lintas-produk.

Delivery: `PLANNED`. Belum production-activated.

## Keputusan komersial penting

- SagaBook dan SagaView memiliki harga satuan yang berbeda.
- Bundle ditunda.
- Trial dua fase memberi pengalaman penuh di tujuh hari pertama, lalu
  plan-limited pada tujuh hari kedua.
- Support SagaBook/SagaView: Senin–Sabtu 10.00–18.00 WIB; P1 maksimal 4 jam
  kerja, P2 1 hari kerja, dan P3 3 hari kerja.
- Founding Studio Pilot berlangsung 14 hari untuk minimal 3 studio per produk;
  status `BUSINESS_READY` hanya diberikan setelah seluruh exit criteria lulus
  dan minimal 2 studio per produk lanjut berbayar.
- Produk kedua tidak otomatis aktif hanya karena user memakai email/identity
  yang sama.
- Pricing SagaFin belum final.
- COYABAG adalah client commerce project, bukan entitlement SaaS SagaDev.

## Larangan klaim

- Jangan sebut SagaBook atau SagaView `BUSINESS_READY` sebelum Founding Studio
  Pilot memenuhi seluruh exit criteria.
- Jangan klaim foto customer disimpan di cloud, unlimited device, atau bundle
  SagaBook–SagaView tersedia.
- Jangan sebut SagaBio atau SagaMenu production.
- Jangan sebut COYABAG siap transaksi penuh.
- Jangan sebut seluruh AOGTICVITY production multi-device; auth dan public
  registration saja sudah production-activated.
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
