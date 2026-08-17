# SagaTech Changelog

## Tujuan dokumen

Mencatat perubahan material SagaTech beserta provenance, gate, dan status
aktivasi secara publik dan aman.

## Konteks dan status bukti

Entri membedakan implementasi, deployment, aktivasi produksi, dan kesiapan
bisnis. Secret, PII, serta bukti terbatas tidak dicantumkan.

## 2026-08-17 - Photobooth Commercial Truth v23 production

- Klasifikasi: `CONFIRMED` dari keputusan Andreas, source truth sheet/test,
  deployment `dpl_7kSjSQKiYTbq7HvfXqEvfqs7m7Zf`, dan runtime branded domain.
- Halaman Photobooth kini membedakan booth lengkap/vendor lokal, self-service
  customer/PIC, 15 FAQ, serta checklist quotation sebelum DP.
- Simulator V5 menambahkan CAPEX quotation, shipping, upgrade, software, MDR,
  waste, printer profile, dan mode pengadaan sebagai input editable.
- Canonical berpindah ke `https://sagatech.site`; `www` dan alias Vercel
  diarahkan ke deployment yang sama.
- Gate: 49 test, 110 local dan 36 production page-view, build/export,
  accessibility, dependency, claim, header, serta route smoke lulus.
- Delivery: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / NOT_BUSINESS_READY`;
  seller identity, exact BOM/warranty, renewal/DNP quote, real-device UAT, dan
  source Git kanonik tetap residual.

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
