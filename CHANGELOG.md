# Saga Product Knowledge Changelog

## Tujuan

Mencatat perubahan struktur, tata kelola, dan kontrak dokumentasi repository.
Perubahan fitur/release produk tetap dicatat pada changelog masing-masing
produk dan [Portfolio Changelog](changelog/PORTFOLIO_CHANGELOG.md).

## Konteks

Root changelog tidak menggantikan changelog produk atau portfolio.

## 2026-07-31

### Single source of truth contract

- Ringkasan: menetapkan repository sebagai single source of truth permanen dan
  menambahkan decision log, sync status, klasifikasi lima status, impact
  analysis, serta closed-loop commit/push.
- Alasan: mencegah informasi Saga tersebar, duplikat, bertentangan, atau
  digunakan AI tanpa provenance yang jelas.
- Produk/area terdampak: seluruh portofolio, governance, AI retrieval, product
  dossier, changelog, dan update workflow.
- File terdampak: `DECISIONS.md`, `SYNC_STATUS.md`, `README.md`, `INDEX.md`,
  `GAPS.md`, `AGENTS.md`, governance/protocol/status/AI docs, templates,
  validator, dan dokumen yang masih memakai klasifikasi lama.
- Klasifikasi: `CONFIRMED`.
- Sumber/pemberi keputusan: Andreas / founder, 31 Juli 2026.
- Commit knowledge: `main HEAD`; SHA immutable dilaporkan setelah push.
- Production produk berubah: tidak; perubahan ini hanya pada repository
  knowledge.

### Added

- Root `INDEX.md`, `GAPS.md`, dan `CHANGELOG.md`.
- Root `DECISIONS.md` dan `SYNC_STATUS.md`.
- Dossier konsisten untuk sepuluh produk.
- Dokumen lintas produk untuk brand, marketing, business, design, technical,
  privacy, AI, deployment, dan coding.
- Tata kelola klasifikasi fakta dan penggunaan AI.
- Template product dossier.

### Changed

- Menetapkan `INDEX.md` sebagai daftar isi kanonik.
- Menormalisasi status menjadi delivery, activation, dan business readiness.
- Menormalisasi klasifikasi menjadi `CONFIRMED`, `ASSUMPTION`, `PROPOSAL`,
  `NEEDS CONFIRMATION`, dan `DEPRECATED`.
- Memperluas validasi repository agar memeriksa struktur wajib, heading, link,
  placeholder, dan pola secret.
- Menyinkronkan SagaView Studio v0.20.2 yang terverifikasi selama audit.

### Preserved

- Informasi produk, keputusan pricing/trial, release provenance, batas klaim,
  dan changelog historis tetap dipertahankan.
- `KNOWLEDGE_INDEX.md` tetap ada sebagai compatibility pointer.
