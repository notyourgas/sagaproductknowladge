# SagaFin Dossier

## Tujuan dokumen

Menjaga semantics finance, product scope, business questions, technical
boundary, sales, dan content SagaFin tetap konsisten.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `UNVERIFIED` untuk current public runtime; beberapa workflow
  `LOCAL_VALIDATED`
- Activation: `NEEDS CONFIRMATION`
- Business readiness: `BLOCKED`

## Overview produk

Finance tracker personal mobile-first Indonesia. Finance Tracker Go adalah
produk yang sama.

## Masalah yang diselesaikan

Transaksi tersebar, transfer/tarik tunai salah dihitung, hasil OCR langsung
mengubah laporan, dan personal/business bercampur.

## Target pengguna

Young professional, mahasiswa/anak kos, freelancer, dan pemilik usaha kecil.

## Persona pengguna

- Pengguna harian: input cepat dan saldo jelas.
- Reviewer: memverifikasi OCR/import.
- Freelancer/owner: memisahkan workspace personal dan bisnis.

## Value proposition

> Catat → Review → Setujui → Budget dan Laporan.

## Use case

Manual transaction, review receipt/import, transfer internal, cash withdrawal,
budget, dashboard, split bill, dan export.

## Fitur utama

Google login/Supabase, onboarding, transaction review, category, budget,
receipt/OCR bila environment tersedia, Split Bill MVP, dan CSV export.

## Fitur MVP

Semantics transaction yang auditable, Review sebelum laporan, personal/business
workspace separation, budget, dan export. Gmail/Sheets/PDF profesional bukan
fitur aktif terverifikasi.

## Roadmap

1. Verify current production URL/release/provider.
2. Finalize review workspace dan bank statement journey.
3. Close privacy/deletion/retention.
4. Decide pricing/OCR limits.
5. Provider acceptance untuk Gmail/Sheets bila tetap diprioritaskan.

## User journey

Onboarding → buat account/workspace → catat/import → Review → approve →
budget/report → correction/export.

## User flow

Expense/income memengaruhi report; transfer internal dan tarik tunai bukan
spending aktual; adjustment menjelaskan selisih.

## Business model

`OWNER DECISION`: belum final. Freemium/subscription dan OCR quota hanya
rekomendasi historis sampai dikonfirmasi.

## Pricing

`OWNER DECISION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: competitor research. Kategori: manual expense tracker,
bank-connected tracker, budgeting app, spreadsheet, dan e-wallet summary.

## Diferensiasi produk

`RECOMMENDATION`: semantics Indonesia, Review-first OCR/import, transfer/tarik
tunai yang benar, salary-cycle budget, dan AI as assistant.

## Brand positioning

Finance tracker yang membantu mengambil keputusan, bukan sekadar menyimpan
catatan.

## Messaging

- “Setiap angka punya sumber dan status review.”
- “Transfer bukan pengeluaran.”
- “AI membantu; keputusan tetap pada pengguna.”

## FAQ

**Apakah OCR otomatis masuk laporan?** Tidak; masuk Review.
**Apakah tarik tunai expense?** Tidak sampai cash dibelanjakan.
**Apakah Gmail sync aktif?** Belum boleh diklaim.

## Technical overview

PWA/mobile-first dengan Supabase Auth, PostgreSQL, RLS, Storage, dan Edge
Functions pada design yang tercatat. Current runtime perlu verifikasi ulang.

## Integrasi

Google login tertera; OCR, Gmail, Sheets, dan future statement import memiliki
status berbeda dan tidak boleh digeneralisasi.

## Data yang digunakan

User/workspace, financial account, transaction, transfer pair, category,
budget, receipt metadata, review decision, import source, dan audit provenance.

## Risiko dan asumsi

Financial correctness, RLS, deletion, provider access, OCR confidence, dan
stale production evidence adalah risiko utama.

## KPI dan success metrics

`RECOMMENDATION`: onboarding completion, first approved transaction, review
accuracy, correction rate, weekly active review, budget adherence, export, dan
retention. Target `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Transfer bukan expense; OCR harus direview; salary-cycle budget; personal vs
business workspace.

## Contoh caption

`RECOMMENDATION`: “Tarik tunai belum tentu pengeluaran. SagaFin memisahkan
perpindahan uang dari uang yang benar-benar dipakai.”

## Ide campaign

`ASSUMPTION`: “7 Hari Rapikan Arus Uang” sebagai education series, bukan klaim
trial sampai contract diputuskan.

## Sales talking points

Demo semantics dan review; jangan menjual integrasi Gmail/OCR provider sebagai
aktif tanpa runtime evidence.

## Objection handling

- “Bank app sudah punya laporan”: fokus pada lintas account, review, category,
  dan personal/business context.
- “Takut AI salah”: AI suggestion masuk Review dan dapat dikoreksi.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagafin).
