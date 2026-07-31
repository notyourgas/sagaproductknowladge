# Portfolio Changelog

## Tujuan

Mencatat perubahan material lintas produk yang penting untuk positioning,
workflow, pricing, release, activation, atau blocker.

## Konteks

Detail tetap berada pada changelog produk; entri docs-only berada di root
[CHANGELOG](../CHANGELOG.md).

## 2026-07-31 - SagaBook privacy governance implemented in source

- Consent berversi, customer privacy request, owner triage, incident register,
  offboarding timeline, dan retention preview selesai di source commit
  `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Delivery: `IMPLEMENTED_NOT_DEPLOYED`; production dan public policy tidak
  berubah.
- Retention apply tetap hard-disabled. Identitas/kontak resmi, legal review,
  destructive-retention acceptance, immutable release, dan public smoke masih
  menjadi blocker activation.

## 2026-07-31 - SagaBook owner-approved public policy contract

- Andreas menyetujui P01-P18 untuk implementasi dan review legal: data role,
  consent, retention per kategori, deletion, offboarding, incident handling,
  dan subprocessor disclosure.
- Klasifikasi keputusan `CONFIRMED`; delivery kontrak target `PLANNED`; public
  status `NOT ACTIVE - NOT PUBLISHED`.
- Source docs
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`; production tidak berubah.
- Klaim unrestricted public SagaBook tetap diblokir sampai identitas/kontak,
  legal review, implementasi, acceptance, immutable release, dan public smoke
  selesai.

## 2026-07-31 — SagaBook founder commercial contract production

- Paket satuan kini exact: Basic Rp500.000/bulan (1 cabang/3 staff), Growth
  Rp950.000/bulan (3/10), Pro Rp1.500.000/bulan (maksimal 10/30), dan Custom
  di atas Pro; booking dipasarkan unlimited dengan fair-use.
- Trial guardrail, public pricing/legal, support/retention/offboarding, satu
  reschedule gratis minimal 24 jam, dan refund 100/50/0 operator-approved aktif
  pada runtime.
- Source `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`, release
  `20260731172605-39fb2d3` pada SagaBook dan Saga Platform.
- Test 946/946, browser desktop/mobile, backup/restore tiga database, migration
  rehearsal, readiness 10/10, public smoke, service, queue, dan error journal
  lulus; rollback `20260731075424-285ab94` dipertahankan.
- Business readiness tetap menunggu legal identity/sign-off dan Founding Studio
  Pilot.

## 2026-07-31 — SagaView founder commercial contract production

- Paket satuan kini exact: Growth Rp200.000/bulan (1 device, 10 frame, 3
  preset, offline 24 jam, 2 GB) dan Pro Rp500.000/bulan (4 device, 50 frame,
  10 preset, offline 168 jam, 10 GB).
- Fair-use session/foto, local-photo boundary, trial guardrail, support,
  retention, dan offboarding konsisten pada backend serta public Studio.
- Backend source `528e68d4aea27d847250075acd02d7753b07e3b6`, release
  `20260731101529-528e68d`; Studio source
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`, release
  `20260731101529-f6fa6f3`.
- Backup/restore, tiga migration additive, test, audit, deploy gate, security
  header, service health, dan public smoke lulus; payment existing tetap
  exactly-once tanpa transaksi baru.
- Business readiness tetap menunggu Founding Studio Pilot dan evidence nyata
  yang belum lengkap.

## 2026-07-31 — SagaView integrated production activation

- Backend, additive migration, Owner Console, trial 14 hari dua fase,
  subscription Growth/Pro, Studio, dan public self-service SagaView aktif
  atomik di production.
- Backend source `70155bb7db901beebb9fdeb65d5869a18ee8f874`, release
  `20260731082637-70155bb`; Studio source
  `28adcee9706ec8fde509d410d60cbea173c74a5b`, release
  `20260731082637-28adcee`.
- Home/Pricing/Help/Contact/Privacy/Terms/Legal, login, Studio, customer, API
  health, dan pricing API lulus post-deploy smoke; header HTTPS konsisten.
- Provider canary existing tetap satu dan exactly-once; release tidak membuat
  intent, QRIS, atau transaksi kedua.
- Delivery dan activation SagaView kini production; business readiness
  mass-scale tetap menunggu controlled cohort dan observasi support.

## 2026-07-31 - SagaBook Platform Support Operations production

- Operator platform kini memiliki antrean support berdasarkan ownership,
  prioritas, dan SLA waktu kerja Asia/Jakarta.
- Claim, release, resolve, reopen, private note, public reply, dan perubahan
  prioritas bersifat retry-safe serta auditable.
- Konflik antaroperator tidak melakukan silent overwrite; payload dan receipt
  audit tidak membuka PII atau identifier sensitif.
- Source `285ab943b93466deda0f6c07466c0fbe8da16e4c` aktif pada release
  `20260731075424-285ab94`; readiness/database audit 100/100 dan public smoke
  lulus.
- SagaView tidak berubah dan rollback immutable `20260731053435-7cc63d2`
  tetap tersedia.

## 2026-07-31 - SagaBook Support & Recovery Center production

- Owner/admin kini memiliki satu pusat bantuan untuk pertanyaan produk, human
  handoff, balasan tiket, account recovery, setup, changelog, dan screenshot
  privat.
- Retry pesan idempotent dan akses tetap product-, tenant-, account-, serta
  conversation-scoped dengan permission fail-closed.
- Source `7cc63d2bfde011321f7c06ff45e393d189b1d4a4` aktif pada release
  `20260731053435-7cc63d2`; readiness/database audit dan public smoke lulus.
- SagaView tidak berubah dan rollback immutable Saga Platform/SagaBook tetap
  tersedia.

## 2026-07-31 — SagaView provider canary paid

- Satu canary Tokopay production bernilai rendah berhasil dibayar.
- Satu intent menghasilkan satu processed callback exactly-once; subscription
  aktif dan katalog canary otomatis diarsipkan.
- Gate provider nyata tertutup pada Saga Platform release
  `20260727085127-5bf7977`.
- Tidak ada deploy atau migration; backend/public candidate SagaView tetap
  belum production.
- Data transaksi restricted tetap berada di luar knowledge publik.

## 2026-07-31 — SagaView provider canary pending

- Status historis: `DEPRECATED` oleh entri provider canary paid di atas.
- Satu canary pembayaran production dibuat secara terotorisasi.
- Status masih pending/unpaid; callback exactly-once dan activation provider
  belum terverifikasi.
- Tidak ada deploy, migration, atau perubahan setting production.
- Data transaksi restricted tidak dimasukkan ke knowledge publik.

## 2026-07-31 — SagaView Session Completion & Privacy Handoff production

- Customer tidak lagi mereset sesi sendiri; operator memverifikasi output dan
  handoff/antre cetak.
- Privacy mode memasking nama output, cleanup recovery fail-closed, dan
  source/output file tetap utuh.
- Source `2f65a9ac0322c33a429dcc888bdacd59836aab0b` aktif pada release
  `20260731113223-2f65a9a`; route completion/changelog lulus public smoke.
- Backend, payment, migration, dan public self-service tidak berubah.

## 2026-07-31 - SagaBook Activation Center production

- Tenant onboarding kini memiliki progress dan blocker server-authoritative.
- Owner dapat resume setup, preview/publish storefront, dan memantau handoff
  menuju booking publik pertama.
- Status payment/notification tetap jujur dan akses endpoint fail-closed
  berdasarkan tenant serta permission.
- Source `a26d378de994da3dc69d9088eff1c8e04110e7af` aktif pada release
  `20260730214513-a26d378`; production gate dan public smoke lulus.

## 2026-07-31 — SagaView public self-service candidate

- Home, Pricing, Help/Contact, Privacy, dan Terms terbaru sudah
  `IMPLEMENTED_NOT_DEPLOYED`.
- Source menampilkan hanya SagaView Growth Rp200.000 dan Pro Rp500.000 per
  bulan, trial 14 hari dua fase tanpa auto-charge, CTA paket, SLA support, dan
  privacy/retention.
- Full frontend regression, accessibility, security audit, dan responsive
  visual lulus.
- Production tidak berubah karena signup live masih memakai kontrak trial lama;
  promosi tetap fail-closed sampai backend dan public surface konsisten.

## 2026-07-31 - SagaMenu public media recovery

- Bio Menu dan Store Display kini local validated untuk fallback gambar serta
  video failure, retry, dan recovery.
- Perubahan belum dideploy; status produk tetap `LOCAL_VALIDATED`.
- Gate eksternal Laravel staging tetap menjadi blocker production.

## 2026-07-31 — Initial central knowledge baseline

- Repository Saga Product Knowledge dibentuk sebagai knowledge publik kanonik.
- Tujuh project aktif dimasukkan: SagaBook, SagaView, SagaBio, SagaMenu,
  SagaFin, COYABAG, dan AOGTICVITY.
- Saga Platform, SagaOPS, dan Saga AI dimasukkan sebagai platform/produk
  pendukung.
- Status evidence dan batas klaim production dikunci.
- Kontrak update lintas-project, validator, dan panduan import ChatGPT dibuat.

## 2026-07-31 — SagaBook Customer Booking Center

- Customer Booking Center aktif di production.
- Customer dapat melihat status dan mengajukan perubahan melalui secure link.
- Request idempotent dan masuk Task Center tanpa memutasi provider langsung.

## 2026-07-31 — SagaView fixed 4R output

- SagaView Studio fixed 4R aktif di production.
- Output portrait `1200x1800`, landscape `1800x1200`, 300 DPI.
- Backend Owner Console/trial/payment candidate tetap belum dideploy karena
  provider canary belum terverifikasi.

## 2026-07-31 — SagaView backend release preparation

- Backend runtime candidate tetap `IMPLEMENTED_NOT_DEPLOYED`.
- Backup/restore, dua migration, candidate gate, rollback compatibility,
  build, security audit, dan full regression telah lulus.
- Release guard diperbarui agar tidak memakai asset Owner Console lama.
- Production backend tidak berubah.
- Satu gate tersisa: paid Tokopay canary dan processed callback nyata sebelum
  promosi production.
