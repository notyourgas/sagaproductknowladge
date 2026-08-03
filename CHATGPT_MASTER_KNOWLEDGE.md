# Saga Product — Master Knowledge for ChatGPT

Evidence cut-off: 3 Agustus 2026
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

Refinement storefront tenant pada source `b74ebb56` aktif sebagai release
`20260802024941-b74ebb5`. Pada langkah Lokasi, CTA tidak lagi tampil disabled
dan menutup katalog sebelum cabang dipilih. Setelah customer memilih cabang,
tepat satu CTA aktif 48 piksel muncul dan navigasi ke langkah Paket lulus.
Kelima preset, Maps/WhatsApp, forced-colors, reduced-motion, no-overflow, dan
satu `Powered by SagaBook` tetap utuh; kontrak booking/payment tidak berubah.
Full backend 957/957, browser desktop+mobile 298/298, backup/restore exact-SHA,
service health, dan production smoke mobile/desktop lulus.

Admin Booking pada source `500065c8` berstatus `PRODUCTION_DEPLOYED` sebagai
release `20260802101645-500065c`: mobile memakai kartu triage, desktop tetap tabel,
detail memakai satu drawer aksesibel, kontrol kritis minimal 44 piksel, dan
aksi terminal mengembalikan fokus ke daftar. Backend 959/959, focused UI tiga
viewport 6/6, backup/restore, migration, readiness 100, dan runtime smoke lulus.
SagaView tidak berubah. Gap public signature dan frame-header dari audit ini
ditutup oleh source `a6bb8afb`, aktif sebagai release
`20260802104018-a6bb8af`: Pricing, Terms, dan Privacy masing-masing memiliki
tepat satu `Powered by SagaBook`, dan `X-Frame-Options` hanya satu nilai di edge
dengan CSP `frame-ancestors` tetap enforced. Browser production mobile/desktop
8/8, readiness 100, service/header/journal, dan rollback lulus; booking,
payment, provider, preset tenant, serta SagaView tidak berubah.

Calendar operasional terbaru pada source `596b8a48` aktif sebagai release
`20260802160930-596b8a4`. Pada mobile, Harian mempertahankan agenda hari,
Mingguan menampilkan tujuh hari, dan Bulanan hanya menampilkan hari aktif;
baris hari keyboard-accessible dan kontrol kritis minimal 44 piksel. Manual
Booking menyelaraskan tanggal Calendar ketika dibuka serta mengenali nama bulan
Indonesia. Visual matrix 430 passed, backend 960/960 dengan 11.007 assertions,
audit 0, backup/restore, readiness 100, service health, dan public smoke lulus.
Rollback `20260802104018-a6bb8af` dipertahankan. Authenticated production visual
Calendar tidak dijalankan tanpa credential; exact-source regression lulus.
Endpoint `/up` belum mengirim HSTS meskipun route aplikasi/login yang diaudit
mengirim HSTS dan XFO tepat satu; error journal yang tersisa berasal dari
staging monitor host. Payment/provider, storefront tenant/preset, landing page,
watermark, dan SagaView tidak berubah. Business readiness tetap belum diklaim.

Admin Staff pada source `35c82192` aktif sebagai release
`20260802183533-35c8219`, rollback `20260802160930-596b8a4`. Mobile tidak lagi
memaksa tabel desktop 920 piksel dan sekarang memakai kartu staff; desktop tetap
tabel. Target sentuh kritis minimal 44 piksel, reset filtered-empty, editor
berlabel dengan focus recovery, tab semantik, forced-colors, reduced-motion,
no-overflow, dan satu `Powered by SagaBook` lulus. CRUD/permission, booking,
payment/provider, storefront tenant/preset, landing page, dan SagaView tidak
berubah. Backend 960/960 dengan 11.007 assertions, visual matrix 442 passed
dengan 41 controlled skip, audit 0, backup/restore exact-SHA, database audit
100, service/journal, dan public browser smoke lulus. Authenticated production
visual Staff tidak dijalankan tanpa credential; exact-source regression tiga
viewport lulus. `/up` masih tanpa HSTS. Sampel login mengirim HSTS dan CSP satu
kali tanpa `X-Frame-Options`; CSP `frame-ancestors` aktif dan kontrak header
perlu dinormalisasi. Business readiness tetap belum diklaim.

Storefront booking desktop terbaru pada source `994de01c` aktif sebagai release
`20260802221221-994de01`, rollback `20260802183533-35c8219`. Mulai viewport
1120 piksel, journey memakai shell dua kolom hingga 1040 piksel dengan panel
orientasi langkah dan ringkasan pilihan; mobile 390x844 tetap identik dan
tablet 1024x768 tetap ringkas tanpa overflow. Semua langkah dan preset existing,
Maps, WhatsApp, paket, slot, checkout, confirmation, tenant brand, dan satu
`Powered by SagaBook` tetap tercakup. Backend 960/960, visual desktop 45/45
dengan satu mobile-only skip, mobile manual-transfer E2E 1/1, build, design
audit, npm/Composer audit 0, backup/restore exact-SHA, database audit 100,
service, journal, smoke, dan visual live lulus. Payment/provider, availability,
session, permission, tenant isolation, SagaView, dan klaim business readiness
tidak berubah. Endpoint `/up` masih tanpa HSTS/CSP; route login dan booking yang
diaudit mengirim header keamanan.

Refinement navigasi Review terbaru aktif pada source `fa228d89`, release
`20260803022430-fa228d8`, dengan status `PRODUCTION_DEPLOYED`. Enam tombol `Ubah` sekarang minimal 72x44
piksel, semantik, berlabel, keyboard-accessible, dan kompatibel dengan
forced-colors/reduced-motion. Lima preset pada mobile, tablet, dan desktop
tidak overflow serta memiliki tepat satu `Powered by SagaBook`. Backend
960/960, focused Review 9/9, accessibility 24/24, scoped E2E, build, dan audit
dependency 0 lulus. Full matrix fresh lulus 142/142 dengan 2 expected skips;
S39 backup/restore exact-SHA, manifest, DB audit 100, service/public smoke,
rollback, screenshot, serta DOM live mobile+desktop juga lulus. Watermark hadir
tepat satu, overflow false, dan keenam tombol berukuran 72x44. Rollback
`20260802221221-994de01` tersedia; tidak ada perubahan kontrak payment/provider.

Success screen WhatsApp support terbaru aktif pada source `51a91653`, release
`20260803080450-51a9165`, dengan status `PRODUCTION_DEPLOYED`; rollback
`20260803022430-fa228d8` tersedia. Customer diarahkan ke detail/status dan
WhatsApp cabang yang dipilih dengan pesan konteks public-safe; nomor cabang
yang tidak valid memakai fallback salin pesan. Fixture future-safe dipisahkan
per viewport. Full matrix fresh lulus 448 skenario dengan 50 controlled skips
dan 0 failure; backend 960/960 dengan 11.007 assertions, build, design audit,
env guard, audit dependency 0, backup/restore exact-SHA, manifest, smoke,
service health, endpoint publik, dan browser produksi dua viewport lulus.
Demo SnapStudio masih belum dipublish, sehingga activation tenant nyata dan
business readiness tetap `NEEDS CONFIRMATION`.

Admin Booking compact triage terbaru aktif pada source
`d70fc1e0d922eed86fe4ea4998688aad32c68c43`, release
`20260803194351-d70fc1e`, dengan rollback `20260803132556-cfb2af8`. Viewport
di bawah 1280 piksel sekarang memakai kartu triage ringkas sehingga nama,
jadwal, paket, status, dan action tetap terbaca pada 1024 piksel; desktop 1440
tetap memakai tabel. Target 44 piksel, keyboard/focus, forced-colors,
reduced-motion, no-overflow, dan tepat satu `Powered by SagaBook` lulus.
Gate 930 Feature test, 26 visual smoke, 7 focused Playwright, build, audit
dependency 0, backup/restore exact-SHA, database audit 100, service, endpoint,
dan browser produksi dua viewport lulus. Booking/payment/provider,
availability, permission, session, tenant isolation, storefront/template,
dan SagaView tidak berubah. Activation scope UI `PRODUCTION_ACTIVATED`, tetapi
business readiness tetap `NEEDS CONFIRMATION` sampai UAT operator studio nyata.

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

Update terbaru: backend tetap memakai source
`f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
`20260802042221-f26bb57`, sedangkan Studio aktif memakai source
`2ab72618a13af6b52d33ee946c56b4b699b70de6`, release
`20260803163234-2ab7261`. Launcher bantuan perangkat tetap tersedia saat
Support Hub online belum aktif dan menyediakan diagnostik ter-redact serta
format laporan aman; endpoint online hanya dicoba atas aksi operator. Remote
AI/ticket masih residual 404, tetapi kegagalan tidak menghilangkan fallback.
Session, Frames, dan Install App tidak lagi memicu
hydration mismatch karena state online/PWA/recovery memakai snapshot awal
SSR/client yang deterministik. Owner Console lintas browser,
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
memakai kartu horizontal ringkas di mobile dan empat kolom di desktop, serta
mempertahankan local frame saat offline tanpa mengubah customer picker atau 4R.
Launcher bantuan masuk alur halaman saat tertutup sehingga tidak menutupi kartu
mobile, lalu kembali menjadi panel fixed yang utuh di viewport saat dibuka.
Output Settings kini hanya menampilkan Reset/Simpan saat dirty, menaruh action
setelah konten pada mobile dan sticky pada desktop, memakai target 44 px, serta
memprioritaskan status `Belum disimpan` ketika operator mengedit ulang. Folder,
device/session, payment, privacy foto, dan kontrak export/print 4R tidak berubah.
General Settings kini memakai action Reset/Simpan kontekstual: bersih tidak
memenuhi workspace, dirty mengikuti konten tanpa overflow pada mobile 390 px,
dan desktop tetap sticky. Accessible name lama, 44 px, forced-colors,
reduced-motion, paket/promo/harga, local-first, payment, privacy, serta 4R tetap
terjaga.
Consent Dashboard membedakan loading, offline/error, populated, filtered-empty,
dan recovered; kegagalan fetch tidak lagi menyamar sebagai data kosong. Retry,
filter selected state, target 44 px, mobile/desktop, keyboard, forced-colors,
reduced-motion, dan satu `Powered by SagaView` aktif tanpa memutasi consent atau
foto. Backend, customer flow, local-first, privacy, payment, dan output 4R tidak
berubah.
Install App membedakan prompt otomatis siap, manual, dan installed. Setiap
state memiliki satu action utama, status live, recovery, panduan Chrome/Edge
atau iOS, serta jalur installed ke Session. CTA 48 px, keyboard,
forced-colors, reduced-motion, mobile/desktop, no-overflow, dan satu
`Powered by SagaView` tervalidasi tanpa mengubah device/session, foto lokal,
backend, payment, tenant isolation, atau 4R.
Navigasi Studio Console mobile menampilkan posisi `Menu n/8`, menyediakan
tombol sebelumnya/berikutnya 44 px, dan memusatkan route aktif. Delapan route
tetap memakai permission serta kontrak operasional lama; perubahan tidak
menyentuh customer flow, local-first, payment, privacy foto, atau output 4R.

Candidate login source `99790fa1ed7a2e14a9433da5caa4fdf67eaea38f` menambahkan
tepat satu signature `Powered by SagaView` pada footer login dan sudah lolos
build, full backend test, focused auth, visual mobile/desktop, no-overflow,
forced-colors, reduced-motion, serta npm audit 0. Statusnya
`IMPLEMENTED_NOT_DEPLOYED`: production belum berubah karena Composer advisory
audit tertahan timeout Packagist. Jangan menyebut signature login ini aktif di
production sebelum exact release dan public smoke tersedia.

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
Source release `6b4b6feca16dc2d49b909f9301227e5078dfaf60` mengaktifkan runtime akses
peserta via WhatsApp: outbox transaksional, provisioning role `player`, adapter
Fonnte fail-closed, magic link single-use 30 menit, hash-only ledger, session
HttpOnly, revocation, audit, status webhook, operator retry/recovery, dan
redacted queue console. Hostinger release `20260802T125353Z`, Vercel production
`dpl_3zhzGA9oTp7U2QkKVyekJPZTxkz2`, dan migration 009–010 aktif. Device
preflight serta satu pengiriman channel UAT lulus; provider status webhook dan
full approval/magic-link/session UAT belum lulus.
Source `864ef633c040ede662e569fe768513a46a57befd`, Hostinger release
`20260802T134116Z`, Vercel production `dpl_3tesPCd9CH8CURfusqeZM2BkMHdX`,
dan migration 011–012 menambahkan role-bound redirect tanpa selector, workspace
operator terpisah, assignment tim leader oleh admin, team-scoped player/leader,
roster perwakilan persisten, serta status lomba lintas perangkat dengan
versioning, idempotency, permission, dan audit. CSV assignment menerima seluruh
delapan canonical team ID.
Source `5820d8199e75bd9c00f3bdbb8de51e831a0b5717`, Hostinger release
`20260802T164829Z`, Vercel production `dpl_65E94pdpkp6kcF7xMrwkMsmxM7ju`,
dan migration 013 membuat generator delapan tim, direct assignment, serta
workflow `Draft → Published → Locked` persisten. Mutation admin-only memakai
versioning, idempotency, reasoned audit, dan melepas roster lomba stale ketika
peserta berpindah tim. Draft tidak terlihat oleh Leader/Player.
Source `baffaa52c0567d3fb3ed665ae673cf6e7c32e40c`, Hostinger release
`20260802T174812Z`, Vercel production `dpl_9gXvi7t6xv6fisNC4LuuAiqZGvsX`, dan
migration 014 membuat rundown, assignment operator per lomba, recovery status,
result draft/admin publish, standing publik, serta live display persisten.
Operator hanya dapat mengubah lomba assigned; admin publication menyelesaikan
lomba atomik. Versioning, idempotency, audit, dan stale-write protection aktif.
Source `3917b5ea07ddfec33a7c0bd18194f1d7d18b29da`, Hostinger release
`20260802T193509Z`, Vercel production `dpl_CDcW9tZehoaM38aSSb3Nu5u8CGDU`, dan
migration 015 membuat announcement publik/operasional persisten serta Day-H
readiness aggregate PII-free. Mutation announcement admin-only memakai
versioning, idempotency, reasoned audit, dan transaksi atomic; readiness
menyediakan digest, cached snapshot terakhir, serta export JSON.
Source `64d00282d1eb3fc13713f818c7c326659464676d`, Hostinger release
`20260803T061744Z`, Vercel production `dpl_9MtjxbGLSHNz7bHXjrLS1RZpZm5U`, dan
migration 016 memperbaiki magic-link redirect agar memakai origin publik.
Player workspace sekarang server-authoritative dengan revision/ETag, refresh
12 detik plus focus/reconnect recovery, onboarding, `Lomba Saya`, dan feed
participant-scoped untuk perubahan tim/roster. Public invalid-link smoke sudah
lulus; valid-link two-device session UAT masih wajib sebelum activation.
Source UI `390e07a2d1b087666dfee97438b35b2c0eef362c`, Hostinger release
`20260803T123530Z`, dan Vercel production
`dpl_7iF6UC1XYEq8fdn9ykrUbDozxsVx` mengaktifkan sistem visual original `Pixel
Matchday Arcade` di seluruh surface tanpa mengubah kontrak auth, role, API,
atau data. Plus Jakarta Sans, Feather icons, canvas mobile-first 430 px,
reduced-motion, dan state operasional tetap dipertahankan. Source
`3f5cf151666dbb3d83030ffef8127fdd88ad55ac` kemudian mengaktifkan refinement
`Calm HUD`: spacing konsisten, safe wrapping, hierarchy mobile, dan baris
khusus topbar/bottom navigation sehingga hanya main content yang scroll.
Public Playwright 47/47 pada enam route dan empat viewport, collision dan
nav-clearance assertions, serta axe tanpa pelanggaran lulus.
Source `e38de48b2e8a88d7a7e2ac8aa54b0af9e398b38c`, Hostinger
`20260803T192801Z`, Vercel `dpl_8PU7woDFGWbJeK3dYTMZHASfzX4K`, dan migration
017 mengaktifkan taxonomy komunitas final. Pendaftaran baru hanya memakai
`TEEN` dengan CG teen 1-6 atau `SOUTH, WEST, CENTRAL` dengan CG youth 1-8.
Form, API, admin/export, dan database memakai kontrak yang sama; nilai demo
lama hanya dipertahankan sebagai legacy read-only dan tidak muncul di form.
Ini adalah nama terbaru project 17an/Olimpiade Kemerdekaan.

Delivery: `PRODUCTION_DEPLOYED`. Activation produk keseluruhan:
`NOT_PRODUCTION_ACTIVATED`; auth dan registration: `PRODUCTION_ACTIVATED`.
Business readiness: `BLOCKED`. Public delivery aktif di
`https://olimpiade-kemerdekaan.vercel.app`; target custom domain belum
diaktifkan. Real credential login dan database-backed session sudah terbukti;
admin password claim dan registration UAT sudah selesai. Roster/check-in/result
rehearsal, provider status webhook, valid-link WhatsApp two-device session UAT, dan
physical multi-device UAT belum selesai. Rundown, result, live-controller,
announcement, dan readiness sudah server-authoritative; authenticated
four-role, stale-write, serta offline recovery UAT belum sign-off.
Sejak release 3 Agustus 2026, surface tersebut memakai `Pixel Matchday Arcade`
mobile 430 px dengan Plus Jakarta Sans, Feather-style icons, quest/HUD
hierarchy, stepped geometry, motion terukur, dan reduced-motion fallback.
Agenda publik pada source `3bd9c78a` memisahkan kategori, judul, lokasi, dan
status serta memberi gap antarkartu; refinement ini aktif pada Hostinger release
`20260803T125358Z` dan Vercel `dpl_8ZoZW1SEwv8JiYTXFZ7JEQ8dkpqJ` tanpa
perubahan data atau workflow.
Refinement hierarchy terbaru aktif pada Hostinger `20260803T132457Z` dan
Vercel `dpl_G7AGcqTMFxi2w3AHhCD5F3RYWGCe`; activation keseluruhan dan business
readiness tidak berubah.

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
- Jangan klaim seluruh login WhatsApp AOGTICVITY production-ready. Fonnte
  runtime dan channel UAT sudah aktif, tetapi status webhook serta
  magic-link/session/reuse/revoke UAT belum lulus.
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
