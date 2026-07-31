# Portfolio Changelog

## Tujuan

Mencatat perubahan material lintas produk yang penting untuk positioning,
workflow, pricing, release, activation, atau blocker.

## Konteks

Detail tetap berada pada changelog produk; entri docs-only berada di root
[CHANGELOG](../CHANGELOG.md).

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
