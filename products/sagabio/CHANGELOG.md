# SagaBio Changelog

## Tujuan

Mencatat perubahan material SagaBio dengan provenance public-safe.

## Konteks

Status delivery saat ini production deployed; activation dan business readiness
tetap dinilai terpisah.

## 2026-08-05 - First VPS production release

- Klasifikasi: `CONFIRMED` dari exact application source
  `06be995bf2da5e05e25ba3d394516ad9d8a52f10` dan runtime production.
- Landing apex, branded login app, wildcard public bio, Coma Coffee demo,
  immutable payload, public analytics event, QR redirect, dan legacy redirect
  sudah live dengan wildcard TLS.
- Gate: artifact identity, fresh backup, disposable MySQL restore, 16 migration,
  queue/scheduler/service checks, 149 test + 2 controlled skip/1.141 assertion,
  static/build/audit, browser desktop-mobile, dan public smoke lulus.
- Bug CSRF public analytics diperbaiki sebelum final release; endpoint event
  production kembali memberi 204 tanpa membuka session app ke public host.
- Delivery: `PRODUCTION_DEPLOYED`; activation: `NOT_PRODUCTION_ACTIVATED`;
  business readiness: `NOT_BUSINESS_READY`.
- Blocker: central signup default-off, akun owner belum diserahterimakan,
  SMTP/storage belum diterima, dan wildcard DNS-01 renewal belum otomatis.

## 2026-08-05 - Category journey productization

- Klasifikasi: `CONFIRMED` dari source
  `8b79ff4e759b24acf34bb88dfe714588754bc00d`.
- Sebelas preset general/F&B/jasa/produk/portfolio/creator sekarang membawa
  goal, CTA, KPI, susunan section, layout, starter copy, kebutuhan aset, dan
  starter visual editable.
- Owner mendapat Preset Studio, readiness sesuai journey, SEO/share editor,
  aggregate analytics recommendation, QR deactivation, reviewer note, dan
  guided support.
- Bug state layout lama setelah preset diterapkan serta ketidakkonsistenan ID
  layout public renderer sudah diperbaiki.
- Gate lokal: 150 test/1.139 assertion, PHPStan nol error, build, browser 8/8
  desktop-mobile, Axe, serta audit npm/Composer nol advisory.
- Delivery: `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; activation:
  `NOT_PRODUCTION_ACTIVATED`; business readiness belum berubah.
- Production berubah: tidak. Wildcard TLS/vhost, production environment,
  backup/restore, exact-release migration, rollback, dan public smoke tetap
  menjadi blocker.

## 2026-08-05 - Core bio builder layout families

- Klasifikasi: `CONFIRMED` dari source
  `638a13cc57837a3749915f6bebee0e4616c3f74e`.
- Section dapat diurutkan melalui drag desktop, keyboard, dan kontrol sentuh;
  urutan draft, preview, immutable publish snapshot, dan halaman publik sama.
- Hero/profile, action link, CTA, featured item, galeri, testimonial, dan lokasi
  memiliki beberapa komposisi responsif yang benar-benar berbeda.
- Flow builder sampai public page lulus 143 test/877 assertion dan browser
  acceptance 6/6 pada desktop/mobile; audit dependency npm dan Composer bersih.
- Delivery: `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; activation:
  `NOT_PRODUCTION_ACTIVATED`; business readiness belum berubah.
- Production berubah: tidak. Wildcard TLS/vhost, environment, backup/restore,
  exact release, dan public smoke masih menjadi release gate.

## 2026-07-31 — Central knowledge baseline

- Status: `LOCAL_VALIDATED`.
- Product boundary, F&B positioning, pilot features, dan production limitations
  disinkronkan.
