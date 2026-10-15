# SagaView: recovery lulus, dedicated backend dirilis

## Tujuan

`CONFIRMED`, 15 Oktober 2026 pukul 14.45 WIB. Scope hanya dedicated SagaView.
Ini menggantikan status recovery/kapasitas NO_GO pada checkpoint sebelumnya;
histori kegagalan tetap disimpan. Studio kandidat baru belum diaktifkan.

## Konteks

| Surface | Repo / branch | Exact source | Delivery / activation |
|---|---|---|---|
| Backend SagaView | notyourgas/sagabook / codex/sagaview-recovery-memory-20261015 | b06780e320b60efb3b27048f9099e39c07e61545 | PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED untuk dependency backend |
| Studio kandidat | notyourgas/sagaview2 / codex/sagaview-linux-npm-20261015 | 1e9655afbb66be2b535685b1bb1cd1b81d57aaa8 | IMPLEMENTED_NOT_DEPLOYED / NOT_PRODUCTION_ACTIVATED |

Backend release `20261015073100-b06780e`, previous/rollback
`20260925094720-ee3ddee`. Archive SHA-256
`ab3349142227db5a8e077caf18bdb56d7aedd0b9c5d1a2932549b32a0fa89c88`;
recovery bundle `d7ccfd2c170686761769a751ccf0e794f81438187d8ff6565f7e3d07f8609c95`.
Runner dedicated S296 exit 0. Sebanyak 9.630 file aktif cocok dengan artifact;
Composer lock sesuai kandidat. Wrapper tidak mengisi dua field hash pada
ringkasan receipt karena parser nama field; hash diverifikasi independen.
Shared storage, worker, PHP-FPM, nginx, health API dan support unauthenticated
boundary lulus. Tidak ada migration source delta, pending migration 0, existing
106 migration berstatus Ran; rilis tidak menjalankan migration.

Studio production masih `6f28cfee5a5c96507270d555b172b1d93018737a`, release
`20260930021641-6f28cfe`; rollback `20260925164446-fbc186a`. Card tetap aktif,
live-import nonaktif. Tidak mengubah SagaBook, platform, DNS, provider atau pilot.
Artifact Studio yang disiapkan `20261015074004-1e9655a`, archive
`586df96227e0976a5d7f7ebf2f50be1dc8b241558ccbe55cf7159a970a63d363`, bundle
`baa4e9f79f25f1fb64a29f54b6536db5755abf64fe29de53cf42b670d8129d30`.
Ini belum artifact Studio yang dirilis.

## Perbaikan dan validasi

- Locked Composer install memilih Git source hanya untuk Ziggy yang dist URL
  mengembalikan 404; HEAD/origin cocok composer.lock. Versi dependency tidak
  diubah lagi. Application/migration sama dengan backend aktif sebelumnya.
- S39 existing memakai konfigurasi melalui anonymous Linux memfd. Private
  identity tetap lokal; backup lama dipertahankan. Tiga DB terenkripsi lulus
  checksum, offsite round-trip dan disposable restore, dengan binding exact
  source/artifact dan freshness diperiksa runner sebelum mutasi.
- MySQL disposable Windows memakai --no-monitor agar PID listener sama dengan
  proses yang dimulai. Ownership guard tetap wajib. Restore MySQL 8.4.9 Windows
  bukan klaim parity exact patch/OS dengan target 8.4.11 Linux.
- Backend Linux PHP 8.5/storage rehearsal PASS; 25 focused ops test/212 assertions
  PASS. CI MySQL 8.4 dan SagaView integration PASS dengan warnings/deprecation.
  Aggregate CI backend tetap FAIL pada visual SagaBook dan isolated SagaAI audit,
  sama seperti kandidat dependency awal; tidak diperluas atau disebut full PASS.
- Rehearsal Studio Linux clean install/build/budget/SSR/CSP/provenance PASS
  dengan heap 512 MiB, hard memory 896 MiB, swap nol, CPU 50% dan deadline
  480 detik. Runner mempertahankan limit serta preflight 1100 MiB available.
- 24 browser failure awal lulus pada run serial: 201 PASS/9 SKIP. Setelah Card
  dan capture disamakan target, run berikutnya 202 PASS/8 FAIL/0 SKIP. Delapan
  failure tersebut dikoreksi dengan semantic readiness/reload/receipt ordering;
  focused 8 PASS, assertion/timeout/retry tidak dilemahkan. CI quality final
  354 test/76 file, format/lint/typecheck/build/audit PASS. Suite Linux 210 final
  masih berjalan: [run exact Studio](https://github.com/notyourgas/sagaview2/actions/runs/38700157271).

## Batas dan satu langkah lanjut

Izin deployment umum tetap berlaku. Exception physical UAT sebelumnya hanya
terikat Studio dcb5d49 + backend 76e01c7; tidak diperluas otomatis ke pasangan
1e9655a/b06780e. Setelah suite final lulus, penuhi binding physical UAT atau
exception Owner exact pasangan baru melalui kontrak runner, lalu deploy Studio
dan verifikasi provenance, browser dan rollback runtime.

Foto/original tetap lokal; Studio estimate-only. Download dimulai bukan bukti
file tersimpan dan antre cetak bukan physical printed. Authenticated human UAT,
perangkat/printer, provider nyata dan pilot belum diterima. BUSINESS_READY=false.
Harga, paket, positioning, marketing dan integrasi tidak berubah.
