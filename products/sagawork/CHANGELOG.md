# SagaWork Changelog

## Tujuan

Mencatat perubahan material SagaWork dengan status delivery dan activation yang jujur.

## Konteks

Synthetic fixture, preview, dan staging bukan bukti real pilot atau production activation.

## 2026-08-25 - Atomic staff CSV import dan protected-route hardening

- `CONFIRMED` dari feature source `e0cbaa5`, active staging source `f4c4387`, protected Vercel deployment `dpl_GXFfbMY9RVGyLuCCCyyy9HqzKPe6`, dan automated/runtime evidence.
- HR dapat melakukan bounded CSV preview, melihat error per baris, lalu commit atomik sebagai draft tanpa membuat account/password; hasil dan audit tersedia per batch/per employee.
- Regression smoke menemukan protected workspace sempat ter-build statis ketika database environment tidak tersedia. Guarded rollback dijalankan dan source aktif memaksa Staff/HR layouts dynamic; unauthenticated redirect, full smoke, security abuse, browser, dan Axe lulus.
- Delivery tetap `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. XLSX/error export, real provider/data, legal, human UAT, dan pilot belum lulus.

## 2026-08-25 - Synthetic staging baseline sampai payroll reopen

- `CONFIRMED` dari exact feature source `7ba3010`, active isolated Hostinger staging, protected Vercel deployment `dpl_AN91Lq2eo92eG7KsA9NDk8nW2R6w`, dan automated/runtime evidence.
- MVP mencakup IAM/people, scheduling/notes/swap, attendance foto+GPS/break, correction/request, overtime partial approval, report/score, period lock/reopen, governance, recovery, dan guarded release.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Tidak ada real data/provider/public activation.
