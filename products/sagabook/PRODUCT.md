# SagaBook Product Knowledge

Updated: 9 Agustus 2026 12:27 WIB
Evidence status: production + source verified

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaBook. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Informasi yang
belum pasti dicatat di [GAPS](../../GAPS.md#sagabook).

## Konteks

Ringkasan ini memuat fakta public-safe per cut-off di atas; runtime yang dapat
berubah tetap harus diverifikasi sebelum klaim eksternal.

## Status production terbaru

- Source kumulatif S161 `64ed036b514d351f3e537be557d69117badf9d24`
  aktif sebagai release immutable `20260809033844-64ed036`; rollback langsung
  `20260808115539-c7f1348` tersedia.
- Release ini mempromosikan seluruh ancestor S157-S161: retry booking manual
  idempoten dan read-after-write operator, combined exit S7-S8, callback replay
  conflict protection, transisi status provider exactly-once, serta CTA Maps
  dan WhatsApp yang mengikuti skin preset aktif dan tetap terpusat.
- Gate rilis hijau: backend 1.002/1.002 dengan 11.421 assertion, focused release
  hardening 10/10, build, design audit 26/0, accessibility kelima preset,
  visual Lokasi, race 5/5, serta npm/Composer/OSV tanpa advisory.
- Backup terenkripsi, checksum, disposable restore exact-SHA, manifest, DB
  audit 100, migration baru berstatus `Ran`, empat service aktif, maintenance
  off, log error queue bersih, serta public HTTP smoke lulus. Storefront Ngawi
  canonical merespons 200 dan mengembalikan empat paket selectable.
- Availability kosong dari backend tidak lagi diganti slot lokal; manual
  transfer dan Payment Monitor kini mempunyai error/retry yang dapat dipakai
  tanpa menyatakan operasi berhasil sebelum response aktual diterima.
- Delivery dan aktivasi code `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`.
  `BUSINESS_READY` belum tercapai karena dua tenant masih mempunyai gap setup
  pilot; authenticated owner UAT tetap terpisah.
- Subscription tenant tidak diaktifkan dan website booking yang sudah aktif
  tidak dinonaktifkan oleh release ini.
- Perbaikan grounding Support Hub sekarang production: intent eksplisit baru
  mengalahkan konteks lama, greeting mereset konteks, `caranya` bukan follow-up
  mandiri, dan citation wajib mendukung intent. Model, prompt, provider, dan KB
  tidak diganti; promosi corpus/index/model AI yang lebih luas tetap terpisah.
- Label candidate pada bagian histori di bawah adalah status saat bukti itu
  dibuat. Source S98-S161 yang menjadi ancestor release aktif sudah aktif
  kumulatif; arah storefront lebar S94/S108 tetap deprecated dan tidak aktif.

## Histori kandidat sebelum release S161
- Candidate security/database S163 source
  `fc898bf86512e3863c497debd62d99ca5e380a6d` pada branch
  `codex/s163-sagabook-webhook-payload-limit` menolak payload webhook
  pembayaran yang terlalu besar sebelum throttle, controller, parsing bisnis,
  dan mutation database. Guard memeriksa ukuran yang dideklarasikan serta
  ukuran body aktual, mengembalikan 413 public-safe dengan request ID, dan
  mempertahankan alur autentikasi payload normal. Gate 116 test relevan/unit,
  DB audit disposable 100, cache compile, build/design, serta audit dependency
  hijau. Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
  S161 dan provider canary nyata tidak dijalankan.
- Candidate security/database S162 source
  `e294fb4791f168772ab7c101443efbf45f9147a8` pada branch
  `codex/s162-sagabook-webhook-abuse-guard` menambah abuse boundary webhook
  pembayaran berlapis: batas agregat client dan batas per-event memakai
  fingerprint, sementara response 429 tetap public-safe. Request yang dibatasi
  berhenti sebelum controller dan tidak menambah payment event atau audit.
  Gate hijau: 136 test relevan/unit dengan 885 assertion, migration penuh,
  backfill/reconcile dan DB audit disposable 100, build/design, Pint/syntax/diff,
  serta npm/Composer/OSV nol advisory. Status `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tetap source/release S161 dan provider canary nyata tidak dijalankan.
- Candidate S160 source `71eb45bab26107b7d3f067bed08e518f0fc6b262`
  pada branch `codex/s160-sagabook-provider-transition` memungkinkan callback
  provider dengan reference fallback yang sama bergerak dari pending atau
  expired ke paid tepat satu kali. Retry state sama tetap idempoten; perubahan
  nominal atau identitas kritis ditolak 409 tanpa write tambahan. Tokopay signed
  membuktikan settlement/accounting tunggal, dan booking-status read-after-write
  tetap authoritative. Gate hijau: payment 61/61 (434 assertion), full backend
  1.001/1.001 (11.417), browser Payment Monitor 10/10, build/design, Pint/diff,
  serta npm/Composer/OSV nol advisory. Status `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tetap `c7f13487` / `20260808115539-c7f1348`.
- Candidate payment callback replay integrity source
  `2b101b87d57939932248c35d047f21cc467b776b` pada branch
  `codex/s159-sagabook-callback-replay` membedakan callback baru dari replay
  identik dan konflik payload untuk `event_id` eksplisit. Replay identik tetap
  sukses satu kali dengan `idempotentReplay=true`; payload berbeda memakai ID
  sama ditolak 409 public-safe tanpa mengubah booking, payment session,
  settlement, payment event, atau audit sukses pertama. Gate hijau: focused
  5/5 (39 assertion), payment regression 50/50 (358), full backend 999/999
  (11.383), browser Payment Monitor mobile/desktop 10/10, build/design,
  Pint/diff, serta audit npm/Composer/OSV nol advisory. Status
  `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `c7f13487` /
  `20260808115539-c7f1348`.
- Candidate combined exit S7-S8 source
  `c8138517b027978b234ababee061e6679716db84` menggabungkan source production
  Support Hub terbaru dengan retry booking manual, lalu menjalankan satu gate
  repeatable untuk konflik slot, expiry payment hold lintas tab, race aktual
  dua proses, serta retry/read-after-write operator. Focused backend 265/265,
  race 5/5, browser recovery 6/6, full backend 998/998 (11.370 assertion),
  Support Hub 4/4, build/design, Pint/diff, serta audit npm/Composer/OSV nol
  advisory lulus. S7-S8 kini `EXIT_GATE_ACCEPTED / UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tetap `c7f13487` / `20260808115539-c7f1348`.
- Candidate manual-booking retry source
  `fe329a0b12e49ae6c32c4ec861318ccca843c86b` membuat percobaan ulang
  operator idempoten per tenant. Respons mutation langsung mengisi kalender;
  kegagalan refresh tidak lagi dilaporkan sebagai booking gagal dan tersedia
  aksi `Coba lagi`. Double-submit diblok dan payload berbeda dengan kunci retry
  yang sama ditolak 409 tanpa booking, hold, atau audit ganda. Gate hijau:
  backend 995/995 (11.356 assertion), Playwright retry/recovery 2/2, matriks UI
  390x844 dan 1440x900, build/design, serta audit npm/Composer/OSV nol
  advisory. Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production
  tetap `c7f13487` / `20260808115539-c7f1348`. Status ini merupakan snapshot
  sebelum combined exit S158 diterima.
- Candidate Support Hub current-baseline source `dedef195` di atas S143
  `8fac4f68` memperbaiki pergantian konteks
  cabang ke voucher serta reset greeting. Intent eksplisit baru kini
  mengalahkan previous intent, bonus surface tidak dapat menjadi satu-satunya
  bukti, kata `caranya` tidak dianggap follow-up sendiri, dan greeting tidak
  mengambil artikel fitur. Port current-baseline lulus combined 41/41 dengan
  3.394 assertion; source awal `dad3f5fb` mempertahankan bukti full backend,
  corpus, dan Playwright dua viewport. Status
  `AI_EVAL_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED` saat bukti
  dibuat; perbaikannya kini aktif kumulatif melalui source S157 `c7f13487`.
- Candidate lokal S156 source
  `04c9b6416fbe401a001f3fd7b83dad47c613e8e4` menutup race aktual dua
  proses pada slot, tenant, resource, tanggal, dan jam yang sama. Transaksi
  dicoba ulang sampai tiga kali; contention database yang tersisa dikembalikan
  sebagai 409 `slot_conflict` public-safe, bukan error SQL. Lima dari lima race
  menghasilkan tepat satu booking, hold, slot lock, dan audit; request kalah
  tidak menyisakan write parsial atau membocorkan kode booking/detail database.
  Statusnya `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; retry mutation dan read-after-write operator kini
  ditutup oleh candidate `fe329a0b`, tetapi combined exit S7-S8 belum dijalankan.
  Production dan aktivasi subscription tidak berubah.
- Candidate lokal S155 source
  `f04e4a9c174c965b2e8308077d9f643f97ef6bd6` menutup expiry payment hold
  lintas tab QRIS dan transfer. Deadline berasal dari backend, status publik
  melakukan expiry atomik sebelum scheduler, slot lock dilepas, sesi lama
  ditolak 409, dan kedua tab merender satu recovery untuk memilih jadwal baru.
  Token salah ditolak 403 sebelum mutasi dan audit expiry tetap satu kali.
  Statusnya `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S7-S8 tetap `INTEGRATION_IN_PROGRESS`, production
  dan aktivasi subscription tidak berubah.
- Candidate lokal S154 source
  `1d9d774fe1f506dd076fe09668c7a05e3685c387` menutup irisan pertama S7:
  ketika slot diambil transaksi lain saat customer menekan pembayaran,
  storefront mengunci double-submit, tidak menyimpan booking lokal sebelum API
  sukses, kembali ke Jadwal, memuat availability aktual, dan meminta satu slot
  baru. Reason publik tidak lagi memuat kode booking atau alasan blok internal.
  Statusnya `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; fitur availability/concurrency keseluruhan tetap
  `INTEGRATION_IN_PROGRESS`, production dan aktivasi subscription tidak berubah.
- Candidate lokal S147 source
  `0d962430177569eaa6e53b053eedacd6cee01ec7` menutup irisan pertama S6:
  konflik stale-write editor Add-on kini dapat memuat response API terbaru,
  pulih dari kegagalan GET tanpa mengirim ulang mutation stale, dan menjaga
  permission/tenant boundary. Statusnya `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production dan aktivasi subscription tidak berubah.
- Candidate lokal S148 source
  `2a3fe4c93955d1a588b663808c7c9464ded5ff01` menutup delete dependency
  recovery Add-on. Add-on yang masih tersimpan pada riwayat booking sekarang
  menghasilkan 409 terstruktur, hitungan dependensi, dan recovery `Lihat
  booking`; data serta audit tetap utuh. Status `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S6
  tetap `IN_PROGRESS`, production dan aktivasi subscription tidak berubah.
- Candidate lokal S149 source
  `239b193c70f30676702da492ece287a3ff1e8c9a` menambahkan gate gabungan
  repeatable untuk Add-on: create/edit/delete, recovery stale-write, delete
  dependency, serta permission boundary dijalankan sebagai empat profil.
  Seluruh profil, backend katalog 29/29, full backend 982/982, build, design,
  dan audit dependency hijau. Komponen Add-on S6 kini `EXIT_GATE_ACCEPTED /
  UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 keseluruhan tetap `IN_PROGRESS` karena resource
  belum discreen. Production dan aktivasi subscription tidak berubah.
- Candidate lokal S150 source
  `ff3b2babe419337c9e29b4bac8b7f9d531c97659` menutup status/persistensi
  resource. Daftar mobile kini memakai kartu utuh dengan aksi 44 piksel;
  publish/unpublish menunggu response API aktual, menangani 503/retry, 409
  reload, 422 editor recovery, dan klik ganda satu request. Backend memvalidasi
  enum status, optimistic lock, audit, capability, serta tenant isolation pada
  database disposable. Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` sampai
  dependency/delete recovery, stale-write resource, dan combined exit selesai.
  Production dan aktivasi subscription tidak berubah.
- Candidate lokal S151 source
  `ac11487f046c8acae328cba89975035b888d00de` menutup delete/dependency
  recovery resource. API menghitung paket, booking, block time, dan resource
  tertaut secara tenant-scoped lalu memberi 409 terstruktur; UI merender
  hitungan serta jalur pemulihan aktual. Failure/retry, double-submit, Staff
  403, dan foreign tenant 404 tidak menghapus data atau membocorkan dependensi;
  resource tanpa dependensi tetap dapat dihapus dengan audit sukses tunggal.
  Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` sampai stale-write
  resource dan combined exit selesai. Production dan aktivasi subscription
  tidak berubah.
- Candidate lokal S152 source
  `872fb8d2f406f2c9ee0712992f1e25874b2259e0` menutup stale-write
  resource. Editor kini merender konflik 409 aktual, memuat versi server lewat
  GET, menjaga draft jika jaringan gagal, dan mencegah POST stale serta
  double-submit. Backend mempertahankan jadwal, relasi, lock version, dan audit;
  permission/tenant-negative lulus pada database disposable. Status irisan
  `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` hanya sampai combined exit
  gate. Production dan aktivasi subscription tidak berubah.
- Candidate lokal S153 source
  `57310ddd1958dc5fc9f585196b8757ffeb051c41` menutup combined exit S6
  Resource. Runner repeatable 5/5 mengikat CRUD, status/retry/double-submit,
  stale recovery, delete dependency recovery, dan Staff 403 spesifik Resource.
  Seluruh bukti UI/API/backend/database/permission tetap hijau; tidak ada
  perubahan UI atau production. S6 kini `EXIT_GATE_ACCEPTED / UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
  Sprint aktif berikutnya S7-S8 availability/slot concurrency; deployment
  tetap ditahan sampai S21.

## Ringkasan

SagaBook adalah SaaS booking dan operating system untuk self-photo studio.
Produk mengatur perjalanan sebelum sesi: storefront, availability, checkout,
payment, confirmation, reminder, reschedule/cancel/refund request, calendar,
check-in, session handoff, reconciliation, report, dan tenant operations.

Positioning singkat:

> SagaBook mengatur sebelum sesi.

## Target pengguna

- Owner self-photo/photobox studio.
- Admin/manager/cashier/operator studio.
- Customer yang melakukan booking.
- SagaDev super admin untuk provisioning, subscription, dan support.

## Masalah yang diselesaikan

- Booking tersebar di chat dan rawan bentrok jadwal.
- Customer sulit melihat status pembayaran/perubahan booking.
- Operator perlu calendar, task, reminder, dan reconciliation yang konsisten.
- Owner memerlukan multi-branch, staff permission, audit, dan report.

## Core journey

### Customer

1. Memilih studio/cabang, paket, background, add-on, tanggal, dan slot.
2. Mengisi data yang diperlukan.
3. Memilih metode pembayaran.
4. Menerima secure booking link.
5. Memantau status booking dan pembayaran.
6. Mengajukan reschedule, perubahan, pembatalan, atau refund sesuai policy.
7. Menerima reminder, confirmation, dan result/gallery link bila tersedia.

### Operator

1. Menyiapkan cabang, resource, schedule, package, policy, dan payment.
2. Memantau booking/calendar/payment/Task Center.
3. Meninjau customer request.
4. Check-in dan menjalankan session handoff.
5. Menangani reconciliation, report, support, dan recovery.

## Fitur utama

- Public booking storefront.
- Availability dan capacity.
- Hosted/manual payment flow.
- Customer Booking Center.
- Reschedule, change, cancel, dan refund request.
- Task Center dan notification.
- Calendar, check-in, dan session lifecycle.
- Tenant, branch, staff, role, permission, dan audit.
- Payment monitoring dan reconciliation.
- Report dan export.
- SagaBook subscription portal dan trial lifecycle.
- Activation Center untuk setup tenant, preview/publish storefront, dan
  handoff menuju booking pertama.
- Support & Recovery Center untuk bantuan produk, human handoff, account
  recovery, dan bukti screenshot privat.

## Commercial contract

### Harga dan limit satuan bulanan

| Paket | Harga | Cabang | Staff | Scope utama |
|---|---:|---:|---:|---|
| Basic | Rp500.000 | 1 | 3 | Core booking dan laporan dasar. |
| Growth | Rp950.000 | 3 | 10 | Payment gateway, reminder, promo, reconciliation, dan laporan rinci. |
| Pro | Rp1.500.000 | Maks. 10 | Maks. 30 self-service | Custom domain, audit log, laporan lanjutan, dan priority support. |
| Custom | Berdasarkan penawaran | Di atas Pro | Di atas Pro | Kontrak, onboarding, dan support khusus. |

Volume booking dipasarkan sebagai unlimited dengan fair-use. Unlimited tidak
menghapus rate limit, abuse control, capacity, atau batas operasional yang aman.

### Trial 7 hari

- Hari 1-7: akses penuh dengan guardrail maksimal 2 cabang, owner + 4 staff,
  dan 30 booking aktif/confirmed.
- Hari 8-14: `grace_read_only`; data tetap dapat dilihat/diekspor, tetapi
  operasional baru dinonaktifkan.
- Setelah hari 14: `suspended`, data tidak dihapus otomatis.
- Tidak ada auto-charge.

Trial dan subscription SagaBook tidak mengaktifkan SagaView.

### Policy booking default

Tenant dapat menerapkan policy sendiri. Bila belum ada override yang valid:

- satu reschedule gratis minimal 24 jam sebelum sesi;
- cancel minimal 48 jam: refund 100% dikurangi fee provider yang tidak dapat
  dikembalikan;
- cancel 24–48 jam: refund 50%;
- cancel kurang dari 24 jam atau no-show: tidak ada refund;
- refund selalu menunggu persetujuan operator dan tidak berjalan otomatis;
- pembatalan oleh studio: refund penuh atau reschedule gratis.

### Support, retention, dan offboarding

- Support Senin–Sabtu 10.00–18.00 WIB.
- P1 maksimal 4 jam kerja, P2 1 hari kerja, P3 3 hari kerja.
- Data aktif tersedia selama subscription.
- Setelah offboarding tersedia akses export 14 hari.
- Penghapusan data operasional maksimal 30 hari setelah permintaan
  terverifikasi; audit/security log 90 hari; tiket support 180 hari.
- Catatan keuangan/legal disimpan terpisah sesuai hukum yang berlaku.

Kontrak target SagaBook yang disetujui owner pada 31 Juli 2026, tetapi belum
aktif atau dipublikasikan:

- studio menjadi Controller untuk data booking customer; SagaBook/SagaDev
  menjadi Processor, dan menjadi Controller independen untuk account, billing,
  security, support, serta analytics teragregasi;
- booking PII 24 bulan lalu dianonimkan; ledger 5 tahun atau lebih bila hukum
  mewajibkan; bukti transfer manual 90 hari; expired hold 30 hari;
- percakapan/lampiran support 180/30 hari; log aplikasi/audit 90/365 hari;
  backup terenkripsi rolling 30 hari;
- pembatalan subscription berbayar memberi jendela read-only/export 30 hari,
  lalu data yang eligible dihapus maksimal 90 hari setelah jendela tersebut;
- implementasi, review legal Indonesia, identitas/kontak resmi, subprocessor,
  acceptance, dan publication gate wajib lulus sebelum klaim public launch
  tanpa batas.

## Account dan product boundary

- Satu identity dapat ditautkan ke organisasi yang sama.
- Membership, role, session, subscription, entitlement, dan ledger SagaBook
  tetap terpisah dari SagaView.
- Staff memakai akun individual.
- Akses tenant dan branch deny-by-default.
- Bundle belum dijual.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `PRODUCTION_ACTIVATED` untuk scope
yang dibuktikan di bawah. Business readiness: `NEEDS CONFIRMATION`.

- Customer Booking Center aktif di production.
- Source production terbaru pada cut-off: commit
  `a9125228f8bda3d919a55b1a6ed154355e1bf9da`.
- Release production terbaru: `20260806043833-a912522`, dengan rollback
  `20260806040004-1b8c91f`.
- `CONFIRMED` melalui `DEC-031`: storefront booking tenant selalu memakai satu
  canvas mobile maksimum 460 piksel pada semua viewport. Desktop hanya
  memusatkan canvas tersebut; layout rail, workspace dua kolom, canvas lebar,
  dan pola landing page tidak berlaku untuk storefront. Optimasi desktop tetap
  berlaku untuk dashboard/admin SagaBook dan aplikasi/dashboard SagaView.
- UI/UX S119 berstatus `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
  `20ff6829f96cebec22d34844291b3d522b91774a`, release
  `20260805052322-20ff682`, dengan rollback
  `20260803194351-d70fc1e`. Flow QRIS, upload bukti transfer, dan pembayaran
  tambahan reschedule memberi alert kontekstual, menjaga data customer ketika
  layanan gagal, serta menyediakan retry yang dapat diakses. Dashboard menjaga
  menu utama, tombol drawer, dan pemulihan fokus pada viewport 390x844, kelas
  zoom efektif 125-200 persen, Windows compact, MacBook, Full HD, QHD, dan 4K.
  Storefront tetap satu canvas mobile maksimum 460 piksel pada semua viewport;
  tidak ada desktop landing/layout, tanpa overflow, dan tepat satu
  `Powered by SagaBook` non-fixed.
- UI/UX editor Template Booking S122 berstatus `PRODUCTION_DEPLOYED` pada
  source `1b8c91fc182d1bd8e552cafa16785e5b90bbab01`, release
  `20260806040004-1b8c91f`. Editor tidak overflow pada 390 piksel, tab dan aksi
  minimum 44 piksel, serta preview mobile berada di kolom ketiga pada layar
  >=1400 piksel tanpa mengubah storefront mobile-only. Endpoint, backend,
  migration, data, subscription, dan website booking aktif tidak berubah.
  Coverage integrasi dilanjutkan melalui
  [Feature Coverage Ledger](FEATURE_COVERAGE_LEDGER.md); status release UI/UX
  tidak otomatis berarti `INTEGRATION_VALIDATED` untuk setiap fitur.
- Auth/session S123 berstatus `UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
  `a9125228f8bda3d919a55b1a6ed154355e1bf9da`, release
  `20260806043833-a912522`. Login sekarang memiliki timeout/cancellation,
  pencegahan double-submit, recovery network yang jujur, pemulihan fokus, dan
  state busy yang dapat diakses; tombol logout mobile memiliki nama aksesibel.
  Login, session, logout, activity log, `last_login_at`, protected 401,
  capability 403, dan cross-tenant 403 tervalidasi end-to-end. Ini hanya
  menutup irisan auth/session; coverage produk keseluruhan masih bertahap.
- Candidate Sprint 2 terbaru pada source
  `bf1766ae84c352cf3687383ca31947a3e619f575` berstatus
  `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`. Selain idle expiry per tab, staff terautentikasi
  kini dapat mengeluarkan perangkat lain melalui password step-up dan request
  idempoten. Versi sesi dinaikkan secara transactional; current device tetap
  aktif, perangkat lama menerima 401 `session_revoked`, dan audit tidak memuat
  password, token, cookie, IP, atau PII. Production belum berubah. Combined
  browser acceptance gabungan sudah lulus pada empat runtime disposable
  terisolasi: 13 pass dan 1 intentional skip di mobile/desktop. Full backend
  969/969, build, npm audit, dan audit 114 paket Composer melalui OSV resmi
  untuk Packagist menghasilkan nol advisory. Sprint 2 exit gate sudah diterima
  lokal; production belum berubah dan deploy tetap ditahan sampai S21.
- Tenant/cabang S124 aktif pada source
  `f6988cb945c5ca224015d7fecbc94e81c535fc60`, release immutable
  `20260806053037-f6988cb`, dengan rollback
  `20260806043833-a912522`. Status cabang kini mencegah request ganda,
  menampilkan pending/error/retry tanpa sukses palsu, memakai kontrol minimum
  44 piksel, dan menyimpan response backend aktual. Write lintas tenant ditolak
  404 generik tanpa mengubah data, staff tanpa capability mendapat 403,
  optimistic lock/read-after-write serta audit log lulus. Irisan status/write
  cabang `INTEGRATION_VALIDATED`; selector/filter cabang lintas role dan route
  tetap dilanjutkan feature-by-feature. Candidate Sprint 3 source
  `82a6f376998d8eb5778c6ccaac117a21a1ab8efd` menutup satu celah keamanan:
  perubahan role, status, identitas login, password, atau delegasi cabang staff
  menaikkan `session_version`, sehingga sesi lama menerima 401
  `session_revoked`. Setelah login ulang, selector hanya merender cabang yang
  masih diizinkan dari response API aktual. Irisan ini tervalidasi lokal dan
  belum production. Candidate berikutnya pada source
  `70a6aad76f3f86589473986c0e9fa3b26c5022c2` menutup stale payload lintas tab:
  mutation cabang yang sukses mengirim sinyal invalidasi public-safe tanpa
  tenant, user, booking, atau data operasional; tab lain kemudian mengambil
  ulang response API terautentikasi. Response lama tidak boleh menimpa response
  baru, focus/visibility memicu recovery, dan state offline menyediakan retry.
  Irisan ini `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; delete dependency/recovery dan filter cabang pada
  route lain tetap residual.
  Candidate terbaru source `4606c5c594b29a4d3075617d01ffed5014d785d1`
  menutup delete dependency/recovery: cabang yang masih dipakai tidak ikut
  menghapus data terkait, UI menampilkan hitungan dependensi dan arah
  pemulihan, sedangkan cabang bebas dapat dihapus tepat sekali. Foreign-tenant
  atau ID hilang menghasilkan 404 tanpa dependency leak/audit dan staff
  ditolak 403. Irisan ini tervalidasi lokal, belum production; filter cabang
  route lain dan fresh OSV advisory audit tetap residual.
  Candidate terbaru source `22013fc0acb12b9c235454048154ed1e1206f732`
  menyelaraskan `/admin/staff` dengan selector cabang global: Cabang Dago hanya
  menampilkan staff yang berada dalam konteks Dago, filter/reset memakai satu
  state kanonik, dan konteks daftar diumumkan secara aksesibel. Response tetap
  berasal dari API dashboard aktual; revokasi delegasi, capability negative,
  dan tenant boundary existing tetap hijau. Fresh npm, Composer, dan OSV nol
  advisory. Candidate ini tervalidasi lokal, belum production; residual Sprint
  3-4 kini combined exit gate sebelum katalog Sprint 5-6.
  Combined exit gate S3-S4 kemudian diterima lokal pada source
  `4ee167ecbc95892a113c9036faada5de85994bb8`. Satu runner repeatable
  menjalankan tujuh slice tenant/cabang dengan runtime dan database disposable;
  full backend, AI regression, build/typecheck/design, cleanup, dan dependency
  audit juga hijau. Status ini bukan deployment: production tetap pada release
  `20260806152606-0894df0`. Roadmap lokal berikutnya adalah S5-S6
  paket/background/add-on/resource.
  S5 dimulai pada candidate source
  `0874c098440850d104868d891c2f61214cdba36b`. Editor paket yang menerima
  konflik 409 sekarang menawarkan `Muat data terbaru`, mengambil response API
  aktual, mengganti baseline stale, lalu menyimpan edit lanjutan tepat satu
  kali. Optimistic lock, tenant boundary, dan permission existing tetap hijau.
  Irisan ini tervalidasi lokal dan belum production; publish/deactivate paket,
  dependency integrity, background, dan exit gate S5 masih residual.
  Candidate berikutnya source
  `4b71e3473d8713848158cfbed7a0923d4433bf46` menutup deactivation paket
  yang masih dipakai background aktif. Backend kini mengunci paket, relasi,
  dan background aktif dalam satu transaksi lalu mengembalikan 409 terstruktur;
  UI mempertahankan status Aktif, mencegah double-submit, dan mengarahkan
  operator ke menu Background. Irisan ini `LOCAL_VALIDATED`, belum production;
  delete dependency/recovery paket, coverage background, dan exit gate S5
  tetap residual.
  Candidate berikutnya source
  `be02a4e7cc092096c0fdc686c41d4144e93329f0` menutup delete
  dependency/recovery paket. Paket yang masih dipakai booking atau terhubung
  ke background sekarang menghasilkan 409 `package_delete_blocked` dengan
  hitungan public-safe, dipertahankan tanpa audit sukses, dan UI menyediakan
  state `Paket belum dihapus` serta recovery `Atur background`. Klik ganda
  menjadi satu request. Irisan ini `UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; coverage Background dan exit
  gate S5 tetap residual, S6 belum dimulai, dan production tidak berubah.
  Candidate berikutnya source
  `b9aeb7c9f2bf5205f3a740551530362447d5e9ed` menutup irisan pertama
  Background: penghapusan yang masih mempunyai relasi paket atau riwayat
  booking kini menghasilkan 409 `background_delete_blocked`, hitungan
  dependensi public-safe, dan arahan recovery ke menu Paket. Background tetap
  tersimpan tanpa audit sukses palsu; UI menampilkan `Background belum dihapus`,
  mencegah request ganda, serta memberi aksi aksesibel `Atur paket`. Irisan ini
  `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; coverage Background dan exit gate S5 belum
  selesai, S6 belum dimulai, dan production tidak berubah.
  Candidate berikutnya source
  `c560119745959fe67f3234a6e278c926db595858` menutup konflik stale-write
  Background. Setelah 409, operator dapat memuat response server terbaru,
  mengulang GET recovery saat offline, dan melanjutkan edit tanpa menimpa
  perubahan tab lain atau mengirim mutation ganda. `lock_version` dan relasi
  paket versi server dipertahankan. Irisan ini `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  publish/deactivation integrity Background dan exit gate S5 belum selesai,
  S6 belum dimulai, dan production tidak berubah. Rollback/previous symlink
  wajib dipulihkan sebelum S21.
  Candidate berikutnya source
  `ce537667f314e80b8b94479f0defb9d60524f4f0` menutup integrity
  publish/deactivation Background. Numeric status API dinormalisasi menjadi
  boolean, switch dikunci segera saat mutation, kegagalan mempertahankan state
  server, dan recovery membedakan retry jaringan, reload 409, serta editor 422.
  Double-click hanya mengirim satu request awal dan tidak lagi membuka kartu
  yang bergeser. Staff 403 dan tenant-negative 404 mempertahankan data. Irisan
  ini `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; combined S5 kini `EXIT_GATE_ACCEPTED /
  LOCAL_VALIDATED`. S6 add-on/resource menjadi READY berikutnya, production
  tidak berubah, dan rollback/previous symlink wajib dipulihkan sebelum S21.
- Report branch context S125 aktif pada source
  `cb8ef55a33ad1399c9383d027343a412752fc9ff`, release immutable
  `20260806063717-cb8ef55`, dengan rollback `20260806053037-f6988cb`.
  `/admin/reports` kini memfilter ringkasan, analitik, tabel, dan closing state
  menurut cabang terpilih; write finance/closing membawa `branchId`, diblok
  saat konteks cabang tidak konkret, serta mempunyai double-submit guard.
  Irisan ini `INTEGRATION_VALIDATED`; Payment Monitor, pagination/export, dan
  reconciliation provider tetap dilanjutkan feature-by-feature.
- Website booking satu tenant trial diaktifkan hanya setelah pre-publish
  readiness 100, lalu post-activation setup/pilot readiness dan HTTP publik
  lulus. Release gate production 10/10, backup terenkripsi/checksum/disposable
  restore exact source, migration preflight, database audit 100, manifest,
  Nginx/queue, empat public endpoint, serta browser production 390x844 dan
  1440x900 lulus. Playwright final candidate memiliki 513 pass/72 controlled
  skip dan backend 960/960 dengan 11.007 assertion. `BUSINESS_READY` tetap
  `NEEDS CONFIRMATION` sampai owner mengganti copy alamat placeholder yang
  terlihat pada storefront dan menyelesaikan satu booking nyata terkontrol.
- Flow customer sekunder Detail Booking dan Reschedule sudah
  `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED` pada source
  `5788d6bb5860353c03edac51b968ce05a5d936f7`, branch
  `codex/s115-sagabook-secondary-watermark`. Before: kedua route tidak memiliki
  signature SagaBook dan kontrol header hanya sekitar 32 piksel. After: masing-
  masing route memiliki tepat satu `Powered by SagaBook` non-fixed di dalam
  canvas mobile, serta kontrol Kembali/Bantuan minimum 44 piksel dengan focus
  ring. Focused S115 2/2 lulus pada 390x844, reflow efektif 200 persen,
  1280x720, 1440x900, 1512x982, Full HD, QHD, dan 4K; backend 960/960 dengan
  11.007 assertion, build, design 26/0, serta npm/Composer audit nol. Blocker
  baseline visual Detail Payment ditutup pada source kumulatif
  `77a25c7c5ed7fe31d89b35ceee91b01859b9afca`, branch
  `codex/s116-sagabook-visual-baseline`: baseline kini memakai fixture tanggal
  2099 dan alamat demo yang sama dengan test deterministik. Red 1/1 menjadi
  green mobile/desktop 2/2; full storefront efektif 133 pass/11 expected skip
  setelah dua retry S115 desktop lulus. Backend, build, design, serta audit
  dependency kembali hijau. Candidate kini `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`; release-safety receipt exact S116 dan approval
  masih belum tersedia. API, migration, payment, availability, permission,
  tenant isolation, preset, invoice, receipt, foto, dan SagaView tidak berubah.
  Production tetap source `d70fc1e0`, release `20260803194351-d70fc1e`.
- Kontrak mobile-only itu sudah `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED` pada candidate kumulatif
  `1de6a935d8694e9c5231a429d4ff41d7d1bc3d9c`, branch
  `codex/s113-sagabook-mobile-payment`. Candidate memperluas baseline S109 ke
  route pembayaran QRIS dan transfer manual: layout desktop dua kolom diganti
  satu alur mobile maksimum 460 piksel yang terpusat, target Salin/Ganti/Hapus
  menjadi minimum 44 piksel, dan setiap route payment memiliki tepat satu
  `Powered by SagaBook`. Arah S94/S108 yang memperlebar storefront tetap
  `DEPRECATED`. Red proof payment 2/2 gagal pada source lama; focused 2/2,
  visual payment 6/6, regresi kontrak 20/20, dan acceptance storefront gabungan
  129 pass/11 expected skip lulus. Backend 960/960 dengan 11.007 assertion,
  build, design 26/0, npm/Composer audit nol, no-overflow, keyboard focus,
  forced-colors, reduced-motion, target 44 piksel, dan watermark tunggal lulus.
  Evidence payment mencakup 390x844, 1280x720, 1440x900, MacBook 1512x982,
  QHD 2560x1440, serta reflow efektif 200 persen; baseline storefront tetap
  mencakup sampai 4K 3840x2160 dan lima preset existing. Tidak ada perubahan
  API, migration, dependency, nominal, upload bukti, status pembayaran,
  availability, permission, tenant isolation, data preset, invoice, receipt,
  atau SagaView. Production belum berubah karena release-safety receipt exact
  S113 dan approval belum ada.
- Recovery semantik form Detail storefront sudah
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED` pada source
  kumulatif `2b3e544bb334299d443f67d77a43ac5614214d04`, branch
  `codex/s107-detail-form-recovery`. Before: label Nama, WhatsApp, Email, dan
  Catatan belum terhubung secara programatik ke field; helper/error WhatsApp
  juga belum menjadi deskripsi field dan hanya tampil sebagai teks. After:
  empat label terhubung melalui `id`/`htmlFor`, field memiliki nama serta
  autocomplete yang sesuai, dan feedback WhatsApp memakai panel recovery yang
  berbeda visual, `aria-describedby`, serta live status sopan. Red proof
  1 pass/1 fail ditutup menjadi focused 2/2; regresi caret yang sempat tertangkap
  full matrix ditutup dengan targeted 1/1; final storefront 124 test terjadwal
  exit 0, backend 960/960 dengan 11.007 assertion, build, design 26/0,
  npm/Composer audit nol, visual exact dua viewport, no-overflow, target 44
  piksel, dan tepat satu watermark lulus pada lima preset existing. Tidak ada
  perubahan workflow/API, migration, dependency, payment, availability,
  permission, tenant isolation, data preset, invoice, receipt, atau SagaView.
  Production belum berubah karena receipt backup terenkripsi, checksum,
  disposable restore, migration preflight exact S107, dan approval belum ada.
- State pilihan storefront dan touch target filter Paket sudah
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED` pada source
  kumulatif `18f2b3c15d63dff8f5e97cd7883e48cb56610c8e`, branch
  `codex/s106-storefront-selection-state`. Before: pilihan visual pada Lokasi,
  Paket, Jadwal, Background, dan Bayar tidak mengumumkan state terpilih kepada
  screen reader; filter Paket pada beberapa preset hanya 34-38 piksel. After:
  seluruh kontrol single-select memakai `aria-pressed` yang mengikuti state dan
  filter Paket minimal 44x44 piksel pada lima preset existing. Red-green,
  focused 3/3, 120 test storefront terjadwal exit 0, backend 960/960 dengan
  11.007 assertion, build, design 26/0, dependency audit nol, dua viewport,
  no-overflow, dan tepat satu watermark lulus. Tidak ada perubahan workflow,
  API, migration, dependency, preset data, payment, availability, permission,
  tenant isolation, invoice, atau receipt. Production belum berubah karena
  release-safety receipt exact S106 dan approval belum tersedia.
- Koreksi dari langkah `Review` dan penutupan blocker fixture waktunya sudah
  `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED` pada source kumulatif
  `621a74a006316b9e4cd2135a4b4d34a824c0604f`, branch
  `codex/s103-manual-transfer-fixture`. Tombol `Ubah` kini membuka langkah tujuan
  dan memberi jalur langsung `Simpan dan kembali ke Review`; tombol header
  `Kembali ke Review` tersedia termasuk dari langkah Lokasi, fokus serta scroll
  dipulihkan, dan koreksi Jadwal menunggu availability tervalidasi. Focused 2/2,
  suite storefront 114 test terjadwal dengan exit hijau, backend 960/960 dengan
  11.007 assertion, build, design audit, dan npm audit lulus. Dua fixture yang
  sebelumnya melewati retensi 30 hari kini memakai tanggal relatif tanpa
  melonggarkan expiry production. Re-verifikasi segar 4 Agustus pukul 21.00 WIB
  meluluskan Composer online dengan nol advisory, backend 960/960, focused
  Playwright 2/2, accessibility 16/16, build, design 26/0, npm audit nol
  vulnerability, serta empat public smoke 200. Kandidat belum `STAGING_READY`
  karena release-safety receipt yang mengikat backup terenkripsi, checksum, dan
  disposable restore ke exact S103 belum ada. Production belum berubah.
- Recovery clipboard langkah `Selesai` sudah `LOCAL_VALIDATED /
  STAGING_READY / IMPLEMENTED_NOT_DEPLOYED` pada source
  `2bcacb240c2a89e751a0c1df1ed687f122918988`, branch
  `codex/s101-success-copy-recovery`. Kode booking dan pesan bantuan kini
  menunggu Clipboard API; browser yang menolak mendapat alert, fallback manual
  yang langsung fokus/terseleksi, dan satu retry minimal 44 piksel. Production
  belum berubah karena release-safety receipt exact source S101 belum tersedia.
- Recovery clipboard header storefront aktif sudah `LOCAL_VALIDATED /
  STAGING_READY / IMPLEMENTED_NOT_DEPLOYED` pada source
  `9d9c5ede9f1438d799861547ec27f0cd95b55edc`, branch
  `codex/s100-storefront-header-copy-recovery`. Browser yang menolak Clipboard
  API mendapat alert, fallback salin manual yang langsung fokus/terseleksi,
  dan satu retry dominan; sukses baru muncul setelah write selesai. Production
  belum berubah karena release-safety receipt exact source S100 belum tersedia.
- Recovery clipboard pada storefront unpublished sudah `LOCAL_VALIDATED /
  STAGING_READY / IMPLEMENTED_NOT_DEPLOYED` pada source
  `07dda6424f0e935484b25a378f343a7cbfa94f3b`, branch
  `codex/s99-storefront-copy-recovery`. Browser yang menolak Clipboard API kini
  mendapat alert, fallback salin manual yang langsung fokus/terseleksi, dan
  retry; status sukses baru muncul setelah write benar-benar berhasil. Jalur
  bantuan header duplikat disembunyikan pada state unpublished. Production
  belum berubah karena release-safety exact source S99 belum tersedia.
- Recovery pemuatan jadwal storefront sudah `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED` pada source
  `0f2f7bca255aba5c0ab220e542308ff343b3dfe7`, branch
  `codex/s98-storefront-slot-recovery`. Kegagalan API availability tidak lagi
  disamarkan sebagai tanggal penuh; customer mendapat alert yang jujur dan
  tombol `Coba lagi` tanpa kehilangan tanggal pilihan. Production belum
  berubah karena release-safety exact source S98 belum tersedia.
- Storefront, admin, dan super-admin merespons public smoke.
- Tenant Onboarding dan First Booking Activation aktif melalui Activation
  Center yang tenant-scoped dan server-authoritative.
- Support & Recovery Center aktif untuk owner/admin dengan percakapan
  tenant-scoped, retry idempotent, dan human handoff.
- Platform Support aktif untuk operator dengan antrean SLA, ownership,
  penyelesaian auditable, dan perlindungan konflik antaroperator.
- Paket/limit, trial guardrail, fair-use, policy refund/reschedule, retention,
  offboarding, dan support SLA founder aktif secara server-authoritative.
- Kontrak target privacy/retention/offboarding yang lebih rinci telah
  owner-approved. Consent versioning, customer privacy request, owner triage,
  incident register, offboarding timeline, dan retention preview telah
  `IMPLEMENTED_NOT_DEPLOYED` pada source commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`. Penghapusan otomatis, publikasi,
  dan production activation tetap nonaktif.
- Routing WhatsApp per tenant sudah aktif di production pada release
  `20260731181921-378bcdf`, source
  `378bcdf4dac6c54d0bf421b5ef188103d82c6b40`: default memakai Fonnte
  SagaDev, owner dapat memilih token Fonnte studio sendiri, atau menonaktifkan
  otomatisasi. Credential tenant terenkripsi dan delivery menyimpan snapshot
  koneksi yang dipakai.
- Penyempurnaan UI/UX operasional dan storefront tenant telah
  `PRODUCTION_DEPLOYED` pada source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`, release
  `20260801213514-8edd762`. Cakupan mencakup hierarchy
  dashboard/admin, navigasi dan action staff, responsive storefront booking,
  state aksesibilitas, serta satu signature `Powered by SagaBook` yang tidak
  masuk ke invoice atau artefak bisnis. Release safety juga diperketat dengan
  backup serial, manifest checksum deterministik, receipt yang terikat ke
  source commit, dan preservasi checksum migration yang sudah aktif. Manifest,
  smoke publik, database audit, service health, dan rollback release lulus.
- Hardening auth dan fallback surface terbaru pada source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`. Login,
  signup, dan password recovery memiliki
  tepat satu signature `Powered by SagaBook`, target sentuh kritis minimal 44
  piksel, preview dekoratif tidak masuk urutan fokus, metode pemulihan dan CTA
  fallback minimal 44 piksel, serta state forced-colors/reduced-motion. Backup
  terenkripsi dan disposable restore exact-SHA lulus. Full backend 957/957,
  matriks browser desktop+mobile 296/296 melalui empat shard deterministik,
  production auth smoke 6/6, manifest, database audit 100, service health,
  public HTTP smoke, dan rollback gate lulus.
- Storefront dan Booking Center terbaru pada source
  `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802013852-76defd1`. Cabang yang
  memiliki alamat tetapi belum mempunyai URL Maps khusus tetap menyediakan
  pencarian Google Maps berbasis nama dan alamat. URL Maps eksplisit hanya
  diterima dari host Google HTTPS; link Maps dan kontrol salin kode memenuhi
  target sentuh minimal 44 piksel. Full backend 957/957, matriks browser
  desktop+mobile 298/298, backup terenkripsi, disposable restore exact-SHA,
  manifest, database audit 100, service health, public smoke, serta verifikasi
  production 390x844 dan 1440x900 lulus. URL lokasi presisi dari owner tetap
  opsional dan lebih diutamakan bila tersedia.
- Refinement CTA pemilihan cabang pada source
  `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802024941-b74ebb5`; rollback
  `20260802013852-76defd1` dipertahankan. Pada langkah Lokasi, tombol lanjut
  tidak lagi tampil disabled dan menutup katalog sebelum cabang dipilih.
  Setelah customer memilih cabang, tepat satu CTA aktif setinggi 48 piksel
  muncul dan melanjutkan ke langkah Paket. Kelima preset, Maps/WhatsApp,
  forced-colors, reduced-motion, dan satu signature `Powered by SagaBook`
  tetap utuh tanpa mengubah kontrak booking/payment. Full backend 957/957,
  browser desktop+mobile 298/298, typecheck, build, dependency audit 0,
  encrypted backup, disposable restore exact-SHA, database audit, service
  health, public smoke, serta production visual 390x844 dan 1440x900 lulus.
- Admin Booking pada source
  `500065c81cbc07e29b3370f8b22a8fcc521f7d7d` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802101645-500065c`. Daftar
  mobile menjadi kartu operasional yang
  terbaca, desktop mempertahankan tabel, detail booking dibuka pada satu drawer
  aksesibel, kontrol kritis minimal 44 piksel, dan aksi terminal mengembalikan
  fokus ke daftar. Full backend 959/959 dengan 11.001 assertions, focused UI
  mobile/tablet/desktop 6/6, build, design audit, dependency audit 0, encrypted
  backup, disposable restore, migration, readiness 100, service health, dan
  public smoke lulus. Release lama `20260802024941-b74ebb5` dipertahankan untuk
  rollback; SagaView tetap pada release `20260802042221-f26bb57`.
- Public commercial/legal branding safety pada source
  `a6bb8afbfe2353597ea55329c50829a220bc5d3e` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802104018-a6bb8af`. Pricing,
  Terms, dan Privacy kini masing-masing memiliki tepat satu signature aksesibel
  `Powered by SagaBook`, tidak fixed, tidak overflow, dan tidak tertukar dengan
  SagaView pada 390x844 maupun 1440x900. Header `X-Frame-Options` kini dikirim
  tepat satu kali di edge, sementara CSP `frame-ancestors` tetap aktif. Full
  backend 960/960 dengan 11.007 assertions, browser production 8/8, dependency
  audit 0, backup/restore, readiness 100, service health, dan smoke lulus.
  Rollback `20260802101645-500065c` dipertahankan; SagaView tidak berubah.
- Calendar operasional pada source
  `596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802160930-596b8a4`. Mobile kini
  memiliki agenda Harian, Mingguan tujuh hari, dan Bulanan berisi hari aktif,
  bukan tiga tab dengan daftar identik. Baris hari dapat dibuka dengan keyboard,
  kontrol kritis minimal 44 piksel, dan desktop mempertahankan grid hari.
  Manual Booking juga menyelaraskan tanggal aktif ketika dialog dibuka dan
  mengenali nama bulan Indonesia. Full visual matrix 430 skenario dan backend
  960/960 dengan 11.007 assertions lulus; build, design audit, dependency audit
  0, encrypted backup, disposable restore, readiness 100, service health, dan
  public smoke lulus. Rollback `20260802104018-a6bb8af` dipertahankan. Tidak ada
  perubahan pada payment/provider, storefront tenant/preset, landing page,
  watermark, atau SagaView.
- Admin Staff pada source
  `35c82192234eb84e03b2237029540e299c70e12f` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802183533-35c8219`; rollback
  `20260802160930-596b8a4` dipertahankan. Before: layar mobile masih memaksa
  tabel desktop selebar 920 piksel, kontrol penting berukuran 32-40 piksel,
  filtered-empty tidak memiliki reset, dan editor tidak memulihkan fokus.
  After: mobile memakai kartu staff, desktop tetap tabel, kontrol kritis
  minimal 44 piksel, reset filter tersedia, editor berlabel dan mengembalikan
  fokus, serta tab, forced-colors, reduced-motion, dan satu signature
  `Powered by SagaBook` tetap utuh. CRUD dan permission tidak berubah. Backend
  960/960 dengan 11.007 assertions, visual matrix 442 passed dengan 41
  controlled skip, build, design audit, dependency audit 0, encrypted backup,
  disposable restore, database audit 100, service health, journal, dan public
  browser smoke lulus.
- Residual release ini: visual production Calendar yang terautentikasi tidak
  dijalankan tanpa membuka credential; exact-source authenticated regression
  lulus. Endpoint health `/up` masih tidak mengirim HSTS, sedangkan route
  aplikasi/login yang diaudit mengirim HSTS dan XFO tepat satu. Satu error
  journal berasal dari `saga-platform-staging-monitor.service` di level host,
  bukan service SagaBook.
- Residual Admin Staff: visual live yang terautentikasi tidak dijalankan tanpa
  credential; exact-source regression mobile/tablet/desktop lulus. Endpoint
  `/up` masih tidak mengirim HSTS. Sampel login saat release mengirim HSTS dan
  CSP satu kali tetapi tidak mengirim `X-Frame-Options`; CSP
  `frame-ancestors` tetap aktif dan kontrak header perlu dinormalisasi.
- Storefront booking desktop pada source
  `994de01cf3586adb4da8813a9c4b931085457510` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260802221221-994de01`; rollback
  `20260802183533-35c8219` dipertahankan. Mulai viewport 1120 piksel, layout memakai shell
  dua kolom hingga 1040 piksel dengan orientasi langkah dan ringkasan pilihan;
  mobile 390x844 tetap identik dan tablet 1024x768 tetap ringkas tanpa
  overflow. Semua langkah dan preset existing, Maps, WhatsApp, paket, slot,
  checkout, confirmation, tenant brand, dan satu `Powered by SagaBook` tetap
  tercakup. Backend 960/960, visual desktop 45/45 dengan satu mobile-only skip,
  mobile manual-transfer E2E 1/1, build, design audit, npm/Composer audit 0,
  backup/restore exact-SHA, database audit 100, service, journal, public smoke,
  dan visual live dua viewport lulus. Endpoint `/up` masih tanpa HSTS/CSP;
  route login dan booking yang diaudit mengirim header keamanan. Arah layout
  desktop ini berstatus `DEPRECATED` melalui `DEC-031`, tetapi catatan runtime
  tetap dipertahankan karena production belum dipromosikan ke candidate S109.
- Success screen WhatsApp support pada source
  `51a916537b51e8a503c6c88d3b130d2396558589` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260803080450-51a9165`; rollback
  `20260803022430-fa228d8` dipertahankan. Before: bantuan setelah booking
  berhenti pada copy template admin. After: customer mendapat CTA 48 piksel
  menuju detail dan status booking, lalu WhatsApp cabang yang dipilih dengan
  pesan konteks public-safe; jika nomor cabang tidak valid, UI menyediakan
  fallback salin pesan. Focus keyboard, `aria-live`, forced-colors,
  no-overflow, serta tepat satu `Powered by SagaBook` lulus pada mobile
  390x844, tablet 768x1024, dan desktop 1440x900. Fixture visual kini memakai
  tanggal sintetis terpisah per viewport agar tidak saling bentrok. Full matrix
  fresh lulus 448 skenario dengan 50 controlled skips dan 0 failure; backend
  960/960 dengan 11.007 assertions, build, design audit 26 artefak, env guard
  2/2, dan npm/Composer audit 0 lulus. S39 backup terenkripsi, checksum,
  disposable restore exact-SHA, manifest, smoke internal, service health,
  empat endpoint 200, HSTS/CSP pada route booking, serta browser produksi
  public-safe dua viewport lulus. Demo SnapStudio masih menampilkan state
  belum dipublish; aktivasi tenant nyata dan business readiness tetap perlu
  UAT terkontrol.
- Admin Booking compact triage pada source
  `d70fc1e0d922eed86fe4ea4998688aad32c68c43` berstatus
  `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` sebagai release
  `20260803194351-d70fc1e`; rollback `20260803132556-cfb2af8` tersedia.
  Before: viewport 1024 piksel memakai tabel 930 piksel sehingga nama, tanggal,
  paket, dan status terpecah menjadi kolom sempit. After: viewport di bawah
  1280 piksel memakai kartu triage ringkas; desktop 1440 piksel tetap memakai
  tabel. Focus, forced-colors, reduced-motion, target sentuh 44 piksel,
  no-overflow, dan tepat satu `Powered by SagaBook` lulus. Gate final mencakup
  960 backend test dengan 11.007 assertion, 449 visual pass dengan 52 controlled
  skip dalam 18 chunk mobile/tablet/desktop, focused Playwright pada viewport
  risiko 1024, build, audit dependency 0, S39 backup
  terenkripsi dan disposable restore exact-SHA, database audit 100, service,
  empat endpoint 200, serta browser produksi public-safe 390x844 dan 1440x900.
  Booking/payment/provider, availability, permission, session, tenant
  isolation, storefront, dan SagaView tidak berubah. Business readiness tetap
  `NEEDS CONFIRMATION` sampai UAT operator studio nyata.
- Candidate landscape tablet storefront pada source
  `1f4b7bafb2f171a689826bcd5c34216924721d18` berstatus
  `DEPRECATED / IMPLEMENTED_NOT_DEPLOYED` melalui `DEC-031`. Viewport 1024x768
  saat itu berubah dari shell ponsel
  sekitar 460 piksel menjadi shell dua kolom sekitar 992 piksel; mobile 390
  dan desktop mulai 1120 piksel tetap mempertahankan kontrak sebelumnya.
  Kelima preset, CTA Maps/WhatsApp 44 piksel, no-overflow, accessibility, dan
  tepat satu `Powered by SagaBook` lulus. Production tetap source `d70fc1e0`,
  release `20260803194351-d70fc1e`; candidate ini tidak lagi menunggu promosi
  karena digantikan S109. Booking/payment/availability dan tenant isolation
  tidak berubah.
- Navigasi admin Changelog dari source asal
  `95621347050450a06dd8e5c95eedbd112aa2ff0e` aktif secara kumulatif melalui
  source `e20c0ba3480e6143159108e313525d7576312146`, release
  `20260806072249-e20c0ba`. Daftar 18
  rilis/64 perubahan kini memakai pencarian, lima filter, accordion satu-detail,
  empty/reset recovery, dan CTA kembali ke Hari Ini. Kontrol discovery minimal
  44 piksel, CTA 48 piksel, keyboard/focus, forced-colors, reduced-motion,
  no-overflow, serta tepat satu `Powered by SagaBook` lulus pada 390x844 dan
  1440x900. Backup/restore exact candidate, manifest, service, DB audit, dan
  public smoke lulus; rollback `20260806063717-cb8ef55` tersedia. Workflow
  bisnis, registry rilis, storefront, dan SagaView tidak berubah.
- Refinement navigasi dari langkah Review pada source
  `fa228d89bc5bea32fb19bf424a4b0e48db1bc506` berstatus
  `PRODUCTION_DEPLOYED` sebagai release `20260803022430-fa228d8`. Enam kontrol `Ubah` yang sebelumnya sekitar
  31x18 piksel kini menjadi tombol semantik minimal 72x44 piksel dengan label
  screen reader, focus keyboard, forced-colors, dan reduced-motion. Kelima
  preset pada mobile, tablet, dan desktop tidak overflow serta tetap memiliki
  tepat satu `Powered by SagaBook`. Booking, payment/provider, availability,
  permission, session, tenant isolation, dan SagaView tidak berubah. Backend
  960/960, focused Review 9/9, accessibility 24/24, scoped E2E mobile dan
  desktop, build, serta npm/Composer audit 0 lulus. Full matrix fresh lulus
  142/142 dengan 2 expected skips. S39 backup/restore exact-SHA, manifest,
  DB audit 100, service/public smoke, rollback, dan DOM live mobile+desktop
  lulus; watermark tepat satu, overflow false, dan seluruh tombol berukuran
  72x44 piksel. Rollback `20260802221221-994de01` tersedia.
- Candidate signup tanpa approval owner dan trial kanonik 7 hari sudah
  `LOCAL_VALIDATED` pada source
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`. Production tetap memakai
  kontrak aktif di atas sampai ada release approval baru; status candidate
  `PRODUCTION HOLD`.
- SagaDev Control Center production release `20260804171621-0ab9d8e`
  memperbaiki approval trial SagaBook yang sebelumnya gagal karena schema
  lifecycle belum tersedia. Dua migration allowlisted diterapkan, dua lifecycle
  trial tersinkron ke 7 hari, katalog trial bernilai 7, dan subscription
  berbayar terverifikasi tidak berubah. SagaBook tetap pada release
  `20260803194351-d70fc1e`; auto-trial S72 tetap `PRODUCTION HOLD` sehingga
  approval owner manual masih berlaku.

## Update terbaru

### Customer Booking Center

Before: secure link hanya berfungsi sebagai detail booking dasar.

After:

- status booking/payment dan detail jadwal tampil dalam satu halaman;
- customer dapat membuat request tanpa memutasi transaksi langsung;
- token expiring dan tenant/booking-scoped;
- request retry-safe/idempotent;
- cancel booking berbayar diarahkan ke refund;
- Task Center menerima handoff yang auditable.

### Tenant Onboarding dan First Booking Activation

Before: owner perlu membaca beberapa halaman setup terpisah dan tidak memiliki
satu status kanonik untuk mengetahui apakah storefront siap dipublikasikan.

After:

- Activation Center merangkum akun, studio, katalog, kebijakan, payment,
  notification, storefront, dan booking pertama;
- progress dan blocker dihitung server-side berdasarkan tenant aktif;
- owner dapat melanjutkan setup, preview, publish, lalu memantau booking publik
  pertama dari satu alur;
- status notification membedakan otomatis, fallback manual, dan belum siap;
- endpoint onboarding menggunakan permission settings, tenant resolution
  fail-closed, dan rate limit.

### Support & Recovery Center

Before: bantuan produk tersebar dan owner tidak dapat melanjutkan percakapan
setelah tiket dialihkan ke tim manusia.

After:

- bantuan produk, account recovery, setup, dan changelog tersedia dari satu
  halaman;
- owner dapat bertanya, melakukan human handoff, lalu melanjutkan tiket aktif;
- retry jaringan memakai idempotency key tenant-scoped agar pesan tidak
  tergandakan;
- screenshot hanya dapat dikirim setelah konfirmasi bahwa informasi sensitif
  sudah dihapus dan lampiran tetap privat;
- permission, payload public-safe, audit, dan adapter Support Hub ditegakkan
  server-side.
- operator dapat memfilter antrean berdasarkan produk, status, prioritas, SLA,
  dan ownership;
- claim, release, resolve, reopen, perubahan prioritas, private note, dan
  balasan publik memakai idempotency key serta optimistic lock;
- retry tidak menggandakan tindakan dan konflik operator menghasilkan refresh
  aman, bukan overwrite;
- receipt audit tidak memuat isi pesan, tenant ID mentah, provider reference,
  atau PII.
- sesuai `DEC-046`, chatbot hanya membantu produk SagaDev, menjawab secara
  natural dari knowledge `CONFIRMED`, membedakan status release, dan tidak
  membuat tiket knowledge-gap untuk topik yang benar-benar di luar SagaDev;
  pertanyaan produk yang belum terjawab tetap dapat diteruskan ke human
  handoff. Implementasi awal S127 masih candidate dan belum production.

## Belum boleh diklaim

- Provider delivery tidak boleh dianggap berhasil hanya dari queue/log.
- Business-ready penuh tetap membutuhkan acceptance booking nyata, support
  observation, serta Founding Studio Pilot yang memenuhi seluruh exit criteria.

## Ide konten

- Dari booking via chat menjadi booking center terstruktur.
- Mengapa cancel booking berbayar tidak boleh langsung mengubah uang.
- Perbedaan secure link dengan halaman status biasa.
- Cara studio menghindari double booking dan task ganda.
