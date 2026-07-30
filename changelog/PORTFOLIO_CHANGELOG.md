# Portfolio Changelog

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
