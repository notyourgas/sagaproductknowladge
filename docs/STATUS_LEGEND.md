# Status Legend

## Tujuan

Menjaga klaim delivery, activation, dan business readiness tetap terpisah.

## Konteks

Legend berlaku untuk semua product, changelog, report, dan jawaban AI yang
menggunakan repository ini.

## Status delivery

- `PLANNED`: sudah diputuskan atau masuk roadmap, belum ada implementasi.
- `PROTOTYPE`: screen/alur tersedia untuk eksplorasi, belum memakai kontrak
  production yang lengkap.
- `LOCAL_VALIDATED`: implementasi dan test lokal lulus.
- `STAGING_READY`: source immutable dan seluruh gate staging tersedia.
- `STAGING_DEPLOYED`: kandidat aktif di staging dan sudah smoke-tested.
- `IMPLEMENTED_NOT_DEPLOYED`: implementasi selesai, tetapi belum boleh masuk
  production karena ada gate yang gagal atau belum tersedia.
- `PRODUCTION_DEPLOYED`: release sudah aktif pada target production.
- `BLOCKED`: langkah berikutnya bergantung pada keputusan, credential, provider,
  pembelian, approval eksternal, atau UAT fisik.
- `UNVERIFIED`: ada klaim atau artefak, tetapi evidence aktual belum ditemukan.
- `RETIRED`: bukan lagi source of truth atau tidak dikembangkan.

## Status activation

- `NOT_PRODUCTION_ACTIVATED`: release/provider/data/config nyata belum aktif.
- `PRODUCTION_ACTIVATED`: fitur memakai provider/data/configuration nyata dan
  core journey production sudah dibuktikan.
- `BLOCKED`: activation tertahan prerequisite eksternal atau owner.
- `UNVERIFIED`: activation pernah diklaim tetapi bukti saat ini belum cukup.

## Status business readiness

- `NOT_BUSINESS_READY`: produk belum dapat dijual/dipakai harian end-to-end.
- `BUSINESS_READY`: produk dapat didemokan, dicoba, dibayar, dipakai harian,
  dipulihkan, didukung, dan dihentikan tanpa improvisasi teknis.
- `BLOCKED`: ada gap komersial, operasional, provider, legal, atau UAT.
- `NEEDS CONFIRMATION`: evidence bisnis belum cukup untuk keputusan.

## Status bukti

- `CONFIRMED`: keputusan eksplisit founder atau fakta yang dibuktikan dengan
  provenance yang sesuai.
- `ASSUMPTION`: interpretasi atau dugaan kerja sementara.
- `PROPOSAL`: rekomendasi yang belum diterima sebagai keputusan.
- `NEEDS CONFIRMATION`: informasi belum cukup jelas atau belum memiliki
  keputusan/evidence.
- `DEPRECATED`: informasi lama yang tidak lagi berlaku dan dipertahankan untuk
  riwayat.

`TODO` adalah penanda pekerjaan yang belum selesai, bukan status bukti.

## Aturan klaim

- Test lokal tidak sama dengan staging.
- Staging tidak sama dengan production.
- HTTP 200 tidak membuktikan provider pembayaran atau notifikasi bekerja.
- Dummy, fixture, localStorage, simulation, dan log lokal bukan bukti production.
- `PRODUCTION_DEPLOYED` belum otomatis `PRODUCTION_ACTIVATED`.
- Hanya gunakan `BUSINESS_READY` bila alur komersial, support, recovery, dan
  offboarding juga siap.
- Jangan membuat status gabungan baru seperti
  `PRODUCTION_DEPLOYED_NOT_ACTIVATED`; tulis sumbunya secara terpisah.
