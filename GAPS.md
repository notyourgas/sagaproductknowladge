# Gaps dan Keputusan Founder

## Tujuan

Dokumen ini mencatat informasi yang belum tersedia, belum terverifikasi, saling
bertentangan, atau membutuhkan keputusan Andreas. Entri di sini tidak boleh
diubah menjadi klaim publik sebelum ditutup dengan bukti atau keputusan owner.

## Konteks

Daftar ini berlaku pada evidence cut-off 7 Agustus 2026 23:24 WIB dan harus diperbarui
ketika keputusan atau release baru menutup gap.

## Cara memakai

- `NEEDS CONFIRMATION`: informasi atau keputusan belum cukup jelas.
- `ASSUMPTION`: dugaan kerja sementara; bukan fakta.
- `PROPOSAL`: rekomendasi yang belum disetujui.
- `TODO`: pekerjaan dokumentasi atau verifikasi yang dapat dikerjakan.
- Keputusan yang sudah disetujui dipindahkan ke [DECISIONS](DECISIONS.md)
  sebagai `CONFIRMED`.

## Prioritas tinggi

| ID | Produk/area | Label | Pertanyaan atau gap | Bukti penutup |
|---|---|---|---|---|
| GAP-004 | SagaBook | NEEDS CONFIRMATION | Business readiness belum dibuktikan pada cohort studio nyata. | Minimal cohort onboarding, booking nyata, support observation, dan incident review. |
| GAP-005 | COYABAG | NEEDS CONFIRMATION | Katalog final, identitas seller, pajak/legal, payment, shipping, dan kebijakan belum dikunci. | Data owner yang disetujui dan UAT transaksi nyata. |
| GAP-006 | Semua produk berbayar | NEEDS CONFIRMATION | Kebijakan pajak, invoice, refund, dunning, grace, dan SLA komersial lintas produk belum disatukan. | Policy founder/legal yang disetujui per produk. |
| GAP-007 | Semua produk | NEEDS CONFIRMATION | Owner data-retention, deletion SLA, incident contact, dan subprocessor list belum lengkap untuk semua produk. | Policy per produk, owner, dan tanggal berlaku. |

## Keputusan produk

### SagaBook

- `TODO`: guard scope/fallback source
  `0894df00f6866688db4d053758a99d54ba4e8908` sudah production dan memisahkan
  out-of-scope dari unknown produk. Evaluasi 38 test/219 assertion mencakup
  corpus minimum 18 kategori public-safe, tetapi corpus/index/model AI yang
  lebih luas tetap `AI_EVAL_VALIDATED / AI_KNOWLEDGE_NOT_PROMOTED` sampai live
  smoke product/out-of-scope/tenant-negative, latency/error/cost canary, dan
  rollback khusus pipeline AI terbukti. Inventaris chatbot produk
  SagaDev lain, kebijakan human handoff lintas surface, provider/cost, latency,
  dan data-retention masih perlu coverage bertahap. Fine-tuning baru
  membutuhkan keputusan founder terpisah.

- `TODO`: auth/session S123, status/write cabang S124, serta branch-context
  `/admin/reports` S125 sudah `INTEGRATION_VALIDATED` dan aktif di production.
  Candidate Sprint 3 `82a6f376998d8eb5778c6ccaac117a21a1ab8efd`
  sudah mencabut sesi stale ketika delegasi cabang/role/identitas staff berubah
  dan memuat ulang selector dari scope API setelah login ulang. Irisan ini
  `LOCAL_VALIDATED` tetapi belum production. Candidate berikutnya
  `70a6aad76f3f86589473986c0e9fa3b26c5022c2` menutup stale refetch lintas tab
  melalui sinyal invalidasi public-safe, API refetch aktual, race protection,
  focus/visibility recovery, serta offline/retry. Irisan ini juga
  `LOCAL_VALIDATED` dan belum production. Candidate `4606c5c5`
  menutup delete dependency/recovery dengan 409 terstruktur, recovery UI,
  transaksi/row lock, tenant-negative 404 tanpa leak/audit, serta delete/audit
  tepat sekali. Candidate terbaru `22013fc0` menyelaraskan daftar staff dengan
  cabang aktif, mempertahankan revocation/permission boundary, dan menutup
  fresh OSV dengan nol advisory. Candidate ini juga belum production. Residual
  tenant/cabang ditutup lokal oleh combined exit gate S3-S4 source `4ee167ec`
  dengan tujuh profil terisolasi, full backend, build, AI regression, dan audit
  dependency hijau; production tetap belum berubah. Prioritas berikutnya adalah
  S5-S6 paket/background/add-on/resource. Candidate S5 `0874c098` sudah
  menutup pemulihan stale-write paket 409 dengan reload response API aktual,
  baseline baru, double-submit guard, dan permission/tenant-negative. Irisan ini
  `LOCAL_VALIDATED`, belum production. Candidate berikutnya `4b71e347`
  menutup deactivation paket yang masih dipakai background aktif melalui 409
  transactional, urutan row lock, state UI aktual, dan recovery ke Background;
  irisan ini juga `LOCAL_VALIDATED` serta belum production. Candidate
  `be02a4e7` berikutnya menutup delete dependency/recovery paket: backend
  menghitung penggunaan booking dan relasi background, mengembalikan 409
  public-safe, serta mempertahankan paket tanpa audit sukses; UI memberi
  recovery ke Background dan mencegah double-submit. Irisan ini juga
  `LOCAL_VALIDATED` dan belum production. Residual S5 adalah coverage
  background dan combined exit gate; S6 add-on/resource belum dimulai.
  Recovery response availability kosong,
  initial-load manual transfer, dan aksi Payment Monitor sudah production pada
  S128-S130. Residual payment/report adalah QRIS/provider nyata,
  pagination/filter/export, reconciliation provider, stale multi-tab, dan
  closing concurrency. Setelah itu lanjutkan katalog, availability concurrency,
  booking, admin/task, WhatsApp/reminder, dan template draft/preview/publish.
  UI rate-limit 429, expiry idle per tab, dan revocation perangkat lain sudah
  `LOCAL_VALIDATED` pada candidate Sprint 2, tetapi belum production. Residual
  combined browser acceptance empat slice sudah hijau dengan runtime disposable
  terisolasi. Endpoint Packagist timeout ditutup dengan fallback OSV resmi yang
  mengaudit 114 paket Composer dan menemukan nol advisory. Sprint 2 exit gate
  sudah diterima lokal; Sprint 3-S4 tenant/cabang masih aktif.
  UI/UX S122 sudah production,
  tetapi integrasi template belum
  boleh disebut `INTEGRATION_VALIDATED` sebelum happy, failure/retry,
  double-submit, dan tenant-negative terbukti.

- `CONFIRMED`: batas paket, trial guardrail, policy default
  refund/reschedule/cancel, retention, offboarding, dan support SLA sudah
  diputuskan melalui `DEC-008`, `DEC-009`, dan keputusan SagaBook yang lebih
  spesifik pada `DEC-011`.
- `NEEDS CONFIRMATION`: hasil Founding Studio Pilot—minimal 3 studio, 50 booking
  nyata total, minimal 95% core journey tanpa engineer, kepatuhan SLA, dan
  minimal 2 studio lanjut berbayar.
- `NEEDS CONFIRMATION`: identitas badan hukum/alamat, kontak privacy,
  subprocessor, lokasi server, pajak, forum sengketa, dan legal sign-off publik.
- `CONFIRMED`: consent versioning, customer privacy request, owner triage,
  incident register, offboarding timeline, dan retention preview sudah
  `IMPLEMENTED_NOT_DEPLOYED` pada source SagaBook.
- `TODO`: legal-hold/export receipt, destructive anonymization/deletion,
  backup-expiry evidence, legal review, release, dan production activation
  masih wajib diselesaikan; keputusan owner dan source implementation belum
  mengaktifkan policy publik.
- `NEEDS CONFIRMATION`: KPI baseline activation, conversion, support volume,
  dan retention setelah pilot berjalan.
- `TODO`: dokumentasikan hasil pilot/cohort nyata secara agregat tanpa PII.
- `CONFIRMED`: S71 Fonnte tenant routing aktif pada production release
  `20260731181921-378bcdf`; additive migration, rollback target, provider
  connection tanpa pesan, readiness, health, dan service gate lulus.
- `TODO`: lakukan authenticated owner canary ke nomor terkontrol sebelum
  memperluas pengiriman ke customer nyata.
- `TODO`: S72 auto-trial 7 hari masih `PRODUCTION HOLD`; kontrak production
  masih memakai approval owner manual sampai release, worker/provisioning, dan
  authenticated product UAT disetujui.
- `CONFIRMED`: server error approval SagaBook akibat schema lifecycle yang
  belum tersedia ditutup pada SagaDev Control Center release
  `20260804171621-0ab9d8e`. Backup, dua migration allowlisted, schema,
  katalog 7 hari, health, service, journal, dan rollback gate lulus; dua
  lifecycle trial direkonsiliasi dan subscription berbayar tidak berubah.
- `TODO`: owner perlu mengulang satu approval nyata dari UI setelah deployment
  karena credential bridge tidak tersedia untuk authenticated acceptance
  otomatis pada sesi release ini.
- `CONFIRMED`: gap release runner Admin Booking telah ditutup pada source
  `500065c8`; release `20260802101645-500065c` aktif dengan readiness 100 dan
  rollback lama dipertahankan.
- `CONFIRMED CLOSED`: gap signature public Pricing/Terms/Privacy dan duplikasi
  `X-Frame-Options` ditutup pada source `a6bb8afb`, release
  `20260802104018-a6bb8af`. Ketiga route memiliki satu `Powered by SagaBook`,
  tidak overflow pada mobile/desktop, dan HSTS/CSP/XFO masing-masing satu;
  CSP `frame-ancestors` tetap aktif.
- `NEEDS CONFIRMATION`: authenticated production visual Calendar pada release
  `20260802160930-596b8a4` belum dijalankan tanpa credential. Exact-source
  authenticated browser regression dan public production smoke sudah lulus.
- `NEEDS CONFIRMATION`: authenticated production visual Admin Staff pada
  release `20260802183533-35c8219` belum dijalankan tanpa credential.
  Exact-source regression mobile/tablet/desktop dan public production browser
  smoke sudah lulus.
- `TODO`: normalkan HSTS pada endpoint health `/up`; route aplikasi/login yang
  diaudit mengirim HSTS dan CSP satu kali. Normalisasi juga kontrak
  `X-Frame-Options`: sampel login release Staff tidak mengirim header tersebut,
  meski CSP `frame-ancestors` tetap aktif. Triage historis
  `saga-platform-staging-monitor.service` tetap isu host terpisah; journal
  service SagaBook pada release Staff bersih.
- `CONFIRMED`: candidate UI/UX dan auth/fallback hardening kumulatif sudah
  `PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`; manifest,
  public HTTP smoke, production auth browser 6/6, matriks browser
  desktop+mobile 296/296, database audit, service health, backup/restore, dan
  rollback lulus.
- `CONFIRMED`: gap jalur customer ketika URL Maps khusus belum tersedia telah
  ditutup pada release `20260802013852-76defd1` melalui pencarian Google Maps
  berbasis nama/alamat tanpa mengubah data tenant atau mengarang koordinat.
- `NEEDS CONFIRMATION`: URL Maps presisi tetap opsional untuk cabang yang ingin
  deep link spesifik; detail tenant dan URL lokasi tidak disimpan di knowledge
  publik.
- `CONFIRMED`: refinement enam jalur edit Review touch-safe aktif pada source
  `fa228d89`, release `20260803022430-fa228d8`, dengan status
  `PRODUCTION_DEPLOYED`; rollback `20260802221221-994de01` tersedia.
- `CONFIRMED`: blocker fixture/scoping visual ditutup. Full matrix fresh lulus
  142/142 dengan 2 expected skips; backup/restore exact-SHA, DB audit 100,
  service/public smoke, dan DOM live dua viewport lulus.
- `CONFIRMED CLOSED`: blocker fixture waktu success screen ditutup pada source
  `51a91653`; tanggal sintetis dipisahkan per viewport dan full matrix fresh
  lulus 448 skenario dengan 50 controlled skips serta 0 failure. Release
  `20260803080450-51a9165` aktif dengan backup/restore exact-SHA, manifest,
  service/public smoke, dan browser produksi dua viewport; rollback
  `20260803022430-fa228d8` tersedia.
- `NEEDS CONFIRMATION`: demo SnapStudio pada browser produksi masih berstatus
  belum dipublish. Jalankan satu booking success terkontrol pada tenant pilot
  tanpa menyalin PII ke knowledge untuk membuktikan CTA detail/status dan
  WhatsApp cabang sebelum klaim activation tenant nyata atau business ready.
- `DEPRECATED`: arah landscape/tablet source `1f4b7baf` yang memperlebar
  storefront digantikan `DEC-031`/S109. Commit ada dalam sejarah kumulatif,
  tetapi perilaku lebar tidak aktif dan tidak boleh dipulihkan; production
  tetap satu canvas mobile maksimum 460 piksel pada semua viewport.
- `RESIDUAL`: navigasi admin Changelog sudah aktif kumulatif melalui source
  production terbaru `0894df00` / release `20260806152606-0894df0`; service,
  manifest, dan public smoke lulus. Authenticated owner UAT pada data rilis
  aktual masih diperlukan sebelum menyebut irisan ini `BUSINESS_READY`.
- `CLOSED CUMULATIVE`: recovery availability, clipboard unpublished/header/
  selesai, Review, state pilihan, dan form Detail dari source `0f2f7bca`,
  `07dda642`, `9d9c5ede`, `2bcacb24`, `621a74a0`, `18f2b3c1`, dan `2b3e544b`
  semuanya merupakan ancestor source production `0894df00`. Bukti release
  kumulatif mencakup immutable manifest,
  service/journal, rollback, serta public smoke; tidak perlu deploy terpisah.
- `DEPRECATED`: candidate cross-monitor storefront S108 yang memperlebar canvas
  menjadi 1280 piksel digantikan keputusan mobile-only `DEC-031` dan source
  S109; S94/S108 tidak boleh dipromosikan ke production.
- `CLOSED CUMULATIVE`: baseline mobile-only/payment, fixture visual sekunder,
  dan disclosure request customer dari source `1de6a935`, `77a25c7c`, serta
  `8a9a2ef6` juga ancestor source production `0894df00`. Kontrak S109 tetap
  aktif: canvas storefront maksimum 460 piksel pada semua viewport.
- `CLOSED` untuk deploy S119: source `20ff6829` aktif sebagai release
  `20260805052322-20ff682` setelah tenant activation readiness 100, full
  acceptance, backup/checksum/disposable restore, migration preflight, DB audit
  100, service, smoke, dan browser production lulus. Rollback
  `20260803194351-d70fc1e` tersedia.
- `NEEDS CONFIRMATION`: storefront tenant yang baru diaktifkan secara teknis
  ready masih menampilkan copy alamat placeholder pada visual production.
  Owner perlu mengganti alamat final dan menyelesaikan satu booking nyata
  terkontrol sebelum klaim `BUSINESS_READY` atau distribusi link secara luas.

### SagaView

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: S140 identitas workspace dan
  Changelog aktif pada backend `c2a05076` / `20260807161105-c2a0507` dan Studio
  `10bcaaae` / `20260807161105-10bcaaa`; rollback S139 dipertahankan. Label
  administratif Studio kini berasal dari konfigurasi aktivasi
  server-authoritative, terpisah dari brand editable. Changelog Owner kembali
  pada kelompok `AKUN`, dan `Cloud vN` dijelaskan sebagai revision katalog per
  workspace. Repair exact-match/idempoten memperbaiki satu field pada satu
  workspace tanpa mengubah 51 frame, kategori, katalog, payment, subscription,
  device/lease, session, atau foto customer. Residual sebelum `BUSINESS_READY`:
  authenticated UAT membuka Changelog Owner dan mengaktifkan Studio pada dua
  akun bergantian untuk memverifikasi label workspace serta revision Cloud.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: S139 sinkronisasi kategori dan
  harga aktif pada backend `f05c919a` / `20260807045115-f05c919` dan Studio
  `05c5fda0` / `20260807045115-05c5fda`; rollback S138 dipertahankan. Master,
  draft aktif, dan published aktif kini sinkron transactional; batch kategori
  membersihkan override harga per-frame lama agar harga efektif mengikuti
  default kategori serta menaikkan catalog version/checksum dan workspace
  revision. Recovery terarah menutup 29 mismatch menjadi nol tanpa menyentuh
  73 override lain. Residual sebelum `BUSINESS_READY`: authenticated Owner UAT
  dengan kategori yang harga defaultnya berbeda, lalu verifikasi harga efektif
  yang sama pada Galeri Frame dan Studio.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: S138 import finish dan batch
  kategori aktif pada backend `f515dd7a` / `20260807023502-f515dd7` dan Studio
  `05c5fda0` / `20260807023502-05c5fda`; rollback S137 dipertahankan. Footer
  status akhir, tombol `Selesai`, Escape/tutup, serta batch edit kategori 1-100
  frame sudah lulus full regression, desktop/mobile Playwright, backup/restore,
  candidate+rollback rehearsal 6/6, deploy/post-preflight, preservation,
  marker source+bundle+route, dan public smoke. Residual sebelum
  `BUSINESS_READY`: authenticated Owner UAT dengan completed/failed/cancelled,
  batch kategori published+draft dan failure preservation, serta export nyata.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: S137 cloud bootstrap recovery
  aktif pada backend `d7542fdc` / `20260807010717-d7542fd` dan Studio
  `05c5fda0` / `20260807010718-05c5fda`; rollback S136 dipertahankan. Owner
  legacy yang sah tetapi belum mempunyai membership workspace dipulihkan secara
  transactional/idempotent hanya untuk Staff aktif, same-tenant, role legacy,
  dan subscription SagaView; membership nonaktif tetap ditolak. UI tidak lagi
  menyamarkan `403` sebagai `Memuat cloud` tanpa akhir dan menyediakan state
  gagal serta retry. Regression 935 test/11.101 assertion, build, audit,
  backup/restore, rehearsal kandidat+rollback 6/6, deploy, preservation,
  live smoke/marker, serta probe transaksi yang di-rollback lulus. Residual
  sebelum `BUSINESS_READY`: authenticated Owner UAT pada akun terdampak,
  validasi Batch Import, serta satu failure/retry nyata.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: `DEC-055` Owner dan Studio
  workspace alignment aktif pada backend `20260806224422-85ec0f6` dan Studio
  `20260806224441-0745426`; rollback S134 dipertahankan. Server-auth tenant
  menang sebelum request pertama, launcher/aktivasi terikat workspace target,
  dan state/runtime Studio diisolasi per workspace. Acceptance, backup/restore,
  rehearsal, deploy 6/6, preservation, marker, rollback, serta post-rollback
  preflight lulus. Residual: authenticated Owner UAT dari dua workspace nyata,
  termasuk perpindahan bolak-balik pada komputer yang sama.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: `DEC-054` workspace validation
  dan tab recovery aktif pada backend source/release `902e5dd8` /
  `20260806212915-902e5dd` serta Studio rebuild `20260806213012-3b66f8d`.
  File picker menunggu context server, target workspace terlihat, stale context
  hanya dipulihkan same-session/same-tenant, dan preflight/create/resume berhenti
  fail-closed terhadap context invalid/cross-tenant. Acceptance desktop/mobile,
  backup/restore, rehearsal, deploy 6/6, preservation, live smoke/marker/header,
  dan rollback lulus. Residual: authenticated Owner UAT import 50-100 file nyata
  pada dua akun, termasuk stale tab, reconnect, context expiry, dan resume.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: `DEC-051` Batch Import Control
  Center aktif pada source/release `b6af5797` / `20260806200400-b6af579`.
  Preflight, duplicate policy, history/notification, cancel, CSV, bulk actions,
  dan ZIP export file-backed sudah melewati acceptance, backup/restore,
  candidate+rollback rehearsal, deploy 6/6, canary/payment-device-photo
  preservation, service/journal/header/public smoke, serta runtime ZIP 51
  frame. Residual hanya authenticated Owner UAT import 50-100 file nyata pada
  dua akun termasuk reconnect, tiga duplicate policy, quota/storage rejection,
  CSV, category edit, publish draft, serta remove/retry.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: `DEC-049` memindahkan packaging
  tiga sampai 100 pilihan ke private server ZIP dengan idempotent retry, TTL 30
  menit, native download, dan all-or-nothing delivery; satu atau dua pilihan
  tetap direct download. Source/release backend
  `ea432e977d02ada8f4b7289bfbd43c6e56941f9a` /
  `20260806122125-ea432e9`; Studio `20260806122126-3b66f8d`; rollback
  `20260806111019-555682b` / `20260806111020-3b66f8d`. Acceptance 51 frame di
  atas 90 MB dan batas 100, encrypted backup/restore, rehearsal, deploy gate,
  atomic release, canary/preservation, live route/marker,
  service/journal/header/public smoke, dan rollback lulus. Residual sebelum
  `BUSINESS_READY`: authenticated Owner UAT memakai 51 frame nyata, dua akun,
  dan live retry.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: koreksi `DEC-050` mengaktifkan
  resumable server batch import melalui source
  `e850d6c7542c10e97309ca045ebe2f700a488ebf`, backend release
  `20260806133407-e850d6c`, dan Studio release `20260806133407-3b66f8d`.
  Rollback `20260806122125-ea432e9` / `20260806122126-3b66f8d`
  dipertahankan. Growth 51, Pro 100, retry/resume/idempotency, corrupt/invalid,
  tenant/auth-negative, checksum, ZIP safety, quota draft preservation,
  backup/restore, rehearsal, canary/preservation, live marker, dan public smoke
  lulus. Residual sebelum `BUSINESS_READY`: authenticated Owner UAT 50-100 file
  nyata pada dua akun termasuk reconnect/resume nyata, category edit,
  plan-limit/storage rejection, dan draft recovery.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: `DEC-044` aktif melalui source
  `73979542ceeb8fc11e658c7d27346ca983dc163f`, backend release
  `20260806071707-7397954`, dan Studio `20260806071733-3b66f8d`. Residual:
  authenticated Owner UAT dengan galeri/frame nyata termasuk izin
  multi-download browser, tenant-negative, serta retry/idempotency sebelum
  klaim coverage penuh atau `BUSINESS_READY` mass-scale.

- `CONFIRMED`: portable frame template `DEC-042` sudah
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` melalui backend release
  `20260806050513-1158926`. Backup/restore, guarded deployment, live smoke, dan
  rollback verification lulus.
- `TODO`: jalankan authenticated Owner UAT memakai frame nyata pada akun sumber
  dan akun tujuan terkontrol, termasuk rename/category, collision-safe key,
  save draft, dan publish terpisah, sebelum klaim `BUSINESS_READY` mass-scale.

- `TODO`: session flow S136 sudah `RELEASED / PRODUCTION_DEPLOYED` pada backend
  `4642b408` / `20260807003837-4642b40`, termasuk red-to-green tenant mismatch
  `200 -> 403`, UI -> API -> disposable DB, idempotency,
  tenant/device-negative, metadata-only/no-upload, backup/restore,
  rehearsal+deploy+post-preflight 6/6, canary/preservation, dan smoke publik.
  Activation/business readiness masih menunggu authenticated UAT. Lanjutkan
  physical Windows folder permission/quota/recovery,
  viewport 1280/1512/1920/2560/3840 dan zoom 125/150/200, lalu fitur berikutnya
  dari frame selection sampai owner dashboard/entitlement. Untuk ingest foto,
  editor, recovery, dan export, bukti wajib tetap memakai boundary local-first,
  atomic write, quota, permission, recovery, serta no-upload guarantee.

- `NEEDS CONFIRMATION`: `DEC-038` aktif pada backend
  `20260805203055-9ee5bcc` dan Studio `20260805203055-2121ebb` setelah backup,
  gate 6/6, canary, payment boundary, service/header/journal, route, HTTP smoke,
  dan bundle marker lulus. Residual adalah authenticated Owner UAT: publish satu
  frame nyata, pastikan muncul di Galeri/Studio, dan pastikan `Simpan Draft`
  tetap privat sebelum klaim `BUSINESS_READY` mass-scale.

- `NEEDS CONFIRMATION`: free drag rotation per slot aktif pada backend
  `20260805193458-0b655da` dan Studio `20260805193458-2121ebb` setelah commerce
  canary dipulihkan melalui lifecycle resmi dan gate 6/6 lulus. Exact-source
  tests, customer render, export PNG, marker bundle production, service, header,
  journal, dan HTTP smoke lulus. Residual hanya authenticated Owner visual UAT
  dengan frame miring nyata serta Founding Studio Pilot sebelum klaim
  `BUSINESS_READY` mass-scale.

- `CONFIRMED`: limit Growth/Pro, trial guardrail, cloud frame storage,
  local-photo boundary, retention, offboarding, dan support SLA sudah
  diputuskan melalui `DEC-008` dan `DEC-009`.
- `NEEDS CONFIRMATION`: kebijakan lisensi printer/device pengganti dan
  emergency transfer untuk support.
- `NEEDS CONFIRMATION`: hasil Founding Studio Pilot—minimal 3 studio, 50
  session nyata total dan minimal 10 per studio, physical 4R,
  offline/reconnect, emergency transfer, kepatuhan SLA, serta minimal 2 studio
  lanjut berbayar.
- `NEEDS CONFIRMATION`: authenticated Owner visual smoke pada runtime editor
  frame `20260805053500-9b4b68a`; exact-source Playwright, public production
  smoke, dan deployed bundle check lulus, tetapi vault lokal terkunci sehingga
  credential owner tidak digunakan pada verifikasi pascadeploy ini.
- `NEEDS CONFIRMATION`: receipt delivery WhatsApp nyata dan rekonsiliasi
  evidence physical-UAT yang masih diwajibkan oleh preflight operasional lama.
- `TODO`: endpoint bantuan online pada origin Studio masih mengembalikan 404
  saat operator mencoba koneksi. Fallback lokal production sudah aktif, tetapi
  routing/proxy API tetap perlu ditutup sebelum remote AI/ticket diklaim pulih
  end-to-end.
- `TODO`: S72 auto-trial 7 hari masih `PRODUCTION HOLD`; activation memerlukan
  release Saga Platform dan authenticated SagaView UAT setelah provisioning.
### Gap SagaView ditutup

- `CONFIRMED` pada 5 Agustus 2026: gap ruang kosong ekstrem dan scan vertikal
  pada Izin Foto QHD/4K ditutup pada source `3b66f8d5`, release
  `20260805221453-3b66f8d`. Workspace maksimum 1400 piksel; mobile/laptop hingga
  1440 tetap satu kolom dan QHD/4K memakai dua kartu sesi. Matriks 390x844
  sampai 3840x2160, target 44 piksel, no-overflow, forced-colors,
  reduced-motion, Axe, satu watermark, build/audit, promosi atomik, service,
  header, journal, dan live Playwright 4/4 lulus. Rollback
  `20260805203055-2121ebb` tersedia; Founding Studio Pilot tetap residual.

- `CONFIRMED` pada 5 Agustus 2026: gap ruang kosong ekstrem pada Output di
  monitor QHD/4K ditutup pada source `1accf323`, release
  `20260805191930-1accf32`, dan diwarisi source Studio aktif `2121ebb8`.
  Workspace maksimum 1400 piksel; mobile/laptop tetap satu kolom dan layar
  besar memakai dua panel. Matriks 390x844 sampai 3840x2160, reflow efektif
  zoom tinggi, target 44 piksel, no-overflow, satu watermark, build, audit,
  atomic activation, serta live Playwright lulus. Founding Studio Pilot dan
  business readiness tetap residual terpisah.

- `CONFIRMED` pada 5 Agustus 2026: gap ruang kosong ekstrem pada Session di
  monitor Full HD/QHD ditutup pada Studio source `4bbd1665`, release
  `20260805181945-4bbd166`. Workspace bertambah dari 1180 menjadi maksimum 1600
  piksel; mobile, zoom 150/200%, Windows compact, MacBook, 4K, keyboard,
  forced-colors, reduced-motion, no-overflow, dan satu watermark lulus. Rollback
  `20260805170231-2b0331d` tersedia. Founding Studio Pilot dan business readiness
  tetap residual terpisah.

- `CONFIRMED` pada 5 Agustus 2026: gap compact all-menu dan seluruh source
  kumulatif sebelumnya (Changelog, typography, route focus, deep-route compact,
  dialog PIN reflow, dan unsaved-navigation guard) aktif pada Studio source
  `2b0331d5`, release `20260805170231-2b0331d`. Backup/restore, backend gate,
  atomic activation, live Playwright 11/11, enam endpoint, Nginx/header/journal,
  satu watermark, no-overflow, serta visual 390x844 dan 1440x900 lulus. Rollback
  `20260805133709-57c0337` tersedia. Waiver subscription tenant tidak menutup
  kebutuhan Founding Studio Pilot atau business readiness.

- `CONFIRMED` pada 5 Agustus 2026: distorsi artwork landscape, arah putar yang
  tidak bekerja, serta hilangnya feather/resize visual ditutup pada source
  `9b4b68a1`, release `20260805053500-9b4b68a`. Rasio asli, putar kanan/kiri,
  feather awal 4 px dan kontrol 0–12/±2 px, empat resize handle, drag-move,
  serta drag-resize lulus exact-source regression dan production gate 6/6.
  Authenticated owner visual UAT tetap dicatat terpisah sebagai residual.

- `CONFIRMED` pada 3 Agustus 2026: hilangnya launcher akibat bootstrap 404
  ditutup pada source `2ab72618`, release `20260803163234-2ab7261`. Diagnostik
  aman dan format laporan selalu tersedia, tanpa request support otomatis,
  overflow, kebocoran data, atau watermark overlap pada dua viewport. Gap
  remote AI/ticket tetap terbuka secara terpisah.

- `CONFIRMED` pada 3 Agustus 2026: hydration mismatch pada Session, Frames, dan
  Install App ditutup pada source `bb2abceb`, release
  `20260803153923-bb2abce`; regression 6/6 dan production smoke dua viewport
  lulus tanpa page error, overflow, atau watermark ganda.

- `CONFIRMED` pada 3 Agustus 2026: discoverability delapan route Studio Console
  mobile ditutup pada source `c7d239c9`, release `20260803101436-c7d239c`.
  Badge posisi, tombol 44 px, auto-center, live route journey, no-overflow, dan
  satu watermark lulus. Ini tidak menutup gap Founding Studio Pilot.

- `GAP-001` — `CONFIRMED` pada 31 Juli 2026: satu paid Tokopay canary
  menghasilkan satu processed callback exactly-once, subscription aktif, dan
  katalog canary otomatis diarsipkan pada Saga Platform release
  `20260727085127-5bf7977`. Evidence restricted tetap di luar repository
  publik.
- `GAP-002` — `DEPRECATED` untuk SagaBook pada 4 Agustus 2026 oleh
  DEC-029. Backend trial dua fase lama diganti lifecycle aktif 7 hari,
  grace read-only hari 8–14, dan suspend setelah hari 14 pada SagaDev Control
  Center release `20260804171621-0ab9d8e`.
- `GAP-003` — `CONFIRMED` pada 31 Juli 2026: public Home/Pricing/Help/Contact/
  Privacy/Terms/Legal dipromosikan atomik dan lulus public smoke bersama
  backend/Studio exact source.
- `GAP-004` — `CONFIRMED` pada 1 Agustus 2026: provenance release Studio sudah
  lengkap melalui source `5c8708387869cfb8f1dd21d2758fdfbcdf8240d6`, release
  `20260801132330-5c87083`, dan rollback S82
  `20260731183624-1092c99`; identifier restricted tidak disalin.

### SagaBio

- `ASSUMPTION`: F&B adalah ICP pilot pertama.
- `ASSUMPTION`: target 3–5 founding clients dan satu paid pilot adalah target
  kerja, bukan hasil.
- `NEEDS CONFIRMATION`: pricing, setup fee, hosting/domain, dan scope support.
- `NEEDS CONFIRMATION`: kriteria keluar dari done-for-you menuju self-service.
- `CONFIRMED`: exact application source
  `bdbf692a1dc031919dbf171cc1a8ca8497998810` sudah `PRODUCTION_DEPLOYED`;
  wildcard TLS/vhost, environment, backup/disposable restore, migration,
  rollback, queue/scheduler, browser acceptance, dan public smoke lulus.
- `CONFIRMED`: signup default-off menampilkan founding-pilot state dan tidak
  menyediakan fallback password lokal.
- `TODO`: konfigurasi central identity production lalu lakukan UAT akun owner
  untuk login, save, preview, publish, serta QR.
- `TODO`: konfigurasi dan terima transactional SMTP, object storage, serta
  Hostinger DNS API renewal otomatis sebelum aktivasi komersial.

### SagaMenu

- `NEEDS CONFIRMATION`: pricing, setup fee, batas katalog/media, dan support.
- `NEEDS CONFIRMATION`: target hosting, domain, PostgreSQL/Redis, SMTP, media
  scanning, monitoring, dan offsite backup.
- `TODO`: staging dengan konfigurasi production-like dan signed acceptance.

### SagaFin

- `NEEDS CONFIRMATION`: pricing final dan batas OCR/import/export.
- `NEEDS CONFIRMATION`: URL production, exact release, provider OCR, Gmail,
  Google Sheets, dan deletion/retention.
- `NEEDS CONFIRMATION`: apakah controlled public trial masih aktif pada runtime
  saat ini.

### COYABAG

- `NEEDS CONFIRMATION`: katalog, harga, stok, media, seller identity, payment,
  shipping, return/refund, tax, dan legal copy.
- `NEEDS CONFIRMATION`: SMTP, object storage, 2FA recovery, backup/restore, dan
  monitoring production.

### AOGTIVITY

- `CONFIRMED`: nama kanonik saat ini AOGTIVITY. AOGTICVITY adalah nama lama;
  folder, slug teknis, dan domain `aogticvities.fun` tetap dipertahankan untuk
  kompatibilitas dan bukan gap rebrand.

- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`: runtime
  `d97547acf92d68ad8567401858b76e27adbd0f56` memuat theme poster-aligned,
  rundown 14.30 dua sesi (`DEC-058`), dan durasi akhir (`DEC-059`) melalui
  Hostinger `20260807T161422Z`, Vercel `dpl_4oWi3Yt4x8BsGKDmMbBcA36A9JBP`,
  dan migration 027. Backup/restore, exact-source release, readiness, dan public smoke lulus.
  Residual: visual UAT founder, authenticated admin schedule refresh, serta
  operational rollback rehearsal. Durasi Lomba 9, Lomba 10, dan Awarding &
  Closing sudah confirmed; format bracket dan keputusan teknis lomba yang masih
  provisional tetap perlu dikunci panitia.

- `Pixel Matchday Arcade` UI production 3 Agustus 2026 tidak menutup blocker
  activation; perbaikannya berada pada visual hierarchy, responsive mobile
  canvas, state feedback, accessibility, motion, dan asset presentation.
  Public visual QA 47/47 sudah lulus, tetapi protected admin/operator/leader/
  player visual UAT dengan session production masih `NEEDS CONFIRMATION`.
- Identity, role authorization, database session, optional MFA, dan guarded
  Vercel-to-Hostinger path sudah `PRODUCTION_DEPLOYED`; real login terbukti.
- Admin password claim dan public registration MySQL sudah
  `PRODUCTION_ACTIVATED`; dataset awal kosong dan participant demo tidak lagi
  menjadi sumber operasional.
- Taxonomy pendaftaran final `TEEN`/CG teen 1-6, `SOUTH, WEST, CENTRAL`/CG
  youth 1-8, dan `Other Region`/`AOG Ponorogo`/`AOG Magetan` sudah
  `PRODUCTION_DEPLOYED` melalui migration 017 dan 024. Record taxonomy lama
  dipertahankan sebagai legacy read-only; keputusan koreksi/penghapusan tiap
  record tetap memerlukan verifikasi pemilik data dan tidak menjadi blocker
  submission baru.
- Jalur VIP `/register/guest` dan access policy migration 021 sudah
  `PRODUCTION_DEPLOYED`. `NEEDS CONFIRMATION`: satu UAT nyata dari submit VIP,
  pending WhatsApp, approval tanpa tim, perubahan TTL, open/close unused link,
  retensi sesi aktif, generator tim, valid-link, session player, sampai update
  tim/roster lintas perangkat. Nomor duplicate tetap harus ditolak; fixture
  tidak boleh menjadi bukti provider.
- Fonnte runtime, migration 009–010, dan channel delivery UAT sudah
  `PRODUCTION_DEPLOYED`. Public-origin redirect, typed failure state, dan
  player workspace sync migration 016 juga sudah `PRODUCTION_DEPLOYED`.
  Hotfix `111e0115` menutup form POST `Origin: null` dan CTA modal mobile;
  provider status webhook serta valid-link two-device
  approval/session/reuse/revoke UAT masih `NEEDS CONFIRMATION`.
- `NEEDS CONFIRMATION`: model bisnis produk (event internal, jasa per event, atau
  SaaS).
- `NEEDS CONFIRMATION`: authenticated four-role serta
  roster/status-lomba/check-in/result/announcement/readiness multi-device
  operations UAT; stale-write dan cached-snapshot recovery; recovery/session
  flow dan physical event
  rehearsal. Team generator/direct assignment/publish/lock persistence sudah
  `CONFIRMED` pada migration 013. Rundown, operator assignment, result
  verification, recovery status, dan live display persistence sudah
  `CONFIRMED` pada migration 014. Announcement persistence dan readiness
  aggregate sudah `CONFIRMED` pada migration 015, tetapi human UAT belum
  sign-off. Participant feed, revision/ETag, polling, dan reconnect recovery
  sudah `CONFIRMED` pada migration 016, tetapi assignment update UAT dua
  perangkat belum sign-off. Live standing server-authoritative, policy 15/10/5,
  refresh 3/5 detik, idempotent retry, stale-write recovery, dan correction
  audit sudah `CONFIRMED` pada release `b7fabaaf`; authenticated browser UAT
  dua perangkat tetap `NEEDS CONFIRMATION`.
- `CONFIRMED`: technical finalization release `15cf5358` telah meluluskan
  production-domain/security/mobile/WCAG, offline/reconnect, 20 migration,
  22 disposable MySQL integration tests, backup/restore, serta PII-free
  readiness audit. `NEEDS CONFIRMATION`: admin menyelesaikan final assignment
  peserta/PIC/roster dan antrean operasional tanpa dummy sebelum rehearsal.
- `CONFIRMED`: nama final Tim 7 adalah Team Kindness (Kebaikan) dan Tim 8
  adalah Team Patience (Kesabaran). `NEEDS CONFIRMATION`: durasi lomba serta
  keputusan master recap lain yang masih provisional/open.
- `CONFIRMED`: `cmp-2` dan `cmp-8` telah menjadi Ambil Bola Pakai Sarung dan
  Paralon Bola, seluruh tim, scoring jumlah bola, dan migration 022 aktif.
  `NEEDS CONFIRMATION`: authenticated two-device UAT untuk draft/publish/
  correct, tie-break, standing sync, serta rehearsal keselamatan fisik.

### Saga Platform

- `NEEDS CONFIRMATION`: apakah platform dijual eksternal atau hanya internal
  control plane.
- `NEEDS CONFIRMATION`: pemisahan repository/deployment control plane,
  operator model, dan SLA internal.

### SagaOPS

- `NEEDS CONFIRMATION`: ICP pilot, pricing, hardware, printer, QRIS, dan support.
- `NEEDS CONFIRMATION`: backend production, tenant isolation, RLS, offline
  conflict handling, dan outlet pilot.

### Saga AI

- `NEEDS CONFIRMATION`: produk internal, add-on, atau produk berbayar terpisah.
- `NEEDS CONFIRMATION`: model/provider, data boundary, retention, evaluation,
  human escalation, dan approved tools.
- `TODO`: buat evaluation set grounded dari knowledge publik tanpa PII.

## Gap lintas produk

### SagaDevs

- `NEEDS CONFIRMATION`: visual UAT dan tanggal promotion corrected source-preserving Preview ke `sagadevs.com`.
- `NEEDS CONFIRMATION`: portfolio client yang boleh dipublikasikan dan evidence tiap claim.
- `NEEDS CONFIRMATION`: analytics production, data retention, dan KPI conversion.
- `NEEDS CONFIRMATION`: scope, auth, permission, dan data boundary Super Admin terpisah.

- `NEEDS CONFIRMATION`: arsitektur akun bersama versus akun per produk. Keputusan
  saat ini hanya menyatakan identity dapat sama, sedangkan role, session,
  entitlement, subscription, dan ledger tetap product-scoped.
- `NEEDS CONFIRMATION`: bundle SagaBook–SagaView ditunda; syarat kapan dibuka belum
  ditetapkan.
- `NEEDS CONFIRMATION`: daftar kompetitor dan evidence perbandingan per produk.
- `NEEDS CONFIRMATION`: KPI baseline dan target kuantitatif seluruh produk.
- `NEEDS CONFIRMATION`: brand architecture—endorsed brand, sub-brand, atau
  product family—belum diputuskan formal.
- `TODO`: inventaris hak cipta, merek, domain, dan asset license.
- `TODO`: owner matrix untuk security incident, privacy request, billing
  dispute, dan production rollback.

## Konflik yang dinormalisasi

| Konflik lama | Normalisasi |
|---|---|
| Status gabungan seperti `PARTIAL_PRODUCTION_DEPLOYED` | Gunakan tiga sumbu: delivery, activation, dan business readiness. |
| `CONTROLLED_PUBLIC_TRIAL` dipakai sebagai status teknis | Simpan sebagai fase bisnis; status teknis tetap memakai legend. |
| Target domain/fitur bercampur dengan klaim live | Target selalu diberi label `PLANNED` atau `UNVERIFIED` sampai ada runtime evidence. |
| Test/dummy/simulation dianggap mendekati provider | Provider tetap `UNVERIFIED` sampai transaksi/delivery nyata terverifikasi. |
| `KNOWLEDGE_INDEX.md` dan `INDEX.md` | `INDEX.md` menjadi kanonik; file lama dipertahankan sebagai compatibility pointer. |
