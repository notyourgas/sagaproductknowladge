# SagaView: pemulihan koneksi layanan akun, 16 Oktober 2026

## Tujuan

Mencatat penyebab, pemulihan dan batas validasi gangguan login SagaView.

## Konteks

Klasifikasi: `CONFIRMED`. Sumber: laporan error Andreas, verifikasi sertifikat,
konfigurasi runtime, integrasi backend dan browser pada 16 Oktober 2026.

Halaman login tetap tersedia, tetapi koneksi akun pusat gagal memverifikasi
sertifikat yang berakhir 15 Oktober 2026 pukul 12.14 WIB. Sertifikat diperbarui
dan berlaku hingga 14 Januari 2027 pukul 13.40 WIB. Perbaikan konfigurasi
renewal dan deploy hook diprovenansikan pada [source infra
99c33e3cbc1f7acdf8f61cab1539d636e925e4ba](https://github.com/notyourgas/sagabook/commit/99c33e3cbc1f7acdf8f61cab1539d636e925e4ba),
branch `codex/platform-identity-tls-20261016`.

Validasi: pemeriksaan Nginx PASS, probe challenge HTTP PASS, renewal native
Certbot PASS, verifikasi TLS dari backend SagaView dan Windows PASS. Integrasi
bertanda tangan serta UI login memakai akun fiktif kini menerima penolakan
kredensial yang benar. Tidak memakai password akun nyata.
Simulasi renewal khusus sertifikat ini, termasuk deploy hook, PASS pada
16 Oktober 2026 pukul 14.45 WIB; sertifikat produksi tetap terpasang.

Status pemulihan infra: `PRODUCTION_DEPLOYED`. Tidak ada release aplikasi,
migration, koreksi data, perubahan pricing atau provider. Studio tetap c3170e0,
backend SagaView af6c139 dan Platform c794ed6. Kandidat SSR afb3211 tetap belum
dirilis. Login positif Andreas, akses perangkat, physical UAT dan business
readiness tidak dibuktikan oleh uji negatif ini.
