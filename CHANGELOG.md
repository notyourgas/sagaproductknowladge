# Saga Product Knowledge Changelog

## Tujuan

Mencatat perubahan struktur, tata kelola, dan kontrak dokumentasi repository.
Perubahan fitur/release produk tetap dicatat pada changelog masing-masing
produk dan [Portfolio Changelog](changelog/PORTFOLIO_CHANGELOG.md).

## Konteks

Root changelog tidak menggantikan changelog produk atau portfolio.

## 2026-07-31

### SagaBook privacy governance source implementation

- Ringkasan: menyinkronkan workflow consent berversi, customer privacy request,
  owner triage, incident register, offboarding timeline, dan retention preview.
- Alasan: keputusan P01-P18 perlu ditutup menjadi implementasi yang auditable
  tanpa mengaktifkan penghapusan atau membuat klaim publik prematur.
- Produk/area terdampak: SagaBook privacy, customer booking link, owner admin,
  data governance, gap register, portfolio/master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`; public status
  `NOT ACTIVE - NOT PUBLISHED`.
- Source: SagaBook commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Production berubah: tidak.
- Blocker tersisa: identitas/kontak resmi, legal review, destructive-retention
  acceptance, release, dan public smoke.

### SagaBook public policy owner approval

- Ringkasan: menyinkronkan keputusan founder P01-P18 untuk privacy, retention,
  deletion, consent, incident, subprocessor, dan offboarding SagaBook.
- Alasan: implementation dan legal review memerlukan kontrak owner-approved
  yang dapat ditelusuri tanpa menyatakan policy sudah aktif.
- Produk/area terdampak: SagaBook, privacy, sales claim, legal, decision log,
  gap register, portfolio/master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED` untuk keputusan; delivery `PLANNED`; public status
  `NOT ACTIVE - NOT PUBLISHED`.
- Source: SagaBook docs commit
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`.
- Production berubah: tidak.
- Blocker tersisa: identitas/kontak, subprocessor, legal sign-off,
  implementation/acceptance, release, dan public smoke.

### Founder commercial contract dan pilot acceptance

- Ringkasan: mengunci paket/limit/trial SagaBook dan SagaView, policy booking
  default SagaBook, support/retention/offboarding, serta Founding Studio Pilot
  dengan exit criteria 100% business-ready.
- Alasan: keputusan founder sudah diterima dan harus menjadi kontrak kanonik
  untuk source, sales, onboarding, legal, pilot, dan AI agent.
- Produk/area terdampak: SagaBook, SagaView, business strategy, sales, payment,
  privacy, decision log, gap register, dan master knowledge.
- Klasifikasi: `CONFIRMED` untuk keputusan; business readiness tetap
  `NEEDS CONFIRMATION` sampai evidence cohort lulus.
- Source SagaView: backend `528e68d4aea27d847250075acd02d7753b07e3b6`
  (`20260731101529-528e68d`) dan Studio
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`
  (`20260731101529-f6fa6f3`) aktif di production.
- Source SagaBook: `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`
  (`20260731172605-39fb2d3`) aktif di production.
- Production berubah: ya untuk SagaBook dan SagaView.
- Blocker tersisa: Founding Studio Pilot dan evidence nyata yang diwajibkan.

### SagaView integrated production activation sync

- Ringkasan: menyinkronkan backend, Studio, trial/subscription, Owner Console,
  public self-service, security header, dan release SagaView yang aktif.
- Alasan: candidate dipromosikan atomik dan memiliki exact source, backup/
  restore, migration, regression, rollback, monitoring, serta public smoke.
- Produk/area terdampak: SagaView delivery, activation, commercial contract,
  security, operations, pitch, portfolio/master knowledge, gap, dan sync.
- Klasifikasi: `CONFIRMED`.
- Sumber: backend `70155bb7db901beebb9fdeb65d5869a18ee8f874`
  (`20260731082637-70155bb`) dan Studio
  `28adcee9706ec8fde509d410d60cbea173c74a5b`
  (`20260731082637-28adcee`).
- Production produk berubah: ya, SagaView.
- Blocker tersisa: business readiness mass-scale tetap memerlukan controlled
  cohort, observasi support, dan finalisasi policy komersial/legal owner.

### SagaBook Platform Support Operations production sync

- Ringkasan: menyinkronkan antrean support operator, SLA, ownership, concurrency
  protection, dan receipt audit tersanitasi yang aktif di production.
- Alasan: workflow operator multiuser kini material bagi support harian dan
  memiliki provenance release, migration, security, rollback, serta public
  smoke.
- Produk/area terdampak: SagaBook support operations, Saga Platform operator
  workflow, security, audit, dan status release.
- File terdampak: product contract, dossier, product/portfolio changelog,
  master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: source
  `285ab943b93466deda0f6c07466c0fbe8da16e4c`, release
  `20260731075424-285ab94`, dan runtime gate public-safe.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: ya, Saga Platform dan SagaBook; SagaView tidak
  berubah.
- Blocker tersisa: business readiness tetap memerlukan observasi cohort dan
  policy privacy/retention/deletion/offboarding yang diterima owner.

### SagaBook Support & Recovery Center production sync

- Ringkasan: menyinkronkan pusat bantuan dan pemulihan owner/admin yang aktif
  di production.
- Alasan: workflow support kini material bagi penggunaan harian dan memiliki
  provenance release, migration, security, rollback, serta public smoke.
- Produk/area terdampak: SagaBook support, recovery, user journey, technical
  boundary, dan status release.
- File terdampak: product contract, dossier, product/portfolio changelog,
  master knowledge, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: source
  `7cc63d2bfde011321f7c06ff45e393d189b1d4a4`, release
  `20260731053435-7cc63d2`, dan runtime gate public-safe.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: ya, Saga Platform dan SagaBook; SagaView tidak
  berubah.
- Blocker tersisa: business readiness tetap memerlukan observasi cohort studio
  nyata.

### SagaView paid provider canary sync

- Ringkasan: mengubah status canary public-safe dari pending menjadi paid dan
  mencatat processed callback exactly-once.
- Alasan: transaksi provider nyata, aktivasi subscription, dan auto-archive
  katalog canary sudah terverifikasi.
- Produk/area terdampak: SagaView commercial activation dan release gate.
- File terdampak: current product contract, dossier, product/portfolio
  changelog, master knowledge, gap register, dan sync status.
- Klasifikasi: `CONFIRMED`.
- Sumber: runtime production Saga Platform
  `20260727085127-5bf7977` dan evidence restricted; tidak ada identifier
  transaksi atau payload callback di repository publik.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: subscription canary aktif melalui callback;
  tidak ada deploy, migration, atau setting change.
- Blocker tersisa: exact backend/public candidate belum dipromosikan dan belum
  lulus public smoke sebagai satu release.

### SagaView provider canary status sync

- Status historis: `DEPRECATED` oleh sinkronisasi paid provider canary di atas.
- Ringkasan: menyinkronkan fakta public-safe bahwa satu canary pembayaran
  terotorisasi sudah dibuat, tetapi masih pending/unpaid.
- Alasan: status blocker provider berubah setelah audit repository selesai.
- Produk/area terdampak: SagaView commercial activation dan release gate.
- File terdampak: current product contract, dossier, product/portfolio
  changelog, master knowledge, gap register, dan sync status.
- Klasifikasi: `CONFIRMED` untuk status intent; provider activation tetap
  `NEEDS CONFIRMATION`.
- Sumber: production preflight dan create-result terverifikasi, tanpa
  identifier transaksi publik.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: tidak ada deploy, migration, atau setting change.

### Single source of truth contract

- Ringkasan: menetapkan repository sebagai single source of truth permanen dan
  menambahkan decision log, sync status, klasifikasi lima status, impact
  analysis, serta closed-loop commit/push.
- Alasan: mencegah informasi Saga tersebar, duplikat, bertentangan, atau
  digunakan AI tanpa provenance yang jelas.
- Produk/area terdampak: seluruh portofolio, governance, AI retrieval, product
  dossier, changelog, dan update workflow.
- File terdampak: `DECISIONS.md`, `SYNC_STATUS.md`, `README.md`, `INDEX.md`,
  `GAPS.md`, `AGENTS.md`, governance/protocol/status/AI docs, templates,
  validator, dan dokumen yang masih memakai klasifikasi lama.
- Klasifikasi: `CONFIRMED`.
- Sumber/pemberi keputusan: Andreas / founder, 31 Juli 2026.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: tidak; perubahan ini hanya pada repository
  knowledge.

### Added

- Root `INDEX.md`, `GAPS.md`, dan `CHANGELOG.md`.
- Root `DECISIONS.md` dan `SYNC_STATUS.md`.
- Dossier konsisten untuk sepuluh produk.
- Dokumen lintas produk untuk brand, marketing, business, design, technical,
  privacy, AI, deployment, dan coding.
- Tata kelola klasifikasi fakta dan penggunaan AI.
- Template product dossier.

### Changed

- Menetapkan `INDEX.md` sebagai daftar isi kanonik.
- Menormalisasi status menjadi delivery, activation, dan business readiness.
- Menormalisasi klasifikasi menjadi `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`,
  `NEEDS CONFIRMATION`, dan `DEPRECATED`.
- Memperluas validasi repository agar memeriksa struktur wajib, heading, link,
  placeholder, dan pola secret.
- Menyinkronkan SagaView Studio v0.20.2 yang terverifikasi selama audit.

### Preserved

- Informasi produk, keputusan pricing/trial, release provenance, batas klaim,
  dan changelog historis tetap dipertahankan.
- `KNOWLEDGE_INDEX.md` tetap ada sebagai compatibility pointer.
