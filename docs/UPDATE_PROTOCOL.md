# Saga Product Knowledge Update Protocol

## Tujuan

Menutup setiap informasi atau perubahan material menjadi knowledge publik yang
konsisten, dapat diaudit, dan sudah tersedia di branch `main`.

## Konteks

Repository ini adalah single source of truth permanen untuk product, business,
technical, marketing, dan operational knowledge Saga. Protokol berlaku untuk
informasi founder, hasil audit, perubahan source/release, riset, dan koreksi
knowledge.

## Prasyarat sebelum edit

1. Pastikan working tree bersih.
2. Jalankan:

   ```powershell
   git switch main
   git pull --ff-only origin main
   git status --short --branch
   ```

3. Verifikasi local `HEAD` sama dengan `origin/main`.
4. Bila working tree kotor, pull gagal, atau ada konflik, berhenti
   fail-closed. Jangan overwrite, force push, atau menghapus histori.
5. Untuk perubahan produk, verifikasi source commit/release dan status runtime
   aktual. Percakapan atau memory lama bukan satu-satunya bukti.

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

## Klasifikasi informasi

Gunakan tepat satu label dari
[Klasifikasi Informasi](governance/FACT_CLASSIFICATION.md):

- `CONFIRMED`;
- `ASSUMPTION`;
- `PROPOSAL`;
- `NEEDS CONFIRMATION`;
- `DEPRECATED`.

Hanya `CONFIRMED` yang boleh mengganti fakta kanonik. `TODO` hanya menandai
pekerjaan yang belum selesai.

## Analisis dampak wajib

Sebelum menulis, periksa apakah informasi memengaruhi:

- overview dan masalah yang diselesaikan;
- fitur utama, fitur MVP, dan roadmap;
- pricing, paket, limit, trial, billing, dan business model;
- positioning, messaging, FAQ, sales, objection handling, dan content;
- user journey, user flow, UI/UX, permission, dan support;
- technical overview, data, integrasi, privacy, security, dan deployment;
- KPI, risiko, asumsi, status release, activation, dan business readiness;
- produk lain, account boundary, platform, atau standar lintas produk.

Jangan memperbarui satu dokumen jika fakta yang sama muncul di dokumen lain.

## Urutan update

1. Catat informasi diterima, sumber, tanggal, klasifikasi, dan provenance.
2. Verifikasi source project, exact commit/release, dan status runtime jika
   relevan.
3. Identifikasi `before -> after` serta dampak pengguna dan bisnis.
4. Jalankan analisis dampak di atas.
5. Perbarui semua dokumen yang terdampak:
   - `products/<product>/PRODUCT.md` untuk fakta ringkas;
   - `products/<product>/DOSSIER.md` untuk detail produk;
   - `products/<product>/CHANGELOG.md` untuk riwayat produk;
   - `changelog/PORTFOLIO_CHANGELOG.md` untuk ringkasan lintas produk;
   - `CHATGPT_MASTER_KNOWLEDGE.md` untuk fakta kanonik lintas produk;
   - `DECISIONS.md` untuk keputusan founder/governance;
   - `GAPS.md` untuk konflik, unknown, atau keputusan terbuka;
   - `README.md` dan `INDEX.md` bila struktur atau cara pakai berubah;
   - `SYNC_STATUS.md` untuk snapshot sinkronisasi terakhir.
6. Tambahkan entri ke root `CHANGELOG.md`.
7. Review diff untuk duplikasi, konflik, klaim berlebihan, dan data restricted.
8. Jalankan:

   ```powershell
   ./scripts/validate-knowledge.ps1
   git diff --check
   ```

9. Stage perubahan dan ulangi validator terhadap state yang akan dikomit.
10. Commit dengan format yang jelas:

   ```text
   knowledge(<product>): sync <perubahan singkat>
   docs: <perubahan tata kelola singkat>
   ```

11. Push ke branch `main`.
12. Verifikasi local `HEAD` sama dengan `origin/main`, working tree bersih, dan
    file raw GitHub utama dapat dibaca.
13. Laporkan SHA immutable, branch, file terdampak, status push, konflik, dan
    item menunggu konfirmasi.

## Minimum changelog entry

- tanggal;
- ringkasan perubahan;
- alasan perubahan;
- produk atau area terdampak;
- file terdampak;
- klasifikasi informasi;
- sumber atau pemberi keputusan;
- source commit/release bila public-safe;
- status delivery/activation/business readiness bila relevan;
- production berubah atau tidak;
- blocker dan next action.

Commit tidak dapat menyimpan hash dirinya sendiri tanpa mengubah hash tersebut.
Karena itu root changelog boleh menggunakan `main HEAD`; SHA final wajib
dilaporkan setelah push dan dapat dilihat di Git/GitHub.

## Decision log

Keputusan founder atau governance yang `CONFIRMED` wajib masuk ke
[DECISIONS](../DECISIONS.md) dengan:

- ID unik berurutan;
- tanggal;
- topik;
- keputusan;
- alasan;
- alternatif;
- dampak;
- pemberi keputusan;
- status;
- dokumen terkait.

Keputusan lama yang diganti tidak dihapus. Ubah menjadi `DEPRECATED` dan
tautkan keputusan pengganti.

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
6. proposal atau riset.

Jika sumber berbeda:

1. jangan memilih atau menghapus diam-diam;
2. pertahankan informasi lama yang masih relevan;
3. tandai konflik sebagai `NEEDS CONFIRMATION`;
4. catat konflik di [GAPS](../GAPS.md);
5. hanya ganti kontrak aktif ketika informasi baru `CONFIRMED`;
6. tandai kontrak lama `DEPRECATED` bila sudah diganti.

## Laporan sinkronisasi

Laporan akhir minimal memuat:

- status: `accepted`, `partially accepted`, `needs clarification`, atau
  `rejected`;
- informasi yang diterima dan klasifikasinya;
- file yang dibuat/diperbarui;
- dokumen terdampak;
- konflik dan item menunggu konfirmasi;
- branch dan commit SHA;
- status push;
- hasil validator/link/public-safety/diff check;
- risiko terbuka.
