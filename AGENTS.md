# Saga Product Knowledge Agent Contract

Repository ini adalah knowledge base publik, bukan source code aplikasi.

Setiap agent yang menyelesaikan perubahan material pada produk SagaDev wajib:

1. Membaca `docs/UPDATE_PROTOCOL.md`.
2. Memperbarui `products/<product>/PRODUCT.md`.
3. Menambahkan perubahan ke `products/<product>/CHANGELOG.md`.
4. Menambahkan satu ringkasan ke `changelog/PORTFOLIO_CHANGELOG.md`.
5. Memperbarui `CHATGPT_MASTER_KNOWLEDGE.md` jika positioning, pricing, trial,
   workflow, fitur utama, status release, atau blocker berubah.
6. Menjalankan `scripts/validate-knowledge.ps1`.
7. Commit dan push repository ini hanya setelah source produk terkait sudah
   memiliki commit/release provenance yang jelas.

## Safety

- Repository bersifat publik dan akan diberikan kepada ChatGPT.
- Dilarang menyimpan credential, secret, token, PII, raw receipt/callback,
  database dump, private URL, account identifier, device identifier, atau
  evidence restricted.
- Gunakan status dari `docs/STATUS_LEGEND.md`.
- Fitur yang hanya local/staging tidak boleh ditulis sebagai production.
- Bila bukti belum ada, gunakan `UNVERIFIED` atau `BLOCKED`.

## Writing style

- Bahasa Indonesia sederhana.
- Ringkas tetapi konkret.
- Bedakan fakta, keputusan, rekomendasi, dan rencana.
- Sertakan tanggal cut-off bukti.
- Jangan menyalin log teknis panjang; rangkum dampak pengguna dan bisnis.
