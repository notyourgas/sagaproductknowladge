# Snap and Fit Product Knowledge

Updated: 26 Agustus 2026
Evidence status: `CONFIRMED / LOCAL_VALIDATED / protected preview deployed`

## Tujuan dokumen

Menjadi ringkasan public-safe kanonik Snap and Fit. Detail produk, workflow,
teknis, risiko, dan roadmap berada di [DOSSIER](DOSSIER.md).

## Konteks

Dokumen membedakan implementation lokal, protected frontend preview, isolated
staging yang belum tersedia, dan production yang belum diaktifkan.

## Ringkasan

Snap and Fit adalah marketplace foto olahraga berbasis event. Fotografer
mengunggah preview terkompresi, peserta mencari fotonya melalui nomor BIB atau
alur selfie berizin, lalu membeli foto sebelum fotografer menyerahkan HiRes.

## Target pengguna

- Peserta event lari, sepeda, tenis, basket, mini soccer, dan olahraga terkait.
- Fotografer event.
- Organizer event.
- Platform admin dan support terbatas.

## Scope MVP

- Event draft, readiness, publish, dan tutup penjualan.
- Assignment fotografer dan uploader desktop hingga 500 JPEG dengan manifest,
  checksum, derivative mobile, pause/resume, exact-total recovery setelah reload,
  same-folder resume tanpa duplikasi, guarded local reset, dan private upload intent.
- Landing event dinamis per slug, pencarian BIB, selfie mock ber-consent,
  candidate gallery, multi-photo cart, quote server-side, dan checkout.
- Customer dan fotografer memakai Google OAuth. Customer dapat membuat profil
  biometrik opsional sekali melalui liveness plus referensi depan/kiri/kanan,
  lalu memakainya hanya untuk mencari pada event yang dipilih; BIB tetap fallback.
- Harga event pilot Rp25.000 satu foto, Rp60.000 tiga foto, dan Rp99.000 semua
  match.
- QRIS Tokopay mock/test contract, entitlement social langsung setelah payment
  terverifikasi, permintaan HiRes, QA, dan signed download lima menit.
- Ledger bersih 75% fotografer, 15% platform, dan 10% organizer; payout hanya
  dari dana provider-cleared dan memakai maker-checker.
- Wrong-match/takedown immediate-hide, refund operator-assisted, scoped support
  grant, deletion fan-out, audit, dan transactional outbox.

## Status saat ini

- Delivery: `LOCAL_VALIDATED`.
- Activation: `NOT_PRODUCTION_ACTIVATED`.
- Business readiness: `BLOCKED`.
- Exact private source/docs head `2aef57a`; persistent biometric-profile, Google
  OAuth, AWS plan, dan prototype-topology slice berasal dari exact source tersebut;
  provider-chaos acceptance feature
  berasal dari `6d3d955`, native age recovery evidence berasal
  dari `4b6c08b`, fail-closed 300-VU load feature
  berasal dari `f06d538`, 500-file uploader recovery feature berasal dari
  `6f57416`, fail-closed repository security-scan feature berasal
  dari `db4e709`, deterministic Nginx staging host-policy
  feature berasal dari `7fdd49a`, streaming encrypted-recovery feature
  berasal dari `a6857d1`, fail-closed staging-host preflight berasal dari
  `fc383e1`, runtime-artifact hardening berasal dari `e64b002`,
  protected-preview evidence refresh berasal dari `eec6269`,
  full-validation recovery gate berasal dari `e6e27d0`,
  staging restore hardening berasal dari `076f76b`, MySQL 8.4
  clean-room compatibility fix berasal dari `4384948`, dan
  digest-only application release feature
  berasal dari `d0f3b7d`, immutable supply-chain hardening berasal dari `ee45e56`,
  authoritative load fixture berasal dari `4f9d8d3`, ShellCheck
  acceptance berasal dari `162cc29`, clean-checkout setup
  fix berasal dari `fbf01b6`, liveness peer
  acceptance berasal dari
  `7b44101`, encrypted event-scoped face search berasal dari
  `96df668`, resumable multipart HiRes berasal dari
  `3fc397f`, staging controls dan preview baseline dari `d2b0c5c`, CloudFront private
  delivery signer berasal dari `5fe6ab5`, AWS event-scoped face provider
  contract dari `037d2b4`, private bounded API
  metrics berasal dari `1c1a81e`, safe trace/outbox propagation dari `3fa3be4`,
  privacy-safe installable PWA shell berasal dari `141bbb5`, private candidate confirmation preview
  berasal dari `c17d56d`, secure multi-photo event
  checkout berasal dari `c314024`, organizer safe event metrics
  berasal dari `46d7a4b`, photographer earning view berasal dari `0385317`,
  customer order library berasal dari `5e7e3c4`,
  distributed rate limiter berasal dari `2c4af04`, user-facing notification
  inbox berasal dari `88c8dc9`, fulfillment HiRes terhubung
  berasal dari `370278a`, fitur operator berasal dari
  `b09f279`, deletion/recovery hardening dari `dbbb814`, serta candidate/cart
  authority dari `09a55bd`, durable notification worker dari `d964fea`, dan
  lifecycle/retention worker dari `4d602d9`.
- Protected Vercel preview `dpl_HwMrwup2NgAGTREFkABND5mVHEtB` dari exact
  source `d24fc31` berstatus `READY`; remote Linux web build dan protected
  uploader smoke lulus tanpa error log, tetapi project belum memiliki environment
  variable dan backend staging sengaja fail-closed.
- Full no-service validation, 69 API test dengan sembilan integrasi eksternal
  terkontrol skip dan 24 worker test dengan empat integrasi service-dependent
  skip lulus. Disposable loopback MySQL 8.4.9 dari database kosong mengaplikasikan
  19/19 migration dan menaikkan evidence authoritative menjadi 2 database test,
  77 API pass dengan satu Redis-only skip, serta 27 worker pass dengan satu
  Redis/BullMQ-only skip. Sebelas media test dan 59 browser test
  dengan tiga project-specific skip, seluruh build, dan audit dependency produksi
  nol vulnerability lulus. Delapan shell script operasional juga lulus Git Bash `bash -n`, dan
  staging Compose lulus static interpolation dengan official checksum-verified
  Docker Compose v5.5.0 tanpa menjalankan image/container. Frozen install,
  fresh web build, dan targeted liveness peer check juga lulus.
- Dedicated provider-chaos command meluluskan 32 test di delapan file terhadap
  service payment, face/liveness, private media, notification, dan deletion.
  Tokopay timeout tidak mengubah payment/order, Rekognition outage mempertahankan
  BIB fallback, storage timeout tidak menerbitkan derivative dan berakhir pada
  retry/quarantine/DLQ, serta payload error tetap redacted. Ini deterministic
  local fault injection, bukan real-provider atau isolated-staging chaos.
- Detached clean checkout dari exact remote `fbf01b6` pada Windows dengan
  `core.autocrlf=true` lulus setup README memakai non-admin `corepack pnpm`,
  frozen install, copy `.env.example`, forced uncached lint/typecheck/test/build,
  serta 53 browser test dengan tiga intentional skip. Repository-wide LF policy
  mencegah format drift pada Windows; integration-service skip tetap tidak
  dianggap sebagai runtime staging evidence.
- Official Windows ShellCheck v0.11.0 archive cocok dengan SHA-256 release asset;
  seluruh delapan skrip operasional lulus sampai severity `style`. Verifier portable
  sudah dibersihkan setelah run. Ini menutup static shell lint, bukan image,
  container, migration, load, atau recovery runtime gate.
- Fixture 300-VU kini fail-closed ke loopback memory preflight atau exact HTTPS
  isolated-staging origin yang diakui eksplisit. Local synthetic run dua menit
  menyelesaikan 36.000 iterasi dan 79.145 request; semua threshold lulus dengan
  0,0708% HTTP failure, 99,9293% checks, p95 4,58 ms, dan p99 33,12 ms. Sebanyak
  56 refusal pada initial simultaneous Windows loopback burst tetap dicatat.
  Ini bukan evidence MySQL/Redis/Nginx/container atau kapasitas staging.
- GitHub Actions memakai exact upstream commit; Node build/runtime dan
  MySQL/Redis service memakai OCI manifest digest. Deploy/rollback menolak image
  tanpa digest termasuk commit-shaped registry tag, restore menolak override
  MySQL non-digest, dan validation memulai
  immutable-reference verifier. Actionlint, ShellCheck delapan file, Compose static
  immutable set, release preflight regression, full validation, dan audit
  dependency produksi nol vulnerability lulus. Container workflow dikonfigurasi
  menghasilkan BuildKit SBOM/provenance dan manifest digest; image belum
  dibangun/dijalankan sehingga emission/runtime evidence tetap gate.
- Hosted GitHub Actions run `32925596466` pada exact source/docs `d24fc31`
  membuat security job `98047751773` dan validate job `98047751894`; keduanya
  gagal sebelum satu pun step berjalan, dengan runner
  ID `0`, tanpa nama runner, dan steps kosong;
  anotasi menyatakan account payment/spending-limit gate. Run sebelumnya pada
  `fc383e1`, `176cf15`, `4384948`, dan `d0f3b7d` memiliki pola yang sama.
  Ini adalah bukti blocker hosted-runner/account, bukan kegagalan source gate.
  Load-fixture feature-head run menjadi evidence hosted terbaru. Branch protection private
  repository juga tetap plan-gated (API mengembalikan 403), sehingga
  required-check enforcement belum dapat diklaim.
- Dedicated deploy staging tetap menolak sebelum membaca konfigurasi Compose atau menarik
  image bila host bukan Linux, marker approval isolasi/enkripsi tidak root-owned
  mode `0600`, kapasitas di bawah 4 vCPU/16 GB/200 GB dengan 100 GB tersedia,
  atau Docker Compose v2 tidak aktif, atau native `age` tidak dapat dieksekusi.
  Behavioral fixture menolak tiap kondisi secara independen. Read-only revalidation
  terbaru menemukan shared target 2 vCPU/~8 GB dengan sekitar 63 GB disk tersedia,
  swap praktis habis, active shared services, dan tanpa Docker. Target tidak dimutasi.
  Founder mengizinkan topology prototype low-footprint: web tetap di Vercel,
  sedangkan satu API dan worker boleh memakai systemd hanya setelah database/user,
  Redis ACL/namespace, path, port, Nginx, resource-limit, backup, dan rollback
  project-only terbukti. Ini bukan `STAGING_READY` atau izin mengubah produk lain.
- AWS SSO dan Malaysia region terverifikasi. Terraform valid dan plan terbaru
  `40 add / 0 change / 0 destroy`; apply ditahan karena satu KMS key dan penggunaan
  Rekognition/S3/CloudFront dapat menimbulkan biaya.
- Host policy Nginx API-only sekarang dirender deterministik untuk topologi
  hybrid Vercel ke authoritative VPS. Deploy dan rollback sama-sama mewajibkan
  hostname serta SHA-256 konfigurasi yang exact, root-owned, tidak writable,
  lolos `nginx -t`, benar-benar termuat, dan tetap aktif setelah reload.
  Kebijakan edge memberi TLS/security header/body limit, route-class rate limit,
  log tanpa query/identifier, menutup metrics dan local-media dari publik, serta
  mereset forwarded chain direct-origin. Official signed Windows Nginx 1.31.3
  meluluskan real syntax test; digest-pinned Linux fixture sudah dikonfigurasi
  tetapi belum berjalan karena hosted job tidak memperoleh runner.
- MySQL backup kini mengalirkan dump melalui gzip langsung ke native `age` dan
  hanya menulis `.sql.gz.age` plus checksum. Restore menolak plaintext,
  mewajibkan identity root-owned mode `0600`, memeriksa checksum/dekripsi, dan
  menyalurkan plaintext hanya ke disposable import. Actual local native age
  v1.3.1 drill menerapkan 18 migration, streaming dump/gzip/encrypt tanpa
  plaintext artifact, menolak ciphertext yang diubah, dan memulihkan 51 tabel
  dengan schema recovery lengkap, nol orphan deletion task, serta ledger
  seimbang dalam 26,23 detik. Real off-host transfer, Linux permission,
  retention, separate key custody, dan RPO/RTO tetap gate isolated staging.
- Runtime release kini memiliki tiga artifact digest-addressed terpisah untuk
  API, worker, dan one-shot migration/seed. Semua package first-party memakai
  file allowlist; artifact deploy menghapus development script dan host-path
  reference, memakai user non-root, serta gagal bila link package keluar dari
  artifact. Probe lokal aktual membuktikan containment dan runtime import untuk
  ketiganya; forced-uncached task graph, full validation, 53 browser pass, peer
  check, dan production audit nol vulnerability lulus. Linux image build/run/
  scan dan SBOM/provenance emission tetap belum terbukti tanpa hosted runner atau
  isolated staging.
- Official checksum-verified Trivy v0.74.0 memindai production-package
  vulnerability, secret pattern, dan IaC/misconfiguration pada repository.
  Fail-closed High/Critical scan menghasilkan nol temuan. CI memakai exact
  `aquasecurity/trivy-action` commit dan verifier lokal mengikat version,
  scanner class, severity, exclusions, serta exit policy agar gate tidak dapat
  dilemahkan diam-diam. Final Linux image dan runtime-host scan tetap gate
  isolated staging.

## Batas klaim

- Belum `STAGING_READY`; API/worker/MySQL/Redis prototype belum deployed atau terhubung.
- Tokopay real-money, AWS biometric production, foto peserta nyata, production
  DNS, dan public activation belum diaktifkan.
- OpenAI tidak menerima foto, selfie, face vector, signed URL, raw BIB, detail
  pembayaran, atau PII peserta.
- Shared Hostinger VPS belum dipakai. Hanya topology prototype project-isolated
  yang boleh dilanjutkan setelah owner menyetujui exact mutation/DNS/cost gate.
- Rate limit memakai memory hanya untuk local/test. Staging/production menolak
  startup tanpa Redis bersama, memakai key client yang di-hash, serta fail-closed
  saat control plane limiter tidak tersedia. Bukti dua instance nyata masih gate staging.
- Candidate confirm/reject terikat exact anonymous search session; quote hanya
  menerima candidate aktif yang dikonfirmasi browser yang sama dan menolak
  candidate unconfirmed/rejected. Authoritative checkout mendukung single,
  exact-three, dan all-confirmed dengan server-priced cart yang terhubung ke order.
- Candidate gallery sekarang menerima preview JPEG melalui capability HMAC
  lima menit dan same-origin BFF. Authoritative search hanya menerbitkan asset
  published dengan approved watermarked preview; response bersifat private,
  no-store, noindex/noimageindex/noarchive, dan tidak mengekspos bucket/key.
  Local/test memakai JPEG sintetis yang dilabel jelas, bukan foto peserta nyata.
- Preview terbaru dibangun ulang melalui Vercel remote Linux build dari exact
  source `d24fc31`. Photographer uploader lulus smoke terproteksi dan error-log
  query kosong; BFF health sengaja fail-closed sampai isolated backend tersedia.
  Local Windows prebuilt packaging belum menjadi release path karena CLI 58.4.4
  gagal memetakan static `/account/orders` setelah Next build sukses.
- Recovery verifier kini memakai tabel authoritative `auth_user`, bukan nama
  plural yang tidak ada. Restore hanya lulus bila schema inti lengkap, migration
  history sehat, tidak ada orphan deletion task, dan ledger seimbang per mata
  uang. Behavioral shell gate menerima healthy fixture dan menolak missing
  schema, orphan, migration tidak sehat, serta ledger tidak seimbang.
- `pnpm validate` sekarang selalu menjalankan behavioral release/recovery
  preflight sebelum format/lint/typecheck/test/build. Node launcher tidak memakai
  shell interpolation dan menemukan Git Bash standard/PATH pada Windows, sehingga
  local full gate tidak lagi bergantung pada hosted runner untuk coverage ini.
- Installable PWA memakai navigation network-first dan offline fallback yang
  menyatakan tidak ada aksi terkirim. Cache Storage hanya mengizinkan offline
  shell, public icon, serta same-origin static asset non-private; API, auth,
  search, checkout, account, role page, private media, signed download, dan
  mutasi tidak pernah disimpan.
- API menghasilkan W3C server span dengan bounded safe attributes; critical
  outbox menyimpan traceparent, relay membuat producer span, dan worker
  melanjutkan consumer span. OTLP export live tetap gate staging. Private
  Prometheus endpoint default-off memakai secret 32+ karakter, 404 untuk
  missing/wrong secret, no-store, dan label route-template tanpa payload/PII.
- S3 staging/production sekarang fail-closed tanpa private CloudFront domain,
  trusted key-pair ID, KMS, dan API-only signing key. Signed URL lima menit tidak
  mengekspos private bucket; trusted-key/origin runtime proof tetap gate staging.
- AWS face provider contract kini terhubung default-off dari worker, API, dan
  official Amplify Face Liveness client. Collection dan face reference dienkripsi
  per event, lookup memakai HMAC, hasil similarity tidak diekspos ke client,
  liveness dibatasi attempt/lockout, dan provider degraded mengarahkan ke BIB.
  AWS belum pernah dipanggil; package-manager peer metadata sudah ditutup dengan
  rule exact-edge yang terdokumentasi, tetapi activation tetap menunggu legal,
  credential, upstream recheck, benchmark, deletion, dan real-device gate.
- Customer memiliki library 20 order terbaru yang exact-owner, menampilkan
  status payment/fulfillment dan entitlement, serta dapat menerbitkan ulang link
  social/HiRes lima menit tanpa mengekspos order customer lain.
- Payment dan fulfillment membuat durable in-app notification dengan retry,
  stale reclaim, dan DLQ. Checkout customer dan jobs fotografer memiliki inbox
  exact-recipient, unread/read-all idempoten, dan bounded copy tanpa raw payload.
  Transactional email nyata belum diaktifkan.
- Lifecycle worker menutup sales window, session/cart/payment yang kedaluwarsa,
  fulfillment overdue, dan menjadwalkan retensi search/face/preview tanpa
  menghapus finance record. Eksekusi provider nyata tetap belum tervalidasi.
- Fotografer memiliki antrean exact purchased filename/SLA, acknowledgement,
  signed direct HiRes PUT sampai 50 MB, checksum-bound multipart 10 MiB sampai
  200 MB, same-tab resume 24 jam, URL part 15 menit, refresh/abort, dan server-side
  JPEG/dimension/full-SHA/preview-similarity QA. Capability dicocokkan dengan
  exact job sebelum storage mutation dan provider upload ID tidak diekspos.
  Pass mengaktifkan entitlement; failure meminta replacement hingga batas lima.
  Real S3/KMS/CloudFront, lifecycle satu hari, dan ETag CORS belum dieksekusi.
- Earning view fotografer membaca exact-owner ledger dan membedakan held,
  available, processing, paid, attention, serta reversed. Ringkasan mencakup
  seluruh ledger; daftar dibatasi 200 transaksi. Payout approval tidak diklaim paid.
- Organizer memiliki exact-organization aggregate metrics untuk inventory,
  verified/fulfilled order, fulfillment, payment quarantine/clearing, verified
  gross, organizer earning posted, dan refund aktif tanpa customer PII.

## Next gate

Sediakan isolated VPS minimal 4 vCPU/16 GB, project-only MySQL/Redis/private
storage dan DNS/TLS API staging, lalu ulangi Nginx Linux fixture/live edge,
migration/MySQL suite, jalankan Redis suite, synthetic
lifecycle/deletion/replay drill, 300-concurrent load, backup/restore, rollback,
security, dan real-device UAT. Real-provider deletion tetap gate aktivasi
terpisah.
