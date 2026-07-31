# Source Registry

## Tujuan

Menjelaskan jenis source of truth dan provenance public-safe. Repository ini
tidak mempublikasikan task ID, checkout lokal, worktree, atau private evidence
path.

Evidence cut-off: 31 Juli 2026

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

## Internal source lookup

`NEEDS CONFIRMATION`: public GitHub URL per source product belum lengkap.
Agent internal harus resolve repository, checkout, branch, and junction at
runtime; lokasi tersebut tidak disalin ke repository publik.

## Source priority

1. Keputusan terbaru Andreas.
2. Active production release.
3. Canonical decision log/contract.
4. Source dan tests terbaru.
5. Historical docs.

Jika ada konflik, catat di [GAPS](../GAPS.md) dan jangan memilih diam-diam.
