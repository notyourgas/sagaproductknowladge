# Status Legend

Gunakan istilah berikut secara konsisten.

## Status implementasi

- `PLANNED`: sudah diputuskan atau masuk roadmap, belum ada implementasi.
- `PROTOTYPE`: screen/alur tersedia untuk eksplorasi, belum memakai kontrak
  production yang lengkap.
- `LOCAL_VALIDATED`: implementasi dan test lokal lulus.
- `STAGING_READY`: source immutable dan seluruh gate staging tersedia.
- `STAGING_DEPLOYED`: kandidat aktif di staging dan sudah smoke-tested.
- `IMPLEMENTED_NOT_DEPLOYED`: implementasi selesai, tetapi belum boleh masuk
  production karena ada gate yang gagal atau belum tersedia.
- `PRODUCTION_DEPLOYED`: release sudah aktif pada target production.
- `PRODUCTION_ACTIVATED`: fitur production memakai provider/data/configuration
  nyata dan core journey sudah dibuktikan.
- `BUSINESS_READY`: produk bisa didemokan, dicoba, dibayar, dipakai harian,
  dipulihkan, didukung, dan dihentikan tanpa improvisasi teknis.
- `BLOCKED`: langkah berikutnya bergantung pada keputusan, credential, provider,
  pembelian, approval eksternal, atau UAT fisik.
- `UNVERIFIED`: ada klaim atau artefak, tetapi evidence aktual belum ditemukan.
- `RETIRED`: bukan lagi source of truth atau tidak dikembangkan.

## Status bukti

- `CONFIRMED`: dibuktikan dari source/release/runtime aktual.
- `OWNER_DECISION`: keputusan bisnis yang sudah disetujui Andreas.
- `RECOMMENDATION`: belum menjadi keputusan produk.
- `HISTORICAL`: benar pada masa lalu, tetapi tidak boleh dianggap status live.
- `SUPERSEDED`: sudah diganti keputusan atau kontrak baru.

## Aturan klaim

- Test lokal tidak sama dengan staging.
- Staging tidak sama dengan production.
- HTTP 200 tidak membuktikan provider pembayaran atau notifikasi bekerja.
- Dummy, fixture, localStorage, simulation, dan log lokal bukan bukti production.
- `PRODUCTION_DEPLOYED` belum otomatis `PRODUCTION_ACTIVATED`.
- Hanya gunakan `BUSINESS_READY` bila alur komersial, support, recovery, dan
  offboarding juga siap.

