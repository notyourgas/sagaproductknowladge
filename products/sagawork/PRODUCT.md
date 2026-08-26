# SagaWork Product Knowledge

Updated: 26 Agustus 2026
Evidence status: `CONFIRMED / SPRINT_30_LOCAL_VALIDATED / STAGING_UNCHANGED`

## Tujuan dokumen

Menjadi ringkasan public-safe kanonik SagaWork.

## Konteks

Status synthetic staging dibedakan tegas dari real pilot dan production activation.

## Ringkasan

SagaWork adalah PWA operasi tenaga kerja multi-lokasi untuk jadwal, absensi foto+GPS, break, request, shift swap, exception, laporan jam kerja, data payroll-ready, dan role-performance transparan. Staff login dengan nomor HP+password tanpa OTP; HR/Owner memakai email+password+TOTP.

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
- Role-performance default-off menyediakan scorecard posisi versioned/prospective, metric owner/source/rubric/missing-data rule, attendance cap 15%, evidence coverage/confidence, primary+independent second review, Staff own visibility/acknowledgement/seven-day appeal, dan fairness-audit schedule. Payroll tidak memperoleh akses performance dan skor tidak mengubah payroll/terminasi/shift/promosi/reward secara otomatis.
- Staff mendapat install guidance PWA dan explicit update prompt. Service worker hanya meng-cache exact same-origin public manifest/icon; HTML, API, area authenticated, foto, dan export tidak di-cache.
- Staff dan Owner/HR dapat mengubah password sendiri dengan verifikasi password saat ini. Policy menolak term organisasi/nama/kontak dan 3.000 password umum matching-policy melalui blocklist hash-only yang checksum-pinned; seluruh sesi lain dicabut setelah perubahan.
- Pengguna dapat melihat dan mengakhiri sesi milik sendiri dengan label perangkat kasar. Batas akun adalah lima sesi Staff atau tiga sesi privileged; raw user agent dan password kandidat tidak disimpan.
- Attendance-photo byte pipeline tervalidasi internal memakai gambar non-PII: private presigned upload, magic/decode, ClamAV, metadata-stripped re-encode, quarantine status, scoped HR signed view, Staff denial, legal hold, real-byte purge, dan deletion certificate.
- Legal hold/retention, encrypted recovery, timers, security/load/accessibility, manifest, dan rollback.

## Status saat ini

- Andreas telah mengunci scope pilot pertama dengan kode public-safe `KANANTA-MADIUN-CANARY-01`: satu company/satu lokasi di Kota Madiun, 5–10 Staff, mulai 26 Agustus 2026, default tiga hari, support enabled dengan default 09.00–18.00 WIB, manual attendance parallel run, dan performance `OFF`. Statusnya `OWNER_SCOPE_CONFIRMED / PRE_ADMISSION / NO_GO`; nama customer, roster, serta identitas champion individual tidak dipublikasikan.
- Sprint 30 exact local source `a500a52` menambah startup/readiness guard untuk `pilot` + `pilot_restricted`, binding dedicated database name/user serta private evidence bucket, kill switch performance/signup, dedicated MFA scope, ClamAV requirement, dan topology service/health/evidence/retention/encrypted-backup/rollback terpisah. Full local check lulus 33 test file/123 test dan 44-page production build.
- Pilot topology belum dipasang. Shared-host capacity gate tidak lulus dan external private-evidence, protected-access, backup/restore, serta rollback evidence belum lengkap; `K0_ENVIRONMENT_READY=NO_GO`. Tidak ada akun, credential, real Staff data, foto, GPS, runtime staging, atau production yang berubah.
- Exact source/handoff runtime `d36a59fb456106eafa3d8b3e797d42a4aac67a68`; application feature evidence `05e2b1a`. Isolated Hostinger staging memakai MySQL 8.4 dengan 23 migration/65 application table/32 trigger, data sintetis, serta same-VPS loopback object store khusus acceptance non-PII. Store ini bukan provider production/offsite/HA dan tidak menerima real employee/photo data.
- Protected Vercel Preview `dpl_9zvZTjgQBRhHJm5pVXH4rmtqQaBg` `READY`, synthetic-only; authenticated health, 44-page build, strict nonce CSP, security headers, dan public-only service-worker contract PASS, tanpa MySQL atau custom domain. Direct public access diarahkan ke Deployment Protection.
- Restricted tracked-source handoff artifact untuk exact `d36a59f` tersedia dengan provenance, sidecar SHA-256, dan exact-release CycloneDX 1.6 SBOM 699 komponen. Archive 1.455.320 byte/checksum `427a81c40f7d0ba8eee3909ad8131887732f0092fe525395639ba6774278c576`; SBOM checksum `5bf5c8976c8242ccc418722c7d1ff9d898582e3a0a89be743e6ac6a00b9a90a0`. Artifact tidak dipublikasikan ke repository knowledge.
- Restricted OpenAPI implementation/acceptance artifact exact `85bbbfb` juga checksum/provenance-verifiable: 1.213.154 byte, 444 tracked entries, SHA-256 `9deb21651fb89dca6dbeee25e3f5626d88937f0bc0d38c8055adaf31120c61f9`.
- Pilot admission control exact implementation `3bcdf06` dan acceptance `a36ac8e` sudah `PASS_INTERNAL`: receipt Ed25519 mengikat exact source/runtime/protected preview, maksimal tujuh hari, dan fail-closed bila salah satu dari 16 evidence Gate A/B/C/E belum PASS. Private key hanya dalam custody Andreas; verifier memakai public key/fingerprint. Restricted acceptance artifact 1.223.662 byte/452 tracked entries dengan SHA-256 `51c764f3464c02fc023a322007154c4b8735f75ebb363d8700744f2057fe84fb` lulus content exclusion dan belum terdeploy.
- Implemented-contract drift gate mencakup seluruh 65 tabel/23 migration. Validated OpenAPI 3.1.1 mencakup exact 68 path/83 operasi, 46 request components, auth/parameter/idempotency/envelope/error/CSV, source drift verifier, dan pinned independent lint. External SDK/response DTO tidak dipublikasikan karena API tetap protected same-origin.
- Identical application bits pada feature evidence `05e2b1a` meluluskan 33 test file/111 test, 20-area functional smoke, security abuse 9/9, workstation-to-loopback browser/Axe 12 pass/4 intentional skip, 44-page build, schema-2 manifest 1.049 file, serta rollback `05e2b1a → 17427f5 → 05e2b1a`. Isolated load 720/720 lulus tanpa error dengan p95 readiness/Staff Home/work-hours `165,5/438,4/331,2 ms`. Direct Chromium di shared VPS crash dan dicatat sebagai host-runner limitation, bukan application pass.
- Encrypted restore menghasilkan 65 application tables, 23 migration, 32 trigger, 24 tombstone, zero resurrection, RPO 19 detik, RTO 6 detik, dan temporary database terhapus. Backup tetap same-VPS; offsite/key custody masih pending.
- Internal OWASP ASVS 5.0 requirement profile mendisposisikan exact 253 ID: 155 `PASS_INTERNAL`, 79 `NOT_APPLICABLE`, 0 `PENDING_INTERNAL`, 18 `PENDING_EXTERNAL`, dan 1 `RISK_ACCEPTANCE_REQUIRED` untuk Staff tanpa OTP. Strict per-response nonce CSP, crypto lifecycle/re-encryption, remediation SLA/SBOM, dan logging inventory menutup seluruh gap internal. Ini bukan sertifikasi atau klaim full ASVS Level 2; 19 external/risk-acceptance disposition dan independent verification masih terbuka.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`.

## Batas dan next gate

Belum ada real employee/photo/performance data, public DNS, external provider storage/DPA, offsite key escrow, human device/PWA-install UAT, legal/privacy approval, exact roster/named individual champion/signed charter, private source remote/hosted CI run, independent security verification, real signed admission receipt, atau closed beta. Real performance activation juga menunggu authoritative KPI adapters/sources, company rubric, staff transparency, DPIA/legal basis, trained calibration/fairness review, dan appeal owner; pilot pertama sengaja mempertahankannya OFF. Shared-VPS capacity monitoring, XLSX/async private export, dedicated coverage/leave/exception export, rehire, scheduled/backdated termination, real offboarding authority/SOP, serta training/test shift isolation juga masih terbuka. Payroll nominal/compliance tidak diklaim. External-evidence runbook public-safe sudah memetakan 16 admission records, canary, UAT, provider/legal/recovery, performance appendix, dan receipt assembly; owner scope baru memenuhi definisi awal, bukan seluruh evidence admission.

## Internal pilot execution bridge

`CONFIRMED`: Andreas menerima Sprint 30–40 secara berurutan: isolated `pilot_restricted` environment, secure organization/HR bootstrap, pilot configuration, Staff lifecycle, schedule/note/swap, Android+iOS owner attendance rehearsal, HR report reconciliation, uncoached Andreas UAT, revision/regression, five-Staff three-day canary, lalu final Go/No-Go. Sprint 30 source sudah local-validated tetapi K0 belum PASS. Current seed scripts tetap synthetic-only dan tidak boleh dipakai untuk akun pilot. Performance tetap OFF dan payroll tetap payroll-ready only.
