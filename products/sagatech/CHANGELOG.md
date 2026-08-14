# SagaTech Changelog

## Tujuan dokumen

Mencatat perubahan material SagaTech beserta provenance, gate, dan status
aktivasi secara publik dan aman.

## Konteks dan status bukti

Entri membedakan implementasi, deployment, aktivasi produksi, dan kesiapan
bisnis. Secret, PII, serta bukti terbatas tidak dicantumkan.

## 2026-08-15 - Scope 2 Qualification OS v15 production

- Klasifikasi: `CONFIRMED` dari keputusan Andreas, source manifest
  `0cf764da2facff05387d5007b6b42b08ab8833450153cef7a6adb8394ea94cb4`,
  deployment, dan runtime public.
- Decision Studio kini memiliki Market Lens, Fit Engine policy version, Risk
  Map, comparison drawer, Proof Lens dengan provenance, serta Decision Passport
  yang dapat disalin, diunduh, dan dicetak.
- Hero dan CTA memulai dari model operasi; konten Instagram ditempatkan sebagai
  Operator/Field Note tanpa klaim finansial.
- Preview `dpl_5kU6md9HAoLLSbkFqyyrPjLWkYfB` dipromosikan menjadi production
  `dpl_GTQ96ZbwH3RxxvyTqzZcwD3xHce1`; rollback
  `dpl_5DAsu8Gz1bq4ecwuwDnYjKMoFfbE` tersedia.
- Gate: 37 test, build/export, 90 local dan 28 production page-view, audit
  accessibility, dependency, secret, header, route, dan Lighthouse lulus.
- Delivery: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Linktree owner action,
  analytics persistence, real-device UAT, dan Git remote kanonik tetap menahan
  `BUSINESS_READY`.
