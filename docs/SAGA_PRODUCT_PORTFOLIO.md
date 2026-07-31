# Saga Product Portfolio

Evidence cut-off: 31 Juli 2026
Owner: Andreas / SagaDev

## Tujuan

Memetakan hubungan, positioning, boundary, dan status ringkas seluruh produk.

## Konteks

Status adalah snapshot per evidence cut-off dan bukan pengganti release/runtime
verification.

## Positioning umum

SagaDev membangun produk operasional yang menyederhanakan workflow bisnis
nyata. Setiap produk tetap memiliki domain, data, role, subscription, dan
release sendiri. Saga Platform menjadi control plane, bukan database gabungan
untuk seluruh business data.

SagaDevs menjadi public parent hub untuk discovery produk dan lead jasa. Hub
tidak mengambil alih landing, account, pricing, data, atau runtime produk.

## Hubungan produk

### Ekosistem self-photo studio

```text
SagaBook -> sebelum sesi
booking, jadwal, pembayaran, reminder, customer request, check-in

SagaView -> setelah sesi dimulai
folder foto, frame, pemilihan foto, komposisi, export, print
```

SagaBook dan SagaView dijual sebagai produk satuan. Bundle belum menjadi
penawaran utama. Identitas dapat memakai seam Saga Account di masa depan,
tetapi role, membership, entitlement, trial, subscription, payment ledger,
session, cancellation, dan data masing-masing produk tetap terpisah.

### Customer journey dan commerce

- SagaBio: pintu masuk brand dari social/QR menuju action.
- SagaMenu: katalog/menu visual yang fokus pada discovery, bukan checkout.
- SagaBook: booking dan operasi layanan berbasis jadwal.
- COYABAG: commerce produk fisik.
- SagaFin: pencatatan dan pemahaman keuangan personal.
- SagaOPS: operasi coffeeshop dari POS sampai inventory dan closing.
- AOGTICVITY: operasi event dan kompetisi.

### Shared platform

- Saga Platform: registry, product account, subscription, entitlement, audit,
  launcher, readiness, dan control plane.
- Saga AI: knowledge/retrieval/support/intelligence yang harus tetap grounded
  pada knowledge base dan permission produk.

## Portofolio aktif

| Produk | Kind | Status utama | Posisi saat ini |
|---|---|---|---|
| SagaDevs | Public product hub | STAGING_DEPLOYED | UI/UX Sprint 1–5 ada di protected Vercel Preview; production belum berubah |
| SagaBook | Core SaaS | PRODUCTION_DEPLOYED | Customer Booking Center aktif; menuju onboarding dan first-booking activation |
| SagaView | Core SaaS | PRODUCTION_DEPLOYED + IMPLEMENTED_NOT_DEPLOYED | Studio 4R dan operator session handoff live; backend komersial terbaru masih blocked provider canary |
| SagaBio | Core SaaS | LOCAL_VALIDATED | MVP Laravel berjalan lokal; belum staging/production |
| SagaMenu | Core SaaS | LOCAL_VALIDATED | Pilot closure lokal; environment production belum tersedia |
| SagaFin | Core SaaS | UNVERIFIED | Controlled public trial pernah dilaporkan; runtime/provider perlu verifikasi ulang |
| COYABAG | Client commerce | PRODUCTION_DEPLOYED; activation BLOCKED | Surface live; transaksi nyata tetap fail-closed |
| AOGTICVITY | Event product | LOCAL_VALIDATED | UI dan backend slice ada; domain/runtime production belum aktif |
| SagaOPS | Core SaaS | PROTOTYPE | Workflow terbukti pada prototype; backend production belum terhubung |
| Saga Platform | Internal platform | PRODUCTION_DEPLOYED (fondasi) | Control plane hidup bersama fondasi SagaBook; pemisahan bertahap |
| Saga AI | Internal/future SaaS | PLANNED | Knowledge contract ada; runtime penuh belum menjadi produk publik |

## Prinsip integrasi

- Tidak menggabungkan operational database lintas-produk.
- Tidak berbagi entitlement hanya karena email sama.
- Tidak memakai role Owner SagaBook sebagai Admin SagaView.
- Shared identity harus ditukar menjadi session produk yang scoped.
- Event lintas-produk memakai contract version, idempotency, signature, audit,
  retry, dan deny-by-default.
- Bundle hanya boleh dibangun setelah produk satuan stabil.

## Prinsip konten

- Ceritakan pain dan outcome, bukan hanya daftar fitur.
- Jangan mengklaim provider nyata bila buktinya dummy/sandbox/local.
- Gunakan before -> after yang sudah dibuktikan.
- SagaBook dan SagaView harus selalu dijelaskan sebagai produk berbeda.
- COYABAG bukan SaaS default; ia adalah client commerce project.
- AOGTICVITY adalah nama produk terbaru untuk project event 17an.
- Finance Tracker Go dan SagaFin adalah produk yang sama.
