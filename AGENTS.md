# Saga Product Knowledge Agent Contract

## Tujuan

Menetapkan kontrak kerja agent saat membaca atau memperbarui repository.

## Konteks

Repository ini adalah single source of truth permanen dan publik, bukan source
code aplikasi. Setiap perubahan knowledge harus dapat ditelusuri sampai
keputusan atau evidence yang sesuai.

## Kontrak pembaruan

Setiap agent yang menerima informasi baru atau menyelesaikan perubahan material
pada produk SagaDev wajib:

1. Membaca `docs/UPDATE_PROTOCOL.md`, `docs/STATUS_LEGEND.md`, dan
   `docs/governance/FACT_CLASSIFICATION.md`.
2. Memastikan working tree bersih, berpindah ke `main`, lalu menjalankan
   `git pull --ff-only origin main`.
3. Mengklasifikasikan informasi sebagai `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`,
   `NEEDS CONFIRMATION`, atau `DEPRECATED`.
4. Memverifikasi source commit/release/runtime ketika klaim menyangkut
   implementasi atau production.
5. Melakukan impact analysis terhadap product, pricing, roadmap, UI/UX,
   business, sales, content, technical, integration, status, dan produk lain.
6. Memperbarui seluruh dokumen terdampak, bukan hanya satu file.
7. Memperbarui `DECISIONS.md` untuk keputusan, `GAPS.md` untuk unknown/conflict,
   root `CHANGELOG.md` untuk audit trail, dan `SYNC_STATUS.md` untuk snapshot.
8. Menjalankan `scripts/validate-knowledge.ps1` dan `git diff --check`.
9. Commit dan push ke `main` hanya setelah seluruh gate lulus.
10. Memverifikasi local `HEAD` sama dengan `origin/main` dan melaporkan SHA
    immutable serta status push.

Hanya `CONFIRMED` yang boleh mengganti fakta kanonik. Informasi lama yang sudah
diganti tetap dipertahankan sebagai `DEPRECATED` bila relevan secara historis.

## Safety

- Repository bersifat publik dan akan diberikan kepada ChatGPT.
- Dilarang menyimpan credential, secret, token, PII, raw receipt/callback,
  database dump, private URL, account identifier, device identifier, atau
  evidence restricted.
- Gunakan status dari `docs/STATUS_LEGEND.md`.
- Gunakan label dari `docs/governance/FACT_CLASSIFICATION.md`.
- Fitur yang hanya local/staging tidak boleh ditulis sebagai production.
- Bila bukti belum ada, gunakan `UNVERIFIED` atau `BLOCKED`.
- Jangan force push, menghapus histori, atau menimpa working tree yang kotor.

## Writing style

- Bahasa Indonesia sederhana.
- Ringkas tetapi konkret.
- Bedakan `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`, `NEEDS CONFIRMATION`, dan
  `DEPRECATED`.
- Sertakan tanggal cut-off bukti.
- Jangan menyalin log teknis panjang; rangkum dampak pengguna dan bisnis.
