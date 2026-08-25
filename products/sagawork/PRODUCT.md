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
- Status kerja dan akses dipisahkan. HR dapat suspend/restore akses Staff dengan pencabutan sesi, melakukan terminasi hanya setelah kewajiban jadwal/request/swap selesai, lalu archive tanpa menghapus histori; rehire belum termasuk pilot.
- HR bulk import CSV memakai preview per baris, validasi tenant/lokasi/duplikat, commit atomik sebagai draft, dan audit; impor tidak membuat akun atau password staff.
- Staff Home, jadwal, notes, konfirmasi shift, swap, request, dan check-in/break/check-out dengan paid/unpaid break policy.
- Absensi darurat tanpa jadwal bersifat default-off; bila policy mengizinkan, staff memilih lokasi aktif, sistem membuat draft yang selalu direview, dan HR harus publish sebelum hasil dapat direkonsiliasi.
- Supervisor-assisted attendance tersedia untuk staf tanpa smartphone: hanya jadwal published tiga hari terakhir, reason + attestation wajib, Staff tidak dapat membuatnya, tidak ada foto/GPS palsu, dan pembuat record wajib berbeda dari reviewer.
- Correction maker-checker, leave ledger, staff-requested overtime candidate→Supervisor→partial HR final.
- Work-hours memisahkan net produktif dan payable, missing/long break masuk human review, serta telat, overtime candidate/approved, Reliability 50/30/20, period lock, CSV, dan maker-checker reopen.
- Laporan HR mempunyai searchable per-staff summary dan shift drill-down untuk jam net/payable, jumlah serta menit telat mentah, break, overtime, dan blocker. CSV `summary`/`detail` memakai preview/final marker, timezone, snapshot hash, checksum, formula sanitation, dan audit.
- Staff mendapat install guidance PWA dan explicit update prompt. Service worker hanya meng-cache exact same-origin public manifest/icon; HTML, API, area authenticated, foto, dan export tidak di-cache.
- Attendance-photo byte pipeline tervalidasi internal memakai gambar non-PII: private presigned upload, magic/decode, ClamAV, metadata-stripped re-encode, quarantine status, scoped HR signed view, Staff denial, legal hold, real-byte purge, dan deletion certificate.
- Legal hold/retention, encrypted recovery, timers, security/load/accessibility, manifest, dan rollback.

## Status saat ini

- Exact implementation/runtime `6ea328f6fbaf7052616c100abe1cacd79cadcfa2`; documentation acceptance head `d005cfde68d95da5d9a21cd1695b10aa645c9785`. Isolated Hostinger staging memakai MySQL 8.4 dengan 21 migration, data sintetis, serta same-VPS loopback object store khusus acceptance non-PII. Store ini bukan provider production/offsite/HA dan tidak menerima real employee/photo data.
- Protected Vercel Preview `dpl_2zNRzrc9TpAWmPFBGP9aMyX88H7b` `READY`, synthetic-only; authenticated health, 39-page build, security headers, dan public-only service-worker contract PASS, tanpa MySQL atau custom domain. Hostinger standalone asset finalization dipisahkan dari Vercel-managed build output.
- Restricted tracked-source handoff artifact untuk exact runtime `6ea328f` tersedia dengan provenance serta sidecar SHA-256; bundle 1.247.818 byte, 468 tar entries, dan checksum `5db56f0e022f8ff5bc840a9788bbcf2ad8563c2dcef271ac5da3b94f4972620f` lulus verifikasi tanpa secret, database dump, PII, runtime env, atau build cache. Artifact tidak dipublikasikan ke repository knowledge.
- Restricted OpenAPI implementation/acceptance artifact exact `85bbbfb` juga checksum/provenance-verifiable: 1.213.154 byte, 444 tracked entries, SHA-256 `9deb21651fb89dca6dbeee25e3f5626d88937f0bc0d38c8055adaf31120c61f9`.
- Pilot admission control exact implementation `3bcdf06` dan acceptance `a36ac8e` sudah `PASS_INTERNAL`: receipt Ed25519 mengikat exact source/runtime/protected preview, maksimal tujuh hari, dan fail-closed bila salah satu dari 16 evidence Gate A/B/C/E belum PASS. Private key hanya dalam custody Andreas; verifier memakai public key/fingerprint. Restricted acceptance artifact 1.223.662 byte/452 tracked entries dengan SHA-256 `51c764f3464c02fc023a322007154c4b8735f75ebb363d8700744f2057fe84fb` lulus content exclusion dan belum terdeploy.
- Implemented-contract drift gate mencakup seluruh 56 tabel/21 migration. Validated OpenAPI 3.1.1 mencakup exact 56 path/69 operasi, 39 request components, auth/parameter/idempotency/envelope/error/CSV, source drift verifier, dan pinned independent lint. External SDK/response DTO tidak dipublikasikan karena API tetap protected same-origin.
- Cross-platform acceptance meluluskan 30 test file/95 test, 18-area functional smoke, security abuse 7/7, browser/Axe 12 pass/4 intentional skip, 39-page build, schema-2 runtime manifest 906 file, serta rollback `6ea328f → 62d5bf2 → 6ea328f`. Isolated load 720/720 lulus tanpa error; mixed auth-abuse→load sequence masih menunjukkan transient readiness p95 691,6 ms di atas target 500 ms.
- Internal OWASP ASVS 5.0 requirement profile mendisposisikan exact 253 ID: 140 `PASS_INTERNAL`, 79 `NOT_APPLICABLE`, 15 `PENDING_INTERNAL`, 18 `PENDING_EXTERNAL`, dan 1 `RISK_ACCEPTANCE_REQUIRED` untuk Staff tanpa OTP. Ini bukan sertifikasi atau klaim full ASVS Level 2; 34 non-pass disposition dan independent verification masih terbuka.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`.

## Batas dan next gate

Belum ada real employee/photo data, public DNS, external provider storage/DPA, offsite key escrow, human device/PWA-install UAT, legal/privacy approval, named pilot, private source remote/hosted CI run, independent security verification, real signed admission receipt, atau closed beta. Shared-VPS latency mitigation, XLSX/async private export, dedicated coverage/leave/exception export, rehire, scheduled/backdated termination, real offboarding authority/SOP, training/test shift isolation, dan multi-session policy juga masih terbuka. Payroll nominal/compliance tidak diklaim. Next gate: moderated synthetic UAT, source/CI custody, external provider/recovery, GPS-camera-install field UAT, incident rehearsal, pilot/DPA, disposition 34 requirement ASVS non-pass, seluruh 16 evidence restricted, lalu final receipt dan Go/No-Go Andreas.
