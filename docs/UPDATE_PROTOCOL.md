# Saga Product Knowledge Update Protocol

## Kapan wajib update

Knowledge wajib diperbarui ketika terjadi salah satu kondisi:

- fitur customer/operator ditambah, dihapus, atau diubah;
- UI/UX utama berubah;
- pricing, paket, limit, trial, atau entitlement berubah;
- workflow bisnis atau permission berubah;
- backend, database, provider, atau integrasi berubah;
- bug penting diperbaiki;
- status local, staging, production, atau business readiness berubah;
- domain, URL, release, atau deployment target berubah;
- blocker atau residual risk berubah;
- positioning, ICP, sales promise, atau content angle berubah.

Perubahan test, refactor, tooling, dan dokumentasi saja cukup dicatat bila
menutup blocker release penting. Jangan menjadikannya headline produk bila tidak
ada dampak user atau bisnis.

## Urutan update

1. Verifikasi source project, exact commit, dan status release.
2. Identifikasi dampak user/bisnis: `before -> after`.
3. Perbarui `products/<product>/PRODUCT.md`.
4. Tambahkan entri terbaru di `products/<product>/CHANGELOG.md`.
5. Tambahkan ringkasan lintas-produk di
   `changelog/PORTFOLIO_CHANGELOG.md`.
6. Perbarui `CHATGPT_MASTER_KNOWLEDGE.md` bila fakta kanonik berubah.
7. Jalankan validator.
8. Commit dengan format:

   ```text
   knowledge(<product>): sync <perubahan singkat>
   ```

9. Push ke branch `main`.

## Minimum changelog entry

- tanggal;
- status akhir;
- before -> after;
- dampak pengguna/bisnis;
- source commit/release bila public-safe;
- validasi ringkas;
- production berubah atau tidak;
- blocker/next action.

## Batas data publik

Jangan pernah memasukkan:

- password, token, secret, API key, HMAC key, cookie, session, private key;
- customer name, phone, email, address, foto, booking code, payment reference;
- raw webhook/callback/receipt;
- production database dump;
- tenant ID, organization ID, device ID, private evidence path;
- internal vulnerability detail yang dapat mempermudah serangan.

Gunakan agregat dan status, misalnya:

- benar: `callback exactly-once terverifikasi`;
- salah: menyalin payload callback mentah.

## Konflik sumber

Prioritas source of truth:

1. keputusan terbaru Andreas;
2. production release dan runtime evidence terbaru;
3. canonical product contract/decision log;
4. source implementation dan tests;
5. historical docs;
6. rekomendasi.

Jika sumber berbeda, jangan memilih diam-diam. Tandai konflik dan gunakan fakta
yang paling baru serta paling kuat.
