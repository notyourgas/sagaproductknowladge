# SagaView pemilihan foto aktif — 18 Oktober 2026

Status: **CONFIRMED — PRODUCTION / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED**.
Klasifikasi: CONFIRMED. Fakta software terverifikasi; acceptance manusia tetap terpisah.

## Tujuan dokumen

Mencatat aktivasi seluruh kandidat pemilihan foto exact ba2d980, gate yang dijalankan, provenance, rollback dan batas acceptance.

## Konteks dan status bukti

Baseline software84e62a6 telah sehat. Rilis ini hanya Studio; dedicated backendaf6c139 dan konfigurasi produksi dipertahankan. Bukti lokal, hosted CI, runtime dan human UAT dilaporkan terpisah.

## Source, artifact dan target actual

| Surface | Repo / branch | Exact source / release |
|---|---|---|
| Studio, deployed dan aktif | notyourgas/sagaview2 / codex/sagaview-photo-selection-20261017 | ba2d980df3844a65afd7522cfbc16eda6af1136b / 20261018062409-ba2d980 |
| Dedicated backend/Owner, tetap aktif | notyourgas/sagabook / codex/sagaview-access-release-fixes-20261015 | af6c139f4063258300e94f3f23a93a684c4de51b / 20261015140802-af6c139 |
| Previous dan rollback Studio | codex/sagaview-browser-readiness-20261017 | 84e62a66f24405f58d3a0281b028636afc752915 / 20261018053459-84e62a6 |
| Backend rollback, dipertahankan | dedicated SagaView | b06780e320b60efb3b27048f9099e39c07e61545 / 20261015073100-b06780e |

Target [Studio](https://app.sagaview.id/admin/session) dan [API health](https://api.sagaview.id/up).
Switch actual pada 2026-10-18T06:44:04.845611+00:00 (13:44 WIB), bukan timestamp ID paket.
Seluruh kandidat dipasang, tanpa cherry-pick atau perubahan source tambahan.
Parent exact84e62a6 dan tree ad61f3f971a79f38e0d690793b196876d4d1d018 cocok.

- Archive yang benar-benar dirilis: f4c17a368fb94c9176b911f4c4c3b236f100807ca1dd1ea06ce8b078f3db3240.
- Source recovery bundle: d6b196e5120f35576bd039dae7b0b3eb5887fa35aee340c7f590141e71a13cee.
- Linux server build: 4963f8c310033f283d515d46f688b35e9dceb044e4cb25cd03e3ad2885909db1.
- 212 client asset files, set SHA-256 fb6c6accab727ea50caf21cb925417f23da8d36b89a2bdf51afb8083649e7124.

## Perubahan pengguna dan boundary

Undo/redo hingga30aksi memory-only, konfirmasi bulk/Isi sisa/Ganti semua,
swap atomik saat kuota penuh, compare dengan pemilihan eksplisit, tray final
berurutan, preservasi slot/crop yang tidak terdampak, checkpoint segera dan
guard sesi/scope/revision, serta fokus next action folder berat kini termasuk
source aktif. History berakhir saat editor/reload dan tidak memulihkan izin.

Card aktif, live-import nonaktif, estimate-only, original lokal/no-upload,
device proof/nonce/lease/revocation/server authorization dan output receipt/
checksum/reprint boundary tetap. Config-only routing b9144d69fe3f09b02df4866a4852ac7a466fd1e4
dipertahankan. Tidak ada produk SagaBook/marketing/Member/platform lain yang
dirilis, provider/transaksi/pesan nyata/DNS/credential/data correction/pilot.

## Gate dan evidence actual

| Gate | Hasil dan batas |
|---|---|
| Source / artifact | PASS: clean ordinary checkout, remote exact, 468 canonical dan470 artifact file cocok independen; forbidden entries0 |
| Recovery Studio | PASS: checksum, bundle verify, disposable source checkout exact tree, mirror terpisah, custody lokal/VPS; Owner record read-only exact hash |
| Quality Windows exact | PASS: format/lint/typecheck,381 unit/regresi/78file, client+SSR build dan budget; largest411,3KiB/450KiB |
| Mandatory native | PASS: check, canonical/default browser235kasus/46file dengan1worker, capture guards aktif, failedTests kosong, audit production mandatory; wrapper exit0 |
| Hosted CI exact | Linux build/budget dan default browser235 PASS; Windows380 PASS/1FAIL fixed-NTFS timeout. Aggregate CI tetap FAIL; Actions optional menurut kontrak original, native assertion tetap dijalankan |
| Target Linux build | PASS: Node22.22.1/npm11.13.0 per-command,2min6,746s,peak864,5MiB; heap512/MemoryMax896/High864/swap0/CPU50%/deadline480s tetap |
| Active/rollback | PASS:470 active source/artifact file,465 rollback source file dan known-good rollback server digest cocok; current/previous/backend/config/custody terverifikasi |
| Backend compatibility | PASS:9638artifact file,22recent-password routes,106migration Ran/0pending,shared storage dan scheduler1;0migration dieksekusi |
| Services/runtime | PASS: sagaview-app, worker dedicated, PHP-FPM8.5,nginx,cron aktif; journal0error,health,lock,capacity,environment/neighbor preservation |
| SSR / browser akses | PASS: unique matching CSP nonce/private no-store,SSR/hydration,assets/worker,12foto sintetis lokal/recovery,desktop/mobile PIN/scope/cross-tab/draft/negative setup dan kedua customer entry |
| Browser seleksi foto | PASS: actual compiled frontend1440x900 dan1024x768; undo/redo,bulk cancel/fill,compare intent,atomic quota swap,tray,crop slot lain dan reload+matching-folder recovery;8capture sintetis diinspeksi |
| API boundary | PASS: payload read kosong422,origin salah403,Owner route tanpa akses404; tidak membaca data terlindungi |

Native terminal evidence adalah stdout wrapper existing dan observed process exit0,
bukan receipt sealed remote yang dibuat belakangan. Release manifest immutable
DEPLOY_REQUESTED tidak diedit menjadi receipt sukses; bukti terminal/runtime terpisah.
Histori validasi lokal, CI gagal dan paket rehearsal tetap dipertahankan.

## Recovery, acceptance dan risiko

Rilis Studio-only ini tidak mengubah dependency/backend/schema/database. Tidak
menjalankan fresh encrypted DB backup/restore atau migration baru dan tidak
mengklaim bukti backend historis sebagai restore fresh. Source recovery,
checksum/mirror/custody dan known-good rollback dipenuhi sesuai runner Studio.
Checkpoint schema v1 tetap; code rollback tidak berarti DB restore/migrate-down.

Andreas memberi exception physical UAT exact ba2d980/af6c139 melalui jawaban
langsung18Oktober, canonical validator v2 PASS. Hanya missing canonical physical
UAT evidence dikecualikan. PHYSICAL_UAT_EVIDENCE_WAIVED_BY_OWNER /
UAT_EVIDENCE_NOT_VERIFIED; human/printer UAT,pilot dan BUSINESS_READY belum diterima.
Exception84/af6 lama tidak digunakan untuk pasangan baru.

API pada browser merupakan fixture sintetis terintersep;0unmocked production
mutation. Ini membuktikan frontend produksi terkompilasi dengan API sintetis,
bukan authenticated positive Owner/customer production acceptance. Foto sintetis
dibuat di memori; tidak ada file original customer dihapus/ditimpa/diunggah.
Recovery membuktikan checkpoint yang sudah committed dan pemilihan ulang folder
yang cocok; bukan jaminan klik terakhir tersimpan saat power loss sebelum commit.

Residual: optional Windows CI timeout tetap FAIL meskipun mandatory serial
381PASS; human usability/perangkat/printer/endurance/power-loss realistis dan
portrait smartphone photo-picker tetap terbuka. Download dimulai bukan readback
tersimpan, antre cetak bukan physical printed. Next action: Owner/operator
melakukan UAT fixture pada perangkat studio dan printer yang sah.
