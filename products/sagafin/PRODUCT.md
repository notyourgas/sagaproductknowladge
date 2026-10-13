# SagaFin Product Knowledge

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| application | [Source](https://github.com/notyourgas/SAGAFIN/tree/source/current) | `e775b5a0dccbd5eac82d82975c26b87499170f02` | `SOURCE_PUSHED` |

Repo kanonik SAGAFIN dan exact source `e775b5a` terverifikasi. Worktree lokal lama yang mengandung perubahan tidak ditimpa. Verifikasi source tidak memperbarui klaim runtime, provider, pricing atau kesiapan finansial yang masih membutuhkan bukti/keputusan.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

Updated: 31 Juli 2026
Evidence status: controlled public trial + product planning

## Tujuan dokumen

Menjadi ringkasan semantics dan fakta SagaFin. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#sagafin).

## Konteks

Semantics produk telah diputuskan, sedangkan current public runtime, provider,
dan pricing masih perlu verifikasi/keputusan.

## Ringkasan

SagaFin adalah finance tracker personal mobile-first berbahasa Indonesia.

Core flow:

> Catat -> Review -> Setujui -> Budget dan Laporan.

Finance Tracker Go dan SagaFin adalah produk yang sama.

## Prinsip produk

- Input cepat.
- Setiap angka dapat dilacak sumbernya.
- AI membantu, bukan menyimpan keputusan tanpa konfirmasi.
- Fitur inti tetap dapat dipakai ketika AI bermasalah.
- Personal dan business workspace terpisah.
- Kompleksitas teknis tidak ditampilkan ke pengguna.

## Aturan transaksi penting

- Expense mengurangi saldo dan masuk pengeluaran.
- Income menambah saldo dan masuk pemasukan.
- Transfer mengurangi sumber dan menambah tujuan, tetapi tidak masuk
  pengeluaran/pemasukan.
- Tarik tunai bukan pengeluaran aktual; pengeluaran terjadi saat uang cash
  digunakan.
- Adjustment menjelaskan selisih saldo.
- Hasil scan/import masuk Review sebelum memengaruhi laporan.

## Target pengguna

- Young professional pengguna e-wallet/QRIS.
- Mahasiswa/anak kos.
- Freelancer.
- Pemilik usaha kecil yang memisahkan personal dan bisnis.

## Fitur yang tersedia/terbukti

- Google login melalui Supabase.
- Onboarding.
- Manual transaction dan Review.
- Category, budgeting, dashboard.
- Receipt photo/upload dan OCR bila environment tersedia.
- Split Bill MVP.
- CSV export.
- Supabase Auth, PostgreSQL, RLS, Storage, dan Edge Functions.

## Fitur yang belum boleh diklaim aktif

- Gmail sync membaca inbox nyata.
- Google Sheets sync.
- Server-side professional PDF.
- Final bank statement import journey.
- Legal account deletion/retention SLA.
- Pricing final.

## Status saat ini

Headline evidence status: `UNVERIFIED`. `CONTROLLED_PUBLIC_TRIAL` dipertahankan
sebagai fase bisnis yang pernah dilaporkan, bukan bukti runtime saat ini.

- Product documentation mencatat PWA live di Vercel dan backend Supabase.
- Production provider/environment harus diverifikasi ulang sebelum klaim baru.
- Pricing final belum dikunci; angka PRD lama hanya rekomendasi historis.

## Ide konten

- Kenapa transfer dan tarik tunai bukan pengeluaran.
- Mengapa OCR harus masuk Review.
- Budget berdasarkan salary cycle.
- Finance tracker sebagai alat keputusan, bukan sekadar catatan.
