# Saga AI Dossier

## Tujuan dokumen

Mendefinisikan Saga AI sebagai grounded knowledge/intelligence layer dan
mencegah klaim capability yang belum dibangun.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `PLANNED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`

## Overview produk

Knowledge, retrieval, support, dan intelligence layer untuk produk Saga.

## Masalah yang diselesaikan

Knowledge tersebar, status cepat stale, support berulang, dan AI berisiko
mengarang fakta/akses lintas produk.

## Target pengguna

Internal product/support/content operator dan future product users sesuai
permission.

## Persona pengguna

- Founder: brainstorming grounded.
- Support: troubleshooting sesuai release.
- Content operator: ide dari fakta produk.
- Product user: future assistant terbatas pada data/role yang diizinkan.

## Value proposition

AI yang grounded pada knowledge disetujui, status evidence, dan permission.

## Use case

Product Q&A, support guidance, content ideation, release summary, gap analysis,
dan future approved tools.

## Fitur utama

Target capability terdapat di [PRODUCT](PRODUCT.md); belum boleh dianggap
production product.

## Fitur MVP

Read-only retrieval public knowledge, citation, stale-status warning, refusal
untuk unknown/sensitive, dan human escalation.

## Roadmap

1. Canonical knowledge repository dan update protocol.
2. Retrieval/evaluation public-safe.
3. Restricted knowledge store dengan permission.
4. Support workflows.
5. Approved data-changing tools dengan confirmation/audit.

## User journey

Pilih konteks produk → ajukan pertanyaan → retrieve source → jawab dengan
status/citation → tampilkan gap/escalation.

## User flow

Query classification → permission check → retrieval → grounding/evaluation →
response/refusal → feedback/audit.

## Business model

`NEEDS CONFIRMATION`: internal capability, bundled add-on, atau standalone product.

## Pricing

`NEEDS CONFIRMATION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: enterprise search, support copilot, knowledge assistant,
RAG platform, dan manual documentation search.

## Diferensiasi produk

Product-specific status/evidence, public/restricted separation, and
permission-aware retrieval across Saga portfolio.

## Brand positioning

Grounded intelligence layer, bukan chatbot yang mengarang.

## Messaging

- “Jawaban mengikuti source dan status release.”
- “Jika fakta belum ada, Saga AI harus mengatakan belum tahu.”

## FAQ

**Apakah AI boleh mengubah data?** Hanya future approved tools dengan
permission/confirmation/audit.
**Apakah semua data produk dibaca?** Tidak.
**Apakah sudah live?** Belum.

## Technical overview

Target: ingestion/versioning, retrieval, permission filter, model gateway,
evaluation, citation, audit, and tool contracts. Architecture final `NEEDS
CONFIRMATION`.

## Integrasi

Repository publik ini, restricted knowledge store, Saga Platform identity/
entitlement, product APIs, model provider, and observability.

## Data yang digunakan

Public product knowledge, approved restricted documents, query/feedback/audit
metadata. PII/transaction data hanya jika use case, consent, retention, dan
permission disetujui.

## Risiko dan asumsi

Hallucination, stale knowledge, prompt injection, data leakage, over-permission,
unsafe tool action, provider retention, and unmeasured answer quality.

## KPI dan success metrics

`PROPOSAL`: grounded accuracy, citation validity, refusal precision,
stale-answer rate, support deflection, escalation quality, latency, and cost.
Target `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Grounded vs generic AI; knowledge versioning; permission-aware support; honest
refusal.

## Contoh caption

`PROPOSAL`: “AI yang terdengar yakin belum tentu benar. Saga AI dirancang
untuk menunjukkan sumber, status, dan batas jawabannya.”

## Ide campaign

`ASSUMPTION`: “Ask the Changelog” demo setelah evaluation publik lulus.

## Sales talking points

Jual trust/evidence/permission, bukan “AI serba bisa”. Jangan menjanjikan
automation atau data access yang belum ada.

## Objection handling

- “Kenapa tidak pakai ChatGPT biasa?”: grounding, status, permission, dan
  domain workflow.
- “Apakah data aman?”: jelaskan boundary; security/privacy final tetap perlu
  evidence.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#saga-ai).
