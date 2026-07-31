# Tata Kelola Saga Product Knowledge

## Tujuan

Menjaga repository sebagai single source of truth publik yang dapat dipercaya
oleh manusia dan AI tanpa membocorkan informasi operasional sensitif.

## Konteks

Repository ini adalah sumber kanonik permanen untuk manusia dan AI agent.
Percakapan, memory, atau dokumen produk lain menjadi sumber masukan, tetapi
kontrak knowledge publik aktif berada di repository ini.

## Cakupan

- Fakta produk, workflow, pricing, trial, positioning, dan readiness.
- Ringkasan release material dan blocker publik.
- Strategi, sales, marketing, FAQ, dan konten.
- Standar teknis lintas produk yang aman dipublikasikan.

## Tidak boleh disimpan

- Secret, credential, token, private key, atau environment value.
- PII customer/staff, tenant/device/account identifier, database dump.
- Raw receipt/callback, private evidence path/URL, atau payload provider.
- Detail vulnerability yang dapat dieksploitasi.

## Sumber kebenaran

1. Keputusan owner terbaru yang terdokumentasi.
2. Source commit atau release immutable.
3. Runtime evidence yang terikat pada release tersebut.
4. Dokumen produk lokal yang memiliki provenance.
5. Proposal/riset hanya sebagai input, bukan fakta.

Hanya informasi `CONFIRMED` yang boleh mengganti fakta kanonik. Konflik atau
informasi belum cukup masuk ke `GAPS.md`.

## Tanggung jawab dokumen

- `CHATGPT_MASTER_KNOWLEDGE.md`: ringkasan lintas produk, bukan detail.
- `PRODUCT.md`: fakta kanonik dan status ringkas satu produk.
- `DOSSIER.md`: konteks lengkap product, UX, business, technical, sales, dan
  content.
- `CHANGELOG.md`: sejarah perubahan; tidak menjadi current-state contract.
- Root `GAPS.md`: unknown, asumsi, dan keputusan founder.
- Root `DECISIONS.md`: keputusan founder/governance yang dapat diaudit.
- Root `SYNC_STATUS.md`: snapshot pembaruan terakhir dan kesehatan sinkronisasi.
- Root `README.md` dan `INDEX.md`: cara pakai dan navigasi kanonik.

Jika informasi berulang, versi rinci berada di dossier dan versi ringkas harus
menautkannya, bukan menciptakan kontrak baru.

## Siklus perubahan

1. Pastikan working tree bersih dan `git pull --ff-only origin main` berhasil.
2. Verifikasi informasi dan klasifikasikan sesuai label kanonik.
3. Lakukan impact analysis lintas dokumen dan lintas produk.
4. Perbarui seluruh dokumen product/current-state yang terdampak.
5. Perbarui changelog produk, portfolio, dan root.
6. Perbarui decision log, gap register, master knowledge, serta sync status.
7. Jalankan validator, relative-link check, public-safety scan, dan
   `git diff --check`.
8. Commit dan push `main` terpisah dari source product.
9. Verifikasi remote dan laporkan SHA immutable.

Keputusan atau kontrak lama tidak dihapus ketika diganti. Tandai
`DEPRECATED` dan rujuk penggantinya.

## Review

- Review terjadwal: `NEEDS CONFIRMATION` — cadence belum diputuskan.
- Owner knowledge governance: Andreas.
- Technical editor: Codex/agent yang menjalankan update protocol.
