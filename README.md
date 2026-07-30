# Saga Product Knowledge

Repository publik ini adalah sumber pengetahuan kanonik produk dan project
SagaDev yang aman dibagikan ke ChatGPT.

Tujuan utamanya:

- memberi konteks produk yang konsisten saat brainstorming fitur, strategi,
  konten, sales, support, dan pengembangan;
- membedakan fitur yang baru direncanakan, sudah diimplementasikan, sudah
  dideploy, dan sudah benar-benar diaktifkan untuk bisnis;
- menyimpan keputusan produk, pricing, trial, batas fitur, workflow, status
  release, blocker, dan perubahan penting;
- mencegah klaim lama atau asumsi yang sudah diganti muncul kembali.

## Mulai dari sini

1. [ChatGPT Master Knowledge](./CHATGPT_MASTER_KNOWLEDGE.md)
2. [Knowledge Index](./KNOWLEDGE_INDEX.md)
3. [Portfolio dan hubungan produk](./docs/SAGA_PRODUCT_PORTFOLIO.md)
4. [Panduan memasukkan knowledge ke ChatGPT](./docs/CHATGPT_IMPORT_GUIDE.md)
5. [Protokol update](./docs/UPDATE_PROTOCOL.md)
6. [Status dan istilah](./docs/STATUS_LEGEND.md)
7. [Source registry](./docs/SOURCE_REGISTRY.md)

## Produk aktif

| Produk/project | Fungsi utama | Dokumen |
|---|---|---|
| SagaBook | Booking dan operasi studio sebelum sesi | [Product knowledge](./products/sagabook/PRODUCT.md) |
| SagaView | Pemilihan foto, frame, output, dan print setelah sesi | [Product knowledge](./products/sagaview/PRODUCT.md) |
| SagaBio | Mini website link-in-bio berbasis customer journey | [Product knowledge](./products/sagabio/PRODUCT.md) |
| SagaMenu | E-menu/e-katalog preview-first | [Product knowledge](./products/sagamenu/PRODUCT.md) |
| SagaFin | Finance tracker personal mobile-first | [Product knowledge](./products/sagafin/PRODUCT.md) |
| COYABAG | Ecommerce tas streetwear dan operasi toko | [Product knowledge](./products/coyabag/PRODUCT.md) |
| AOGTICVITY | Operasi event, lomba, peserta, dan live standing | [Product knowledge](./products/aogticvity/PRODUCT.md) |

## Produk/platform pendukung

| Produk/platform | Fungsi | Dokumen |
|---|---|---|
| Saga Platform | Control plane, registry, account, subscription, entitlement, audit | [Product knowledge](./products/saga-platform/PRODUCT.md) |
| SagaOPS | POS dan back office coffeeshop | [Product knowledge](./products/sagaops/PRODUCT.md) |
| Saga AI | Knowledge dan intelligence layer SagaDev | [Product knowledge](./products/saga-ai/PRODUCT.md) |

Project lain dan statusnya tercatat di
[Project Registry](./registry/OTHER_PROJECTS.md).

## Aturan utama

- Repository ini bersifat publik.
- Jangan menyimpan secret, password, token, key, raw provider receipt, data
  customer, data pembayaran, tenant ID, device ID, atau path bukti restricted.
- Jangan menyebut `live` bila bukti hanya berasal dari fixture, dummy,
  simulation, local test, atau staging.
- Update material harus mengubah dokumen produk dan
  [Portfolio Changelog](./changelog/PORTFOLIO_CHANGELOG.md).
