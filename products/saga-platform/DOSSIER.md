# Saga Platform Dossier

## 2026-10-05 — SagaPOS lifecycle terurut, source-only

`CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
sumber arahan Andreas untuk melanjutkan urutan closure (DEC-236).
SagaPOS `373cc8a3a89d2426bfd3edd6f2ea67ad33b83dc6`, Platform `3c34dc6a4dea12ac3d83c4077e15a51a838ac1f4`.
Before: lifecycle belum diterapkan pada tenant lokal → after: event signed
pusat mengubah akses account secara durable, dengan ordering installation,
binding subscription, receipt hash dan audit existing. Suspend/arsip menolak
baca/tulis; event lama/provisioning retry tidak membuka ulang. Restore arsip
belum memberi akses, bahkan jika ada entitlement tetapi identity belum relink.
Tes SagaPOS19/19 dan Platform63/63(817assertions), static/type/PHP/Pint/diff,
restart/disposable restore dan browser/a11y tiga viewport PASS. Bukan full suite,
native Postgres atau human UAT. Tidak ada payment/provider/payout mutation.
Production active `4c07c06fd4427fb33aebf2d2959a19472fbf2ed9`, rollback
`1a60de56e41697d2ec35ba05f66f8bae16198152`, service/DB/Nginx aktif,
health ready/GATEWAY existing/Member PROVIDER/Kiosk static demo OFF; links12/12.
Dua tabel SaaS tetap belum ada di live; manifest35, draft receipt hanya lokal.
Production unchanged; artifact/recovery rehearsal/activation/smoke/monitor NOT_RUN.
BUSINESS_READY belum; staff/closing approval, native role/multi-worker,
paired schema/runtime integration, event outage/reconcile/crash lease dan UAT
masih terbuka. Tidak mengklaim seluruh Wave1 atau semua sprint selesai.



## 2026-10-05 — Closure SagaPOS Wave 1/2 parsial, bukan deploy

`CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. SagaPOS `cdfd73f9627f450b1e557c249e85874b4141c1b4`, Platform `57154a8931d7b7a415df5a523131e39d1ecac6d2`.

- Reuse identity/exchange; refresh SagaPOS memakai scope khusus dan tidak mengubah scope credential existing otomatis. Horizon absolut8jam tidak diperpanjang, assertion tetap maksimum300detik; revoked/inactive membership/user/org/install/link/subscription gagal tertutup. Password tidak ditahan pada produk.
- Dedicated SagaPOS adapter pada outbox/retry/dead-letter existing; konfigurasi kosong tidak mengirim ke SagaBook. HTTP consumer local verifies signed envelope dan durable account/hash sebelum acknowledgment, retry tetap satu tenant.
- Platform32/32,302assertions/Pint/PHP/diff PASS; paired SagaPOS54/54+subset2/2/static/type/browser PASS. SQLite/PGlite bukan native production concurrency proof. Lifecycle consumer/reconcile/crash lease recovery belum tertutup.
- Production Platform/POS tidak diubah; paired schema/runtime/native acceptance dan guarded release wajib. Config/scopes/plan/terms live tidak dianggap aktif dari source/fixture; no provider/payment/payout mutation baru.

## 2026-10-05 — Reuse identity untuk operasi tenant SagaPOS lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`: SagaPOS
`4045cfb3b4bea355f13bd641521358e077887bec` memakai approval/provisioning/login
existing dari Platform `45752bc8f3eea08446fe7db053290d70fa83eca2` unchanged.
Tenant kini dapat menguji cash→KDS→ledger close, tidak memakai persona Kopi
Saga. Assertion maksimum300detik dipertahankan, tanpa silent extension.
`PROPOSAL`: trusted outbox consumer, lifecycle revocation/reconciliation,
central refresh/re-exchange dan commercial plan/terms sebelum SaaS live.
Regresi SagaPOS63/63 mencakup native local queue/access/restore; bukan rerun
full Platform atau deploy produk lain. Fixture plan/trial bukan keputusan bisnis.

## 2026-10-05 — Approval/identity SagaPOS, reuse native kontrak

`CONFIRMED`: SagaPOS `9ede3a808b97071d488aad09df59f4ac194df999` memakai source Platform
`45752bc8f3eea08446fe7db053290d70fa83eca2` tanpa perubahan baru. Controller review
native mencatat audit dan emits event; consumer lokal SagaPOS membuat tenant
atomik lalu melaporkan readiness; login exchanges assertion HMAC product-bound.
Pending/rejected/partially acknowledged tidak memberi akses onboarding.
Regresi Platform40/40 (373 assertions), integrasi lost-ack/retry/restart/restore
lulus; nol payment/notification fixture. Scope local SQLite/PGlite, bukan
production consumer activation/pricing/approval Owner real. [SagaOPS](../sagaops/DOSSIER.md).

## 2026-10-05 — Kontrak signup jenis usaha SagaPOS lokal

- `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`: branch `codex/sagadev-sagapos-signup-sprint2-20261005`, source `45752bc8f3eea08446fe7db053290d70fa83eca2`; consumer SagaPOS `3327dc2d4faef4245802f339b8e1f03ca9300716`.
- Sebelum enum jenis usaha tidak lolos validated profile; sesudah enum coffeeshop/cafe/food/other disimpan oleh signup controller existing. Internal API validation kini JSON422, bukan redirect302. Auth/HMAC/approval/authority tetap, tanpa migrasi atau commercial plan baru.
- Regresi40/40,373assertions dan Pint PASS. Integrasi consumer terhadap native Laravel/disposable SQLite lulus pending queue, hash password, deny login, deduplikasi/replay, restart/restore, tanpa external/provider call. Bukan bukti live Platform atau DB production.
- Production tidak diubah; live SagaPOS signup menunggu paket/terms dan product-bound credential sah serta paired deployment. Approval/provisioning/login operasional masih terbuka. [SagaPOS](../sagaops/DOSSIER.md).

## 2026-10-05 — Deployment perapihan typography/layout Member

- `CONFIRMED`; Andreas meminta deploy kandidat UI yang telah tervalidasi, bukan seluruh source pending.
- Before -> after: perapihan judul/body, gutter16px, gap24px, tombol/ikon dan panel Akun yang sebelumnya hanya lokal kini tersedia pada Member production; desain utama dan authority Platform dipertahankan.
- Branch Member `codex/member-layout-rhythm-20261005`, exact `9fa7f3f1299abce7409eec332441c79001fdbb23`. Backend `bf3baba7cec2e2e936ce6b6e9d969b3dd4cd0729`, contracts `3279a02b6d06d3532190488f6abbcc59c312d120` unchanged; 15 migrations byte-identical.
- Release aktif `20261005T031100Z-bf3baba-r0u`; immutable artifact SHA256 `77a409c02449d9391b89f72c8336e91f78a8ef07377d3d182113caf4d1ca576e`. Recovery target `20261005T013000Z-bf3baba-r0u`/Member `179603d8a39447045a6ebfb2354abd7790aa66b2` dipertahankan.
- Runner `codex/member-layout-runner-20261005`, exact `64ef5a5eb30aa987f23680d0e1b85132f21d3ab5`, installed LF SHA256 `02efb8f2588954625259e08837007e10707246a550e6d7c1f10fcd025cf70272`; exact binding/predecessor dan shared release lock tetap wajib. 148 Python dan16 Node tests PASS.
- Local Member628tes, matrix532checks per Chromium/WebKit, synthetic interaksi/Axe/static/diff PASS. Native PostgreSQL18 disposable old/candidate restore, restart persistence dan unchanged15→15 PASS. Artifact secret/dependency audit nol; production worker byte-identical/network-only dan28operasi shared contract PASS.
- Target encrypted backup/checksum/disposable restore, effective Owner, switch→rollback→prepare→reswitch, active backup dan health/monitor PASS. Tidak ada migrasi/data correction atau transaksi bisnis untuk verifikasi.
- Owner authenticated public browser390/1440, session/reload/logout, cookie/CSRF/denial, laporan/form dan Axe PASS. Empat CSS publik byte-identical dengan source; login320/360/375/390/430 pada Chromium/WebKit100/200% PASS tanpa overflow/error.
- SagaPOS `1a60de56e41697d2ec35ba05f66f8bae16198152` dipertahankan; Book/Vercel/DNS/provider/hardware tidak dimutasi. Kandidat keamanan/recovery/voucher lintas Book yang masih lokal tidak ikut rilis ini.
- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / NOT_PUSHED / NO_PR / CI_NOT_RUN / BUSINESS_READY=false`. Authenticated Member journey dan iPhone Safari/PWA fisik tetap OPEN; knowledge disinkron setelah provenance/runtime terverifikasi.

## 2026-10-05 — Perapihan typography dan layout Member lokal

- `CONFIRMED`; Andreas meminta audit/perbaikan setiap layar, tombol dan teks karena alignment serta gap tidak konsisten.
- Before -> after: aturan CSS lama/baru menghasilkan ukuran judul, inset dan margin bertumpuk serta label navigasi hilang di Bantuan; sekarang V1 memakai gutter 16 px, gap section 24 px, hierarki judul/body dan tombol/ikon konsisten. Login/onboarding, kartu, Points/perjalanan, riwayat, voucher serta panel Akun dirapikan tanpa mengganti desain utama atau domain logic.
- Source branch `codex/member-layout-rhythm-20261005`, exact `9fa7f3f1299abce7409eec332441c79001fdbb23`, berbasis frontend rilis `179603d8a39447045a6ebfb2354abd7790aa66b2`. Enam file CSS/harness; dependency/lockfile, backend/contracts/database dan provider unchanged.
- 628 unit, static/accessibility contract, diff check PASS. Matrix synthetic 38 layar/state × tujuh viewport 320/360/375/390/430/768/1440 × 100/200% text = 532 checks per engine Chromium/WebKit PASS: overflow, clipping, centering, touch minimum, nav alignment; Axe serious/critical nol pada 390 px. Ini bukan sertifikasi WCAG atau iPhone fisik.
- Regresi browser synthetic kedua engine PASS: edit/notifikasi/focus/Back, sesi perangkat/pesan, Points/tier dialogs, cursor/filter/detail, save/conflict/error/offline/reload dan session expiry. Tidak ada akun/transaksi/provider production diuji atau dimutasi oleh run ini.
- `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / NOT_PUSHED / NO_PR / CI_NOT_RUN / BUSINESS_READY=false`. Preview loopback saja. Production tidak diubah; gate deploy dan authenticated Member/iPhone UAT tetap terpisah.

## 2026-10-05 — Rilis UI Member di atas backend aktif

- `CONFIRMED`; Andreas meminta Riwayat di navigasi bawah, Beranda lama yang menarik, lalu deploy.
- Before -> after: Riwayat sekunder dan pengaturan Akun bertingkat menjadi empat tab utama, Beranda editorial, serta panel native edit profil/notifikasi. Sesi perangkat, pesan layanan dan bantuan dikelompokkan; API lama tetap dipakai.
- Member branch `codex/member-home-history-release-20261005`, exact `179603d8a39447045a6ebfb2354abd7790aa66b2`. Kandidat dibentuk dari frontend production `2a2965558b8ece60f5a1442bd406eded65dc1f28`, bukan seluruh perubahan source pending.
- Backend unchanged `bf3baba7cec2e2e936ce6b6e9d969b3dd4cd0729`, contracts unchanged `3279a02b6d06d3532190488f6abbcc59c312d120`; 15 migration unchanged, tanpa seed/data correction atau dependency baru.
- Release aktif `20261005T013000Z-bf3baba-r0u`; artifact SHA256 `99947ae5ad04641edf311f045b489ac413a813c834c74d6a69200e373256e05d`. Rollback exact `20261003T075000Z-bf3baba-r0u`/Member2a29655 dipertahankan.
- Runner source `6467345a2d09219be2b2ae147ae93d155c39ee0c`, installed LF SHA256 `3a117d6a2e00f573759e6e810a6dad61155938faad8bdb4653ea333a9b9ddec8`. Binding pasangan exact; gate hash/expected-current tidak dilemahkan. POS `1a60de56e41697d2ec35ba05f66f8bae16198152` dipertahankan sesudah delta stock-only diverifikasi; POS tidak dideploy oleh rilis Member.
- Local check/628 Member tests, Chromium/WebKit320–430/Axe/200%text/reduced-motion/offline/error/cursor/filter/detail/account regression PASS. Worker upgrade/rollback/reswitch PASS. Runner123 Python/15 Node PASS; native PostgreSQL18 restore/restart15→15 PASS.
- Production encrypted backup/checksum/disposable restore, fresh effective Owner, guarded switch→rollback→prepare→reswitch, active backup dan monitor PASS. Owner authenticated browser390/1440, session reload/CSRF/cookie/denial/Axe PASS; enam aset publik byte-identical dan login320/390/430 PASS. Tidak membuat transaksi bisnis.
- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`, source app/runner commit lokal, NOT_PUSHED/NO_PR/CI_NOT_RUN. Google/OTP dan provider existing tidak diperluas; Vercel/DNS/Book/hardware/erasure tidak diubah. Audit security mendalam NOT_REQUESTED.
- Authenticated Member journey dan iPhone Safari/PWA fisik belum diuji pada kandidat ini; `BUSINESS_READY=false`. Source keamanan/recovery/voucher lintas Book yang lebih baru tetap IMPLEMENTED_NOT_DEPLOYED, tidak otomatis ikut rilis UI ini.

## 2026-10-04 — Kode voucher dan shared checkout

- `CONFIRMED`: keputusan Andreas untuk pilihan voucher otomatis setelah identifikasi Member, atau input kode di POS/Book; kode bukan bukti login.
- Before -> after: voucher terdaftar tetapi presentasi/input lintas checkout belum lengkap; sekarang Member menampilkan kode immutable, POS/kiosk memilih dari quote authoritative dan Book menerima kode dalam signed Member context.
- Backend `b4d883db1d3c0c4503d682745bb7a5cf3d72da4a`; Member `685d74da2f4fb81e82583f967ca4b905ddd87bc4`; contracts `466ac94e09254782308b3a6979e240d114259655`. Branch source `codex/`, committed lokal, belum push/PR/CI/deploy.
- Contract additive60operations, compatibility dan32tes PASS. Member622tes PASS, browser320/360/375/390/430, keyboard,200%text,reduced-motion,offline/error dan Axe focused PASS. Backend focused22tes PASS termasuk native PostgreSQL18 persistence/CAS; policy regression23tes PASS termasuk Book HTTP nyata ke Platform dengan POS gate OFF.
- Gate Book memerlukan sagaBook+voucher serta grant outlet VOUCHER_READ/WRITE terpisah; tidak bergantung pada sagaPos. Harga dan eligibility tidak dihitung oleh Member. Signed handoff hanya navigasi authenticated, bukan voucher redemption.
- Paid authoritative commits; terminal unpaid releases; timeout ambigu tetap held. Replay/restart tidak menggandakan penukaran; refund tidak otomatis menerbitkan ulang. Kedaluwarsa dan aturan campaign/birthday sebelumnya unchanged.
- Production tidak diubah. Tap/NFC/provider eksternal baru OFF. Mapping/grant target nyata, immutable paired artifact, target-bound restore/rollback, authenticated Owner dan iPhone/UAT tetap gate rilis. Audit dependency PHP Book existing belum hijau; tidak mengklaim BUSINESS_READY.

## 2026-10-04 — Admission recovery rilis

- `CONFIRMED`: runner `d0da6d0f1c57d82b80a1b5376b91ce0026cc5ca8`, local only.
- Sebelum: kecocokan skema saja belum cukup untuk mengakui recovery runtime terbaru.
  Sesudah: admission konservatif sebelum mutasi rilis; 123 tes regression runner PASS.
- Tidak membuktikan kompatibilitas seluruh runtime hanya dari inventory migration;
  exact recovery candidate dan target-bound rehearsal tetap wajib.
- Source backend/Member/contracts dan artifact adc0507 unchanged. Runner bukan package aplikasi baru.
  Source runner belum push/PR/CI/deploy; tidak mengubah layanan/provider/data production.
- Koneksi SSH gagal sebelum autentikasi dan HTTPS belum terjangkau dari executor.
  Vault bukan blocker; password belum dapat dinilai. Global outage tidak diklaim.

## 2026-10-04 — Follow-up recovery/retensi SQL Member

- `CONFIRMED`: backend `adc05074b8782c6fca6483694d6478a44d6240d5`, Member/contract unchanged dari kandidat04Oktober.
- Before -> after: journal closure-only belum dapat memulihkan mutasi lebih baru;
  sekarang bounded encrypted differential checkpoint memulihkan state Member yang exact,
  termasuk redemption, Points, closure dan recovery-code consumption setelah backup.
- Ownership event kini durable; unknown legacy tetap ditahan, bukan guessed backfill.
  Penghapusan SQL dibatasi subject/organization/checkpoint dan deadline30hari;
  tidak memberi hak penghapusan umum dan tidak menghapus journal closure.
- Native PostgreSQL18 whole-old-dump restore/replay, restricted purge,
  completed-case recovery, foreign data preservation dan retry PASS;85berkas backend PASS.
- Migration16 additive,15existing byte-identical; reader state terbaru diperlukan.
  Code rollback frontend bukan rollback backend/database yang kompatibel.
- Local validated/source committed, bukan production activation atau actual customer deletion.
  Tidak mencakup normalized Partner/provider/external Book/POS database recovery.
- Remaining: actual legacy provenance/downstream scope, global copy expiry/custody,
  target-bound backup/restore/rollback, Owner enrollment dan authenticated iPhone/UAT.

## 2026-10-04 — Penutupan lanjutan Member, lokal saja

- `CONFIRMED`: source backend `7406361d06c1930b0ff8136ae7698d9c1fb758a3`, Member
  `0c0b694bfeaee0da5eb4213fa60ecc0767585a19`, contracts `9629ba8a748c2e402ff582a73c83bf3f82fca6cd`.
- Before -> after: Owner mempunyai authenticator/recovery yang harus di-enroll sendiri;
  profil legacy dapat melengkapi data kosong sekali, koreksi oleh Owner melalui kasus privasi;
  tab lama tidak menghapus konteks tab baru atau menimpa versi profil.
- Factor at rest terenkripsi; recovery sekali pakai. TOTP bukan phishing-resistant;
  tidak tersedia password-only reset. Enrollment production belum dilakukan.
- Admission pendaftaran bersama mempertahankan cohort/kuota/hak lama; tidak mengklaim unique-human.
- Kontrak additive54operasi (Member28, machine14, partner7, Owner5), compatibility PASS.
  Schema migration15berkas byte-identical; tidak ada migrasi/dependency baru.
- Member620tes dan contracts31tes lulus; integrasi real local API/proxy/browser synthetic
  membuktikan input denial, stale-tab recovery, koreksi dengan MFA/password, membership age,
  mobile320–430/Owner1440, Axe,200%text dan reduced motion.
- Native PostgreSQL18 encrypted dump/restart/disposable restore mempertahankan consumed recovery,
  admission state, redeemed gift dan closed account. Whole pre-closure backup ditolak dengan
  independent journal; mode restore tidak boleh menghilangkan jurnal.
- Artifact lokal SHA256 `7a3b039deb2957a6d37be152ff30795abb316c2cb455acdbad7a2b9a7e03aece`;
  safe extraction/inventory/dependency audit PASS. Recovery backend harus compatible dengan factor state;
  rollback frontend bukan bukti rollback backend aman.
- Masih pending: actual paired POS/Book UAT, replay setelah pre-closure backup, physical SQL history purge,
  seluruh backup expiry, actual runtime, Owner enrollment, physical iPhone dan sole Release Lead gate.
  Candidate source local committed/NOT_PUSHED/NO_PR/CI_NOT_RUN/BELUM_DEPLOY; bukan BUSINESS_READY.

## 2026-10-03 — Kontrol Member tervalidasi lokal

- Klasifikasi `CONFIRMED`, delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
  Source backend `2e2e1ef4f7dcffa84c32e188fd78c98c522a9dc0`, frontend
  `92d279c74cb6f6d1292bcb1d9f9a0f58aec78ba0`, branch masing-masing
  `codex/member-security-closure-20261003` dan `codex/member-security-client-20261003`.
  Source commit lokal clean; belum push/PR atau CI. Knowledge disinkron terpisah.
- Before -> after: kontinuitas login dan penerbitan hadiah diberi pengaman tambahan;
  profil/persetujuan selesai sebelum hadiah baru diterbitkan. Ranking/kuota100 dan
  hak yang telah terbit tidak dihapus/diurut ulang. Permintaan privasi aktif dideduplikasi,
  ekspor menyertakan atribut onboarding milik sendiri, lifecycle auth dirapikan dan API dibatasi.
- Contract pin, schema database, harga, paid reconciliation dan batas authority tetap.
  Member projection; Platform authority; Book authority booking; POS authority pembayaran/cart.
- Bukti: backend82berkas isolated PASS; frontend619 PASS tanpa skip; mobile320/360/375/390/430
  dan Owner320/360/375/390/430/1440, Axe/keyboard/200%text/reduced-motion serta error/offline
  sesuai harness PASS. Tiga native gift gates dijalankan terpisah (15tes,0skip).
  Native PostgreSQL18 membuktikan context isolation/read-role denial, stale writer rejection,
  restart dan encrypted full-dump disposable restore synthetic: revoked/closed/used state tidak pulih menjadi aktif.
- Exact tracked-source scan tidak menemukan pola secret high-confidence; registry dependency audit0advisory.
  Ini bukan full-history/high-entropy scan, bukti setiap grant/RLS production, backup production,
  offsite expiry, provider nyata, physical iPhone atau authenticated production Owner.
- Production tidak dimutasi. `BELUM_DEPLOY`, activation belum dilakukan, BUSINESS_READY tidak diklaim.
  OPEN: pilihan/enrollment/recovery faktor tambahan Owner; first100 akun versus orang unik;
  actual Studio/POS/Book readback; iPhone; downstream erasure/30hari backup inventory+jurnal recovery;
  exact protected recovery writer serta deployment gates.
- Older writer data-readable bukan berarti kebijakan recovery aman. Pemulihan harus memakai kandidat
  exact yang mempertahankan pengaman baru. Tidak ada provider/hardware/public staging baru.

- Refresh provenance 2026-10-04 WIB: frontend memperbarui baseline shared contract exact
  `3279a02b6d06d3532190488f6abbcc59c312d120` (28 operasi, compatibility PASS).
  Exact source-pair digest `31226cb29f30901cdc9915a151eb3349ee8567a181e7f630b478615268645215`.
  Immutable artifact SHA256 `2c3e5fb45e9ba9432106fd60e7c865fda8c8c0541a0e4b9a4d2de3e7fd2454c5`,
  22,531,790 bytes/1,584 files; safe extraction/inventory/production-dependency audit PASS,
  high-confidence secret findings 0. High-entropy review tetap gate terpisah.
  Bukan CI, bukti target runtime atau authenticated UAT. Pemeriksaan HTTPS terbatas dari host executor
  belum memperoleh respons; bukan bukti downtime global. Source tetap belum push/PR/deploy.


## 2026-10-03 — Wave 5 kontrol hadiah Owner dan penutupan celah lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`: sebelum Owner belum mempunyai kontrol campaign hadiah otomatis; sekarang tersedia konfigurasi dengan password, kuota/status agregat, jeda, lanjut dan akhiri penerbitan. Platform tetap authority; Member hanya projection. Pengaturan awal PAUSED, katalog/outlet wajib diizinkan, expiry hak lama tidak diubah. Cohort100 tetap untuk minuman + Couple50%; birthday independen dari cohort.

Backend `cc2d3cf4b8458b9fef93a75a400801821379918e` (`codex/member-gift-campaigns-wave5-20261003`), Member `7babb1937cd1881abaa62b88f04d7124e8609839` (`codex/member-gift-campaigns-wave5-ui-20261003`), POS unchanged `154b29d0e7aa4db6125df0b1ac2572d5b083c104`. Commit source lokal bersih, belum push/PR; CI_NOT_RUN. BELUM DEPLOY; tidak ada mutasi production, provider/hardware/Book/schema/dependency.

Backend77berkas isolated tanpa skip, Member614unit/static, Owner browser320/360/375/390/430/1440+Axe/keyboard/200%text/reducedmotion dan3nativePOSgift PASS. Perbaikan: endpoint guard client tepat, konfigurasi katalog immutable dan scope drift ditolak, restore legacy tidak meninggalkan campaign aktif, snapshot campaign v2 menolak old v1-only writer. Gagal tulis PostgreSQL nyata memberi503 dan hold; restart memulihkan state committed. Snapshot synthetic terenkripsi berhasil dipersist/restore/restart pada PostgreSQL baru. Bukan production database backup restore, actual rollback, authenticated production/iPhone UAT atau BUSINESS_READY.

`NEEDS CONFIRMATION`: masa pakai Couple/birthday serta aturan29Februari; fixture30hari/7hari/FEB28 bukan keputusan baru. Owner sekarang dapat mengisi pilihan eksplisit, tanpa default aktivasi. OPEN: actual katalog lengkap dan outlet, rollback binary kompatibel v2 serta candidate-bound production recovery/artifact/Owner/runtime/lock/UAT/deploy. Old writer ditolak untuk mencegah kehilangan data, bukan dijadikan rollback yang aman. Adopsi campaign legacy dan pengumpulan DOB untuk profil lama belum ditambahkan; Member tanpa DOB belum eligible birthday. Source/minimum controls lokal CLOSED; rilis Wave5 tetap IN_PROGRESS. Sumber: Andreas meminta lanjutWave5 lalu cari kekurangan dan kerjakan; tidak ada konfirmasi policy baru. Knowledge delapan dokumen diperbarui terpisah pada main HEAD setelah provenance source.

## 2026-10-03 — Wave 4 birthday menu, terintegrasi lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`: Wave 4 menyediakan kandidat hadiah ulang tahun satu menu makanan/minuman gratis, independen dari cohort100. Platform menerbitkan dan menghitung benefit; Member menampilkan hadiah/status/expiry; POS menukar satu base unit eligible, add-on/unit lain tetap dibayar, tanpa stacking. Lifecycle existing menangani cart binding, retry/restart, cancel dan paid commit.

Backend `7edd0a1f1552d0c59d88ac00a8aee8592e0281a3` (`codex/member-birthday-wave4-20261003`), Member `3f55bb9672930696a89104d5ad2a08e25e84f452` (`codex/member-birthday-wave4-ui-20261003`), POS `154b29d0e7aa4db6125df0b1ac2572d5b083c104` (`codex/birthday-wave4-pos-20261003`). Source commit lokal bersih, belum push/PR; CI_NOT_RUN. BELUM DEPLOY; production tidak dimutasi.

Before birthday belum terintegrasi → after annual issued claim reusable Voucher, session/consent scoped Member dan authoritative checkout kasir/kiosk. Verified registration, completed profile, current consent dan ACTIVE required; Owner administratif, DOB invalid/future/missing serta akun closing/suspended tidak diterbitkan. Scope/duration annual offer dipin; perubahan DOB tahun sama tidak memberi hadiah kedua. Boundary WIB, Desember→Januari, leap year dan late-expiry diuji. Raw DOB tidak diproyeksikan di hadiah.

Diskon100% satu harga dasar menu eligible tertinggi; tie urutan cart. TotalRp0 boleh selesai tanpa provider/payment baru. POS memverifikasi exact product/line/amount, full cart terikat intent durable; retry respons hilang/restart tidak double redeem. Read pilihan voucher POS sekarang menyimpan issuance sebelum sukses, gagal simpan503 generik. Shared voucher guard menolak known inactive account pada options/reserve, tetapi tidak membatalkan paid settlement hold existing. Native fresh disposable PostgreSQL15migrations/reload/reserve/commit/CAS stale denial PASS; privacy30hari menghapus hadiah akun closed tanpa reissuance dan tidak mengganggu akun lain.

Backend 362 tes/76 isolated files, Member 613 unit/static serta browser320/360/375/390/430/Axe/keyboard/200%text/reducedmotion/unavailable, POS742module/TypeScript dan7/7native integration PASS. Native snapshot/restart/CAS lokal bukan encrypted production backup restore, actual production rollback, authenticated production/iPhone fisik UAT atau BUSINESS_READY. Tidak ada dependency/shared-package/schema/provider/hardware baru.

`NEEDS CONFIRMATION`: masa pakai birthday dan aturan29Februari; fixture168jam/7hari+FEB28 hanya test, rekomendasi7hari belum keputusan Andreas. Validity foto Wave3 juga tetap OPEN. Issuance trusted defaultOFF, actual all-food/drink catalog/outlet completeness wajib. Kandidat menerbitkan sekali per member/tahun, window mulai00WIB ulang tahun, expiry tetap dari birthday; lazy reconcile pada startup/registration/readMember/scopedPOS, bukan scheduler/notification baru dan tidak backfill setelah expired. Profil lama tanpa DOB tidak menerima hadiah; tidak ada forced onboarding/DOB-editor baru. Wave4 implementasi lokal CLOSED; Owner campaign controls, konfirmasi policy, exact compatible reader/writer, candidate-bound recovery/UAT/deploy Wave5 OPEN. Book unchanged. Riwayat source-only Wave1–3 di bawah tidak berarti telah deploy. Satu hadiah per tahun dan window/leap behavior adalah kandidat implementasi, bukan konfirmasi marketing/production tambahan. Durasi beverage30hari (DEC-227) tidak diwariskan diam-diam ke birthday/foto. System gift tidak masuk generic Owner editor/public claim. Readers/POS lama belum menerima atau belum line-bound untuk birthday; activation menunggu pasangan kompatibel. Rollback sesudah issuance tidak boleh membuang issued/held/redeemed metadata. Local-only rollback cukup meninggalkan branch; tidak memutasi checkout lain. Skill sagadevs-deployment digunakan untuk verifikasi lokal dan handoff recovery, bukan production mutation. DEC-226 tidak diganti.

## 2026-10-03 — Wave 3 Self Photo Couple, penukaran kasir lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`: cohort100 yang sama kini mempunyai jalur penerbitan dan penukaran voucher50% satu harga dasar Self Photo Couple; unit tambahan, Group dan add-on tetap dibayar, tidak stacking. Member menampilkan hak/status/validity dari Platform. Kasir/kiosk memakai binding cart authoritative dan lifecycle durable existing; retry respons hilang/restart tidak menggandakan redemption.

Backend `14a6ca2ecb05c21c324d7dade6922c77b4b6d281` (`codex/member-registration-gifts-wave3-20261003`), Member `c798ff2c419002a43f3578db7c29697d84caa391` (`codex/member-registration-gifts-wave3-ui-20261003`), POS `4c87c69da362334b509c559b5cc5f61937aa88da` (`codex/registration-gifts-wave3-pos-20261003`). Source commit lokal bersih, belum push/PR/CI; BELUM DEPLOY, production tidak dimutasi.

Platform menghitung floor(50% satu base unit), POS memverifikasi productId/lineIndex/amount dan mengalokasikan hanya ke line itu. Field machine existing beverageCart juga membawa fakta Couple dari quote server, bukan harga browser. System gifts bukan generic Owner draft/public claimable offer. Paired claim links dan expiry tervalidasi saat restore; purge30hari membakar slot cohort tanpa reissuance. No new activation route/env mapping.

Backend75berkas isolated PASS; Member612unit/static dan browser320/360/375/390/430+Axe/keyboard/200%text/reducedmotion/unavailable PASS; POS53regression+6native serta741module/TypeScript PASS. Ini synthetic lokal, bukan authenticated production/iPhone UAT, encrypted production backup restore, actual rollback atau BUSINESS_READY. Tidak ada dependency/shared-package/schema/provider/hardware baru.

`NEEDS CONFIRMATION`: masa pakai foto; 720jam hanya fixture test, bukan keputusan Andreas. Cutoff00WIB tetap `ASSUMPTION`. Issuance defaultOFF, trusted constructor policy membutuhkan validity dan actual catalog/outlet admission. Online SagaBook discount belum ditambahkan; Book tetap authority booking/jadwal. OPEN: birthdayWave4, dashboardcampaign dan exact paired reader/writer/recovery/UAT/releaseWave5; older readers/writers belum boleh dipakai sesudah issuance.

## 2026-10-03 — Registration gifts Wave 2 beverage

`CONFIRMED`: Andreas menetapkan semua minuman standar eligible, add-on tetap dibayar, dan masa pakai voucher minuman 30 hari sejak diterbitkan, bukan sejak daftar. Tidak otomatis menetapkan validity voucher foto. Sebelum Wave2 hak minuman belum bisa ditukar → setelah Wave2 trusted local admission menerbitkan satu existing Voucher claim per penerima cohort100. Tanggal issuance, claim link, expiry dan status tersimpan di Platform; retry/login/restart tidak memperpanjang validity atau menggandakan hak. Missing/corrupt claim/validity/scope ditolak sebelum restore; akun closing dilewati dan purge tidak membuka quota.

Provenance backend `33567ed0d72f6b82d4965e91bf5e2da42bb70080` pada `codex/member-registration-gifts-wave2-20261003`; Member `84f21a812d8ee2253d587c9428368db7448c58c4` pada `codex/member-registration-gifts-wave2-ui-20261003`; POS `8b2b45062c139e8bf2f3a9f93c26a094d0950d3e` pada `codex/registration-gifts-wave2-pos-20261003`. Semua commit lokal bersih; source push/PR/CI NOT_RUN. LOCAL_VALIDATED/IMPLEMENTED_NOT_DEPLOYED/BELUM DEPLOY, bukan BUSINESS_READY atau authenticated production UAT. Production, Book, provider, hardware, dependency/shared package/schema tidak dimutasi.

Member menerima FREE_BEVERAGE quantity1/addOnsPaid=true melalui projection session/consent existing; kartu tampil di Milik saya, CTA dari Penawaran, serta status reserved/redeemed/expired/paused/unavailable. POS machine membawa fakta harga dasar/product/quantity dari katalog server, bukan harga browser. Platform memilih satu unit eligible dengan harga dasar tertinggi (tie urutan cart); POS mengecek line dan membebankan diskon hanya pada line itu. Makanan, unit tambahan dan modifier tetap dibayar; promo tidak ditumpuk. Existing reservation/commit/release, durable cart binding dan outbox digunakan untuk cashier maupun kiosk staff-assisted cash. TotalRp0 juga dapat selesai tanpa pembayaran/provider baru. Jadwal intent retry menggunakan clock checkout yang sama, bukan clock database lain.

Evidence lokal: backend349tes/74berkas termasuk native claim/cart-binding reload dan CAS; Member611unit/static serta browser320/360/375/390/430, Axe/keyboard/200%text/reduced-motion/unavailable; POS44focused/regression termasuk native concurrent row-lock/retry/restore projection/kiosk/Rp0, static740modules dan TypeScript. Native fixture files dijalankan berurutan karena bootstrap role cluster-wide; PGlite bukan bukti concurrency row-lock. Ini belum encrypted production disposable restore, actual rollback atau iPhone fisik UAT.

Issuance defaultOFF, constructor trusted saja; tidak menambah environment/Owner/public activation route. Allowlist produk/outlet wajib diambil dari katalog produksi lengkap sebelum rilis, tidak menggunakan fixture sebagai bukti menu. System gift tidak masuk generic Owner voucher editor; dashboard campaign/counts Wave5 belum selesai. Readers lama menolak FREE_BEVERAGE dan writers lama dapat membuang metadata allocation; reader/writer pasangan kompatibel wajib sebelum issuance dan rollback. OPEN: 50% satuCouple Wave3, birthday1item Wave4, dashboard/candidate-bound recovery/UAT/deploy Wave5. [DEC-227](../../DECISIONS.md#dec-227--voucher-minuman-standar-dan-masa-pakai).

## 2026-10-03 — Registration gifts Wave 1 foundation

`CONFIRMED`: Andreas meminta promo pendaftaran lalu mengoreksi hadiah foto menjadi diskon 50% Self Photo Couple; minuman gratis juga khusus 100 pendaftar pertama sejak 3 Oktober. Sebelum Wave 1 tidak ada alokasi otomatis untuk cohort ini → setelah Wave 1 Platform memiliki satu alokasi berpasangan per penerima, bukan dua kuota terpisah atau kuota berdasarkan klik klaim. Identity/audit registrasi terverifikasi menjadi authority; OTP request belum dihitung, login Google/OTP untuk akun sama tidak menduplikasi. Owner administratif dan akun sebelum cutoff dikecualikan. Akun eligible yang sudah ada bisa direkonsiliasi saat runtime diotorisasi kelak; tidak ada data Member production yang dibaca atau dimutasi pada pekerjaan ini.

Source backend lokal `ae33c49bf518e44ebfaec0c3cf72830e9bfa478f`, branch `codex/member-registration-gifts-wave1-20261003`, parent `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`. 345/345 tes terisolasi dalam 73 berkas, focused boundary/concurrency, static checks dan diff check PASS. Status LOCAL_VALIDATED/IMPLEMENTED_NOT_DEPLOYED/BELUM DEPLOY; source belum push/PR, CI_NOT_RUN. Shared contracts package, frontend Member/Owner, database schema, POS/Book/provider/runtime production tidak diubah. Ini bukan authenticated production UAT, native PostgreSQL restore, atau BUSINESS_READY.

Tambahan `data.registrationGifts` pada projection `/v1/me/vouchers` existing tetap session/consent scoped dan tanpa identitas penerima lain. Dua hak tetap PENDING_REDEMPTION_INTEGRATION, redeemable=false dan expiresAt=null; tidak membuat coupon claim, diskon seluruh keranjang, Points atau outbound notification. Runtime opt-in trusted saja, default OFF; tidak ada route publik atau environment production activation. Penyimpanan menggunakan snapshot bridge/CAS existing, bukan tabel campaign baru. Restore menolak rank/benefit/orphan/scope rusak sebelum mengganti authority; purge history30hari menghapus alokasi Member tanpa membuka lagi slot quota. Shared durable response helper diperbaiki agar gagal simpan memberi 503 generik, bukan request menggantung/sukses palsu.

`ASSUMPTION`: awal 3 Oktober 2026 ditafsirkan 00.00 Asia/Jakarta (2026-10-02T17:00:00.000Z). Tie timestamp memakai urutan audit persist; late historical insertion sebelum rank teralokasi gagal tertutup untuk rekonsiliasi. `PROPOSAL`: masa pakai30hari belum keputusan aktif; expiresAt=null pada hak pending tidak menjanjikan voucher tanpa batas waktu. Wave 2 mengikat minuman ke katalog/checkout POS; Wave 3 mengikat 50% ke satu paket Couple dan mencegah dua voucher menjadi100%; Wave 4 birthday1item allmenu, bukan hadiah Express gratis; Wave 5 UI/dashboard, E2E, candidate-bound recovery dan deploy sesuai gate. Old writer sebelum dua snapshot Maps dapat membuang field saat save, jadi rollback writer kompatibel wajib sebelum activation.

## 2026-10-03 — Penutupan deploy koreksi login/onboarding

`CONFIRMED`; sumber otorisasi deploy Andreas dan verifikasi runtime. Before V1 memakai login existing-only minimal → after desain login lama berilustrasi, Google utama/email OTP fallback; profil MEMBER_CORE satu langkah memuat nama, telepon/WhatsApp opsional, tanggal lahir opsional serta consent melalui complete-profile existing. Nomor tidak diklaim terverifikasi; akun selesai tidak dipaksa onboarding ulang. Closed registration dan backend FULL tetap kompatibel.

PRODUCTION_DEPLOYED/PRODUCTION_ACTIVATED Member `6f07e1ec6a92f319792ce9fa4de8450a5232f746`, release `20261002T170000Z-d8c060d-r0u`, artifact SHA256 `3f09b98b3b4c71b1942643d8034ad596a622fc85a2b237b62a23639f00c6747c`. ActivatedAt `2026-10-02T16:57:48.733Z`; observed final switch maintenance2.426s, bukan pengukuran outage pelanggan. Backend `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`, contracts `3279a02b6d06d3532190488f6abbcc59c312d120`, schema15, POS5bbb dan konfigurasi provider unchanged. Runner `56d85e7a15ca0967616b24bed0c50253ef32eda6` hanya menambahkan exact candidate admission; legacy rollback pin tetap. Source app/runner commit lokal belum push/PR, CI_NOT_RUN; immutable Git archive dipakai agar Vercel lama tidak terpicu.

610 unit/static Member serta dua local synthetic mobile harness320–430/200%/Axe/keyboard/input rejection/draft recovery/backend restart/session/CSRF/offline PASS, reused exact source dari implementasi. 145 runner/15 Node dan native PostgreSQL18.6 unchanged15→15 writes/restart/backup/disposable restore PASS pada kandidat ini. Fresh production encrypted candidate/active backup + checksum + disposable restore, Owner proof, actual switch→rollback→reswitch, migration compatibility, monitor dan exact public health PASS. Rollback terikat predecessor `20261002T125500Z-d8c060d-r0u` frontend140e7b1/artifacte53067a, bukan symlink historis yang ditebak.

Authenticated public Owner browser/read/session/reload/CSRF/logout/mobile-desktop/Axe PASS tanpa mutasi bisnis. Public Member login lima lebar320/360/375/390/430 PASS, overflow/pageerror nol; app.js/onboarding-v1.js byte-identical dengan source Git committed. Pemeriksaan terhadap checkout Windows awal berbeda hanya CRLF; pembanding final menggunakan bytes Git archive. Google callback/profil pada local harness sintetis, bukan autentikasi Member production. Google pribadi/iPhone Safari/PWA serta representative POS redemption UAT tetap OPEN; BUSINESS_READY belum ditetapkan. Tidak membuka provider/hardware/privacy worker baru atau mengubah konfigurasi POS. Status lokal di bawah tersupersesi untuk delivery kandidat ini, bukan penghapusan histori.

## 2026-10-02 — Koreksi desain login dan profil Member V1, lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; sumber koreksi Andreas. Member `6f07e1ec6a92f319792ce9fa4de8450a5232f746` (`codex/member-login-onboarding-restore-20261002`, commit lokal belum push/PR/CI) memperbaiki V1 yang memaksa renderer existing-only: desain login/onboarding berilustrasi lama dipulihkan untuk registrasi publik, Google tetap utama/email OTP fallback. Profil MEMBER_CORE satu langkah mengirim nama, telepon/WhatsApp opsional, tanggal lahir opsional dan consent lewat complete-profile existing. Data divalidasi/disimpan Platform; tidak mengklaim nomor terverifikasi. Akun selesai tidak dipaksa onboarding ulang; registrasi tertutup dan backend FULL tetap kompatibel. 610 unit/static/check/diff dan dua browser harness lima lebar320–430/200% text/Axe/keyboard/validasi/restart/CSRF/logout/expiry/offline/reset PASS_LOCAL_SYNTHETIC. Google callback/session hanya simulasi; bukan Google nyata/iPhone fisik UAT. Backend/schema/dependency/provider unchanged; production tidak dimutasi. Guarded deploy dan physical iPhone UAT masih berikutnya, bukan BUSINESS_READY.

## 2026-10-02 — Penutupan deploy Member V1

`CONFIRMED`; sumber otorisasi deploy Andreas dan verifikasi runtime exact. Before UI production81fc239 → after Member `140e7b1dbfd4ca5f0e909862779b7a58105e06cc`: tiga tab Beranda/Promo/Akun, kartu/personalisasi per akun di browser, Points/expiry/riwayat serta XP/perjalanan dari Platform, Promo Penawaran/Milik saya dengan review/status/retry. Owner empat area Ringkasan/Member/Promo/Pengaturan, laporan/audit sekunder dan formulir progressive. Quest discovery/creation V1 disembunyikan; hak lama tetap reachable. Summary/session race dan identitas Reward hilang diperbaiki. Personalisasi belum cross-device.

PRODUCTION_DEPLOYED/PRODUCTION_ACTIVATED release `20261002T125500Z-d8c060d-r0u`, artifact SHA256 `e53067a85121a8b4e4920681a9eba98ad39e0ab7318d22d8b3527cef78df8d96`, backend `d8c060d4a4dbca6156b60a9c155c8f97a3581e59` dan contracts `3279a02b6d06d3532190488f6abbcc59c312d120` unchanged. Runner installed code02fa4a1 mengikat exact Owner V1 surface serta POS `5bbbca2d8c558cf4919dbf04aaea50d27ae52a33`; POS tersebut sudah aktif dari rilis lain, mempertahankan fa5 ancestry dan byte-parity service integrasi Member. Tidak mengubah POS/provider/grant/expiry. Backup memakai satu exported PostgreSQL snapshot untuk dump dan pembanding restore, bukan data live yang sudah berubah; native concurrent-write/restore PASS.

Sole-lock/current/Owner efektif, candidate/active encrypted backup+checksum+disposable restore, 15 unchanged migrations, actual switch→rollback→reswitch, monitor dan exact public health PASS. Rollback tetap release `20261002T065100Z-d8c060d-r0u`, frontend81fc239/artifact2e72fb7. Observed maintenance switch4.027s/final3.45s, bukan pengukuran outage pelanggan. Member609 dan local mobile/worker/native artifact evidence berlaku pada app exact yang sama; runner108/forward12/Node14 PASS. Authenticated public Owner login/password-only, cookie/CSRF/denial/session reload, empat area/reports/audit,390/1440px/200% text/reduced-motion/keyboard/stable-screen Axe/logout PASS, tanpa mutasi bisnis. Browser helper menunggu laporan selesai loading, tidak mengurangi assertion. Source commit lokal belum push/PR; CI_NOT_RUN, release dari immutable Git archive.

iPhone Safari/PWA fisik, representative Member/Google/POS redemption UAT tetap OPEN; BUSINESS_READY belum ditetapkan. Residual erasure/history/Book/backup custody dan cross-device personalisasi tidak tertutup oleh rilis UI ini. Tidak mengaktifkan provider baru, penghapusan nyata, hardware, DNS atau Vercel lama. Status lokal di bawah adalah snapshot historis, bukan current production.

## 2026-10-02 — Wave 5 review: consistency fixes dan exact artifact baru

`CONFIRMED / LOCAL_VALIDATED / IN_PROGRESS / BELUM DEPLOY`; sumber permintaan Andreas untuk pemeriksaan ulang dan perbaikan kekurangan. Member `140e7b1dbfd4ca5f0e909862779b7a58105e06cc`, branch `codex/member-v1-wave5-review-20261002`, menggantikan kandidat86b9c7c. Before konsistensi respons antar sesi dan pilihan Reward belum tertutup → after request lama tidak mengganti data akun terbaru, detail Reward hilang tidak beralih ke item lain, refresh katalog memperbarui detail, dan V1 hanya menampilkan saldo tersedia dari Platform tanpa estimasi saldo setelah reservasi client. Tidak menambah framework/dependency atau mengaktifkan provider.

609 unit/contract Member + check PASS; two loopback API journeys dipisah/reset, viewport320/360/375/390/430/200% text, Axe critical/serious/overflow/unexpected console nol. Lifecycle Reward mencakup ambiguous timeout, same-key retry, cancel/commit dan persistence/restart. Owner enam viewport dan production-worker baseline/candidate/rollback/reswitch PASS_LOCAL_SYNTHETIC; bukan Owner production atau Safari/iPhone fisik.

Backend tetap `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`, contracts `3279a02b6d06d3532190488f6abbcc59c312d120`. Immutable artifact SHA256 `e53067a85121a8b4e4920681a9eba98ad39e0ab7318d22d8b3527cef78df8d96`/22,513,876 bytes dibuat ulang; builder900e903 existing,183 text files diperiksa, nol forbidden paths/high-confidence secret findings/dependency vulnerabilities. Runner lokal `5e668cd84a6b69f552dc2b7002545a7510b6261e` mengikat exact pair baru serta menolak provenance frontend tidak lengkap;140Python+14Node PASS, belum installed. Native PostgreSQL18.6 report mengikat clean runner5e668cd + artifact baru dan artifact rollback aktif: active restore, unchanged15→15 writes, candidate restart, candidate restore PASS. Disposable cluster sintetis tidak membuktikan encrypted production recovery custody.

Source/runner belum push/PR; CI_NOT_RUN. Read-only runtime tetap release `20261002T065100Z-d8c060d-r0u`, Member `81fc23904c983c04efe2c40f49f9e723d5a55074`, artifact rollback `2e72fb7fdee7e1e24006d2c9e195e914429932452012ce369d6583da85de084e`. Production activation, fresh current/sole lock/effective Owner/candidate-bound production recovery dan authenticated final/iPhone UAT masih OPEN. Provider, POS, privacy/erasure scope unchanged; tidak memakai AppDeploy atau mengubah Vercel lama. BUSINESS_READY belum ditetapkan.

## 2026-10-02 — Wave 5 kandidat immutable dan recovery lokal

`CONFIRMED / LOCAL_CANDIDATE_PREPARED / IN_PROGRESS / BELUM DEPLOY`; Andreas meminta lanjut Wave5. Member `86b9c7c299e0b8a8d1f015066dfe780dec1a28e3`, branch `codex/member-v1-wave5-20261002`, kandidat kumulatif Wave1–4. Delta terbaru deskripsi manifest V1 dan acceptance actual production worker existing, tanpa perubahan worker/framework/dependency.605/605 Member/check serta dua loopback API journey terpisah dengan fixture reset PASS: viewport320/360/375/390/430/200% text/Axe/session/stale/offline/Reward lifecycle. Owner Wave4 runtime unchanged; relevant evidence direuse.

Before worker update/rollback belum terbukti → after browser actual worker baseline/candidate/rollback/reswitch PASS; cache privat lama dibersihkan, unrelated cache/storage dan cookie sintetis dipertahankan, scoped card preference tidak diwariskan antar akun, API503/offline tidak fallback ke saldo cache. Chromium loopback sintetis, bukan Safari/iPhone atau production UAT.

Artifact `03be636bf3e1d2e36ad04cf3d3e40541cd57cad06f11d6c03fce4fa49d2ea680`,22,513,725bytes, mengikat frontend86b9c7c/backend `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`/contracts `3279a02b6d06d3532190488f6abbcc59c312d120`. Tooling `900e903bd9629b8a726bc806d5a7c8005b71f286` menerima verified backend root; bukan backend runtime commit. Locked Linux dependencies dari checksum-verified artifact aktif, zero forbidden paths/symlinks/high-confidence secret findings dan production dependency vulnerabilities terdeteksi pada paket. Bukan audit security mendalam.

PostgreSQL18.6 candidate-bound disposable rehearsal PASS: inventory/source checksum,15migrasi identik, active dump/restore, writes/restart persistence dan candidate dump/restore. Data sintetis; bukan encrypted production recovery, authenticated binary UAT atau real production rollback. Local runner `e77cc82daee095cc5d4cf3a63aa8d98564389f7b` menerima exact V1 tuple/artifact tanpa menghapus old d8/81 pair; migration binding memakai frontend aktual, mixed tuple/artifact ditolak dan GA/provider scope unchanged.140Python+14Node tests PASS; installed runner tidak diubah.

Source/tooling commit lokal belum push/PR, CI_NOT_RUN. Production read-only tetap release `20261002T065100Z-d8c060d-r0u`, Member `81fc23904c983c04efe2c40f49f9e723d5a55074`, backendd8, artifact `2e72fb7fdee7e1e24006d2c9e195e914429932452012ce369d6583da85de084e`; rollback target bukan V1 aktif. OPEN: installed-runner/fresh expected-current/sole lock/effective Owner, candidate-bound encrypted production recovery/rollback/monitoring, authenticated final Owner/Member dan genuine iPhone Safari/PWA checklist di source docs/v1/WAVE5.md. Wave5 belum COMPLETE; activation/BUSINESS_READY tidak diklaim. Backend/schema/POS runtime/provider/Vercel dan residual erasure/Book/history/backup unchanged. DEC-225 unchanged; knowledge terpisah bukan deployment.

## 2026-10-02 — Wave 4 empat area Owner dan lazy loading lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Andreas meminta lanjut Wave 4. Source `f83d0343bd3c5f08136532799964d6da5b7ce9d9` pada `codex/member-v1-wave4-20261002`, baseline3eb0611. Dashboard eager semua endpoint/enam menu → empat area Ringkasan/Member/Promo/Pengaturan; laporan di Ringkasan dan audit di Pengaturan. Perlu perhatian memakai open/inReview summary server, bukan panjang daftar. Promo membedakan voucher diskon dan Reward tukar Points; native disclosure mempertahankan panel setelah refresh. Reward menampilkan benefit relevan saja, Quest creation baru disembunyikan tetapi legacy rights/controls, koreksi Points dan Inbox announcement tetap reachable.

Auth, CSRF, password step-up, permissions dan authority Platform tetap. Per-area loading503 mempertahankan snapshot berlabel bukan live dan menutup tindakan sampai retry;403 membersihkan endpoint ditolak,401 menghapus sesi/data, late response tidak menimpa area/sesi baru. Read-only Owner tidak memperoleh mutasi. Backend unchanged `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`, previous binary `d6b3c45f1bbb5e197692caedee7fc34cbced1125`; tidak ada migrasi/dependency/provider/POS runtime baru.

605/605 unit/static dan check/diff PASS. Browser320/360/375/390/430/1440, keyboard/focus/reduced motion,200% text/Axe critical-serious nol, lazy reads dan fail/retry states PASS. Core-only auth dan actual local read-only API search/pagination/detail/audit/denial PASS. PostgreSQL native18.6 disposable actual Owner voucher draft/password publish→Member catalog, Reward lifecycle, sole-Owner correction, reports, privacy export, Inbox/announcement opt-in/WIB/ambiguous retry, role/scope/CSRF/password denial, persistence restart serta previous-binary write/reopen PASS. Data sintetis; bukan provider nyata atau UAT iPhone/production. Source revert tanpa migrasi; bukan candidate-bound production backup/restore.

Source commit lokal belum push/PR/CI/BELUM DEPLOY; hanya knowledge dipublikasikan terpisah. Wave 5 exact paired artifact/old-client/service-worker/recovery/rollback/monitoring/authenticated production UAT dan iPhone fisik OPEN. Residual erasure/Book/POS/history/backup tidak ditutup; bukan BUSINESS_READY. DEC-225 tidak berubah; catatan Wave 3 di bawah adalah snapshot sebelumnya.

## 2026-10-02 — Wave 3 Promo dan integrasi POS tervalidasi lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Andreas meminta lanjut Wave 3. Before workspace Reward bercampur discovery/target dan bagian voucher terpisah → Promo V1 dua tab Penawaran/Milik saya. Review voucher menampilkan benefit, kuota, jadwal, batas per member dan masa pakai setelah klaim dari Platform; status claimed/paused/expired/reserved/redeemed dipertahankan. Reward memakai eligibility dan Points tersedia dari server, bukan hitungan saldo setelah penukaran di client. Klaim bukan diskon otomatis; pemakaian tetap melalui POS dengan identitas Member. UI kartu/XP/perjalanan Wave 2 tetap.

Source Member `3eb0611f570daa1ef755e4900939a9eaa6755222`, branch `codex/member-v1-wave3-20261002`; POS acceptance-only `2fab7918062d54227eaa962fffd217430410035d`, branch `codex/member-v1-wave3-pos-acceptance-20261002`. Backend unchanged `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`; POS runtime unchanged `fa5df6cf7f1c19f79e5d1eb4a4c21b44e6787491`. Tidak ada migrasi, dependency atau provider baru; kedua source belum push/PR/deploy. Knowledge dipublikasikan terpisah, bukan deployment source.

Validasi 605/605 Member/static, 34/34 backend focused dan 9/9 lintas POS native PostgreSQL 18.6 PASS. Browser synthetic Member→Platform→cashier/kiosk memeriksa review tanpa konsumsi kuota, stale/retry, lost claim ACK dengan idempotency yang sama, reserve/commit recovery, restart POS, refund, concurrency dan denial. Viewport 320/360/375/390/430, 200% text, keyboard/reduced motion, overflow nol dan Axe critical/serious nol PASS. Database lokal disposable; ini bukan rehearsal backup/restore production baru atau UAT iPhone/Owner production. Source rollback revert slice tanpa migrasi. Wave 4 Owner, Wave 5 exact artifact/recovery/service-worker/iPhone/authenticated UAT dan residual erasure/history/backup lintas produk tetap OPEN.

## 2026-10-02 — Wave 2 inti Member V1 terintegrasi lokal

`CONFIRMED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Wave 2 Member V1 source `378e48569f49a17f8adcc9df1e1db325733faf33` (`codex/member-v1-wave2-20261002`, commit lokal, belum push/PR): tiga tab Beranda/Promo/Akun; onboarding nama+consent; kartu dan personalisasi per akun di browser, Points/expiry/XP/perjalanan dari Platform. 598/598 unit/static PASS; browser synthetic terintegrasi320/360/375/390/430, 200% text, Axe critical/serious nol, card reload/storage failure/account-switch, stale503/offline recovery dan expired-session/return path PASS. Backend complete-profile contract1/1 PASS, fixture restart/reset PASS. Backend/database/POS/Owner/provider/production tidak berubah; bukan Google nyata/iPhone/Owner production UAT atau BUSINESS_READY. Wave 3 Promo/POS, Wave 4 Owner, Wave 5 release/UAT tetap berikutnya. Personalisasi tidak cross-device; hak lama tetap.

Before lima tab/onboarding panjang/global card choice → tiga tab/consent singkat/account-scoped card. Runtime terintegrasi memilih UI V1; public dummy mempertahankan showcase existing kecuali opt-in UI. Tidak membuat provider/formula loyalty baru. Dialog Points tidak menyebut data demo pada akun autentik; tombol tutup tidak terhalang judul. Kode reveal existing tetap sementara dan dibuang pada pergantian konteks. Browser tanpa storage tidak mengaku tersimpan. Source rollback revert slice tanpa migrasi; source tidak dipush agar tidak memicu deployment Vercel lama. Service-worker/old-client dan paired artifact/recovery tetap gate rilis. Residual erasure lintas produk sebelumnya tidak ditutup oleh Wave 2.

## 2026-10-02 — Wave 1 simplifikasi V1, bukan perubahan runtime

`CONFIRMED`: Andreas menyetujui V1 inti, menambahkan personalisasi kartu/XP/perjalanan, lalu meminta Wave 1. Source Member `7a76dda2aded9cd383287526305864b80a89bb59`, baseline frontend `81fc23904c983c04efe2c40f49f9e723d5a55074`; artefak scope, route policy dan wireframe lokal tersedia di source. Semua 21 route lama/six Owner areas dipetakan; klaim, booking dan pesan penting lama tetap memiliki jalur. Member target Beranda/Promo/Akun, Owner target Ringkasan/Member/Promo/Pengaturan; bukan penghapusan domain/backend/data.

Sprint 1.1 scope/rights/route mapping dan Sprint 1.2 struktur layar/alur selesai lokal. Dua spec checks, browser viewport320/360/375/390/430/1280, Axe, keyboard/back, 200% text/reduced motion/console PASS untuk wireframe saja. Tidak ada perubahan backend/database/public UI/production/provider, no deployment atau authenticated UAT baru. Wave 2 mengintegrasikan nav/card/Points/XP; Wave 3 lifecycle promo/POS; Wave 4 Owner; Wave 5 UAT dan guarded release. Platform tetap authority dan Owner-only password publish/kuota/jadwal/masa pakai setelah klaim tetap.

Gap source: pilihan kartu masih browser-local, perlu isolasi akun/disclosure tanpa janji cross-device; dashboard Owner masih eager-load area tersembunyi, perlu per-view loading tanpa menghilangkan kasus/audit. iPhone autentik dan closure erasure/retention residual sebelumnya tidak ditutup oleh desain. [Decision](../../DECISIONS.md#dec-225--scope-member-v1-dan-penyederhanaan-owner).

## 2026-10-02 — Member history admission guard production release

`CONFIRMED`: release `20261002T065100Z-d8c060d-r0u`, backend `d8c060d4a4dbca6156b60a9c155c8f97a3581e59`, frontend81fc239/contracts3279 unchanged; artifact `2e72fb7fdee7e1e24006d2c9e195e914429932452012ce369d6583da85de084e`, bounded runner478e662 pushed. Before d6→after d8: dormant snapshot history purge retains anonymous quota and refuses unproven retained history completion; physical SQL purge remains NOT_IMPLEMENTED.

Full72isolated files, focused5/nativeSQL tests, runner138Python+13Node and exact-artifact PostgreSQL18.6 unchanged15→15/restart/disposable recovery PASS. Fresh checksum-valid scoped target snapshot had no history checkpoints/counters before admitting old d6 rollback. Production encrypted recovery→Owner switch4.293s→actual rollbackd6→fresh recovery→Owner finalswitch2.379s PASS. State-bound rollback `20261002T043500Z-d6b3c45-r0u`; active backup/disposable restore, public API/PWA/monitor/services and Owner login/session/four reads/logout PASS, no business writes. Genuine iPhone UAT NOT_RUN.

Registration remains permanent, existing Google/OTP/POS scope unchanged, privacy feature false/hard production denial retained. No real purge, keys/providers/payment/storage/timers activated. Full Book/SQL attribution and physical purge, all-product admission, independent latest journal/key custody/all-copy expiry OPEN; no global BUSINESS_READY. Separate Platform backend unchanged. Older entries below are historical.

## 2026-10-02 — Member backend deployed dengan rollback terverifikasi

`CONFIRMED`: release `20261002T043500Z-d6b3c45-r0u`, backend `d6b3c45f1bbb5e197692caedee7fc34cbced1125`, frontend `81fc23904c983c04efe2c40f49f9e723d5a55074` unchanged, contracts `3279a02b6d06d3532190488f6abbcc59c312d120`, artifact `4757bb795c9732391950e14707f8d6edd2f2fd5d89d6bdb7b6989b915c1e3a67`. Source/runner pushed; runner98827e7 exact bounded pins. Before897366e→afterd6b3c45. Backend full71 isolated file processes, static38, runner102 adversarial plus12 migration/profile tests and exact-artifact native PostgreSQL18.6 15→15 recovery PASS. Fresh production encrypted backup/disposable restore and active backup PASS; no migration additions. Actual switch4.08s→rollback exact897366e/unchangedfrontend with fresh Owner proof→finalswitch3.133s PASS. Monitor/public health/services/timers PASS; public authenticated Owner login, secure cookie, session, four read surfaces and logout PASS, no business writes. Genuine iPhone UAT NOT_RUN.

Previously authorized onboarding/profile, reward fulfilment, Book mappings and private export backend changes are included; unchanged UI/provider configuration is preserved. Production registration remains permanent; no expiry/key/worker/provider activation. POSb945ab5 scoped connection is deployed, but Member production erasure guard remains hard-deny. Full all-product admission/fence, independent fresh recovery journal/custody, rotated-code reconciliation, Book/history/backup expiry are not complete; no global COMPLETED or BUSINESS_READY claim. This does not change separate Platform backend authority. Earlier NOT_DEPLOYED entries are historical snapshots.

## 2026-10-02 — Stored-case coordinator Member ke POS, source-only

`CONFIRMED`; Member `d6b3c45f1bbb5e197692caedee7fc34cbced1125` dan POS `b945ab5653b47435cc353bc7927e6ce2f9bf984a`. Job berasal dari kasus/identity tersimpan; intent kode disimpan sebelum erasure. Admission semua produk stricttrue dan persisted freeze wajib, custody scope terikat; active checkpoint menetapkan waktu asli, receipt diperiksa lewat readback readonly. Lost POS ACK diikuti native SQL restart+retry PASS; globalDeletionComplete=false. Focused Member13PASS/persistence3PASS, POS8PASS/2SKIP, paired native PostgreSQL18.6 PASS; bukan full-suite atau production UAT.

Tidak ada deploy/HTTP/worker/timer baru, global erasure atau backend Platform terpisah berubah. Rotated-code history memerlukan rekonsiliasi dan satu case hanya satu POS scope. Production activation memerlukan durable all-scope lanes, dedicated custody dan journal terbaru independen untuk startup/restore/rollback; full Book/history/all-copy backup expiry masih OPEN. [POS](../sagaops/DOSSIER.md).

## 2026-09-30 — E2E-1 scope Reward mesin

`CONFIRMED`. Before scope outlet machine hanya ditegakkan untuk commerce write; after Platform `c797545f7cc8e6f89c0e4a487747970e577af21f` menerapkan scope pada quote, reserve, commit, release, compensate, dan fail-closed untuk kredensial Reward tidak berscope dalam mode produksi. Regresi lintas outlet dan full suite 56 berkas PASS; POS disposable outbox/cross-product 6/6 PASS. Tidak ada perubahan schema, provider, Member client atau runtime produksi. Machine summary read, credential rollout, native PostgreSQL/restore dan UAT autentik masih gate E2E-1.

## 2026-09-30 — E2E-0/1 gate lokal terbaru

`CONFIRMED`. Source Platform `497f413c2932063fe9880c11f145becf862c5869` menutup mismatch receipt refund POS: organisasi/outlet diambil dari alokasi earn asli, bukan input client. Test merah→hijau, suite backend 55 berkas, static/migration/proxy check dan seam POS connector→Platform→Member 14 pemeriksaan PASS; browser lokal login/summary/activity/stale/restart dan 320/360/375/390/430 px PASS tanpa Axe critical/serious atau error tak terduga. Member harness `ac3aca353ad501a1f7b257cfc3de85a713ffe835` memakai receipt API untuk refund dan menguji zero-allocation. POS `7207429d4a092ce16e9a9acd139fd99065eabe80` menguji checkout/outbox/refund dengan disposable PostgreSQL dan HTTP Platform nyata, 6/6 PASS termasuk lost ACK, restart, dan QRIS pending. Seam Member sendiri tetap mensimulasikan checkout; kedua bukti tidak setara native PostgreSQL atau iPhone/authenticated production UAT. E2E-0 baseline COMPLETE, E2E-1 IN_PROGRESS; production/provider/admission tidak berubah.

## 2026-09-29 — E2E-0/1: integration checkpoint lokal, belum deploy

`CONFIRMED / IMPLEMENTED_NOT_DEPLOYED / IN_PROGRESS`. Andreas meminta E2E-0/1 dan mengizinkan koordinasi dengan SAGAPOS Implementation Lead. Backend lokal `2202beefab8448361efbb423c1d671ca83c262be` pada `codex/member-e2e01-access`; Member harness `1f9f73047f7c8cbc26343ae8cc487b66ba58c988` pada `codex/member-e2e01-acceptance`. Keduanya belum dipush. Candidate POS yang digunakan sebagai baseline: `e894e01f2712ed5d9de8abb959e77375ac0c03d3`; contracts/dependency/migration tetap.

Before integrasi belum memiliki bukti replay/refund lintas projection yang lengkap -> after kontrol akses operator eksplisit, commerce scope/provenance terikat kredensial, referensi alokasi authoritative untuk refund POS, dan koreksi refund Rupiah kumulatif digunakan ulang. Platform tetap authority Points/XP; Member hanya projection. Focused final backend 43/43 dan Member unit 583/583 PASS. Synthetic seam sebelumnya lulus earn/pending/retry/refund, Member/Owner projection, pagination, offline dan restart; checkout di harness adalah simulator, bukan repository/outbox POS nyata. Perubahan source akhir belum memiliki full-suite/native/restore/browser acceptance.

Full suite terhenti pada disposable encrypted restore karena kapasitas disk lokal tidak memadai; browser harness terhenti pada restart health. E2E-0/1 belum COMPLETE. OPEN: kapasitas restore, POS atomic earn/refund outbox dan dispatch, final native PostgreSQL acceptance, scoped machine read/reward boundaries, personal operator workspace, mobile/iPhone authenticated UAT dan exact-pair release gates. Kompensasi generic Quest mempunyai dependency tersendiri dan tidak disisipkan ke slice ini.

Production **tidak berubah**: backend `a1309455b4f3ca4cf0a4f34bbec1ac1422705ae9`, frontend `a4870bb3dc428168083f4650f41ed5a466ba19cc`, release `20260929T150800Z-a130945-r0u`. Tidak ada deployment/admission/provider/payment baru; `BUSINESS_READY=false`. Next: sediakan kapasitas disposable, sambungkan POS ke kontrak receipt/refund, kemudian verifikasi kandidat akhir. Ini bukan audit security mendalam atau klaim aman produksi.


## 2026-09-29 — Wave1 reward kasir: checkpoint source, belum deploy

`CONFIRMED / IMPLEMENTED_NOT_DEPLOYED / UI_ACCEPTANCE_OPEN`. Permintaan Andreas: kerjakan Wave1 benefit Member dan lifecycle kasir. Source POS `e894e01f2712ed5d9de8abb959e77375ac0c03d3` pada `codex/cashier-member-reward-wave1-20260929`; Member `055f479c396039c8aaca1b3de98185f0d45955b1` pada `codex/member-pos-reward-wave1-20260929`; keduanya sudah dipush.

Before kontrak benefit tidak lengkap/local fixture -> after benefit IDR scoped dengan product/quantity atau fixed/percentage-cap, exclusive stacking, version/fingerprint; reserve terikat checkout, commit/release dari fakta pembayaran tersimpan, replay/restart tanpa double-spend. Member17/17 dan POS25/25 focused PASS nol skip; POS static689/schema35/TypeScript PASS. Regresi browser promo3/3 PASS, tetapi browser reward FAILED karena fixture navigasi membuka kontrol tambahan yang bukan Member & reward. Batas dua correction round dihormati; ledger sprint diterima1/2. Ini bukan full-suite/native-production/Owner UAT PASS.

Production **tidak berubah**; health SagaPOS22:36WIB ready=true pada `64dc78e347204ba7823fef8283f0ee881f3e4ff5`/schema35. Reward default OFF, Member business admission tidak diubah, tidak ada reward/points/campaign/payment activation baru. `BUSINESS_READY=false`. Next: perbaiki navigasi tes melalui kontrol Member & reward yang sudah ada, tutup desktop1440/mobile390+Axe, lalu exact-pair native/release acceptance dan approved reward mapping/admission. Hold pembayaran ambigu tidak dilepas oleh timer; orphan-before-persistence reconciliation dan refund provider/ESB (Wave2) tetap OPEN. Local refund tidak mengklaim reverse reward provider.


## 2026-09-29 — Onboarding Wave 2/3 dan OTP paste aktif (DEC-222)

`CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; release
`20260929T150800Z-a130945-r0u` aktif pada `https://app.sagamember.site`
pukul 22:09 WIB. Backend `a1309455b4f3ca4cf0a4f34bbec1ac1422705ae9`,
Member `a4870bb3dc428168083f4650f41ed5a466ba19cc`, contracts
`755ed1dccaf07c3576b6680faf2404f4724669bf`; artifact SHA-256
`b7d39bf0ef7ad742c2bf19b54b43ab733e03db59e922dd90e2425eed11ed4c8f`.

Before login langsung menutup onboarding dan paste belum terdeploy -> after
welcome, Google utama/OTP fallback, profil + consent, minat opsional, kartu
masked authoritative dan completion/resume server-owned. Akun selesai tidak
dipaksa mengulang; kegagalan offline/retry tidak mengganti data dengan fixture.
Tombol Tempel kode, paste native enam digit dengan spasi/tanda hubung dan
autofill tersedia; tidak auto-submit, menyimpan atau mencatat clipboard.
Mobile reflow memperbaiki padding, input, tombol, judul dan kartu pada teks 200%.

583 unit, check, synthetic API/proxy serta 60 kombinasi core/320-430 px/100-200%
dan 12 state legacy/9 viewport PASS; Axe tanpa pelanggaran. Native PostgreSQL
18.6 menguji unchanged 15->15, old/new writes, restart dan restore PASS.
Runner 100 tes Windows/Linux serta 11 tes screening PASS. Encrypted production
backup/disposable restore, actual Owner credential proof, switch->rollback->
switch, database preserved dan customer/member/public monitor PASS.
Backup terenkripsi sebelum/sesudah cutover disalin ke host terpisah dan checksum
cocok; dekripsi/restore di host offsite tidak diklaim. Production asset bytes
dan anonymous mobile smoke diverifikasi terpisah dari authenticated UAT.

Google/OTP PUBLIC_MEMBERS dan registrasi permanen existing dipertahankan.
Reward, Quest, POS/Book, payment, Push, broadcast, NFC/printer/hardware tetap OFF;
businessFeaturesAdmitted false. Tidak ada migration, dependency baru atau akun
synthetic/OTP nyata dikirim untuk verifikasi produksi. App source push/PR/hosted
CI NOT_RUN demi menjaga Vercel lama; knowledge push terpisah, bukan deployment.
Personal Google/iPhone authenticated UAT OPEN dan BUSINESS_READY=false.
Keyboard-height browser adalah simulasi, bukan uji keyboard fisik iPhone.
Audit security mendalam NOT_REQUESTED. Checkpoint DEC-222 di bawah adalah
histori yang digantikan outcome ini; tidak menghapus evidence gagal sebelumnya.
Sumber: otorisasi Andreas, exact Git source, immutable artifact, tes dan runtime.
Next: Andreas/Mahesa menguji login Google, resume onboarding dan paste OTP di iPhone.

## 2026-09-29 — OTP paste lokal; Wave 2/3 belum dirilis (DEC-222)

`CONFIRMED`; Andreas meminta Wave 2–3 lalu deploy, serta paste OTP.
Tombol **Tempel kode**, paste native (termasuk spasi/tanda hubung), dan autofill
tersedia pada source Member `0f1aaa1b5c78a13ba8b03ccc64f5244fda66e958`, branch
`codex/member-onboarding-wave2`. Clipboard hanya dibaca saat ditekan; kode
invalid/izin ditolak memberi panduan, tidak mengirim OTP otomatis atau menyimpan
clipboard. Browser synthetic API/proxy positif/negatif PASS; bukan UAT produksi.
Backend Wave 1 tetap `a1309455b4f3ca4cf0a4f34bbec1ac1422705ae9`; contracts,
database, dependency dan provider tidak berubah. App push/PR/CI NOT_RUN.

Layout Wave 2 masih working-tree checkpoint, bukan candidate hijau: tes 200%
text/320 px menemukan overflow judul profil 22 px setelah dua correction rounds.
Diagnosis DOM-only wrapping menghilangkan overflow, tetapi source belum diterapkan
dan matriks belum PASS. `sagadevs-deployment` menghentikan promotion; tidak ada
packaging, backup/restore atau deploy baru. Static check dan 583 unit working-tree
PASS tidak menggantikan gate visual. Next: tutup wrapping judul, selesaikan matriks
mobile, lalu freeze pair/recovery/guarded release tanpa meminta ulang izin deploy.

Monitor live customer/member/public PASS; production tetap
`20260929T135500Z-bef4223-r0u`, backend `bef42238eebe1e19fec3e542f3e685a14ac7917d`,
Member `712d03546ea85de842827fba5ac2c706db35af98`. Google dan OTP PUBLIC_MEMBERS
serta registrasi permanen existing tetap aktif; paste baru BELUM DEPLOY.
Authenticated Google/iPhone UAT OPEN, businessFeaturesAdmitted false dan
BUSINESS_READY=false. Audit security mendalam NOT_REQUESTED. Dokumen terdampak:
Product, Dossier, changelog produk/portfolio/root, Master, Decisions, Gaps, Sync.
Sumber: permintaan Andreas, exact source commit, tes lokal dan monitor runtime.

## 2026-09-29 — Wave 1 onboarding lokal (DEC-221)

`CONFIRMED`; Andreas menyetujui Wave 1 onboarding, source/test lokal saja.
Before public login melewati welcome dan menutup onboarding setelah consent ->
after welcome, Google utama/email fallback, profil + consent, minat opsional,
kartu masked dengan Points/XP/tier dari Platform, lalu Home. Akun selesai tidak
mengulang/menimpa profil; akun belum selesai melanjutkan checkpoint Platform
setelah reload/re-login. WhatsApp dan tanggal lahir opsional; push/benefit OFF
bukan langkah wajib dan tidak dijanjikan aktif.

Backend `a1309455b4f3ca4cf0a4f34bbec1ac1422705ae9`; Member
`0b15fa2187373f4c86f321f0ce17a931fe9b5dfa`; branch source
`codex/member-onboarding-wave1`. Contracts, dependency/lockfile dan migrations
unchanged. Backend static check + 52 isolated test files PASS; focused API,
identity dan database restart 13/13; Member static check + 583/583 PASS.
Local API/proxy/browser PASS untuk resume, konflik versi, offline/retry,
sesi kedaluwarsa, akun selesai, 320-430 px, keyboard, Axe dan OTP simulator.
Google primary UI diuji; authenticated Google/iPhone production UAT tidak dijalankan.

Status `LOCAL_VALIDATED / BELUM DEPLOY / CI_NOT_RUN / BUSINESS_READY=false`.
Source committed lokal; push/PR source NOT_RUN karena trigger deployment remote
belum diverifikasi. Tidak ada deployment/activation baru, perubahan Vercel,
atau aktivasi reward/POS/Book/Push/payment/broadcast/hardware. Rilis production
terakhir yang tercatat tetap `20260929T135500Z-bef4223-r0u`; bukan verifikasi
runtime baru pada Wave 1. Next: Wave 2 ukuran/gap mobile, lalu Wave 3 release
preflight dan authenticated iPhone/Google UAT sesuai otorisasi.

## 2026-09-29 — Google login utama production (DEC-220)

`CONFIRMED`; Andreas meminta Google sebagai prioritas dan aktivasi production.
Before Google OFF -> after tombol Google utama untuk signup/login permanen di
https://app.sagamember.site/member; email OTP tetap fallback. Penautan email
hanya untuk Gmail/Google Workspace yang authoritative; email pihak ketiga yang
belum terikat perlu OTP. Consent tetap wajib; tidak ada grant Owner/reviewer.

Release `20260929T135500Z-bef4223-r0u`: backend
`bef42238eebe1e19fec3e542f3e685a14ac7917d`, Member
`712d03546ea85de842827fba5ac2c706db35af98`, contracts
`755ed1dccaf07c3576b6680faf2404f4724669bf`, artifact
`2db8b5987e416303bc5eb86cfe76f47784548a00455abe536ae07690490c548d`.
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / CI_NOT_RUN / BUSINESS_READY=false`.
Source lokal committed; push/PR NOT_RUN, Vercel lama tidak diubah.

Backend52 isolated files dan final focused10, frontend582, local integrated
browser320-430/keyboard/200% text/Axe/OTP fallback, runner100 Windows+Linux,
native PG18.6 unchanged15, encrypted backup/disposable restore, off-host encrypted
copy/checksum, actual Owner proof, rollback/data retained/reactivation dan monitor
PASS. UI Google utama dan redirect ke account chooser resmi terverifikasi;
authenticated Google callback/consent dan iPhone UAT masih OPEN. Pendaftaran
Member sebelumnya dikonfirmasi pemilik, bukan bukti Google callback.

Google dan email OTP `PUBLIC_MEMBERS` ON; business admission tetap false,
Reward/Quest/POS/Book/payment/Push/broadcast/hardware tetap OFF. Tidak memperpanjang
pilot atau expiry sesi; milestone ini hanya login. DEC-220 mengganti batas Google
OFF DEC-219 saja; checkpoint di bawah adalah histori, bukan runtime terbaru.
Dokumen terdampak: Product/Dossier/Changelog Saga Platform, Portfolio, Master,
Decisions, Gaps, Sync Status dan root Changelog; sumber instruksi Andreas dan
exact runtime release. Next: operator login Google dengan email membership yang
sama dan verifikasi kembali ke akun; tidak menerima consent otomatis.

## 2026-09-29 — Pendaftaran Member permanen production (DEC-219)

`CONFIRMED`; DEC-219 mengganti batas signup/OTP internal pada DEC-217:
pendaftaran permanen aktif di https://app.sagamember.site/member setelah email
terverifikasi dan consent. Tidak memberi akses Owner/reviewer atau memulai
pilot bisnis DEC-218.

Exact release `20260929T125600Z-612f23f-r0u`; backend
`612f23fddd446347ae9d1259f898c4f050291fae`, Member
`0a8d693aef5e30ca04a7b5d96b40afe4ef2fb0ed`. Local contracts/auth/browser,
native PG18.6 unchanged15, encrypted backup/disposable restore, off-host copy
checksum, rollback/data retained/reactivation dan monitor PASS. OTP nyata pada
jalur aplikasi mendapat202, accepted by provider; inbox/code verification,
new real Member and physical iPhone UAT OPEN. `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED / CI_NOT_RUN / BUSINESS_READY=false`; source push/PR NOT_RUN.
Business window CLOSED; reward/quest/POS/Book/Google/Push/broadcast/payment/hardware
OFF. Detail [PRODUCT](PRODUCT.md). Checkpoint lama berikut adalah histori.

## 2026-09-29 — Pilot Kopi Saga: scope diterima, admission belum selesai

`CONFIRMED`; Andreas menetapkan satu outlet Kopi Saga, tujuh hari, reviewer
operasional independen dan UAT iPhone oleh pemilik (DEC-218). Awal/akhir UTC
dihitung dari aktivasi exact candidate, expiry fail-closed; tidak memperpanjang
pilot lama. Reviewer memakai identitas pribadi, tidak berbagi akun Owner atau
menyetujui draft buatannya sendiri. Nominasi bukan provisioning atau bukti UAT.
Cohort existing belum dipilih; perluasan email OTP tidak disimpulkan dari pilot.
Gate teknis dan recovery tetap berlaku. Core aktif, fitur bisnis belum aktif,
kandidat backend44493fe/Member40bfb59 BELUM_DEPLOY; BUSINESS_READY=false.

## 2026-09-29 — Owner governance dan admission atomik: kandidat lokal, belum deploy

`CONFIRMED`; tindak lanjut permintaan Andreas menuntaskan empat area.
Before Owner hanya draft tanpa submit/review/publish -> after UI dan API cookie
menjalankan draft, submit, reviewer independen, publish; scope organisasi/CSRF
dan larangan self-approval tetap berlaku. Definisi Reward/Quest, status program
dan audit tersimpan satu transaksi repository PostgreSQL; live authority baru
berubah sesudah COMMIT. Kegagalan audit rollback, retry tidak duplikat,
reviewer revoked tetap ditolak setelah restart. Migration0016 additive.

Backend `44493febf0f88ab571b3def3f127f4ea909dfaaf`
(`codex/member-strategy-completion`), Member
`40bfb59230813000ba8171b2f7afce67b1dfb5a2`
(`codex/member-wave3-projection-v2`), contracts `755ed1d` unchanged.
Backend54file/check37/migration16 dan delta18/18 PASS; frontend583/583/check PASS.
Local actual API/proxy/browser Owner governance dan existing Member simulator,
320–430px/Axe/200%/reduced motion/offline-recovery PASS. Embedded PostgreSQL
transaction/restart bukan native target PostgreSQL atau human authenticated UAT.

Immutable pair SHA256
`819eb2ff1151d8585a59b341d375ce9f093341dbdbfcdde9b30bc159fca009af`
(22,467,792 bytes) inventory/extraction/dependency0/entropy0/session28/SW PASS.
Source migration compatibility15→16 PASS; target migration belum diterapkan.
Candidate `BELUM_DEPLOY`; source push/PR/CI NOT_RUN; production tetap
`20260929T093800Z-e428b20-r0u`, business pilot window closed.

Empat area tetap IN_PROGRESS: native target admission/recovery dan legacy cutover,
POS/Book live consumer + scoped reconciliation, physical iPhone/existing-member
UAT, final guarded cutover. Checkout POS sedang berubah oleh pekerjaan lain;
tidak dioverwrite atau diklaim belum punya consumer dari checkout lama.
Browser Wave3 historis belum PASS dan correction budget tidak direset.
Pilot baru memerlukan scope/cohort/operator/waktu; izin deploy existing tidak
dipakai memperpanjang window expired. Providers/payment/hardware/public
registration tidak diaktifkan; BUSINESS_READY=false. Knowledge push terpisah
bukan deployment aplikasi; tidak ada keputusan founder/pricing baru.


## 2026-09-29 — Strategi Member: refund Quest lokal, deployment belum dilakukan

`CONFIRMED`; Andreas meminta implementasi strategi dan deploy. Source lokal
`3901ab495cce6b4ff62a57b4829339585e6d2270` (`codex/member-strategy-completion`)
menutup gap refund commerce ke generic Quest: allocation-bound compensation,
compound retry/restore dan atomic rollback; Points yang sudah digunakan masuk
compensation review tanpa saldo negatif. Legacy progress tanpa allocation
provenance memerlukan rekonsiliasi. Client tetap projection server-owned.

Focused19/19, full backend54file/static37/migration15-source/proxy/preflight-source
dan HTTP embedded PostgreSQL persist/reopen PASS. Bukan native production
PostgreSQL/browser/iPhone atau authenticated UAT. Tidak ada perubahan SQL,
dependency, contracts, client atau provider activation. Source committed lokal;
app push/PR/CI/deploy NOT_RUN. Candidate BELUM DEPLOY; production core unchanged
`20260929T093800Z-e428b20-r0u`, strategi Wave1–5 IN_PROGRESS/BUSINESS_READY=false.

OPEN: Owner publish program PostgreSQL, actual POS/Book consumer, gate browser
dua correction rounds yang belum PASS, genuine Member/native iPhone UAT,
exact artifact/native target recovery/offsite/rollback dan scope pilot.
Google/Push/public registration/payment/hardware tidak diaktifkan implisit.
Delapan dokumen knowledge diperbarui; knowledge commit/push terpisah bukan
deploy aplikasi, dan tidak mengubah keputusan founder lama.


## 2026-09-29 — Wave 5 v2: batas recovery candidate

`CONFIRMED`; source `e945fe36a3210109a5f200ca840850bfd930201a`, branch
`codex/member-wave5-restore-isolation-v2`. Restore legacy memakai backup dan
default kosong, bukan state tujuan; penggantian tetap atomik. Focused4/4 dan
full backend53file PASS; encrypted embedded PostgreSQL/PGlite restore/restart
mempertahankan sesi, Points/XP, reservasi, Inbox, handoff dan replay Book.
Contracts29/29 PASS; 15 SQL migration bytes unchanged terhadap active source.
Ini bukan native production PostgreSQL, offsite/artifact/old-runtime rollback
atau authenticated production UAT. Tidak ada schema/dependency/API/client edit.
Member `bcf0a66d5c4c3db1a0835e686c9b13e6722cffc8`, contracts
`755ed1dccaf07c3576b6680faf2404f4724669bf` unchanged. Candidate BELUM DEPLOY,
source push/PR/CI NOT_RUN, Wave5 IN_PROGRESS; production core release unchanged
`20260929T093800Z-e428b20-r0u`. Full acceptance Wave2/3/4 dan pilot tetap OPEN,
business providers tidak diaktifkan; BUSINESS_READY=false.

## 2026-09-29 — Wave 4 v2: booking delivery recovery lokal

`CONFIRMED`; sumber: Andreas meminta lanjut Wave4, exact source, tests lokal
dan monitor production 29 September 2026. Before delivery tanpa mapping sudah
dianggap processed dan replay tidak membedakan perubahan isi -> after event
tetap recoverable setelah verified mapping, retry identik deduplicated,
changed-payload conflict ditolak dan event lama tidak mengganti status terbaru.
Fingerprint normalized source facts tersimpan pada snapshot existing. Legacy
snapshot tetap load; retry processed legacy tanpa bukti payload fail closed
dan memerlukan rekonsiliasi sumber, bukan menghapus receipt.

Backend `694330028b73e22c2356f838a9cc8e35d9122329`
(`codex/member-wave4-book-events-v2`), delta4files dari Wave3 `733fea0`.
Member unchanged `bcf0a66d5c4c3db1a0835e686c9b13e6722cffc8`;
contracts unchanged `755ed1dccaf07c3576b6680faf2404f4724669bf`.
Tidak ada dependency, SQL migration, provider atau UI runtime baru.
Backend53file/static, focused17/17, actual localhost authenticated delivery,
concurrent duplicate, Member bookings/summary dan embedded PostgreSQL
close/reopen PASS. API adapter/render Member membaca status authoritative dari
actual API PASS; focused Member20/20. Bukan browser UAT atau consumer SagaBook nyata.
Secret scan delta tanpa high-confidence finding; diff check PASS.

`LOCAL_VALIDATED / COMMITTED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN /
IN_PROGRESS / BUSINESS_READY=false`; source push/PR NOT_RUN. Production unchanged
`20260929T093800Z-e428b20-r0u`, customer/member/public monitor PASS.
SagaBook tetap authority booking; receiver tidak membuat booking/payment/Points.
Connector nyata, Google/Push, registrasi publik dan business providers tetap OFF;
OTP hanya izin internal allowlist Wave1 sebelumnya.
OPEN: actual SagaBook consumer/scoped machine admission, browser handoff-return,
legacy replay reconciliation, native production recovery; Wave4 Inbox/Push dan
operator-role/privacy/support acceptance belum ditutup. Sisa Wave2/Wave3 tidak
retroaktif disebut selesai. Next lanjut consumer/return-path dan scope mapping
W4-P1 sebelum activation; knowledge sync terpisah, bukan deploy aplikasi.



## 2026-09-29 — Wave 3 v2: governed Reward/Quest admission lokal

`CONFIRMED`; sumber: permintaan Andreas untuk lanjut Wave3, source commit,
tests lokal, dan monitor runtime pada 29 September 2026. Before publish hanya
metadata -> after draft berisi definition tervalidasi, maker-submit-review
independen-Owner publish memasukkan Reward/Quest aktual ke authority Platform.
Katalog Member mengikuti organization/context, periode, stock/budget dan outcome
server; retry publish/reserve/claim tidak menggandakan efek. Close/reopen database
lokal mempertahankan definition, hold, grant, claim dan rekonsiliasi.
Member menerima EXPIRED/BUDGET_BLOCKED/COMPENSATED, tidak menentukan completion
dari penghitung demo atau cached claim, serta membaca ulang saldo setelah reserve.

Backend `733fea02f8405ed9caf3c584f2de7e5055cd63b5`
(`codex/member-wave3-publishing-v2`); Member
`bcf0a66d5c4c3db1a0835e686c9b13e6722cffc8`
(`codex/member-wave3-projection-v2`). Shared contracts tetap
`755ed1dccaf07c3576b6680faf2404f4724669bf`; tidak ada migration/dependency baru.
Backend53file/static, Member582/582/static, localhost authenticated API sintetis,
scope denial, concurrent retry, embedded PostgreSQL close/reopen dan
reconciliation PASS. Secret scan delta tanpa temuan high-confidence dan audit
production dependency0. Bukan native production PostgreSQL atau real-user UAT.

`LOCAL_VALIDATED / COMMITTED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN /
IN_PROGRESS / BUSINESS_READY=false`; source push/PR NOT_RUN.
Production tidak berubah: `20260929T093800Z-e428b20-r0u`,
monitor customer/member/public PASS. Reward/Quest dan registrasi publik tetap OFF;
OTP internal allowlist mengikuti izin Wave1, tidak diperluas.
Wave3 belum selesai: UI governed create/edit/preview/pause/archive, admission
atomik normalized PostgreSQL, lifecycle refund generic Quest dan browser/UAT
candidate baru masih OPEN. Repository normalized menolak definition admission
secara eksplisit, bukan diam-diam mempublikasikan metadata saja.
Gate browser historis Wave3 FAILED dan dua correction rounds telah dipakai;
tidak dijalankan ulang atau disebut PASS pada milestone ini. Wave2 residual
policy/event mapping tetap OPEN. Next: tutup jalur normalized PostgreSQL dan
Owner UI sebelum readiness/deploy. Histori di bawah bukan status candidate baru.



## 2026-09-29 — Wave 2 v2: milestone rekonsiliasi refund lokal

`CONFIRMED`; Andreas meminta lanjut Wave2 pada roadmap v2 loyalty/transaksi,
bukan mengulang Wave2 self-service lama. Before partial refund belum konsisten
pada pembulatan kumulatif -> after Platform menyimpan bukti nilai eligible asli
dan menghitung koreksi Points/XP dari sisa transaksi; refund tanpa perubahan
Points tetap tercatat, retry/restart tidak menggandakan koreksi, bukti lama yang
ambigu tidak ditebak. Client tetap proyeksi; tidak ada schema/dependency baru.

Backend `8cc072480ed9392eccc3e042e975b7efa3466eea`
(`codex/member-wave2-loyalty-v2`); Member acceptance helper
`0d089dbd7d2bf66cfb36d951a6ab84ed41a803a2`
(`codex/member-wave2-loyalty-browser`), tanpa perubahan aset UI runtime.
Shared contracts tetap `755ed1dccaf07c3576b6680faf2404f4724669bf`.
Backend51file/static, frontend580/580/static, focused provider/Owner8/8,
embedded PostgreSQL close/reopen/concurrent retry serta scoped API denial PASS.
Browser actual localhost API/proxy dengan identitas sintetis membuktikan
Owner/Member sama49Points/49XP, dua koreksi, cursor20+7, offline recovery,
320–430px/Owner1440,200%text/reduced motion/focus/Axe/console PASS.
Bukan native production PostgreSQL, SagaPOS nyata atau iPhone fisik.

`LOCAL_VALIDATED / COMMITTED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN /
IN_PROGRESS / BUSINESS_READY=false`; source push/PR NOT_RUN. Production
tidak berubah dari Wave1 `20260929T093800Z-e428b20-r0u` (monitor segar PASS).
OTP nyata hanya internal allowlist sesuai izin sebelumnya; capture Member
berakhir timeout tanpa sesi tersimpan, genuine delivery/login acceptance OPEN.
Registrasi publik, broadcast, reward/quest/POS/Book/Google/Push/payment/hardware
tetap OFF. Sisa Wave2: Owner policy preview/draft/version/publish, scoped paid
event mapping/replay/drift/out-of-order dan lifecycle refund lanjutan; tidak
mengklaim seluruh Wave2 selesai. Knowledge delapan dokumen disinkronkan terpisah
dari source aplikasi; histori di bawah bukan status baru.


## 2026-09-29 — Wave 1: Owner mobile lulus, OTP internal diaktifkan

- `CONFIRMED`; Andreas meminta Wave 1 lalu deploy dan mengizinkan email OTP nyata melalui provider existing serta UAT terbatas ke alamat sendiri. Before dashboard overflow dan OTP OFF -> after shared grid/panel sizing diperbaiki, Overview/Members/Audit lulus authenticated Owner browser; OTP server dibatasi internal allowlist. Member lain yang terdaftar tidak diberi izin pengiriman; registrasi publik dan broadcast tetap OFF. Customer Platform authority, Member hanya projection client via same-origin API.
- Exact active release `20260929T093800Z-e428b20-r0u`: backend `e428b20a2c104085ee75e9b2ccffe79cc20c5542`, Member `c8f180e6108a8fffbf03cfc2c805766251b328e5`, contracts `755ed1dccaf07c3576b6680faf2404f4724669bf`, artifact SHA256 `5c289bd2acb9c5f76312c468d03bd2b85b27b99346f466b06f956a198c79b1cf`. Source lokal committed; push/PR NOT_RUN dan CI_NOT_RUN, Vercel lama tidak disentuh.
- Backend51file, frontend580/580, contract29/29, synthetic API/browser core, native PostgreSQL18.6 empat tahap, immutable review, encrypted production/disposable restore dan schema15->15 tanpa migration baru PASS. Runner correction `43c4bbf5d5cc6b0057891edf67fb94a170ebc1bd` dengan99tests PASS membedakan label identity admission PWA dari batas delivery backend, bukan bypass. Switch pertama auto-rollback karena mismatch label; koreksi exact, guarded rollback/database-preserved dan reactivation PASS. Final switch1.931detik, active backup/restore serta customer/member/public monitor PASS.
- Authenticated real Owner final browser PASS: login password-only, session reload, consent existing, read-only summary/directory/audit, CSRF/closed-business denial, Overview/Members/Audit320/360/375/390/430/1440, 200%text, reduced motion, keyboard/focus dan Axe. [Owner](https://app.sagamember.site/owner), [Member](https://app.sagamember.site/member). `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / IN_PROGRESS / BUSINESS_READY=false`. Member OTP delivery/code verification dan authenticated Member/iPhone PWA masih OPEN; konfigurasi aktif bukan bukti email delivered. Reward/quest/POS/Book/Google/Push/payment/hardware tetap OFF. Offsite restore/business acceptance terpisah. Histori sebelumnya tidak menjadi status live.


## 2026-09-29 — Saga Member core aktif; acceptance mobile masih terbuka

- `CONFIRMED`; strategi dan eksekusi atas permintaan Andreas. Before Owner hanya akses keamanan inti -> after dashboard read-only Overview/Members/Audit tersedia, Member core self-service server-owned diaktifkan untuk sesi yang sah. [Owner](https://app.sagamember.site/owner) dan [Member](https://app.sagamember.site/member) memakai same-origin API; Customer Platform tetap authority. Tidak memasukkan Wave3 yang belum diterima atau membuka provider.
- Exact active release `20260929T072700Z-a7b5756-r0u`: backend `a7b5756d8c690aa8102680101fc1905be10ca678`, Member `2e49f5cea9e7f4b9f64b701a26a1f1e87f5a17c8`, contracts `755ed1dccaf07c3576b6680faf2404f4724669bf`, artifact SHA256 `28a645cf067a25cae31aa9927bc5432e0fe75741d0d9e62a435b71cdb31d17f3`. Source lokal committed; push/PR NOT_RUN dan CI_NOT_RUN untuk menghindari trigger Vercel lama yang belum terverifikasi. Knowledge dipush terpisah; bukan CI/source push aplikasi.
- Backend51file/contract29/additive compatibility/artifact review PASS. Native PostgreSQL18.6 empat tahap, encrypted production backup/disposable restore, schema15->15 tanpa migration baru, genuine Owner proof, actual rollback/database-preserved dan final activation PASS. Routing maintenance existing dipakai kembali secara exact, bukan ditambah duplikat; runner `311ac1f375f99dbd0cfeb0c0ccf0f35c5eab04b3`,123Python tests PASS. Final switch2.427detik; monitor/customer/member/public, timers dan active backup/restore PASS.
- Authenticated Owner functional probe: password-only login/reload, consent yang sudah diterima, summary/directory/audit200, closed business503, CSRF denial dan Axe0 PASS; logout dilakukan. **Full browser acceptance NOT_PASS**: dashboard390px memiliki document476px akibat intrinsic sizing header/toolbar/grid. UAT helper `cda45a81c103e83e17730155382b5b0b462f5374` terikat exact frontend, checkpoint setelah dua koreksi; bukan full authenticated UAT PASS. Next: satu slice perbaikan sizing Owner, red-green320–430/1440 dan200%text, lalu rilis frontend exact serta scoped UAT ulang.
- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / IN_PROGRESS / BUSINESS_READY=false` hanya untuk core. account/ownerRead/memberLogin/memberCore ON; emailOtp dan provider OFF berarti login OTP Member baru belum tersedia. Authenticated real Member/iPhone PWA, independent offsite restore dan business acceptance OPEN. Reward/quest, POS/Book consumer, Google/Push, payment/hardware dan registrasi publik tetap OFF; seluruh-wave completion tidak diklaim. Tidak mengubah password, menerima consent otomatis, mengoreksi saldo/data customer atau mengaktifkan provider.


## 2026-09-29 — Wave 5 / S9: recovery dan regresi kandidat lokal

- `CONFIRMED`; permintaan Andreas lanjut Wave5. Backend `5ba980f70baca4514b9c1c9a39f525387f02d743` pada `codex/member-wave5-recovery`, Member bersih `2e49f5cea9e7f4b9f64b701a26a1f1e87f5a17c8`, contracts tetap `2635a52ac28f7b996bf21b0565c0fa3a940a4ce9`. Before recovery belum dijamin all-or-nothing -> after snapshot divalidasi lengkap sebelum mengganti state; compatibility legacy tetap. Tidak mengambil perubahan Wave3 yang belum diterima; tidak ada perubahan client, migration atau dependency.
- Bukti source lokal: focused recovery3/3 red-green, full backend51file dan check PASS; backup whole-platform terenkripsi dipulihkan ke database disposable embedded PostgreSQL/PGlite dan restart, kesamaan state/idempotency/replay protection PASS. Browser API/proxy synthetic Owner+Member core PASS termasuk320–430px, 200%text, reduced motion, focus, Axe, offline/stale/retry. Source migration15->15 byte-identical. Bukan native production PostgreSQL, backup production/offsite, physical artifact rollback atau authenticated production/iPhone UAT.
- `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`; Wave5 keseluruhan `IN_PROGRESS`. Source commit lokal, push/PR/deploy NOT_RUN. Monitor read-only29September12:38WIB healthy pada core-only `20260929T032900Z-3e43ee8-r0u`, bukan kandidat Wave5. Wave3 reward/quest browser dan operator publish, Wave4 POS/Google/Push serta Book consumer UAT tetap OPEN; provider/payment/hardware OFF. Next: tutup acceptance lintas-wave, freeze satu pasangan lengkap, immutable artifact dan native target-bound recovery/rollback, lalu guarded release serta genuine Owner/Member UAT. Knowledge disinkronkan terpisah dari source tanpa mengubah checkout canonical yang dirty.


## 2026-09-29 — Wave 4 / S7: keandalan handoff Saga Book, lokal saja

- `CONFIRMED`; atas permintaan Andreas lanjut Wave4. Customer Platform source `a3c356aea3b1c77a795b2aecdf95411344e2a6c6`, branch `codex/member-wave4-book-handoff`, berbasis Wave2 tanpa mengambil perubahan Wave3 yang belum diterima. Handoff Member mengikuti identity/scope/return path Platform, validasi waktu/tujuan dan single-use bertahan setelah restart. Saga Book tetap authority booking; handoff tidak membuat booking, payment atau Points.
- Validasi source: 50 file tes backend dan static/migration source checks PASS; focused regression/API/disposable embedded PostgreSQL restart PASS. Bukan native production PostgreSQL, browser/iPhone UAT atau integrasi consumer Saga Book nyata. Tidak ada perubahan frontend, schema, shared-contract pin atau dependency.
- `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`; source commit lokal, belum push/PR/deploy. Monitor read-only 29September12:28WIB PASS untuk core-only release `20260929T032900Z-3e43ee8-r0u`, bukan kandidat Wave4. SagaPOS, SagaBook provider, Google, Push, payment dan hardware tetap OFF.
- Wave4 keseluruhan `IN_PROGRESS`: slice S7 lokal selesai, tetapi consumer contract/return-path UAT dan recovery/release masih OPEN; S6 SagaPOS serta S8 Google/Push belum diselesaikan pada run ini. Wave3 browser acceptance dan operator publish masih OPEN, tidak diklaim selesai atau dimasukkan kandidat ini. Consumer Saga Book harus memakai tenant/audience eksplisit sebelum aktivasi; pengujian provider nyata memerlukan otorisasi/UAT khusus. File knowledge terdampak: Product/Dossier/Changelog Saga Platform, Portfolio, Master, root Changelog, Sync Status dan Gaps.


## 2026-09-29 — Wave 2 / S3 Member inti: local validated, belum deploy

- `CONFIRMED`; Andreas meminta lanjut Wave2. Source backend `e9ecc3d135ab79603a266c9517961a7999981144`, Member `2e49f5cea9e7f4b9f64b701a26a1f1e87f5a17c8`, di atas Wave1; shared contracts tetap `2635a52ac28f7b996bf21b0565c0fa3a940a4ce9`. Before self-service ditolak atau hanya mengubah browser -> after explicit memberCore, profil/undo dan preferensi versioned, Inbox read/deep-link/read-all tersimpan, privacy request EXPORT/CORRECTION/DELETION retry-safe; Home/ledger/Pass tetap proyeksi Platform. Permintaan penghapusan tidak langsung menghapus akun.
- Backend49berkas dan frontend580/580 serta check PASS. Actual synthetic API/proxy/browser: sim OTP existing, consent, profile/undo, failure+reload preferences, Inbox persistence, privacy ambiguous retry tanpa duplikasi, masked Pass/focus, cursor20+5, offline stale/recovery, 320/360/375/390/430, root text200%, reduced motion, Axe serious/critical0 pada layar yang diuji; saldo/XP tidak berubah. Embedded PostgreSQL restore/restart PASS; migration15->15 byte-identical. Bukan native PostgreSQL production/iPhone PWA atau authenticated production UAT.
- `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`; source branch codex/member-wave2-core dan codex/member-wave2-core-ui belum push/PR. Production tetap core-only `20260929T032900Z-3e43ee8-r0u` (read-only monitor29September11:41WIB PASS), bukan kandidat Wave1/2. Tidak ada schema/backfill, mutasi data production, email nyata, deploy atau activation dari run ini.
- OPEN: runner dan immutable artifact harus mengikat pasangan Wave1+2, backup terenkripsi/disposable restore, native recovery/rollback, target migration journal, genuine Owner dan authenticated UAT kandidat. Real existing Member OTP tetap membutuhkan otorisasi provider/UAT khusus. Reward/quest/SagaPOS/SagaBook/Google/Push/payment/hardware tidak ikut dibuka. Wave2 implementation milestone selesai lokal; operational delivery masih IN_PROGRESS. Knowledge dipisahkan dari source melalui checkout bersih; checkout canonical yang dirty dipertahankan.

## 2026-09-29 — Wave 1 Owner/Member local-only

- `CONFIRMED`: backend `34535d9edc9159436b93edadad3295491f7105c9`, Member `28ec581ce30f3bc94842bac4c1374b003b3760a1`; contracts unchanged. Before core-only/registration coupling -> after read-only organization registry and existing-only login/consent/session. No invented context links, new accounts, balance corrections or Member-to-Owner promotion.
- Backend48files/frontend577tests/check, embedded PostgreSQL restart, source migration15->15 byte-identical, actual local API/proxy/browser synthetic Owner+Member PASS. Owner search/cursor/detail/audit320–1440; Member OTP simulator/consent/reload/logout-all. Not native production PostgreSQL/iPhone/offline-full-matrix or authenticated production UAT.
- `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`; source push/PR NOT_RUN. Monitor29September11:31WIB current core-only release `20260929T032900Z-3e43ee8-r0u` healthy/account available, business/registration false, providers OFF. Wave1 did not deploy or send email; historical recovery snapshots below are not current live status.
- Wave1 IN_PROGRESS. Next: exact runner/artifact binding, encrypted backup/disposable restore/rollback and genuine Owner UAT before read-only rollout. Real Member OTP provider requires separate authorization and controlled UAT; no shared Owner password. Knowledge updated on a clean isolated checkout; original dirty checkout preserved.

## 2026-09-29 — Recovery Member: tooling diterapkan, metadata kandidat siap

`CONFIRMED`: runner source `9be3adcd31bb650369ead9f8f401a130edc935e9` / tree `aba2787a58fae5321bd571c48c326d66d8347364`, parent `7b03dc51c6a3cdd1614fd29e257379f4a70f1177`, hanya mengubah runner dan tesnya. Sebelum guard recovery salah mengharapkan mode pada exact legacy tuple; sesudah mode historis dikenali hanya pada tuple itu dan profil kandidat tetap mempertahankan kontraknya. Expiry/Owner, tujuh binding lain, provider OFF, pemeriksaan health/otoritas/service/database tidak dilemahkan. Independent source/package QA menjalankan 117/117 Python PASS (runner91/focused5 adalah subset), compile/secret-safety serta paket terikat source diterima.

Penerapan produksi hanya tooling: runner diganti melalui installer yang telah direview, runner lama diarsipkan dan helper verify-only tetap identik. Original caller dan physical closure 06.16–06.18 WIB diterima independen: natural0/dualEOF, tanpa retry/signal, lock bebas dan scoped proses/FD/temp kosong. Current, environment, aplikasi/service/database/Owner/provider/pilot tidak berubah. Metadata retarget 06.23–06.25 WIB kemudian diterima independen sebagai `PREFLIGHTED`; genuine state lama diarsipkan, current/environment tetap. Metadata ini bukan perpanjangan expiry, fresh Owner proof atau runtime promotion.

Snapshot retarget mengikat kandidat backend `71b2618ff1814ab333c8e69f8b57d30fa737af33`, frontend `5c1bd92d0eef55cc5bc53e726fd05b9bd826579d`, contracts `2635a52ac28f7b996bf21b0565c0fa3a940a4ce9`; aplikasi current masih backend `cb51362a67c1193c894f4a7e467fce2408a2b1d3` / frontend `33b3524629cf7eb1b7ad640473d92190aed26353`. Qualified private PostgreSQL18 empat tahap pada artifact/helper yang tidak berubah tetap bukti terpisah/carry-forward terbatas; bukan eksekusi baru seluruh runner9be atau production backup/restore.

Status `PRODUCTION_TOOLING_APPLIED_ONLY / CANDIDATE_METADATA_PREFLIGHTED`, aplikasi `IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`. OPEN: candidate-bound encrypted production backup/disposable restore, genuine Owner proof terbaru, app promotion dan authenticated auth-core UAT. Tidak ada aplikasi switch, perubahan authority Customer Platform, aktivasi bisnis/provider/payment atau transaksi nyata dari gate ini. Catatan ini berdasarkan receipts point-in-time, bukan pemeriksaan live baru oleh writer; histori kegagalan dan snapshot sebelumnya tetap tersimpan.

## 2026-09-28 — Recovery Member: acceptance paket nonproduction

`CONFIRMED / VERIFIED_NON_PRODUCTION_PACKAGE_AND_RECOVERY / READY_FOR_RELEASE_LEAD_AUTHORIZATION`: package immutable `48e9ec58ea01f07fc137cbc25ca8e1f3837acbe80dbc768a96fe6e0d22c53e00`,22453283bytes, sumber Memberc40d18094eacae3555f6689c5dc30dc718500787, runner783e6e286cbfde5fdf5e0c1e50e29dde56de1db7, Platform8b1e8fefdbd32c08835764f78c95f65d0d21c718, contracts755ed1dccaf07c3576b6680faf2404f4724669bf. QA independen mencocokkan physical bytes, embedded source-pair/inventory dan original command terminals; writer mengulang physical checksum saja, tidak build/extract/rehearsal.

Dua extract terpisah memakai exact inventory1583entri yang mengecualikan manifest inventory itu sendiri; builder1584 memasukkan manifest, bukan discrepancy. Synthetic PGlite membuktikan active baseline, active code setelah schema active dan active code setelah full forward schema. PostgreSQL18.6 disposable membuktikan active15 backup/restore, forward15→16 old/new writes, lalu candidate16 backup/restore. Ini forward compatibility, bukan down migration. Original natural caller0, kedua output EOF dan scoped cleanup diterima; sejarah failed comparator/dependency/start attempts tetap disimpan, tidak direlabel PASS.

Status package-pending pada snapshot sebelumnya tersupersesi oleh **nonproduction recovery siap**. Hal ini tidak membuktikan production backup, live availability, effective production Owner, authenticated UAT, renewal atau provider. **IMPLEMENTED_NOT_DEPLOYED/BUSINESS_READY=false**, Owner production window masih keputusan terbuka. Source Member/SKIP_GITHUB dan hostedCI_NOT_RUN tetap; tidak ada production prepare/retarget/restart/renew/activation dari handoff ini. Next: acceptance oleh Release Lead, Owner window yang berlaku dan fresh source/target/capacity/authorization/recovery/promotion/smoke gates. Tidak mengubah authority Customer Platform atau loyalty/ledger.

## Histori 2026-09-28 — Source recovery Member: batas expiry dan respons maintenance

- `CONFIRMED`: pasangan source lokal Member `c40d18094eacae3555f6689c5dc30dc718500787` / runner `783e6e286cbfde5fdf5e0c1e50e29dde56de1db7` telah melalui QA independen pada lingkup expiry, maintenance dan fallback. Member571/571 serta runner98/98 lulus lokal; belum menjadi paket atau release produksi baru.
- Sebelum: expiry dapat memicu restart berulang dan kegagalan upstream belum mempunyai fallback terpisah yang disiapkan untuk dokumen/API/runtime. Setelah pada source: expiry keluar78 dengan RestartPreventExitStatus78; dokumen Member memperoleh halaman maintenance503, API memperoleh JSON503, sedangkan service worker/runtime config memperoleh respons503 terpisah. Respons tidak dicache dan header server existing dipertahankan.
- Header fallback diambil dari server proxy yang benar, termasuk konfigurasi dengan server redirect sebelumnya; hasil source ini telah direview. Kontrak kandidat dan rollback tetap terikat source. Paket historis tidak dianggap cocok dengan source baru.
- Status `LOCAL_VALIDATED / SOURCE_QUALIFIED / IMPLEMENTED_NOT_DEPLOYED / CI_NOT_RUN / BUSINESS_READY=false`. Runtime28September masih app502/API503. Source ini belum memulihkan availability, memperpanjang pilot atau membuktikan UAT bisnis.
- `NEEDS CONFIRMATION`: Owner menentukan jendela pilot/recovery; kemudian diperlukan fresh package, recovery/release, smoke dan acceptance operasional. Source Member tidak dipush, PR/hosted CI tidak dibuat sesuai SKIP_GITHUB; knowledge diperbarui terpisah.

## 2026-09-22 — Aktivasi projection Saga Member ke Saga Platform

- `CONFIRMED`: Member release `20260922T070500Z-cb51362-r0u` dan Platform release `20260922060607-aeb17ba` aktif. Source exact: backend `cb51362a67c1193c894f4a7e467fce2408a2b1d3`, frontend `33b3524629cf7eb1b7ad640473d92190aed26353`, contracts `2635a52ac28f7b996bf21b0565c0fa3a940a4ce9`, Platform `aeb17ba9316252a6b2de0357cdcad6f7bd184589`.
- Boundary authority dipertahankan: Customer Platform menguasai account/loyalty/ledger; Saga Member memproyeksikan metadata readiness/capability minimum; Saga Platform menjadi control-plane read model. Kontrak transport memakai HMAC, origin dan capability terbatas, serta tidak membawa credential, PII, atau ledger.
- Sandbox service tetap default-deny. Egress hanya dibuka ke satu alamat host Platform yang direview dan dipasang dengan DNS-drift check, health binding, serta rollback otomatis. Pengiriman lama yang tersupersesi oleh ACK terbaru ditandai selesai sehingga tidak lagi menciptakan false degradation.
- Bukti runtime final: status Owner `HEALTHY`, nol isu terbuka, sembilan event diproses; Platform memiliki proyeksi terbaru `HEALTHY`; public Member/Owner 200; console Platform meminta autentikasi; monitor, customer service, PWA, backup timer, dan projection worker aktif tanpa error journal pada jendela verifikasi.
- Validasi: contracts 20/20; backend 47 isolated files; frontend 566/566; Platform 14 test/65 assertion; runner 82/82; audit dependency nol; immutable artifact `907d522233b55eba176e8378051614e18f34c001dc160e381d99e97311ec3205`; encrypted backup/restore, actual rollback rehearsal, final activation, active backup, dan authenticated Owner browser UAT PASS.
- Status `PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PLATFORM_PROJECTION_HEALTHY / BUSINESS_READY=false`. Business UAT, independent offsite restore, payment, dan hardware tidak tersirat oleh aktivasi integrasi ini.

## 2026-09-21 — Density dan minimal motion onboarding Saga Member

- `CONFIRMED`: release `20260921T134857Z-f0ab22a-r0u` mengganti frontend menjadi exact source `657a482f511edb9d71d012342102fffc0ec4eb31`; backend `f0ab22a719bf98dc5c4d835203960e7d3ef8e84c` dan contracts `2930b1b3db2774482e17341d83677029e86cbf95` tidak berubah.
- Welcome/email mempertahankan brand, sedangkan OTP/profil/minat/notifikasi/aktivasi memakai chrome ringkas; kartu dan benefit mempunyai page header. CTA tidak lagi didorong ke bawah secara artifisial, daftar minat memakai Feather Icons, dan kartu Member mengikuti rasio CR80 dengan Points/XP serta petunjuk pemakaian.
- Motion menggunakan transform/opacity 120–180 ms dan menghormati reduced motion. Production service worker tetap network-only dan menghapus cache Member lama; marker cache demo bukan kontrak production.
- Validasi: 561/561 regression, 12 state pada delapan viewport 320–1440 termasuk short-height, overflow nol, Axe nol pelanggaran, immutable artifact `c05bf31b09afe14cbafa6bf06f213ea8860c745c38ad37498370d46e0de370cd`, dependency audit nol vulnerability, dan nol high-confidence secret finding.
- Encrypted backup/disposable restore, schema compatibility, actual rollback, re-prepare, final switch, active backup, monitor, public health, serta visual production PASS. Bitwarden dilewati satu kali atas instruksi eksplisit Andreas; tidak ada perubahan credential/auth/provider dan authenticated Owner UAT tidak dijalankan ulang. `BUSINESS_READY=false`.

## 2026-09-21 — UI/UX fidelity handoff Saga Member

- `CONFIRMED`: release `20260921T092500Z-f0ab22a-r0u` mengganti frontend onboarding dengan exact source `628bbd8b6051c53ce3af9a80af7a689e4ccb025c`; backend tetap `f0ab22a719bf98dc5c4d835203960e7d3ef8e84c` dan contracts tetap `2930b1b3db2774482e17341d83677029e86cbf95`.
- Implementasi memusatkan copy onboarding, memisahkan state minat default/selected, memakai aset dan brand final, memuat aset berikutnya lebih awal, mempertahankan email/OTP/profil selama recovery, dan menyembunyikan bottom navigation sampai aplikasi siap. Lineage cache demo/offline diperbarui; production service worker tetap network-only dan menghapus cache Member lama agar data authoritative tidak tersimpan sebagai shell privat.
- Authority tidak berubah: tier, Points, XP, reward, dan member code tetap server-authoritative. Client hanya memproyeksikan data, member code memiliki reveal sementara 60 detik, API timeout 12 detik, serta analytics onboarding tidak membawa PII.
- Validasi mencakup 561 unit/regression, 12 state pada delapan konfigurasi viewport termasuk short-height, Axe nol pelanggaran, overflow nol, production dependency audit nol, exact-source security scan nol high-confidence finding, dan synthetic forward-schema compatibility PASS.
- Artifact immutable `c9756688355c2280582a36b141600194f4746cdb5a26ba44559f080e9d79e6f7` berisi 1.578 file. Empat belas migrasi tetap exact dengan `added=0` dan `changed=0`; tidak ada mutasi database. Encrypted backup/disposable restore, switch, actual rollback, re-prepare, final switch, monitor, public health, dan active backup PASS.
- Authenticated Owner technical UAT pada domain publik PASS untuk credential in-memory, secure cookie, session reload, CSRF/scope containment, mobile/desktop, accessibility, dan logout. Consent telah diterima sebelumnya dan tidak dikirim ulang oleh automation. Ini bukan business acceptance; `BUSINESS_READY=false`.

## 2026-09-21 — Onboarding handoff v1 production

- `CONFIRMED`: Customer Platform menyimpan onboarding secara optimistic-versioned: profil dan consent, minat atau skip, keputusan notifikasi, activation view, benefit view, dan completion. Resume mengembalikan langkah berikutnya tanpa memindahkan authority ke client.
- Member memakai aset WebP teroptimasi, Plus Jakarta Sans, ikon Feather, safe-area, reduced-motion, focus state, dan layout mobile-first. OTP tetap satu input logis dengan enam slot presentasional; error dan retry tidak mengekspos keberadaan akun atau credential.
- Exact release: backend `f0ab22a719bf98dc5c4d835203960e7d3ef8e84c`, frontend `7d00530d08fadaa5ad61fe81c40978393caf02fc`, contracts `2930b1b3db2774482e17341d83677029e86cbf95`, artifact `5a1da7bb439e9be7bafb351050382b26faaf5e72d651f9481ac962574d76f4bb`.
- Recovery sequence mengeksekusi candidate switch, actual rollback ke release sebelumnya, backup/restore ulang, final switch, active backup, dan monitor. Production public UI UAT lulus pada 320/390/1440 px; Owner credential diambil in-memory dari item Bitwarden ber-scope OWNER dan tidak dipublikasikan.

## Update 2026-09-21 — Google OIDC Owner internal

- Production aktif pada release `20260921T071505Z-b8d24e3-r0u`; Customer Platform tetap authority account/session dan Saga Member tetap projection client.
- Google OIDC memakai Authorization Code + PKCE, verifikasi signature/issuer/audience/expiry/nonce/email verified, state sekali pakai, dan secure temporary cookie. Google access/refresh token tidak menjadi data bisnis yang dipersist.
- Hanya identitas Google yang cocok dengan akun internal yang sudah ada dapat memperoleh sesi Member. Akun terverifikasi tetapi belum terdaftar ditolak; public registration dan auto-provisioning tetap OFF.
- Source: Customer Platform `b8d24e322bd47425822e6dff0b0140c58652287d`, Member `0de0b9c3204df3da43fd9605d5ec3a445935379e`, contracts `2930b1b3db2774482e17341d83677029e86cbf95`, artifact `4a12d00917b4974e51b03db3ad43d0e2e5abdcaeb84b706da5b37441e4da272e`.
- Kandidat `af767dd8a1b022ce677a6bdc331cccbd9263369b` tidak dipromosikan setelah monitor menemukan health flag OIDC salah; rollback aktual PASS. Artifact dan source baru dipakai untuk aktivasi final.
- Frontend 554 test, backend 43 isolated test files, runner 56 test, dependency audit nol, backup/disposable restore, rollback rehearsal, reactivation, health/monitor, timers, active backup, serta login Owner lama PASS. Public OAuth-start membuktikan redirect Google, PKCE, state, nonce, dan cookie aman tanpa membuka credential.
- UAT consent/callback Google nyata oleh Andreas masih pending. `BUSINESS_READY=false`; provider bisnis lain dan independent offsite restore tetap dinilai terpisah.

## Update 2026-09-21 — Provider SagaPOS dan email OTP

- Production aktif pada release `20260921T050306Z-421e461-r0u`; Customer Platform tetap authority dan Saga Member tetap projection client.
- SagaPOS mengakses Member melalui machine credential terikat dengan empat capability eksplisit: member lookup, benefit quote, commerce write, dan reward write. Provider UAT lookup tidak membuat transaksi sintetis.
- Email OTP aktif hanya untuk allowlist internal. Request production dan delivery provider lulus; public registration tetap OFF. Google OAuth belum aktif dan tidak boleh disamakan dengan penggunaan alamat Gmail untuk OTP.
- Release memakai immutable artifact, encrypted backup/disposable restore, rollback rehearsal aktual, migrasi kompatibel, monitor, dan active backup. Payment, Push, NFC, printer, hardware, independent offsite recovery, dan business acceptance tetap residual; `BUSINESS_READY=false`.

## 2026-09-21 — Integrasi Saga Member ↔ Customer Platform R0

- `CONFIRMED`: release `20260921T025500Z-453db12-r0u` mengaktifkan exact source trio Customer Platform `453db12b3756150b7f194f8dd12b5e2baa2f3ae6`, Member `da8cfcce2145fb6a498d2173eb7889e8be9b6c57`, dan shared contracts `2930b1b3db2774482e17341d83677029e86cbf95` di domain `app.sagamember.site`.
- Kontrak bersama memuat 47 operasi, termasuk 28 operasi Member Session. Runtime Customer Platform authoritative memakai PostgreSQL, limiter atomik, security telemetry restricted-retention, session/consent/RBAC, reward, quest, Saga Card, serta SagaBook projection. Member hanya client/projection; authority tidak dipindahkan ke UI.
- Artifact immutable `0410fb2a0d173adcbf2ed598b5675bb5c65a8d50811f83dea008a57c2cb7fb2f` berisi 1.564 file dan lulus safe extraction, inventory binding, dependency audit nol vulnerability, serta secret review nol unresolved/high-confidence finding. Backend 42 isolated test files, Member 550 test, contracts 20 test, dan runner 61 test PASS.
- Candidate-bound backup/restore, 14-migration exact-prefix contract dengan `added=0`/`changed=0`, atomic switch, actual rollback rehearsal, final reactivation, Customer/Member/public health, monitor/timer, database count, serta post-activation active backup PASS.
- Authenticated Owner public UAT PASS: credential Bitwarden hanya dibaca in-memory, secure HttpOnly cookie, session reload, CSRF/scope containment, mobile/desktop, accessibility, dan logout. Consent berstatus `ACCEPTED_PRIOR`; automation tidak mengubah persetujuan.
- Ring ini internal dan dibatasi sampai `2026-09-27T02:57:09.041Z`. Public registration, email OTP, Push, gateway/payment, machine commit provider, NFC, printer, dan hardware OFF. SagaPOS provider nyata belum diaktifkan; repository masih snapshot bridge, belum normalized scaled repository, dan offsite restore independen belum dibuktikan. `BUSINESS_READY=false`.

## 2026-09-10 — Saga Member recovery dan fresh production activation

- `CONFIRMED`: failed release chain `20260910T022514Z-f7e0a50-r0u` berhenti pada recovery rehearsal, dipertahankan append-only, dan tidak di-resume atau diaktifkan ulang. Old runtime dipulihkan terminal beserta monitor, timer, encrypted backup, dan disposable restore sebelum chain baru dibuat.
- Fresh source Member `e53fea930dec88411d8c8147c6a3530086f991d6` mempertahankan reviewed tree dari kandidat UI sebelumnya; paired Customer Platform tetap `f7e0a50bf64164c034c39de24cb364fa898f43b0`. Release aktif `20260910T034155Z-f7e0a50-r0u` memakai fresh artifact yang terikat exact source.
- Candidate-bound backup/restore, migration contract 7 dengan `added=0`/`changed=0`, switch rehearsal, rollback database-preserved, final switch, public/internal health, monitor, dan post-UAT active backup PASS. Service/timer terminal sehat dan shared release locks bebas saat audit akhir.
- Authenticated Owner UAT PASS tanpa mengirim consent. Anonymous Owner session tetap 401; HSTS dan no-store aktif. Provider eksternal OFF; lifecycle Reward internal aktif, tetapi payment, machine commit, dan hardware false. `BUSINESS_READY=false` sampai acceptance bisnis/physical selesai.

## 2026-09-08 — Saga Member R0 Owner pilot final production release

- `CONFIRMED`, cut-off 2026-09-08 13:41:46 UTC: [Owner](https://app.sagamember.site/owner) dan [Member](https://app.sagamember.site/) aktif pada release `20260908T132140Z-f7e0a50-r0u`; backend `f7e0a50bf64164c034c39de24cb364fa898f43b0`, frontend `6cbddfb27df1e0bb9a02959621b780f74a1fb28a`.
- Artifact runtime dibangun dari exact source pair dan diverifikasi terhadap manifest immutable. Dependency audit nol, encrypted backup plus disposable restore, tujuh migrasi tanpa perubahan schema, atomic switch, actual rollback rehearsal, reactivation, monitor dan backup job seluruhnya PASS. Rollback pointer tetap tersedia ke R0 sebelumnya.
- Authenticated Owner browser UAT final PASS untuk secure HttpOnly session, reload, dashboard, CSRF containment, accessibility dan viewport mobile/desktop. Consent Owner sudah tercatat sebelum UAT final; UAT ini tidak mengirim consent baru dan tidak mengklaim acceptance bisnis Andreas.
- Reward catalog authoritative masih kosong. Tidak ada synthetic seed atau transaksi reward buatan; reserve/cancel berstatus `PENDING_DATA` sampai satu reward nyata disetujui Owner. Payment/QRIS, provider email/gateway/Push, broadcast/marketing, NFC, printer dan hardware mutation tetap OFF.
- Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / BUSINESS_READY=false`; pilot tujuh hari tetap berakhir 2026-09-14T14:08:12.752Z.

## 2026-09-07 — SAGA Member R0 Owner-only di domain asli

- `CONFIRMED`, cut-off 2026-09-07 14:18:33 UTC: [login Owner](https://app.sagamember.site/owner) telah `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` pada Hostinger dengan authoritative Customer Platform API same-origin dan PostgreSQL persistent.
- Release `20260907T140646Z-75d56d5-r0`; backend `75d56d5b4255046a0506cebf5cc6002dec8f69f1`; frontend `8ce4f37d49f0eeeee51664fda0bca7e3f92c6d8e`. Provenance: [laporan rilis source](https://github.com/notyourgas/saga-customer-platform/blob/3842dd412a3140525be17060ee603f4c5f4e08af/docs/PRODUCTION_R0_RELEASE_2026-09-07.md).
- Login Owner nyata menggunakan cookie aman, session, CSRF, consent, RBAC, audit dan dashboard organisasi yang ditentukan server. Customer Platform tetap authoritative; Member hanya projection client. Akun/customer lain tidak diimpor.
- PASS: backend 96 tes, frontend 463 tes, dependency audit nol, tujuh migrasi, encrypted backup lokal dan disposable restore, rollback rehearsal, health/monitoring, serta browser autentikasi same-origin, mobile/desktop dan pemeriksaan accessibility otomatis. Hosted GitHub CI terblokir billing dan **tidak** diklaim PASS; release branches pushed, protected source main tidak di-merge.
- `PILOT_ACTIVE` untuk penggunaan bisnis masih `PENDING_OWNER_FIRST_USE_CONSENT`; `BUSINESS_READY=false`. Owner harus meninjau dan memberi consent sendiri sebelum business UAT dashboard. Pilot tujuh hari berakhir 2026-09-14T14:08:12.752Z; bukti login teknis bukan persetujuan privacy atau acceptance bisnis.
- Payment/QRIS, external commerce/marketing, NFC dan printer tetap OFF. Runtime dibatasi Owner-only snapshot bridge; normalisasi repository skala dan independent offsite recovery belum terverifikasi. Pricing, janji sales, commercial tenant dan aktivasi produk Saga lain tidak berubah.
- Catatan D0, PUBLIC_DUMMY_DEMO dan kandidat lokal sebelumnya tetap riwayat `DEPRECATED` untuk status runtime domain ini; riwayat itu tidak menggantikan snapshot R0 di atas. Tidak ada credential, PII, identifier privat atau raw recovery evidence dalam sinkronisasi ini.


## 2026-09-07 — Explicit Owner Member Cohort read model candidate

Exact source `b379b53d3a45ad72586157d258571cf64d05edc0` pada PR Customer Platform #9 menambah kontrak additive `GET /v1/owner/members/summary`. Endpoint memakai operator credential dan assignment `dashboard:read` yang sama dengan Operations Summary: Owner scoped ke organisasinya; Manager wajib exact assigned outlet; Staff, Support, Finance, member session, dan machine connector token ditolak. Foreign dan unknown organization sama-sama scope denied.

Read model hanya menghitung member dengan link konteks eksplisit yang sudah diverifikasi oleh boundary internal. Penulisan link mensyaratkan existing member, exact outlet atau tenant, source system yang diizinkan, hash bukti SHA-256, dan idempotency key yang collision-safe. Raw provider reference tidak disimpan. API ingestion belum dibuka karena connector identity, approval authority, credential rotation/revocation, dan retry contract belum diratifikasi.

Response memuat linked-member count yang dideduplikasi, active-link count, lifecycle counts, Tier counts, scope, classification, freshness, dan limitations. Organization count boleh mendeduplikasi satu member yang muncul di beberapa konteks; outlet/tenant cohorts tidak additive. Points balance sengaja tidak dihitung karena ledger saat ini member-wide dan tidak membuktikan atribusi outlet/tenant. Booking, transaksi, revenue, PII, Member Code, dan member ID juga tidak ditampilkan.

Empat test baru memverifikasi exact context/evidence, duplicate/idempotency collision, permission-negative/no-existence-leak, pemisahan operator-versus-machine auth, PII minimization, no-cache, durable audit, dan restart persistence. Seluruh 20 isolated test files/80 tests, static/migration check, dependency audit nol, secret scan, dan diff check PASS. GitHub Quality run exact head tidak memperoleh runner dan menjalankan nol step akibat billing/spending-limit account. Tidak ada merge, deploy, database/provider/customer mutation, atau activation.

Status: `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; seluruh joint/staging/production/activation/business-ready gate tetap false.

## 2026-09-07 — Customer Platform scoped Owner Operations Summary candidate

Exact source `f7cb9fb75a946d19eb9fc59d6fc3fa5b559179b4` pada PR Customer Platform #9 menambah kontrak additive `GET /v1/owner/operations/summary`. Runtime meminta organisasi dan maksimal satu outlet atau tenant. Operator token hanya membuktikan actor bootstrap; permission tetap berasal dari assignment Customer Platform yang aktif dan belum kedaluwarsa. Machine connector token tidak diterima.

Owner boleh membaca scope organisasinya; Manager wajib meminta exact outlet assigned dan tidak dapat melakukan organization-wide/tenant read. Finance, Support, dan Staff tidak memiliki action `dashboard:read`. Foreign dan unknown organization sama-sama gagal dengan scope denial sehingga tidak membocorkan existence. Auth/scoping failure tidak memicu durable write; read sukses menambahkan audit redacted dan baru merespons setelah persist.

Read model menampilkan aggregate topology, device status, event flow, dead-letter, reconciliation, explicit capability flags, freshness, dan source classification. Ia sengaja mengembalikan limitation bahwa member counts belum tersedia sebelum member-context read model, dan transaction/booking totals belum boleh tampil sebelum connector facts scoped tersedia. Ini mencegah dashboard menebak data dari client atau fixtures.

Empat test baru mencakup credential hashing/config failure, permission negative, machine-token isolation, PII minimization, no-cache, audit, dan restart persistence. Seluruh 19 isolated test files, static/migration check, dependency audit nol, secret scan, dan diff check PASS. GitHub Actions run untuk PR #9 berhenti sebelum runner/step karena billing/spending-limit account; remote CI belum hijau. Tidak ada deploy, database migration, provider mutation, payment/email/push/NFC/customer data, atau activation.

Status: `CONFIRMED / SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; seluruh joint/staging/production/activation/business-ready gate tetap false.

## 2026-09-06 — Saga Member notification preference continuity

- Classification: CONFIRMED implementation; PUBLIC_DUMMY_DEMO only, no real account/backend/provider/customer activation and no added service/dependency.
- Profil notification choices now remain during activity refresh and route navigation. Previously refresh silently restored defaults. Native switches, radios and polite status remain mounted during edits rather than replacing the screen. Summary copy explicitly describes a simulation, not actual notification delivery.
- Urungkan perubahan restores the exact last successful edit, including default reset; no-op does not overwrite recovery. Global reset/reload clears it, cancelling reset retains it, and offline demo export reflects current selection. All state remains memory-only.
- High-contrast switch thumbs now use system colors instead of disappearing white-on-white. Native radio-arrow focus uses a cancellable next-frame adjustment when hidden by fixed chrome, without changing focus. Canonical320–430 canvas, self-hosted Jakarta/Feather,44px controls and200% text remain supported.
- Existing Motion13.2.0 MIT bundle unchanged; native switch120ms CSS feedback replaces repeated preview fades, reduced motion final-state. Gzip net+791B across app/UI/model/existing Inbox CSS, no new stylesheet layer or dependency.
- Source2359899268ecd31a9400fbcd33fab0ed0278eec5, PR81. Full local PASS338 units including24 new, focused86 browser checks, additional keyboard55 checks and exact-baseline offline PWA upgrade/recovery. Dependency audit0; diff/secret-pattern checks and synthetic diagnostic redaction passed.
- Final CPU4x synthetic switch dispatch20 samples per phase: baseline max33.1ms, candidate max2ms;20/20 inputs retained vs0/20. Handler only, not field INP. Matching verified public gzip with CPU4x/150ms/1.6Mbps gave three cold candidate document LCP samples2.048/2.052/2.248s, CLS0; baseline2.108/2.044/2.116s. Document LCP refers to Beranda startup, not settings SPA LCP; no LCP improvement claim. Initial uncompressed local stress exceeded4s and was not equivalent to public encoding; evidence retained.
- Delivery: IMPLEMENTED_NOT_DEPLOYED. PR81 merged to canonical main6549e1131b9354cddfa9bdbac90dac7dc924d132; source tree matches candidate2359899. Exact PR CI34001736560 PASS; main CI34002178122 could not start because hosted CI execution is account-restricted (zero test steps), not a failed application test. No retry loop, paid capacity, gate bypass, Preview deployment or production promotion. Resume exact-main CI after CI capacity is restored, then Preview/public UAT. Prior healthy Production dpl_J1C5cmm16JPLYSBanwtHNAYSaiEH remains unchanged. Physical devices/native screen readers/field vitals/comprehensive monitoring remain unverified.
- Research: [W3C switch pattern](https://www.w3.org/WAI/ARIA/apg/patterns/switch/), [status messages](https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html), and [MDN forced colors](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/At-rules/@media/forced-colors) informed stable native controls, mounted feedback and system colors. Heuristic/synthetic review, not a real-user survey. Other Saga products unchanged.


## 2026-09-06 — Saga Member Inbox read recovery

- Classification: CONFIRMED. Scope PUBLIC_DUMMY_DEMO only. No real account, backend, payment, Push/provider, customer or device activation; no new service or dependency.
- Inbox now offers Urungkan after Tandai semua dibaca. Only the originally unread messages are restored; later explicitly opened messages are excluded, and previously read messages stay read. Recovery is memory-only, with no expiry timer, and reset/reload clears it.
- Browser Back restores the message focus when visible or the selected filter when the newly read message is hidden. Counts stay consistent after remount: the old Studio view showed6 while displaying2; it now shows2 of6. Bulk actions keep the DOM/live status mounted instead of losing focus to the page.
- Demo Inbox no longer aliases the reset fixture: old mark-all then reset left0 unread; reset now restores3 initial unread. Refresh retains local read state. No real notification is sent or changed.
- Message title/body wrap fully; typography is14px title,13px body,12px metadata. At200% text, recovery controls scroll only enough to remain above navigation; returning from the last unread message also brings the fallback filter into the visible rail and viewport. Canonical320–430 mobile canvas, self-hosted Plus Jakarta Sans, Feather and warm palette retained.
- Existing Motion13.2.0 MIT bundle unchanged. Inbox filter uses transform-only140ms, maximum5 rows and cancellation of prior filter motion; eight rapid-filter samples showed no instantaneous or settled serious contrast finding after removing text fades. Reduced motion remains final-state. Gzip deltas: app+1175B, memberUI+14B, existing Inbox CSS+122B; no new stylesheet layer.
- Source candidate3cb56a143c934e11c0d010b4cb2526e95fe35c07, PR80. Full local suite PASS with314 units including20 new, focused86 browser checks across five widths/both motion modes plus touch, reset/reload, offline and forced colors. CPU4x synthetic mark/undo handler20 samples max12.8ms; not field INP/LCP or physical-device/native-screen-reader certification. Dependency audit0 and diff/secret-pattern checks passed.
- Delivery: SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED. PR80 merged to canonical mainfb8732241a2c35033afce07ce13abfe80bcd27c7; exact PR CI33998989893 and main CI33999378160 PASS. Preview dpl_2uqNyBccehi7rZpQV4MSE43YEWpu READY and six remote UAT suites PASS. Production dpl_J1C5cmm16JPLYSBanwtHNAYSaiEH READY at the unchanged https://saga-member-platform.vercel.app, deployed2026-09-06 06:56 WIB; static build output2s. All19 public artifact hashes match canonical source and all six public UAT suites PASS (Inbox86, Activity83, bootstrap91, carousel80, motion14, navigation38). Exact-deployment last-hour error-log query returned0 records; this is not comprehensive monitoring or verified drains. Rollback target remains prior Ready dpl_6VUq3tMsuXcwY9tRPkip3DvWhQuN; rollback not executed. No business readiness or real-service activation claim.
- Research: [W3C status messages](https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html) and [focus order](https://www.w3.org/WAI/WCAG22/Understanding/focus-order.html) informed mounted feedback and focus recovery. Heuristic/synthetic review, not a user survey. Other Saga products unchanged.


## 2026-09-06 — Saga Member searchable Points history

- Classification: CONFIRMED. Scope remains PUBLIC_DUMMY_DEMO, no real account/backend/provider/payment/customer activation and no added service cost.
- Activity now searches example entries by title, Coffee/Studio/reward source, status and displayed date, intersected with the existing direction filters. Bounded80-character Unicode-normalized word search is local to the tab/history; the query is not sent to a server or added to demo exports.
- Results retain original detail indices; query/filter/count survive Back/Forward and refresh. Clear search retains direction; empty-state Tampilkan semua resets both. Balance128 and all-history totals are unchanged and explicitly distinguished from filtered results.
- Accessibility deepening: stable heading names the ledger even when empty; IME composition suppresses pending announcements; refresh restores focus/reading position. At320px/200% text, the prior public page overflowed15px and truncated7 activity titles; candidate layout has0 overflow and0 clipped titles at320/390px. Input min48px, clear44px, existing mobile-only canvas and Plus Jakarta Sans retained.
- Typing animates no rows; explicit filtering/reset animates at most five distinct rows, reduced-motion final state. Existing Motion13.2.0 MIT bundle unchanged; CSS/native input suffice. No added dependencies, dependency audit0. Normalized gzip deltas: app+573B, member UI+255B, experience model+120B, existing ledger CSS+481B; no new stylesheet layer.
- Source candidate ea3ea3ced1752ad40e18ea5255ce2ed94ccd3f09, PR79. Focused83 checks passed across five widths/both motion settings, detail/history/refresh/empty/IME/Unicode/long input, native touch, cached offline search, axe and200% text. CPU4x synthetic input handler samples3.6–9.7ms; initial lab CLS0–0.00014. These are not field INP/LCP or physical-device/assistive-technology certification.
- Delivery verified: full local suite passed294 unit tests and all browser acceptance; one earlier full regression used the superseded result-count copy and its assertion was corrected without relaxing row/detail checks. Exact PR CI33995734267 passed; canonical main3e73e5c1a0d52defbe614080e735e850b7aded24 is tree-identical to candidate and main CI33996138009 passed. Preview dpl_8zpqKGT4QETETH35ng6VfKEN2yPi Ready with all five UAT suites passing. Production dpl_6VUq3tMsuXcwY9tRPkip3DvWhQuN Ready at https://saga-member-platform.vercel.app, static PWA build6.356s;18-file public/source parity and all five public UAT suites passed (Activity83, bootstrap91, carousel80 plus touch/autoplay, lifecycle, navigation38). Error-level15-minute query returned no entries; comprehensive monitoring/drains unverified. Rollback target dpl_DmrqdqKxbYi2SbiqnTpWkgNn2oKW. Status SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED only; no real-service activation or business readiness.
- Research: W3C status messages and focus order informed count/focus continuity; MDN compositionstart and CSS container queries informed IME cancellation and text-aware row reflow. Heuristic/synthetic review, not a user survey. Other Saga products unchanged.

## 2026-09-06 — Saga Member Home startup and reading-position continuity

- Classification: CONFIRMED. Scope remains PUBLIC_DUMMY_DEMO only, with no real account, backend, payment, provider or device activation and no added service cost.
- Home boot snapshots history before DOM writes, avoiding a forced full-Home layout at that point. Ordinary navigation still captures the actual current scroll; browser scrollRestoration is not overridden.
- Native reload with normal motion previously shifted a350px reading position to358px in four baseline replays. Initial reveal is now skipped for restored reload/back_forward documents only; fresh visits and subsequent SPA transitions retain editorial motion, press feedback and cleanup. Existing photos, copy, typography, color and hierarchy are unchanged.
- Source `42a91044887d74d4326e5fb34dced49e719814b7`, PR #78; exact PR CI 33992940224 passed. Focused 91 cases passed across five widths and both motion settings, including focus, reload, ten actual cross-document back_forward entries, 200% text/44px controls, restored-Home accessibility and actual cached offline bootstrap/back. Physical iOS/native screen readers and Firefox/WebKit remain unverified.
- Final-source CPU4x loopback ABBA (6 samples/cohort): history-call medians 157.05/176.75ms baseline versus 2.3/2.7ms candidate; LCP 528/578 versus 490/504ms. These are lab samples with cohort drift, not an overall or field speedup claim. Startup long tasks remain; lab CLS 0. Existing Motion 13.2.0 MIT, no new dependencies, normalized app gzip +246B and Motion bundle +798B including full upstream license notices; dependency audit 0. A build unit guard checks all four bundled packages' license texts.
- Delivery verified: 278 unit tests and the full local acceptance suite passed on unchanged final source; one earlier local Studio run recorded Chromium ERR_NO_BUFFER_SPACE, followed by passing unchanged focused/full reruns. Canonical main `2a5bfc50d9751d96088852a2084b0c91c6168743` is tree-identical to final candidate; main CI 33993669879 passed. Preview `dpl_Bmeqo5So5BYbpd3WvaaMVqHmWkRg` Ready and all four UAT suites passed. Promoted production `dpl_DmrqdqKxbYi2SbiqnTpWkgNn2oKW` Ready at https://saga-member-platform.vercel.app, static PWA build 6.896s; 16-file source/public parity and all four public UAT suites passed (bootstrap 91, carousel 80 plus touch/autoplay, motion lifecycle, navigation 38). The 15-minute error-level runtime query returned no entries; monitoring/drains and field behavior remain unverified. Rollback target `dpl_7BXJZjDVD1zE95EGy8duiCHtVcej`. Status SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED, not real-service activation or business readiness.
- Research: official web.dev synchronous-layout/long-task guidance and MDN browser scroll restoration. Reason: preserve reading position while reducing unnecessary synchronous startup work; no unrelated product changes.

## 2026-09-06 — Saga Member Home carousel continuity and text resilience

- Classification: CONFIRMED. Scope: Saga Member public dummy UI/UX demo only. No backend, database, account, payment, device or provider activation; no added service cost.
- Home starts its four-story carousel at the natural origin without resolving slide geometry or creating a no-op settle animation. Later slide moves retain measured offsets and the existing gap.
- Grabbing a moving banner now continues from its visible transform, not the destination offset. A controlled390px replay measured takeover jumps365/229/116/0px before,0px after, at1/45/90/179ms. This closes a user-visible interruption defect.
- Home grid tracks may shrink and section headings wrap for enlarged text. At320px with200% text, previous document width366px overflowed; candidate passes all five canonical widths without clipping or smaller44px targets. Default photos, copy, palette, typography and hierarchy remain unchanged.
- Source PR #76 and corrective PR #77 merged. Final application `5c1a68e53e06a4dc75ebbf2469c64fd0efbcb31d`, canonical main `8182d0851fadf05afb1445e6a867f1033e528188`; exact corrective PR CI33990189385 passed. Earlier PR76 CI33989202911 passed; initial CI33988580286 failed a screenshot/autoplay test setup and was superseded. Final full local suite passed265 unit tests and all acceptance. Canonical CI33990598345 is tracked separately from local validation.
- Focused acceptance passed80 cases including20 timed interruptions, five widths, resize/remount/reduced motion,200% text/44px controls; four emulated native-touch cases verify geometry/inert. A later true-touch Play replay exposed sticky compatibility mouseenter; corrective source5c1a68e53e06a4dc75ebbf2469c64fd0efbcb31d / PR77 uses pointer hover excluding touch. Existing4000ms autoplay interval is unchanged; corrected pause observations last4250ms and native touch Play/Pause is verified separately. Physical iOS and native screen readers remain unverified.
- CPU4x loopback ABBA6 samples/cohort on intermediate d6 source measured initial-show145.6/143.4ms baseline versus0.45/0.55ms candidate, with inconclusive total startup benefit. Final5c1 measurement showed substantial baseline cohort drift (LCP1662 versus562ms), so no overall speedup ratio is claimed. Initial long tasks remain; no field INP or mobile-network LCP claim. CLS0 in these lab samples.
- Existing Motion13.2.0 MIT plus platform DOMMatrixReadOnly; no new library, unchanged Motion bundle. Normalized gzip deltas: app+387bytes, CSS+22bytes. Dependency audit0 and staged secret-pattern scan0 findings. Cache versionv67-carousel-initial supports the upgrade.
- Delivery verified: canonical main CI33990598345 passed. Preview `dpl_2hALcaR92CRWHofrrgQaK4jza1mm` Ready with carousel, lifecycle and navigation UAT passing; promoted production `dpl_7BXJZjDVD1zE95EGy8duiCHtVcej` Ready at the existing stable Saga Member URL. Static PWA production build6.642seconds;16-file final-source public parity and all three public UAT suites passed. Error-level runtime log query returned no entries in its15-minute observation window; this is not comprehensive monitoring certification, drains unverified. Rollback `dpl_BuNCzTVEGJfbfNBpTWQJpJGXWVH3`. Status PUBLIC_DUMMY_DEMO_VALIDATED, not real-service activation or business readiness.
- Source: official web.dev layout guidance, MDN DOMMatrixReadOnly documentation, exact source/CI and browser acceptance. Other Saga products are unaffected. Residual: initial long tasks and real-device/field verification.

## 2026-09-06 — Saga Member navigation keyframe read batching

- Final verification: test-only PR CI 33986894177 and canonical main CI 33987457269 passed; reused Preview passed all three suites, final public lifecycle and final-source artifact parity passed. No duplicate deployment was required.
- Classification: CONFIRMED. Scope: Saga Member PUBLIC_DUMMY_DEMO; production runtime changed, no real backend, account, database, payment or provider activation.
- Navigation captures the actual in-flight indicator transform before route DOM writes, then supplies explicit Motion keyframes. Instrumented indicator style reads after writes decreased from 2 to 0. Visual dimensions and interaction contract are unchanged.
- Runtime application `e5609078d983c67a37b3febdf1becb9eaf37e720`, PR #74, canonical runtime `c57789a287bb3504402d2fa45fdffefe9f3cb185`; exact PR CI 33985408632 and canonical CI 33985760194 passed.
- Production `dpl_BuNCzTVEGJfbfNBpTWQJpJGXWVH3` Ready at the existing stable Saga Member Vercel URL; preview `dpl_C7T6PpEKVYBau4uvfFXbjhGwm89p`. Static PWA build 6.882 seconds; 16-file public artifact parity passed. Rollback remains `dpl_CvegfXP37dCzjXxbg4xw7EvN6UUP`.
- Test-only PR #75 settles route focus and finite motion before accessibility assertions. Earlier focus setup and mid-fade contrast checks failed; corrected steady-state checks pass without weakening thresholds. This is not an intermediate-frame accessibility certification. Final test source `89f24ae9a5df744d15e3f5d1aef492f8eb980883` has identical runtime inputs.
- Final local suite passed, including 256 unit tests. Focused browser coverage includes 20 viewport/route read cases, 10 timed interruptions and 5 DPR3 emulated-touch destinations; public navigation passed 38 checks and corrected lifecycle passed. Physical iOS and native screen readers remain unverified.
- CPU4x loopback ABBA lab synchronous-handler medians: baseline 32.55/33.15 ms versus candidate 14.20/13.30 ms. Overall frame-speed improvement is inconclusive; no field INP or network-throttled LCP claim. Initial long tasks remain.
- Existing Motion 13.2.0, MIT; no added dependency or service cost, bundle gzip +48 bytes, dependency audit 0 findings. Error-log scan returned 0 records; external log drains not checked.
- Source: Saga Member runtime, acceptance tests, exact-commit CI and deployment verification. Next scoped investigation: Home carousel initial offsetLeft measurement; preserve swipe, resize, keyboard and offline behavior. Other Saga products are unaffected.

## 2026-09-06 — Saga Member motion lifecycle and live preferences

- CONFIRMED: finished/cancelled animation controls are released, held buttons restore their original transform, stale route callbacks cannot restart motion, and live reduced-motion changes finish nonessential animations. Resize cancels the old navigation endpoint. Deferred visibility cleanup prevents an old dialog-close callback from closing a freshly reopened Pass, Points or Reward dialog. Existing visual design and membership data are unchanged.
- Source PR #73; application commits `a5de6c735953a4e4120e4f776cb9557bf139cc3b` and `5e93ffdd06cfcc0e8e77c3b1e9763564c2589e4d`; canonical main `78b5a8f372d96b9d34ff505e7c5362173ce49a38`. Exact final PR CI `33983447084` and main CI `33983779158` PASS. Source contract: `docs/MOTION_LIFECYCLE.md`.
- Validation: 254 unit tests and full final local regression PASS. Fourteen grouped motion checks across five mobile widths, 100 presses, three dialog families, live preference changes, keyboard, text 200%, warm offline and synthetic visibility transitions PASS locally, in Preview and publicly. Baseline retained 8 captured animations after reduced-motion change; candidate retained 0. This is not a heap-byte or field-performance measurement.
- Delivery: PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO. Validated Preview `dpl_9MXvJoKBnrATUv4BCWKAPmmegZQ1`; production `dpl_CvegfXP37dCzjXxbg4xw7EvN6UUP` Ready at https://saga-member-platform.vercel.app . Public parity PASS for 16 files; post-deploy error-log scan returned zero records. Rollback target: `dpl_7Bdtp3EurLJVhmvgLuR8YwJavtLz`. Promotion created a new deployment and its output was independently verified.
- Scope: Motion 13.2.0 MIT retained, no new dependencies or spend, +565 bytes gzip for the Motion bundle, cache v65-motion-lifecycle. Live payments, database and external providers remain OFF; no BUSINESS_READY claim.
- Residual: one initial local compound reward-recovery assertion failed without an established product cause; per-condition diagnostics were added and focused/full reruns passed. Native screen readers, physical iOS, full forced-colors visual audit, field INP and heap savings remain unverified. Follow-up: measure initial route rendering separately. W3C animation-from-interactions is an AAA criterion, not whole-site certification.

## 2026-09-06 — Saga Member navigation layout ordering

- CONFIRMED source: PR #72, application `adb1b5753ae9f5bac471ad9a710a56998f5eaf35`, canonical main `6ae36be04bbc5f91d8b602a7fd430fb37fae9774`. Navigation geometry is read before route DOM writes; compact icons, floating labels, parent-route selection and resize behavior remain unchanged. No feature or provider activation.
- Validation: 240 unit tests and full local regression PASS; 38 dedicated navigation checks across five mobile widths, keyboard, rapid transitions, reduced motion and resize PASS locally, in Preview and publicly. Dependency audit zero findings. Exact PR CI `33979688755` and canonical main CI `33980023032` PASS.
- Delivery: PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO. Preview `dpl_Em7mnV3qkSRxUeHXp5ZHQigG9iVP` passed UAT; production `dpl_7Bdtp3EurLJVhmvgLuR8YwJavtLz` Ready at https://saga-member-platform.vercel.app . Public parity PASS for 16 files including Motion bundle. Rollback: `dpl_7NnDqjma6986HfMP73VSAtcGxeCd`. Vercel promotion created a new deployment, so parity was checked after Ready rather than assuming identical build output.
- Performance: initial instrumented results looked faster, but two uninstrumented before/after pairs did not establish consistent total latency improvement. No percentage speedup, field INP improvement, or all-long-tasks-fixed claim. Follow-up: isolate remaining route style and motion initialization cost.
- Scope: PUBLIC_DUMMY_DEMO only; no new dependency or spend. Offline cache v64-navigation-layout; raw generated originals and local diagnostic evidence excluded from Vercel upload. Customer Platform, live payments, database, auth and providers remain OFF.

## 2026-09-05 — Saga Member photo recovery and enlarged-text reflow

- CONFIRMED: editorial photos on Quest/Reward now retain geometry on failure and expose an explicit keyboard-safe retry, without automatic request loops or cache-busting URLs. Quest progress and Reward summary reflow for text enlarged to 200%. Photo browser QA is included in test:all. Member-card state, balances and provider boundaries are unchanged.
- Source PR #70, application `6f9e2545f2be77022fa62ffcfebe32eaa829839e`; test-only PR #71, `b178f9a900d78bd5c0ac386a1ca96177c24354c4`; canonical main `e856dba0d92c99576cfead06c60bcb274982cae3`. Exact PR/main CI runs `33976400964`, `33976718147`, `33977254145`, `33977589426` PASS. The previously pending editorial-assets main CI `33974937030` is also confirmed PASS.
- Production changed to Vercel `dpl_7NnDqjma6986HfMP73VSAtcGxeCd`, Ready, https://saga-member-platform.vercel.app . Validated Preview `dpl_33LRdZmUBYSNSwgkUwXETueaZwbu` reused because the test follow-up did not change public assets. Public parity: 15 files PASS. Rollback: `dpl_Dq8V3vea2vz3i26kryY1hCWuPmBp`.
- Local isolated full regression and 237 unit tests PASS. Local/Preview/public focused UAT covers four routes and five canonical mobile viewports, text 200% at 320/430, image decode, keyboard recovery, delayed/rapid retry, first offline Quest/Reward after Home warm-up, and zero serious/critical axe findings on the normal matrix. Forced colors and rapid navigation checked locally. Scope is not WCAG certification or physical iOS/VoiceOver UAT.
- No dependency added; Motion 13.2.0 MIT retained, native HTML/CSS recovery, related runtime +893 bytes gzip. Dependency audit zero vulnerabilities; targeted credential scan PASS, not exhaustive. Lab CLS0 and twelve CPU4x post-render motion windows without long tasks; initial route-render long tasks remain a future optimization item, not claimed resolved. No field-performance or user-survey claim.
- Sources informing error capture and decorative-image semantics: https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/error_event and https://www.w3.org/WAI/tutorials/images/decorative/ . PUBLIC_DUMMY_DEMO only; no real data/provider activation, no paid service, not BUSINESS_READY. Next single slice: investigate initial Reward render performance.



## 2026-09-05 — Saga Member editorial page photography v2

- CONFIRMED, requested by Andreas: replace generic artwork with generated editorial photography. Quest and Reward use new coffee banners; Studio and Member Moments use prepared synthetic photographs. Eight responsive WebP derivatives total 191,478 bytes; original assets retained. Native text, controls, member-card preferences and loyalty behavior unchanged.
- Source PR #69, commit `ce79251db00c1f0a8ae6512d31b61c5296d89fd4`; canonical main `b936a0de47a81c2a05d977ecb083c32ad8dd404e`. PR quality run `33974643875` PASS. Local full regression and focused local/Preview/public browser checks PASS: four routes, five mobile widths, decoded images, no overflow, zero serious/critical axe findings. Public 12-file parity PASS. Main post-merge CI `33974937030` pending at this snapshot, not claimed green.
- Production changed: Vercel `dpl_Dq8V3vea2vz3i26kryY1hCWuPmBp`, Ready at stable https://saga-member-platform.vercel.app . PUBLIC_DUMMY_DEMO only; generated imagery is not actual outlet/product/customer photography. No paid service, backend/provider activation or real transaction. Not BUSINESS_READY. Rollback deployment `dpl_7jNe5QeJz89pb8aCg5sSgcNuA8eM`.
- No new dependency. Production dependency audit and targeted credential-pattern scan PASS; not an exhaustive security audit. Next: observe post-merge CI and continue page-specific improvements.


## 2026-09-05 - Saga Member: Jelajah dengan foto editorial

- CONFIRMED: PR #67 mengintegrasikan foto editorial sintetis pada Jelajah; source `9563ddcee00559aab8f31c1b0adf1a20b3775c43`, main artefak `5aa7d1765dfa08b307d72666225a95731f92c7ab`. Coffee menjadi kartu utama, Studio/Quest tetap ringkas; teks dan CTA terpisah dari foto. Foto diberi disclaimer AI, bukan foto outlet/produk asli. Label proximity tanpa geolokasi dihapus.
- Kartu melebar untuk teks 200% melalui container query; loading tidak mengubah geometri, error tetap menyisakan CTA, enam WebP diprecache. Search/filter/reset, query kembali dari detail, navigasi Coffee-Studio, dan kartu member tersimpan tetap terjaga. Tidak ada perubahan fitur/provider produk lain.
- Local check/build, 234 unit tests dan full browser regression PASS. Focused Preview UAT: lima viewport 320-430px, keyboard, target 44px, axe serious/critical 0, teks 200%, forced colors, delayed/error images, warm offline PASS. Lab CPU4x 24 pergantian filter: CLS 0, tanpa long task pada window interaksi. DPR2/3 local: pertama membuka Jelajah saat offline sesudah hanya Beranda dibuka tetap berhasil; desktop tetap satu canvas 430px. Bukan physical iOS/VoiceOver, sertifikasi WCAG, survei atau field LCP.
- Library baru: tidak ada. Motion 13.2.0 MIT tetap; picture/srcset dan CSS native. Enam aset total 97.650 byte, delta runtime +777 byte gzip terhadap baseline ternormalisasi; dependency audit 0 vulnerability. Riset: https://www.w3.org/WAI/tutorials/images/decorative/ , https://web.dev/articles/optimize-lcp , https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Containment/Container_queries .
- Preview `dpl_3DaZ9i88iEKUka3Kehvkx8fXDJA5` Ready, exact 14-file parity dan remote Jelajah UAT PASS. Koreksi instrumentasi audit CSP ada pada PR #68; aplikasi tidak melonggarkan CSP. Folder public identik, tree `45f85d2f30a62db8cf67637cc719bd0c8baba678`.
- SUDAH DEPLOY: Production `dpl_7jNe5QeJz89pb8aCg5sSgcNuA8eM` Ready pada https://saga-member-platform.vercel.app ; promosi Preview yang sama. Artefak source `5aa7d1765dfa08b307d72666225a95731f92c7ab`, canonical QA main `379225a0b375ea5db7c8074dc7704443c2b0edd1` memiliki public tree identik. PR #68 source `8d5261274219e48d2e5e66293491302d44967730`, exact CI `33970579494` dan main CI `33970922092` PASS. Public exact 14-file parity, full Jelajah UAT dan smoke lima viewport PASS; console/error backend/eksternal 0. Rollback tersedia ke `dpl_4uY3SuLduGAc6HcoVP6NBFEJD1ib`. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`; backend/auth/provider/data nyata OFF, PRODUCTION_ACTIVATED=false, BUSINESS_READY=false. Next slice: Quest editorial.

## 2026-09-05 - Saga Member: identitas kartu tanpa panel teks

- CONFIRMED source `fbb70797026acc55f123f5fe28d2144bd005d5d4`, PR #66 MERGED ke main `f06044444934433d1aad71a429f51b8dcb056ae0`; exact PR Quality CI `33963076236` PASS.
- Teks pada artwork mendapat halo kontras tipis tanpa kotak, simbol contactless mendapat garis luar dekoratif, dan label Member ID pada PNG tidak lagi transparan. Mode kontras tinggi menggunakan warna sistem tanpa artwork. Kartu atas tetap memakai desain tersimpan; kategori/geser hanya preview sampai Apply eksplisit.
- Local: 231 unit tests, browser regression, 35 desain x 5 viewport (320-430px) termasuk teks 200%, dan 35 ekspor PNG 1712x1080 PASS. Ekspor identik secara piksel pada mode normal versus forced-colors + teks 200%. Lima Polos DOM identik; raster berubah pada identitas. Axe serious/critical 0 dalam cakupan uji; bukan sertifikasi WCAG atau uji perangkat fisik iOS/VoiceOver.
- CPU4x local comparative soak: 900 pergantian desain, kartu aktif/fokus tetap, satu gambar preview, CLS 0, tanpa long task pada window interaksi; p95 waktu siap 42-49ms sebelum dan 46-50ms sesudah. Bukan jaminan field/slow-network. Upgrade cache v58/v59 ke v60 menjaga desain tersimpan dan Apply offline; exact module hashes diperiksa.
- Native CSS/SVG/Canvas; Motion 13.2.0 MIT tidak berubah. Tidak ada library/aset/provider baru pada rilis kartu; delta runtime +266 byte gzip, dependency audit 0 vulnerability. Riset heuristic: https://www.w3.org/WAI/WCAG21/Techniques/general/G18 dan https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-shadow .
- SUDAH DEPLOY: canonical main CI `33963396798` PASS. Preview `dpl_31HZh1bcer6S1JQNoWberAY7nC8t` lolos exact seven-file source parity dan remote card UAT sebelum promotion. Production `dpl_4uY3SuLduGAc6HcoVP6NBFEJD1ib` Ready pada https://saga-member-platform.vercel.app ; source parity, smoke lima viewport dan full public card UAT PASS. Diagnostik Chromium public: CLS 0, LCP 440ms unthrottled, tanpa long task pada window interaksi, request backend/external 0. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`.
- PUBLIC_DUMMY_DEMO; backend, auth/provider dan data nyata OFF. PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Rollback `dpl_AVcUTWmJaCdgd62LV9RmQhdtsK5w`, schema preference v2 tetap. Berikutnya: halaman Jelajah, integrasi aset editorial baru beserta crop mobile dan fallback/offline. Tiga aset yang baru digenerate belum dipasang pada rilis ini.


## 2026-09-05 - Saga Member: validasi ulang pemulihan gambar kartu

- CONFIRMED: source `573bd46af092c953ae7b0f6c401221e0d247c8df`, PR #65 MERGED ke main `ef7e4dd4542450543b66821c4dda15bf3a55ad06`. Exact PR CI `33957691208` PASS. Dua hold sebelumnya terisolasi pada timing simulasi sentuh dan penantian lifecycle worker di harness; bukan alasan menonaktifkan assertion atau menambah workaround klik pada aplikasi.
- Kartu aktif tetap ketika kategori/preview digeser. Loading/error/retry artwork, Apply setelah decode, penanganan unduhan macet tanpa PNG kosong, dan preference lokal tetap dipertahankan. Regresi upgrade exact baseline v58 ke v59 kini wajib di CI: kartu tersimpan bertahan, browse offline tidak mengganti kartu, dan Apply eksplisit bertahan setelah reload.
- Local check/build, 226 unit tests dan seluruh browser regression PASS. Lima viewport 320–430px; keyboard, reduced motion, zoom teks 200%, forced colors, retry/timeout/export/offline; Axe serious/critical 0. Window interaksi raster CPU4x: CLS 0 dan tanpa long task >50ms. Review normal 35 desain mempertahankan komposisi; raster memiliki perbedaan resampling kecil dari background ke decoded img, bukan pixel-identical.
- SUDAH DEPLOY: main CI `33958073124` PASS; Preview `dpl_35vhyg1u6qUwJTqCmJdy5RiQvHFo` lolos remote card UAT dan exact source parity sebelum promotion. Production `dpl_AVcUTWmJaCdgd62LV9RmQhdtsK5w` Ready, source main `ef7e4dd4542450543b66821c4dda15bf3a55ad06`, pada https://saga-member-platform.vercel.app . Stable source parity, lima viewport smoke dan full remote card UAT PASS; Axe serious/critical 0, request backend/external 0, offline browse/apply PASS. Diagnostik Chromium stable: CLS 0, LCP 612ms unthrottled, tanpa long task pada window interaksi. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`.
- Native Image/decode dan CSS; Motion 13.2.0 MIT tetap. Tanpa dependency/aset/provider/biaya baru; delta runtime gzip sekitar 2.1KB; audit dependency 0 vulnerability. Uji Chromium mobile synthetic, bukan survei, perangkat fisik iOS/VoiceOver atau field performance. Riset: https://web.dev/articles/service-worker-lifecycle dan https://github.com/microsoft/playwright/blob/v1.61.1/packages/playwright-core/src/server/frames.ts .
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Rollback ke deployment sebelumnya dengan schema preference v2 yang sama.


## 2026-09-05 - Saga Member artwork recovery: belum deploy

- Follow-up CONFIRMED: source terbaru `2ea81c0011802a39f5075c51bb4ae16df6133b7c`, draft PR #65 yang sama; 226 unit tests PASS. CI kandidat awal `33953135884` FAILED pada uji sentuh tambahan. Rehearsal upgrade PWA juga belum lolos saat reload offline; pemeriksaan controller/module-cache masih diperlukan. Perubahan fallback cache belum boleh disebut integration-validated. Release tetap HOLD; Production tidak berubah.

- CONFIRMED: source `0078b0f40cb7da34d6abb254211152c507539a1b`, draft PR #65 di repository saga-member, mengimplementasikan loading/error/retry gambar kartu, decode sebelum tampil, Apply menunggu gambar siap, bantuan yang mengikuti pembesaran teks, serta batas waktu unduhan tanpa menghasilkan kartu kosong. Browsing tetap hanya preview; kartu aktif tidak berubah tanpa Apply.
- Local: 224 unit tests PASS; regresi penuh dan uji artwork lima viewport/error/retry/timeout/export/zoom/offline lulus sebelum perluasan uji sentuh. Uji tambahan swipe lalu tap kategori masih RED dalam simulasi Chromium CPU4x. Gejala sama direproduksi pada Production lama; belum dipastikan apakah akar penyebab berada pada harness input atau aplikasi. Jangan menyebut semua UAT atau CI PASS.
- Status `IMPLEMENTED_NOT_DEPLOYED`; PR masih draft, belum merge dan belum Preview UAT. Production sehat sebelumnya tetap `dpl_62S5sGbHV3moHCyx51JH24ESQvGk` / source `92c93da151a149260e9ae258727002910a1acd6d` pada https://saga-member-platform.vercel.app . Next: selesaikan satu regresi sentuh ini pada branch yang sama, lalu ulangi seluruh gate sebelum release.
- Tanpa dependency atau biaya baru. Riset heuristic memakai MDN image.decode https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decode ; bukan survei/perangkat fisik. PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false.

## 2026-09-05 - Saga Member: simpan kartu dan kembali ke desain sebelumnya

- CONFIRMED dari reproduksi browser: sebelumnya kegagalan storage dapat terlihat sebagai Apply berhasil. Kini kartu aktif berubah hanya setelah penyimpanan dan pembacaan balik cocok; gagal simpan mempertahankan kartu aktif dan preview, dengan satu tombol Coba simpan lagi.
- Satu langkah kembali ke desain sebelumnya tersedia setelah Apply sukses, menampilkan nama tujuan. Undo juga harus berhasil disimpan; kegagalan bisa dicoba ulang. Undo berlaku untuk sesi berjalan, bukan riwayat akun permanen. Reset demo menghapus state undo.
- Live region tetap terpasang, fokus status terarah, pesan tidak hanya dibedakan lewat warna. Browsing kategori tetap preview-only; unduhan dan spotlight selalu memakai kartu aktif. CSS tap-grid lama yang tidak dipakai dihapus.
- Source `bb52209a392610fdada48c14c4e77748c5a98036`, PR #63. Local: 211 unit test; lima viewport; retry/undo/route/reload; keyboard; forced colors; zoom 200%; target 44px; failed-preview export exclusion; offline save/undo/reload. Axe serious/critical 0. CPU4x diagnostic: enam siklus touch apply/undo, CLS 0, tanpa long task >50ms atau animasi tersisa. Bukan uji perangkat fisik atau field metrics.
- Release main `92c93da151a149260e9ae258727002910a1acd6d`; PR #63 CI `33947277368` PASS. Test-only follow-up PR #64 (`d7cf47bf7c54b9834a6dfbce466ba30de8d87fe9`) menunggu final animation state sebelum full-page Axe; CI `33947676581` dan canonical main CI `33947882872` PASS. Run main sebelumnya `33947490867` gagal audit Reward Pocket dan tidak dipakai untuk deploy. Runtime Reward tidak berubah. Upgrade PWA lokal v57->v58 menjaga desain tersimpan dan tetap bekerja offline.
- Library tetap Motion 13.2.0 MIT dan platform storage API; tanpa dependency baru. Delta gzip empat file runtime +1529 bytes terhadap baseline, audit dependency 0 vulnerability. Review riset bersifat heuristic, bukan survei: MDN localStorage https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage dan W3C status messages https://www.w3.org/WAI/WCAG21/Understanding/status-messages .
- SUDAH DEPLOY: protected Preview `dpl_4dvXGjg1N2qyd9kgKQGcrjzF7EBm` lolos UAT sebelum promotion. Production `dpl_62S5sGbHV3moHCyx51JH24ESQvGk` Ready di https://saga-member-platform.vercel.app ; stable UAT PASS, HTTP200, app.js cocok dengan exact source dan cache v58. CPU4x stable diagnostic: LCP796ms, CLS0, long tasks0 pada window interaksi (bukan field/slow-network guarantee). Global storage denial lalu pemulihan juga lulus. Rollback tersedia ke `dpl_922msoyByZgWaSUeZak7USPNpusm` / source `630e9880f4ab6ee4c801fe89138447c5b91d6237`.
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF. PRODUCTION_ACTIVATED=false; BUSINESS_READY=false.

## 2026-09-05 - Saga Member: gesture continuity kartu

- CONFIRMED: preview kartu kini memperbarui isi picker saja. Kartu aktif, route, carousel, tombol panah, posisi scroll dan fokus tetap terjaga; Apply tetap satu-satunya tindakan yang mengganti kartu aktif.
- Native touch mendapat gerakan horizontal terbatas, pembatalan aman, vertical scroll, pinch zoom dan reduced motion. Kontras Apply pada forced colors diperbaiki; palet Polos C/E serta PNG export memakai teks lebih terbaca (base contrast 4.78:1 dan 4.96:1).
- Source `4ae8dbc10782ca4431235583e4645269af11a1e9`, PR #61; release main `630e9880f4ab6ee4c801fe89138447c5b91d6237`. Exact PR CI `33944604109` dan canonical main CI `33944780752` PASS, termasuk 208 unit tests dan full browser suite.
- SUDAH DEPLOY sebagai public dummy pada https://saga-member-platform.vercel.app . Preview `dpl_DbYkPjk9hqd1DMP5voJGzphe4N8m` lolos browser UAT sebelum promotion ke production `dpl_922msoyByZgWaSUeZak7USPNpusm`; stable URL UAT juga PASS: lima viewport, native touch/cancel/rapid wrap, zoom 200%, forced colors, offline artwork/browse/apply, Axe serious/critical 0, request backend/external 0. Tidak ada dependency baru.
- Audit harness `fc0af0e56f825fb0e3d051a8fd1c88ead17c1925` (PR #62) memperbaiki injection Axe agar cocok dengan CSP Preview; CSP aplikasi tidak dilonggarkan. Pengukuran Chromium unthrottled stable: CLS 0, LCP 476ms, tanpa long task pada window interaksi; bukan field performance atau uji perangkat fisik. Rollback tersedia ke release sebelumnya `28ede587ff63bfe92f20d79d964b2892379cd3f3`.
- Riset: W3C carousel pattern https://www.w3.org/WAI/ARIA/apg/patterns/carousel/ dan MDN pointer cancellation https://developer.mozilla.org/en-US/docs/Web/API/Element/pointercancel_event . Review bersifat heuristic, bukan survei pengguna.
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF. PRODUCTION_ACTIVATED=false dan BUSINESS_READY=false.


## 2026-09-05 - Saga Member: carousel preview kartu

- CONFIRMED, keputusan Andreas: tema menampilkan desain A langsung di bawahnya. Geser horizontal menampilkan B, C, D, E, lalu kembali ke A; navigasi keyboard dan tombol panah tersedia.
- Kartu aktif di atas tetap memakai desain tersimpan ketika tema atau preview berubah. Hanya tombol Ganti ke desain ini menerapkan pilihan; spotlight dan unduhan memakai kartu aktif.
- Source: `ded8459`, PR #60. Local validation: 208 unit test, tujuh tema, lima viewport mobile, drag, wrap, apply, reload, export, dan Axe serious/critical 0.
- Delivery: VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE. Canonical source `28ede587ff63bfe92f20d79d964b2892379cd3f3`; PR CI `33939894009` lulus. Production `dpl_2UELwMdmUswZXNPDmHAjtUxk6Gs7` Ready pada https://saga-member-platform.vercel.app. Remote card UAT lulus pada tujuh tema dan lima viewport, termasuk drag, wrap, apply, reload, spotlight, unduhan, dan Axe serious/critical 0.
- Backend/provider/data nyata tetap OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Tidak ada dependency baru.


## Tujuan dokumen

Menjelaskan control-plane boundary, pengguna, strategi, teknis, risiko, dan
status Saga Platform.

## Konteks dan status bukti

- Updated: 5 September 2026
- Delivery: `PRODUCTION_DEPLOYED` untuk fondasi tertentu
- Activation: `PRODUCTION_ACTIVATED` untuk fondasi yang dipakai;
  `NOT_PRODUCTION_ACTIVATED` untuk adapter/roadmap lain
- Business readiness: `NEEDS CONFIRMATION`; konteks saat ini internal-only

## Overview produk

Control plane SagaDev untuk product registry, identity, product account,
subscription, entitlement, audit, readiness, launcher, dan integration
contract.

Riwayat frontend public dummy V42 Rute Hari Saga berasal dari Saga Member main
`12e578e4cf7ca02326c5cf3bcc7ee65a9c2ed551` (PR #59), Preview
`dpl_F4aovXzG5KxrFic4TthNbeo3vbUk`, dan production deployment
`dpl_CduvhAn3kkzC9M3JJzmSJ7qkfn3a` pada stable URL
`https://saga-member-platform.vercel.app`. Planner progresif di Jelajah memberi
pilihan Coffee ke Studio atau Studio ke Coffee. Pilihan radio hanya mengubah
preview sampai dikonfirmasi; sesudahnya timeline dua langkah menghubungkan
Rencana Mampir V38 dan Brief Pocket V39, lalu meneruskan CTA ke langkah yang
belum selesai.

Full 208 test, PR CI `33938863948`, main CI `33939064126`, lima viewport,
invalid-input recovery, reload memory, 200% zoom, forced colors, reduced motion,
offline, hash lima artifact, dan production UAT lulus tanpa Axe
serious/critical atau backend request. Motion memakai bundle `motion@13.2.0`
yang sudah ada; tidak ada dependency baru. Rute tetap memory-only, hilang saat
reload/reset, dan tidak membuat booking, transaksi, atau perubahan Points.
Emoji Akses cepat tetap glyph natural tanpa kotak internal.
Backend/auth/provider/data nyata tetap OFF, `PRODUCTION_ACTIVATED=false`, dan
`BUSINESS_READY=false`.

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

Frontend public dummy terkini adalah V40 Reward Target dari Saga Member main
`14dba0de07fcafe0d6e08aa4a4c1b02f81005a5f` (PR #57), Preview
`dpl_8pqpU61SvCcPvQAVoCLe5zt1kwRU`, dan production deployment
`dpl_EFcJdeE7pLCxuZGR8u7hrynGYMjv` pada stable URL
`https://saga-member-platform.vercel.app`. Reward dengan Points belum cukup
dapat dijadikan satu target memory-only dengan saldo, gap, meter aksesibel,
handoff Quest, hapus target, dan pemulihan fokus. Target hilang saat reload dan
tidak menambah saldo atau membuka reward nyata.

Full 201 test, PR CI `33932567681`, main CI `33932761922`, lima viewport,
keyboard, rapid action, invalid-ID recovery, 200% zoom, forced colors, reduced
motion, offline, artifact hash, dan remote UAT lulus; backend/auth/provider/data
nyata tetap OFF. Emoji Akses cepat tetap glyph natural tanpa kotak internal,
`PRODUCTION_ACTIVATED=false`, dan `BUSINESS_READY=false`.

Frontend public dummy V39 Studio Brief Pocket sebelumnya berasal dari Saga Member
main `8019eaf550bb6eb1c8e620e5372f2cf1ab782cd5` (PR #56), Preview
`dpl_4jEJu9Q74fvhCN4NbdjVYK8Un5ZY`, dan production deployment
`dpl_296rvEny9sGj3DfoeJejRqFMLmuV` pada stable URL
`https://saga-member-platform.vercel.app`. Entry Studio membuka halaman foto
nyata dengan formulir radio native untuk personal, produk, atau bareng; hasil
menampilkan tiga arahan foto, status konfirmasi, edit, dan handoff checklist.

Brief Pocket hanya menggunakan memori tab dan tidak membuat booking, transaksi,
storage write, atau request backend. Reload mengembalikan fixture. Jadwal,
ketersediaan, harga, serta operasional nyata tidak diklaim. Emoji Akses cepat
tetap glyph natural tanpa fixed box. Full 197 test, PR/main CI, lima viewport,
keyboard, invalid-value recovery, 200% zoom, forced colors, reduced motion,
offline, artifact hash, dan remote UAT lulus; backend/auth/provider/data nyata
tetap OFF, `PRODUCTION_ACTIVATED=false`, dan `BUSINESS_READY=false`.

Frontend public dummy V38 Coffee Detail + Rencana Mampir berasal dari
Saga Member main `1791e0319b1dc36d6b40f61e2e4a3b78cfd5c7a5` (PR #55), Preview
`dpl_BfSV2b8jTf1bs38HHhhksSzzM4d5`, dan production deployment
`dpl_wT3spJ7gRBymCnANKwR4MuvFXweQ` pada stable URL
`https://saga-member-platform.vercel.app`. Entry Coffee pada banner Beranda,
Akses cepat, dan kartu Jelajah kini menyatu ke detail outlet dengan foto nyata,
menu demo, radio waktu native, konfirmasi memory-only, edit, serta CTA Quest.

Rencana Mampir tidak membuat reservasi atau transaksi, tidak menulis storage,
dan kembali ke fixture saat reload. UI tidak mengklaim jam buka, jarak, stok,
harga transaksi, atau ketersediaan outlet nyata. Full 193 test, PR CI
`33925578250`, canonical-main CI `33925766363`, lima viewport, keyboard,
rapid tap, 200% zoom, forced colors, reduced motion, offline shell, Preview dan
production artifact hash, serta remote production UAT lulus. Axe
serious/critical, overflow, broken image, storage write, dan backend/provider
request tetap nol. Cache offline `v51-coffee-visit-plan`.

Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; backend, auth, transaksi,
data pelanggan, QRIS, Push, NFC, printer, dan provider nyata tetap OFF.

V37 Bare Quick Emoji sebelumnya berasal dari Saga Member main
`cd5bd4bcc5ce0bf836aad72f3a4dd02ae6c97842` (PR #54) dan production
deployment `dpl_GXQ4dDBK7YxehDZ3WoRDu8KN3V5f` pada stable URL
`https://saga-member-platform.vercel.app`. Empat emoji Akses cepat kini memakai
ukuran glyph natural tanpa fixed width/height, padding, background, border,
radius, atau shadow. Kartu induk tetap menjadi target sentuh yang aksesibel.

Full 190 test, PR CI `33919122407`, canonical-main CI `33919344362`, UAT lokal
lima viewport, dan remote production UAT lulus. Axe serious/critical, overflow,
broken image, console error, dan backend request tetap nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data pelanggan, QRIS, Push, NFC,
printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V36 Home Install Nudge sebelumnya berasal dari Saga Member main
`9a5393d73bdc7b459d5522991da94a955b6f692d` (PR #53), Preview
`dpl_2nKEoPK4DiTX7hEFD1uNFZhK63E8`, dan production deployment
`dpl_AnBsZh4DKwh26ejsZdT5zMixHwqb` pada stable URL
`https://saga-member-platform.vercel.app`. Beranda menampilkan satu ajakan
install inline setelah dua perpindahan route, hanya ketika prompt Chromium
tersedia atau iPhone Safari dapat memakai panduan manual. Capability yang hadir
sebelum engagement tidak merender ulang Beranda atau menggeser fokus. Dismiss
bersifat memory-only dan prompt tetap one-use serta gesture-only.

Full 190 test, PR CI `33916490835`, canonical-main CI `33916725768`, UAT lima
viewport plus text resize 200%, arrival stability, rapid tap, iOS Safari,
offline, Preview artifact hash, dan remote production UAT lulus dengan Axe
serious/critical 0, overflow 0, cookie/storage write 0, serta backend request 0.
Cache offline `v50-home-install-nudge`. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan provider
nyata tetap OFF. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V35 Install Concierge sebelumnya berasal dari Saga Member
main `bb7ed733e4481bf7b0c9391c507a2c2d30bd4ede` (PR #51 dan #52), Preview
`dpl_69aXzYoqu6zC2yjt9ywJkYrLhTdV`, dan production deployment
`dpl_BwnL5PA2QqsosvMTbdpZVcLNuBog` pada stable URL
`https://saga-member-platform.vercel.app`. Profil membuka Pusat Instalasi yang
membedakan status terpasang, prompt-ready, dismissed, unavailable, serta
panduan iPhone Safari empat langkah. Prompt Chromium hanya dipanggil setelah
gesture pengguna dan tidak ditampilkan bila capability belum tersedia.

Manifest PWA, icon 180/192/512, Apple metadata, standalone detection, offline
cache `v49-install-contrast`, focus safety, target 44 px, reduced motion,
forced colors, dan contrast hardening diverifikasi. Full 188 test,
canonical-main CI `33912518901`, UAT lima viewport plus text resize 200%,
synthetic install lifecycle, iOS Safari, Preview artifact, dan remote
production UAT lulus dengan Axe serious/critical 0, overflow 0, dan backend
request 0. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V34 Pusat Data Demo sebelumnya berasal dari Saga Member main
`bb8307c1ee359a2c340ccbf3b4f9af388798b35d` (PR #50), Preview
`dpl_D9njs8ouSsEggD1mxHiWeF3aqZ31`, dan production deployment
`dpl_2HGvjcGmgAAp14CZvQAcYZtAFvjy` pada stable URL
`https://saga-member-platform.vercel.app`. Profil sekarang membuka route
Privasi & data dengan disclosure dummy, inventaris data contoh, penjelasan
fixture/browser/server, export JSON browser-only yang mengecualikan identitas,
session, provider, credential, dan token, serta reset perubahan demo.

Reset memakai native alert dialog dengan fokus awal pada Batal, Escape dan
focus return. Perubahan kartu serta checklist Studio dibersihkan secara lokal;
tidak ada akun atau data server yang dihapus. Full 184 test, PR CI
`33904736090`, canonical-main CI `33904955721`, UAT lokal lima viewport plus
text resize 200%, Preview artifact UAT, dan remote production UAT 390 px lulus
tanpa overflow, request backend, response gagal, atau temuan Axe
serious/critical. Cache offline `v47-demo-data-center`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data pelanggan, QRIS, Push, NFC,
printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V33 Notification Rhythm sebelumnya berasal dari Saga Member
main `cda26b0aa5291cd00003f56d3377a9de4219b441` (PR #49), Preview
`dpl_J27d9AiWjLGwJ4iaZF9AtyebH7Nq`, dan production deployment
`dpl_7kv65g8maCeT8mEq2t6HnWNQwKi3` pada stable URL
`https://saga-member-platform.vercel.app`. Profil sekarang membuka route
Notifikasi dengan tiga kategori kabar dan tiga opsi jam tenang. Preview Inbox
merangkum pilihan aktif; kondisi semua-off menjelaskan bahwa Inbox tetap dapat
dibuka manual dan menyediakan satu pemulihan default.

Perubahan berlaku langsung hanya dalam memori tab dan reset saat reload;
tidak ada storage write, permission prompt, API, atau provider call. Native
checkbox switch/radio, live region, focus recovery, target 44 px, reduced
motion, dan cache offline `v46-notification-rhythm` diverifikasi. Full 179
test, PR CI `33898631243`, canonical-main CI `33898836214`, local UAT lima
viewport plus text resize 200%, Preview artifact UAT melalui jalur terlindungi,
serta remote production UAT 390 px lulus tanpa overflow, request backend,
response gagal, atau temuan Axe serious/critical. Runtime tetap
`PUBLIC_DUMMY_DEMO`; Push provider, backend, auth, transaksi, data pelanggan,
QRIS, NFC, printer, dan pilot nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V32 Reward Passbook Recovery Lab sebelumnya berasal dari Saga Member main
`e1c54a6a6ea4bc2a3766af516fc17911e3ff9c37` (PR #48), Preview
`dpl_8BiwmoLjfu3Xi4L6C5rEQm8Z5HS9`, dan production deployment
`dpl_5837edXEQ5NRDfTpuPcGv318f6aB` pada stable URL
`https://saga-member-platform.vercel.app`. Disclosure public dummy menyediakan
kondisi `Aktif`, `Kosong`, dan `Gangguan` tanpa mengubah fixture atau data.
Empty state memiliki jalan ke katalog; gangguan memakai alert dan retry yang
memberi loading struktural lalu memulihkan reward aktif.

State hanya berada di memori tab. Native button, `aria-expanded`,
`aria-pressed`, live region, target 44 px, dan motion transform/opacity 160 ms
menjaga aksesibilitas. Navigasi saat retry membatalkan timer dan mengembalikan
state ke gangguan yang dapat dicoba ulang sehingga tidak ada stale update.
Full 175 test, PR CI `33893637829`, canonical-main CI `33893844012`, local UAT
lima viewport plus text resize 200%, serta remote production UAT
320/360/375/390/430 px lulus tanpa overflow, request backend,
page/console/request failure, atau temuan Axe serious/critical. Saldo tetap
128 dan cache offline berubah ke `v45-reward-recovery`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V31 Reward Passbook sebelumnya berasal dari Saga Member main
`1ce0242239cef53234bee58b73c2f99e97ea03c3` (PR #47), Preview
`dpl_LoZuWuXrwKwi4GmKkSRaY7gUHzyp`, dan production deployment
`dpl_BPs9noWMA1cZUVirdDPmNP5nvgcu` pada stable URL
`https://saga-member-platform.vercel.app`. Reward milik pengguna kini disusun
sebagai passbook: pass aktif dominan memuat status, expiry, referensi demo
tersamarkan, progres tiga tahap, serta CTA dialog, sedangkan riwayat terminal
dipisahkan di bawah dengan alasan penyelesaian dan tanpa CTA.

Presenter mengklasifikasikan status unknown/expired secara fail-closed ke
riwayat. Dialog native menandai reward sebagai demo yang tidak berlaku untuk
transaksi, menjaga focus trap, dan mengembalikan fokus ke pemicu. Saldo tetap
128 dan tidak ada request backend. Full 170 test, PR CI `33888107426`,
canonical-main CI `33888310677`, local UAT lima viewport dan text resize 200%,
serta remote production UAT 320/360/375/390/430 px lulus tanpa overflow,
request backend, page/console error, atau temuan Axe serious/critical. Cache
offline berubah ke `v44-reward-passbook`. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V30 Reward Pocket sebelumnya berasal dari Saga Member main
`64da605fe707b44f6ebf781e7c17250f10a8026e` (PR #46), Preview
`dpl_71xjbvjUpWHfvpj7HUqkaqRHqpqN`, dan production deployment
`dpl_3q6jh5d7apx4NgiBgYmJFVHqQMEL` pada stable URL
`https://saga-member-platform.vercel.app`. Penukaran Reward eligible kini
membuat pocket persisten selama tab aktif, bukan feedback sementara. Pocket
menjelaskan reward, biaya Points, referensi demo tersamarkan, serta tiga
langkah handoff ke crew. Dialog native `Tampilkan ke crew` menandai artefak
sebagai demo yang tidak berlaku untuk transaksi; pengguna dapat membatalkan
simulasi dan fokus kembali ke kontrol pemicu.

State hanya berada di memori tab, refresh menghapusnya, saldo tetap 128, dan
tidak ada request backend. Dialog ditutup ketika halaman tersembunyi, melalui
Escape, backdrop, atau tombol; focus trap/recovery dan target sentuh minimal
44 px diverifikasi. Full 165 test, PR CI `33881639119`, canonical-main CI
`33881866552`, local UAT 320/360/375/390/430 px, dan remote production UAT
lima viewport lulus tanpa overflow, request backend, page error, atau temuan
Axe serious/critical. Cache offline berubah ke `v43-reward-pocket`. Runtime
tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V29 Quest Trail sebelumnya berasal dari Saga Member main
`8fadccbf96665701b2ecf1fb98a98a762ccdde65` (PR #45), Preview
`dpl_64f8r2QuYCgRUh2k8Zm5m8yCMf7S`, dan production deployment
`dpl_57MXHh67m11Pr6twjpyMRTGcDD4V` pada stable URL
`https://saga-member-platform.vercel.app`. Halaman Quest mengganti detail
sederhana menjadi journey tiga milestone, progressbar determinate, syarat
kunjungan eksplisit, dan tindakan kontekstual. Pengguna demo dapat mencoba
progres `1/3` sampai `3/3`, membuka CTA Reward demo, lalu mengulang simulasi.

State hanya berada di memori tab dan tidak ditulis ke storage atau backend.
Presenter menjepit target maksimal 12, count 0-target, nama 64 karakter, dan
fallback aman untuk input rusak. Motion hanya transform/opacity serta mati
pada reduced motion; status perubahan memakai live region sopan. Full 160
test, PR CI `33876021566`, canonical-main CI `33876311688`, local UAT
320/360/375/390/430 px, dan remote production UAT 320/390/430 px lulus tanpa
overflow, request backend, console error, atau temuan Axe serious/critical.
Cache offline berubah ke `v42-quest-trail`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V28 Borderless Quick Emoji sebelumnya berasal dari Saga
Member main `7c72ebdbbb3088820dcbb56fcc1df3f9b90fd477` (PR #44), Preview
deployment `dpl_3Rz3pgJQPQK8Uk5ts1FmZWhJz2nk`, dan Vercel production deployment
`dpl_HzgJW5FataWqGqL6qsJuyJio8AeX` pada stable URL
`https://saga-member-platform.vercel.app`. Coffee `☕`, Studio `📸`, Reward
`🎁`, dan Quest `🎯` kini tampil langsung tanpa background, border, radius,
shadow, atau warna wadah per-kategori. Ruang alignment 42 px atau 38 px pada
layar kompak tetap dipertahankan tanpa permukaan visual; target sentuh tetap
berada pada kartu utama dan minimal 44 px.

Full 157 test, PR CI `33872331545`, canonical-main CI `33872492134`, local UAT
320/360/375/390/430 px, serta remote production UAT 320/390/430 px lulus tanpa
overflow, console error, broken image, atau temuan Axe serious/critical. Cache
offline berubah ke `v41-borderless-quick-emoji`. Tidak ada dependency, aset,
request jaringan, atau animasi baru. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V27 Home Next Step sebelumnya berasal dari Saga Member main
`71b12cbdbbb9248f75fbce1a0ea3c0c486561f69` (PR #43), Preview deployment
`dpl_Cqwyq7CYcTuZWHXvhEuK6158BNiT`, dan Vercel production deployment
`dpl_9f8jfjtWT91is9F1Rqbfh6VztSgz` pada stable URL
`https://saga-member-platform.vercel.app`. Setelah Akses cepat, Beranda kini
menampilkan satu kartu keputusan `Lanjutkan dari sini`. Fixture demo memilih
quest Coffee aktif, memperlihatkan rute Coffee -> Quest -> Reward, status
`1 dari 3 selesai`, dan CTA langsung ke detail quest.

Presenter deterministik memprioritaskan quest aktif, booking terkonfirmasi,
reward eligible, lalu fallback Jelajah. Nama quest/tenant/reward dibatasi 64
karakter dan biaya reward non-finite ditolak. Progressbar menyediakan
`aria-valuenow` serta `aria-valuetext`; CTA minimal 44 px dan label `Data
contoh` mencegah klaim data nyata. Full 157 test, PR CI `33870609104`,
canonical-main CI `33870891068`, local UAT lima viewport, serta remote
production UAT 320/390/430 px lulus tanpa overflow, console error, atau temuan
Axe serious/critical. Cache offline berubah ke `v40-home-next-step`.

V26 Quick Access Emoji tetap menjadi fondasi Akses cepat. Empat kartu memakai
Coffee `☕`, Studio `📸`, Reward `🎁`, dan Quest `🎯`; font stack
memprioritaskan `Apple Color Emoji`, dengan fallback `Segoe UI Emoji` dan
`Noto Color Emoji`; bentuk glyph akhir mengikuti sistem operasi pengguna.

Emoji ditandai dekoratif (`aria-hidden`) sehingga label teks tetap menjadi
accessible name. Kotak ikon berukuran 42 px dan 38 px pada breakpoint kompak,
sementara target sentuh kartu tetap minimal 44 px. Ikon fungsi, sistem, dan
bottom navigation tetap memakai Feather. Full 154 test, PR CI `33868554807`,
canonical-main CI `33868783645`, local UAT 320/360/375/390/430 px, serta remote
production UAT 320/390/430 px lulus tanpa overflow, console error, broken
image, atau temuan Axe serious/critical. Cache offline berubah ke
`v39-quick-access-emoji`. Tidak ada dependency, aset eksternal, atau request
jaringan baru. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V25 Compact Navigation + Floating Label sebelumnya berasal dari Saga Member
main `9a3661781158723b43da2bcb6e1960b4edad607a` dan tetap menjadi fondasi bottom
navigation pada V26.

V24 Icon-only Bottom Navigation sebelumnya memakai source main
`f19bf3e2f0cd77d0a94af1021668aa342dc05feb`; presentasi label di dalam tinggi
navbar telah digantikan oleh kontrak V25 berdasarkan koreksi langsung Andreas.

Frontend public dummy V23 sebelumnya adalah Member Card Preview & Apply dari Saga
Member main `81e89e6b361277fda5370e51749e3bcc62f8cf3d` (PR #39), Preview
deployment `dpl_2hcsR9LCdEi45WaQmfySuSmtuwRU`, dan Vercel production
deployment `dpl_BgEheE2Ue2fnGp8WJj9S9zv8roWp` pada stable URL
`https://saga-member-platform.vercel.app`. UI memisahkan dua state: kartu
aktif yang tersimpan dan desain yang sedang dipreview. Stepper tema serta
pilihan varian tidak lagi langsung mengubah preference. Perubahan baru berlaku
setelah pengguna menekan `Ganti ke desain ini`; `Tampilkan Pass` dan ekspor
PNG tetap memakai kartu aktif sampai aksi tersebut dilakukan.

Full 150 test, PR CI `33860460618`, canonical-main CI `33861023848` attempt
2, local UAT 320/360/375/390/430 px, dan remote production behavior UAT lulus
tanpa overflow atau console error. Attempt pertama main CI timeout pada
download Chromium sebelum test berjalan; rerun exact commit lulus. Cache
offline berubah ke `v36-member-card-preview-apply`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

Frontend public dummy V22 sebelumnya adalah Jelajah Hero Typography dari Saga
Member main `7c82148e599fea9cd42eac1f8cb7f5bf617f310e` (PR #38), Preview
deployment `dpl_FeLM9U2xEoSs6SKTrDE9FcBfyANX`, dan Vercel production
deployment `dpl_9qWcZtJ52cpwoRPgMXEVapJgpHhL` pada stable URL
`https://saga-member-platform.vercel.app`. Hero Jelajah yang sebelumnya
terbungkus otomatis menjadi tiga baris kini memakai dua baris yang disengaja,
rata tengah, dengan ukuran responsif 28-32 px dan line-height 1.12. Eyebrow,
judul, dan deskripsi memiliki jarak vertikal yang lebih tenang; deskripsi tetap
dibatasi agar nyaman dibaca pada mobile.

Full 148 test, PR CI `33858203877`, canonical-main CI `33858782863`, local UAT
320/360/375/390/430 px, serta remote production UAT 320/390/430 px lulus tanpa
overflow atau console error. Cache offline berubah ke
`v35-explore-typography`. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth,
provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata
tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V21 sebelumnya adalah Member Card readability refinement
dari Saga Member main `a788cce43fda9f12d12c4fbb9db9f69bf492f841`
(PR #37), Preview deployment `dpl_5p56eUtwhA8xw1keEskXkntcPEVi`, dan
Vercel production deployment `dpl_APiyaJGgW9v4BecMyGEHWT3TkELz` pada stable URL
`https://saga-member-platform.vercel.app`. Saga Pass memakai satu renderer
CR80 untuk halaman utama dan dialog crew, dengan tujuh tema dan lima varian
per tema. Polos dibangun dari CSS primitives; enam tema lain memakai total 30
background WebP lokal. Nama, tier, Member ID, NFC label, dan ikon contactless
tetap menjadi overlay dinamis, bukan bagian dari artwork.

V21 menghapus panel rectangle dari seluruh overlay pada preview dan PNG, lalu
menjaga keterbacaan memakai stroke adaptif. Pemilih tema kini menampilkan satu
tema per baris dengan tombol sebelumnya/berikutnya yang siklik dan target sentuh
44 px; lima varian tema aktif tetap terlihat di bawahnya. Cache offline berubah
ke `v34-member-card-stepper`.

Pilihan theme/variant disimpan lokal dengan fallback Polos A. Pengguna dapat
mengunduh PNG demo 1712×1080 secara lokal di browser tanpa upload data. Points,
XP, dan disclaimer tetap di luar muka kartu; tidak ada chip pembayaran, QR,
barcode, magnetic stripe, atau klaim transaksi.

147/147 test, PR CI `33856318571`, canonical-main CI `33856691901`, local UAT
320/360/375/390/430 px, remote production UAT seluruh tujuh tema, persistence,
dialog parity, export, Axe, overflow, broken-image, dan console checks lulus.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V19 sebelumnya adalah Studio Session Planner dari Saga
Member main `2858d5aea39008386387cf58668808386247edfd` (PR #35), Preview
deployment `dpl_2veZGPbrgdxPxZrEtPHsv6irbnxa`, dan Vercel production
deployment `dpl_GDMmw3ZZPUiAEgWfcthzdbiNniHw` pada stable URL
`https://saga-member-platform.vercel.app`. Halaman Booking yang sebelumnya
pasif kini memiliki ringkasan sesi, progress native, serta tiga checklist
persiapan: mood foto, outfit utama, dan datang lebih awal. Setiap baris memakai
checkbox HTML native dengan label penuh sebagai target sentuh, status live,
serta Feather icon.

State checklist hanya memakai `sessionStorage`, memfilter ID yang dikenal, dan
berakhir bersama tab demo. Handoff Saga Book tetap simulasi, diberi copy yang
jelas, dan tidak mengubah booking. Tidak ada dependency, endpoint, atau data
produksi baru.

140/140 test, PR CI `33842387433`, canonical-main CI `33842819870`, local UAT,
public UAT 320/360/375/390/430 px, keyboard, session persistence, Axe,
touch-target, offline shell, image fallback, serta Vercel inspection lulus.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy terkini adalah V18 Editorial Story Banner dari Saga
Member main `1e8d64783cebdd21213c5c661d93a3dfd3235e41` (PR #34), Preview
deployment `dpl_Fe54oYSjCaUGohBxUKp3gFaDm1Vd`, dan Vercel production
deployment `dpl_3AG6DEUdFz12SrPfTq3twcAqEzw7` pada stable URL
`https://saga-member-platform.vercel.app`. Empat slide Beranda memakai foto
penuh dengan solid scrim, tinggi 160–168 px, radius 24 px, hierarki copy
eyebrow/judul/body/CTA, serta Feather `arrow-up-right`. Panel kaca inset yang
sebelumnya menutup foto sudah dihapus.

Kontrol pause, previous/next, swipe, autoplay empat detik, off-screen pause,
dan reduced-motion tetap aktif. CTA serta kontrol minimal 44 px. 136/136 test,
PR CI `33840636398`, canonical-main CI `33840964968`, local UAT, public UAT
320/360/375/390/430 px, Axe, geometry banner, offline shell, dan Vercel
inspection lulus. Protected Preview tidak dapat digunakan sebagai anonymous
browser evidence karena Deployment Protection; artefak yang sama dipromosikan
setelah exact-main CI hijau lalu diverifikasi pada stable public alias.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V17 sebelumnya adalah Inbox Center dari Saga Member main
`537efb165da794fdebb881f74748fa1dcf60b8e9` (PR #32/#33), Preview deployment
`dpl_4RpC7DeFjPGhf1gQZ1QZmdZYV1yn`, dan Vercel production deployment
`dpl_5b4D5EseVase3sVv3pbVx6sruzUd` pada stable URL
`https://saga-member-platform.vercel.app`. Inbox memakai overview espresso
dengan unread count, empat filter, kelompok Hari ini/Minggu ini/Sebelumnya,
baris kategori, waktu, body ringkas, dan deep-link ke route Saga terkait.

Membuka kabar menandainya sudah dibaca untuk sesi dummy. Aksi bulk memperbarui
overview, empty state, dan badge Profil; status diumumkan melalui polite live
region. Semua target sentuh minimal 44 px, motion hanya opacity/transform
100–180 ms, reduced-motion/forced-colors didukung, dan tidak ada dependency
baru. Push tetap OFF dan UI menyatakannya secara eksplisit.

133/133 test, PR CI `33838157171`/`33839130337`, canonical-main CI
`33838557658`/`33839466275`, local dan public UAT 320/360/375/390/430 px,
Axe nol serious/critical, offline shell, serta Vercel Preview/production
inspection lulus. Remote UAT pertama menemukan overflow 4 px pada 320 px;
hotfix PR #33 menutupnya dan test kini mengukur layout setelah Inbox dibuka.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V16 sebelumnya adalah Points Ledger dari Saga Member main
`373742e361a7e702f25c71c7f2ec9edcfb9e6540` (PR #31), Preview deployment
`dpl_F8zpHNeYjh1Nt415Jv6Huk4DTmW8`, dan Vercel production deployment
`dpl_FttVUMWWb8JhwyCNFZxXHA2KY6eL` pada stable URL
`https://saga-member-platform.vercel.app`. Aktivitas kini memakai pola ledger
mobile: saldo menjadi anchor utama, diikuti agregat masuk/dipakai/diproses,
filter empat keadaan, kelompok tanggal, baris dengan arah Points, serta detail
native bottom sheet berisi sumber, status, waktu, dan referensi bertopeng.

Pola informasi mengambil prinsip daftar yang mudah dipindai dan detail on
demand; tidak memakai grafik karena fixture sederhana belum memerlukan analisis
tren. Seluruh nilai tetap berasal dari presentation model dan dummy fixture,
bukan kalkulasi ledger produksi. Motion dialog hanya opacity/transform
140–160 ms, menghormati reduced-motion, dan tidak menambah dependency baru.

129/129 test, PR CI `33834451555`, canonical-main CI `33834835680`, audit
dependency nol vulnerability, exact Preview artifact verification, local UAT,
dan public UAT 320/360/375/390/430 px lulus tanpa overflow, console, page,
atau runtime error. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

Frontend public dummy V15 sebelumnya adalah Human Copy & Moments dari Saga Member
main `d6efc0394f0c991d64dd657c4614b7fdc9dee048` (PR #30), Preview deployment
`dpl_4FBadqpkqVD4qmRfFTcJHHwxPupy`, dan Vercel production deployment
`dpl_DEZprmybhdvs1MZrE1ShFfUpAXNA` pada stable URL
`https://saga-member-platform.vercel.app`. Carousel Beranda memuat empat cerita
yang ringkas: Kopi Saga Salak, Member Moments, Quest minggu ini, dan Saga
Studio. Member Moments serta Quest memakai photographic-style dummy asset
responsif 480/960 WebP, solid scrim berkontras tinggi, CTA minimal 44 px, dan
fallback yang tetap aman saat gambar gagal dimuat.

Copy aktif pada Beranda, Jelajah, Pass, Reward, Profil, Aktivitas, Inbox,
Quest, Detail Reward, Booking, serta feedback/error diubah dari istilah internal
dan frasa generik menjadi bahasa Indonesia yang singkat, kontekstual, dan
berorientasi tindakan. Runtime disclosure kini berbunyi `Mode demo · semua data
hanya contoh`. Tidak ada endpoint, provider, auth, backend, atau dependency
runtime baru; Motion tetap 13.2.0.

124/124 test, PR CI `33831396702`, canonical-main CI `33831772203`, audit
dependency nol vulnerability, exact Preview asset verification, local UAT,
dan public UAT pada 320/360/375/390/430 px lulus. Axe serious/critical,
overflow, broken image, undersized target, unexpected HTTP, console, dan page
error semuanya nol. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

Frontend public dummy V14 sebelumnya adalah Reward Route dari Saga Member main
`8221b86893b0a9bde620fb156ed3ee7f89b0a9ed` (PR #29), Preview deployment
`dpl_GMQd4Je32A7BwD6gL33eEvx7XX4p`, dan Vercel production deployment
`dpl_7tL3XVMo1NcFbEgEi3BhJzFdEgt4` pada stable URL
`https://saga-member-platform.vercel.app`. `Saga Match` memberi satu scan
tentang reward yang cocok, recoverable, atau terminal. Reward Store sekarang
mendahului Quest dan tiap card menampilkan status, alasan, biaya, saldo dummy,
serta next step bila aman.

State kurang Points menampilkan selisih 22 Points dan CTA `Jelajahi Coffee`;
syarat booking memakai next-step fixture ke Studio. Final stock dan expired
tidak memakai disabled button. Adaptor Motion juga mengubah array keyframe
Web Animations menjadi property-indexed keyframes sehingga filter, feedback,
dan empty state tidak lagi memicu exception browser. Tidak ada dependency baru;
Motion tetap 13.2.0 dan Base UI Collapsible hanya dievaluasi.

121/121 test, PR CI `33828131461`, canonical-main CI `33828444039`, audit
dependency nol vulnerability, Preview artifact verification melalui akses
bypass resmi Vercel, local UAT, dan public UAT pada 320/360/375/390/430 px
lulus. Axe serious/critical, overflow, undersized target, unexpected HTTP, dan
page error semuanya nol. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth,
provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata
tidak aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. Belum ada survei
pengguna nyata untuk hipotesis penurunan waktu memahami locked state.

V13 Pass Spotlight sebelumnya berasal dari Saga Member main
`18f86bc02cd2c69344f813a7b99e60484bcfc015` (PR #27 dan koreksi kontras
PR #28) pada Vercel production deployment `dpl_76ASTFPsosi3nvvCMgfJWdm5rCGX`
dan stable URL `https://saga-member-platform.vercel.app`. Halaman Pass kini
memiliki satu aksi dominan untuk membuka presentasi fokus yang hanya menampilkan
nama dummy, tier, dan kode bertopeng. Label `Mode presentasi · simulasi` serta
`SCAN LIVE OFF` membedakannya dari credential atau proses transaksi nyata.

Implementasi memakai native dialog: fokus awal berada pada judul, Tab tetap di
dalam modal, Escape/tombol tutup mengembalikan fokus ke pemicu, dan
`visibilitychange` menutup modal saat page hidden. Motion 13.2.0 yang sudah ada
hanya menggerakkan opacity/transform 140-180 ms. WAI-ARIA Dialog Pattern, W3C
H102, MDN dialog, dan Motion menjadi rujukan; Base UI Dialog dievaluasi tetapi
tidak ditambah karena aplikasi framework-free tidak memerlukan primitive React
kedua. QR, barcode, NFC, timer, provider, dan network request baru tidak ada.

116/116 test, PR CI `33823904568` dan `33824453936`, canonical-main CI
`33823999634` dan `33824599731`, dependency audit nol vulnerability, Preview
artifact verification, local UAT, dan public remote UAT pada
320/360/375/390/430 px lulus. Remote UAT awal menemukan kontras label pada
430 px dan koreksi PR #28 menutupnya; Axe modal kini nol critical/serious pada
seluruh matriks. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V12 Saga Compass sebelumnya berasal dari Saga Member main
`b9fc1bf0eec01badccce0c59fd930cd840891421` (PR #26) pada Vercel production
deployment `dpl_83UwTsmrPTbWA9xYaAjDX3xV1tXT` dan stable URL
`https://saga-member-platform.vercel.app`. Saga Compass memperbaiki continuity
Jelajah: query, filter, scroll, dan fokus kembali utuh setelah member membuka
Booking atau Quest. Quest memakai parent context untuk tombol Back dan active
bottom nav, sementara CTA berikutnya dapat membuka Coffee langsung.

Riset mengikuti WCAG 4.1.3 Status Messages, WAI-ARIA Button Pattern, MDN
history-entry state, dan evaluasi Base UI Toggle Group 1.7.0. Filter kini native
toggle buttons dengan `aria-pressed`; result count memakai polite atomic status.
Zero-result mengganti daftar kosong dengan satu Saga Compass recovery action,
dynamic copy aman, dan fokus tetap pada search selama mengetik. Base UI tidak
diadopsi karena aplikasi framework-free tidak memerlukan React untuk empat
button; Motion 13.2.0 yang sudah ada hanya menggerakkan transform/opacity selama
120-180 ms dan reduced-motion tetap dihormati.

113/113 test, PR CI `33820024498`, canonical-main CI `33820205830`, dependency
audit nol vulnerability, Preview artifact verification, local UAT, dan public
remote UAT pada 320/360/375/390/430 px lulus tanpa overflow, request eksternal,
atau kegagalan network; Axe critical/serious nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V12_SAGA_COMPASS_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V11 Saga Signal berasal dari Saga Member main
`f46903ee4d9a9ee1f976b8fe6b9176dd7f3db8df` (PR #25) pada Vercel production
deployment `dpl_7bnYiDDqTNhuki5TyDRM8yjzcvvZ` dan stable URL
`https://saga-member-platform.vercel.app`. Saga Signal mengganti placeholder
feedback yang terpisah dengan satu komponen outcome untuk menu, Pass, Reward,
privasi, profil, perangkat, support, refresh, sesi, dan handoff Saga Book.
Pesan tetap terlihat sampai ditutup, tidak bertumpuk, dan menjelaskan dampak
dummy secara eksplisit.

Riset mengikuti WCAG 4.1.3 Status Messages, teknik ARIA22, WAI-ARIA Alert
Pattern, dan evaluasi Base UI Toast. Base UI tidak diadopsi karena aplikasi
framework-free ini hanya memerlukan satu feedback aktif dan sudah memiliki
Motion 13.2.0 yang dibundle lokal. Live region dipisahkan dari tombol tutup;
hasil memakai polite `status`, kegagalan memakai `alert`, fokus tidak direbut,
fokus trigger dipulihkan, target tutup 44 px, dan motion hanya
transform/opacity 120-180 ms.

109/109 test, PR CI `33815212641`, canonical-main CI `33815469786`, audit
dependency nol vulnerability, Preview artifact verification, local UAT, dan
public remote UAT pada 320/360/375/390/430 px lulus tanpa overflow, request
eksternal, atau kegagalan network; Axe critical/serious nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V11_SAGA_SIGNAL_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V10 Journey Memory berasal dari Saga Member main
`a9f41ac0c348cd168b3d65e1cade5f5271c196bd` (PR #24) pada Vercel production
deployment `dpl_TNCG8F7mQRAjx9RXBqHp3MfamChE` dan stable URL
`https://saga-member-platform.vercel.app`. V10 menghubungkan route aplikasi
dengan native History API. Browser Back/Forward dan tombol Back sekunder kini
memulihkan route, posisi scroll, serta fokus tepat ke kontrol asal tanpa
mengubah URL publik.

Riset mengikuti dokumentasi MDN untuk History API serta panduan WCAG 2.4.3
Focus Order dan 2.4.11 Focus Not Obscured. Route aktif memperbarui document
title dan satu polite live region; `main` tidak lagi menjadi live region penuh.
Implementasi tidak menambah dependency: Motion 13.2.0 tetap dipakai hanya untuk
transisi singkat yang sudah ada.

106/106 test, PR CI `33810230630`, canonical-main CI `33810432264`, dependency
audit nol vulnerability, Preview artifact verification, local UAT, dan public
remote UAT pada 320/360/375/390/430 px lulus. Explicit Back, browser
Back/Forward, scroll/focus restoration, Axe, reduced-motion, offline shell,
layout, dan network boundary terverifikasi. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V10_JOURNEY_MEMORY_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V9 Story Rail berasal dari Saga Member main
`cf702551b2b8d4cba5922938a3fb15f1919760cc` (PR #23) pada Vercel production
deployment `dpl_7tgMDC4unM5URo5Amxr92GQGUJDq` dan stable URL
`https://saga-member-platform.vercel.app`. V9 mengubah carousel Beranda dari
perpindahan endpoint menjadi gesture kontinu dengan pointer capture, resistance
0,72, threshold 36 px atau 0,38 px/ms, dan settle 180 ms menggunakan runtime
Motion yang sudah ada.

Riset mengikuti W3C WAI
[Carousel Pattern](https://www.w3.org/WAI/ARIA/apg/patterns/carousel/), WCAG
[Dragging Movements](https://www.w3.org/WAI/WCAG22/Understanding/dragging-movements.html),
[Pointer Events](https://developer.mozilla.org/en-US/docs/Web/API/Pointer_events),
dan panduan [Motion performance](https://motion.dev/docs/performance). Gesture
bukan satu-satunya kontrol: tombol sebelumnya/berikutnya 44 px memberi
alternatif pointer tunggal dan keyboard. Rotation control tetap berada sebelum
konten berputar, perubahan manual diumumkan secara polite, dan segmented rail
mengurangi tab stop dibanding empat picker kecil.

103/103 test, canonical-main CI `33804897926`, dependency audit nol
vulnerability, local UAT, dan public remote UAT pada 320/360/375/390/430 px
lulus. Drag, previous/next, rapid tap, autoplay, pause, reduced-motion, Axe,
offline shell, layout, console, serta network boundary terverifikasi. Runtime
tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V9_STORY_RAIL_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V8 Motion Foundation dari Saga Member
main `e676b860afd15279d6cf98b23595b246ff0780c3` (PR #22) pada Vercel
production deployment `dpl_7eXtKWzCtizRd4wKEZuZBPUj2UiC` dan stable URL
`https://saga-member-platform.vercel.app`. V8 mempertahankan information
architecture V7, lalu menambahkan hierarchy gerak yang konsisten pada lima
primary route dan route sekundernya: direction-aware route reveal, reveal
section berbasis viewport, feedback tekan, serta indikator aktif bottom nav.

Runtime memakai `motion@13.2.0` berlisensi MIT, dibundle lokal dan disajikan
sendiri tanpa CDN. Pilihan implementasi mengikuti dokumentasi Motion tentang
[`inView`](https://motion.dev/docs/inview) dan
[performance](https://motion.dev/docs/performance), serta panduan WCAG untuk
[motion dari interaksi](https://www.w3.org/WAI/WCAG22/Understanding/animation-from-interactions.html).
Durasi dibatasi 90-260 ms dan property runtime dibatasi pada `transform` serta
`opacity`; tidak ada infinite loop. Seluruh animation handle dan observer
dibersihkan saat route berganti. Preferensi reduced-motion menghasilkan nol
animasi aktif. Bundle motion berukuran 5,8 KB gzip, di bawah budget 20 KB.

100/100 test, PR CI, canonical-main CI `33798937517`, dependency audit nol
vulnerability, local UAT, dan public remote UAT pada 320/360/375/390/430 px
lulus. Remote UAT juga memastikan indikator nav bergerak, tidak ada overflow,
login, console error, respons gagal, request eksternal, request auth, backend,
atau provider. Runtime tetap `PUBLIC_DUMMY_DEMO`: backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Delivery adalah `SAGA_MEMBER_V8_MOTION_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. V8 sekarang menjadi
provenance historis dan rollback motion foundation sebelum V9.

V7 Home Editorial Final dari Saga Member
main `83b969d7c77a2ce8015fb087074d3d59e7acea39` (PR #21) pada Vercel
production deployment `dpl_7ZMPhGXxmfFG4SyUkXFZe2zWjGym` dan stable URL
`https://saga-member-platform.vercel.app`. V7 memadatkan first fold serta
member wallet, membentuk shortcut dua kolom, mengutamakan agenda Studio,
memisahkan status Points, dan mengubah tier serta activity menjadi cerita
editorial yang lebih mudah dipindai.

Carousel tetap empat cerita dan berinterval empat detik, kini memiliki progress
waktu serta state loading/fallback foto. Coffee dan Studio memakai placeholder
foto sintetis WebP 480/960; foto tersebut bukan dokumentasi outlet nyata.
Motion UI memakai transform/opacity maksimal 180 ms, dihentikan ketika tidak
terlihat atau reduced-motion aktif. Plus Jakarta Sans dan Feather icon tetap
menjadi bahasa visual fungsional.

Preview `dpl_48tqDHGcZMVnGm36GUo9dCd12hd4` berstatus READY dan artifact penting
merespons 200. 97/97 test, PR CI, canonical-main CI `33790573528`, local UAT
serta public remote UAT pada 320/360/390/412/430 px lulus tanpa overflow,
broken image, atau console error. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend,
auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot
nyata tidak aktif. Delivery adalah `SAGA_MEMBER_V7_HOME_FINAL_PRODUCTION_DEPLOYED`,
sedangkan `PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. V7 sekarang
menjadi provenance historis dan rollback visual sebelum V8.

V6 Daily Lobby dari Saga Member main
`85a6f8bc4151e414bb0ca7235922162d0d914190` (PR #20) pada Vercel deployment
`dpl_CqeoVBX1Q11ZKc4C4p2tVRkXkMLv` dan stable URL
`https://saga-member-platform.vercel.app` adalah release sebelumnya. Sepuluh batch khusus Beranda
memperbaiki sapaan, hierarchy typography, wallet, shortcut, konteks harian,
tier, activity, warna, tekstur, serta carousel empat cerita.

Carousel Coffee/Studio/Quest/Reward memakai interval empat detik, transisi
180 ms, slide peek, indikator, pause/play, dan swipe. Autoplay berhenti setelah
interaksi serta saat carousel tidak terlihat, tab tidak aktif, atau preferensi
reduced-motion aktif. Seluruh teks, angka, CTA, dan status tetap code-native;
ilustrasi fungsional memakai Feather icon dan bentuk CSS. Canonical-main CI
`33786940481`, 93/93 test, browser UAT 320–430 px, axe nol critical/serious,
44 px touch target, offline shell, serta public remote UAT lulus. Runtime tetap
`PUBLIC_DUMMY_DEMO`: backend, auth, provider, transaksi, data pelanggan, QRIS,
NFC, printer, dan pilot nyata tidak aktif. Karena itu delivery adalah
`SAGA_MEMBER_V6_DAILY_LOBBY_PRODUCTION_DEPLOYED` pada riwayat release, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V5 Urban Coffee Club dari main
`f11172a8540263c4394666fb4f722e15546f9bba` (PR #19) adalah release
sebelumnya dan menjadi provenance historis, bukan state runtime terbaru.

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
