# Snap and Fit Dossier

## Tujuan dokumen

Menjelaskan kontrak produk dan status evidence Snap and Fit tanpa mempublikasikan
credential, PII, identifier tenant/perangkat, atau detail provider sensitif.

## Konteks dan status bukti

- Updated: 26 Agustus 2026
- Klasifikasi: `CONFIRMED`
- Delivery: `LOCAL_VALIDATED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`
- Provenance: exact private source/docs head `d9285fc`, provider-chaos acceptance
  feature `6d3d955`, native age recovery
  evidence `4b6c08b`, fail-closed 300-VU load
  feature `f06d538`, 500-file uploader recovery feature `6f57416`, fail-closed
  repository security-scan feature `db4e709`, deterministic Nginx staging host-policy
  feature `7fdd49a`, encrypted-recovery feature `a6857d1`,
  fail-closed staging-host preflight `fc383e1`, runtime-artifact
  hardening `e64b002`,
  protected-preview evidence refresh `eec6269`, full-validation
  recovery gate `e6e27d0`, staging restore
  hardening `076f76b`, MySQL 8.4 clean-room
  compatibility fix `4384948`, digest-only application
  release feature `d0f3b7d`, immutable supply-chain hardening `ee45e56`, authoritative load
  fixture `4f9d8d3`, ShellCheck acceptance
  `162cc29`, clean-checkout setup fix `fbf01b6`, liveness
  peer acceptance `7b44101`,
  encrypted event-scoped face search
  `96df668`, resumable multipart feature `3fc397f`,
  staging-control/preview baseline `d2b0c5c`, organizer safe metrics `46d7a4b`,
  photographer earning view `0385317`,
  customer order library `5e7e3c4`,
  distributed rate limiter `2c4af04`,
  notification inbox `88c8dc9`,
  connected HiRes fulfillment `370278a`,
  operations feature `b09f279`,
  deletion/recovery hardening `dbbb814`, candidate/cart authority `09a55bd`,
  durable notification worker `d964fea`, lifecycle/retention worker `4d602d9`,
  protected Vercel preview `dpl_HwMrwup2NgAGTREFkABND5mVHEtB` dari exact
  source `d24fc31`.
- Hosted CI evidence: exact source/docs run `32925596466`
  membuat security job `98047751773` dan validate job `98047751894`. Keduanya
  berhenti sebelum assignment runner, dengan runner ID `0`, tanpa nama, steps kosong, dan
  anotasi account payment/spending limit. Run sebelumnya pada host preflight,
  protected-preview docs, MySQL implementation, dan digest-only feature head
  menunjukkan pola yang sama. Local/static gates tetap
  lulus, tetapi hosted run tidak;
  protected-main enforcement juga belum
  tersedia karena branch-protection API private repository plan-gated (403).

Provider-chaos acceptance menjalankan 32 test pada delapan file terhadap actual
payment reconciliation, face/liveness orchestration, media processor,
notification, dan deletion worker dengan fault injection sintetis. Payment
truth tidak dipromosikan saat timeout, BIB tetap tersedia saat face provider
degraded, media gagal tidak dipublish, dan retry/DLQ tetap redacted. Bukti ini
lokal; real provider, Redis/MySQL/S3 soak, dan alert firing tetap gate staging.

## Overview produk

Snap and Fit menghubungkan peserta event olahraga dengan fotografer resmi.
Preview ringan membantu pencarian dan pembelian; file original tetap berada di
perangkat fotografer sampai ada permintaan HiRes dari transaksi terverifikasi.

## Masalah yang diselesaikan

- Peserta sulit menemukan fotonya di ratusan atau ribuan hasil event.
- Fotografer memerlukan upload massal yang dapat pulih dan alur HiRes yang jelas.
- Organizer memerlukan katalog, sales window, settlement, privacy, dan support
  dalam satu workflow yang dapat diaudit.
- Platform harus membedakan payment collected, provider-cleared, entitlement,
  dan payout agar tidak memindahkan dana secara ambigu.

## User journey utama

1. Organizer membuat event, harga, privacy/retention, station, dan assignment.
2. Fotografer membuat derivative JPEG 1.800 px. IndexedDB menyimpan exact total
   manifest dan derivative selesai; setelah reload fotografer memilih ulang
   folder yang sama untuk memproses hanya file tersisa tanpa duplikasi, lalu
   mengunggah preview privat dengan checksum. Reset lokal memerlukan konfirmasi
   dan dikunci setelah server batch terdaftar.
3. Peserta membuka event, menyetujui notice, lalu mencari melalui BIB atau
   selfie feature-flagged. Confirm/reject terikat exact anonymous search session.
4. Server membentuk candidate, quote, bundle, dan checkout; client tidak menjadi
   source of truth harga. Verified checkout mengubah server-priced cart menjadi
   order dengan provenance satu-ke-satu.
   Customer dapat membuka library exact-owner untuk memulihkan status dan link
   entitlement tanpa bergantung pada tab checkout sebelumnya.
5. Payment terverifikasi mengaktifkan social copy. Antrean fotografer memuat
   exact filename/SLA; fotografer mengakui request lalu mengunggah original
   melalui signed direct PUT atau multipart. Server memeriksa JPEG, byte/checksum, dimensi, dan
   kecocokan preview sebelum QA mengaktifkan final download atau replacement.
6. Ledger membagi hasil 75/15/10 dan menahan payout sampai provider-cleared dan
   fulfillment diterima.
7. Operator menangani wrong-match, deletion, refund, support grant, dan payout
   dengan password, TOTP, idempotency, outbox, audit, dan dual control.

## Permission dan privacy

- Customer memakai continuation/email OTP; role privileged memakai password dan
  TOTP fresh yang terikat exact session.
- Authorization default-deny memakai exact organization/event/owner predicate.
- Support grant terikat user, event, case, permission allowlist, dan maksimal
  60 menit.
- Wrong-match menyembunyikan asset sebelum review. Deletion membuat task
  target-hashed untuk sistem yang relevan dan tidak menganggap partial fan-out
  sebagai sukses.
- Raw selfie maksimal 24 jam; face collection maksimal 24 jam setelah sales
  close; preview publik maksimal 30 hari setelah sales close. Execution
  staging/production masih gate terpisah.

## UI/UX

Functional Street Editorial memakai Plus Jakarta Sans, headline ExtraBold,
off-white, near-black, acid lime, Feather icons 2 px, image-led grid, target
sentuh minimal 48 px, dan WCAG 2.2 AA. Customer mobile-first; uploader
fotografer desktop-optimized.

## Technical overview

- Next.js 16 PWA untuk customer, photographer, organizer, dan operator.
- NestJS 11 sebagai API authority.
- Prisma/MySQL 8.4 untuk business truth; Redis/BullMQ dan transactional outbox
  untuk worker.
- Private S3/KMS untuk media dan Rekognition/Liveness Malaysia sebagai target
  biometric provider; mock/degraded adapter menjaga UAT tanpa data nyata.
- S3 staging/production mewajibkan CloudFront trusted-key signed delivery;
  API startup fail-closed bila signer private tidak lengkap.
- HiRes sampai 50 MB memakai single PUT; 50–200 MB memakai part 10 MiB dengan
  per-part SHA-256, signed resume capability, dan final full-object SHA-256 QA.
- AWS face provider tersedia default-off untuk create/index/search/liveness/
  delete pada exact event collection. Worker, API, encrypted provider-reference
  persistence, HMAC lookup, attempt lockout, dan official Amplify client sudah
  terhubung secara lokal; tidak ada AWS call yang diaktifkan.
- Tokopay Advanced Order, callback verification, dan Check Order sebagai kontrak
  payment; live flag default-off.
- Runtime container dipisah menjadi API, worker, dan one-shot migration/seed.
  First-party package memakai file allowlist dan clean build; deploy artifact
  menginjeksi workspace package, menghapus development script/host-path
  reference, memverifikasi semua link tetap di dalam artifact, dan berjalan
  non-root. Tiga probe artifact aktual lulus containment/import; Linux image
  execution, scan, serta SBOM/provenance emission masih gate staging.
- CI memiliki security job terpisah dengan exact-commit Trivy action dan exact
  Trivy v0.74.0 policy untuk fixed High/Critical production-package
  vulnerability, secret, dan IaC. Supply-chain verifier menolak perubahan action,
  scanner class, severity, exclusion, atau exit policy yang melemahkan gate.
- Deployment staging menjalankan preflight sebelum Compose: Linux, marker
  approval isolasi/enkripsi root-owned `0600`, minimum 4 vCPU, 16 GB RAM,
  200 GB disk dengan 100 GB tersedia, Docker Engine, Compose v2, dan executable
  native `age` wajib lulus.
  Shared Hostinger target yang tersedia ditolak exit `66` melalui probe
  read-only dan tidak dimodifikasi.
- Nginx authoritative API staging memakai template API-only untuk topologi
  hybrid Vercel ke VPS. Renderer menolak hostname/path/port tidak aman dan
  menghasilkan konfigurasi baru secara atomik. Marker host mengikat exact
  hostname dan SHA-256; deploy serta rollback menolak config yang hilang,
  symlink, writable, berubah, tidak termuat, salah hostname, gagal syntax,
  service tidak aktif, atau gagal reload. Edge policy meliputi TLS 1.2/1.3,
  security header, body/time limit, rate limit per kelas route, public deny bagi
  metrics/local-media, query-free safe log, dan reset direct-origin forwarded
  chain.
- Backup MySQL mengalirkan dump melalui gzip langsung ke native `age`, menulis
  hanya encrypted object `.sql.gz.age` dan checksum portabel. Restore menolak
  plaintext, mewajibkan identity root-owned mode `0600`, memverifikasi checksum
  dan dekripsi, lalu menyalurkan plaintext hanya ke disposable MySQL import.
  Behavioral fixture menolak permission longgar, plaintext, dan ciphertext
  rusak sebelum container start. Eksekusi real `age`, transfer off-host,
  retention/key custody, serta pengukuran RPO/RTO masih gate isolated staging.
- Vercel tidak terhubung langsung ke MySQL/Redis dan long-running image work
  tidak berjalan pada Vercel Functions.
- API memakai rate limiter memory pada local/test dan mewajibkan atomic Redis
  shared-window pada staging/production. Key client/band di-hash, runtime outage
  fail-closed 503, sedangkan health probe tetap tersedia untuk recovery.

## Operator controls terbaru

- Create operation wajib memakai bounded idempotency key; replay body sama
  mengembalikan resource yang sama, sedangkan body berbeda ditolak.
- Refund berpindah requested → approved → submitted untuk operator action dan
  tetap melaporkan provider money belum bergerak.
- Payout draft hanya memilih posted photographer earning dari fulfilled order
  dengan payment provider-cleared. Satu ledger credit tidak dapat masuk dua
  payout run dan approver wajib berbeda dari maker.
- Read-only earning view memakai exact photographer ID. Ringkasan aggregate
  seluruh ledger membedakan held, available, processing, paid, attention, dan
  reversed; daftar dibatasi 200. Paid hanya berasal dari payout item `PAID`,
  sedangkan payout gagal/dibatalkan masuk attention.
- Organizer event metrics memakai exact organization scope dan hanya mengirim
  aggregate inventory, order, fulfillment, reconciliation, gross/cleared,
  organizer earning posted, dan active refund. Nama, email, telepon, BIB, serta
  payment reference customer tidak menjadi response.
- Connected operator UI menyediakan loading, empty, error, queue, dan controlled
  synthetic demo tanpa PII.
- Deletion worker mempertahankan task yang sudah selesai saat retry, mengirim
  exhausted work ke DLQ, menyapu deadline setiap 30 detik, dan menutup request
  hanya setelah seluruh fan-out memiliki evidence code aman.
- Outbox replay menolak job aktif/menunggu, menghapus hanya job terminal,
  mengantrekan ulang exact persisted event, dan menulis audit tanpa mencetak
  payload.
- Payment receipt, photographer HiRes request, dan customer delivery memakai
  durable in-app notification. Worker melakukan claim, stale reclaim, retry,
  sent evidence, dan DLQ; email provider tetap external gate.
- Checkout customer dan photographer jobs membaca notifikasi melalui exact-user
  authorization. API hanya mengirim bounded title/message/event/time, bukan raw
  payload; unread, single read, dan read-all idempoten. User read timestamp
  terpisah dari worker delivery status agar retry tidak mengubah acknowledgement.
- Customer order library dibatasi 20 item terbaru secara default dan maksimal 50,
  memakai exact customer identity, serta menerbitkan link social/HiRes lima menit
  hanya ketika entitlement order tersebut aktif.
- Lifecycle worker setiap 60 detik menjalankan bounded sweep untuk sales close,
  expiry search/cart/payment, fulfillment overdue, serta deterministic
  system-owned deletion request bagi search/face/preview. Finance records dan
  purchased social/HiRes entitlement tidak menjadi target hard delete.
- Fulfillment queue hanya dapat dibaca/dimutasi fotografer pemilik. Single PUT
  dan URL multipart berlaku 15 menit, terikat SHA-256 dan byte count; multipart
  memakai part 10 MiB, batas 200 MB, same-tab resume 24 jam, refresh/abort, dan
  capability exact-job sebelum storage mutation. Provider upload ID tetap hanya
  di capability bertanda tangan. Bucket HiRes terpisah dari preview pada S3. QA membaca kembali
  object private, mengukur dimensi aktual dan average-hash similarity, lalu
  membuat entitlement exact asset version atau meminta replacement maksimal
  lima kali. Dependency outage menghasilkan retryable error, bukan QA failure.

## Business model dan pricing

- Pilot catalog: Rp25.000 satu foto, Rp60.000 tiga foto, Rp99.000 semua match.
- Net settlement: 75% fotografer, 15% platform, 10% organizer setelah nilai
  provider yang tervalidasi.
- `NEEDS CONFIRMATION`: economics pilot nyata, volume event, biaya storage/
  biometric/payment, dan final commercial terms setelah controlled pilot.

## Evidence lokal

- Full format/lint/typecheck/test/build lulus.
- No-service suite: 63 API test lulus dengan sembilan service-dependent skip dan
  21 worker test lulus dengan empat service-dependent skip.
- Disposable loopback MySQL 8.4.9 menerapkan 18/18 migration dari database kosong,
  seed sintetis, 2 database test, 71 active API pass dengan satu Redis-only skip,
  serta 24 active worker pass dengan satu Redis/BullMQ-only skip. Clean dump juga
  pulih ke database kedua dengan 51 tabel, delapan recovery table wajib, 18
  migration row, nol orphan deletion task, dan ledger Rp25.000/Rp25.000 seimbang.
  Ini evidence lokal, bukan encrypted off-host restore atau deployed staging.
- Actual native age v1.3.1 local drill mengalirkan dump sintetis melalui gzip dan
  encryption tanpa plaintext artifact, menjaga checksum setelah simulated
  off-host move, menolak modified ciphertext, dan memulihkan 51 tabel ke MySQL
  kedua. Delapan recovery table, 18 migration sehat, deletion integrity, dan
  ledger balance lulus dalam 26,23 detik; kedua port disposable ditutup.
- Enam face-provider test, delapan media test, dan lima observability test lulus.
- 55 Playwright mobile/desktop lulus dan tiga project-specific skip disengaja;
  operator controlled demo, checkout/order library, role workflow, preview upload,
  exact 500-file partial reload/reselection recovery, multipart interruption/resume,
  accessibility, dan no-overflow tercakup.
- Production dependency audit: nol vulnerability yang diketahui.
- Official liveness package menyatakan React 19 support; exact transitive peer
  metadata ditutup dengan narrow package/peer rule. Frozen install, fresh web
  build, full validation, browser suite, audit, dan peer check lulus.
- Delapan shell script operasional lulus Git Bash `bash -n`; staging Compose lulus static
  interpolation memakai official checksum-verified Docker Compose v5.5.0 dan
  synthetic-only values. Tidak ada image/container yang dijalankan.
- Detached clean checkout exact remote `fbf01b6` pada Windows dengan
  `core.autocrlf=true` lulus instruksi README tanpa hak admin: `corepack pnpm`
  frozen install, copy `.env.example`, forced uncached lint/typecheck/test/build,
  dan 53 browser test dengan tiga intentional skip. `.gitattributes` kini
  memaksa LF lintas repository agar checkout Windows tidak mengubah format.
  Service-dependent integration skip tetap terbuka sampai isolated staging.
- Official Windows ShellCheck v0.11.0 archive cocok dengan release-asset
  SHA-256; delapan skrip operasional lulus hingga severity `style`. Portable verifier
  dibersihkan setelah run. Tidak ada image/container atau runtime staging yang
  dieksekusi dari evidence ini.
- Official signed Windows Nginx 1.31.3 archive diverifikasi terhadap signer
  fingerprint dan SHA-256 yang didokumentasikan; full rendered config lulus
  real `nginx -t`. Renderer/preflight/rollback behavioral fixture, Bash syntax,
  ShellCheck, full validation, 53 browser pass, audit produksi nol vulnerability,
  dan peer check lulus. Linux validator memakai default image exact OCI digest,
  tetapi belum dieksekusi karena hosted run tidak pernah mendapat runner.
- Official Trivy v0.74.0 Windows archive dan checksum list cocok dengan SHA-256
  release. Full worktree scan dengan fail-closed exit menghasilkan nol fixed
  High/Critical production-package vulnerability, secret, atau IaC finding.
  Full validation, 53 browser pass dengan tiga intentional skip, actionlint,
  production dependency audit, dan peer check juga lulus pada exact feature.
- Fixture k6 300-VU melakukan authoritative seeded-BIB search, exact-session
  candidate confirmation, dan same-session sampled quote. Guard menolak target
  selain loopback memory preflight atau exact HTTPS isolated-staging origin yang
  diakui eksplisit. Local synthetic run dua menit menyelesaikan 36.000 iterasi
  dan 79.145 request; semua threshold lulus dengan 0,0708% HTTP failure,
  99,9293% checks, p95 4,58 ms, dan p99 33,12 ms. Sebanyak 56 refusal pada
  initial Windows loopback burst dipertahankan; hasil ini bukan evidence runtime
  MySQL/Redis/Nginx/container atau kapasitas staging.
- Actions di-pin exact commit; Node, MySQL, dan Redis base/service image di-pin
  OCI manifest digest. Application release juga wajib memakai resulting manifest
  digest; commit-shaped registry tag hanya provenance dan ditolak oleh deploy/
  rollback. Restore menolak non-digest override dan local validation
  memverifikasi referensi.
  Actionlint, enam-file ShellCheck, Compose immutable image set, release-script
  regression, full validation, dan production dependency audit lulus. Build,
  scan, emitted BuildKit SBOM/provenance verification, pull, dan runtime image
  tetap staging gate.
- Preview protected `dpl_CeGgE8rxJX58qQpTGzdqUoPc6iQn` dari exact implementation source `4384948`
  berstatus `READY`; manifest, service worker, offline, BIB, selfie-capture, dan
  photographer jobs route 200 serta
  backend fail-closed 503. Connected metrics panel
  hanya browser-validated lokal karena backend preview tidak terhubung. Backend
  authoritative belum terhubung.
- Remote Linux build menjadi deployment path preview yang terbukti. Vercel CLI
  58.4.4 local Windows `--prebuilt` selesai membangun Next tetapi gagal memetakan
  static `/account/orders`; artefak prebuilt Windows belum boleh dipromosikan.
- Restore verifier mengoreksi exact identity table menjadi `auth_user` dan
  menolak schema inti tidak lengkap, migration unfinished/rolled-back, orphan
  deletion task, atau ledger yang tidak seimbang per currency. Healthy plus
  empat failure mode lulus behavioral shell gate; changed script dan test juga
  lulus checksum-verified ShellCheck v0.11.0 severity `style`.
- Cross-platform Node launcher kini menjalankan behavioral recovery preflight di
  dalam setiap `pnpm validate`; standard Git Bash/PATH dideteksi tanpa shell
  interpolation. Full local validation membuktikan launcher dan preflight aktif.
- Protected remote Linux preview dari clean exact source `8dec486` berstatus
  `READY`. Authenticated smoke membuktikan photographer uploader 200, header
  CSP/HSTS/no-sniff/frame-deny/noindex, dan BFF health 503 fail-closed tanpa VPS.
  Vercel project belum memiliki environment variable untuk koneksi backend.

## Risiko dan gate terbuka

- Isolated staging VPS, MySQL, Redis, private storage, migration, worker, dan API
  belum deployed.
- DNS/TLS certificate, firewall, exact Linux Nginx fixture, external header/TLS
  scan, live edge 429, dan loaded-config proof pada isolated host belum ada.
- Hosted Trivy job, final digest-addressed Linux image scan, dan runtime-host
  scan belum berjalan; local repository scan tidak menggantikannya.
- Revalidasi read-only 26 Agustus membuktikan satu-satunya SSH target tetap
  shared 2 vCPU/8,32 GB/102,92 GB, disk 86% dengan 15,24 GB tersedia, swap
  praktis habis, active shared services, dan tanpa Docker. Target tidak dimutasi
  atau dipakai untuk Snap and Fit.
- MySQL compatibility lokal sudah ditutup, tetapi pengulangan MySQL dan runtime
  Redis pada isolated Linux staging, protected synthetic deletion/replay,
  encrypted off-host backup/restore, rollback, 300 VU isolated-staging load,
  soak, security staging, dan device UAT belum dieksekusi.
- Exact MySQL ledger/payout, aggregate metrics, reconciliation, HiRes, deletion,
  dan lifecycle assertions lulus pada disposable local MySQL; semuanya masih
  wajib diulang terhadap isolated staging dan bukan evidence provider nyata.
- Optional cross-instance Redis limiter test belum dieksekusi karena isolated
  Redis staging belum tersedia; implementasi lokal bukan bukti distributed runtime.
- Seluruh 18 migration termasuk inbox sudah clean-applied lokal, tetapi belum
  diaplikasikan pada isolated staging; real email delivery juga tetap external gate.
- Real direct/multipart S3/KMS HiRes interruption/resume/replacement, ETag CORS,
  one-day incomplete-upload lifecycle, dan CloudFront trusted-key/origin proof
  belum dieksekusi; seluruh contract dan browser resume baru teruji sintetis lokal.
- Browser/IndexedDB recovery 500 JPEG sudah tervalidasi mobile dan desktop,
  tetapi transfer 500 object ke S3, worker processing, quarantine/DLQ, serta
  watermark publication saat interruption masih gate isolated staging.
- Rekognition orchestration sudah terhubung lokal dan teruji fake-provider,
  tetapi belum pernah memanggil AWS. Real MySQL/S3/Rekognition indexing,
  liveness, search, deletion, dan evidence provider belum ada; synthetic
  orchestration bukan bukti penghapusan provider. Transitive React peer metadata
  sudah ditutup secara exact-edge, tetapi upstream-version recheck dan real-device
  camera compatibility tetap wajib sebelum activation.
- Test merchant Tokopay dan AWS test provider/legal biometric gate belum
  tersedia; real-money dan production biometric tetap off.
- GitHub hosted CI/protected-main enforcement masih tertahan account-plan gate;
  local release gates tetap wajib.

## Sales dan messaging

- Temukan foto aksimu tanpa menyisir ratusan file satu per satu.
- Preview ringan untuk discovery, HiRes dikirim setelah pembelian terverifikasi.
- Fotografer mempertahankan original dan memperoleh settlement yang dapat
  diaudit.
- Jangan menjanjikan face search production, instant HiRes, atau payout otomatis
  sebelum gate provider dan controlled pilot lulus.
