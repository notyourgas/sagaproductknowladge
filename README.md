# Saga Product Knowledge

## Tujuan repository

Repository publik ini adalah single source of truth permanen untuk seluruh
product, business, technical, marketing, dan operational knowledge Saga.
Isinya mendukung manusia dan AI agent dalam brainstorming fitur, strategi
bisnis, konten, sales, support, pengembangan, dan pengambilan keputusan tanpa
mencampur fakta dengan asumsi.

Repository ini:

- memetakan produk, layanan, pengguna, workflow, bisnis, teknis, dan
  go-to-market;
- membedakan rencana, implementasi lokal, release production, activation
  provider, dan business readiness;
- menyimpan keputusan pricing, trial, account boundary, positioning, blocker,
  dan perubahan material;
- mengklasifikasikan informasi sebagai `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`,
  `NEEDS CONFIRMATION`, atau `DEPRECATED`;
- mencatat keputusan dan kondisi sinkronisasi secara eksplisit;
- tidak menyimpan secret, PII, payload provider, atau evidence restricted.

## Konteks

Owner repository adalah Andreas/SagaDev. Evidence produk memiliki cut-off dan
status berbeda; repository harus terus disinkronkan setelah perubahan material.

## Mulai dari sini

1. [INDEX.md](INDEX.md) — daftar isi seluruh knowledge.
2. [CHATGPT_MASTER_KNOWLEDGE.md](CHATGPT_MASTER_KNOWLEDGE.md) — ringkasan awal
   untuk AI.
3. [DECISIONS.md](DECISIONS.md) — keputusan founder dan governance.
4. [SYNC_STATUS.md](SYNC_STATUS.md) — snapshot sinkronisasi terakhir.
5. [GAPS.md](GAPS.md) — pertanyaan dan keputusan founder yang belum ditutup.
6. [SAGA_PRODUCT_PORTFOLIO.md](docs/SAGA_PRODUCT_PORTFOLIO.md) — hubungan dan
   batas produk.
7. [STATUS_LEGEND.md](docs/STATUS_LEGEND.md) — arti status.
8. [UPDATE_PROTOCOL.md](docs/UPDATE_PROTOCOL.md) — cara memperbarui repository.

## Daftar produk

| Produk | Fungsi | Delivery ringkas | Dokumen |
|---|---|---|---|
| SagaBook | Booking dan operasi studio sebelum sesi | `PRODUCTION_DEPLOYED` | [Product](products/sagabook/PRODUCT.md) · [Dossier](products/sagabook/DOSSIER.md) |
| SagaView | Selection, frame, output, dan print setelah sesi | Studio live; candidate `IMPLEMENTED_NOT_DEPLOYED` | [Product](products/sagaview/PRODUCT.md) · [Dossier](products/sagaview/DOSSIER.md) |
| SagaBio | Mini website customer-journey | `LOCAL_VALIDATED` | [Product](products/sagabio/PRODUCT.md) · [Dossier](products/sagabio/DOSSIER.md) |
| SagaMenu | E-menu/e-katalog preview-first | `LOCAL_VALIDATED` | [Product](products/sagamenu/PRODUCT.md) · [Dossier](products/sagamenu/DOSSIER.md) |
| SagaFin | Finance tracker personal | Runtime `UNVERIFIED` | [Product](products/sagafin/PRODUCT.md) · [Dossier](products/sagafin/DOSSIER.md) |
| COYABAG | Ecommerce tas streetwear | `PRODUCTION_DEPLOYED`, activation blocked | [Product](products/coyabag/PRODUCT.md) · [Dossier](products/coyabag/DOSSIER.md) |
| AOGTICVITY | Operasi event/matchday | `LOCAL_VALIDATED` | [Product](products/aogticvity/PRODUCT.md) · [Dossier](products/aogticvity/DOSSIER.md) |
| Saga Platform | Control plane Saga | Fondasi `PRODUCTION_DEPLOYED` | [Product](products/saga-platform/PRODUCT.md) · [Dossier](products/saga-platform/DOSSIER.md) |
| SagaOPS | POS dan back office coffeeshop | `PROTOTYPE` | [Product](products/sagaops/PRODUCT.md) · [Dossier](products/sagaops/DOSSIER.md) |
| Saga AI | Grounded knowledge/intelligence layer | `PLANNED` | [Product](products/saga-ai/PRODUCT.md) · [Dossier](products/saga-ai/DOSSIER.md) |

Status di tabel adalah ringkasan, bukan pengganti detail release/activation
pada dokumen produk.

## Struktur folder

```text
/
├── README.md
├── INDEX.md
├── GAPS.md
├── CHANGELOG.md
├── DECISIONS.md
├── SYNC_STATUS.md
├── CHATGPT_MASTER_KNOWLEDGE.md
├── products/<product>/
│   ├── PRODUCT.md
│   ├── DOSSIER.md
│   └── CHANGELOG.md
├── docs/
│   ├── brand/
│   ├── business/
│   ├── design/
│   ├── governance/
│   ├── marketing/
│   └── technical/
├── changelog/
├── registry/
├── templates/
└── scripts/
```

## Cara menggunakan knowledge base

### Untuk manusia

1. Buka [INDEX](INDEX.md).
2. Baca `PRODUCT.md` produk untuk fakta ringkas.
3. Baca `DOSSIER.md` untuk detail produk, pengalaman, bisnis, teknis, sales,
   dan content.
4. Periksa [DECISIONS](DECISIONS.md) dan [GAPS](GAPS.md) sebelum mengambil
   keputusan.
5. Periksa [SYNC_STATUS](SYNC_STATUS.md) untuk mengetahui pembaruan terakhir.
6. Verifikasi status runtime di changelog/release source sebelum membuat klaim
   eksternal.

### Untuk AI agent

1. Gunakan urutan retrieval pada
   [AI Usage Guidelines](docs/technical/AI_USAGE_GUIDELINES.md).
2. Pertahankan label fakta/asumsi sesuai
   [Fact Classification](docs/governance/FACT_CLASSIFICATION.md).
3. Baca [DECISIONS](DECISIONS.md), [SYNC_STATUS](SYNC_STATUS.md), dan
   [GAPS](GAPS.md) sebelum menyimpulkan current state.
4. Jangan mengisi gap dengan tebakan.
5. Jangan menganggap test lokal, fixture, atau HTTP 200 sebagai provider atau
   business activation.
6. Cantumkan status evidence dan tanggal cut-off pada jawaban sensitif.

## Status kelengkapan dokumentasi

| Area | Status | Catatan |
|---|---|---|
| Inventaris produk | Lengkap untuk 10 produk yang diketahui | Produk baru harus masuk update protocol. |
| Product dossier | Lengkap secara struktur | Banyak pricing, KPI, competitor, dan policy masih `NEEDS CONFIRMATION`. |
| Cross-product standards | Tersedia | Beberapa keputusan founder belum final. |
| Release/readiness | Tersedia per produk | Harus terus disinkronkan dari source/runtime. |
| Sales/marketing/content | Baseline tersedia | Caption/campaign berlabel `PROPOSAL`, bukan hasil market. |
| Gaps/decisions | Terpusat | Lihat [DECISIONS](DECISIONS.md) dan [GAPS](GAPS.md). |
| Sync governance | Lengkap | Protokol, status sinkronisasi, decision log, dan validator tersedia. |

## Aturan utama

- Repository ini publik.
- Jangan menyimpan secret, credential, token, PII, raw receipt/callback,
  tenant/device/account identifier, database dump, atau private evidence path.
- Jangan menyebut `live` jika evidence hanya dummy, fixture, simulation,
  local test, atau staging.
- Hanya informasi `CONFIRMED` yang boleh mengganti fakta kanonik.
- Update material harus mengikuti [Update Protocol](docs/UPDATE_PROTOCOL.md).
- Setiap update yang lolos gate berakhir dengan commit/push ke `main` dan
  laporan SHA immutable.
