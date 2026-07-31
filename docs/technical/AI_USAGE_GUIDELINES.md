# AI Usage Guidelines

## Tujuan

Mengatur penggunaan AI untuk product knowledge, support, content, insight, dan
future tools.

## Konteks

Pedoman mencakup AI eksternal yang membaca repository dan future Saga AI.

## Aturan

- Ground jawaban pada dokumen yang disetujui.
- Sebutkan status evidence dan tanggal cut-off.
- Bedakan fakta, owner decision, asumsi, dan rekomendasi.
- Jangan mengarang pricing, fitur, provider, KPI, testimoni, atau status live.
- Jangan mengirim secret, PII, raw receipt, private path, atau database dump.
- Action yang mengubah data memerlukan tool contract, permission, confirmation,
  idempotency, dan audit.
- Produk/tenant lain tidak boleh menjadi sumber tanpa permission.

## Retrieval order

1. `INDEX.md`
2. `CHATGPT_MASTER_KNOWLEDGE.md`
3. `products/<product>/PRODUCT.md`
4. `products/<product>/DOSSIER.md`
5. `GAPS.md`
6. changelog yang relevan

## Evaluation

- `TODO`: grounded QA set, refusal set, stale-status test, permission test, dan
  citation test.
