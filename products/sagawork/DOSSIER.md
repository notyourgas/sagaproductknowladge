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

Next.js 16 PWA, React 19, TypeScript, Drizzle, MySQL 8.4, Node 22, systemd, isolated Hostinger staging, dan Vercel Preview. Exact implementation/runtime `80cf623b5e3eb01d53355ff62578eca325b295a0` memiliki 22 migration, 56 application table, dan schema-2 manifest yang memverifikasi 949 file runtime/server/static/public. 31 test file/102 unit test, smoke 19 area, security abuse 8/8, browser+Axe 12 pass/4 intentional scope skip, 41-page build, recovery, timer, dan guarded rollback `80cf623 → 517bd6c → 80cf623` lulus pada synthetic staging. Protected Vercel Preview `dpl_CYKzNDVtmoKvtEV2Eb8MGHJRj8BR` `READY`; authenticated health, security headers, dan safe-worker contract PASS tanpa MySQL. Hostinger standalone finalization dipisahkan dari Vercel-managed build output, sedangkan protected Staff/HR layouts tetap dynamic.

PWA baseline memakai standalone manifest, Staff install guidance, dan waiting-worker update yang membutuhkan aksi eksplisit sebelum reload. Service worker memakai exact allowlist hanya untuk manifest/icon publik dan tidak mengintersep HTML, API, authenticated workspace, foto, atau export. Workflow CI dengan locked Node/pnpm, frozen lockfile, read-only permission, SHA-pinned official actions, lint/typecheck/test/build/audit/manifest guard sudah tersedia dan full local equivalent lulus. Hosted runner belum pernah dijalankan karena source belum mempunyai private Git remote; ini tetap gate, bukan evidence CI hijau.

Handoff source untuk exact runtime `80cf623` memiliki restricted tracked-file archive yang reproducible dari Git, immutable provenance sidecar, dan SHA-256 sidecar. Artifact berukuran 1.393.686 byte dengan checksum `0e9acc4f5866a8e4bf18cddb0036236754faafaddc41969940c0b18fbdf4f390`. OpenAPI/admission artifact historis tetap restricted. Verifier memastikan artifact tidak memuat secret, runtime env, database dump, PII, dependency tree, atau build cache; file restricted tidak disalin ke repository knowledge publik. Dokumentasi implementasi memetakan 56 tabel/22 migration. OpenAPI 3.1.1 machine-readable exact-set mencakup 59 path/72 operasi, 40 request components, cookie/public auth boundary, path/query/header/idempotency, stable envelope/error/CSV, generated artifact freshness, dan LF/CRLF-safe source drift verifier; pinned Redocly CLI lint PASS tanpa warning. Complex success projection tetap internal dan external SDK tidak dipublikasikan selama API protected same-origin.

Exact internal OWASP ASVS 5.0 requirement profile memuat 253 ID: 148 `PASS_INTERNAL`, 79 `NOT_APPLICABLE`, 7 `PENDING_INTERNAL`, 18 `PENDING_EXTERNAL`, dan 1 `RISK_ACCEPTANCE_REQUIRED` untuk Staff tanpa OTP. Requirement map dan drift verifier lulus lintas LF/CRLF, tetapi ini bukan sertifikasi atau klaim full Level 2. Sebanyak 26 non-pass disposition dan independent verification tetap menjadi gate.

Account-security controls memakai policy password versioned, term organisasi/nama/kontak, checksum-pinned 3.000 SHA-256 blocklist entries tanpa plaintext corpus, current-password reauthentication, revoke-other-session, batas lima Staff/tiga privileged, dan own-session inventory/termination. Raw user agent tidak disimpan; UI hanya menunjukkan label perangkat kasar. Seluruh flow memiliki tenant/account ownership negative evidence pada synthetic staging.

Isolated load 720/720 lulus tanpa error dengan readiness p95 158,0 ms, Staff Home 590,2 ms, dan work-hours 339,4 ms. Negative evidence tetap dicatat: bila load dijalankan segera setelah auth-abuse suite, 300/300 readiness tetap HTTP 200 tetapi p95 transient 691,6 ms melampaui target 500 ms. Shared-VPS/noisy-neighbor/swap pressure harus dimitigasi atau diterima sebelum pilot.

Pilot admission control implementation exact `3bcdf06` dan acceptance exact `a36ac8e` sudah lulus internal. Manifest fail-closed bertanda tangan Ed25519 mengikat full source SHA, exact Hostinger runtime, protected Vercel Preview, company/location code, 5–10 Staff, canary tiga hari, support window, expiry maksimal tujuh hari, exact-set 16 evidence Gate A/B/C/E, dan residual-risk disposition. Private key hanya dipegang Andreas; verifier menggunakan public key/fingerprint dan tidak mempunyai side effect deploy/activation. Dua belas synthetic security/contract cases lulus, termasuk signature tamper, wrong key, expiry, target mismatch, PII-like field, duplicate/missing evidence, dan overwrite. Restricted artifact exact `a36ac8e` berukuran 1.223.662 byte/452 tracked entries dengan SHA-256 `51c764f3464c02fc023a322007154c4b8735f75ebb363d8700744f2057fe84fb`; artifact ini belum terdeploy. Real receipt dan seluruh evidence eksternal belum ada, sehingga Gate E tetap `NOT_STARTED_EXTERNAL`.

Attendance evidence bytes kini lulus acceptance internal dengan gambar sintetis non-PII: random private key, presigned PUT, size/type/magic/decode, ClamAV service-user EICAR, Sharp auto-rotate dan JPEG re-encode tanpa EXIF/XMP/ICC, quarantine-to-clean status, Staff denial, scoped five-minute HR signed view + audit, legal hold, byte purge, serta `bytesDeleted` certificate. Object store hanya listen di loopback pada VPS yang sama; signed URL acceptance tidak ditujukan ke browser eksternal. Topologi ini bukan external provider, DPA, offsite backup, HA, atau izin real photo data.

Bulk onboarding CSV tervalidasi untuk maksimal 500 baris/1 MB: template tetap, parser quoted UTF-8, normalisasi, tenant/location/duplicate checks, preview hash, commit atomik, hasil per baris, serta audit batch/per-employee. Hasil selalu draft tanpa account/password; HR tetap mengundang staff satu per satu. XLSX dan downloadable safe error export belum tersedia.

Attendance policy versioned mengatur paid/unpaid break, toleransi long break, serta human review untuk missing/long break. Report, CSV, snapshot, dan component line memisahkan net produktif dari payable. Anomali membuat risk/exception evidence tanpa penalti disipliner otomatis; snapshot locked lama tetap dapat diekspor tanpa dimutasi.

Absensi darurat tanpa jadwal memakai opt-in policy default-off. Satu draft per staff/tanggal mengikat lokasi aktif, photo+GPS evidence, check-in/out aktual, human-review exception, dan payroll blocker. Draft tidak dapat dipublish sebelum checkout; HR publish lalu resolve membuka rekonsiliasi. Dismiss membatalkan draft. Tidak ada konsekuensi otomatis.

Supervisor-assisted attendance menutup fallback bagi staf tanpa smartphone tanpa credential sharing. Supervisor/HR memilih jadwal published yang belum mempunyai event, mengisi waktu/reason/attestation, lalu sistem menyimpan raw `admin_amendment` tanpa foto/GPS dan membuat blocker `pending_review`. Staff ditolak, idempotent replay aman, dan pembuat record tidak dapat melakukan self-review. Training/test shift isolation tetap belum lengkap.

Staff lifecycle memisahkan employee/employment dari tenant membership dan account. HR dapat suspend membership serta mencabut sesi tanpa menonaktifkan akun global, lalu restore membutuhkan login baru. Terminasi efektif hari ini fail-closed bila masih ada jadwal masa depan, request, atau swap aktif; setelah bersih, employment ditutup, invitation/membership/sesi dicabut, dan record baru dapat diarsipkan tanpa hard delete. PATCH profil tidak dapat mengubah status terminal. Rehire dan scheduled/backdated termination belum tersedia.

Reporting HR memakai satu canonical work-hours projection untuk searchable per-staff summary, jumlah dan menit telat mentah, net/payable, break, overtime candidate/approved, blocker, serta shift drill-down. CSV `summary` dan `detail` dihasilkan dari live projection atau locked snapshot yang sama, memakai preview/final marker, timezone, snapshot hash, integer minutes, formula sanitation, SHA-256, no-store, dan audit. Reopen/version replacement mempertahankan byte/checksum export lama. XLSX, async private object/signed URL/purge, dan dedicated coverage/leave/exception export masih pending.

## Positioning, pricing, risiko

Positioning sementara: workforce operations action-first dan evidence-based untuk tim shift Indonesia, bukan HRIS enterprise lengkap. Pricing/SLA `NEEDS CONFIRMATION`. Internal disposition tetap `PILOT_READY_CANDIDATE`; private source remote/hosted CI, external provider/DPA, offsite/key custody, legal/privacy, real-device install/update/GPS/camera behavior, incident alert, capacity mitigation, independent security verification, offboarding authority/rehire, employer-ordered overtime/holiday-rest scope, named pilot, willingness-to-pay, dan real signed admission receipt tetap blocker eksternal. Produk tidak boleh diklaim ASVS-certified, payroll compliant, closed-beta active, atau production-ready.
