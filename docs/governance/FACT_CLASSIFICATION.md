# Klasifikasi Fakta

## Tujuan

Menetapkan bahasa bersama agar manusia dan AI tidak mencampur fakta, keputusan,
asumsi, rekomendasi, dan pekerjaan yang belum selesai.

## Konteks

Label berlaku untuk semua dokumen dan jawaban AI yang menggunakan repository.

## Label kanonik

| Label | Arti | Boleh menjadi klaim? |
|---|---|---|
| `FACT` | Didukung source/release/runtime/policy yang dapat ditelusuri. | Ya, sesuai ruang lingkup buktinya. |
| `OWNER DECISION` | Keputusan eksplisit founder. | Ya, sebagai keputusan; implementasi tetap perlu bukti. |
| `ASSUMPTION` | Dugaan kerja sementara. | Tidak. |
| `RECOMMENDATION` | Saran berdasarkan analisis. | Tidak sebagai fakta. |
| `NEEDS CONFIRMATION` | Informasi ada tetapi belum cukup pasti. | Tidak. |
| `TODO` | Pekerjaan yang belum dikerjakan. | Tidak. |
| `SUPERSEDED` | Informasi lama digantikan keputusan/fakta baru. | Hanya untuk sejarah. |

## Aturan

1. Angka harga, limit, tanggal, KPI, URL live, provider, dan status release
   harus memiliki provenance.
2. Test lokal tidak membuktikan production.
3. Mock, fixture, dummy, log lokal, atau simulation tidak membuktikan provider.
4. Rekomendasi kompetitor/positioning harus ditandai sampai founder menerima.
5. Pertanyaan terbuka juga dicatat di root [GAPS](../../GAPS.md).
