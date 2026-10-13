# SagaBooth Changelog

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| windows-and-control-plane | [Source](https://github.com/notyourgas/sagabooth/tree/source/current) | `0bdee15db0e0a9a6ebff55573655fe61cdec97ba` | `SOURCE_PUSHED` |

Repo privat dan source M1 `0bdee15` cocok dengan provenance knowledge sebelumnya. Semua source tersimpan pada ref kanonik. Customer kiosk, camera/printer hardware, QRIS, signed installer, control plane dan pilot tetap merupakan gate; backup GitHub tidak menutup gate tersebut.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

## Tujuan

Mencatat perubahan produk, evidence, delivery, dan readiness SagaBooth secara
public-safe.

## Konteks

Entri membedakan local validation, deployment, production activation, dan
business readiness.

## 2026-08-16 - Milestone M1 local vertical slice

- Klasifikasi: `CONFIRMED` dari exact source dan validation evidence.
- Final source `0bdee15db0e0a9a6ebff55573655fe61cdec97ba`; implementation
  source `cc09470506b58b213111b7f138b3725140f6cb90`.
- Electron operator shell, native SQLite event ledger, filesystem journal,
  durable outbox, deterministic media pipeline, dan simulator integrasi kini
  tersedia.
- Offline completion, verified ACK sync, camera crash/recovery, journal
  reconciliation, collision rejection, dan no-auto-reprint pada ambiguous print
  terbukti lewat 39 test dan Electron smoke.
- Delivery: `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; belum ada
  customer kiosk, hardware nyata, QRIS, MySQL/control plane, installer signed,
  deployment, production activation, atau business readiness.
- Blocker eksternal tetap: GitHub Actions billing/spending limit dan branch
  protection private repository memerlukan GitHub Pro.

## 2026-08-16 - Milestone M0 foundation

- Klasifikasi: `CONFIRMED` product foundation dan architecture baseline.
- Produk dipastikan sebagai instant photobooth mandiri, berbeda dari SagaBook
  dan SagaView, dengan internal assisted pilot sebelum licensing/SaaS.
- Fondasi: npm workspace monorepo, strict TypeScript, versioned runtime
  contracts, guarded session state machine, deterministic camera/printer/payment
  simulators, lima ADR, governance, dan GitHub CI definition.
- Validation: format, lint, typecheck, 27 test, build, dan npm audit nol
  vulnerability lulus pada exact source
  `c08765f3a5ab40ff39e5741c1abfc609006ceef5`.
- Delivery: `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; tidak ada
  runtime app, hardware/payment integration, VPS/domain, deployment, production
  activation, atau business readiness.
- Blocker: GitHub Actions billing/spending limit mencegah job dimulai; branch
  protection repo private memerlukan GitHub Pro.
