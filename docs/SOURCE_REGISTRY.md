# Source Registry

Evidence cut-off: 31 Juli 2026

Path lokal hanya dipakai untuk agent SagaDev. Path bukan bagian dari klaim
public product dan dapat berubah karena junction/worktree.

| Produk | Task utama | Source/root aktual | Source knowledge utama |
|---|---|---|---|
| SagaBook | `019e88f5-2c23-7c12-a847-ec1f129ef485` | `D:\Andreas Projects\SOFTWARE NEW\.codex-worktrees\shared-tokopay-commerce-track` | `docs/planner agent.md`, release data, runbooks |
| SagaView | `019f9382-09ae-7dc0-ab55-031996c26419` | `D:\Andreas Projects\WEBAPP PREVIEW SELF\sagaview-single-device-production` dan `sagaview-single-device-client` | SagaView working knowledge, commerce track, release evidence |
| SagaBio | `019f2396-d05d-7cb1-98ab-a60152ffeeb9` | `D:\Andreas Projects\SAGADEVS\apps\sagabio` | `docs/product/IMPLEMENTATION_PACKAGE_INDEX.md` |
| SagaMenu | `019f287a-ab59-7842-bfa1-870af92608f8` | `D:\Andreas Projects\SAGADEVS\site\sagamenu` | `wave-1-4-implementation.md`, `sprint-5-pilot-closure.md` |
| SagaFin | `019f16e7-fc58-75d0-822e-201b66813cad` | `D:\Andreas Projects\FINANCE ANDREAS\finance-tracker-prototype` | Master PRD dan Landing Page Production Pack |
| COYABAG | `019ed5ec-8ebb-7251-9088-be234f50d41c` | `D:\Andreas Projects\SAGADEVS\site\coyabag` | `docs/production-readiness.md` dan finalization reports |
| AOGTICVITY | `019f9e4c-4fd5-76e2-956d-9d61afcaf778` | `D:\Andreas Projects\SAGADEVS\apps\olimpiade-kemerdekaan` | `docs/product-lock.md` dan backend handoff |
| Saga Platform | Platform coordination | Fondasi platform pada SagaBook dan docs Saga Platform | `docs/apps/saga-platform` |
| SagaOPS | Belum dikunci di monitoring utama | `D:\Andreas Projects\SAGADEVS\backend\sagaops` dan prototype | `docs/apps/coffeeshop-management` |
| Saga AI | Platform coordination | Service/docs pada platform workspace | ADR dan knowledge contracts |

## Junction

`C:\Users\Windows 11\Documents\...` dapat menunjuk ke
`D:\Andreas Projects\...`. Agent wajib resolve path dan tidak menghitung dua
path tersebut sebagai dua project.

## Source priority

1. Keputusan terbaru Andreas.
2. Active production release.
3. Canonical decision log/contract.
4. Source dan tests terbaru.
5. Historical docs.
