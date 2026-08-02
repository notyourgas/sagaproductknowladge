# SagaBook Changelog

## Tujuan

Mencatat perubahan material SagaBook dengan provenance public-safe.

## 2026-08-02 - Admin Booking dipromosikan setelah release runner diperbaiki

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `500065c81cbc07e29b3370f8b22a8fcc521f7d7d` memperbaiki runner agar baseline
  readiness non-zero dapat masuk ke verifikasi transition yang ketat dan setiap
  kegagalan tetap menghasilkan stage/reason terstruktur.
- Release `20260802101645-500065c` aktif dengan readiness 100, manifest exact
  source, migration, encrypted backup, disposable restore, tujuh service aktif,
  journal bersih, dan public smoke lulus. Rollback SagaBook tetap
  `20260802024941-b74ebb5`; SagaView tidak berubah.
- Full backend 959/959 dengan 11.001 assertions; focused Admin Booking pada
  mobile/tablet/desktop 6/6; build, design audit, dan dependency audit 0 lulus.
- `TODO`: public Pricing, Terms, dan Privacy masih belum menampilkan signature
  `Powered by SagaBook`; ketiga route 200 tanpa overflow, tetapi branding lintas
  surface belum lengkap.

## 2026-08-02 - Admin Booking triage candidate belum dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`.
- Source `9963f3de757c0339580c79d96ff565d320722fcb` mengubah daftar mobile menjadi
  kartu operasional, mempertahankan tabel desktop, membuka detail pada drawer
  aksesibel, dan menutup drawer setelah aksi terminal agar fokus kembali ke
  daftar dengan status terbaru.
- Payment reconciliation menerima booking paid yang sudah maju ke
  `checked_in`/`in_session` hanya bila bukti internal tetap valid; kondisi
  unpaid, callback invalid/duplikat, atau ledger belum verified tetap
  fail-closed.
- Gate lokal: backend 958/958 dengan 10.991 assertions; browser
  mobile/tablet/desktop 415 passed; build, design audit, dependency audit 0,
  formatter, dan diff check lulus.
- Dua percobaan release berhenti sebelum activation dan tidak menghasilkan
  alasan terstruktur. Production tetap source `b74ebb56`, release
  `20260802024941-b74ebb5`; SagaView dan seluruh service tetap unchanged/active.

## 2026-08-02 - CTA cabang storefront tidak lagi menutup katalog

- Status: `PRODUCTION_DEPLOYED`; scope SagaBook yang telah dibuktikan tetap
  `PRODUCTION_ACTIVATED`.
- Source `b74ebb56099849dc17d759f4a9f0c8f1a04788e4` aktif sebagai release
  `20260802024941-b74ebb5`; rollback `20260802013852-76defd1` dipertahankan.
- Before: langkah Lokasi menampilkan CTA fixed disabled sebelum customer
  memilih cabang sehingga sebagian katalog dapat tertutup pada mobile.
- After: CTA tidak tampil sebelum cabang dipilih; setelah pilihan valid, tepat
  satu CTA aktif setinggi 48 piksel muncul dan navigasi ke langkah Paket lulus.
- Kelima preset, link Maps/WhatsApp, forced-colors, reduced-motion, no-overflow,
  dan tepat satu `Powered by SagaBook` tetap lulus; booking/payment tidak
  berubah.
- Gate: full backend 957/957 dengan 10.989 assertions, browser desktop+mobile
  298/298, typecheck, build, dependency audit 0, encrypted backup, disposable
  restore exact-SHA, database audit, service health, public smoke, dan visual
  production 390x844 serta 1440x900 lulus.

## 2026-08-02 - Maps fallback storefront dan Booking Center production

- Status: `PRODUCTION_DEPLOYED`; scope SagaBook yang telah dibuktikan tetap
  `PRODUCTION_ACTIVATED`.
- Source `76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` aktif sebagai release
  `20260802013852-76defd1`; rollback `20260802002923-d9bbbac` dipertahankan.
- Before: cabang yang mempunyai alamat tetapi belum memiliki URL Maps khusus
  tidak selalu memberi jalur Maps pada storefront dan detail booking.
- After: customer mendapat pencarian Google Maps berbasis nama dan alamat;
  URL eksplisit hanya diterima dari host Google HTTPS. Link Maps dan kontrol
  salin kode memenuhi target sentuh minimal 44 piksel.
- Gate: full backend 957/957 dengan 10.989 assertions, browser desktop+mobile
  298/298, typecheck, build, dependency audit 0, encrypted backup, disposable
  restore exact-SHA, manifest, database audit 100, service health, public
  smoke, serta production visual 390x844 dan 1440x900 lulus.
- URL Maps presisi dari data owner tetap opsional; fallback tidak mengarang
  koordinat dan tidak mengubah data tenant.

## 2026-08-02 - Auth branding dan touch safety production

- Status: `PRODUCTION_DEPLOYED`; scope activation SagaBook yang telah
  dibuktikan tetap `PRODUCTION_ACTIVATED`.
- Candidate auth/fallback dipromosikan sebagai release
  `20260802002923-d9bbbac` dari source
  `d9bbbac3d5960013c6df267ff9ae2534b883710d`.
- Login, signup, dan password recovery sekarang memiliki tepat satu
  `Powered by SagaBook`, target sentuh kritis minimal 44 piksel, preview
  dekoratif inert, metode pemulihan dan CTA fallback minimal 44 piksel, serta
  state forced-colors/reduced-motion.
- Gate: full backend 957/957 dengan 10.989 assertions; matriks browser
  desktop+mobile 296/296 melalui empat shard deterministik; production auth
  smoke 6/6; backup/restore exact-SHA, manifest, database audit 100, public
  HTTP smoke, service health, dan rollback lulus.
- Residual gap: sebagian data cabang storefront demo production belum memiliki
  URL Google Maps terkonfigurasi; ini gap data lokasi, bukan regresi renderer
  atau release auth.

## 2026-08-02 - Auth branding dan touch safety candidate final (historis)

- Status saat dicatat: `IMPLEMENTED_NOT_DEPLOYED`; `DEPRECATED` sebagai status
  aktif karena candidate kemudian dipromosikan menjadi release
  `20260802002923-d9bbbac`.
- Login, signup, dan password recovery memiliki tepat satu signature
  `Powered by SagaBook`, target sentuh kritis minimal 44 piksel, preview
  dekoratif yang tidak dapat menerima fokus, metode pemulihan dan CTA fallback
  minimal 44 piksel, serta state forced-colors dan reduced-motion.
- Source: `d9bbbac3d5960013c6df267ff9ae2534b883710d`.
- Validation: visual regression mobile/desktop 6/6, full backend 957/957 dengan
  10.989 assertions, typecheck, build, dependency audit 0, encrypted backup,
  dan disposable restore exact-SHA lulus.
- Blocker saat itu: matriks browser global mencapai timeout 10 menit sebelum
  selesai; blocker kemudian ditutup dengan empat shard deterministik 296/296.

## 2026-08-02 - UI/UX operasional dan release safety production

- Status: `PRODUCTION_DEPLOYED`; activation scope operasional yang telah
  dibuktikan tetap `PRODUCTION_ACTIVATED`.
- Candidate kumulatif UI/UX, storefront tenant, branding, dan release safety
  dipromosikan sebagai release `20260801213514-8edd762` dari source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Manifest exact-SHA, public smoke, database audit 100, service health, journal,
  backup/restore, dan rollback release lulus.
- Business readiness tetap `NEEDS CONFIRMATION` sampai pilot studio nyata dan
  legal/tax finalization selesai.

## 2026-08-02 - Candidate UI/UX operasional dan release safety (historis)

- Status saat dicatat: `IMPLEMENTED_NOT_DEPLOYED`; `DEPRECATED` sebagai status
  aktif karena cakupan kumulatif kemudian dipromosikan melalui source
  `8edd762154ec231b7e00c4a38db9c94dd0ee322c`.
- Dashboard/admin, navigasi, action staff, dan tenant booking storefront telah
  dirapikan untuk hierarchy mobile/tablet/desktop, state aksesibilitas, dan
  satu signature `Powered by SagaBook` per surface aplikasi.
- Kontrak booking, payment, tenant isolation, invoice, dan artefak bisnis tidak
  diubah; signature tidak masuk ke invoice atau hasil bisnis.
- Release safety sekarang memakai backup serial, manifest checksum
  deterministik, receipt terikat source commit, dan preservasi checksum
  migration yang sudah aktif.
- Source: `082c8c42bff2be0d70115b76227fd5472c1c6dab`.
- Validation: visual matrix 400 pass/0 fail, focused exact-source 19 test/131
  assertions, build dan dependency audit hijau, serta encrypted backup dan
  disposable restore exact-SHA lulus.
- Blocker: protected GitHub Actions belum dapat didispatch dari sesi otomasi;
  promotion dan post-deploy public smoke belum dilakukan. Production tetap
  `20260731181921-378bcdf`.

## 2026-08-01 - Fonnte tenant routing production

- Status: `PRODUCTION DEPLOYED` dan `PRODUCTION ACTIVATED` untuk routing
  WhatsApp SagaBook; authenticated owner canary masih direkomendasikan sebelum
  rollout customer berskala besar.
- Default setiap tenant menggunakan Fonnte SagaDev; owner dapat memilih
  credential Fonnte studio sendiri atau mode manual-only.
- Credential tenant terenkripsi dan tidak dikirim kembali ke browser; delivery
  menyimpan snapshot mode serta versi koneksi untuk retry dan audit.
- Additive migration, backup verification, provider connection probe tanpa
  pesan, readiness 100/100, health, service, Nginx, dan error-journal gate
  lulus.
- Source commit: `378bcdf4dac6c54d0bf421b5ef188103d82c6b40`.
- Production release: `20260731181921-378bcdf`.
- S72 auto-trial tidak ikut release dan tetap `PRODUCTION HOLD`.

## 2026-07-31 - Candidate Fonnte tenant routing dan auto-trial

- Status: `LOCAL_VALIDATED`; `NOT DEPLOYED`; production tidak berubah.
- Fonnte candidate memiliki tiga route tenant: SagaDev-managed sebagai
  default, credential Fonnte milik studio, atau manual-only.
- Credential tenant terenkripsi, tidak dikirim kembali ke browser, dan
  delivery snapshot gagal tertutup ketika route berubah.
- Candidate signup dapat mengaktifkan trial 7 hari tanpa approval owner atau
  verifikasi email, tetapi login tetap menunggu provisioning `ready`.
- Source: S71 `a368c05edbed9b10d8d187ae60e354fd84d96b55`; S72
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`.
- Validation: S71 957 test/10.976 assertions; S72 954 test/10.997 assertions;
  kedua production frontend build lulus.
- S72 tetap `PRODUCTION HOLD` dan memerlukan approval release terpisah.

## 2026-07-31 - Privacy governance source implementation

- Status: `IMPLEMENTED_NOT_DEPLOYED`; public policy tetap `NOT ACTIVE - NOT
  PUBLISHED`.
- Before: P01-P18 sudah disetujui, tetapi consent evidence, customer request,
  owner triage, incident register, offboarding timeline, dan retention preview
  belum tersedia sebagai satu workflow source.
- After: booking menyimpan snapshot consent berversi; customer dapat membuat
  request privacy dari secure booking link; owner memiliki halaman
  `Privasi & Data`; request tenant-scoped, role-protected, idempotent, dan
  auditable; retention hanya preview dan mode apply ditolak.
- Source commit: `d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.
- Validation source: 950 test / 10.904 assertions, production build, Composer
  audit, dan npm production audit lulus.
- Production tidak berubah. Identitas badan usaha, alamat, email privacy,
  WhatsApp support, legal review, dan destructive-retention gate masih pending.

## 2026-07-31 - Owner approval privacy, retention, dan offboarding

- Status keputusan: `CONFIRMED`; delivery kontrak target: `PLANNED`; public
  status: `NOT ACTIVE - NOT PUBLISHED`.
- Before: draft P01-P18 masih menunggu keputusan owner sehingga implementasi
  dan review legal belum mempunyai persetujuan kanonik.
- After: Andreas menyetujui seluruh P01-P18 untuk implementasi dan review
  legal, termasuk data role, consent, retention per kategori, deletion,
  offboarding, incident response, dan subprocessor disclosure.
- Source docs:
  `295ec863ff6cfc2e79ac98183651f19c15a3b368`.
- Production tidak berubah; persetujuan ini bukan izin publikasi dan bukan
  bukti bahwa retention job atau offboarding runtime sudah aktif.
- Next action: lengkapi identitas/kontak resmi, legal review, implementasi,
  acceptance, immutable release, dan public smoke sebelum final sign-off.

## 2026-07-31 — Founder commercial dan booking policy production

- Before: nominal paket dan trial dua fase sudah ada, tetapi Pro masih
  unlimited, public/legal membawa copy lama, SLA belum sesuai kontrak founder,
  dan refund customer belum menghitung jendela 100/50/0 secara aman.
- After: Basic Rp500.000 (1 cabang/3 staff), Growth Rp950.000 (3/10), Pro
  Rp1.500.000 (maksimal 10/30), Custom di atas Pro, fair-use booking, trial
  guardrail, support/retention/offboarding, satu reschedule gratis minimal 24
  jam, dan refund 100/50/0 operator-approved aktif secara konsisten.
- Runtime source `39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`, release
  `20260731172605-39fb2d3` pada SagaBook dan Saga Platform.
- Validation: 946/946 test dengan 10.864 assertions; browser desktop/mobile,
  build, dependency audit, backup terenkripsi, restore tiga database, migration
  rehearsal, readiness 10/10, public smoke, service, queue, dan journal lulus.
- Rollback: `20260731075424-285ab94`; migration additive tidak memerlukan down
  destruktif.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED` untuk
  kontrak runtime ini.
- Business readiness: `NEEDS CONFIRMATION` sampai legal identity/sign-off dan
  Founding Studio Pilot lulus.

## Konteks

Gunakan bersama [PRODUCT](PRODUCT.md), [DOSSIER](DOSSIER.md), dan status release
aktual.

## 2026-07-31 - Platform Support Operations production

- Status: `PRODUCTION_DEPLOYED`.
- Before: tiket support dapat dibaca dan dibalas, tetapi ownership operator,
  SLA, concurrency, dan receipt audit belum cukup jelas untuk tim multioperator.
- After: operator memiliki antrean berdasarkan produk/status/prioritas/SLA,
  claim/release, resolve/reopen, private note, public reply, dan perubahan
  prioritas yang retry-safe serta auditable.
- Keamanan: permission deny-by-default, tenant reference tersanitasi,
  idempotency key, optimistic lock, dan receipt audit tanpa isi pesan,
  provider reference, tenant ID mentah, atau PII.
- Dampak: operator dapat melakukan triage tanpa duplikasi respons atau silent
  overwrite saat dua operator menangani tiket yang sama.
- Source: `285ab943b93466deda0f6c07466c0fbe8da16e4c`.
- Release: `20260731075424-285ab94`.
- Validasi: 942 regression tests / 10.824 assertions, 36 focused tests / 178
  assertions, 26 visual smoke, 4 browser E2E mobile/desktop, production build,
  dependency audit, backup verification, migration, readiness/database audit
  100/100, service health, dan enam public smoke lulus.
- Rollback: immutable release `20260731053435-7cc63d2` tetap tersedia.
- Next action: observasi SLA dan kualitas resolusi pada cohort studio nyata.

## 2026-07-31 - Support & Recovery Center production

- Status: `PRODUCTION_DEPLOYED`.
- Before: bantuan dan pemulihan tersebar; owner tidak dapat melanjutkan tiket
  setelah human handoff.
- After: owner/admin memiliki pusat bantuan terpadu untuk pertanyaan produk,
  human handoff, balasan tiket, account recovery, setup, changelog, dan
  screenshot privat.
- Keamanan: scope produk/tenant/akun/percakapan, permission deny-by-default,
  idempotency key, payload public-safe, audit tanpa isi pesan, serta adapter
  Support Hub bertanda tangan.
- Dampak: owner dapat menyelesaikan kendala atau meneruskannya ke manusia tanpa
  kehilangan konteks dan tanpa membuat pesan ganda saat retry.
- Source: `7cc63d2bfde011321f7c06ff45e393d189b1d4a4`.
- Release: `20260731053435-7cc63d2`.
- Validasi: 938 regression tests / 10.795 assertions, 32 focused tests / 149
  assertions, production build, dependency audit, visual smoke desktop/mobile,
  backup, migration, readiness/database audit 100/100, service health, dan
  public smoke lulus.
- Rollback: immutable Saga Platform `20260727085127-5bf7977` dan SagaBook
  `20260730214513-a26d378` tetap tersedia.
- Next action: observasi kualitas handoff dan recovery pada cohort studio nyata.

## 2026-07-31 - Activation Center production

- Status: `PRODUCTION_DEPLOYED`.
- Before: readiness setup tenant tersebar dan tidak memiliki handoff terpadu
  menuju publish serta booking pertama.
- After: owner memperoleh progress server-authoritative, blocker yang dapat
  ditindaklanjuti, resume setup, preview/publish storefront, status provider
  yang jujur, dan first-booking handoff.
- Dampak: onboarding tenant lebih terarah dan risiko publish sebelum setup siap
  berkurang.
- Source: `a26d378de994da3dc69d9088eff1c8e04110e7af`.
- Release: `20260730214513-a26d378`.
- Validasi: full regression, build, visual smoke, security audit, backup
  verification, release gate, database audit, dan public smoke lulus.
- Next action: observasi cohort onboarding studio nyata dan waktu menuju
  booking pertama.

## 2026-07-31 — Customer Booking Center production

- Status: `PRODUCTION_DEPLOYED`.
- Customer dapat melihat status dan mengajukan reschedule/change/cancel/refund.
- Secure link expiring, tenant-scoped, dan idempotent.
- Operator menerima request melalui Task Center.
- Source: `dc312a4e4835d0d7ca52f88730b5ea0bb84ac9af`.
- Release: `20260730153914`.

## 2026-07-30 — Trial dua fase dan Saga Account seam

- Trial 14 hari server-authoritative aktif.
- Harga SagaBook tetap Basic Rp500 ribu, Growth Rp950 ribu, Pro Rp1,5 juta.
- Identity seam tidak menggabungkan entitlement atau role SagaView.
