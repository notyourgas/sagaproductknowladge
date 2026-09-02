# Source Registry

## Tujuan

Menjelaskan jenis source of truth dan provenance public-safe. Repository ini
tidak mempublikasikan task ID, checkout lokal, worktree, atau private evidence
path.

Evidence cut-off: 3 September 2026

## Konteks

Source lookup rinci tetap internal; dokumen publik hanya menyimpan kategori dan
prioritas evidence.

| Produk | Source kategori | Knowledge kategori |
|---|---|---|
| SagaBook | Canonical source repository dan immutable production release | Product contract, changelog, release summary, runbook |
| SagaView | Backend, Studio frontend, dan immutable production releases | Product contract, changelog, public-safe release evidence |
| SagaBio | Canonical application source | Implementation package dan product docs |
| SagaMenu | Canonical application source | Wave/sprint docs, changelog, release contract |
| SagaFin | Canonical application/prototype source | PRD, decision log, release evidence |
| COYABAG | Storefront dan operations backend source | Production readiness dan owner-approved catalog/policy |
| AOGTICVITY | Canonical event application source | Product lock, backend handoff, UAT/release evidence |
| Saga Platform | Control-plane source and product adapters | ADR, product contracts, migration/release evidence |
| SagaOPS | Prototype/domain/backend source | Product contract, acceptance, outlet pilot evidence |
| Saga AI | Knowledge/retrieval service source | ADR, evaluation, permission/tool contracts |

## SagaView source manifest saat ini

| Peran | Exact source | Status |
|---|---|---|
| Kandidat backend S380 | `129ed92a5cc9c5c199fb4082660e76ff7b12b74c` | `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / PHYSICAL_UAT_EXACT_PAIR_PENDING` |
| Kandidat dan production Studio | `8257f491bc0866bd0de814d0f3cd3e9dd6336b85` | Candidate compatible; production release `20260831081456-8257f49` |
| Production backend | `5f642d83a9d23091f29cc356b2041bc310338812` | Production release `20260831080506-5f642d8` |

Manifest ini hanya mencatat exact source dan status public-safe. Tidak ada
deployment S380; physical UAT exact pair masih pending dan
`BUSINESS_READY=false`.

## Internal source lookup

`NEEDS CONFIRMATION`: public GitHub URL per source product belum lengkap.
Agent internal harus resolve repository, checkout, branch, and junction at
runtime; lokasi tersebut tidak disalin ke repository publik.

## Source priority

1. Keputusan terbaru Andreas.
2. Active production release.
3. Canonical decision log/contract.
4. Source dan tests terbaru.
5. Arsip lama yang sudah ditandai `DEPRECATED`.

Jika ada konflik, catat di [GAPS](../GAPS.md) dan jangan memilih diam-diam.
