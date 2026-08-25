# SagaWork Changelog

## Tujuan

Mencatat perubahan material SagaWork dengan status delivery dan activation yang jujur.

## Konteks

Synthetic fixture, preview, dan staging bukan bukti real pilot atau production activation.

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
