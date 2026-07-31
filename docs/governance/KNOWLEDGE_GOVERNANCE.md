# Tata Kelola Saga Product Knowledge

## Tujuan

Menjaga repository sebagai sumber publik yang dapat dipercaya oleh manusia dan
AI tanpa membocorkan informasi operasional sensitif.

## Konteks

Repository ini publik dan disiapkan sebagai sumber knowledge untuk manusia serta
AI agent.

## Cakupan

- Fakta produk, workflow, pricing, trial, positioning, dan readiness.
- Ringkasan release material dan blocker publik.
- Strategi, sales, marketing, FAQ, dan konten.
- Standar teknis lintas produk yang aman dipublikasikan.

## Tidak boleh disimpan

- Secret, credential, token, private key, atau environment value.
- PII customer/staff, tenant/device/account identifier, database dump.
- Raw receipt/callback, private evidence path/URL, atau payload provider.
- Detail vulnerability yang dapat dieksploitasi.

## Sumber kebenaran

1. Keputusan owner yang terdokumentasi.
2. Source commit atau release immutable.
3. Runtime evidence yang terikat pada release tersebut.
4. Dokumen produk lokal yang memiliki provenance.
5. Rekomendasi/riset hanya sebagai input, bukan fakta.

## Tanggung jawab dokumen

- `CHATGPT_MASTER_KNOWLEDGE.md`: ringkasan lintas produk, bukan detail.
- `PRODUCT.md`: fakta kanonik dan status ringkas satu produk.
- `DOSSIER.md`: konteks lengkap product, UX, business, technical, sales, dan
  content.
- `CHANGELOG.md`: sejarah perubahan; tidak menjadi current-state contract.
- Root `GAPS.md`: unknown, asumsi, dan keputusan founder.

Jika informasi berulang, versi rinci berada di dossier dan versi ringkas harus
menautkannya, bukan menciptakan kontrak baru.

## Siklus perubahan

1. Verifikasi perubahan material.
2. Perbarui `PRODUCT.md` dan/atau `DOSSIER.md`.
3. Perbarui changelog produk dan portfolio.
4. Perbarui master knowledge bila fakta kanonik berubah.
5. Jalankan validator, link check, secret scan, dan `git diff --check`.
6. Commit dan push terpisah dari source product.

## Review

- Review terjadwal: `NEEDS CONFIRMATION` — cadence belum diputuskan.
- Owner knowledge governance: Andreas.
- Technical editor: Codex/agent yang menjalankan update protocol.
