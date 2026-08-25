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

- Exact active staging runtime `e003a3d`; isolated Hostinger staging memakai MySQL 8.4 dengan 21 migration, data sintetis, serta same-VPS loopback object store khusus acceptance non-PII. Store ini bukan provider production/offsite/HA dan tidak menerima real employee/photo data.
- Protected Vercel Preview `dpl_CxS7HN4JT7SQaKASqcfegtTsxAZF` `READY`, synthetic-only; authenticated health, standalone manifest, dan public-only service-worker contract PASS, tanpa MySQL atau custom domain.
- Restricted tracked-source handoff artifact untuk exact runtime `e003a3d` tersedia dengan provenance serta sidecar SHA-256; bundle 1.176.243 byte dan checksum `461efe3105ebfbebb743ade95f59ad0cb70fbcb89ebd2655d00845dd3cd7db34` lulus verifikasi tanpa secret, database dump, PII, runtime env, atau build cache. Artifact tidak dipublikasikan ke repository knowledge.
- Restricted OpenAPI implementation/acceptance artifact exact `85bbbfb` juga checksum/provenance-verifiable: 1.213.154 byte, 444 tracked entries, SHA-256 `9deb21651fb89dca6dbeee25e3f5626d88937f0bc0d38c8055adaf31120c61f9`.
- Implemented-contract drift gate mencakup seluruh 56 tabel/21 migration. Validated OpenAPI 3.1.1 mencakup exact 56 path/69 operasi, 39 request components, auth/parameter/idempotency/envelope/error/CSV, source drift verifier, dan pinned independent lint. External SDK/response DTO tidak dipublikasikan karena API tetap protected same-origin.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`.

## Batas dan next gate

Belum ada real employee/photo data, public DNS, external provider storage/DPA, offsite key escrow, human device/PWA-install UAT, legal/privacy approval, named pilot, private source remote/hosted CI run, atau closed beta. XLSX/async private export, dedicated coverage/leave/exception export, rehire, scheduled/backdated termination, real offboarding authority/SOP, training/test shift isolation, dan multi-session policy juga masih terbuka. Payroll nominal/compliance tidak diklaim. Next gate: moderated synthetic UAT, source/CI custody, external provider/recovery, GPS-camera-install field UAT, incident rehearsal, pilot/DPA, lalu final Go/No-Go Andreas.
