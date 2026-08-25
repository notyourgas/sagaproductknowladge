# SagaWork Dossier

## Tujuan dokumen

Menjadi detail public-safe produk, workflow, teknologi, bukti, risiko, dan gate SagaWork.

## Konteks dan status bukti

- Updated: `25 Agustus 2026`
- Delivery: `STAGING_DEPLOYED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED_EXTERNAL`; internal disposition `PILOT_READY_CANDIDATE`

## Overview dan pengguna

SagaWork menghubungkan roster, komunikasi staff, attendance evidence, exception, request, laporan, dan payroll-ready quantity untuk Staff, Supervisor, HR, Payroll, dan Owner pada bisnis shift multi-lokasi seperti F&B, retail, photobooth, dan event.

## Value dan workflow

Staff memperoleh action-first home, jadwal/note, swap, request, serta attendance foto+GPS. HR mengelola staff/policy/lokasi dan approval; Payroll merekonsiliasi report sebelum lock. Raw event, evaluation, correction, approved overtime, serta snapshot final dipisahkan agar dapat ditelusuri.

## Technical overview dan validasi

Next.js 16 PWA, React 19, TypeScript, Drizzle, MySQL 8.4, Node 22, systemd, isolated Hostinger staging, dan Vercel Preview. Active runtime `e003a3d` memiliki 21 migration, 56 application table, 26 DBA-visible append-only trigger, dan manifest 26 artifact. 27 test file/89 unit test, smoke 18 area, security abuse 7/7, browser+Axe 12 pass/4 intentional scope skip, 720-request load, recovery, timer, dan guarded rollback `e003a3d → 9d49565 → e003a3d` lulus pada synthetic staging. Protected Staff/HR layouts dipaksa dynamic sehingga build tanpa database environment tidak dapat memublikasikan workspace statis.

PWA baseline memakai standalone manifest, Staff install guidance, dan waiting-worker update yang membutuhkan aksi eksplisit sebelum reload. Service worker memakai exact allowlist hanya untuk manifest/icon publik dan tidak mengintersep HTML, API, authenticated workspace, foto, atau export. Workflow CI dengan locked Node/pnpm, frozen lockfile, read-only permission, SHA-pinned official actions, lint/typecheck/test/build/audit/manifest guard sudah tersedia dan full local equivalent lulus. Hosted runner belum pernah dijalankan karena source belum mempunyai private Git remote; ini tetap gate, bukan evidence CI hijau.

Attendance evidence bytes kini lulus acceptance internal dengan gambar sintetis non-PII: random private key, presigned PUT, size/type/magic/decode, ClamAV service-user EICAR, Sharp auto-rotate dan JPEG re-encode tanpa EXIF/XMP/ICC, quarantine-to-clean status, Staff denial, scoped five-minute HR signed view + audit, legal hold, byte purge, serta `bytesDeleted` certificate. Object store hanya listen di loopback pada VPS yang sama; signed URL acceptance tidak ditujukan ke browser eksternal. Topologi ini bukan external provider, DPA, offsite backup, HA, atau izin real photo data.

Bulk onboarding CSV tervalidasi untuk maksimal 500 baris/1 MB: template tetap, parser quoted UTF-8, normalisasi, tenant/location/duplicate checks, preview hash, commit atomik, hasil per baris, serta audit batch/per-employee. Hasil selalu draft tanpa account/password; HR tetap mengundang staff satu per satu. XLSX dan downloadable safe error export belum tersedia.

Attendance policy versioned mengatur paid/unpaid break, toleransi long break, serta human review untuk missing/long break. Report, CSV, snapshot, dan component line memisahkan net produktif dari payable. Anomali membuat risk/exception evidence tanpa penalti disipliner otomatis; snapshot locked lama tetap dapat diekspor tanpa dimutasi.

Absensi darurat tanpa jadwal memakai opt-in policy default-off. Satu draft per staff/tanggal mengikat lokasi aktif, photo+GPS evidence, check-in/out aktual, human-review exception, dan payroll blocker. Draft tidak dapat dipublish sebelum checkout; HR publish lalu resolve membuka rekonsiliasi. Dismiss membatalkan draft. Tidak ada konsekuensi otomatis.

Supervisor-assisted attendance menutup fallback bagi staf tanpa smartphone tanpa credential sharing. Supervisor/HR memilih jadwal published yang belum mempunyai event, mengisi waktu/reason/attestation, lalu sistem menyimpan raw `admin_amendment` tanpa foto/GPS dan membuat blocker `pending_review`. Staff ditolak, idempotent replay aman, dan pembuat record tidak dapat melakukan self-review. Training/test shift isolation serta multi-session policy tetap belum lengkap.

Staff lifecycle memisahkan employee/employment dari tenant membership dan account. HR dapat suspend membership serta mencabut sesi tanpa menonaktifkan akun global, lalu restore membutuhkan login baru. Terminasi efektif hari ini fail-closed bila masih ada jadwal masa depan, request, atau swap aktif; setelah bersih, employment ditutup, invitation/membership/sesi dicabut, dan record baru dapat diarsipkan tanpa hard delete. PATCH profil tidak dapat mengubah status terminal. Rehire dan scheduled/backdated termination belum tersedia.

Reporting HR memakai satu canonical work-hours projection untuk searchable per-staff summary, jumlah dan menit telat mentah, net/payable, break, overtime candidate/approved, blocker, serta shift drill-down. CSV `summary` dan `detail` dihasilkan dari live projection atau locked snapshot yang sama, memakai preview/final marker, timezone, snapshot hash, integer minutes, formula sanitation, SHA-256, no-store, dan audit. Reopen/version replacement mempertahankan byte/checksum export lama. XLSX, async private object/signed URL/purge, dan dedicated coverage/leave/exception export masih pending.

## Positioning, pricing, risiko

Positioning sementara: workforce operations action-first dan evidence-based untuk tim shift Indonesia, bukan HRIS enterprise lengkap. Pricing/SLA `NEEDS CONFIRMATION`. Internal disposition tetap `PILOT_READY_CANDIDATE`; private source remote/hosted CI, external provider/DPA, offsite/key custody, legal/privacy, real-device install/update/GPS/camera behavior, incident alert, offboarding authority/rehire, employer-ordered overtime/holiday-rest scope, named pilot, dan willingness-to-pay tetap blocker eksternal. Produk tidak boleh diklaim payroll compliant, closed-beta active, atau production-ready.
