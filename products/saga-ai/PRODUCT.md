# Saga AI Product Knowledge

Updated: 31 Juli 2026
Evidence status: planned/foundation

## Ringkasan

Saga AI adalah knowledge, retrieval, support, dan intelligence layer untuk
produk SagaDev.

Saga AI harus grounded pada dokumen yang disetujui, status release aktual, dan
permission user. Ia tidak boleh mengarang fitur, pricing, provider status, atau
data transaksi.

## Target capability

- Product support assistant.
- Grounded knowledge retrieval.
- Operator troubleshooting.
- Content/product ideation dari source kanonik.
- Insight/summary yang permission-aware.
- Future approved tools per produk.

## Guardrail

- Jawaban top-one grounded pada knowledge yang disetujui.
- Fakta dan rekomendasi dibedakan.
- Status local/staging/production disebut eksplisit.
- Tidak mengirim credential atau PII ke model.
- Data satu produk tidak otomatis tersedia untuk produk lain.
- Data-changing action membutuhkan tool contract dan confirmation.

## Hubungan dengan repository ini

Repository Saga Product Knowledge menjadi sumber public-safe untuk:

- positioning;
- fitur;
- workflow;
- pricing/trial yang sudah disetujui;
- changelog;
- status readiness;
- batas klaim;
- ide konten dan fitur.

Operational/private knowledge tetap harus berada pada store restricted dengan
permission yang berbeda.

## Status saat ini

Status: `PLANNED/FOUNDATION`.

- PRD, architecture direction, dan knowledge contracts tersedia.
- Beberapa service/support experiment ada di workspace.
- Belum boleh disebut produk AI publik yang production-activated.

## Ide konten

- AI yang grounded vs AI yang mengarang.
- Mengapa product knowledge perlu versioning.
- Permission-aware support untuk SaaS portfolio.
