# SagaBook Changelog

## 2026-07-31 — Customer Booking Center production

- Status: `PRODUCTION_DEPLOYED`.
- Customer dapat melihat status dan mengajukan reschedule/change/cancel/refund.
- Secure link expiring, tenant-scoped, dan idempotent.
- Operator menerima request melalui Task Center.
- Source: `dc312a4e4835d0d7ca52f88730b5ea0bb84ac9af`.
- Release: `20260730153914`.

## 2026-07-30 — Trial dua fase dan Saga Account seam

- Trial 14 hari server-authoritative aktif.
- Harga SagaBook tetap Basic Rp500 ribu, Growth Rp950 ribu, Pro Rp1,5 juta.
- Identity seam tidak menggabungkan entitlement atau role SagaView.
