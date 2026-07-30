# SagaFin Product Knowledge

Updated: 31 Juli 2026
Evidence status: controlled public trial + product planning

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

Status: `CONTROLLED_PUBLIC_TRIAL`.

- Product documentation mencatat PWA live di Vercel dan backend Supabase.
- Production provider/environment harus diverifikasi ulang sebelum klaim baru.
- Pricing final belum dikunci; angka PRD lama hanya rekomendasi historis.

## Ide konten

- Kenapa transfer dan tarik tunai bukan pengeluaran.
- Mengapa OCR harus masuk Review.
- Budget berdasarkan salary cycle.
- Finance tracker sebagai alat keputusan, bukan sekadar catatan.
