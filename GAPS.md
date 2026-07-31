# Gaps dan Keputusan Founder

## Tujuan

Dokumen ini mencatat informasi yang belum tersedia, belum terverifikasi, saling
bertentangan, atau membutuhkan keputusan Andreas. Entri di sini tidak boleh
diubah menjadi klaim publik sebelum ditutup dengan bukti atau keputusan owner.

## Konteks

Daftar ini berlaku pada evidence cut-off 31 Juli 2026 dan harus diperbarui
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
- `NEEDS CONFIRMATION`: model bisnis produk (event internal, jasa per event, atau
  SaaS).
- `NEEDS CONFIRMATION`: auth/IdP production, secure Vercel-to-Hostinger BFF,
  frontend API activation, notification provider, target custom domain/TLS,
  dan physical multi-device UAT.
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
