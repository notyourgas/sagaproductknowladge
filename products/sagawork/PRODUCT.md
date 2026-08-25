# SagaWork Product Knowledge

Updated: 25 Agustus 2026
Evidence status: `CONFIRMED / STAGING_DEPLOYED / SYNTHETIC_STAGING_VALIDATED`

## Tujuan dokumen

Menjadi ringkasan public-safe kanonik SagaWork.

## Konteks

Status synthetic staging dibedakan tegas dari real pilot dan production activation.

## Ringkasan

SagaWork adalah PWA operasi tenaga kerja multi-lokasi untuk jadwal, absensi foto+GPS, break, request, shift swap, exception, laporan jam kerja, dan data payroll-ready. Staff login dengan nomor HP+password tanpa OTP; HR/Owner memakai email+password+TOTP.

## Scope tervalidasi

- HR CRUD staff, invite/reset tanpa mengetahui password staff, role/scope, dan tenant isolation.
- Staff Home, jadwal, notes, konfirmasi shift, swap, request, dan check-in/break/check-out.
- Correction maker-checker, leave ledger, staff-requested overtime candidate→Supervisor→partial HR final.
- Work-hours, telat, break, overtime candidate/approved, Reliability 50/30/20, period lock, CSV, dan maker-checker reopen.
- Legal hold/retention, encrypted recovery, timers, security/load/accessibility, manifest, dan rollback.

## Status saat ini

- Exact feature source `7ba3010`; active isolated Hostinger staging memakai MySQL 8.4 dan data sintetis.
- Protected Vercel preview `dpl_AN91Lq2eo92eG7KsA9NDk8nW2R6w` `READY`, synthetic-only, tanpa custom domain/production secret.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`.

## Batas dan next gate

Belum ada real employee/photo data, public DNS, provider storage/scanner, offsite key escrow, human device UAT, legal/DPA, atau closed beta. Payroll nominal/compliance tidak diklaim. Next gate: provider/recovery, GPS-camera field UAT, import dan advanced policy, incident rehearsal, pilot/DPA, lalu final Go/No-Go Andreas.
