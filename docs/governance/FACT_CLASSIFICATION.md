# Klasifikasi Informasi

## Tujuan

Menetapkan bahasa bersama agar manusia dan AI tidak mencampur fakta, asumsi,
usulan, informasi belum pasti, dan kontrak yang sudah tidak berlaku.

## Konteks

Lima label di bawah berlaku untuk seluruh dokumen, laporan, dan jawaban AI yang
menggunakan repository. `TODO` adalah penanda pekerjaan, bukan klasifikasi
informasi.

## Label kanonik

| Label | Arti | Boleh mengganti fakta kanonik? |
|---|---|---|
| `CONFIRMED` | Keputusan eksplisit founder atau fakta yang didukung provenance source, release, runtime, atau policy. | Ya, tetapi hanya dalam ruang lingkup bukti atau keputusan tersebut. |
| `ASSUMPTION` | Interpretasi atau hipotesis kerja sementara. | Tidak. |
| `PROPOSAL` | Saran atau rekomendasi yang belum diterima sebagai keputusan. | Tidak. |
| `NEEDS CONFIRMATION` | Informasi ambigu, belum lengkap, bertentangan, atau masih membutuhkan keputusan/evidence. | Tidak. |
| `DEPRECATED` | Informasi lama yang tidak lagi berlaku dan dipertahankan untuk sejarah. | Tidak; harus menunjuk penggantinya bila ada. |

## Penanda pekerjaan

- `TODO`: tindakan dokumentasi, verifikasi, atau implementasi yang belum
  diselesaikan. Penanda ini tidak boleh dipakai sebagai fakta.

## Aturan

1. Hanya `CONFIRMED` yang boleh mengganti fakta kanonik.
2. Harga, limit, tanggal, KPI, URL live, provider, dan status release wajib
   memiliki provenance yang dapat ditelusuri.
3. Keputusan founder dapat berstatus `CONFIRMED`, tetapi status implementasi
   tetap memerlukan source/release/runtime evidence.
4. Test lokal tidak membuktikan production.
5. Mock, fixture, dummy, log lokal, atau simulation tidak membuktikan provider.
6. Usulan competitor, positioning, pricing, fitur, atau campaign tetap
   `PROPOSAL` sampai diterima.
7. Pertanyaan terbuka dan konflik dicatat di root [GAPS](../../GAPS.md).
8. Informasi yang diganti tidak dihapus tanpa alasan; tandai `DEPRECATED` dan
   tautkan keputusan atau fakta pengganti.

## Migrasi label lama

| Label lama | Normalisasi |
|---|---|
| FACT | `CONFIRMED` bila provenance masih valid. |
| OWNER DECISION | `CONFIRMED` bila keputusan eksplisit dapat ditelusuri. |
| RECOMMENDATION | `PROPOSAL`. |
| SUPERSEDED atau HISTORICAL | `DEPRECATED` bila tidak lagi menjadi kontrak aktif. |
