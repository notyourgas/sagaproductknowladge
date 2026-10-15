# SagaView: checkpoint Linux runner, 15 Oktober 2026

> Update 15 Oktober 2026: exception Owner exact pasangan sudah diterima dan
> validator native PASS; sampai 16 Oktober 2026 pukul 13.21 WIB. CI/recovery/capacity tetap NO_GO.
> [Status terkini](sagaview-owner-exception-status-20261015.md). Bagian di bawah merupakan checkpoint sebelum approval diterima.

## Tujuan

`CONFIRMED` untuk fakta source, hasil pemeriksaan dan blocker di bawah.
Kandidat belum dipromosikan atau diaktifkan. `BUSINESS_READY=false`.
Dokumen ini menggantikan snapshot persiapan sebelumnya untuk kandidat Studio;
snapshot lama dipertahankan sebagai histori.

## Konteks

Satu executor menggunakan runner produk existing. Original Studio
`01bdf0648ce5ee80eca6a59c05099338b965f946` dipertahankan. Target npm 9.2.0
menolak locked install dengan missing dependency pada lock parser. Delta minimal
memakai scoped npm 11.13.0 pada runner dan kedua locked install workflow CI;
global npm tidak diubah. Commit intermediate `0d8a2b3` dipertahankan.
Application source, package.json, package-lock.json, backend dan schema tidak
berubah dari pasangan handoff. Delta hanya runner, workflow, tes kontrak dan docs.

## Kandidat dan artifact yang disiapkan

| Surface | Repository / branch | Exact source | Artifact ID |
|---|---|---|---|
| Studio | notyourgas/sagaview2 / codex/sagaview-linux-npm-20261015 | `dcb5d49a77ffb56d64ae5a3608e0e30f2b3b0661` | `20261015045207-dcb5d49` |
| Backend SagaView | notyourgas/sagabook / codex/sagaview-dependency-20261015 | `76e01c7f85064abcebcc3ea36ccf44286489d42b` | `20261015040457-76e01c7` |

| Artifact | SHA-256 |
|---|---|
| Studio archive | `b4012c7ad4d619273ba352d08b3c5bbf8fddc16f004b48df269540267b37f283` |
| Studio recovery bundle | `d8bdbbde0cdf4b107494630fb82346afc962af56367380d30b4ce398c522b51d` |
| Backend archive | `5bbe8ae9c3b431e2e86546a82bb690ba1df13b337813203e4c4acf488c5749c1` |
| Backend recovery bundle | `295693c906182c363e16f844382babaa58140ccc1309d4e5f99aea15bc2cbb8b` |

Canonical Git/archive binding Studio 455 file PASS; clean HEAD dan remote branch
exact sama. Archive metadata masih menyebut REMOTE_PUSH_PENDING; bytes immutable
tidak ditulis ulang. Verifikasi remote terpisah membuktikan SHA sudah dipush.
Backend 2.272 file dan mirror disk berbeda telah diverifikasi pada checkpoint
sebelumnya. Artifact ini source package; bukan compiled release yang aktif.

## Validasi aktual dan batasnya

- Tes kontrak release existing 11/11 PASS sesudah delta runner/workflow.
- Intermediate CI 38683426084: locked install, format, lint, typecheck PASS;
  unit 346 PASS/8 FAIL karena native powershell.exe/NTFS probe pada Ubuntu.
  Build/audit SKIPPED; workflow terminal CANCELLED oleh concurrency setelah
  push koreksi, saat browser masih berjalan.
  Final workflow full suite Windows; Linux production build/budget dan browser
  tetap diuji. Tidak ada assertion dihapus/dilemahkan/di-skip.
- CI final exact SHA: **FAILURE; quality success; browser 177 PASS/24 FAIL/9 SKIP**. Windows quality PASS, 354/354
  unit test/76 file, format/lint/typecheck/build dan production-only audit nol
  temuan. Linux production build/budget PASS pada default CI flags, bukan
  compiled target activation. Browser terminal failure: 177 PASS/24 FAIL/9 SKIP.
  Sembilan SKIP dilaporkan runner; tidak diklaim sebagai acceptance.
  Coverage 210 unik historis bukan fresh full PASS Linux CI.
- Full install graph termasuk dev melaporkan tujuh advisory high; production-only
  audit nol. Dev graph masih residual risk, tidak diberi label seluruh dependency
  aman dan tidak di-update otomatis dalam release ini.
  [Run final](https://github.com/notyourgas/sagaview2/actions/runs/38683711098).
- CI intermediate run 38682650442 FAIL pada locked install kedua job. Quality
  dan browser belum berjalan pada run tersebut; kegagalan tidak dihapus.
- Disposable Linux VPS pada intermediate `0d8a2b3`: scoped npm clean install PASS; client production build
  PASS; SSR build FAIL, exit 134 karena heap limit 384 MiB. Tidak ada SSR Linux,
  hydration atau runtime provenance kandidat yang diklaim PASS dari run ini.
- Unit transient dibatasi hard memory 640 MiB, swap nol dan runtime delapan
  menit. Peak sekitar 623 MiB; soft limit dinaikkan dari 512 ke 608 MiB dalam
  hard limit yang sama. Tidak ada restart atau retry build berat lanjutan pada
  serving VPS. Host tersedia sekitar 1 GiB dan swap penuh sesudah run.
- Bukti aplikasi unchanged sebelumnya: Windows 354 unit/76 file, 210 browser
  unik, compiled SSR/CSP desktop/mobile PASS; backend 301 test/7.406 assertions
  SQLite dan Linux PHP 8.5 dependency/storage rehearsal PASS. Ini reuse evidence
  sesuai bytes/scope; fresh full unit final SHA dicatat pada CI di atas. Ini bukan MySQL
  restore atau physical UAT.

## Runtime yang aktif dan recovery

| Surface | Active source / release | Rollback tersedia |
|---|---|---|
| Studio | `6f28cfee5a5c96507270d555b172b1d93018737a` / `20260930021641-6f28cfe` | `20260925164446-fbc186a` |
| Backend SagaView | `ee3ddeee3cbb05b1b62e7f9421fb26f15f85513d` / `20260925094720-ee3ddee` | `20260903003542-ceb3373` |

Setelah build berhenti, empat service aktif, kedua pointer production tetap,
kedua rollback ada dan shared lock tersedia. Global Node 22.22.1/npm 9.2.0
tetap. Card aktif dan live-import nonaktif tetap mengikuti baseline yang
diverifikasi. HTTPS app/API sebelumnya dipulihkan sampai 13 Januari 2027.
Tidak ada deployment aplikasi, migration, transaksi, pesan atau aktivasi pilot.

## Triage dan recovery execution

Browser Linux final masih NO_GO: local import/recovery, SSR nonce/hydration,
responsive menus/navigation, diagnostics dan PNG receipt terkena failure.
Log mencatat timeout/keadaan UI tidak siap serta export receipt undefined.
Root cause belum dipastikan; tidak diasumsikan hanya flake/CPU dan assertion
tidak dilemahkan. Evidence Windows historis tidak membatalkan Linux failure.
Quality gate telah mengalami koreksi terbatas pada npm dan native-platform
setup; checkpoint disimpan tanpa mencoba koreksi/ulang tanpa diagnosis baru.

Recovery native juga belum siap: executable/config backup native tidak tersedia
pada jalur yang diperiksa dan rclone belum terpasang. Script source S39 existing
menyertakan retensi; pemeriksaan read-only menemukan sembilan direktori yang
akan terpilih untuk penghapusan. Script tersebut tidak dijalankan. Jalur canary
existing harus ditinjau agar secret tetap di memori dan retensi tidak mendapat
otorisasi tersirat dari izin deployment. Tidak ada backup dihapus atau secret
dibaca/dicetak pada pemeriksaan ini.

## Gate dan satu langkah berikutnya

Status kandidat: `IMPLEMENTED_NOT_DEPLOYED / NOT_PRODUCTION_ACTIVATED`.
Human/physical UAT `NOT_ACCEPTED`; printer/pilot dan `BUSINESS_READY` terpisah.
Receipt physical UAT atau explicit Owner exception harus cocok dengan Studio
final `dcb5d49a77ffb56d64ae5a3608e0e30f2b3b0661` + backend
`76e01c7f85064abcebcc3ea36ccf44286489d42b`. Keputusan pada pasangan lama tidak
otomatis berlaku; izin deploy umum tetap berlaku dan bukan exception UAT.

Next action: diagnosis failure browser dari artifact CI dan siapkan kandidat
koreksi dengan quality/browser gate lulus. Setelah source final stabil, ikat
UAT/exception exact pasangan dan selesaikan jalur recovery tanpa efek retensi
yang belum diotorisasi, kapasitas build aman, fresh encrypted backup/checksum/
disposable restore, serta current/lock/health dan runtime acceptance.
Recovery lama tidak memenuhi freshness satu jam backend; backup baru tidak
dibuat hanya untuk membiarkannya kedaluwarsa selama menunggu keputusan UAT.
Tidak ada guard dibypass, restore DB atau migrate-down otomatis.

Studio tetap estimate-only, foto/original lokal, tenant/device/API isolation dan
output receipt/readback/physical-print distinctions tetap berlaku.
