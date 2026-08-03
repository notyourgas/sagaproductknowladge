# SagaView Changelog

## Tujuan

Mencatat perubahan material SagaView tanpa mencampur candidate dan production.

## 2026-08-03 - Hydration Studio Console stabil production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: Session, Frames, dan Install App dapat menghasilkan React hydration
  error karena nilai online, kemampuan PWA, dan snapshot external store berbeda
  antara HTML server dan render browser pertama.
- After: render awal deterministik, status browser disegarkan setelah mount,
  dan server snapshot stabil; offline/reconnect, install, lease, serta recovery
  tetap fail-closed.
- Studio source `bb2abceb0ea6bc61af101c6724b837551a2e0d5a`, release
  `20260803153923-bb2abce`; rollback `20260803101436-c7d239c`. Backend tetap
  `20260802042221-f26bb57` dan tidak dipromosikan ulang.
- Validation: 156 unit, 93/93 E2E, hydration 6/6, focused workflow 20/20,
  build/budget, audit dependency 0, immutable promotion, service/Nginx/journal,
  serta production smoke 14 route-viewport tanpa hydration/page error,
  overflow, atau watermark ganda.
- Residual: bootstrap bantuan anonim masih 404 dan dicatat di `GAPS.md`;
  customer foto, payment/provider, tenant/device/session, permission, privacy,
  frame data, dan output/print 4R tidak berubah.

## 2026-08-03 - Navigasi Studio Console mobile terlihat production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: header mobile hanya memperlihatkan empat tab pertama dan badge nomor
  route, tanpa kontrol atau petunjuk bahwa Output, Izin Foto, Changelog, dan
  Install App berada di luar viewport.
- After: header menampilkan `Menu n/8`, tombol sebelumnya/berikutnya 44 px,
  serta auto-center route aktif dengan reduced-motion; seluruh delapan route
  dapat dijangkau tanpa horizontal page overflow.
- Studio source `c7d239c95032822aa05b92b3a3682452dc33edf2`, release
  `20260803101436-c7d239c`; backend aktif tetap release
  `20260803022430-fa228d8` dan tidak dipromosikan ulang.
- Validation: 44 file/156 unit, full E2E 87/87, focused navigasi 2/2 lokal,
  live Session -> Output/direct-route/no-overflow, build/budget, accessibility,
  dependency audit 0, route/header smoke, service/Nginx/journal, serta visual
  390x844 dan 1440x900 lulus.
- Percobaan promosi pertama fail-closed sebelum switch karena npm server lama;
  clean install diulang memakai npm 11.13.0 dan exact commit marker sebelum
  promosi kedua.
- Tidak ada migration, payment/provider action, perubahan backend/database,
  customer flow, device/session/permission, tenant isolation, privacy foto,
  frame picker, watermark, atau output/export/print 4R.
- Rollback Studio `20260803062122-ae21062` tersedia.

## 2026-08-03 - Katalog frame padat dan bantuan aman production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: delapan frame memenuhi halaman mobile dengan preview vertikal penuh,
  desktop 1440x900 hanya memuat tiga kartu per baris, dan launcher bantuan
  fixed menutupi badge kartu saat operator menggulir.
- After: mobile 390x844 memakai kartu horizontal ringkas, desktop memakai empat
  kolom, metadata tetap terbaca, action authoring tetap minimal 44 px, dan
  launcher bantuan masuk alur halaman saat tertutup lalu menjadi panel fixed
  hanya ketika dibuka.
- Studio source `ae21062f1767542ea2af52b4ba874dac4ec1142f`, release
  `20260803062122-ae21062`; backend tetap source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260802042221-f26bb57`.
- Validation: focused Frames 5/5, 44 file/156 unit, full E2E 85/85, import
  50/200/500, build/budget, accessibility/forced-colors/reduced-motion,
  dependency audit 0, sepuluh route 200, HSTS/CSP/XFO, service/Nginx/journal,
  serta visual mobile/desktop lulus.
- Tidak ada migration, payment/provider action, atau perubahan customer picker,
  frame recovery, tenant/device/session/privacy, dan export/print 4R.
- Rollback Studio `20260802200733-34519c4`; backend tidak dipromosikan ulang.

## 2026-08-03 - Install App jujur dan kontekstual production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: tombol `Install SagaView` tetap tampak aktif ketika browser tidak
  menyediakan prompt, padahal click hanya memberi instruksi manual; CTA utama
  juga masih 44 px.
- After: prompt otomatis siap, install manual, dan installed menjadi state
  terpisah dengan satu action utama, status live, panduan Chrome/Edge atau iOS,
  recovery cek status, serta jalur installed langsung ke Session. CTA 48 px,
  keyboard, forced-colors, reduced-motion, mobile/desktop, no-overflow, Axe, dan
  satu `Powered by SagaView` tervalidasi.
- Studio source `34519c4dea1d6e7ee40be603e5c4e782bc230b3d`, release
  `20260802200733-34519c4`; backend tetap source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260802042221-f26bb57`.
- Validation: 44 file/156 unit, full E2E 84/84, focused local dan production
  masing-masing 3/3, audit 0, build/budget, backup/restore evidence yang masih
  fresh, 13 route 200, satu HSTS/CSP/XFO DENY, service health, Nginx, journal,
  dan rollback lulus. Batch app-only ini tidak membutuhkan migration.
- Device/session, foto lokal, payment/provider, tenant isolation, backend,
  customer flow, output, dan export/print 4R tidak berubah.
- Rollback Studio `20260802132108-a3eb955`; backend tidak dipromosikan ulang.

## 2026-08-02 - Consent Dashboard tahan gangguan production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: kegagalan fetch tampil seperti data kosong tanpa retry, filter dan row
  action di bawah 44 px, ringkasan mobile terlalu panjang, dan separator metadata
  consent rusak.
- After: loading, offline/error, populated, filtered-empty, dan recovered tampil
  eksplisit; retry tidak memutasi consent atau foto; filter memakai selected
  state aksesibel; action minimal 44 px; mobile/desktop bebas overflow; tepat
  satu `Powered by SagaView` tetap terlihat.
- Studio source `a3eb955d5bfa5e17714ecc7d4c09a38fcae0b541`, release
  `20260802132108-a3eb955`; backend tetap source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260802042221-f26bb57`.
- Validation: 44 file/156 unit, full default-parallel E2E 81/81, focused Consent
  production 3/3, build/budget, dependency audit 0, encrypted backup/offsite
  round-trip/disposable restore, gate 6/6, sepuluh route 200, security header,
  service health, dan journal lulus.
- Release tidak mengubah backend, consent tersimpan, file foto lokal, customer
  flow, payment/provider, tenant isolation, atau export/print 4R.
- Rollback Studio `20260802112729-e666d7b`; backend tidak dipromosikan ulang.

## 2026-08-02 - General Settings responsif production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: action bar General selalu sticky, memakai negative margin desktop
  pada mobile, membuat dokumen 406 px di viewport 390 px, dan menutup sebagian
  workspace walau form bersih.
- After: action Reset/Simpan hanya muncul ketika dirty/feedback, mengikuti
  konten pada mobile tanpa overflow, tetap sticky di desktop, serta menjaga
  accessible name lama, target 44 px, forced-colors, reduced-motion, dan satu
  `Powered by SagaView` yang terlihat.
- Studio source `e666d7b0d7614741b75fdd421e341dbf541bd0cf`, release
  `20260802112729-e666d7b`; backend tetap source
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260802042221-f26bb57`.
- Validation: 44 file/156 unit, full default-parallel E2E 78/78, focused
  General production 2/2, build/budget, dependency audit 0, gate 6/6, fresh
  encrypted backup/offsite round-trip/disposable restore 146 tabel SagaView,
  delapan route 200, header security, tujuh service, dan journal lulus.
- Release tidak mengubah paket sesi, promo, kategori/harga, local-first,
  device/session, payment/provider, privacy foto, atau export/print 4R.
- Rollback Studio `20260802042221-47aec0d`; backend tidak dipromosikan ulang.

## 2026-08-02 - Output Settings responsif production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: action bar simpan selalu memakai ruang besar dan sticky meski form
  bersih; pada mobile dapat menutup bagian workspace. Feedback saved juga dapat
  tetap terlihat ketika operator sudah mengedit lagi.
- After: action Reset/Simpan hanya muncul saat dirty, mengikuti konten di mobile,
  tetap sticky di desktop, memakai target 44 px, dan selalu menampilkan status
  `Belum disimpan` ketika ada perubahan.
- Studio source `47aec0d7f58b04c7f63ad9ac4be4141f649a14e7`, release
  `20260802042221-47aec0d`; backend source tetap
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260802042221-f26bb57`.
- Validation: 156 unit, 76/76 default-parallel E2E, 4/4 focused Output,
  dependency audit 0, encrypted backup dan disposable restore 146 tabel,
  candidate/rollback gate 6/6, production Chrome mobile/desktop, service,
  security header, journal, dan tujuh route/API smoke lulus.
- Release tidak mengubah folder output, device/session, payment/provider,
  privacy foto, atau kontrak export/print 4R; tidak membuat intent atau QRIS.
- Rollback Studio `20260801101538-a130ee5`; rollback backend
  `20260801101515-f26bb57`.

## 2026-08-01 — Katalog frame terisi responsif production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: `/admin/frames` memaksa empat kolom pada 390x844, sehingga kartu
  sekitar 78 px dan preview/nama/status/metadata terpotong; operator hanya
  memiliki filter kategori dan status nonaktif bergantung pada opacity.
- After: katalog memiliki search, filter kategori/status, counts, status teks,
  reset empty state, dan offline recovery yang fail-closed. Mobile memakai
  satu kolom 324 px; desktop memakai tiga kolom stabil tanpa overflow.
- Studio source `a130ee5939f64fd76d575908b7748bacd75a6878`, release
  `20260801101538-a130ee5`; backend source tetap
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260801101515-f26bb57`.
- Validation: 156 unit, 75/75 default-parallel E2E, 4/4 focused katalog,
  35/35 regression terkait termasuk import 50/200/500, build/budget,
  dependency audit 0, disposable restore 146 tabel, deploy gate 6/6, enam
  service, header security, error journal, rollback, dan 12 route smoke lulus.
- Release tidak mengubah customer picker, device/session/privacy, output 4R,
  payment/provider, dan tidak membuat intent/QRIS/transaksi kedua.
- Rollback Studio `20260801073058-fa78207`; rollback backend
  `20260801072934-f26bb57`.

## 2026-08-01 — Display preset customer responsif production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: `/admin/brand` memakai kolom preview minimum 520 px; pada 390x844
  dokumen melebar menjadi 560 px, preset terjepit, dan preview menimpa form.
- After: workflow `pilih tampilan -> preview -> sesuaikan -> simpan` menjadi
  satu kolom tanpa overflow pada mobile dan tetap side-by-side pada desktop.
  Preset memiliki state `Dipakai`, keyboard/44 px, local/offline status,
  invalid-color recovery, dan satu CTA save utama.
- Studio source `fa782070b3ac1b054d301eb97d2aa8caeca3f66c`, release
  `20260801073058-fa78207`; backend source tetap `f26bb57737fc25a0a40d350dc26ca727d30885b2`,
  release `20260801072934-f26bb57`.
- Validation: 156 unit, 71/71 default-parallel E2E, import 50/200/500 tanpa
  mutasi payload foto, build/budget, dependency audit 0, backup, deploy gate
  6/6, enam service, header security, error journal, dan route smoke lulus.
- Release tidak mengubah device/session/privacy/output 4R dan tidak membuat
  intent, QRIS, atau transaksi provider baru.
- Rollback Studio `20260801132330-5c87083`; rollback backend
  `20260801132330-f26bb57`.

## 2026-08-01 — Kesiapan mulai sesi production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: utility cloud/recovery memenuhi bagian atas workspace dan langkah
  berikutnya bergantung pada beberapa kontrol serta CTA yang jauh.
- After: utility sehat menjadi disclosure ringkas; checklist perangkat, paket,
  folder, frame, dan output serta satu CTA kontekstual 48 px mengarahkan
  operator sampai customer flow.
- Studio source `5c8708387869cfb8f1dd21d2758fdfbcdf8240d6`, release
  `20260801132330-5c87083`; backend tetap
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`, release
  `20260801132330-f26bb57`.
- Validation: 156 unit, 68/68 default-parallel E2E, 9/9 focused
  readiness/import termasuk 50/200/500 foto, build/budget, dependency audit 0,
  backup, deploy gate 6/6, enam service aktif, failed job/error journal nol,
  serta production smoke lulus.
- Provider/payment tetap read-only; release tidak membuat intent, QRIS, atau
  transaksi kedua.
- Rollback Studio: `20260731183624-1092c99`; rollback backend:
  `20260731183542-f26bb57`.

## 2026-08-01 — Preset serta Editor/Review responsif production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: pemilihan frame masih desktop-first dan Editor/Review dapat
  terpotong pada 390x844 sehingga canvas, checklist, foto terpilih, CTA, atau
  retry sulit dijangkau.
- After: frame memakai `preview -> pilih -> jumlah cetakan -> Terapkan &
  lanjut`; Editor/Review menjadi alur vertikal mobile dengan status
  lokal/offline, langkah aktif, CTA utama, retry, 44/48 px target, dan signature
  yang tidak tertutup. Workspace desktop dan output 4R tidak berubah.
- Source S81 `1830e7145c6a06e9b53ad951cbcd2d788a7f58a1`; source S82 aktif
  `1092c99b258f6ca8db817d835d90e738cdcc4964`.
- Validation: format, lint, typecheck, 156 unit, 64/64 default-parallel E2E,
  production build/budget, dependency audit 0, preflight 6/6, backup,
  services, serta smoke Editor/Review/Frame/Output lulus.
- Runtime: route utama mengembalikan HTTP 200 dengan HSTS, CSP, dan
  `X-Frame-Options: DENY`; changelog production tetap menampilkan v0.20.3.
- Rollback Studio: `20260731150138-1830e71`.
- `DEPRECATED`: gap identifier S82 ditutup oleh release S83; S82 kini tercatat
  sebagai rollback immutable `20260731183624-1092c99`.

## 2026-07-31 — Candidate signup auto-trial 7 hari

- Status: `LOCAL_VALIDATED`; `PRODUCTION HOLD`; production tidak berubah.
- Signup candidate menghilangkan approval owner dan verifikasi email untuk
  trial, tetapi tetap menjalankan validasi, idempotency, audit, dan provisioning
  product-scoped.
- Login tetap ditolak sampai SagaView provisioning berstatus `ready` atau
  `succeeded`; aktivasi device tetap terjadi dari aplikasi studio.
- Source Saga Platform:
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`.
- Validation: 954 test/10.997 assertions dan production frontend build lulus.

## 2026-07-31 — UI/UX shell refinement production

- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: Owner/Studio/public/customer memakai beberapa pola shell dengan
  hierarchy lokasi, status, dan aksi yang kurang konsisten.
- After: surface operasional solid, satu aksi utama, target minimal 44 px,
  motion 180 ms, forced-colors/reduced-motion, serta tepat satu accessible
  `Powered by SagaView` per surface. Signature tidak masuk output bisnis.
- Backend/Owner source `f26bb57737fc25a0a40d350dc26ca727d30885b2`,
  release `20260731132030-f26bb57`; Studio source
  `12e96591380d1256038bd7fb66b49d0e4090392e`, release
  `20260731132030-12e9659`.
- Validation: backend 908/908 dan 10.629 assertions; Studio 156 unit dan 56/56
  E2E; Owner visual 2/2; dependency audit 0; responsive production audit,
  backup, deploy gate 6/6, 13-route smoke, services, queue, dan error journal
  lulus.
- Rollback: backend `20260731101529-528e68d`; Studio
  `20260731101529-f6fa6f3`.
- Residual risk: authenticated Owner visual smoke production tidak dilakukan
  tanpa credential; exact-source authenticated regression lokal lulus.

## 2026-07-31 — Founder commercial contract production

- Before: Growth sudah memiliki sebagian limit, tetapi Pro frame dan storage
  masih ambigu, quota aset frame masih global 2 GB, dan public/API belum
  menjelaskan seluruh policy founder secara konsisten.
- After: Growth Rp200.000/bulan memakai 1 device, 10 frame, 3 preset, offline
  24 jam, dan 2 GB; Pro Rp500.000/bulan memakai 4 device, 50 frame, 10 preset,
  offline 168 jam, dan 10 GB. Trial guardrail, fair-use, local-photo boundary,
  support, retention, dan offboarding konsisten pada backend/Studio.
- Backend source `528e68d4aea27d847250075acd02d7753b07e3b6`, release
  `20260731101529-528e68d`; Studio source
  `f6fa6f368e5734842d5dff0ff2310f5d5f7a9299`, release
  `20260731101529-f6fa6f3`.
- Validation: backend 908/908, Studio 156 unit dan 54 E2E, audit dependency 0,
  restore 142 tabel, tiga migration additive, deploy gate 6/6, dan public smoke
  utama HTTP 200.
- Payment canary existing tetap exactly-once; release tidak membuat intent,
  QRIS, atau transaksi baru.
- Rollback: backend `20260731082637-70155bb` dan Studio
  `20260731082637-28adcee`.
- Delivery/activation: `PRODUCTION_DEPLOYED` / `PRODUCTION_ACTIVATED`.
- Business readiness: `NEEDS CONFIRMATION` sampai Founding Studio Pilot dan
  bukti notification/UAT yang diwajibkan lulus.

## Konteks

Gunakan bersama [PRODUCT](PRODUCT.md), [DOSSIER](DOSSIER.md), dan exact release
scope.

## 2026-07-31 — Integrated production activation

- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`.
- Before: backend trial/subscription/Owner Console dan public self-service
  masih candidate; `/pricing`, `/help`, serta `/legal` belum diroute konsisten.
- After: backend cumulative, additive migration, Owner Console, trial 14 hari
  dua fase, subscription Growth/Pro, Studio, serta Home/Pricing/Help/Contact/
  Privacy/Terms/Legal dipromosikan atomik.
- Backend source `70155bb7db901beebb9fdeb65d5869a18ee8f874`, release
  `20260731082637-70155bb`.
- Studio source `28adcee9706ec8fde509d410d60cbea173c74a5b`, release
  `20260731082637-28adcee`.
- Security header HSTS/X-Frame-Options dikonsolidasikan; CSP tetap strict.
- Validasi: backend 906/906, Studio 156 unit + 54 E2E, public production browser
  8/8, encrypted backup/restore, migration/deploy gate, rollback compatibility,
  monitoring, dan post-deploy smoke lulus.
- Satu canary existing tetap exactly-once; release tidak membuat payment
  intent, QRIS, atau transaksi kedua.
- Rollback: backend `20260731080405-b45434b`, Studio
  `20260731080405-28adcee`.

## 2026-07-31 — Provider canary paid dan callback exactly-once

- Klasifikasi: `CONFIRMED`.
- Satu canary pembayaran Tokopay production bernilai rendah berhasil dibayar.
- Jumlah intent tetap satu; satu callback provider diterima dan diproses
  exactly-once.
- Subscription menjadi aktif dan katalog canary otomatis diarsipkan.
- Provenance runtime: Saga Platform release `20260727085127-5bf7977`.
- Tidak ada deploy, migration, atau perubahan setting production dalam
  verifikasi ini.
- Backend cumulative candidate dan public self-service tetap
  `IMPLEMENTED_NOT_DEPLOYED`.
- Identifier transaksi, receipt, payload callback, tenant, dan data restricted
  tidak disimpan di repository publik.

## 2026-07-31 — Provider canary intent dibuat

- Status historis: `DEPRECATED` oleh entri paid/callback exactly-once di atas.
- Status backend komersial: `IMPLEMENTED_NOT_DEPLOYED`.
- Satu canary pembayaran production dibuat secara terotorisasi dan tetap
  pending/unpaid.
- Tidak ada retry atau intent kedua.
- Paid callback, processed receipt exactly-once, dan activation provider belum
  terverifikasi.
- Source, release, database migration, dan production setting tidak berubah.
- Detail transaksi dan identifier restricted tidak disimpan di repository ini.

## 2026-07-31 — Session Completion & Privacy Handoff production

- Status: `PRODUCTION_DEPLOYED`.
- Before: customer dapat menekan selesai/reset langsung, nama file dapat
  terlihat, dan recovery state belum dibersihkan saat handoff.
- After: customer memanggil operator; operator memverifikasi output/handoff;
  privacy mode memasking nama output; cleanup recovery fail-closed dengan
  retry tanpa menghapus source/output file.
- Source `2f65a9ac0322c33a429dcc888bdacd59836aab0b`, release
  `20260731113223-2f65a9a`.
- Validation: 156 unit, 54 E2E, 50/200/500 import, accessibility/responsive,
  dependency audit, bundle budget, dan public smoke lulus.
- Backend/payment/provider tidak berubah; candidate backend/public
  self-service tetap `IMPLEMENTED_NOT_DEPLOYED`.

## 2026-07-31 — Public self-service candidate

- Status: `IMPLEMENTED_NOT_DEPLOYED` dan `BLOCKED`.
- Before: Pricing, Help/Contact, dan Legal/Privacy publik belum tersedia pada
  route kanonik; kontrak trial publik masih dapat membaca nilai 7 hari.
- After: source frontend memiliki Home, Pricing, Help, Contact, Privacy, dan
  Terms responsif dengan hanya Growth Rp200.000 dan Pro Rp500.000 per bulan,
  trial dua fase 14 hari tanpa auto-charge, CTA plan-aware, SLA support,
  privacy/retention, serta loading/offline/recovery state.
- Dampak: calon customer dan operator memiliki satu kontrak publik yang jelas
  dan aksesibel, tanpa mengekspos bundle, multi-term, atau provider canary.
- Source: `6ff15f653c64a3bb2ffed5ee3785341165dbb0c9`.
- Validasi: 153 unit test, 47 E2E, build/budget, dependency audit, automated
  WCAG 2.1 AA, forced-colors, dan visual 390 sampai 2560 piksel lulus.
- Production tidak berubah.
- Blocker: signup production masih menjalankan kontrak trial lama. Halaman
  publik baru tidak boleh dipromosikan sebelum backend 14 hari diaktifkan dan
  public smoke membuktikan kontrak end-to-end yang sama.

## 2026-07-31 — Backend release guard ready

- Status: `IMPLEMENTED_NOT_DEPLOYED` dan `BLOCKED`.
- Before: runbook hanya mengenali satu migration dan dapat memakai kembali
  asset Owner Console lama.
- After: kedua additive migration dikunci dengan checksum dan release wajib
  membawa build SagaView Admin, Home, serta Subscription Portal terbaru.
- Dampak: kandidat backend dapat dipromosikan dengan backup, rollback, schema,
  dan frontend asset guard yang sesuai source.
- Runtime candidate: `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Tooling provenance: `b778a068a09e28a6900918172fc64637655be2fa`.
- Validasi: 905/905 backend test, build/audit, encrypted backup/restore,
  migration rehearsal, candidate gate, dan rollback gate lulus.
- Production tidak berubah. Backend aktif tetap
  `20260729002327-86d6920`.
- Blocker: actual Tokopay paid canary dan processed callback belum tersedia.

## 2026-07-31 — Fixed 4R output production

- Status: `PRODUCTION_DEPLOYED`.
- Portrait 1200x1800, landscape 1800x1200, 300 DPI.
- Canvas/editor/review memakai rasio 4R yang sama.
- Release: `20260731023744-1c5678c`.
- Source: `1c5678c6fa8b180ebf4716d7060c2cb058c02317`.

## 2026-07-31 — Backend cumulative candidate

- Status: `IMPLEMENTED_NOT_DEPLOYED`.
- Owner Console context, trial, subscription, callback exactly-once, dan device
  boundary sudah diimplementasikan.
- Runtime candidate: `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Blocker: actual Tokopay canary dan processed callback.
