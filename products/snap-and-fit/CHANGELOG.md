# Snap and Fit Changelog

## Tujuan

Mencatat perubahan material Snap and Fit dengan pemisahan local, staging,
production, activation, dan business readiness.

## Konteks

Mock, fixture, preview frontend, dan test lokal bukan bukti provider atau
production activation.

## 2026-08-26 - AWS apply and isolated VPS prototype backend

- Reviewed AWS plan diterapkan tepat 40 add/0 change/0 destroy; refresh nol drift, public-access
  blocking aktif, dan runtime IAM user tetap tanpa access key.
- Exact VPS runtime source `8ed1787`; source/docs evidence `15166d2`. API/worker systemd terisolasi
  dan loopback-only, 19 migration plus synthetic seed lulus, serta Nginx HTTP gate fail-closed.
- Delivery tetap `LOCAL_VALIDATED / VPS_PROTOTYPE_BACKEND_DEPLOYED`, bukan `STAGING_READY` atau
  production. Manual API DNS/TLS, protected BFF connection, connected UAT, backup/restore, rollback,
  Google OAuth, Tokopay test, dan AWS runtime signing/credential masih gate.
- Klasifikasi `CONFIRMED`; production, real money, real participant media, biometric activation, dan
  business readiness tidak berubah.

## 2026-08-26 - Protected biometric-profile web preview

- Protected Vercel deployment `dpl_FTPTFFb7Q4WWh6jcp7Bt42151d87` dari exact
  source `167896b` berstatus `READY`; evidence docs berada pada `3bb8466`.
- Authenticated smoke mengembalikan HTTP 200 untuk landing, Google sign-in,
  profil biometrik akun, dan pencarian profil pada event terpilih.
- Backend health sengaja fail-closed HTTP 503 `BACKEND_NOT_CONFIGURED`; AWS belum
  di-apply, VPS/DNS/provider belum dimutasi, sehingga delivery tetap
  `LOCAL_VALIDATED`, bukan connected staging atau production.

## 2026-08-26 - Google OAuth, persistent biometric profile, and prototype infrastructure plan

- Exact private source `2aef57a` menambahkan Google OAuth untuk customer/fotografer,
  profil biometrik opsional sekali-daftar dengan liveness plus depan/kiri/kanan,
  pencarian exact-selected-event, 12-month refresh, consent withdrawal, lifecycle,
  dan S3-first deletion adapter. Biometric tidak menjadi faktor login/payment dan
  BIB tetap fallback.
- MySQL 8.4.9 clean-applies 19/19 migration; 2 database, 77 API, 27 worker, dan
  59 browser test lulus. Full validation, dependency audit, Terraform validation,
  diff check, dan secret scan lulus.
- AWS SSO/region Malaysia terverifikasi. Terraform plan adalah 40 add/0 change/
  0 destroy; tidak ada resource di-apply atau provider call/data nyata diproses.
- Read-only VPS audit menemukan sekitar 63 GB disk tersedia, tetapi host tetap
  shared 2 vCPU/~8 GB, swap hampir habis, active service/data lain, dan tanpa
  Docker. Founder menerima bounded Vercel+systemd prototype setelah exact project
  isolation/cost/DNS approval; dedicated topology tetap target scale-up.
- Klasifikasi `CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tidak berubah. Google credential, AWS apply, DNS/TLS, Tokopay test,
  legal/device/benchmark/deletion/connected UAT tetap gate.

## 2026-08-26 - Fail-closed provider-chaos acceptance and preview refresh

- Exact private provider-chaos feature `6d3d955`; source/docs head `d9285fc`.
- Satu command reproducible menjalankan 32 test di delapan file terhadap payment,
  face/liveness, private media, notification, dan deletion service. Timeout tidak
  membuat payment paid atau derivative terbit; BIB fallback, retry, quarantine,
  DLQ, idempotency, dan redaction tetap berlaku.
- Full validation lulus dengan 64 active API test/9 controlled skip, 23 active
  worker test/4 controlled skip, seluruh package build, runtime packaging,
  55 Playwright pass/3 intentional skip, dependency audit nol, dan peer check bersih.
- Protected Vercel preview `dpl_HwMrwup2NgAGTREFkABND5mVHEtB` untuk exact
  source `d24fc31` `READY`; remote Linux build/uploader smoke lulus dan error-log
  query kosong. Backend tetap fail-closed karena belum ada isolated staging env.
- Hosted CI run `32925596466` tetap berhenti sebelum runner/step pada billing
  gate. Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production
  tidak berubah, dan business readiness tetap `BLOCKED`.

## 2026-08-26 - Staging blocker revalidation

- Exact private source/docs `b946581`; read-only inspection tidak melakukan remote write.
- Satu-satunya configured SSH target tetap shared 2 vCPU/8,32 GB/102,92 GB,
  disk 86% dengan 15,24 GB tersedia, swap praktis habis, active shared services,
  dan tanpa Docker. Target ditolak oleh isolation/capacity policy.
- Protected Vercel uploader tetap 200 dengan defensive headers, tetapi project
  tidak memiliki environment variable dan BFF health tetap fail-closed 503.
- Latest hosted run `32886597014` tidak memperoleh runner/step karena account
  payment/spending gate; private branch protection tetap plan-gated 403.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`. Owner perlu
  menyediakan grouped isolated-staging resource/approval request.

## 2026-08-26 - Native age encrypted recovery preflight

- Exact private evidence/docs source `4b6c08b`.
- MySQL 8.4.9 source menerapkan 18/18 migration dan synthetic seed. Dump dialirkan
  langsung melalui gzip dan official age v1.3.1 tanpa plaintext artifact.
- Encrypted checksum stabil setelah simulated off-host move; modified ciphertext
  ditolak. Restore ke MySQL kedua menghasilkan 51 tabel, delapan recovery table,
  18 migration sehat, nol orphan deletion task, dan ledger seimbang dalam 26,23 detik.
- Full validation, production dependency audit, peer check, dan diff check lulus;
  kedua disposable MySQL port ditutup dan service existing tidak disentuh.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`. Real off-host
  custody/retention, Linux permission, isolated-staging RPO/RTO, dan rollback
  masih exit gate.

## 2026-08-26 - Fail-closed 300-VU local preflight

- Exact private load feature `f06d538`; source/docs head `5035602`.
- Fixture hanya menerima loopback memory preflight atau exact HTTPS
  isolated-staging origin dengan acknowledgement eksplisit. Repository gate
  mengikat 300 VU, dua menit, readiness abort, threshold, dan p99 summary.
- Local synthetic run menyelesaikan 36.000 iterasi dan 79.145 request; seluruh
  threshold lulus dengan 0,0708% HTTP failure, 99,9293% checks, p95 4,58 ms,
  serta p99 33,12 ms. Sebanyak 56 initial Windows loopback refusal tetap dicatat.
- Full validation, 55 browser pass dengan tiga intentional skip, audit dependency
  produksi, peer check, dan diff check lulus. Hosted run `32885224444` tidak
  mendapat runner karena account payment/spending-limit gate.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`. Exact run pada
  isolated MySQL/Redis/Nginx/container staging masih exit gate.

## 2026-08-26 - Deterministic 500-file uploader recovery

- Exact private feature `6f57416`; evidence/docs head `47e4dce`.
- IndexedDB v2 mempertahankan exact target total setelah partial reload.
  Reselect folder yang sama melanjutkan hanya derivative yang hilang dan
  melewati source yang sudah selesai tanpa duplikasi; reset lokal memerlukan
  konfirmasi dan dikunci setelah server batch aktif.
- Acceptance membuat 500 synthetic JPEG, melakukan pause/reload/reselection,
  mencapai tepat 500/500, reload ulang, deduplication, dan reset pada mobile
  serta desktop. Full suite lulus 55 browser test dengan tiga intentional skip;
  audit dependency produksi dan peer check bersih.
- Protected preview `dpl_HfF3ksVNy65qhyX36qX4V4RmFQix` dari exact source
  `8dec486` `READY`; uploader 200 dan backend fail-closed 503. Hosted run
  `32882305982` tetap account-gated sebelum runner/step.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`. Real 500-object
  S3/worker interruption recovery masih gate isolated staging.

## 2026-08-26 - Fail-closed repository security scan

- Exact private feature `db4e709`; documentation/evidence head `3a37ae8`.
- CI menambahkan security job exact-commit yang menjalankan Trivy v0.74.0 pada
  production-package vulnerability, secret, dan IaC dengan fail-closed
  High/Critical policy. Supply-chain verifier mengikat exact scan block.
- Official Windows archive dan checksum-list SHA-256 terverifikasi. Final
  worktree scan menghasilkan nol vulnerability, secret, atau misconfiguration
  finding pada severity High/Critical.
- Full validation, 53 browser pass dengan tiga intentional skip, actionlint,
  production dependency audit nol, dan peer check lulus.
- Hosted run `32879945400` membuat security job `97906722493` dan validate job
  `97906722770`; keduanya tidak mendapat runner dan memiliki nol step karena
  account billing/spending gate. Final-image/runtime scan tetap external gate.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`.

## 2026-08-26 - Deterministic Nginx staging host policy

- Exact private feature `7fdd49a`; documentation/evidence head `ef1b7e9`.
- API-only Nginx template dan renderer mengikat hybrid Vercel-to-VPS topology,
  fixed hostname, loopback API upstream, TLS/security header/body limit,
  route-class rate limit, safe query-free log, serta public deny untuk metrics
  dan local-media.
- Deploy dan rollback mewajibkan marker hostname/SHA-256 exact, root-owned
  config, real syntax/dump/loaded-host proof, active service, dan successful
  reload. Behavioral fixture meliputi renderer, tamper/permission/load/service,
  serta deploy/rollback equivalence.
- Official signed Windows Nginx 1.31.3 meluluskan real syntax test. Full local
  validation, 53 browser pass dengan tiga intentional skip, Bash syntax,
  ShellCheck, production audit nol vulnerability, dan peer check lulus.
- Hosted run `32878033015` (job `97900626530`) tidak mendapat runner/step karena
  account billing/spending gate; digest-pinned Linux fixture, DNS/TLS/firewall,
  external scan, dan live edge 429 masih belum dieksekusi.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`.

## 2026-08-26 - Streaming encrypted MySQL recovery artifacts

- Exact private encrypted-recovery feature `a6857d1`; documentation/evidence
  head `7887af9`.
- Backup mengalirkan `mysqldump` melalui gzip langsung ke native `age`, hanya
  menulis `.sql.gz.age` plus checksum portabel, dan tidak membuat archive
  plaintext. Restore hanya menerima encrypted artifact, mewajibkan identity
  root-owned mode `0600`, dan menyalurkan hasil dekripsi ke disposable import.
- Behavioral fixture menolak recipient/identity permission longgar, plaintext,
  dan ciphertext rusak sebelum container start. Full validation, 53 browser
  pass dengan tiga intentional skip, Bash syntax, ShellCheck, audit dependency
  nol, serta peer check lulus.
- Hosted run `32875673050` (job `97892868155`) tidak memperoleh runner/step
  karena account billing/spending gate. Real `age`, off-host transfer, retention,
  key custody, RPO/RTO restore, dan isolated staging tetap belum dieksekusi.
- Klasifikasi `CONFIRMED`; delivery tetap `LOCAL_VALIDATED`, production dan
  activation tidak berubah, business readiness tetap `BLOCKED`.

## 2026-08-25 - Fail-closed isolated staging-host preflight

- Exact private feature source `fc383e1`; documentation/evidence head `4ecef5e`.
- Deploy menolak sebelum Compose/config/pull bila Linux, root-owned mode `0600`
  isolation/encryption marker, 4 vCPU, 16 GB RAM, 200 GB disk, 100 GB available,
  Docker Engine, atau Compose v2 tidak memenuhi gate.
- Behavioral fixture meliputi missing/non-root/permissive/incomplete marker dan
  setiap capacity/runtime failure. Full validation, 53 browser pass, Bash syntax,
  checksum-verified ShellCheck, audit dependency nol, dan peer check lulus.
- Read-only probe menolak shared Hostinger target exit `66` tanpa menulis file.
  Hosted run `32873937441` tetap account-gated sebelum runner/step.
- Delivery tetap `LOCAL_VALIDATED`; staging, production, activation, dan
  business readiness tidak berubah.

## 2026-08-25 - Self-contained runtime artifact hardening

- Exact private source head `6209d37`; implementation provenance `e64b002`.
- Runtime dipisah menjadi API, worker, dan one-shot migration/seed image dengan
  first-party file allowlist, clean build, non-root user, host-path sanitization,
  dan fail-closed package-link containment.
- Tiga deployment artifact aktual lulus containment dan runtime import. Forced-
  uncached task graph, full validation, 53 browser pass, peer check, dan audit
  dependency produksi nol vulnerability lulus.
- Hosted run `32865834682` tetap berhenti sebelum runner/step karena account
  billing/spending-limit gate. Linux image build/run/scan dan emitted SBOM/
  provenance masih menunggu isolated staging atau hosted runner.
- Delivery tetap `LOCAL_VALIDATED`; staging, activation, business readiness,
  dan production tidak berubah.

## 2026-08-25 - Exact-head protected preview refresh

- Exact private documentation head `eec6269`; deployed clean source `e6e27d0`.
- Protected Vercel deployment `dpl_3PW4rbAek9FijQy9vU3Dfb1UMTUw` berstatus
  `READY`; tujuh web/PWA route 200 dengan security header release.
- BFF health sengaja 503 tanpa isolated VPS. Hosted run `32860613475` kembali
  berhenti sebelum runner/step karena billing gate.
- Delivery tetap `LOCAL_VALIDATED`; staging dan production tidak berubah.

## 2026-08-25 - Recovery preflight masuk full validation

- Exact private source `e6e27d0` berstatus `LOCAL_VALIDATED`.
- `pnpm validate` kini selalu menjalankan behavioral release/recovery preflight
  melalui Node launcher lintas-platform sebelum quality gate lain.
- Launcher mencari standard Git Bash atau `PATH` di Windows tanpa command
  interpolation; full validation dan audit dependency lulus.
- Hosted run `32859786213` tetap berhenti sebelum runner/step karena account
  billing gate. Production, preview, dan staging status tidak berubah.

## 2026-08-25 - Fail-closed staging restore verification

- Exact private source `076f76b` berstatus `LOCAL_VALIDATED`.
- Recovery verifier mengoreksi `auth_users` menjadi authoritative `auth_user`;
  mismatch lama membuat restore sehat ditolak sebelum drill dapat berjalan.
- Gate sekarang juga mewajibkan migration history sehat, nol orphan deletion
  task, dan ledger seimbang per currency. Behavioral test menerima healthy
  fixture dan menolak empat state corrupt/incomplete.
- Git Bash syntax, checksum-verified ShellCheck v0.11.0, full validation, serta
  production dependency audit nol vulnerability lulus.
- Hosted run `32859199601` tetap tidak memperoleh runner/step karena account
  billing gate. Production dan delivery tidak berubah; encrypted off-host
  staging restore tetap belum dieksekusi.

## 2026-08-25 - Exact-head protected preview refresh

- Exact private documentation head `176cf15`; preview implementation source
  tetap exact `4384948`.
- Protected Vercel deployment `dpl_CeGgE8rxJX58qQpTGzdqUoPc6iQn` berstatus
  `READY`; web shell, manifest, service worker, offline, BIB, selfie capture, dan
  photographer jobs route 200 dengan CSP/HSTS/no-sniff/frame-deny/noindex.
- Backend health sengaja fail-closed 503 sampai isolated VPS tersedia. Local
  Windows prebuilt packaging bukan release path karena route-mapping gagal setelah
  Next build sukses; remote Linux build lulus.
- Hosted run `32848538160` juga berhenti sebelum runner/step karena account
  payment/spending-limit gate. Delivery tetap `LOCAL_VALIDATED`.

## 2026-08-25 - MySQL 8.4 clean-room compatibility

- Exact private source `4384948` berstatus `LOCAL_VALIDATED`.
- Disposable loopback MySQL 8.4.9 mengaplikasikan 18/18 migration dari kosong,
  menjalankan seed, 2 database test, 71 active API pass, dan 24 active worker
  pass; skip tersisa hanya Redis/BullMQ.
- Dump sintetis pulih ke database kedua dengan 51 tabel, recovery schema lengkap,
  18 migration row, nol orphan deletion task, dan ledger seimbang.
- Migration memperbaiki batas index storage ASCII, CHECK/FK update action,
  urutan replacement index, pending HiRes dimension, serta fixture authority.
- Hosted run `32847799797` berhenti sebelum runner/step karena account
  payment/spending-limit gate. Delivery tetap `LOCAL_VALIDATED`, bukan
  `STAGING_READY`; production tidak berubah.

## 2026-08-25 - Exact hosted blocker evidence

- Exact private documentation head `f41bbb8` mencatat feature head
  `d0f3b7d` sebagai authority perubahan digest-only release.
- GitHub Actions run `32844518323` untuk feature head gagal sebelum assignment
  runner: nama runner kosong dan tidak ada step yang berjalan. Ini blocker
  hosted-runner/account, bukan evidence source regression.
- Branch protection private repository tetap plan-gated (API 403). Local/static
  gates lulus, tetapi hosted CI dan required-check enforcement belum lulus.

## 2026-08-25 - Digest-only application release

- Exact private source `d0f3b7d` berstatus `LOCAL_VALIDATED`.
- Commit SHA tetap menjadi tag/label provenance, tetapi deploy/rollback sekarang
  menolak seluruh app image tanpa exact OCI manifest digest karena registry tag
  tetap dapat dipindahkan.
- Container workflow dikonfigurasi menghasilkan BuildKit SBOM/provenance,
  mem-push image, memvalidasi resulting digest, dan mencatat digest untuk release.
- Release preflight, full validation, actionlint dengan ShellCheck, enam-file
  ShellCheck, Compose digest-only image set, serta production audit lulus. Hosted
  build/emission, image scan, pull, dan runtime tetap belum dieksekusi.

## 2026-08-25 - Immutable release supply chain

- Exact private source `ee45e56` berstatus `LOCAL_VALIDATED`.
- GitHub Actions di-pin exact upstream commit; Node build/runtime serta CI dan
  staging MySQL/Redis memakai OCI manifest digest. App image tetap exact
  40-character source tag atau digest.
- Deploy/rollback menolak mutable resolved image sebelum pull; restore menolak
  MySQL override tanpa digest. Immutable-reference verifier berjalan di awal
  validation dan release-preflight regression mencakup accept/reject path.
- Actionlint, ShellCheck enam file, Compose static immutable image set, full
  validation, dan audit dependency produksi nol vulnerability lulus. Image belum
  dibangun, dipindai, atau dijalankan; production dan activation tidak berubah.

## 2026-08-25 - Authoritative load quote fixture

- Exact private source `4f9d8d3` berstatus `LOCAL_VALIDATED`.
- Fixture 300-VU tidak lagi mencoba quote tanpa session authority: setiap
  sampled quote berasal dari seeded-BIB search, candidate presence check,
  exact-session confirmation, dan same anonymous-session quote.
- Full validation dan official checksum-verified k6 v2.2.0 `inspect` lulus;
  portable verifier dibersihkan dan tidak ada traffic yang dikirim.
- Real 300-VU/soak/edge-429 evidence tetap menunggu isolated staging. Production,
  activation, dan business readiness tidak berubah.

## 2026-08-25 - Checksum-verified ShellCheck acceptance

- Exact private docs head `162cc29` berstatus `LOCAL_VALIDATED`.
- Official Windows ShellCheck v0.11.0 archive cocok dengan SHA-256 release asset;
  seluruh lima skrip operasi lulus sampai severity `style`.
- Portable verifier sudah dibersihkan setelah run. Static shell lint tertutup,
  tetapi image/container, migration, load, backup/restore, dan canary masih
  menunggu isolated staging. Production dan activation tidak berubah.

## 2026-08-25 - Reproducible Windows clean-checkout acceptance

- Exact private setup fix `fbf01b6` dan evidence head `b17712d` berstatus
  `LOCAL_VALIDATED`.
- Detached checkout dari exact remote pada Windows `core.autocrlf=true` lulus
  instruksi README memakai non-admin `corepack pnpm`, frozen install, copy
  `.env.example`, dan forced uncached lint/typecheck/test/build.
- Browser acceptance dari checkout bersih lulus 53 test dengan tiga intentional
  skip. Repository-wide LF policy mencegah CRLF format drift.
- Service-dependent integration skip, hosted CI, isolated runtime, migration,
  load, backup/restore, dan provider canary tetap gate. Production, activation,
  dan business readiness tidak berubah.

## 2026-08-25 - Liveness React peer acceptance dan protected preview

- Exact private feature `7b44101` dan documentation head `a9518e0` berstatus
  `LOCAL_VALIDATED`.
- Official liveness package menyatakan React 19 support, sedangkan fixed
  transitive peer metadata berhenti di React 18. Narrow PNPM rule dicatat hanya
  untuk exact package/peer edge; tidak ada global warning suppression.
- Frozen install, fresh production web build, full validation, 53 browser tests,
  production audit, dan peer check lulus.
- Protected preview `dpl_E749gUQc7iVtGCauGvVLa1swk59j` dari baseline `7b44101`
  `READY`; UI/PWA routes 200 dan backend 503 fail-closed.
- Metadata gate tertutup, tetapi upstream recheck, AWS provider runtime,
  benchmark, legal, deletion, dan real-device camera evidence tetap wajib.
  Production dan activation tidak berubah.

## 2026-08-25 - Local Bash dan Compose static gates

- Exact private documentation head `f03e8bd` berstatus `LOCAL_VALIDATED`.
- Lima shell script operasional lulus Git Bash `bash -n`; staging Compose lulus
  `config --quiet` menggunakan official checksum-verified Docker Compose v5.5.0
  dan synthetic-only interpolation values. Tidak ada image/container dijalankan.
- Latest GitHub Actions run untuk prior exact docs head tetap gagal sebelum
  runner dan step dimulai; private branch protection juga tetap plan-gated.
- Shared VPS tetap ditolak. Delivery, activation, production, dan business
  readiness tidak berubah; image/container, migration, load, backup/restore,
  dan canary masih menunggu isolated staging.

## 2026-08-25 - Encrypted event-scoped face search orchestration

- Exact private feature `96df668` dan documentation head `822933f` berstatus
  `LOCAL_VALIDATED`.
- Worker mengindeks exact-event collection; collection/face/selfie/similarity
  reference dienkripsi per event dan lookup face memakai HMAC. API mengambil
  liveness result dan mencari collection di server tanpa mengekspos provider ID,
  similarity score, atau identity claim ke client.
- Official Amplify liveness client memakai single-use session, bounded attempt
  lockout, legal notice version/hash, no-store response, dan provider-degraded
  fallback ke BIB. AWS execution tetap default-off dan belum pernah dipanggil.
- Full gate lulus: 63 API, 21 worker, 6 face-provider, 7 media, 5 observability,
  53 browser, seluruh build, dan audit dependency produksi nol vulnerability.
- Protected preview `dpl_BRsjcFnYQV6NVTCyJqcP19te4HsS` dari baseline `96df668`
  `READY`; UI/PWA route 200 dan backend 503 fail-closed. Isolated staging,
  provider/legal/device/deletion benchmark, dependency compatibility, dan
  production tetap belum diaktifkan.

## 2026-08-25 - Resumable multipart HiRes sampai 200 MB

- Exact private feature `3fc397f`, staging-control baseline `d2b0c5c`, dan docs
  head `f38ffdc` berstatus `LOCAL_VALIDATED`.
- HiRes sampai 50 MB tetap memakai checksum-bound PUT; file 50–200 MB memakai
  part 10 MiB, SHA-256 per part, URL 15 menit, capability resume 24 jam,
  refresh/abort, ordered completion, serta final full-object SHA-256 dan visual QA.
- Capability diverifikasi dan dicocokkan ke exact photographer-owned target
  sebelum storage mutation. Provider upload ID tidak masuk database atau public payload.
- Browser sintetis memutus part ketiga, mempertahankan dua ETag, mengunggah ulang
  hanya part pending, lalu menyelesaikan 1–5. Full gate lulus: 61 API, 20 worker,
  7 media, 5 observability, 53 browser, semua build, dan audit produksi nol vulnerability;
  skip service/project-specific tetap terkontrol.
- Protected preview `dpl_HMJX9CJitQX8Qqf9bN6X9AmQNRbP` `READY`; shell route 200
  dan backend 503 fail-closed. Real S3/KMS multipart, lifecycle, ETag CORS,
  CloudFront runtime, isolated staging, dan production tetap belum diaktifkan.

## 2026-08-25 - Private CloudFront delivery dan AWS face provider contract

- Exact private CloudFront feature `5fe6ab5`, AWS face-provider contract
  `037d2b4`, dan docs/resource-request head `b067d01` berstatus `LOCAL_VALIDATED`.
- S3 staging/production fail-closed tanpa KMS serta private CloudFront domain,
  key-pair ID, dan API-only signing key. Signed URL dibatasi lima menit dan tidak
  mengekspos private bucket.
- AWS adapter mencakup exact event collection, S3 reference index/search,
  zero-audit-image Liveness, benchmark thresholds, dan safe idempotent collection
  deletion evidence. Adapter tetap disconnected/default-off dan belum memanggil AWS.
- Full lint/typecheck/test/build, 59 API, 20 worker, 5 face-provider, 6 media,
  5 observability, 52 browser dengan dua intentional viewport skip, dan
  dependency audit nol vulnerability lulus.
- Protected preview `dpl_8agG8ianbziAht6cbKRRWVwF5DBv` `READY`; PWA/BIB routes
  200 dan backend 503 fail-closed. Production tidak berubah. Isolated staging,
  real CloudFront/AWS evidence, encrypted provider mapping/client orchestration,
  legal/benchmark/device gates, dan multipart >50 MB tetap terbuka.

## 2026-08-25 - Safe trace propagation dan private API metrics

- Exact private trace feature `3fa3be4`, metrics feature `1c1a81e`, dan
  documentation head `ae0b8e7` berstatus `LOCAL_VALIDATED`.
- API request span memvalidasi W3C context dan hanya merekam method, route
  template, status, duration, environment, serta safe error type. Critical
  outbox membawa traceparent menuju relay producer dan worker consumer span.
- Private Prometheus endpoint default-off membutuhkan secret 32+ karakter,
  memberi 404 identik untuk missing/wrong secret, no-store, dan bounded labels
  tanpa raw URL, body, BIB, email, token, user/event/order ID, atau media ref.
- Full validation, 59 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, lima observability test, 52 browser test
  dengan dua intentional skip, build, dan dependency audit nol vulnerability lulus.
- Migration trace, OTLP export lintas proses, Prometheus scrape, dan alert fire/
  recovery masih isolated-staging gate. Production dan protected web preview tidak berubah.

## 2026-08-25 - Privacy-safe installable PWA shell

- Exact private feature source `141bbb5` dan documentation head `7507672`
  berstatus `LOCAL_VALIDATED`.
- Manifest, public icon, scoped service worker, dan safe offline page sekarang
  membentuk installable shell. Navigation bersifat network-first; offline tidak
  mengantre atau mengklaim mutasi berhasil.
- Cache Storage dibatasi pada offline shell dan safe same-origin static assets.
  API/BFF, auth, search, checkout, account, role page, private candidate media,
  signed download, cross-origin response, dan mutation tidak disimpan.
- Full validation, 53 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 52 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_9HVaRkahXkayYALkmsRxU515teaR` `READY`; manifest,
  service worker, offline, dan BIB route 200, sementara backend 503 fail-closed.
  Production tidak berubah.

## 2026-08-25 - Private candidate confirmation preview

- Exact private feature source `c17d56d` dan documentation head `603c82a`
  berstatus `LOCAL_VALIDATED`.
- Candidate BIB/selfie sekarang dapat dilihat sebelum confirm/reject melalui
  signed HMAC capability lima menit dan same-origin BFF. Token terikat event,
  search session, asset, source, dan expiry; token tampered/expired ditolak.
- Authoritative search hanya menerbitkan asset published dengan approved
  watermarked preview. Response memakai private/no-store dan
  noindex/noimageindex/noarchive, tidak mengekspos raw private bucket/key, serta
  fixture lokal dilabel sebagai JPEG sintetis tanpa foto peserta nyata.
- Full validation, 53 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 46 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_t5yNcUkUbVBUBtApcoBJwQCS1W3x` `READY`; BIB route 200
  dan backend 503 fail-closed. Production tidak berubah.

## 2026-08-25 - Dynamic event landing dan secure multi-photo checkout

- Exact private feature source `c314024` dan documentation head `a8bd49f`
  berstatus `LOCAL_VALIDATED`.
- Public event route membaca name, date, location, sales state, search methods,
  fulfillment SLA, dan catalog dari API. BIB/selfie membentuk event-scoped
  multi-photo cart untuk single, exact-three, dan all-confirmed package.
- Quote kini wajib membawa exact anonymous session dan setiap asset harus
  memiliki candidate confirmation aktif pada session tersebut. Direct asset ID,
  unconfirmed candidate, rejected candidate, dan session lain ditolak.
- Full validation, 50 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 46 browser test dengan dua intentional skip,
  build, dan dependency audit nol vulnerability lulus.
- Protected preview `dpl_3Wcde9LyKZrJjdV3HYHfZRUTtHSH` `READY`; dynamic event
  route 200 dan backend 503 fail-closed. Production tidak berubah.

## 2026-08-25 - Organizer safe event metrics

- Exact private feature source `46d7a4b` dan documentation head `3337651`
  berstatus `LOCAL_VALIDATED`.
- Organizer memperoleh exact-organization aggregate inventory, order,
  fulfillment, payment reconciliation, gross/cleared, posted earning, dan
  active-refund metrics tanpa customer PII atau raw payment reference.
- Cross-role metrics ditolak. Full validation, 47 API test, 20 worker test,
  40 browser test, build, dan dependency audit lulus; exact MySQL aggregate
  comparison tetap external-service skip.
- Protected preview `dpl_EwPGuj6qxNJzcf59ahcabW3SGvGx` `READY`; organizer
  route 200, backend 503 fail-closed, sehingga populated metrics tidak diklaim
  pada preview. Production tidak berubah.

## 2026-08-25 - Exact-photographer earning view

- Exact private feature source `0385317` dan documentation head `8313991`
  berstatus `LOCAL_VALIDATED`.
- Fotografer memperoleh read-only earning view exact-owner dengan ringkasan
  seluruh ledger untuk held, available, processing, paid, attention, dan
  reversed; histori layar dibatasi 200 transaksi terbaru.
- Payout approval/selection tidak dilabel paid. Hanya payout item `PAID` menjadi
  paid; failure/cancellation masuk attention. Cross-role access ditolak.
- Full validation, 47 API test dengan sembilan external-service skip terkontrol,
  20 worker test, 40 browser test, targeted photographer UAT, build, dan audit
  dependency lulus.
- Protected preview `dpl_3179SPoYt6n8YW26Txn4YGcNvYKo` `READY`; earnings panel
  200 dan backend tetap 503 fail-closed. Production tidak berubah.

## 2026-08-25 - Exact-owner customer order library

- Exact private feature source `5e7e3c4` dan documentation head `3cbf230`
  berstatus `LOCAL_VALIDATED`.
- Customer dapat membuka 20 order terbaru, melihat status payment/fulfillment
  dan entitlement, lalu menerbitkan ulang link social/HiRes lima menit. Batas
  maksimum 50 dan query exact-owner mencegah order lintas customer tampil.
- Full validation, 47 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 40 browser test dengan dua viewport skip,
  build, dan dependency audit lulus.
- Protected preview `dpl_5ffP4gGh39rdupJNTNdkRr5osMah` `READY`; route library
  200 dan backend tetap fail-closed 503. Production tidak berubah.

## 2026-08-25 - Distributed API rate-limit contract

- Exact private source `2c4af04` berstatus `LOCAL_VALIDATED`.
- Local/test mempertahankan limiter memory deterministik, sedangkan staging dan
  production menolak startup tanpa Redis bersama. Atomic fixed window berlaku
  lintas replica, key client/band disimpan sebagai hash, dan runtime outage
  menghasilkan 503 fail-closed sementara health probe tetap tersedia.
- Full validation, 46 API test dengan sembilan external-service skip terkontrol,
  20 worker test dengan empat skip, 38 browser test dengan dua viewport skip,
  typecheck, build, dan production dependency audit lulus.
- Production dan protected frontend preview tidak berubah. Bukti dua instance
  Redis, edge 429, load/soak, dan isolated staging tetap belum dieksekusi.

## 2026-08-25 - Exact-recipient notification inbox

- Exact private feature source `88c8dc9` dan documentation head `150fea6`
  berstatus `LOCAL_VALIDATED`.
- Checkout customer dan photographer jobs kini memiliki inbox untuk durable
  receipt, HiRes request/replacement/overdue, dan delivery notification.
- Authorization memakai exact recipient; response memakai bounded copy tanpa
  raw payload. Unread count, single read, dan read-all replay-safe, sedangkan
  worker delivery/retry/DLQ tetap terpisah dari user read timestamp.
- Full local validation, 45 API test, 20 worker test, 38 browser test, dan audit
  dependency lulus. Protected preview
  `dpl_6kwtVdRvFZ9ZsWANXiAB3PWhVqtP` `READY`; customer/photographer smoke lulus.
- Production tidak berubah. Inbox migration, real email, isolated staging, dan
  provider gates tetap belum dieksekusi.

## 2026-08-25 - Connected photographer HiRes fulfillment

- Exact private feature source `370278a` dan documentation head `d21d9a2`
  berstatus `LOCAL_VALIDATED`.
- Photographer-owned queue menampilkan exact purchased filename, order, event,
  dan SLA; acknowledgement serta completion replay-safe.
- Original JPEG maksimal 50 MB diunggah memakai checksum-bound signed PUT 15
  menit. Server membaca ulang object untuk memeriksa format, bytes, SHA-256,
  dimensi aktual minimal 3.000 px, dan preview similarity.
- QA pass mengaktifkan exact HiRes entitlement dan final customer notification;
  QA fail meminta replacement hingga batas lima tanpa menghukum dependency
  outage sebagai mismatch.
- Full local validation, 41 API test, 20 worker test, 38 browser test, dan
  dependency audit lulus. Protected preview
  `dpl_HU61vd6GY3eNWfeBCBVHYxNJRXHQ` `READY` dan smoke queue lulus.
- Production tidak berubah. Isolated MySQL/S3/KMS execution, multipart,
  CloudFront delivery, real provider, dan production activation tetap blocker.

## 2026-08-25 - Lifecycle dan retention deadlines

- Exact private source `4d602d9` berstatus `LOCAL_VALIDATED`.
- Worker setiap 60 detik menutup sales window, search session, cart, dan pending
  payment yang kedaluwarsa serta menandai fulfillment SLA overdue.
- Search/face/preview retention membentuk system-owned deletion request yang
  deterministic, idempotent, dan tidak menghapus immutable finance record.
- Full local gate lulus; 20 worker test lulus dan empat integration test
  service-dependent skip terkontrol. Migration/MySQL/Redis/provider execution
  tetap menunggu isolated staging.

## 2026-08-25 - Durable in-app notification worker

- Exact private source `d964fea` berstatus `LOCAL_VALIDATED`.
- Verified payment membuat receipt untuk customer dan HiRes request untuk
  fotografer; fulfillment membuat delivery notification untuk customer.
- Worker memproses durable notification melalui outbox, stale reclaim, bounded
  retry, sent evidence, dan DLQ. Payload aman tidak memuat email, telepon, BIB,
  URL media, atau payment detail.
- Full local gate, 38 API test, 18 worker test, dan dependency audit lulus;
  optional service integration tetap skip terkontrol. Transactional email dan
  isolated staging execution masih gate eksternal.

## 2026-08-25 - Candidate feedback dan cart authority

- `LOCAL_VALIDATED` dari exact source private `09a55bd`; protected preview
  `dpl_FFDKoeT7Nj51FNxHgdKuEVogBYJJ` berstatus `READY` dan route BIB smoke 200.
- Candidate confirm/reject kini terikat exact event, search session,
  anonymous-session hash, dan asset. Duplicate decision replay-safe dan sesi
  berbeda ditolak.
- Verified checkout mempersistenkan exact server-priced cart, mengonversinya
  atomically, lalu menghubungkannya satu-ke-satu ke order.
- Full local gate, 38 API test, targeted browser 4/4, dan dependency audit lulus.
  Migration serta optional MySQL assertion masih harus dieksekusi di isolated
  staging; status activation dan business readiness tidak berubah.

## 2026-08-25 - Deletion worker dan recovery control

- `LOCAL_VALIDATED` dari exact source private `dbbb814` di `main`.
- Worker kini menjalankan target-hashed deletion fan-out secara idempoten,
  mempertahankan task sukses saat retry, merebut kembali claim stale, mengirim
  exhausted work ke DLQ, dan mengalarmkan deadline secara deduplicated.
- Controlled outbox replay hanya menghapus BullMQ job terminal, menolak job
  aktif/menunggu, mereset exact persisted event, dan mencatat audit tanpa
  memublikasikan payload.
- Restore verifier memeriksa core application tables serta orphan deletion task.
  Full local gate dan dependency audit lulus; 14 worker test lulus dengan dua
  integration test service-dependent sengaja skip.
- Status tetap delivery `LOCAL_VALIDATED`, activation
  `NOT_PRODUCTION_ACTIVATED`, dan business readiness `BLOCKED`. Isolated staging,
  real-provider deletion, recovery/load/security/device UAT belum dieksekusi.

## 2026-08-25 - Baseline produk dan privileged operations workbench

- `CONFIRMED` dari exact source private `a83b43a`; fitur operator persisten
  berasal dari `b09f279` dan protected Vercel preview
  `dpl_Dtr9Uigz6263nj7V69s62RMD3Pfz` berstatus `READY`.
- Baseline MVP mencakup event, uploader 500 JPEG, BIB/selfie mock, server quote,
  Tokopay mock/contract, social/HiRes entitlement, ledger 75/15/10, fulfillment,
  signed download, dan role interfaces.
- Platform-admin workbench kini menghubungkan wrong-match immediate-hide,
  refund operator-assisted, provider-cleared payout maker-checker, support grant
  60 menit, deletion fan-out, idempotency, audit, dan outbox.
- Full validation, 37 API test, audit dependency nol, dan 38 browser test lulus;
  enam integration test service-dependent serta dua viewport test sengaja skip.
- Delivery `LOCAL_VALIDATED`; activation `NOT_PRODUCTION_ACTIVATED`; business
  readiness `BLOCKED`. Production tidak berubah dan tidak ada real-money,
  participant data, atau biometric production yang dipakai.
- Next action: isolated VPS staging, migration, MySQL/Redis/S3 worker evidence,
  security/load/recovery/device UAT, serta external provider/legal gates.
