# SagaBook UI/UX deployment checkpoint — 15 Oktober 2026

## Tujuan

Mencatat exact source/artifact, hasil gate aktual, runtime dan langkah unblock
untuk kandidat UI/UX. Keputusan **NO_GO**, delivery **PACKAGED_NOT_DEPLOYED**,
activation kandidat **NOT_PRODUCTION_ACTIVATED**, human UAT **BELUM DILAKUKAN**,
`BUSINESS_READY=false`. Tidak ada perubahan source/state production pada task ini.

## Konteks

`CONFIRMED`, cut-off 15 Oktober 2026 sekitar 11:30 WIB. Repo
`notyourgas/sagabook`, branch `codex/sagabook-uiux-finalization-20261015`,
candidate `ec7041032b83ef93c333fcafa5fcf80f242c1847`, tree
`5647a5e49f223df3b924e568e16d7fafbe73834a`. Implementation tervalidasi lokal
`0d6d1bc1f9183de33c8b1b44e394b798de8ea1cb`; 148 path sesudahnya hanya
dokumentasi/evidence. Graph aplikasi/dependency/migration/runner/test identik.
Physical root/remote/SHA dan clean state executor diperiksa; checkout asal utuh.

Main masih `da7269efc63a3cf7221fd681c1cced20c2865353`, 23 commit di belakang
candidate dan 0 hanya di main. Active runtime adalah ancestor candidate.
Main tidak disamakan dengan source production. Tidak ada merge/promotion.

## Artifact dan evidence

Runner existing mode package-only menghasilkan `20261015042748-ec70410`.

| Artifact | SHA-256 |
|---|---|
| Source archive | `d5b7c6e497f30fc214825559519af5c48eb4fc98ffa410efe5318dd3af2a750e` |
| Recovery bundle | `09e6168438f6f3b12e59a6e9e38f1f9b410bf286f7eb6dd43beaf8bb24c9d072` |

Bundle verify dan canonical Git archive binding 3.101 file PASS. Forbidden
artifact scan tidak menemukan environment aktual, dependency cache, SQLite,
dump atau log mentah. Ini source artifact, bukan aplikasi candidate aktif.

Laporan baseline/UIUX, reproduction, scope/coverage, decision log dan sanitized
validation dibaca. Native final 93/692, payment 60/497, identity 42/388,
core 59/343, finance 91/793, report 26/212 dan native report 19/141 adalah
evidence lokal historis dengan run overlap; bukan full suite baru. Browser
historis dan integrated demo juga tidak menerima production/provider/manusia.

## Gate aktual pada exact SHA

Quality run `38678280188` **FAIL**. MySQL 8.4 Platform Contract PASS.
Job `test-and-visual` gagal pada 13 feature test, meliputi baseline audit,
settlement/recovery, UI contract dan booking workflow. CI root build,
typecheck critical, dependency audit root dan frontend persistence/provenance
sebelumnya PASS; browser steps setelah failure tidak dijalankan.

Saga AI Isolated Service juga gagal pada production dependency audit; test/build
service setelahnya tidak berjalan. Ini failure gate candidate, bukan pernyataan
service tersebut diaktifkan pada production. Tidak melemahkan assertion atau
mengecualikan job untuk menyebut CI hijau. Seluruh failure belum diperbaiki.

## Runtime dan pending migration

Runtime read-only: `2b5686820866f43694f9ec9595d3c39f638db3a6`, release
`20261005125235-2b56868`. Dua canonical/compatibility pointers cocok. Release
aktif adalah calon previous/rollback bila promotion nanti dilakukan; schema
compatibility dan actual rollback drill kandidat belum diterima.

PHP 8.5.4, MySQL 8.4.11, Node 22.22.1, Composer 2.9.5. Nginx/PHP-FPM/queue
aktif; health, admin login dan platform login HTTPS 200. Shared lock tersedia.
Ini baseline health, bukan candidate acceptance atau authenticated browser UAT.
Environment dan feature flag existing tidak dimutasi. Tidak mengaktifkan
integrasi/provider/Member, seed/reset, mengirim transaksi atau pesan customer.

146 migration diterapkan, 148 tersedia pada candidate. Seluruh 146 file existing
cocok canonical Git bytes. Pending production aktual hanya:

1. `2026_10_06_000001_add_member_booking_commerce_snapshot.php` — nullable JSON.
2. `2026_10_15_000000_widen_customer_access_deadline_storage.php` — nullable
   TIMESTAMP menjadi DATETIME, bukan perubahan rumus/retention/deadline lama.

Keduanya belum ada di release allowlist maupun rollback compatibility allowlist.
Hash canonical masing-masing `8ab75042c29272c5e5a879e9283c49fa7809b1f22c613c6c2c6b69377cdb9a6f`
dan `e8487e595f92c852ebaa22120786ea66b1da0c3deb64bb1097a74d9376996962`.
Target deadline masih TIMESTAMP, timezone koneksi SYSTEM/system UTC. Hash
baseline deadline disimpan restricted, bukan data customer pada knowledge.

DDL/locking/timezone/deadline preservation/compatible code rollback harus
direhearse pada restore disposable sebelum allowlist disahkan. Belum ada
pretend/apply atau migrate-down; tidak melakukan financial backfill.

## Recovery, promotion dan next action

Backup terakhir lebih tua dari threshold runner 24 jam; restore receipt terikat
SHA/profile lain. Fresh encrypted backup/offsite/checksum serta candidate-bound
restore belum tersedia. Tidak memakai receipt lama atau mengubahnya menjadi PASS.

Workflow dispatch tetap main-only. Wrapper/verifier lokal existing mendukung
pinned expected-main yang wajib ancestor candidate; jalur ini tidak menghapus
gate test/recovery/migration dan tidak mengotorisasi merge otomatis.

Langkah unblock: terbitkan candidate pengganti yang menutup failure CI, lalu
jalankan candidate-bound restore/DDL rehearsal dan sahkan kedua allowlist dari
bytes Git/Linux setelah kompatibilitas terbukti. Ikat CI/artifact/checksum/
restore ke SHA release final, lalu lanjut locked runner, terminal receipt serta
runtime/browser acceptance. Full suite tidak diganti subset/histori. Human UAT,
provider, perangkat, staging acceptance dan BUSINESS_READY tetap terpisah.

[Ringkasan produk](../../products/sagabook/PRODUCT.md).
