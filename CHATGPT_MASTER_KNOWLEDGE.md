# Saga Product — Master Knowledge for ChatGPT

Evidence cut-off: 7 Agustus 2026 08:02 WIB
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
Trial SagaBook: 7 hari full access, kemudian grace read-only hari 8-14 dan
suspend setelah hari 14; tidak ada auto-charge.

SagaBook S119 aktif pada source
`20ff6829f96cebec22d34844291b3d522b91774a`, release
`20260805052322-20ff682`, berstatus `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`. Recovery QRIS, upload bukti
transfer, dan pembayaran tambahan reschedule menjaga progres customer serta
menyediakan alert/retry kontekstual. Navigasi dashboard tetap dapat dicapai
pada mobile, zoom efektif 125-200 persen, laptop, MacBook, Full HD, QHD, dan
4K. Storefront tetap mobile-only maksimum 460 piksel pada semua viewport dan
tepat satu `Powered by SagaBook` non-fixed. Playwright final lulus 513 pass/72
controlled skip tanpa failure; backend 960/960, build, design, full check
SagaView, bundle budget, serta audit dependency lulus. Release melewati
readiness 10/10, backup terenkripsi/checksum/disposable restore,
migration preflight, DB audit 100, manifest, service, empat endpoint 200, serta
browser production mobile/desktop. Website booking tenant trial diaktifkan
setelah pre-publish readiness 100; rollback `20260803194351-d70fc1e` tersedia.
Business readiness menunggu copy alamat final dan booking nyata terkontrol.

Release SagaBook terbaru adalah source kumulatif
`0894df00f6866688db4d053758a99d54ba4e8908`, release
`20260806152606-0894df0`, rollback `20260806142033-2415097`. S123 menutup
auth/session dan S124 menutup irisan status/write cabang. S125 menutup irisan
branch context `/admin/reports`: ringkasan, analitik, tabel, dan closing state
mengikuti cabang terpilih; write finance/closing membawa `branchId`, diblok
saat konteks tidak konkret, dan dijaga dari double-submit. Staff/cross-branch
ditolak tanpa perubahan data dan response/refetch backend aktual dirender UI.
Editor Template Booking S122 dan storefront satu canvas mobile maksimum 460
piksel tetap dipertahankan. S126 mengaktifkan pencarian, lima filter, accordion
satu-detail, empty/reset recovery, dan CTA `Kembali ke Hari Ini` pada Admin
Changelog tanpa mengubah API/database atau workflow bisnis. S128 memastikan
response availability kosong tidak diganti slot lokal. S129 menambahkan
recovery initial-load manual transfer, dan S130 menambahkan recovery aksi
Payment Monitor tanpa sukses palsu. Guard Support Hub S127 sudah production,
tetapi corpus/index/model AI tetap `AI_KNOWLEDGE_NOT_PROMOTED`. Sesuai
`DEC-041`, QRIS/provider nyata, pagination/export, reconciliation provider,
selector/filter route lain, dan
fitur berikutnya tetap discreen feature-by-feature; satu irisan tervalidasi
tidak berarti integrasi seluruh produk selesai. SagaView tetap local-first
untuk foto, editor, recovery, dan export. Subscription activation tidak
berubah.

Catatan status kumulatif: source storefront/recovery S98-S118 yang tercatat
sebagai candidate pada bagian histori di bawah sudah menjadi ancestor source
production S126 dan tidak memerlukan deploy terpisah. Pengecualian arah
storefront tablet/lebar S94/S108 tetap `DEPRECATED`; perilaku aktif adalah S109
satu canvas mobile maksimum 460 piksel pada semua viewport. Kandidat governance
privacy `d4c96276` dan auto-trial tetap sengaja tidak diaktifkan.

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

Kontrak chatbot terbaru mengikuti `DEC-046`: AI khusus membantu produk SagaDev,
menjawab natural dan grounded, membedakan production/candidate/roadmap, meminta
maksimal satu klarifikasi untuk pertanyaan produk yang ambigu, serta menolak
topik umum di luar SagaDev dengan fallback product-scoped. Peningkatan per jam
berarti knowledge/prompt/retrieval evaluation dan guarded rollout, bukan
fine-tuning otomatis. Implementasi awal S127 source `73de3f55` sudah
`AI_EVAL_VALIDATED` tetapi `AI_KNOWLEDGE_NOT_PROMOTED`; perilaku production
Support Hub belum berubah.

Routing Fonnte tenant-scoped sudah aktif di SagaBook production pada release
`20260731181921-378bcdf`, source `378bcdf4`: default SagaDev, token Fonnte
studio sendiri, atau manual-only. Candidate signup pada source `dcb5a3f3`
menyiapkan trial 7 hari otomatis tanpa approval owner/email verification,
dengan login tetap menunggu provisioning ready. Auto-trial itu belum
production dan tetap `PRODUCTION HOLD`.

SagaDev Control Center source `0ab9d8e3bff95a6c46425a376d93b732c22b7b52`
aktif sebagai release `20260804171621-0ab9d8e`. Release platform-only ini
menutup server error approval SagaBook dengan schema lifecycle dan
reconciliation 7 hari. Approval owner manual masih berlaku; release aplikasi
SagaBook dan SagaView tidak diganti.

Candidate storefront terbaru adalah mobile-only source kumulatif
`1de6a935d8694e9c5231a429d4ff41d7d1bc3d9c` pada
`codex/s113-sagabook-mobile-payment`, berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. `DEC-031`
menetapkan canvas maksimum 460 piksel pada seluruh viewport; desktop hanya
memusatkan canvas dan tidak boleh menambah rail, workspace lebar, atau layout
landing page. Arah S94/S108 yang memperlebar storefront menjadi 1040/1280
piksel berstatus `DEPRECATED`. S113 menutup gap QRIS dan transfer manual yang
masih memakai container desktop 5xl/grid dua kolom: keduanya kini satu alur
mobile terpusat, kontrol minimum 44 piksel, dan tepat satu watermark. Red 2/2,
focused 2/2, visual 6/6, regresi 20/20, storefront gabungan 129 pass/11
expected skip, backend 960/960 dengan 11.007 assertion, build, design 26/0,
dan dependency audit nol lulus. Coverage payment mencakup 390x844 sampai
2560x1440 serta reflow efektif 200 persen; baseline lima preset tetap diuji
sampai 3840x2160. Kandidat menunggu release-safety receipt exact S113 dan
approval; production tetap `d70fc1e0` / `20260803194351-d70fc1e`.

Candidate sebelumnya adalah recovery semantik form Detail source
`2b3e544bb334299d443f67d77a43ac5614214d04` pada
`codex/s107-detail-form-recovery`, berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Empat label kini
terhubung ke field dengan nama/autocomplete yang sesuai; feedback WhatsApp
menjadi deskripsi field dan panel error dengan live status sopan. Focused 2/2,
targeted caret 1/1, final storefront 124 test terjadwal exit 0, backend 960/960
dengan 11.007 assertion, build, design 26/0, dependency audit nol, visual exact
dua viewport, no-overflow, 44 piksel, dan satu watermark lulus pada lima preset
existing. Kontrak workflow/API dan bisnis tidak berubah. Kandidat menunggu
receipt backup/checksum/disposable restore/migration preflight exact S107 serta
approval; production tetap `d70fc1e0` / `20260803194351-d70fc1e`.

Candidate sebelumnya adalah state pilihan dan touch target source
`18f2b3c15d63dff8f5e97cd7883e48cb56610c8e` pada
`codex/s106-storefront-selection-state`, berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Seluruh pilihan
single-select dari Lokasi sampai Bayar kini mengekspos `aria-pressed`; filter
Paket minimal 44x44 piksel pada lima preset existing. Focused 3/3, storefront
120 test terjadwal exit 0, backend 960/960 dengan 11.007 assertion, build,
design 26/0, dependency audit nol, dan visual exact dua viewport lulus.
Workflow, payment, availability, permission, tenant isolation, preset data,
watermark, invoice, dan receipt tidak berubah. Kandidat menunggu release-safety
receipt exact S106 dan approval. Production tetap `d70fc1e0` /
`20260803194351-d70fc1e`.

Candidate sebelumnya adalah koreksi Review kumulatif source
`621a74a006316b9e4cd2135a4b4d34a824c0604f` pada
`codex/s103-manual-transfer-fixture`, berstatus
`LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Customer dapat kembali langsung
ke Review setelah mengubah cabang, paket, jadwal, background, add-on, atau
detail; fokus/scroll dipulihkan dan jadwal divalidasi sebelum CTA aktif. Suite
storefront 114 test terjadwal, backend 960/960 dengan 11.007 assertion, build,
design, serta npm audit hijau. Dua fixture sesi yang melewati retensi 30 hari
sudah dibuat relatif tanpa mengubah expiry production. Re-verifikasi segar 4
Agustus pukul 21.00 WIB meluluskan Composer online nol advisory, backend
960/960, focused Playwright 2/2, accessibility 16/16, build, design 26/0, npm
audit nol vulnerability, serta empat public smoke 200. Kandidat belum
`STAGING_READY` karena release-safety receipt yang mengikat backup terenkripsi,
checksum, dan disposable restore ke exact source belum tersedia. Production tetap
`d70fc1e0` / `20260803194351-d70fc1e`.

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
diaudit mengirim header keamanan. Arah layout desktop ini berstatus
`DEPRECATED` melalui `DEC-031`, tetapi tetap merupakan fakta runtime production
sampai candidate S109 dipromosikan.

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

Candidate landscape tablet storefront pada source
`1f4b7bafb2f171a689826bcd5c34216924721d18` sudah berada di `main` tetapi
masih `IMPLEMENTED_NOT_DEPLOYED`. Pada 1024x768, storefront memakai canvas dua
kolom sekitar 992 piksel menggantikan shell ponsel sekitar 460 piksel; mobile
390 dan desktop mulai 1120 piksel tetap stabil. Kelima preset, Maps/WhatsApp
44 piksel, no-overflow, accessibility, dan satu `Powered by SagaBook` lulus.
Full storefront 120 pass/6 expected skip, backend 960/960, audit dependency
nol, dan fresh encrypted backup/restore exact-SHA lulus. Approval eksekusi
production belum diberikan, sehingga runtime tetap `d70fc1e0` release
`20260803194351-d70fc1e`; booking/payment/availability tidak berubah.

Candidate recovery clipboard langkah `Selesai` pada source
`2bcacb240c2a89e751a0c1df1ed687f122918988` tersedia di branch
`codex/s101-success-copy-recovery` dengan status
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Salin kode booking
dan pesan bantuan kini menunggu write; reject/unavailable menampilkan alert,
kolom readonly yang otomatis fokus/terseleksi, dan satu retry minimal 44 piksel.
Tombol kode juga berubah dari lebar 28 menjadi target minimal 44 piksel dan
sukses baru diumumkan setelah write selesai. Focused dua viewport, storefront
106 pass/6 expected skip, backend 960/960, build, design/a11y, serta dependency
audit nol lulus tanpa overflow dan dengan tepat satu `Powered by SagaBook`
non-fixed. Production tetap `d70fc1e0` / release `20260803194351-d70fc1e`;
release-safety receipt exact S101 dan approval masih blocker.
Booking/payment/provider, availability, tenant isolation, invoice, receipt,
preset, dan SagaView tidak berubah.

Candidate recovery clipboard header storefront aktif pada source
`9d9c5ede9f1438d799861547ec27f0cd95b55edc` tersedia di branch
`codex/s100-storefront-header-copy-recovery` dengan status
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Ikon header kini
menunggu hasil write; reject/unavailable menampilkan alert, fallback manual
yang otomatis fokus/terseleksi, dan satu retry 44 piksel pada kolom workspace,
sedangkan status sukses baru diumumkan setelah clipboard selesai. Focused dua
viewport, storefront 105 pass/5 expected skip, backend 960/960, build,
design/a11y, serta dependency audit nol lulus tanpa overflow dan dengan tepat
satu `Powered by SagaBook` non-fixed. Production tetap `d70fc1e0` / release
`20260803194351-d70fc1e`; release-safety receipt exact S100 dan approval masih
blocker. Booking/payment/provider, availability, tenant isolation, invoice,
receipt, preset, dan SagaView tidak berubah.

Candidate recovery clipboard storefront pada source
`07dda6424f0e935484b25a378f343a7cbfa94f3b` tersedia di branch
`codex/s99-storefront-copy-recovery` dengan status
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. State
unpublished kini menunggu hasil Clipboard API; reject/unavailable menampilkan
alert, kolom manual yang otomatis fokus/terseleksi, serta retry 44 piksel,
sedangkan sukses baru diumumkan setelah write selesai. Jalur bantuan header
duplikat disembunyikan pada state ini. Focused dua viewport, storefront 104
pass/4 expected skip, backend 960/960, build, design/a11y, dan dependency audit
0 lulus tanpa overflow serta dengan tepat satu `Powered by SagaBook` non-fixed.
Production tetap `d70fc1e0` / release `20260803194351-d70fc1e`; release-safety
exact S99 dan approval masih blocker. Booking/payment/provider, availability,
tenant isolation, invoice, receipt, preset, dan SagaView tidak berubah.

Candidate recovery availability storefront pada source
`0f2f7bca255aba5c0ab220e542308ff343b3dfe7` tersedia di branch
`codex/s98-storefront-slot-recovery` dengan status
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. HTTP failure
tidak lagi disebut slot penuh: UI memberi alert, mempertahankan tanggal, dan
retry 44 piksel yang mengulang request sampai slot tersedia tampil. Focused
2/2, storefront 147 pass/6 expected skip, backend 960/960, build, design/a11y,
dan dependency audit 0 lulus pada mobile/desktop tanpa overflow serta dengan
tepat satu `Powered by SagaBook`. Production tetap `d70fc1e0` / release
`20260803194351-d70fc1e`; release-safety exact S98 dan approval masih blocker.
Booking/payment/provider, aturan availability, tenant isolation, invoice,
receipt, preset, dan SagaView tidak berubah.

Navigasi admin Changelog SagaBook dari source asal
`95621347050450a06dd8e5c95eedbd112aa2ff0e` aktif secara kumulatif melalui
source `e20c0ba3480e6143159108e313525d7576312146`, release
`20260806072249-e20c0ba`. Sebelum
perubahan, 18 rilis/64 detail tampil terbuka bersamaan. Kandidat memakai
pencarian, lima filter, accordion satu-detail, empty/reset recovery, dan CTA
kembali ke Hari Ini; keyboard/focus, target 44/48 piksel, forced-colors,
reduced-motion, no-overflow, serta satu watermark non-fixed lulus di mobile dan
desktop. Backend regression terbaru 962/962 dengan 11.038 assertion, focused
Playwright 2/2, visual/design 6/6, build, audit dependency nol,
backup/restore exact candidate, manifest, DB audit, service/journal, dan public
smoke lulus. Rollback `20260806063717-cb8ef55` tersedia; workflow bisnis dan
storefront tidak berubah.

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
Growth mencakup 1 device, 50 frame, 3 preset, offline 24 jam, dan 2 GB aset
frame cloud. Pro mencakup 4 device, 100 frame, 10 preset, offline 168 jam, 10 GB
aset frame cloud, laporan lanjutan, activity log, dan priority support. Sesi dan
foto dipasarkan unlimited dengan fair-use; foto tetap lokal.
Trial contract: 14 hari dua fase server-side; hari 1–7 full access, hari 8–14
plan-limited, tanpa auto-charge.

`CONFIRMED` melalui `DEC-039`: Growth 50 dan Pro 100 frame aktif telah live
tanpa mengubah benefit lain. Entitlement production terverifikasi melalui
backend source `c8538060f64cfabce46dc7f837531015673e7a1c`.

Update terbaru: backend memakai source
`73979542ceeb8fc11e658c7d27346ca983dc163f`, release
`20260806071707-7397954`, sedangkan Studio aktif memakai source
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7`, release
`20260806071733-3b66f8d`, dengan rollback Studio
`20260806050546-3b66f8d` dan backend `20260806050513-1158926`. Workspace
Session kini memakai lebar adaptif sampai 1600 piksel pada monitor besar tanpa
merusak reflow mobile/laptop atau menambah horizontal overflow. Workspace
Output memakai batas 1400 piksel: satu alur vertikal pada mobile/laptop dan dua
panel seimbang pada monitor besar. Perubahan Output berasal dari source
`1accf323ffa9517855f8acf2d93120c01136720d`, release
`20260805191930-1accf32`, dan diwarisi source Studio aktif. Login dan
Studio masing-masing merender tepat satu
`Powered by SagaView`; footer Studio responsif memakai satu node DOM, memiliki
ruang aman mobile, dan tetap terbaca pada forced-colors. Navigasi mobile
berikutnya/sebelumnya membawa target sampai terlihat penuh dan menghormati
reduced-motion. Dependency advisory backend dan Studio sudah dipatch; audit
Composer/npm production melaporkan nol vulnerability. Launcher bantuan
perangkat tetap tersedia saat
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
Editor frame mempertahankan rasio artwork asli dengan `contain`, sehingga aset
portrait/landscape tidak dipenyet. Canvas landscape mendukung putar kanan/kiri
90 derajat dan pemetaan ulang slot. Deteksi otomatis memakai feather awal 4 px;
semua slot dapat diatur 0–12 px atau ±2 px, dipindah pada canvas, dan di-resize
dari empat sudut sambil mempertahankan input X/Y/W/H.
Backend production `0b655da4` mengubah urutan frame baru menjadi 0 slot, pilih
PNG/WebP, jalankan `Deteksi otomatis`, lalu review/koreksi slot. Penambahan slot
manual baru aktif setelah deteksi pernah dicoba dan draft tanpa slot diblokir;
frame existing tetap memuat slot tersimpan. Perilaku diwarisi source aktif
`1158926b2be35887aff7dc8a09cb0111e8a71fc7` pada release
`20260806050513-1158926` dengan rollback `20260805155517-c853806`.
Keputusan founder `DEC-038` memisahkan hasil authoring: `Simpan Draft` menyimpan
pekerjaan privat, sedangkan `Publish Frame` menjadi CTA utama yang menyimpan
draft lalu mempublish frame agar siap dipakai Studio. Implementasi Owner/API
yang diwarisi source aktif `1158926b2be35887aff7dc8a09cb0111e8a71fc7`
juga menormalisasi `SPC 18`
menjadi `spc-18`, mempertahankan draft
jika tahap publish gagal, dan menampilkan error API spesifik. Perilaku ini aktif
di production melalui backend release `20260806050513-1158926` dan Studio
`20260806050546-3b66f8d`; authenticated Owner UAT dengan frame nyata tetap
residual sebelum klaim business-ready mass-scale.
Keputusan founder `DEC-042` menambahkan portable frame template production.
Source `1158926b2be35887aff7dc8a09cb0111e8a71fc7` mengekspor artwork PNG/WebP
dan metadata frame/slot yang disanitasi ke `.sagaview-frame`, lalu mengimpornya
pada akun lain sebagai draft baru. Orientasi, geometri termasuk hasil feather,
angle per slot, dan saran kategori dipulihkan; nama/kategori dapat diganti dan
kode existing tidak ditimpa. Checksum artwork/metadata, magic-byte, ukuran,
slot bounds, serta validasi API authoring existing menjadi boundary berlapis.
Paket tidak membawa identifier akun/tenant, internal version, device/session,
foto customer, path lokal, credential, atau payment. Source aktif melalui
backend release `20260806050513-1158926` dan Studio release
`20260806050546-3b66f8d`; delivery dan activation berstatus
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Authenticated Owner UAT lintas dua
akun tetap residual sebelum klaim business-ready mass-scale.
Keputusan founder `DEC-044` menambahkan bulk export Galeri Frame yang kini
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Source
`73979542ceeb8fc11e658c7d27346ca983dc163f` menyediakan checkbox per kartu,
`Pilih semua hasil` berbasis filter, state parsial, jumlah/clear pilihan, dan
sequential `Export dipilih`. Pilihan di luar filter tetap dipertahankan dan
setiap hasil masih berupa `.sagaview-frame` schema v1 tenant-neutral agar
kompatibel dengan import production. Build, audit dependency, focused bulk
Playwright, regresi export/import, serta backend 12/12 dengan 45 assertion
lulus. Browser dapat meminta izin beberapa download. Fitur aktif melalui
backend release `20260806071707-7397954` dan Studio
`20260806071733-3b66f8d`; authenticated Owner UAT tetap residual sebelum
`BUSINESS_READY` mass-scale.
Koreksi founder `DEC-049` menetapkan server ZIP bulk export yang kini
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: satu atau dua frame tetap direct
download, sedangkan tiga sampai 100 pilihan disiapkan backend sebagai satu ZIP
tenant-neutral lalu diunduh sekali secara native. Source
`ea432e977d02ada8f4b7289bfbd43c6e56941f9a` memakai export ID deterministik,
retry idempotent, private temp storage, TTL 30 menit, dan all-or-nothing
delivery. Backend 917/917 dengan 10.964 assertion, Playwright 3/3, workload
realistis 51 frame di atas 90 MB, batas 100, tenant isolation, corrupt asset,
expiry, build, encrypted backup/restore, rehearsal, deploy gate 6/6, atomic
release, canary/preservation, service/journal/header/public smoke, live route
dan marker, serta rollback lulus. Production aktif pada backend
`20260806122125-ea432e9` dan Studio `20260806122126-3b66f8d`; rollback
`20260806111019-555682b` / `20260806111020-3b66f8d` dipertahankan. Authenticated
Owner UAT 51 frame nyata, retry, dan dua akun tetap residual sebelum
`BUSINESS_READY` mass-scale.
Koreksi founder `DEC-050` mengaktifkan resumable server batch import dengan
status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Source
`e850d6c7542c10e97309ca045ebe2f700a488ebf` menerima maksimal 100
`.sagaview-frame` atau satu ZIP. Browser mengirim chunk 4 MB dengan SHA-256,
maksimal lima retry otomatis, dan resume ketika kumpulan file yang sama dipilih
ulang. Server menyimpan batch/item secara durable dan memproses item serial
melalui queue. File invalid tidak menghentikan item valid; publish rejection
atau limit mempertahankan draft.

ZIP fail-closed terhadap path traversal, folder, entry non-template/duplikat,
lebih dari 100 entry, expanded size di atas 2 GB, dan compression ratio di atas
100x. Upload privat dipurge 24 jam dan riwayat tujuh hari. Growth 51 menghasilkan
50 published + 1 draft dan Pro 100 menghasilkan 100 published; focused 57
test/1.033 assertion, full SagaView 134/1.620, Playwright 51-file dengan retry
503, build, backup/restore, rehearsal, deploy gate 6/6, canary/payment/device
preservation, service/journal/header/public smoke, live marker, dan rollback
lulus. Production aktif pada backend `20260806133407-e850d6c` dan Studio
`20260806133407-3b66f8d`; rollback `20260806122125-ea432e9` /
`20260806122126-3b66f8d` dipertahankan. Migration additive tidak mengubah
pricing, entitlement Growth 50/Pro 100, payment, device/session, foto customer,
atau source Studio. Authenticated Owner UAT 50-100 file nyata dan dua akun tetap
residual sebelum `BUSINESS_READY` mass-scale.
Keputusan founder `DEC-051` menetapkan S122 Batch Import Control Center.
Source `b6af5797fb6fdcea499e727ee2bdb1e4dc666165` sudah
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` sebagai release
`20260806200400-b6af579`; Studio tetap source
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7` melalui
`20260806200400-3b66f8d`. Rollback S121 dipertahankan.

S122 menambahkan preflight kuota/storage dan estimasi publish/draft, deteksi
duplikat checksum+geometri dengan kebijakan skip/copy/draft, riwayat tujuh
hari, notifikasi dengan acknowledgement, cancel yang mempertahankan hasil aman,
laporan CSV, serta bulk retry gagal, publish draft, category update, dan remove.
Schema bersifat aditif; endpoint/mutation tenant+membership scoped dan tidak
membawa foto customer. ZIP export memakai file-backed entry staging, cleanup
fail-closed, dan reserve workspace 3x agar payload besar tidak menumpuk di RAM.
Build, 137 test SagaView/1.656 assertion, focused 20/484, Playwright export dan
import 51-file, backup/restore, rehearsal kandidat+rollback, deploy 6/6,
canary/payment/device preservation, service/journal/header/public smoke lulus.
Smoke runtime 51 frame menghasilkan ZIP 103.282.237 byte dalam 6,751 detik pada
RAM 128 MB dengan tambahan peak 23.597.056 byte dan nol file sementara.
Authenticated Owner UAT import 50-100 file nyata pada dua akun tetap residual.

Keputusan founder `DEC-054` mengaktifkan S134 workspace validation dan tab
recovery Batch Import. Backend source
`902e5dd81919168b1978c8bfbcd62303920184a6` aktif sebagai release
`20260806212915-902e5dd`; Studio source tetap
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7` melalui rebuild
`20260806213012-3b66f8d`. Rollback S122 dipertahankan. Pemilih file baru aktif
setelah server memvalidasi tenant, membership, staff, dan subscription; target
workspace terlihat dan stale context hanya dapat dipulihkan untuk session serta
tenant yang sama. Preflight/create/resume/polling terikat context tervalidasi
dan berhenti fail-closed bila context berubah. Tidak ada migration atau
perubahan pricing, entitlement, payment, device/session, foto customer, maupun
data tenant. Delivery `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated
Owner UAT 50-100 file nyata pada dua akun tetap residual.

Keputusan founder `DEC-055` mengaktifkan S135 Owner dan Studio workspace
alignment. Saat promosi S135, backend source
`85ec0f64f08d7f80769480e0b7217cad55dd1591` memakai release
`20260806224422-85ec0f6`; Studio source
`07454264ad3c95d5fb5157135a333f6139bef054` aktif sebagai release
`20260806224441-0745426`; rollback S134 dipertahankan. Server-auth tenant
menjadi sumber request Owner pertama dan launcher membawa workspace target yang
wajib cocok dengan respons Studio. Saat workspace berubah, state/runtime lama
diarsipkan per workspace, state lintas tenant dibersihkan, target dipulihkan,
lalu Studio bootstrap dan reload. Backup/restore, preflight, candidate dan
rollback rehearsal, deploy 6/6, preservation, live marker/smoke/header, serta
rollback lulus. Tidak ada migration atau perubahan payment, subscription,
device/session, foto customer, maupun data tenant. Authenticated Owner UAT dua
workspace nyata tetap residual sebelum `BUSINESS_READY` mass-scale.

S136 sudah `PRODUCTION_DEPLOYED`. Backend source
`4642b4080f6056ef289c791d8997a63f8445f03b` aktif sebagai release
`20260807003837-4642b40`; Studio tetap source `07454264` melalui release
`20260807003838-0745426`; rollback S135 dipertahankan. Session menolak mismatch
tenant request versus credential device dengan `403` sebelum persistence.
UI -> API -> disposable database -> response UI, idempotency,
tenant/device-negative, metadata-only/no-upload, backup/restore,
candidate+rollback rehearsal, deploy/post-preflight 6/6, canary/preservation,
dan smoke publik lulus. Jangan menyebut S136 `PRODUCTION_ACTIVATED` atau
`BUSINESS_READY` sebelum authenticated UAT dan keputusan activation selesai.

S137 cloud bootstrap recovery sudah
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Backend source/release
`d7542fdc51dae66763057d2ac9d847c68d6dec1f` /
`20260807010717-d7542fd`; Studio source/release
`05c5fda07a342d2977d8e6e3d836adb17a84605b` /
`20260807010718-05c5fda`; rollback S136 dipertahankan. Owner legacy yang sah
tetapi belum mempunyai membership workspace kini mendapat pemulihan
transactional/idempotent hanya bila Staff aktif, tenant sama, role legacy
dikenali, dan subscription SagaView tersedia. Membership eksplisit nonaktif
tetap ditolak. UI membedakan loading, aktif, nonaktif, dan gagal serta memberi
pesan tindakan dan `Coba lagi`, sehingga `Memuat cloud` tidak lagi menutupi
error. Full regression 935 test/11.101 assertion dan seluruh gate guarded
release lulus. Tidak ada migration atau perubahan foto customer, payment,
subscription, device, session, maupun data customer. Jangan menyebut S137
`BUSINESS_READY` sebelum authenticated Owner UAT pada akun terdampak, Batch
Import, dan error/retry nyata selesai.

Implementasi rotate lama yang menukar W/H 90 derajat telah `DEPRECATED` oleh
koreksi founder `DEC-036`. Perilaku production yang aktif adalah
diterima adalah tahan ikon rotate lalu drag ke kiri/kanan agar slot mendapat
angle negatif/positif tanpa menukar W/H. Owner/API source
`0b655da4aeea270ce9048d853e7df09d42a36dd9` dan Studio source
`2121ebb80fa4238e91eef4003f852d34841e923f` mempersist angle per slot dan
menerapkannya di customer render serta export PNG. Commerce canary dipulihkan
melalui lifecycle resmi; backup, gate 6/6, service/header/journal, HTTP smoke,
dan marker bundle production lulus. Owner visual UAT tetap residual sebelum
klaim business-ready mass-scale.
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
berubah. Workspace Izin Foto sekarang dibatasi 1400 piksel: mobile/laptop
hingga 1440 tetap satu kolom, sedangkan QHD/4K menampilkan dua kartu sesi
berdampingan. Source `3b66f8d5df3e34aba11c4eab2619cfe44efd06d7`
aktif sebagai release `20260806050546-3b66f8d` dengan rollback
`20260805155605-3b66f8d`; consent API, permission, subscription, dan foto lokal
tidak berubah.
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

Signature login dan footer Studio sudah aktif pada backend release
`20260805133709-5906028` dan Studio release `20260805170231-2b0331d`. Login dan
Studio masing-masing memiliki satu `Powered by SagaView`; Studio menggunakan
satu node footer responsif. Composer/npm audit, full regression, release gate,
dan public browser smoke mobile/desktop lulus. Business readiness mass-scale
tetap `NEEDS CONFIRMATION` sampai observasi operasional studio nyata selesai.

Candidate Studio kumulatif `2bb868f` memperbaiki route Changelog: release
terbaru, pencarian, filter status, enam batch versi, satu detail terbuka,
empty/reset recovery, dan CTA kembali ke Session. Kandidat juga menutup delapan
respons font 403 dari junction dependency serta memindahkan fokus ke konten
utama sesudah navigasi route. Kandidat lulus focused 3/3, gabungan
accessibility/navigation 12/12, 156 unit, 99 E2E termasuk import 50/200/500,
build, visual exact 390x844 dan 1440x900, serta audit 0. Perubahan ini sekarang
termasuk dalam source kumulatif Studio `2b0331d5`, release
`20260805170231-2b0331d`. Tepat satu watermark non-fixed tetap dijaga dan tidak
masuk artefak bisnis.

Candidate Studio terbaru `7ad38ef` menutup gap sidebar deep-route pada Windows
compact: route Install App yang aktif tetapi tersembunyi pada 1280x720 kini
otomatis dibawa ke area terlihat dengan scroll `nearest` dan reduced-motion,
tanpa mengambil fokus dari konten utama. Matriks 390x844, 1280x720, 1440x900,
1512x982, dan 2560x1440 lulus; red 1/1 menjadi focused 6/6, unit 156/156, full
E2E 105/105 termasuk import 50/200/500, build/budget, forced-colors,
no-overflow, target 44 piksel, satu watermark, dan npm audit nol lulus.
Perubahan ini sekarang termasuk dalam source kumulatif Studio `2b0331d5`,
release `20260805170231-2b0331d`.

Candidate Studio terbaru berikutnya `808470c1` menutup gap dialog PIN pada
override paket: dialog memiliki nama aksesibel, focus trap, Escape, scroll body
internal, serta target input/action 44/48 piksel. Matriks 390x844, 1280x720,
1440x900, dan reflow efektif 125/150/200 persen lulus Axe, forced-colors,
reduced-motion, no-overflow, satu watermark, 156 unit, 106 E2E pass dengan satu
capture-only skip, build/budget, serta audit nol. Perubahan ini sekarang
termasuk dalam source kumulatif Studio `2b0331d5`, release
`20260805170231-2b0331d`. Validasi PIN dan kontrak bisnis tidak berubah.

Candidate Studio terbaru berikutnya `707a6f61` menutup gap penjaga navigasi
perubahan aktif pada General, Brand, dan Output. Dialog sekarang mempunyai nama
aksesibel, focus trap, Escape, internal scroll, overlay benar, serta tiga aksi
48 piksel; Simpan & Pindah tetap meneruskan route end-to-end. Matriks 390x844,
1280x720, 1440x900, dan reflow efektif 125/150/200 persen lulus Axe,
forced-colors, reduced-motion, no-overflow, satu watermark, 156 unit, 108 E2E
pass dengan dua capture-only skip, build/budget, serta audit nol. Perubahan ini
sekarang termasuk dalam source kumulatif Studio `2b0331d5`, release
`20260805170231-2b0331d`. Persistence setting dan kontrak bisnis tidak berubah.

Studio production `2b0331d5` menutup gap penemuan route pada compact dan
reflow zoom. Indikator `Menu n/8` kini merupakan disclosure 44 piksel yang
membuka semua delapan route berkelompok dengan item 48 piksel, current state,
Escape focus restoration, dan fokus konten setelah navigasi. Navigasi paged
tetap tersedia dan sidebar desktop tidak berubah. Matriks 390x844, reflow
efektif 125/150/200 persen, 1280x720, 1440x900, 1512x982, 1920x1080,
2560x1440, dan 3840x2160 lulus; red 3/3 menjadi focused 5/5, regresi 7/7,
156 unit, 113 E2E pass dengan dua capture-only skip, build/budget,
forced-colors, reduced-motion, no-overflow, satu watermark, dan audit nol.
Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; release
`20260805170231-2b0331d`, rollback `20260805133709-57c0337`. Backup/restore,
gate backend teknis, atomic activation, live Playwright 11/11, enam endpoint,
service/header/journal, dan screenshot public-safe lulus. Kontrak bisnis dan
data tidak berubah. Aktivasi subscription tenant dilewati khusus release UI
ini tanpa memutasi subscription/entitlement; `BUSINESS_READY` belum diklaim.

Candidate Saga Platform `dcb5a3f3` menyiapkan signup SagaView auto-trial 7 hari
tanpa approval owner/email verification. Login tetap menunggu provisioning
ready dan device tetap diaktivasi dari aplikasi studio. Statusnya
`LOCAL_VALIDATED / PRODUCTION HOLD`, bukan production.

### SagaBio

Custom mini website link-in-bio untuk bisnis lokal, creator, dan personal brand.
Fokus awal F&B. Positioning: customer-journey front door dari Instagram/QR
menuju menu, promo, lokasi, WhatsApp, dan e-menu; bukan clone Linktree dan bukan
pengganti SagaMenu.

Builder sudah mendukung pengurutan section, beberapa keluarga layout, dan
sebelas preset journey general/F&B/jasa/produk/portfolio/creator. Preset Studio,
readiness sesuai journey, SEO/share, aggregate analytics-to-action, QR
lifecycle, managed review, dan guided support memiliki parity
draft-preview-immutable publish-public. Source tervalidasi
`bdbf692a1dc031919dbf171cc1a8ca8497998810`; 151 test lulus, 2 controlled
skip, 1.164 assertion, serta browser desktop-mobile lulus. Preset v3 Coffee
Shop dan Personal Branding membatasi journey ke enam section utama. Renderer
publik memakai Plus Jakarta Sans, CTA mobile minimum 52px, featured rail, dan
navigasi bawah sesuai isi.

Landing `sagabio.site`, branded login `app.sagabio.site`, dan pilot wildcard
Coma Coffee sudah live di VPS dengan MySQL/Redis, TLS wildcard, immutable
payload, analytics event, QR, serta legacy redirect. Status delivery:
`PRODUCTION_DEPLOYED`; activation: `NOT_PRODUCTION_ACTIVATED`; business:
`NOT_BUSINESS_READY`. Signup default-off kini menampilkan founding-pilot state.
Central identity, akun owner/UAT, SMTP, object storage, dan renewal DNS-01
otomatis masih menjadi gate.

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

Candidate source `368a89595ac0a667d99357b7c8216847cef707fb` memperbaiki
rekonsiliasi cart tersimpan terhadap katalog live dan menutup advisory
Guzzle/Promises. Candidate sudah `LOCAL_VALIDATED / REMOTE_BRANCH_SYNCED`, tetapi
belum berada di `main`, belum tagged, belum deployed, dan CI remote belum
terverifikasi. Production tetap source
`33637aa9f6f79037a2555c3b0fc0d93b700450dc` melalui release
`20260730-33637aa`.

### AOGTIVITY

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
Nama kanonik produk berubah dari AOGTICVITY menjadi AOGTIVITY pada 6 Agustus
2026. Runtime terbaru aktif melalui source
`1dc0532991bd8bf70ba3db906880581b34bd5329`, Hostinger
`20260806T225940Z`, dan Vercel `dpl_7HfPz4QWhcAJqiajAei9RHZyXhk7`.
Domain `aogticvities.fun` serta slug infrastruktur `aogticvity` tetap dipakai
untuk kompatibilitas; AOGTICVITY hanya nama historis.
Runtime ini menggabungkan visual event berdasarkan poster founder dan rundown
owner-confirmed. Hierarchy
utama adalah AOGTIVITY / 17 Agustus 2026 / Army of God Madiun, dengan palette
lime, navy, magenta, halftone, petir, spark, koin, serta handheld-console frame;
Plus Jakarta Sans dan canvas mobile-first tetap dipertahankan. Registrasi ulang
menjadi 11.30 WIB dan acara mulai 12.00 WIB: Opening Tim & Yel-yel 15 menit,
Sing Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding &
Closing. Estimasi provisional selesai 17.50 WIB. Migration 025 mengarsipkan jam
lama, mengubah jadwal MySQL secara audited, dan menyediakan rollback tanpa
menghapus assignment operator. Typecheck, 129 unit/API, 28/28 MySQL integration,
build, 64/64 UI/WCAG, acceptance urutan 14 blok, backup/restore drill, dan 12/12
public-domain regression lulus. Status `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; visual dan operational human UAT tetap residual.
Source runtime `640990f619156e16159be0562ccae1e7f259aa0b`, Hostinger release
`20260805T190449Z`, Vercel `dpl_6zCCyTMBbA4eNgP7FYyanJ1RChAJ`, dan migration
023 menambah audited WhatsApp delivery reconciliation tanpa resend, worker
outbox otomatis satu menit, health probe dua menit, readiness queue yang lebih
akurat, bulk PIC assignment, serta offline cache public-only. Delivery channel
WhatsApp dikonfirmasi founder, tetapi record provider lama perlu direkonsiliasi
admin dan rehearsal role/two-device tetap diperlukan sebelum event-ready.
Source runtime `b7fabaaf58dfd4d9d00043f7864ef7691f39a13f`, Hostinger release
`20260806T043451Z`, dan Vercel `dpl_ERhafxHwXJCoTHbV8dxsskExieC7`
memfinalisasi standing server-authoritative. Hanya hasil published/corrected
masuk policy 15/10/5 berversi; revision/ETag, retry idempotent, stale-write 409,
audit koreksi, rate limit, refresh operasi maksimal 3 detik, serta public/live/
team maksimal 5 detik aktif. Worker WhatsApp juga tahan immutable release dan
timer production kembali exit 0. UAT manusia tetap menjadi blocker event-ready.
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
Source UI `bdcb5b76009eb807b00a975cbc4e4901fe71de74`, Hostinger
`20260803T223609Z`, dan Vercel `dpl_88XXaFUfsW4ivSBnk7qBc3KPTUAf` kemudian
memisahkan track nomor, copy, dan panah pada kartu alur pendaftaran. Public
geometry 320 px serta Playwright 48/48 membuktikan elemen tidak bertumpuk.
Source `e38de48b2e8a88d7a7e2ac8aa54b0af9e398b38c`, Hostinger
`20260803T192801Z`, Vercel `dpl_8PU7woDFGWbJeK3dYTMZHASfzX4K`, dan migration
017 mengaktifkan baseline taxonomy komunitas: `TEEN` dengan CG teen 1-6 atau
`SOUTH, WEST, CENTRAL` dengan CG youth 1-8. Source runtime
`5a2d3ef3fdb21503f9a559334796cea656f1a087`, Hostinger
`20260806T055642Z`, Vercel `dpl_4RtjNcViWkxN3fZSTZ15VWiumy5G`, dan migration
024 kemudian menambah `Other Region` dengan `AOG Ponorogo` dan `AOG Magetan`.
Form, API, admin/export, dan database memakai kontrak yang sama; nilai demo
lama hanya dipertahankan sebagai legacy read-only dan tidak muncul di form.
Source `ecaa63f42deaf61e0777959853106e61e4b0bbc3`, Hostinger
`20260803T221158Z`, Vercel `dpl_9jKWEEKDQJkszwBGNyyNYTpBs2CJ`, dan migration
018 mengaktifkan Admin Control Center, create/edit/archive anggota, serta
update/reset profil tim. Mutation admin-only memakai same-origin, versioning,
idempotency, transaksi, dan audit. ID/jumlah tim dan histori operasional tidak
dapat di-hard-delete; gunakan lifecycle withdraw/archive/cancel/correct/revoke.
Source `8bc827b8014cc9df37c952b843790f046c5de07c`, Hostinger
`20260803T222400Z`, Vercel `dpl_7haQUfw8PJsJqazJgNXN7zxSL737`, dan migration
019 menetapkan `team-7` sebagai Team Kindness (Kebaikan) serta `team-8` sebagai
Team Patience (Kesabaran). Canonical ID dan relasi operasional tidak berubah.
Source `f7fd6f161985a4b0886f03ad67776e1b08a76b4d`, Hostinger
`20260803T234003Z`, dan Vercel `dpl_G1LSCYXbuu5RNjdF8Fpdc98mXtwq` menambahkan
admin participant safe delete. Peserta dipindah dari Aktif ke Dihapus melalui
`Withdrawn`; akses, sesi, tim, dan roster dicabut, sementara audit/histori tetap.
Source UI `cd26cf52ad8f56320bcf4240ab73b0868af50298`, Hostinger
`20260803T235030Z`, dan Vercel `dpl_8q5LTDZappCxbDo4igw1LMaGwuEE`
menyederhanakan agenda publik/peserta menjadi waktu mulai tunggal, informasi
lomba, dan panah. Durasi tampil sebagai teks `(n menit)` pada baris kategori;
ikon jenis lomba dihapus tanpa mengubah status, link, atau data rundown.
Source UI `63fbb593236eff1bcbdb19b3383c591efe263e08`, Hostinger
`20260804T055431Z`, dan Vercel `dpl_Bw3VAk3xYqXAsnESS7HF6L9BnEPu`
melonggarkan timeline resmi halaman Info. Setiap milestone memakai inset 14 px,
gap 12 px, deskripsi full-width, dan jarak 16 px ke panel keselamatan; data,
auth, permission, dan workflow tidak berubah.
Source UI `2590f69d3ac609f6f92d3badb1343ad55f1a239c`, Hostinger
`20260804T061230Z`, dan Vercel `dpl_e3nqmA7PoXHxfRuBiLLUwvzuUtoz`
menambahkan riwayat pemenang pada Standing resmi. Seluruh 10 lomba tersedia
sebagai accordion; hanya `Published`/`Corrected` yang menampilkan Juara 1/2/3,
sementara draft tetap privat dan hasil yang belum tersedia memakai empty state.
Public/player/live/team refresh maksimal 5 detik memakai snapshot server yang
sama serta pulih saat focus/visibility/reconnect.
Source `308a8547af171c9fc26ce07350ca332bbe8ae913`, Hostinger
`20260804T065837Z`, Vercel `dpl_9CknJM1QQzWGjbCPXFWPXegA2SBH`, dan migration
020 menambahkan pendaftaran pemain luar di `/register/guest`. Public hanya
mengisi nama, WhatsApp, status sudah/belum memiliki CG, dan consent. Release
021 mengganti konsep produk menjadi VIP: admin menyetujui tanpa tim, lalu VIP
ikut generator tim seimbang bersama komunitas. Storage legacy `Guest` tetap
dipertahankan untuk rollback compatibility.
Source `111e01152c842d802ff1b4114f8e787577fe611d`, Hostinger
`20260804T164327Z`, dan Vercel `dpl_5pVdzKAGfZVv4w41cLborLhDFv4Z` menutup
bug `Origin: null` pada form konfirmasi WhatsApp serta CTA modal pendaftaran
yang tertutup pada viewport pendek. Same-origin backend tetap ketat; modal
memakai portal, VisualViewport, content scroll, footer CTA, background inert,
dan nav hidden. Public Playwright 60/60 serta smoke 320 × 480 lulus. Status
activation tetap menunggu valid-link/session/reuse/revoke UAT nyata.
Ini adalah nama terbaru project 17an/Olimpiade Kemerdekaan.

Delivery: `PRODUCTION_DEPLOYED`. Activation produk keseluruhan:
`NOT_PRODUCTION_ACTIVATED`; auth dan registration: `PRODUCTION_ACTIVATED`.
Business readiness: `BLOCKED`. Public delivery aktif di
`https://olimpiade-kemerdekaan.vercel.app`. Domain `aogticvities.fun` sudah
dibeli dan root/`www`/`admin`/`app`/`appl` aktif melalui Vercel. DNS Hostinger,
sertifikat/HSTS, runtime origin, role routing, health, auth-session, serta
invalid-link smoke telah lulus; domain `PRODUCTION_ACTIVATED`.
Source `f915947f8159cfa6bde922c26cc6615273547372`, Hostinger
`20260804T180816Z`, dan Vercel `dpl_GU4AUDL98wgfM9KAFwgCKHY68KpB` sudah
menyiapkan runtime hostname/trusted-origin `.fun`; auth memakai `admin.*` dan
WhatsApp memakai `app.*`. URL Vercel lama tetap menjadi rollback.
Source runtime `15cf535893a67fad1c00b2bfe55c43951b978099`, Hostinger
`20260804T185839Z`, dan Vercel `dpl_3yVYyFzQKU3Ba7xaBffSHq57F3cS` menambahkan
production-domain/mobile/WCAG/role-security regression, offline/reconnect
recovery, full disposable MySQL gate, backup/restore drill, aggregate readiness
audit PII-free, dan operator runbook. Semua technical release gate lulus;
business readiness tetap menunggu finalisasi data admin, valid-link WhatsApp
two-device UAT, authenticated operation rehearsal, dan physical fallback.
Source `356e2126ea0b9dc10f9c9bb5d9e299c93b963fa1`, Hostinger
`20260805T035621Z`, Vercel `dpl_FxpLMFrkYqPebdhRmwR5kVb9gaKb`, dan migration
021 menambahkan policy on/off serta TTL link peserta 15 menit sampai 24 jam.
Off menolak link baru dan unused link tanpa memutus sesi aktif. Policy
admin-only memakai same-origin, idempotency, optimistic version, transaksi,
dan audit. VIP dan access policy production-deployed tetapi menunggu human UAT.
Source runtime `5bc951e0b8747e113b69b18162a200c592b39d3c`, Hostinger
`20260805T145857Z`, Vercel `dpl_DacHrH6BN3u3bbD4ckFje7rU3fST`, dan migration
022 mengganti Makan Kerupuk menjadi **Ambil Bola Pakai Sarung** serta Balap
Karung Helm menjadi **Paralon Bola**. Keduanya memakai seluruh tim, roster
otomatis, 10 menit bermain, 5 menit pergantian, dan ranking jumlah bola dari
delapan tim. Seri podium wajib dikonfirmasi sebelum publish; URL lama tetap
membuka lomba pengganti. Technical release gate lulus, tetapi two-device
scoring UAT dan rehearsal keselamatan fisik belum sign-off.
Real credential login dan database-backed session sudah terbukti;
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
- Jangan sebut seluruh AOGTIVITY production multi-device; auth dan public
  registration saja sudah production-activated.
- Jangan klaim seluruh login WhatsApp AOGTIVITY production-ready. Fonnte
  runtime dan delivery channel sudah dikonfirmasi, tetapi status webhook serta
  magic-link/session/reuse/revoke UAT belum lulus.
- Jangan klaim jalur VIP/access policy production-activated sebelum registrasi,
  approval tanpa tim, open/close link, retensi sesi aktif, generator tim,
  WhatsApp valid-link, dan sync dua perangkat lulus UAT.
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
