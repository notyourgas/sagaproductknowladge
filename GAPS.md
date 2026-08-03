# Gaps dan Keputusan Founder

## Tujuan

Dokumen ini mencatat informasi yang belum tersedia, belum terverifikasi, saling
bertentangan, atau membutuhkan keputusan Andreas. Entri di sini tidak boleh
diubah menjadi klaim publik sebelum ditutup dengan bukti atau keputusan owner.

## Konteks

Daftar ini berlaku pada evidence cut-off 3 Agustus 2026 dan harus diperbarui
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
  tetap tidak berubah sampai release, worker/provisioning, dan authenticated
  product UAT disetujui.
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

### SagaView

- `CONFIRMED`: limit Growth/Pro, trial guardrail, cloud frame storage,
  local-photo boundary, retention, offboarding, dan support SLA sudah
  diputuskan melalui `DEC-008` dan `DEC-009`.
- `NEEDS CONFIRMATION`: kebijakan lisensi printer/device pengganti dan
  emergency transfer untuk support.
- `NEEDS CONFIRMATION`: hasil Founding Studio Pilot—minimal 3 studio, 50
  session nyata total dan minimal 10 per studio, physical 4R,
  offline/reconnect, emergency transfer, kepatuhan SLA, serta minimal 2 studio
  lanjut berbayar.
- `NEEDS CONFIRMATION`: authenticated Owner visual smoke pada runtime terbaru;
  exact-source authenticated browser regression dan public production smoke
  sudah lulus, tetapi credential tidak digunakan dalam audit publik.
- `NEEDS CONFIRMATION`: receipt delivery WhatsApp nyata dan rekonsiliasi
  evidence physical-UAT yang masih diwajibkan oleh preflight operasional lama.
- `TODO`: S72 auto-trial 7 hari masih `PRODUCTION HOLD`; activation memerlukan
  release Saga Platform dan authenticated SagaView UAT setelah provisioning.

### Gap SagaView ditutup

- `CONFIRMED` pada 3 Agustus 2026: discoverability delapan route Studio Console
  mobile ditutup pada source `c7d239c9`, release `20260803101436-c7d239c`.
  Badge posisi, tombol 44 px, auto-center, live route journey, no-overflow, dan
  satu watermark lulus. Ini tidak menutup gap Founding Studio Pilot.

- `GAP-001` — `CONFIRMED` pada 31 Juli 2026: satu paid Tokopay canary
  menghasilkan satu processed callback exactly-once, subscription aktif, dan
  katalog canary otomatis diarsipkan pada Saga Platform release
  `20260727085127-5bf7977`. Evidence restricted tetap di luar repository
  publik.
- `GAP-002` — `CONFIRMED` pada 31 Juli 2026: backend trial dua fase,
  subscription, dan Owner Console aktif pada release
  `20260731082637-70155bb`.
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

### AOGTICVITY

- Festival UI/UX production 1 Agustus 2026 tidak menutup blocker activation;
  perbaikannya berada pada visual hierarchy, responsive mobile canvas, motion,
  feedback, dan asset presentation.
- Identity, role authorization, database session, optional MFA, dan guarded
  Vercel-to-Hostinger path sudah `PRODUCTION_DEPLOYED`; real login terbukti.
- Admin password claim dan public registration MySQL sudah
  `PRODUCTION_ACTIVATED`; dataset awal kosong dan participant demo tidak lagi
  menjadi sumber operasional.
- Fonnte runtime, migration 009–010, dan channel delivery UAT sudah
  `PRODUCTION_DEPLOYED`. Public-origin redirect, typed failure state, dan
  player workspace sync migration 016 juga sudah `PRODUCTION_DEPLOYED`;
  provider status webhook serta valid-link two-device
  approval/session/reuse/revoke UAT masih `NEEDS CONFIRMATION`.
- `NEEDS CONFIRMATION`: model bisnis produk (event internal, jasa per event, atau
  SaaS).
- `NEEDS CONFIRMATION`: authenticated four-role serta
  roster/status-lomba/check-in/result/announcement/readiness multi-device
  operations UAT; stale-write dan cached-snapshot recovery; recovery/session
  flow, target custom domain, dan physical event
  rehearsal. Team generator/direct assignment/publish/lock persistence sudah
  `CONFIRMED` pada migration 013. Rundown, operator assignment, result
  verification, recovery status, dan live display persistence sudah
  `CONFIRMED` pada migration 014. Announcement persistence dan readiness
  aggregate sudah `CONFIRMED` pada migration 015, tetapi human UAT belum
  sign-off. Participant feed, revision/ETag, polling, dan reconnect recovery
  sudah `CONFIRMED` pada migration 016, tetapi assignment update UAT dua
  perangkat belum sign-off.
- `NEEDS CONFIRMATION`: nama final Tim 7/Tim 8, durasi lomba, serta keputusan
  master recap yang masih provisional/open.

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
