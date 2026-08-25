# SagaWork Dossier

## Tujuan dokumen

Menjadi detail public-safe produk, workflow, teknologi, bukti, risiko, dan gate SagaWork.

## Konteks dan status bukti

- Updated: `25 Agustus 2026`
- Delivery: `STAGING_DEPLOYED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`

## Overview dan pengguna

SagaWork menghubungkan roster, komunikasi staff, attendance evidence, exception, request, laporan, dan payroll-ready quantity untuk Staff, Supervisor, HR, Payroll, dan Owner pada bisnis shift multi-lokasi seperti F&B, retail, photobooth, dan event.

## Value dan workflow

Staff memperoleh action-first home, jadwal/note, swap, request, serta attendance foto+GPS. HR mengelola staff/policy/lokasi dan approval; Payroll merekonsiliasi report sebelum lock. Raw event, evaluation, correction, approved overtime, serta snapshot final dipisahkan agar dapat ditelusuri.

## Technical overview dan validasi

Next.js 16 PWA, React 19, TypeScript, Drizzle, MySQL 8.4, Node 22, systemd, isolated Hostinger staging, dan protected Vercel preview. Active revision `f4c4387` memiliki 18 migration, 56 application table, 26 append-only trigger, dan manifest 23 artifact. 22 test file/68 unit test, smoke 13 area, security abuse 7/7, browser+Axe 10 pass/2 intentional mobile privileged skip, load, recovery, timer, dan rollback lulus pada synthetic staging. Protected Staff/HR layouts dipaksa dynamic sehingga build tanpa database environment tidak dapat memublikasikan workspace statis.

Bulk onboarding CSV tervalidasi untuk maksimal 500 baris/1 MB: template tetap, parser quoted UTF-8, normalisasi, tenant/location/duplicate checks, preview hash, commit atomik, hasil per baris, serta audit batch/per-employee. Hasil selalu draft tanpa account/password; HR tetap mengundang staff satu per satu. XLSX dan downloadable safe error export belum tersedia.

## Positioning, pricing, risiko

Positioning sementara: workforce operations action-first dan evidence-based untuk tim shift Indonesia, bukan HRIS enterprise lengkap. Pricing/SLA `NEEDS CONFIRMATION`. Provider, legal/privacy, device behavior, incident alert, XLSX/error export, advanced payroll, real pilot, dan willingness-to-pay tetap blocker. Produk tidak boleh diklaim payroll compliant atau production-ready.
