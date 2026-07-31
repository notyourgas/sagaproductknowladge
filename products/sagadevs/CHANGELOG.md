# SagaDevs Product Hub Changelog

## Tujuan

Mencatat perubahan material pada website induk dan showroom SagaDevs dengan provenance public-safe.

## Konteks

Entri preview tidak otomatis berarti production atau domain activation.

## 2026-07-31 — Source-preserving Motion Polish v3 Preview

- Release `source-preserving-motion-polish-v3` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- Hierarchy dan placement hero CTA diperbaiki; logo 3D digeser ke kiri dengan crop nol dan safe gap terhadap status rail.
- Judul SagaBook, SagaView, dan Sagafin memakai component-safe wrapping serta automated collision guard terhadap prototype capture.
- Reveal, product switching, stage transition, card scan, hover, dan press motion ditambah secara restrained dengan reduced-motion fallback.
- Render WebGL berhenti ketika hero keluar viewport atau tab tersembunyi dan aktif kembali saat diperlukan.
- Static, browser empat viewport, accessibility desktop/mobile, dan visual audit sembilan viewport lulus; production `sagadevs.com` tidak berubah.

## 2026-07-31 — Source-preserving Polish v2 Preview

- Release `source-preserving-polish-v2` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- CTA WhatsApp diperkecil menjadi tombol normal dan footer lengkap ditambahkan tanpa mengubah tujuh section source.
- Heading Process disejajarkan dengan Product Showroom; serif spacing, product title spacing, dan breakpoint showroom diperbaiki untuk mencegah overlap.
- IBM Plex Mono Saga kini konsisten pada seluruh metadata mono.
- Browser guard memverifikasi tiga product title bebas overlap, left edge heading konsisten, CTA maksimal 300 × 56 px, dan footer memiliki navigasi lengkap.
- Visual audit delapan viewport lulus dengan overflow, clipping, dan tiny-text bernilai nol; production `sagadevs.com` tidak berubah.

## 2026-07-31 — Source-preserving typography correction Preview

- Release `source-preserving-typography-v1` berstatus `STAGING_DEPLOYED` pada protected Vercel Preview.
- Source composition, original font families, tujuh section, dan fitur interaktif dipulihkan sebagai baseline kanonik.
- Perubahan dibatasi pada typography, hierarchy, spacing, density, placement, responsive layout, serta focus management menu dan command palette.
- Sembilan capture SagaBook, SagaView, dan Sagafin tetap digunakan; file preview, hero, dan product manifest cocok dengan baseline source.
- Visual audit delapan viewport, static, browser, health, security header, dan public-safety gate lulus tanpa overflow atau clipping.
- Production `sagadevs.com` tidak berubah; Preview tetap `noindex` dan dilindungi.

## 2026-07-31 — UI/UX Sprint 1–5 Vercel Preview (DEPRECATED)

- Release `ui-ux-sprints-1-5-preview-v1` berstatus `STAGING_DEPLOYED` pada Vercel Preview.
- Information architecture dipadatkan menjadi Hero, Products, Services, Process, Proof, dan Contact.
- Geist menjadi font utama lokal; navigation, hierarchy, density, responsive layout, motion, accessibility, dan WhatsApp brief diperbaiki.
- Showroom tetap memakai sembilan capture source-grounded dari SagaBook, SagaView, dan Sagafin.
- Auth/pricing/console/command surface lama tidak berada pada DOM publik.
- Static, browser, delapan-viewport visual, security-header, health, dan public-safety gate lulus.
- Production `sagadevs.com` tidak berubah; prototype tetap `noindex` dan Vercel Preview dilindungi.
- Arah visual ini ditolak karena mengubah source terlalu signifikan; digantikan oleh `source-preserving-typography-v1`.
