# SagaView: policy cleanup selesai, backend dirilis, Studio diperbaiki setelah rollback

## Tujuan

Mencatat diagnosis policy, hasil rilis/recovery/rollback dan gate kandidat pengganti.

## Konteks

CONFIRMED, checkpoint 2026-10-15T17:55:41.248289+00:00. Scope hanya SagaView Studio dan dedicated backend/Owner.
Backend baru PRODUCTION_DEPLOYED dan runtime verified. Studio 446c518 sempat
PRODUCTION_DEPLOYED melalui runner exit 0, lalu guarded code rollback setelah
verifikasi compiled browser menemukan hydration mismatch. Kandidat pengganti
afb3211 LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED; activation pasangan baru
NOT_PRODUCTION_ACTIVATED; BUSINESS_READY=false. Gate Owner exact-pair masih OPEN.

## Sumber dan artifact

| Surface | Repo / branch | Exact commit | Status |
|---|---|---|---|
| Backend/Owner aktif | notyourgas/sagabook / codex/sagaview-access-release-fixes-20261015 | af6c139f4063258300e94f3f23a93a684c4de51b | PRODUCTION_DEPLOYED, runtime verified |
| Studio aktif setelah rollback | notyourgas/sagaview2 / codex/sagaview-linux-npm-20261015 | c3170e0a5ae785d2164acb3ea0310c1591d2f188 | Baseline restored |
| Studio intermediate | notyourgas/sagaview2 / codex/sagaview-access-browser-release-20261015 | 446c518bf2e68b7ecadb54b779769a3ef465c25a | Deployed, M3 failed, code rolled back |
| Studio pengganti | notyourgas/sagaview2 / codex/sagaview-access-ssr-20261016 | afb3211730513c11b097b7830ce17d367a3fa76c | LOCAL_VALIDATED, prepared, belum dirilis |

Source pengganti mempunyai tree e3115994c83fbedb4f8648f7d03beac152b157d5,
parent 446c518. Kandidat handoff 9a6212cb05d95386965f941013eac03a951ef2ff,
f32b6e22cb08defc25d7dc33d933da6352a78bfd dan knowledge
c958c09ee573a049215c21f1c264d506fb7f98df tetap disimpan. Seluruh delta akses/admin
terbawa melalui ancestry; bukan cherry-pick sebagian atau branch default terbaru.
Pekerjaan lokal dan backup lain dipertahankan.

| Artifact | Release / paket | SHA-256 |
|---|---|---|
| Backend archive aktif | 20261015140802-af6c139 | ae616a045fcc463010b5ea05da7810d01110849546e6b19fad5c9d840addbd09 |
| Backend complete-history recovery bundle | Source af6c139 | 89d6779bf5ee16462b5cfae97ff9d4844c425c626f4183dc2d16c7ea9b8a1340 |
| Studio source archive aktif setelah rollback | 20261015082618-c3170e0 | 9728db23514621f747f63306a61791059590e3c345f5f1f78e8b0dc8632fa94d |
| Studio archive intermediate, retained | 20261015170949-446c518 | a8dadea72316d0b927a6dded8aadf1c3714b1a6799ea966a82fa058689d10143 |
| Studio pengganti, prepare saja | 20261015173826-afb3211 | a42156519eb9310823acde70a47713b28925f0f02b553979f15d8cb00099aa7c |
| Studio pengganti recovery bundle | Source afb3211 | 1687bbbd134296531ccd73de658ac82871d5dacdc167c0290a574ad4785e029b |

Archive pengganti cocok 462 file canonical Git archive; source/bundle mempunyai
mirror checksum pada disk fisik lain. Paket prepare tidak disebut artifact aktif.
Runner aktual kelak membuat metadata release baru dan checksum aktual wajib dicatat.
Tidak membawa environment aktual, database, plaintext restore, log privat atau media customer.

## Diagnosis blocked by policy dan recovery

Pernyataan sebelumnya tentang automatic approval reviewer dikoreksi: diagnosis
terverifikasi mengarah ke built-in exec policy Codex Windows. Konfigurasi memakai
approval_policy never dan filesystem unrestricted; file user rules mempunyai
114 allow tanpa forbidden/prompt. Binary terpasang memuat error dan marker
exec_policy.rs. WhatIf dengan Force juga ditolak sebelum PowerShell dijalankan.
Source resmi memperlihatkan force delete sebagai dangerous command dan Never
mengubah kebutuhan approval menjadi Forbidden:
[Windows classifier](https://github.com/openai/codex/blob/main/codex-rs/shell-command/src/command_safety/windows_dangerous_commands.rs),
[exec policy](https://github.com/openai/codex/blob/main/codex-rs/core/src/exec_policy.rs).
Source upstream menjelaskan alur; commit build Codex terpasang tidak tersedia.

Perbaikan memakai cmdlet PowerShell yang sama dengan literal path tanpa Force,
setelah path/ownership/reparse/process/listener dan atribut dilihat ulang.
675 file disposable tidak mempunyai atribut protected. Cleanup berhasil dan
read-back membuktikan direktori hilang. Tidak mengubah policy, memakai interpreter
lain, mengabaikan read-only/ACL, atau menghapus backup terenkripsi.

S39 fresh run 20261015T170247Z: tiga database encrypted/checksum/offsite round-trip
serta disposable restore PASS, terminal exit 0, bound ke backend af6c139 dan
archive ae616a0. Restore tabel 158/184/151; SQL terdekripsi dan seluruh root MySQL
disposable terverifikasi hilang, proses/listener berhenti. Private key tetap lokal;
konfigurasi rahasia hanya memori proses. Tidak merotasi credential atau retensi.
Receipt lama yang cleanup-nya gagal tetap ineligible dan disimpan sebagai histori.
Default restore root yang sudah cukup kapasitas digunakan; kelemahan cleanup
pada override root lintas disk tidak diklaim telah diperbaiki di source runner.

## Backend: terminal dan runtime

S296 dedicated runner terminal exit 0. Current 20261015140802-af6c139;
previous/rollback 20261015073100-b06780e. Seluruh 9.638 file immutable cocok
artifact, storage memakai shared storage, service/health dan support unauthenticated
404 PASS. Environment fingerprint dan pointer SagaBook/platform tidak berubah.
22 route sensitif memuat EnsureSagaViewRecentAuth. Probe pertama mengira
route:list tetap memakai alias; Laravel menampilkan nama class penuh, sehingga
probe diperbaiki tanpa mengubah source/gate.

Composer lock aktif ee1479d69763cafefc19d7f5079ebdc01c9e9330f6201563fb4dde7013528bbc
cocok. Receipt native menampilkan dua field Composer hash null karena parser
key tidak menerima digit; bytes receipt tidak diubah, kedua hash diverifikasi
independen pada file aktif/previous. Platform PHP 8.5.4 vendor check PASS.
Schema 106 Ran/0 pending; source migration delta 0 dan executed 0. Tidak ada
seed, backfill keuangan, database production restore atau migrate-down.

## Studio intermediate: verifikasi gagal dan guarded rollback

Runner 446c518 terminal exit 0 setelah mandatory check, full browser dan runtime
audit. Last-run browser passed, failedTests kosong; suite saat itu 217 tes.
Archive aktif cocok 464 file source/metadata; compiled server dan 212 client
assets mempunyai digest terverifikasi. Card aktif/live-import nonaktif.
Build VPS guarded berhasil: heap 512 MiB, MemoryMax 896 MiB, MemoryHigh 864 MiB,
swap 0, CPU 50%, deadline 480 detik; preflight MemAvailable minimal 1100 MiB.
Journal mencatat wall time 129,918 detik dan peak 864,4 MiB. Live unit limits
juga dicatat sebelum transient unit di-GC; default counter sesudah GC bukan limit aktual.

Smoke compiled runtime diperluas ke pengaturan berisi konfigurasi perangkat.
React hydration error 418 ditemukan di /admin/general: server tidak membaca
konfigurasi browser, client awal langsung membacanya sehingga teks pricing
berbeda. Pola read saat render juga ada pada baseline; tidak disebut regresi baru
atau dipalsukan PASS. SSR/session/CSP/import/recovery checks sebelumnya tidak
mencakup mismatch General ini. Failure dan rerun diagnostic dipertahankan.

Guarded atomic code rollback hanya Studio: expected source/current, artifact
previous, backend pairing dan shared lock diperiksa; pointer dikembalikan ke
20261015082618-c3170e0 dan service direstart. Terminal/read-back PASS; 457 file
source artifact baseline cocok, provenance/health sehat. Backend af6c139 tidak
diubah. Studio rollback pointer kini menunjuk current c3170e0; older fallback
20260930021641-6f28cfe juga tetap tersedia. Intermediate 446 dan seluruh artifact
retained. Tidak rollback database atau menyalakan integrasi.

## Kandidat pengganti dan validasi aktual

Delta afb3211 hanya dua file: satu koreksi pricing authority General dan satu
regresi browser. Server dan render client awal memakai state read-only yang
konsisten; effect setelah hydration membaca scope aktual dan mengikuti event
cloud-config/storage existing. Authorization server, harga tersimpan, dependency,
lockfile, migration, runner dan seluruh perubahan akses/admin tetap dipertahankan.
Tidak menonaktifkan SSR, menyembunyikan error atau melonggarkan assertion.

- Format/lint/typecheck, 366 tes/77 file, client+SSR build dan budget 416,5 KiB
  dari limit 450 KiB PASS lokal exact afb3211, terminal 0.
- Regresi akses 6/6 PASS, termasuk case baru connected settings/refresh PIN.
- Compiled production loopback desktop 1440x900/mobile 390x844 PASS: nonce cocok
  dan unik, private no-store, CSP negative checks, hydration errors 0, assets/
  thumbnail worker/service-worker, impor 12 foto sintetis dan recovery guidance.
- Setup melalui fixture aktivasi Owner, lock/unlock, tab lain/logout,
  preservasi draft dan penolakan setup tanpa grant PASS di kedua viewport.
  Seluruh API mutasi diintersep; 0 unmocked production mutations. Dua capture
  pengaturan diperiksa visual. Ini belum authenticated production acceptance afb3211.
- Suite source sekarang 218 tes/45 file. Native deployment gate afb3211 belum
  dijalankan karena receipt/exception exact-pair belum tersedia.
- [CI Studio exact afb3211](https://github.com/notyourgas/sagaview2/actions/runs/38778674411):
  Windows quality dan browser Linux 218/218 PASS, 0 skip/0 retry; terminal CI
  success pada exact source. [CI 446 sebelumnya](https://github.com/notyourgas/sagaview2/actions/runs/38748650270)
  quality dan browser 217 PASS tetap histori source 446.
- Backend af6c139: SQLite relevan 272 tes/4.114 assertion, MySQL disposable
  Windows 56 tes/364 assertion, Owner browser 8/8, Composer audit/validate PASS.
  [CI backend](https://github.com/notyourgas/sagabook/actions/runs/38748642493):
  MySQL 8.4 Platform Contract/SagaView integration PASS dengan warning;
  aggregate FAIL pada visual SagaBook dan audit Saga AI di luar dedicated scope.
  Tidak mengklaim full monorepo CI PASS.

Lingkungan lokal Node 24.16.0/PHP 8.4.1/MySQL 8.4.9 Windows, target
Node 22.22.1/PHP 8.5.4/MySQL 8.4.11 Linux. Lokal bukan parity OS/patch target.
Native backend JS typecheck tidak tersedia; 12 diagnostic baseline historis
bukan full typecheck PASS. Rerun overlap tidak dijumlahkan sebagai tes unik.

## Gate Owner dan satu langkah berikutnya

Andreas memberi exception physical UAT exact 446c518/af6c139 sesuai DEC-259;
receipt v2 native validator PASS. Exception itu tidak berlaku pada Studio afb3211.
Satu pertanyaan exact-pair afb3211730513c11b097b7830ce17d367a3fa76c +
af6c139f4063258300e94f3f23a93a684c4de51b sedang menunggu jawaban Owner.
Izin deployment umum tetap berlaku dan tidak diminta ulang.

Next action: Owner memenuhi panel exact-pair dengan receipt physical UAT atau
exception eksplisit. Executor lalu merekam/validasi binding, memeriksa current,
backend, kapasitas dan lock, menjalankan runner Studio existing sampai terminal,
kemudian memeriksa artifact/provenance/SSR/CSP/browser/access/health/rollback.
Jangan menganggap paket prepare sebagai rilis aktual atau runtime verifier
loopback sebagai acceptance produksi. Receipt kadaluwarsa tidak dipakai ulang.

Foto/original tetap lokal dan Studio estimate-only. Checkpoint/outbox/output,
device proof/nonce/lease/revocation dan server authorization tetap dalam kontrak.
Download started bukan saved readback, antre print bukan physical printed.
Tidak ada provider/account/DNS/Member/marketing/produk lain yang diaktifkan,
transaksi/pesan nyata, atau pilot data customer. Physical UAT/perangkat/printer,
identity/provider nyata dan human acceptance tetap terpisah; bukan BUSINESS_READY.
