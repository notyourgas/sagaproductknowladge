# Saga Platform Dossier

## Tujuan dokumen

Menjelaskan control-plane boundary, pengguna, strategi, teknis, risiko, dan
status Saga Platform.

## Konteks dan status bukti

- Updated: 4 September 2026
- Delivery: `PRODUCTION_DEPLOYED` untuk fondasi tertentu
- Activation: `PRODUCTION_ACTIVATED` untuk fondasi yang dipakai;
  `NOT_PRODUCTION_ACTIVATED` untuk adapter/roadmap lain
- Business readiness: `NEEDS CONFIRMATION`; konteks saat ini internal-only

## Overview produk

Control plane SagaDev untuk product registry, identity, product account,
subscription, entitlement, audit, readiness, launcher, dan integration
contract.

## Masalah yang diselesaikan

Portfolio multi-produk memerlukan registry, entitlement, operator tooling, dan
integration contract tanpa menggabungkan seluruh operational data.

## Target pengguna

SagaDev super admin, support, finance, release, product operations, dan product
owner.

## Persona pengguna

- Platform operator: provisioning/suspend/recovery.
- Support: melihat context dan readiness tanpa membuka data berlebihan.
- Finance: subscription/reconciliation.
- Product service: adapter/event contract.

## Value proposition

Satu control plane untuk akses dan operasi portofolio dengan bounded context per
produk.

## Use case

Product registry/launcher, organization/membership, product account, trial,
subscription, entitlement, audit, readiness, provisioning, integration event.

## Fitur utama

Capability tercatat di [PRODUCT](PRODUCT.md); implementasi per capability
bervariasi dan tidak boleh digeneralisasi.

Saga Member merupakan bounded context/customer experience dengan kontrak dan
authority terpisah. Release `20260902T1526Z-f763fc1-2eaa353` kini terpasang
pada private VPS sebagai `SAGA_MEMBER_PRODUCTION_DEPLOYED_INTERNAL_ALPHA` ring
D0. Customer `f763fc19d8463cf2120387b0d06a57ffa5c868f7` dan Member
`2eaa35334e59dc2656b98816db6bdc020c478a8f` lulus CI canonical-main, remote
Chrome UAT, forced-RLS audit, backup/restore dan rollback rehearsal.

Frontend public dummy terkini adalah V5 Urban Coffee Club dari Saga Member
main `f11172a8540263c4394666fb4f722e15546f9bba` (PR #19) pada Vercel
deployment `dpl_EQ64iVww84S8DsSbSLVY8W1MhVoW` dan stable URL
`https://saga-member-platform.vercel.app`. Program 10 wave, 20 batch, dan 60
micro-sprint memperbarui lima primary route serta route sekunder dengan
hierarchy editorial yang lebih tegas, wallet serta Pass beridentitas kuat,
discovery terstruktur, reward utility, dan profile settings yang ringkas.

Visual memakai Plus Jakarta Sans, Feather icon, komposisi 70/20/10
paper/espresso/lime, tiga tekstur SVG lokal, gradient terbatas pada wallet dan
Pass, serta motion transform/opacity 90–180 ms dengan reduced-motion.
Canonical-main CI `33784325181`, 90/90 test, browser UAT 320–430 px, axe nol
critical/serious, typography floor, 44 px touch target, nav clearance,
offline/fallback, interaction, dan remote public UAT lulus. Runtime tetap
`PUBLIC_DUMMY_DEMO`: backend, auth, provider, transaksi, data pelanggan, QRIS,
NFC, printer, dan pilot nyata tidak aktif. Karena itu delivery adalah
`SAGA_MEMBER_V5_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V4 Editorial Coffee Utility dari main
`99ca02a06bb85d52570d35454cd5c3c0a0d4087d` (PR #18) adalah release
sebelumnya dan menjadi rollback/provenance historis, bukan state runtime
terbaru.

V3 Contemporary Coffee Club dari main
`fd2d50c10ecbeafb5bf99525687da5a06f123013` (PR #17) adalah release
sebelumnya dan tetap menjadi provenance historis, bukan state runtime terbaru.

Frontend dummy publik terbaru memakai Saga Member canonical main
`0612165bf24d7ee767a287b09c5319a617de6f4a` setelah PR #15 dan hotfix kontras
PR #16. Exact deployment `dpl_EfS6TXf6b7p2CmrzzfX5zGPnNMXz` berstatus READY
dan alias pengguna tetap `https://saga-member-platform.vercel.app`.

Seluruh 10 macro phase, 34 batch, dan 136 micro-sprint integrasi UI sudah
dijalankan. Runtime memilih 28 dari 82 aset Wave A-E melalui registry surface,
menyediakan 56 derivative WebP 320/640 dan legacy fallback, lalu merender nilai
Points, XP, tier, harga, status, stock, eligibility, dan CTA sebagai HTML/JS.
Bottom navigation final adalah Beranda, Jelajah, Pass, Reward, dan Profil;
Aktivitas, Inbox, Quest, detail Reward, serta Booking adalah secondary route.

CI canonical main `33773061967` lulus. Production browser UAT pada 320x568,
360x800, 390x844, 412x915, dan 430x932 lulus tanpa horizontal overflow,
broken image, console error, atau request auth/backend/provider. Touch target
minimum 44 px, axe primary route nol critical/serious, navigation sekunder,
offline restart, dan broken-image fallback lulus. Deployment production sehat
sebelumnya tetap READY sebagai rollback target.

State saat ini `SAGA_MEMBER_GENZ_UI_PRODUCTION_VALIDATED /
PUBLIC_DUMMY_DEMO_ACTIVE / VERCEL_PRODUCTION_DEPLOYED / REAL_BACKEND_OFF /
REAL_PROVIDER_OFF / REAL_DATA_OFF / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`. Status ini tidak mengubah private VPS D0, Customer
Platform, provider, tenant, member account, transaksi, atau pilot nyata.

Mode frontend aktif yang ditujukan untuk iterasi fitur/UI/UX sekarang adalah
`PUBLIC_DUMMY_DEMO` dari Saga Member main
`9a914d148bb6773e03afd0c2b45efa39683afdb4` (PR #14) pada satu URL stabil
`https://saga-member-platform.vercel.app`. Runtime statis langsung membuka
Beranda dan menyediakan Home, Reward, Jelajah Saga, Aktivitas, serta Profil
dummy tanpa login, password, OTP, cookie sesi, backend, atau provider. Auth
Functions/helpers dan empat environment variable auth lama sudah dikeluarkan
dari runtime aktif.

PR CI `33690103124`, canonical main CI `33690188252`, 40/40 unit test, browser
acceptance, Vercel acceptance, dependency audit nol vulnerability, serta remote
UAT mobile 390x844 dan desktop 1440x900 lulus. Tidak ada request auth,
`/v1`, synthetic endpoint, atau connector eksternal. Statusnya
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
REAL_BACKEND_OFF / REAL_PROVIDER_OFF / REAL_DATA_OFF / BUSINESS_READY=false`.
Demo ini sengaja menyederhanakan akses untuk finalisasi pengalaman produk;
status tersebut tidak mengaktifkan production member account, transaksi,
Customer Platform, private VPS ring, QRIS, Resend, Push, NFC, atau printer.

Arah ilustrasi baru Saga Member dikunci sebagai contemporary Indonesian Gen Z
coffee-and-creator, bukan vintage tradisional, 3D, atau photoreal. Gaya
semi-editorial flat/vector-like memakai palet espresso, kakao, karamel,
cement, off-white, dan muted sage; objek serta busana harus terasa seperti
coffee shop dan creator culture masa kini. Exact local source `6be4ced`
menambahkan 76 aset Wave B-E dan mempertahankan enam aset Wave A, sehingga
total library candidate menjadi 82 aset.

Wave B mencakup Home hero dan Jelajah; Wave C Member Pass dan Profil; Wave D
Quest, Reward, empty/system states; Wave E tekstur. Ilustrasi dipisahkan dari
UI fungsional: CTA, navigation, status, points, XP, tier, dan nilai bisnis
tetap dirender oleh kode dengan Feather icon serta Plus Jakarta Sans. Manifest,
review page mobile, dan strategi integrasi route-by-route tersedia di source.
Test 76/76 serta browser review 390x844 lulus dengan 76/76 image load, nol
broken image, nol horizontal overflow, dan axe WCAG A/AA nol violation. Gate
generation ini telah digantikan oleh integration release `0612165...`; 28
aset digunakan aktif dan sisanya tetap candidate/fallback.

Strategy integrasi V2 tersedia pada exact local source `0f8fc5d`. Proposal
memecah pekerjaan menjadi 10 macro phase, 34 batch, dan 136 micro-sprint dari
baseline/rollback contract, shell/navigation, Beranda, Jelajah, Pass,
Reward/Quest, Aktivitas/Profil, state/performance/offline, local UAT, hingga
Vercel Preview dan stable-link release. IA target memakai Beranda, Jelajah,
Pass, Reward, dan Profil; Aktivitas menjadi layar sekunder. Aplikasi tetap
mobile-only 320–430 CSS px, dan layar lebih lebar hanya memusatkan kanvas
mobile maksimal 430 px.

Rencana memakai registry aset serta feature flag, menargetkan hanya 20–28 dari
82 aset untuk initial runtime, membatasi initial image per route, dan
mempertahankan legacy fallback. Label `PROPOSAL /
STRATEGY_READY_FOR_APPROVAL / IMPLEMENTATION_NOT_STARTED` dipertahankan sebagai
histori sebelum eksekusi; implementation aktif sekarang dicatat pada release
di atas.

Home dashboard finalization memakai Saga Member main
`c2754dcf5fe5cccc10993b0eb50a10003949c32e` (PR #10) dan authority Customer
Platform main `7b58d2ae62c564312d4a6adfc696c1a4f1a243eb` (PR #8). Customer Platform
menghasilkan `tierProgress` dan daftar Points lot publik yang sudah dibatasi;
raw lot ID, source ledger entry ID, dan referensi transaksi tidak masuk
response member. Beranda menggunakan proyeksi itu untuk progress tier dan
Points terdekat berakhir, lalu menampilkan shortcut Coffee/Studio/Reward/Quest,
booking berikutnya, aktivitas terbaru, Member Code bertopeng, dan freshness
disclosure tanpa menduplikasi kalkulasi bisnis di client.

Customer PR/main CI `33679625555`/`33679725411` dan Member PR/main CI
`33679617437`/`33679750600` lulus. Member full 40 test, browser 390x844 dan
1440x900, zoom 200%, reduced motion, offline shell, WCAG 2.1 AA otomatis nol
Critical/Serious, dependency audit, security headers, serta exact-asset
protected Preview verification lulus. Status
`SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; Preview tetap terlindungi,
Customer Platform baru belum dideploy, dan provider/API bisnis/ring/NFC tidak
berubah.

Satu URL pengguna kini dikunci pada
`https://saga-member-platform.vercel.app`. Alias stabil itu diarahkan ke exact
Preview tervalidasi tanpa `vercel --prod` atau promote. Endpoint publik memberi
HTTP 200, tetapi runtime tetap D0 fail-closed: login, fixture interaktif, data
member, provider, dan backend production tetap OFF. Setiap Preview berikutnya
harus lulus seluruh gate sebelum alias yang sama dipindahkan; kegagalan tidak
boleh mengubah target sehat terakhir.

Consent akun dan pemulihan sesi sekarang memiliki source authority pada
Customer Platform main `fa3502c5f022305293f0c4142315bfe60cc455a7` (PR #7).
Endpoint authenticated menyajikan onboarding state, menyimpan consent policy
`v1` dengan CSRF dan optimistic version, menyajikan metadata sesi aman,
mencabut sesi lain milik member yang sama, serta logout-all. Token, cookie,
CSRF token, consent ID, IP dan raw user-agent tidak masuk response member.

Saga Member main `70e857393201ec212f832dd17681d1d20f96e821` (PR #9)
menyelesaikan UI recovery onboarding, consent server-owned, inventory sesi,
revoke perangkat lain dan dialog konfirmasi keyboard-accessible. PR/main CI
dua repo lulus; Member full 34 test, browser 390x844 dan 1440x900, WCAG 2.1 AA
otomatis nol Critical/Serious, 200% zoom, reduced motion, offline shell,
dependency audit dan D0 Preview acceptance lulus. Implementasi baru hanya
tervalidasi source/local/synthetic dan protected Vercel Preview; Customer
Platform belum dideploy dan stable production D0 tetap tidak berubah.

Auth-entry slice exact main source
`f778a301a5e638f658a3bdce9e26c052e242bccd` (PR #8) menghapus OTP uji reusable
dan placeholder token dari artefak publik. Private simulation kini menerbitkan
challenge synthetic acak yang sementara, single-active, attempt-limited,
single-use, replay-denied, dan tidak tersedia pada Vercel. UI email/OTP
responsive memiliki label, helper, inline error, busy state, recovery ke email,
serta Google disabled yang jujur. PR CI `33667354949`, canonical main CI
`33667470527`, 31 test, browser mobile/desktop, WCAG otomatis nol
Critical/Serious, dependency audit, dan protected-preview exact-asset checks
lulus. Status `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; real consent
persistence pada auth-entry slice tersebut kemudian ditutup oleh Customer
Platform `fa3502c5...` dan Member `70e8573...`, tetapi belum dideploy ke runtime
Customer Platform.

Finalization slice pertama pada exact main source
`346869577c5a2cfeb4d3bd9431f167f18cd10f99` (PR #7) mengunci fondasi UI:
Plus Jakarta Sans self-hosted, Feather-compatible icon system, token espresso,
karamel, abu-semen dan putih, tekstur semen/kayu rendah kontras, safe-area,
focus state, reduced-motion, forced-colors, serta shell mobile/desktop. PR CI
`33660604668` dan canonical main CI `33660963291` lulus bersama 26 test,
browser acceptance, WCAG otomatis nol Critical/Serious, zoom 200%, keyboard,
offline, audit dependency, dan remote protected-preview verification. Status
slice `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; ini bukan aktivasi login,
backend, provider, alias production, production app, atau business readiness.

Frontend exact `c8c776407160c1af7692a068f6a3930ac6ea5b16` juga telah
dipasang pada production target Vercel
`dpl_6QdcYS8XUTTjV7v7tfQ4SL211Q73`. Alias stabil
`saga-member-platform.vercel.app` dilindungi Vercel Authentication dan hanya
menyajikan shell D0 fail-closed. Remote build contract, security headers,
exact-asset hash, serta browser UAT mobile/desktop lulus; tidak ada form login,
navigasi member, console error, atau request API bisnis. Backend VPS tetap
private dan tidak dihubungkan dari target ini.

D0 sengaja tidak dapat dipakai login atau menjalankan flow bisnis. Seluruh
feature/provider, public registration dan public app activation OFF. R0 masih
menunggu exact domain, DNS/TLS, Resend, hashed internal allowlist, expiring
activation passport dan UAT ulang. Snapshot bridge hanya diterima untuk
internal alpha, bukan scale. Goal 1/Goal 2 tetap menjadi provenance historis;
production activation dan business readiness belum dibuktikan.

Goal 3 telah menjalankan seluruh pekerjaan yang sah pada boundary lokal dan
kanonik. Dari 480 micro-sprint, 124 lulus lokal, 108 selesai sebagian secara
lokal, 118 menunggu external gate, dan 130 menunggu prerequisite. Status ini
bukan acceptance Goal 3 penuh: `G3E0` tetap tertutup. Kebijakan aktif sekarang
adalah nol biaya baru; hanya domain/VPS yang sudah aktif boleh digunakan.
Audit read-only menemukan disk root 83%, collision dengan staging legacy,
monitoring staging gagal, dan Customer Platform masih local-alpha tanpa
durable PostgreSQL serving integration. Tidak ada provider, pilot, deployment,
activation, billing, DNS/database, atau perubahan production. Owner self-review
tercatat tetapi bukan independent review.

Goal 4 telah menjalankan seluruh preparation yang sah pada boundary lokal dan
zero-cost. Semua 432 micro-sprint memiliki disposition: 40 local pass, 107
partial local, 88 external gate, dan 197 waiting prerequisite. Baseline Goal 3
terbaru lulus 17/17 local gate dan lima source candidate tetap clean/canonical.
Status ini bukan Goal 4 complete. Public cohort, multi-outlet, commercial
tenant, external runtime/provider, deployment dan production route tetap
`NO_GO`; incremental spend dan production change sama-sama nol. Exact ops
`b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3`, CI lulus.

Goal 5 dirancang sebagai fase sustainable portfolio expansion, bukan mass
launch otomatis. Pack tervalidasi mencakup 20 wave, 120 batch, 40 macro-sprint,
480 micro-sprint, 60 risiko, 20 automatic safety checkpoint dan 108 trace row
Goal 4. Ia mencakup federated authority, self-service provisioning, commercial
lifecycle, SRE, trust, data governance, loyalty economics, outlet/tenant
factory, partner API, support, governance dan ringed expansion. Preparation
aman boleh berjalan unattended dengan Rp0, tetapi Goal 5 execution belum
dimulai: G417 Goal 4, exact route/scope dan independent evidence belum ada;
seluruh external/production mutation serta NFC tetap `NO_GO`/OFF.

Semua 480 micro-sprint Goal 5 kemudian didisposisi: 59 local pass, 119 partial
local, 106 external gate, dan 196 waiting prerequisite. Dua belas kategori
preparation lokal/Rp0 memiliki evidence; source baseline terbaru lulus 17/17
dan lima canonical candidate tetap clean. Angka partial, external, dan waiting
bukan pass. Status `GOAL_5_ZERO_COST_PREPARATION_EXECUTED /
ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; Goal 4
G417, route/scope, independent review, runtime/provider, 180-day proof dan
business acceptance tetap terbuka.

Goal 6 dirancang sebagai durable portfolio institution dan strategic ecosystem
expansion, bukan izin mass expansion. Strategy pack mencakup 22 wave, 132
batch, 44 macro-sprint, 528 micro-sprint, 66 risiko, 22 automatic safety
checkpoint, dan 120 trace row Goal 5. Cakupannya meliputi institutional
governance, enterprise federation, FinOps, reliability, zero trust, privacy,
data governance, Member/loyalty, SagaOPS, settlement, SagaBook network,
developer platform, support, legal/audit dan bounded network expansion.
Preparation aman boleh unattended pada boundary lokal/read-only/synthetic dan
Rp0. Entry tetap `NO_GO`: Goal 5/G519, exact scope, reviewer independen,
runtime/provider, serta bukti operasi 365 hari belum diterima. Tidak ada
external mutation atau production activation; NFC tetap OFF.

Eksekusi lintas Goal 0–6 telah dibuka hanya pada boundary lokal/Rp0. Ops kini
menyediakan satu launcher dan hub loopback untuk mencoba Member PWA, Customer
API dan SagaOPS OWNER/STAFF secara bersamaan. Credential operator dibuat hanya
di memori proses; Member memakai OTP fixture; seluruh provider tetap simulator.
Ini mempermudah technical UAT tetapi tidak menutup durable PostgreSQL, staging,
provider, pilot, production atau business acceptance.

## Fitur MVP

Product-scoped account, subscription/entitlement, provisioning, audit, dan
adapter untuk SagaBook/SagaView.

## Roadmap

1. Pisahkan control-plane boundary bertahap tanpa rewrite.
2. Multi-operator identity/permission.
3. Adapter per produk.
4. Unified observability public-safe.
5. Saga AI grounded retrieval.

## User journey

Operator register product/org → provision account → activate entitlement →
monitor readiness → support/suspend/resume → audit/offboard.

## User flow

Semua action material permissioned, idempotent, product-scoped, dan auditable.

## Business model

`NEEDS CONFIRMATION`: internal infrastructure atau product eksternal. Saat ini
diposisikan sebagai internal control plane.

## Pricing

Tidak ada pricing eksternal yang disetujui.

## Kompetitor

`NEEDS CONFIRMATION`: internal admin platform, SaaS control plane, entitlement
management, identity/organization platform.

## Diferensiasi produk

Product registry dan commercial control terhubung ke workflow Saga tanpa
menjadi shared operational database.

## Brand positioning

Control plane internal Saga product family.

## Messaging

“Shared identity bukan shared permission.”
“Satu registry, bounded context tetap terpisah.”

## FAQ

**Apakah semua data masuk Platform?** Tidak.
**Apakah satu akun otomatis mengakses semua produk?** Tidak.
**Apakah dijual publik?** Belum diputuskan.

## Technical overview

Control-plane services/schema dengan product_code, signed/versioned integration
events, idempotency, retry, audit, dan fail-closed outage behavior.

## Integrasi

SagaBook pilot, SagaView adapter, lalu produk lain berdasarkan readiness.

## Data yang digunakan

Product registry, organization/membership, product account, subscription,
entitlement, readiness, audit, provisioning state, dan integration metadata.

## Risiko dan asumsi

Coupling dengan operational module, privilege escalation, shared identity
confusion, event replay, observability data leakage, dan migration risk.

## KPI dan success metrics

`PROPOSAL`: provisioning success/time, entitlement incident, adapter
failure, support resolution, audit coverage, release gate accuracy. Target
`NEEDS CONFIRMATION`.

## Ide konten pemasaran

Control plane vs monolith; shared identity vs permission; integration contract.

## Contoh caption

`PROPOSAL`: “Satu akun tidak berarti satu izin. Saga Platform menjaga
identity tetap nyaman tanpa mencampur hak akses antarproduk.”

## Ide campaign

`ASSUMPTION`: engineering/build-in-public series; bukan public sales campaign.

## Sales talking points

Untuk internal stakeholders: bounded context, operability, audit, dan gradual
migration. External sales belum relevan.

## Objection handling

- “Kenapa tidak satu database?”: operational ownership, blast radius, privacy,
  dan independent release.
- “Kenapa tidak rewrite?”: gradual adapter/migration mengurangi risiko.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#saga-platform).
