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
- Staff dan Owner/HR dapat mengubah password sendiri dengan verifikasi password saat ini. Policy menolak term organisasi/nama/kontak dan 3.000 password umum matching-policy melalui blocklist hash-only yang checksum-pinned; seluruh sesi lain dicabut setelah perubahan.
- Pengguna dapat melihat dan mengakhiri sesi milik sendiri dengan label perangkat kasar. Batas akun adalah lima sesi Staff atau tiga sesi privileged; raw user agent dan password kandidat tidak disimpan.
- Attendance-photo byte pipeline tervalidasi internal memakai gambar non-PII: private presigned upload, magic/decode, ClamAV, metadata-stripped re-encode, quarantine status, scoped HR signed view, Staff denial, legal hold, real-byte purge, dan deletion certificate.
- Legal hold/retention, encrypted recovery, timers, security/load/accessibility, manifest, dan rollback.

## Status saat ini

- Exact implementation/runtime `80cf623b5e3eb01d53355ff62578eca325b295a0`; documentation acceptance head `35c048a`. Isolated Hostinger staging memakai MySQL 8.4 dengan 22 migration, data sintetis, serta same-VPS loopback object store khusus acceptance non-PII. Store ini bukan provider production/offsite/HA dan tidak menerima real employee/photo data.
- Protected Vercel Preview `dpl_CYKzNDVtmoKvtEV2Eb8MGHJRj8BR` `READY`, synthetic-only; authenticated health, 41-page build, security headers, dan public-only service-worker contract PASS, tanpa MySQL atau custom domain. Hostinger standalone asset finalization dipisahkan dari Vercel-managed build output.
- Restricted tracked-source handoff artifact untuk exact runtime `80cf623` tersedia dengan provenance serta sidecar SHA-256; bundle 1.393.686 byte dan checksum `0e9acc4f5866a8e4bf18cddb0036236754faafaddc41969940c0b18fbdf4f390` lulus verifikasi tanpa secret, database dump, PII, runtime env, atau build cache. Artifact tidak dipublikasikan ke repository knowledge.
- Restricted OpenAPI implementation/acceptance artifact exact `85bbbfb` juga checksum/provenance-verifiable: 1.213.154 byte, 444 tracked entries, SHA-256 `9deb21651fb89dca6dbeee25e3f5626d88937f0bc0d38c8055adaf31120c61f9`.
- Pilot admission control exact implementation `3bcdf06` dan acceptance `a36ac8e` sudah `PASS_INTERNAL`: receipt Ed25519 mengikat exact source/runtime/protected preview, maksimal tujuh hari, dan fail-closed bila salah satu dari 16 evidence Gate A/B/C/E belum PASS. Private key hanya dalam custody Andreas; verifier memakai public key/fingerprint. Restricted acceptance artifact 1.223.662 byte/452 tracked entries dengan SHA-256 `51c764f3464c02fc023a322007154c4b8735f75ebb363d8700744f2057fe84fb` lulus content exclusion dan belum terdeploy.
- Implemented-contract drift gate mencakup seluruh 56 tabel/22 migration. Validated OpenAPI 3.1.1 mencakup exact 59 path/72 operasi, 40 request components, auth/parameter/idempotency/envelope/error/CSV, source drift verifier, dan pinned independent lint. External SDK/response DTO tidak dipublikasikan karena API tetap protected same-origin.
- Account-security acceptance meluluskan 31 test file/102 test, 19-area functional smoke, security abuse 8/8, browser/Axe 12 pass/4 intentional skip, 41-page build, schema-2 runtime manifest 949 file, serta rollback `80cf623 → 517bd6c → 80cf623`. Isolated load 720/720 lulus tanpa error dengan p95 readiness/Staff Home/work-hours `125,7/396,5/331,9 ms`.
- Encrypted post-schema restore menghasilkan 56 application tables, 22 migration, 26 trigger, 21 tombstone, zero resurrection, RPO 17 detik, RTO 6 detik, dan temporary database terhapus. Backup tetap same-VPS; offsite/key custody masih pending.
- Internal OWASP ASVS 5.0 requirement profile mendisposisikan exact 253 ID: 148 `PASS_INTERNAL`, 79 `NOT_APPLICABLE`, 7 `PENDING_INTERNAL`, 18 `PENDING_EXTERNAL`, dan 1 `RISK_ACCEPTANCE_REQUIRED` untuk Staff tanpa OTP. Ini bukan sertifikasi atau klaim full ASVS Level 2; 26 non-pass disposition dan independent verification masih terbuka.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`.

## Batas dan next gate

Belum ada real employee/photo data, public DNS, external provider storage/DPA, offsite key escrow, human device/PWA-install UAT, legal/privacy approval, named pilot, private source remote/hosted CI run, independent security verification, real signed admission receipt, atau closed beta. Shared-VPS capacity monitoring, XLSX/async private export, dedicated coverage/leave/exception export, rehire, scheduled/backdated termination, real offboarding authority/SOP, serta training/test shift isolation juga masih terbuka. Payroll nominal/compliance tidak diklaim. Next gate: moderated synthetic UAT, source/CI custody, external provider/recovery, GPS-camera-install field UAT, incident rehearsal, pilot/DPA, disposition 26 requirement ASVS non-pass, seluruh 16 evidence restricted, lalu final receipt dan Go/No-Go Andreas.
