# Saga Platform Product Knowledge

Updated: 3 September 2026
Evidence status: production foundation + migration roadmap

## Tujuan dokumen

Menjadi ringkasan fakta kanonik Saga Platform. Detail product, experience,
business, technical, dan internal positioning berada di
[DOSSIER](DOSSIER.md). Keputusan terbuka berada di
[GAPS](../../GAPS.md#saga-platform).

## Konteks

Fondasi tertentu telah dipakai production, tetapi bounded-context migration dan
product adapter berlangsung bertahap.

## Ringkasan

Saga Platform adalah control plane SagaDev. Ia mengelola registry produk,
operator identity, product account, subscription, entitlement, audit,
readiness, launcher, dan integration contract.

Saga Platform bukan database gabungan seluruh operational data.

## Prinsip arsitektur

- Operational workflow dan data tetap dimiliki masing-masing produk.
- Produk terhubung melalui adapter/event contract.
- Identity bersama tidak berarti permission bersama.
- Subscription dan entitlement memiliki `product_code`.
- Event perlu signature, contract version, nonce/idempotency, retry, dan audit.
- Product outage tidak boleh membuka akses secara default.

## Target pengguna

- SagaDev super admin/operator.
- Support, finance, release, dan product operation.
- Product owner yang melihat readiness dan subscription.

## Capability

- Product registry dan launcher.
- Organization, membership, dan product account.
- Trial/subscription/entitlement.
- Billing/reconciliation.
- Audit dan readiness.
- Provisioning/suspend/resume.
- Integration/event contract.
- Knowledge/Saga AI support boundary.

## Product boundary

- SagaBook menjadi pilot control plane.
- SagaView menjadi adapter pertama.
- SagaMenu, SagaOPS, SagaBio, dan SagaFin menyusul berdasarkan readiness.
- Client projects masuk registry terlebih dahulu, bukan entitlement SaaS.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED` untuk fondasi yang tercantum di bawah.
Activation: parsial. Business model eksternal: `NEEDS CONFIRMATION`.

- Fondasi production hidup bersama repo/schema SagaBook.
- Product account dan commerce flows sudah digunakan untuk SagaBook/SagaView.
- Pemisahan bounded context dan adapter dilakukan bertahap.
- Bukan rewrite total.

### Saga Member Gen Z visual library Wave A-E

- Andreas mengunci arah visual Saga Member sebagai contemporary Indonesian
  Gen Z coffee-and-creator: semi-editorial flat/vector-like, mobile-first,
  memakai espresso, kakao, karamel, cement, off-white, dan muted sage.
- Exact local source `6be4ced` menambahkan 76 aset Wave B-E; bersama enam aset
  Wave A, library tervalidasi berisi 82 aset. Cakupan B-E meliputi hero,
  Jelajah, Member Pass, Profil, Quest, Reward, empty state, system state, dan
  tekstur.
- Aset ilustrasi tidak memuat UI, logo palsu, status, CTA, points, XP, tier,
  atau nilai bisnis. Elemen fungsional tetap code-native dengan Feather icon
  dan Plus Jakarta Sans.
- Test 76/76, review mobile 390x844, 76/76 image load, nol broken image, nol
  horizontal overflow, dan axe WCAG A/AA nol violation lulus.
- Status `CONFIRMED / LOCAL_VALIDATED / ASSET_LIBRARY_READY /
  UI_INTEGRATION_PENDING / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
  Library belum dipasang route-by-route, belum dipush/merge, dan belum
  dideploy atau diuji pada URL Vercel.

### Saga Member production internal alpha D0

- Saga Member main `9a914d148bb6773e03afd0c2b45efa39683afdb4`
  (PR #14) sekarang menjalankan `PUBLIC_DUMMY_DEMO` sebagai aplikasi statis
  publik pada `https://saga-member-platform.vercel.app`. Pengunjung langsung
  masuk ke Beranda tanpa login, password, OTP, cookie sesi, atau provider auth.
- Seluruh isi Home, Reward, Jelajah Saga, Aktivitas, dan Profil adalah fixture
  dummy/simulasi. Fungsi `/api/auth`, helper auth, serta empat environment
  variable auth lama telah dihapus dari runtime aktif; deployment Vercel tidak
  memiliki Function maupun environment variable.
- PR CI `33690103124` dan canonical main CI `33690188252` lulus. Unit 40/40,
  browser acceptance, Vercel acceptance, dependency audit nol vulnerability,
  serta remote UAT 390x844 dan 1440x900 pada URL stabil lulus tanpa request
  auth/backend/provider.
- Status kanonik demo ini `CONFIRMED /
  SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
  REAL_BACKEND_OFF / REAL_PROVIDER_OFF / REAL_DATA_OFF / BUSINESS_READY=false`.
  Ini adalah production-hosted demo, bukan login member nyata, production
  backend, pilot transaksi, provider activation, atau business-ready.

- Home dashboard mobile-first kini tervalidasi pada Saga Member main
  `c2754dcf5fe5cccc10993b0eb50a10003949c32e` (PR #10). Beranda menyajikan
  empat destinasi scan-first Coffee, Studio, Reward, dan Quest, progress tier,
  Points terdekat berakhir, booking berikutnya, aktivitas terbaru, Member Code
  bertopeng, structural skeleton, serta disclosure freshness yang fail-closed.
- Customer Platform main `7b58d2ae62c564312d4a6adfc696c1a4f1a243eb`
  (PR #8) menjadi authority untuk proyeksi `tierProgress` dan `pointsLots`
  publik tanpa mengekspos ID ledger atau referensi transaksi. Customer
  canonical main CI `33679725411` dan Member canonical main CI `33679750600`
  lulus.
- Full Member 40 test, browser UAT mobile/desktop, zoom 200%, reduced motion,
  offline shell, WCAG otomatis nol Critical/Serious, audit dependency, header
  keamanan, dan exact-asset protected Preview verification lulus. Status
  `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; Customer Platform baru belum
  dideploy, provider/ring/NFC tidak berubah, dan business readiness tetap
  false.
- URL publik kanonik Saga Member sekarang
  `https://saga-member-platform.vercel.app`. Alias stabil tersebut menunjuk
  exact Preview tervalidasi dari main `c2754dcf...`, memberi HTTP 200 publik,
  dan tetap menampilkan D0 fail-closed tanpa login, fixture interaktif, data,
  provider, atau backend production. URL deployment unik tidak menjadi link
  pengguna dan tidak ada `vercel --prod` atau promote.

- Consent akun berversi dan pemulihan sesi kini memiliki authority kanonik pada
  Customer Platform main `fa3502c5f022305293f0c4142315bfe60cc455a7`
  (PR #7). OTP mengembalikan kebutuhan consent; completion memakai CSRF dan
  optimistic member version; inventory sesi hanya mengekspos metadata aman;
  revoke perangkat lain dan logout-all bersifat member-scoped.
- Saga Member main `70e857393201ec212f832dd17681d1d20f96e821`
  (PR #9) menghubungkan recovery onboarding, consent persistence, daftar sesi,
  revoke perangkat lain, dan dialog konfirmasi aksesibel. Full 34 test,
  browser UAT mobile/desktop, WCAG otomatis nol Critical/Serious, zoom 200%,
  reduced motion, offline shell, audit dependency, dan D0 Preview check lulus.
- Slice tervalidasi pada protected Vercel Preview saja. Customer Platform baru
  belum dideploy, stable production D0 tetap deployment lama, dan tidak ada
  provider, API bisnis publik, alias production, ring, atau business-readiness
  yang diaktifkan. Status `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`.

- Auth-entry hardening tersedia hanya pada protected Vercel Preview dari exact
  main source `f778a301a5e638f658a3bdce9e26c052e242bccd` (PR #8).
  UI email/OTP kini responsive, error tampil dekat input, dan Google jujur
  berstatus disabled sampai provider resmi diotorisasi.
- Artefak publik tidak lagi membawa OTP uji reusable atau placeholder token.
  Synthetic challenge bersifat acak, sementara, attempt-limited, single-use,
  replay-denied, dan hanya hadir pada loopback private simulation.
- PR CI `33667354949` dan canonical main CI `33667470527` lulus bersama 31
  test, browser mobile/desktop, WCAG otomatis, invalid-code/replay denial,
  dependency audit, serta exact-asset protected-preview checks.
- Status slice `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; stable production
  D0, private VPS, Customer Platform, database, Resend/Google, API bisnis,
  alias production, dan business readiness tidak berubah atau diaktifkan.
  Gap consent pada slice ini ditutup kemudian oleh authority commit
  `fa3502c5f022305293f0c4142315bfe60cc455a7` dan Member commit
  `70e857393201ec212f832dd17681d1d20f96e821`, tanpa deploy backend.

- Finalization slice pertama tersedia hanya pada protected Vercel Preview dari
  exact main source `346869577c5a2cfeb4d3bd9431f167f18cd10f99` (PR #7).
  Fondasi visual memakai Plus Jakarta Sans self-hosted, Feather-compatible SVG,
  palet espresso/coklat, abu-semen, putih, serta tekstur semen/kayu ringan.
- PR CI `33660604668` dan canonical main CI `33660963291` lulus. Unit/contract,
  browser mobile-desktop, WCAG otomatis, zoom 200%, reduced motion, keyboard,
  offline, audit dependency, dan remote preview asset/runtime checks lulus.
- Status slice `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; preview tetap
  terlindungi dan fail-closed. Stable production D0, backend VPS, database,
  login, provider, API bisnis, alias production, dan business readiness tidak
  berubah atau diaktifkan.

- Frontend fail-closed D0 dari exact Member source
  `c8c776407160c1af7692a068f6a3930ac6ea5b16` kini juga terpasang pada target
  production Vercel `dpl_6QdcYS8XUTTjV7v7tfQ4SL211Q73` dengan alias
  `saga-member-platform.vercel.app`. Target ini dilindungi Vercel
  Authentication dan hanya menampilkan shell inactive; ia bukan jalur login
  atau koneksi ke backend VPS.
- Remote build contract, security headers, exact-asset hash, dan browser UAT
  mobile/desktop lulus. Shell mengekspos nol form, nol navigasi member, nol
  console error, dan nol request API bisnis.
- Saga Member kini terpasang pada existing private VPS sebagai release
  `20260902T1526Z-f763fc1-2eaa353` dengan source Customer
  `f763fc19d8463cf2120387b0d06a57ffa5c868f7` dan Member
  `2eaa35334e59dc2656b98816db6bdc020c478a8f`.
- State kanoniknya `SAGA_MEMBER_PRODUCTION_DEPLOYED_INTERNAL_ALPHA` pada ring
  D0: runtime production dan database terisolasi aktif, tetapi seluruh route
  bisnis, provider, public registration dan exposure publik tetap OFF.
- Remote synthetic/Chrome UAT, forced RLS, backup/restore, checksum dan rollback
  rehearsal lulus. Denial D0 terbukti tidak mengubah revision/hash/timestamp.
- Ini bukan `PRODUCTION_ACTIVATED`, public app launch, multi-outlet, commercial
  tenant, business-ready, atau Goal 4 complete.
- R0 menunggu exact domain, DNS/TLS, Resend terverifikasi, hashed internal
  allowlist, activation passport berumur pendek dan UAT ulang. Gateway/QRIS,
  Push, SagaBook live connector, NFC, printer, outlet kedua dan R3-R6 tetap OFF.

### Riwayat Saga Member local internal alpha dan Goal 2 local validation

- Saga Member dan Customer Platform memiliki private canonical source terpisah
  dari Contracts dan SagaOPS.
- Local alpha membuktikan Email OTP fixture, Member PWA, Points/XP/Tier,
  Voyager, Reward, Card, Quest, Push in-app fallback, SagaBook handoff, dan
  server-owned authority/replay boundaries.
- Goal 1 tetap diterima sebagai `LOCAL_INTERNAL_ALPHA_ACCEPTED`. Goal 2 kini
  diterima hanya pada scope `GOAL_2_LOCAL_VALIDATED`; staging sengaja dilewati
  untuk scope saat ini.
- Status irisan ini: `CONFIRMED / SOURCE_PUSHED / GOAL_2_LOCAL_VALIDATED /
  STAGING_SKIPPED / IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED /
  BUSINESS_READY=false`; ia tidak mengaktifkan provider, customer pilot, atau
  production.
- Goal 3 kini dieksekusi sampai batas lokal/kanonik: 20 wave, 120 batch, dan
  480 micro-sprint tercatat; 124 `LOCAL_PASS`, 108 `PARTIAL_LOCAL`, 118
  `EXTERNAL_GATE`, dan 130 `WAITING_PREREQUISITE`. Paket ops privat exact
  `e3a54319dfcefe9a3f2774c24f496e51b04e7197` dan CI exact commit lulus.
- Status Goal 3: `GOAL_3_LOCAL_CANONICAL_EXECUTED /
  ZERO_NEW_SPEND_LOCKED / EXISTING_VPS_AUDITED / EXTERNAL_RUNTIME_NO_GO /
  STAGING_NOT_PROVISIONED / PILOT_NOT_STARTED /
  IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
  Goal 3 belum complete; independent review, durable runtime, provider nyata,
  commissioning, pilot, dan production tetap gate terpisah.
- Pada 2 September 2026 Andreas mengganti opsi paid staging menjadi kebijakan
  nol biaya baru. Hanya domain/VPS yang sudah aktif boleh dipakai setelah audit
  fail-closed. Audit read-only menemukan disk root 83%, staging legacy yang
  bertabrakan, monitoring staging gagal, serta Customer Platform masih
  local-alpha tanpa durable PostgreSQL serving integration. Tidak ada purchase,
  resource, DNS, database, provider, pilot, atau perubahan production.
- Seluruh 432 micro-sprint Goal 4 kini memiliki disposition konservatif: 40
  `LOCAL_PASS`, 107 `PARTIAL_LOCAL`, 88 `EXTERNAL_GATE`, dan 197
  `WAITING_PREREQUISITE`. Baseline Goal 3 terbaru kembali lulus 17/17 local
  gate dan lima source candidate terinventaris sebagai clean/canonical.
- Statusnya `GOAL_4_ZERO_COST_PREPARATION_EXECUTED /
  ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`, bukan
  Goal 4 complete. Incremental spend tetap Rp0; tidak ada provider call,
  customer data, VPS/DNS, deployment, pilot, route scale, atau production
  mutation. Exact ops `b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3` dan CI
  exact commit lulus.
- Strategi Goal 5 kini tervalidasi sebagai fase **Sustainable Portfolio
  Expansion & Ecosystem Operating System**: 20 wave, 120 batch, 40
  macro-sprint, 480 micro-sprint, 60 risiko, 20 automatic safety checkpoint,
  dan 108 trace row dari Goal 4. Preparation read-only/local/synthetic boleh
  berjalan tanpa owner-wait pada incremental budget Rp0.
- Status Goal 5 `STRATEGY_VALIDATED / ZERO_COST_UNATTENDED_PREP_READY /
  ENTRY_NO_GO / ROUTE_EXECUTION_NOT_STARTED / PRODUCTION_UNCHANGED`. G417 Goal
  4, exact route, independent review dan scope masih belum diterima; planning
  ini tidak mengizinkan purchase, provider, VPS/DNS, customer data, merge,
  deployment, activation atau NFC. Exact ops
  `075a3e86c852568b67797cfb40bb764e58434167`; CI exact commit lulus.
- Seluruh 480 micro-sprint Goal 5 kini memiliki disposition konservatif: 59
  `LOCAL_PASS`, 119 `PARTIAL_LOCAL`, 106 `EXTERNAL_GATE`, dan 196
  `WAITING_PREREQUISITE`. Dua belas kategori preparation lokal/Rp0 dijalankan;
  fresh source baseline kembali lulus 17/17 dan lima canonical candidate
  terinventaris clean melalui audit read-only.
- Status eksekusinya `GOAL_5_ZERO_COST_PREPARATION_EXECUTED /
  ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`, bukan
  Goal 5 complete. Tidak ada purchase, provider, data pelanggan, VPS/DNS,
  merge, deployment, activation, ring advancement atau NFC. Exact ops
  `058ab3dc4724b808d248e61b2c42de032c1a671a`; CI exact commit lulus.
- Strategi Goal 6 kini tervalidasi sebagai fase **Durable Portfolio Institution
  & Strategic Ecosystem Expansion**: 22 wave, 132 batch, 44 macro-sprint, 528
  micro-sprint, 66 risiko, 22 automatic safety checkpoint, dan 120 trace row
  dari Goal 5. Seluruh 10 role SAGADEVS tercakup.
- Status Goal 6 `GOAL6_STRATEGY_VALIDATED /
  ZERO_COST_UNATTENDED_PREP_READY / ENTRY_NO_GO /
  ROUTE_EXECUTION_NOT_STARTED / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
  Goal 5 belum complete dan G519 belum diterima; 365-day proof tidak dapat
  diganti simulasi. Preparation lokal/read-only/synthetic boleh berjalan tanpa
  owner-wait pada Rp0, sedangkan purchase, provider, data nyata, VPS/DNS,
  merge, deploy, activation, network expansion dan NFC tetap dilarang/OFF.
  Exact ops `f557f31bb0b04cfac4ac8399a33ab0ab4cc5336f`; CI run
  `33561290143` lulus.
- Program eksekusi Goal 0–6 kini memiliki one-command local pilot launcher dan
  hub loopback yang menghidupkan Member PWA, Customer API, serta SagaOPS
  operator UAT dengan credential sintetis runtime-only. Fresh component
  baseline lulus Contracts 11/11, Customer 47/47, Member 18/18 plus browser,
  dan SagaOPS 76/76.
- Status slice ini `ALL_GOALS_LOCAL_EXECUTION_STARTED /
  LOCAL_PILOT_LAUNCHER_VALIDATED / ZERO_NEW_SPEND /
  PRODUCTION_UNCHANGED / BUSINESS_READY=false`. Provider tetap simulator,
  data nyata tidak dipakai, NFC OFF, dan durable PostgreSQL/external runtime
  belum diterima. Exact ops `65615c42760e952f85acf4d1545464746e91673f`;
  CI run `33562643115` lulus.

## Gap utama

- Memisahkan control plane dari operational module tanpa merusak production.
- Multi-operator identity dan permission.
- Adapter per produk.
- Unified observability tanpa membocorkan business data.
- Saga AI grounded retrieval.

## Ide konten

- Mengapa multi-product platform tidak boleh menjadi satu database besar.
- Shared identity vs shared permission.
- Control plane untuk SaaS portfolio.
