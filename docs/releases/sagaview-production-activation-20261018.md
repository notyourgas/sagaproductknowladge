# SagaView production activation — 18 Oktober 2026

## Tujuan

Menutup rilis akses/admin SagaView melalui runner native existing sampai source,
artifact, recovery, service dan browser runtime aktif terverifikasi.

## Konteks

`CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / NOT_BUSINESS_READY`
untuk pasangan aplikasi berikut. Sumber: instruksi Owner18Oktober, terminal
runner, pemeriksaan file/runtime dan browser sintetis executor yang sama.
Ini menggantikan status OPEN pada checkpoint17Oktober, tanpa menghapus histori
percobaan gagal. Physical/human UAT dan printer tetap belum diverifikasi.

## Surface, source dan release aktual

| Surface | Repository / branch | Source exact | Status / release |
|---|---|---|---|
| Studio | notyourgas/sagaview2 / codex/sagaview-browser-readiness-20261017 | `84e62a66f24405f58d3a0281b028636afc752915` | Aktif `20261018053459-84e62a6` |
| Backend/Owner dedicated | notyourgas/sagabook / codex/sagaview-access-release-fixes-20261015 | `af6c139f4063258300e94f3f23a93a684c4de51b` | Tetap aktif `20261015140802-af6c139`; tidak redeploy backend |
| Koreksi routing Nginx | notyourgas/sagabook / codex/sagaview-customer-routing-20261018 | `b9144d69fe3f09b02df4866a4852ac7a466fd1e4` | Blok exact customer diterapkan; bukan source aplikasi PHP/Studio baru |

Semua source di atas dipush dan exact SHA remote cocok. Implementasi aplikasi
Studio0759819 dipetakan ke final84, yang delta terakhirnya hanya helper/docs.
Original handoff9a6212c/f32b6e2 dan kandidat antara tetap dipertahankan.
Kandidat pemilihan foto `ba2d980df3844a65afd7522cfbc16eda6af1136b` pada branch
terpisah tetap SOURCE_PUSHED / IMPLEMENTED_NOT_DEPLOYED; tidak dibundel diam-diam.

Studio sebelumnya/rollback: `20261015082618-c3170e0`, source
`c3170e0a5ae785d2164acb3ea0310c1591d2f188`. Backend rollback tetap
`20261015073100-b06780e`. Target dan fallback lama disimpan; tidak menjalankan
migration-down atau restore DB. Rollback operasional bukan klaim lolos audit
keamanan terbaru. Tidak ada live code rollback tambahan pada aktivasi ini.

## Artifact dan recovery binding

- Source tree Studio: `2c45d494b0f06a39d08fd67c140eca44820ead59`.
- Archive Studio yang benar-benar dirilis SHA-256:
  `782904eb4d1bba760c2ec9344e5348febd202662cd0691e270b1e2e4a8cb66ab`.
- Source recovery bundle SHA-256:
  `4332b4b680ad97b326fd541231b72849bc68f98bd0f1c67f277e4f5c4bc49c70`.
- 463 canonical source file cocok dan465 artifact file termasuk metadata cocok
  dengan current aktif. Archive/bundle custody VPS dan mirror pada dua disk
  fisik lokal checksum cocok. Tidak ada secret/env aktual/cache/dump/customer media.
- Compiled server SHA-256:
  `867c1368800fa403c7058554b0a12f3199165d3cc8f2157e9b6fc6a4ed1ec0ef`.
- 212 client asset file; digest himpunan:
  `82dc3b31a9aeca8674e96511f30e2128a99fb28ac7201aa3c099b483136b0975`.

Archive prepared-only17Oktober berbeda checksum dan tidak diklaim sebagai
artifact aktif. Metadata immutable DEPLOY_REQUESTED tidak ditulis ulang agar
seolah menjadi receipt final; hasil terminal dan verifikasi runtime dicatat terpisah.
Backup terenkripsi/offsite/disposable restore historis milik backendaf6 yang
sudah aktif tidak dilabeli sebagai binding fresh untuk rilis backend baru.
Rilis Studio/config ini tidak memutasi DB; source custody, backup konfigurasi
dan guarded rollback dipertahankan sesuai surface.

## Gate dan hasil yang benar-benar dijalankan

1. Canonical Owner exception schema-v2 PASS untuk exact84/af6 berdasarkan
   jawaban langsung Andreas18Oktober. DEC-267: hanya missing physical-UAT
   evidence yang dikecualikan; receipt immutable/time-bound/custody read-only.
   `uatEvidenceVerified=false`, `businessReady=false` tetap.
2. Runner existing `scripts/invoke-local-vps-release.ps1` beserta
   `scripts/deploy-sagaview-studio`: terminal **exit0**, stdout canonical
   `PRODUCTION_ACTIVATED`. Gate format/lint/typecheck/366unit/build/budget,
   full browser218 dan production dependency audit dijalankan kembali.
   Semua capture condition aktif;10 capture gate terbuat, last-run passed.
   Recheck audit production JSON18Oktober: semua severity0, total0.
3. Linux Bash parser exact runner PASS. Build Linux dari lockfile dengan npm
   terpin11.13.0, Node22.22.1 PASS. Global npm9.2.0 tidak diubah atau dipakai
   sebagai dependency resolver build. Heap512MiB, MemoryMax896MiB,
   MemoryHigh864MiB, swap0, CPU50%, deadline480detik tetap. Journal terminal
   success; durasi2menit6,582detik, peak866MiB. Live unit properties juga dicapture.
4. Backend read-back9638 artifact file cocok;106 migration Ran/0pending,
   22 sensitive route recent-password gate tetap. PHP8.5.4, MySQL8.4.11,
   connection timezone SYSTEM terverifikasi dengan query metadata saja.
   Tidak ada migration atau koreksi data yang dieksekusi oleh rilis ini.
5. Source/custody/provenance, rollback, lima service, dedicated scheduler1,
   storage writable, shared lock tersedia dan journal error sejak awal rilis0 PASS.
   Environment dan produk tetangga tetap. Card aktif/live-import nonaktif,
   estimate-only, original lokal dan scope/auth/nonce/lease/revocation tetap.
6. HTTPS root/session/general/output/customer/API health PASS. Compiled
   browser desktop1440x900/mobile390x844 PASS: hydration0error, nonce unik dan
   cocok, private/no-store, CSP menolak inline asing dan foreign connection,
   sw.js hash source cocok, thumbnail worker,12 foto sintetis import/recovery,
   Owner-activation fixture/PIN/lock/cross-tab/draft preservation dan penolakan
   setup tanpa Owner. Empat entry check tambahan menolak perangkat belum
   diaktivasi dan tidak mengalami redirect loop. Tidak ada unmocked production mutation.
7. Backend boundary actual PASS: Owner anonim ditolak, invalid read/proof
   ditolak422, wrong-origin ditolak403. Tidak ada data/credential customer digunakan.

GitHub Actions tetap dilaporkan jujur: exact Studio
[38997106389](https://github.com/notyourgas/sagaview2/actions/runs/38997106389)
quality366 PASS tetapi Linux217PASS/1FAIL pada cold dev bootstrap. Hosted CI
opsional sesuai kontrak Studio; bukan full CI PASS. Dua correction round dan
failure dipertahankan. Config-only b914
[aggregate CI39102490150](https://github.com/notyourgas/sagabook/actions/runs/39102490150)
juga FAIL pada surface monorepo di luar delta konfigurasi; bukan full monorepo
PASS atau rilis aplikasi SagaBook. Gate Nginx aktual dan runtime tetap wajib
serta telah lulus; tidak ada guard workflow main yang diubah/dilewati.

## Koreksi customer entry dan konfigurasi

M3 tambahan menemukan301 `/customer` → `/customer/`, lalu307 kembali ke bare
URL. Upstream dengan Host yang sesuai melayani bare URL200. Koreksi sourceb914
menambahkan satu exact proxy block dengan header yang sama. Seluruh byte lain
vhost dipertahankan, main config dan17 enabled vhost lain tidak berubah.

Candidate diuji terhadap topology Nginx aktual sebelum mutasi; shared release
lock, expected app pair, expected config checksum dan backup restricted dipakai.
Urutan aktivasi Nginx existing: backup/install/`nginx -t`/reload. Percobaan pertama
memeriksa HTTP terlalu cepat setelah reload asynchronous dan guard memulihkan
backup. Failure disimpan. Putaran kedua memakai readiness terbatas sebagaimana
kontrak native; status readiness301→200, lalu semua assertion200/CSP/cache PASS.
Perilaku worker lama/new generation dijelaskan oleh
[dokumentasi Nginx](https://nginx.org/en/docs/control.html#reconfiguration).
Tidak ada assertion yang dilemahkan atau template lama yang menimpa config aktual.

- Config sebelum/backup SHA-256:
  `e7c8fa4b85e3b1c6d7a1cf7488a0bff3fd164576e4514d1cb89ed6f8dc72506e`.
- Config aktif SHA-256:
  `ddbe044be21fe03fff03d92478a2bc9b1d2b9fc0af8d80e750e6447d842b6b0b`.
- Blok yang terikat source Git SHA-256:
  `08e44fdbdbe28c7cf464c49ddd7122c1cdabbe0584282e42178ce040efd29e25`.

Konfigurasi memiliki rollback/backup tersendiri. Source aplikasi Studio84 dan
backendaf6 tidak diedit untuk perbaikan routing ini. Artifact/backend file map
diverifikasi ulang sesudahnya dan tetap cocok.

## Risiko tersisa dan next action

Tidak ada blocker aktivasi software pada scope ini. Cold Linux dev-CI dan
aggregate monorepo FAIL tetap residual yang tidak disembunyikan. Bukti fixture
bukan authenticated human production acceptance. Human UAT, printer/perangkat,
pilot dan BUSINESS_READY tetap OPEN; download bukan bukti physical printed.
Tidak ada provider/DNS/credential/transaksi/pesan nyata atau perubahan retensi.

Next action: human UAT dengan Owner/operator dan perangkat/printer yang sah
menggunakan fixture sintetis, lalu catat penerimaannya terpisah dari aktivasi ini.
