# Deployment Process

## Tujuan

Menetapkan gate release yang dapat diaudit.

## Konteks

Gate berlaku untuk source product; knowledge repository sendiri mengikuti
validator, review, commit, push, dan remote verification.

## Gate wajib

1. Target/domain/service terverifikasi.
2. Exact source/release immutable.
3. Working tree bersih dan provenance jelas.
4. Build, test, security, QA, dan acceptance hijau.
5. Migration direhearsal.
6. Backup dan restore terbukti.
7. Rollback tersedia.
8. Provider production nyata terverifikasi bila termasuk scope.
9. Monitoring/alerting aktif.
10. Public smoke pascadeploy hijau.

## Status

- Gagal satu gate: `IMPLEMENTED_NOT_DEPLOYED` atau `BLOCKED`.
- Deploy tanpa activation provider: `PRODUCTION_DEPLOYED`, bukan otomatis
  `PRODUCTION_ACTIVATED`.
- Business-ready membutuhkan onboarding, support, recovery, billing, dan
  penggunaan nyata.

## Evidence publik

Repository ini hanya menyimpan ringkasan public-safe: release ID, source commit,
hasil gate, URL publik, rollback release, dan blocker non-sensitif.
