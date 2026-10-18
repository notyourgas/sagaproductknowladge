# Platform/COYABAG contract release — 18 Oktober 2026

## Tujuan

Mencatat software yang benar-benar aktif dan membedakan runtime verification,
penutupan recovery, human acceptance dan business readiness.

## Konteks dan status bukti

CONFIRMED: source `3a7ecda0606150ba9173965c0eb129d7dc9d4022` di repository
[notyourgas/sagabook](https://github.com/notyourgas/sagabook/tree/3a7ecda0606150ba9173965c0eb129d7dc9d4022),
branch `codex/coyabag-release-gates-20261018`, release `20261018111126-3a7ecda`
sudah aktif. Kandidat084d7f9 tetap ancestor; perbaikan dependency PHP, fixture,
guard runner, verifier transport dan immutable archive custody menghasilkan SHA baru.
Native Platform/COYABAG runner selesai exit0; independent runtime verification PASS.
Status penutupan: **PRODUCTION_DEPLOYED / RUNTIME_VERIFIED / RECOVERY_CLEANUP_OPEN**.
Jangan menggantinya dengan klaim seluruh gate selesai.

| Surface | Exact active source | Release |
|---|---|---|
| Platform/COYABAG adapter | `3a7ecda0606150ba9173965c0eb129d7dc9d4022` | `20261018111126-3a7ecda` |
| SagaBook | `8f9731a8babf123ea059fcb2b2e553f35118e3cb` | `20261018063915-8f9731a` |
| SagaView Studio | `ba2d980df3844a65afd7522cfbc16eda6af1136b` | `20261018062409-ba2d980` |
| SagaView backend/Owner | `af6c139f4063258300e94f3f23a93a684c4de51b` | `20261015140802-af6c139` |

SagaBook dan SagaView tidak dipromosikan ulang pada rilis Platform ini; pointer,
source dan environment tetap, dengan health/browser entry diperiksa ulang.
Exact-pair exception printer Studio yang sudah ada tidak diperluas ke pasangan baru.

## Artifact, rollback dan recovery

Archive SHA-256 `f834ca679d89d17a6736e4b8a6068996e98c23e3337e453f411490f1ebf4c85e`; source recovery bundle
`3b57386c137bc1339185222215c82d9e3b6b2493e5a4d6bd7b4f74cb46a003c8`.
Archive retained dan source recovery bundle tersedia pada custody executor;
private evidence path tidak diterbitkan. Source2906file cocok0mismatch dan
manifest verify PASS; installed dependencies sesuai lock dan221 frontend assets
identik. Previous/rollback `20261018072119-a8b1818`
(source `a8b1818979a3577b8f6031eb5b2b0efac977c660`) tetap tersedia.
Rollback tidak dijalankan. Tidak ada migration pada delta rilis;111 migration
Platform dan schema fingerprint tidak berubah. Tidak ada DB restore/migrate-down
production. Restore disposable menggunakan MySQL8.4.9; produksi dan CI Linux8.4.11.

Fresh encrypted backup/checksum/offsite roundtrip dan exact candidate restore PASS.
Independent cleanup inspection kemudian menemukan dua redo log disposable lokal
masih tersisa, walaupun dump SQL/tabel restore dibersihkan dan server berhenti.
Native receipt menyatakan no-plaintext, tetapi pernyataan tersebut belum diterima
sebagai penutupan final. Automatic command approval review menolak penghapusan
rekursif dan dua file spesifik, dengan alasan generic blocked by policy.
Tidak ada bypass/jalur penghapusan lain. **Next action tunggal untuk penutupan
recovery: bersihkan dua file owned secara lokal dan read-back**; aplikasi tidak
perlu dideploy ulang. Backup terenkripsi dan pekerjaan lama pengguna dipertahankan.

## Validasi yang benar-benar dijalankan

- Lokal scoped Platform174test/1882assertions; payment-neighbor55test/637assertions;
  S3913test/132assertions. Cohort overlap, tidak dijumlahkan sebagai full suite.
- Native Bash syntax dan lima behavioral guard Linux PASS; PowerShell parse0error.
- [CI exact final](https://github.com/notyourgas/sagabook/actions/runs/39121988311):
  MySQL8.4 Platform Contract **PASS**, termasuk fresh migration, full Platform,
  staging/adapter, SagaView dan SagaBook stock regression; **test-and-visual PASS**,
  termasuk full Laravel serta browser gates. Aggregate **FAIL** karena isolated
  Saga AI dependency audit di luar runtime yang dipromosikan. Warning/deprecation
  historis tetap tercatat; audit PHP candidate0advisory.
- Runtime service/HTTPS/source/artifact/config/schema/rollback PASS. Signed read
  readiness200, nonce replay401, product-isolation403 dan nonexistent synthetic
  reference404. Tidak membuat payment atau membaca transaksi customer.
- Browser entry unauthenticated desktop1440x900/mobile390x844: enam halaman PASS,
  enam screenshot diinspeksi. Studio provenance, unique CSP nonce/no-store dan
  worker asset PASS. Ini bukan authenticated operator/Owner atau printer UAT.

## Batas aktivasi

Provider mode `controlled_trial`, limit dan callback produksi dipertahankan.
Tidak ada provider/account/DNS/credential change, transaksi/pesan nyata, pilot
atau business-data correction. Studio tetap estimate-only dan originals lokal;
Card/live-import mengikuti konfigurasi sebelumnya. Human UAT baru, provider live
acceptance dan perangkat/printer tetap OPEN. BUSINESS_READY tidak diklaim.
