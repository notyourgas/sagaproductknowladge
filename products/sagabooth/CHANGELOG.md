# SagaBooth Changelog

## Tujuan

Mencatat perubahan produk, evidence, delivery, dan readiness SagaBooth secara
public-safe.

## Konteks

Entri membedakan local validation, deployment, production activation, dan
business readiness.

## 2026-08-16 - Milestone M0 foundation

- Klasifikasi: `CONFIRMED` product foundation dan architecture baseline.
- Produk dipastikan sebagai instant photobooth mandiri, berbeda dari SagaBook
  dan SagaView, dengan internal assisted pilot sebelum licensing/SaaS.
- Fondasi: npm workspace monorepo, strict TypeScript, versioned runtime
  contracts, guarded session state machine, deterministic camera/printer/payment
  simulators, lima ADR, governance, dan GitHub CI definition.
- Validation: format, lint, typecheck, 27 test, build, dan npm audit nol
  vulnerability lulus pada exact source
  `c08765f25840b968524f305dfe32c6e18d8df02b`.
- Delivery: `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; tidak ada
  runtime app, hardware/payment integration, VPS/domain, deployment, production
  activation, atau business readiness.
- Blocker: GitHub Actions billing/spending limit mencegah job dimulai; branch
  protection repo private memerlukan GitHub Pro.
