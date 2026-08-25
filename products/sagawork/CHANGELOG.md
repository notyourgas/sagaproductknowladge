# SagaWork Changelog

## Tujuan

Mencatat perubahan material SagaWork dengan status delivery dan activation yang jujur.

## Konteks

Synthetic fixture, preview, dan staging bukan bukti real pilot atau production activation.

## 2026-08-25 - Self-service password dan session security

- `CONFIRMED` dari exact implementation/runtime `80cf623b5e3eb01d53355ff62578eca325b295a0`, documentation acceptance `35c048a`, protected Preview `dpl_CYKzNDVtmoKvtEV2Eb8MGHJRj8BR`, dan exact Hostinger synthetic staging evidence.
- Staff dan Owner/HR mendapat self-service password change dengan current-password verification, context/common-password rejection, dan revoke seluruh sesi lain. Pengguna dapat melihat/mengakhiri sesi sendiri; batas akun lima Staff atau tiga privileged.
- Blocklist menyimpan 3.000 hash SHA-256 dari corpus checksum-pinned yang memenuhi policy; plaintext corpus, raw user agent, credential, dan PII tidak masuk knowledge/repository.
- 31/102 test, 41-page build, 19-area smoke, abuse 8/8, browser/Axe 12/4, isolated load 720/720, schema-2 manifest 949 file, encrypted restore 56/22/26 dengan zero resurrection, dan rollback `80cf623 → 517bd6c → 80cf623` lulus.
- OpenAPI sekarang 59 path/72 operasi/40 request components; MySQL tetap 56 application tables dengan 22 migration. ASVS internal menjadi 148 PASS, 79 N/A, 7 pending internal, 18 pending external, dan 1 risk acceptance.
- Restricted artifact exact runtime 1.393.686 byte mempunyai SHA-256 `0e9acc4f5866a8e4bf18cddb0036236754faafaddc41969940c0b18fbdf4f390`; artifact tidak dipublikasikan.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Tidak ada real data, public route, provider production, atau closed-beta activation.

## 2026-08-25 - Exact ASVS disposition dan cross-platform release acceptance

- `CONFIRMED` dari exact implementation/runtime `6ea328f6fbaf7052616c100abe1cacd79cadcfa2`, documentation acceptance `d005cfde68d95da5d9a21cd1695b10aa645c9785`, protected Preview `dpl_2zNRzrc9TpAWmPFBGP9aMyX88H7b`, dan exact Hostinger synthetic staging evidence.
- LF/CRLF-safe OpenAPI/ASVS verifiers, exact session-cookie harness, platform-aware standalone finalizer, dan schema-2 manifest memverifikasi 906 runtime/server/static/public file. Tracked-source artifact restricted 1.247.818 byte/468 tar entries mempunyai SHA-256 `5db56f0e022f8ff5bc840a9788bbcf2ad8563c2dcef271ac5da3b94f4972620f` dan tidak dipublikasikan di knowledge repo.
- 30/95 unit test, 39-page build, 18-area smoke, security abuse 7/7, browser/Axe 12/4, isolated load 720/720 tanpa error, encrypted recovery, dan rollback `6ea328f → 62d5bf2 → 6ea328f` lulus.
- Internal ASVS 5.0 profile mempunyai 253 ID: 140 `PASS_INTERNAL`, 79 `NOT_APPLICABLE`, 15 `PENDING_INTERNAL`, 18 `PENDING_EXTERNAL`, dan 1 `RISK_ACCEPTANCE_REQUIRED`. Ini bukan sertifikasi/full-Level-2 claim; 34 non-pass disposition dan independent verification tetap pending.
- Mixed auth-abuse→load sequence mencatat transient readiness p95 691,6 ms versus target 500 ms walaupun 300/300 response HTTP 200; isolated rerun p95 158,0 ms. Shared-VPS/noisy-neighbor risk dipertahankan.
- Delivery tetap `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Tidak ada real data, public DNS, provider production, signed real admission receipt, atau closed-beta activation.

## 2026-08-25 - Fail-closed signed pilot admission

- `CONFIRMED` dari implementation `3bcdf06`, acceptance `a36ac8e`, documentation head `7ec66ff`, exact active isolated staging `e003a3d`, serta local full-regression/artifact evidence.
- Admission receipt memakai Ed25519 dengan private key hanya dalam custody Andreas dan public-key verifier; exact source/runtime/protected-preview binding, maksimum tujuh hari, 16 required evidence Gate A/B/C/E, PII-like field guard, residual-risk disposition, dan no-overwrite berlaku fail-closed.
- Dua belas admission security/contract cases, OpenAPI/contract drift, 27/89 unit test, 39-page build, release tests, dan production dependency audit lulus.
- Restricted acceptance artifact exact `a36ac8e`: 1.223.662 byte/452 tracked entries, SHA-256 `51c764f3464c02fc023a322007154c4b8735f75ebb363d8700744f2057fe84fb`; content exclusion PASS dan artifact belum terdeploy.
- Runtime/preview tidak berubah. Gate E tetap `NOT_STARTED_EXTERNAL`; real receipt, named pilot, legal/provider/offsite/device/public-route evidence, canary, dan Andreas Go masih pending.

## 2026-08-25 - Validated OpenAPI 3.1.1 dan exact handoff

- `CONFIRMED` dari OpenAPI source `133b936`, acceptance `85bbbfb`, documentation head `366b1cd`, exact active isolated staging `e003a3d`, serta local QA/artifact evidence.
- Machine-readable contract mencakup exact 56 path/69 operasi dan 39 request components, cookie/public auth boundary, path/query/header/idempotency, stable envelope/error/CSV, unique operation IDs, generated artifact freshness, serta source drift verifier.
- Pinned Redocly CLI `2.47.0` lint PASS tanpa warning; 27/89 unit test, 39-page build, production dependency audit nol vulnerability, release manifest, dan restricted bundle acceptance PASS.
- Restricted OpenAPI implementation/acceptance artifact exact `85bbbfb`: 1.213.154 byte/444 tracked entries, SHA-256 `9deb21651fb89dca6dbeee25e3f5626d88937f0bc0d38c8055adaf31120c61f9`; metadata public-safe dicatat tanpa memublikasikan file restricted.
- Runtime Hostinger dan protected Vercel Preview tidak berubah. Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Gate C-04 `PASS_INTERNAL`, tetapi provider/DPA/cost, offsite custody, DPIA/legal, independent review, Gate A/B/E, dan Andreas Go tetap pending.

## 2026-08-25 - Verifiable restricted release artifact dan implemented contracts

- `CONFIRMED` dari release tooling `209eec2`, implemented-contract source `b3ab90f`, completion audit `1ad6bf1`, exact active isolated Hostinger staging `e003a3d`, serta artifact/runtime verification.
- Tracked-source handoff archive exact `e003a3d` berukuran 1.176.243 byte dengan provenance dan SHA-256 `461efe3105ebfbebb743ade95f59ad0cb70fbcb89ebd2655d00845dd3cd7db34`; exclusion check memastikan secret, runtime env, database dump, PII, dependency, dan build cache tidak ikut. Artifact tetap restricted dan tidak dipublikasikan di knowledge repo.
- Implemented data/API inventory mencakup seluruh 56 tabel, 21 migration, 56 route file, dan 69 operasi; source-drift verifier PASS. Formal OpenAPI 3.1 component schemas/generated client masih pending.
- Runtime Hostinger dan protected Vercel Preview tidak berubah. Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`; Gate A/B/C masih membutuhkan evidence eksternal/human dan Gate E belum dimulai.

## 2026-08-25 - Safe PWA install/update dan CI baseline

- `CONFIRMED` dari feature source `e9c2c6c`, exact active isolated Hostinger staging `e003a3d`, documentation head `6964dd5`, serta synthetic build/test/runtime evidence.
- Account Staff mempunyai install guidance dan explicit update prompt. Service worker exact-allowlist hanya menyimpan manifest/icon publik; `/sw.js` no-store dan tidak meng-cache HTML/API/authenticated route/foto/export.
- Workflow CI SHA-pinned tersedia; full local equivalent lulus 27/89 unit test, 39-page build, dependency audit, manifest guard, 18-area smoke, security 7/7, load 720/0, browser+Axe 12/4, encrypted backup checksum, manifest 26 file, serta rollback `e003a3d → 9d49565 → e003a3d`.
- Protected Vercel Preview `dpl_CxS7HN4JT7SQaKASqcfegtTsxAZF` `READY`; authenticated health, standalone manifest, dan public-only service-worker contract PASS tanpa MySQL/custom domain/promotion.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Hosted CI belum dijalankan karena source belum mempunyai private remote; real-device install/update/offline UAT dan external/human gates tetap pending.

## 2026-08-25 - Per-Staff reporting dan Summary/Detail CSV

- `CONFIRMED` dari feature source `763fa37`, exact active isolated Hostinger staging `9d49565`, documentation head `9eeef49`, serta synthetic build/test/runtime evidence.
- HR mendapat searchable per-staff summary dan shift drill-down untuk net/payable hours, lateness count/raw minutes, early leave, break, overtime candidate/approved, dan blocker; UI menyatakan no-ranking/no-automatic-consequence.
- Summary/detail CSV memakai canonical rows/locked snapshot, preview/final metadata, timezone, formula sanitation, view-specific checksum/audit, dan deterministic checksum setelah reopen. 26/87 unit test, 17-area smoke, security 7/7, load 720/0, browser+Axe 12/4, backup checksum, manifest 26 file, dan rollback `9d49565 → da2e662 → 9d49565` lulus.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. XLSX/async private export, dedicated coverage/leave/exception export, real reconciliation/provider/offsite/legal/device/pilot/public route, dan Andreas Go tetap pending.

## 2026-08-25 - Guarded Staff lifecycle dan access revocation

- `CONFIRMED` dari exact source/active isolated Hostinger staging `da2e662`, documentation head `5a9515c`, serta synthetic build/test/runtime evidence.
- People workspace memisahkan status kerja dan akses. HR dapat suspend/restore membership Staff dengan immediate session revoke, terminate setelah future schedule/request/swap blocker bersih, lalu archive tanpa hard delete; PATCH profil tidak dapat mengubah lifecycle terminal.
- Aktivasi ikut mempromosikan employment menjadi active. 25/84 unit test, 17-area smoke, security 7/7, 720 request/0 error, browser+Axe 12/4, backup checksum, manifest 26 file, dan rollback `da2e662 → b3c36cf → da2e662` lulus.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Rehire, scheduled/backdated termination, real offboarding SOP/authority, external provider/offsite/legal/device/pilot/public route, dan Andreas Go tetap pending.

## 2026-08-25 - Supervisor-assisted attendance

- `CONFIRMED` dari feature source `fe222e1`, exact accepted Hostinger staging `b3c36cf`, documentation head `1dee547`, serta synthetic test/runtime evidence.
- Supervisor/HR dapat mencatat attendance untuk staf tanpa smartphone dari jadwal published dengan reason dan attestation; Staff ditolak, foto/GPS palsu tidak dibuat, record memblokir report sampai reviewer independen memutuskan, dan self-review maker ditolak.
- 24/79 unit test, 16-area full smoke, security 7/7, 720 request/0 error, browser+Axe 12/4, backup checksum, manifest 26 file, dan rollback `b3c36cf → 7d5ada9 → b3c36cf` lulus.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Training/test isolation, multi-session policy, external provider/offsite/legal/device/pilot/public route, dan Andreas Go tetap pending.

## 2026-08-25 - Private non-PII attendance evidence bytes

- `CONFIRMED` dari feature source `76ff2cb`, active isolated staging `7d5ada9`, Vercel Preview `dpl_AJNsByPfcxvbFEmtk8KvRB92YL6m`, dan automated/runtime evidence.
- Attendance photo sekarang menunggu private quarantine→ClamAV→metadata-stripped clean sebelum event dikirim; status hanya dapat dibaca owner object, sedangkan scoped HR mendapat signed view lima menit dan Staff ditolak.
- Non-PII byte upload, safe image, service-user EICAR detection, access audit, legal hold, byte purge, `bytesDeleted` certificate, 23/76 unit test, 15-area smoke, security 7/7, 720-request load, browser+Axe 12/4, serta rollback `7d5ada9 → e7f4622 → 7d5ada9` lulus.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Same-VPS loopback storage hanya acceptance internal, bukan external provider/DPA/offsite/HA, dan real employee/photo data tetap dilarang.

## 2026-08-25 - Default-off unscheduled attendance dan pilot handoff

- `CONFIRMED` dari feature source `0a2805e`, active isolated staging `e7f4622`, handoff/audit source `d2025e4`, protected Vercel deployment `dpl_3nx9EfTeh5VYSTP1ta3Q7ByTpebs`, serta automated/runtime evidence.
- Staff tanpa jadwal dapat memakai flow darurat hanya jika policy HR opt-in: lokasi aktif, photo+GPS, satu draft per tanggal, human-review exception, payroll blocker, checkout actualization, HR publish, dan resolve/dismiss yang auditable.
- Build, 23/72 unit test, 15-area smoke, security 7/7, 720-request load, browser+Axe 12/4, manifest 25 artifact, encrypted backup, dan rollback dua arah lulus pada synthetic staging.
- Delivery `STAGING_DEPLOYED`; internal disposition `PILOT_READY_CANDIDATE`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED_EXTERNAL`. Real provider/photo bytes, offsite/key custody, legal/device/human UAT, named pilot, public route, dan Andreas Go/No-Go tetap pending.

## 2026-08-25 - Paid/unpaid break dan human-review exception

- `CONFIRMED` dari feature source `3603430`, active staging fix `74cc833`, protected Vercel deployment `dpl_pgZhC64nNfe6HHnVp5bnthcWXUHs`, dan automated/runtime evidence.
- Policy versioned membedakan paid/unpaid, toleransi long break, serta missing/long review. Report/CSV/snapshot/component line memisahkan net produktif dan payable.
- Smoke menangkap percobaan mutation pada evaluation append-only; fix menyimpan risk/exception sebagai evidence baru dan seluruh business/security/browser gate lulus ulang.
- Delivery tetap `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Tidak ada payroll nominal, compliance claim, real data, atau public pilot.

## 2026-08-25 - Atomic staff CSV import dan protected-route hardening

- `CONFIRMED` dari feature source `e0cbaa5`, active staging source `f4c4387`, protected Vercel deployment `dpl_GXFfbMY9RVGyLuCCCyyy9HqzKPe6`, dan automated/runtime evidence.
- HR dapat melakukan bounded CSV preview, melihat error per baris, lalu commit atomik sebagai draft tanpa membuat account/password; hasil dan audit tersedia per batch/per employee.
- Regression smoke menemukan protected workspace sempat ter-build statis ketika database environment tidak tersedia. Guarded rollback dijalankan dan source aktif memaksa Staff/HR layouts dynamic; unauthenticated redirect, full smoke, security abuse, browser, dan Axe lulus.
- Delivery tetap `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. XLSX/error export, real provider/data, legal, human UAT, dan pilot belum lulus.

## 2026-08-25 - Synthetic staging baseline sampai payroll reopen

- `CONFIRMED` dari exact feature source `7ba3010`, active isolated Hostinger staging, protected Vercel deployment `dpl_AN91Lq2eo92eG7KsA9NDk8nW2R6w`, dan automated/runtime evidence.
- MVP mencakup IAM/people, scheduling/notes/swap, attendance foto+GPS/break, correction/request, overtime partial approval, report/score, period lock/reopen, governance, recovery, dan guarded release.
- Delivery `STAGING_DEPLOYED`; activation `NOT_PRODUCTION_ACTIVATED`; business readiness `BLOCKED`. Tidak ada real data/provider/public activation.
