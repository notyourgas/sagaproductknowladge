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
- HR bulk import CSV memakai preview per baris, validasi tenant/lokasi/duplikat, commit atomik sebagai draft, dan audit; impor tidak membuat akun atau password staff.
- Staff Home, jadwal, notes, konfirmasi shift, swap, request, dan check-in/break/check-out dengan paid/unpaid break policy.
- Absensi darurat tanpa jadwal bersifat default-off; bila policy mengizinkan, staff memilih lokasi aktif, sistem membuat draft yang selalu direview, dan HR harus publish sebelum hasil dapat direkonsiliasi.
- Correction maker-checker, leave ledger, staff-requested overtime candidate→Supervisor→partial HR final.
- Work-hours memisahkan net produktif dan payable, missing/long break masuk human review, serta telat, overtime candidate/approved, Reliability 50/30/20, period lock, CSV, dan maker-checker reopen.
- Legal hold/retention, encrypted recovery, timers, security/load/accessibility, manifest, dan rollback.

## Status saat ini

- Exact active staging runtime `e7f4622`; isolated Hostinger staging memakai MySQL 8.4 dan data sintetis. Handoff/audit `PILOT_READY_CANDIDATE` berada pada source `d2025e4`.
- Protected Vercel preview `dpl_3nx9EfTeh5VYSTP1ta3Q7ByTpebs` `READY`, synthetic-only, tanpa custom domain/production secret.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`.

## Batas dan next gate

Belum ada real employee/photo data, public DNS, provider storage/scanner, offsite key escrow, human device UAT, legal/DPA, named pilot, atau closed beta. Payroll nominal/compliance tidak diklaim. Next gate: moderated synthetic UAT, provider/recovery, GPS-camera field UAT, incident rehearsal, pilot/DPA, lalu final Go/No-Go Andreas.
