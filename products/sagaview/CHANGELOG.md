# SagaView Changelog

## Tujuan

Mencatat perubahan material SagaView tanpa mencampur candidate dan production.

## 2026-08-05 - Free drag rotation slot production

- Klasifikasi: `CONFIRMED` melalui koreksi founder `DEC-036`.
- Status: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; business readiness tetap
  `NEEDS CONFIRMATION`.
- Backend source `0b655da4aeea270ce9048d853e7df09d42a36dd9` aktif sebagai
  release `20260805193458-0b655da`; rollback `20260805133709-5906028`.
- Studio source kumulatif `2121ebb80fa4238e91eef4003f852d34841e923f`
  aktif sebagai release `20260805193458-2121ebb`; rollback
  `20260805191930-1accf32`. Release mempertahankan compact navigation dan
  workspace Session monitor besar yang telah aktif sebelumnya.
- Ikon rotate tiap slot sekarang menjadi drag handle: tahan lalu geser kiri
  untuk sudut negatif atau kanan untuk sudut positif. Angle tersimpan per slot,
  dirender pada customer canvas, dan digunakan pada export PNG tanpa menukar W/H.
- Commerce canary dipulihkan melalui lifecycle resmi sebelum guarded release.
  Exact-source tests, audit dependency, backup, preflight/deploy gate 6/6,
  callback exactly-once, service/header/journal, HTTP smoke, Nginx, rollback,
  dan marker bundle production lulus. Release tidak membuat intent atau QRIS.
- Residual: authenticated Owner visual UAT memakai frame miring nyata dan
  Founding Studio Pilot sebelum klaim `BUSINESS_READY` mass-scale.

## 2026-08-05 - Workspace Session monitor besar production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; business readiness tetap
  `NEEDS CONFIRMATION`.
- Before: workspace Session berhenti pada 1180 piksel, sehingga layar Full HD
  dan QHD menyisakan ruang kosong besar di sekitar alur operasional.
- After: shell utama dapat memakai 1720 piksel dan workspace Session maksimum
  1600 piksel. Layar compact tetap reflow, batas teks tetap terbaca, dan tidak
  ada horizontal overflow.
- Source Studio `4bbd1665222332da7aee28da8d4ce01253b9ef8c`, release
  `20260805181945-4bbd166`, rollback `20260805170231-2b0331d`; backend tetap
  `20260805133709-5906028`.
- Gate: red-green viewport, focused Playwright 17/17, unit 156/156, full E2E
  114 pass/2 capture-only skip, lint, format, typecheck, client/SSR build,
  bundle budget, audit nol, target preflight, atomic activation, live
  Playwright 6/6, header keamanan tunggal, service/endpoint/journal, dan visual
  390x844, 1440x900, serta 2560x1440 lulus.
- Subscription activation tetap dilewati sesuai arahan founder. Entitlement,
  payment, tenant isolation, device/session, foto lokal, output 4R, dan data
  tenant tidak berubah.

## 2026-08-05 - Compact all-menu Studio production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; business readiness tetap
  `NEEDS CONFIRMATION`.
- Source Studio `2b0331d53dc4c590dee5329ef892ea01fa4a8a97` aktif sebagai
  release `20260805170231-2b0331d`; rollback
  `20260805133709-57c0337` dipertahankan. Backend tetap
  `20260805133709-5906028`.
- Header compact membuka seluruh delapan route berkelompok dengan item 48 px,
  current state, Escape focus restoration, dan fokus konten setelah navigasi.
  Sidebar desktop dan navigasi paged lama tetap tersedia.
- Unit 156/156, full E2E 113 pass/2 capture-only skip, build/budget, audit nol,
  backup/restore, backend gate teknis, live Playwright 11/11, enam endpoint 200,
  service/header/journal, no-overflow, satu watermark, serta visual 390x844 dan
  1440x900 lulus.
- Aktivasi subscription tenant dilewati atas keputusan founder hanya untuk
  promosi frontend ini. Tidak ada entitlement, subscription, payment,
  migration, tenant isolation, foto, atau output 4R yang berubah.

## 2026-08-05 - Free drag rotation slot candidate

- Klasifikasi: `CONFIRMED` sebagai koreksi founder melalui `DEC-036`.
- Before: ikon rotate production menukar W/H 90 derajat dan tidak membuat box
  mengikuti opening frame yang miring.
- After: tahan ikon rotate lalu geser kiri/kanan untuk angle negatif/positif.
  W/H tidak ditukar; angle disimpan per slot, dirender pada customer Studio,
  dan digunakan pada export PNG. Frame lama default 0 derajat.
- Source Owner/API `19ac8ab8653de0bf2edc18d164308ea8bbde3640`; source Studio
  `e48be94ab418605f81f8d1484043becfc9fa8a4a`.
- Validation: build; 120 test SagaView/1.250 assertions; focused Playwright
  desktop memverifikasi drag kanan, reset, drag kiri, resize, dan move; visual
  QA; 44 file test Studio/156 test; lint, typecheck, client/SSR build, bundle
  budget, audit npm/Composer nol advisory, dan diff check.
- Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Guarded preflight
  berhenti sebelum artifact upload karena commerce canary internal telah
  diarsipkan Owner. Production tetap backend `20260805133709-5906028` dan Studio
  `20260805133709-57c0337`; tidak ada state runtime yang diubah oleh percobaan
  deployment.

## 2026-08-05 - Urutan deteksi dan rotate slot individual production

- Klasifikasi: `CONFIRMED`.
- Status: delivery `PRODUCTION_DEPLOYED`, activation tetap
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source backend `5906028703759d49ef930a7363c5efc293f6be97` aktif sebagai
  release `20260805133709-5906028`; Studio source tidak berubah dan dipaketkan
  ulang dari `57c0337b43b46229253ce89ace39f2ed587fc2d7` sebagai
  `20260805133709-57c0337`.
- Frame baru dimulai dengan 0 slot. Operator memilih PNG/WebP, menjalankan
  `Deteksi otomatis`, memeriksa atau mengoreksi slot, lalu menyimpan. Manual add
  baru aktif setelah deteksi pernah dicoba; draft tanpa slot diblokir dan frame
  existing tetap memuat slot tersimpan.
- Setiap box slot memiliki ikon rotate kecil yang menukar W/H 90 derajat di
  sekitar titik tengah dan menjaga geometri di dalam canvas tanpa memutar frame
  atau slot lain. Drag, feather, empat resize handle, dan input X/Y/W/H tetap
  tersedia.
- Validation: exact-source build; 119 test SagaView/1.248 assertions; focused
  Playwright desktop 1/1; visual QA; npm dan Composer audit nol; production
  preflight serta deploy gate 6/6; backup terverifikasi; canary lulus; payment
  state tidak berubah dan tidak ada intent/QRIS baru; seluruh service aktif;
  security header/Nginx valid; journal bersih; endpoint dan deployed bundle
  feature check lulus.
- Rollback backend `20260805053500-9b4b68a` dan Studio
  `20260805053500-57c0337` dipertahankan. Authenticated owner visual UAT belum
  diulang; profile sentuh mobile/tablet bukan acceptance target untuk editor
  desktop dan tetap residual QA.

## 2026-08-05 - Rotate individual pada setiap slot candidate

- Klasifikasi: `CONFIRMED` sebagai keputusan produk dan candidate lokal, bukan
  production.
- Setiap box slot memiliki ikon rotate kecil yang selalu terlihat dan memiliki
  accessible name. Klik menukar lebar/tinggi slot 90 derajat di sekitar titik
  tengah lalu menjaga hasil tetap di dalam canvas.
- Rotate hanya mengubah slot terpilih; frame, slot lain, feather, drag-move,
  empat handle resize, serta input X/Y/W/H tetap bekerja.
- Source kumulatif `5906028703759d49ef930a7363c5efc293f6be97` pada branch
  `codex/s70-single-device-production-lineage`.
- Validation: Prettier; build; 119 test SagaView/1.248 assertions; focused
  Playwright desktop 1/1 memverifikasi ikon terlihat dan W/H tertukar; visual QA
  memastikan ikon tidak menutupi handle; npm dan Composer audit nol advisory.
- Status delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
  backend `9b4b68a1` / `20260805053500-9b4b68a`. Tidak ada API, migration,
  tenant/device/session, foto, payment, pricing, entitlement, atau output 4R
  yang berubah.

## 2026-08-05 - Urutan import frame sebelum deteksi candidate

- Klasifikasi: `CONFIRMED` sebagai keputusan produk dan candidate lokal, bukan
  production.
- Status: delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; activation
  production dan business readiness tidak berubah.
- Before: frame baru langsung menerima satu slot bawaan sebelum file artwork
  dan deteksi transparansi diproses.
- After: frame baru dimulai dengan 0 slot; operator memilih PNG/WebP, menjalankan
  `Deteksi otomatis`, lalu memeriksa atau mengoreksi slot. `Tambah slot` manual
  baru aktif setelah deteksi pernah dicoba, dan draft tanpa slot diblokir.
  Frame existing tetap memuat slot tersimpan; mengganti artwork mengulang urutan.
- Source `71d70fb87ebd86db80f28b43c76239c84690e96f` pada branch
  `codex/s70-single-device-production-lineage`.
- Validation: build; 119 test SagaView/1.248 assertions; focused Playwright
  desktop 1/1 mencakup 0 slot sebelum unggah, 0 slot setelah unggah, deteksi,
  rotasi, feather, resize, dan move; npm audit production serta Composer lock
  audit nol vulnerability/advisory; diff dan public-safety check lulus.
- Batas QA: simulasi drag mouse pada profile sentuh mobile/tablet di test lama
  tidak bergerak; desktop target editor lulus. Tidak ada deployment, migration,
  payment, tenant/device/session, foto local-first, pricing, entitlement, atau
  output 4R yang berubah.
- Production tetap backend source `9b4b68a126cbf5f98f67ddf562eedbc93df60a2f`,
  release `20260805053500-9b4b68a`.

## 2026-08-05 - Editor frame landscape dan geometri slot production

- Klasifikasi: `CONFIRMED`.
- Status: delivery `PRODUCTION_DEPLOYED`, activation tetap
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Before: artwork frame dapat terlihat dipenyet ketika canvas landscape
  dipilih; pilihan putar kanan/kiri belum memengaruhi preview/geometri; kontrol
  feather semua slot dan empat resize handle tidak tersedia pada editor aktif.
- After: preview mempertahankan rasio asli dengan `contain`; landscape dapat
  diputar kanan/kiri 90 derajat dengan pemetaan ulang slot; deteksi otomatis
  memberi feather 4 px; semua slot dapat diatur 0–12 px atau ±2 px; tiap slot
  dapat dipindah dan di-resize dari empat sudut, sementara X/Y/W/H tetap ada.
- Source backend `9b4b68a126cbf5f98f67ddf562eedbc93df60a2f`, branch
  `codex/s70-single-device-production-lineage`, release
  `20260805053500-9b4b68a`. Studio source tetap
  `57c0337b43b46229253ce89ace39f2ed587fc2d7` dan dipaketkan sebagai release
  `20260805053500-57c0337`.
- Validation: build; 119 test SagaView/1.248 assertions; focused Playwright
  1/1; npm audit production nol vulnerability; Composer lock audit nol
  advisory; gate produksi 6/6; backup; additive migration; canary perangkat;
  callback exactly-once tanpa intent/QRIS baru; service/header/journal/Nginx;
  rollback; lima endpoint utama 200; dan bundle production feature check.
- Rollback: backend `20260803221207-b504dae`, Studio
  `20260803221207-57c0337`. Kontrak tenant, device/session, foto local-first,
  payment, output 4R, pricing, dan entitlement tidak berubah.
- Residual: authenticated owner visual UAT runtime terbaru belum diulang karena
  vault lokal terkunci. Exact-source Playwright dan public production smoke
  sudah lulus; residual ini tidak boleh dipakai untuk klaim `BUSINESS_READY`.

## 2026-08-05 - Semua menu Studio Console pada compact candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: indikator `Menu n/8` pada header compact tidak interaktif dan hanya
  dua sampai tiga route horizontal terlihat; seluruh delapan route tidak dapat
  dipindai atau dipilih langsung pada mobile dan reflow zoom.
- After: indikator menjadi disclosure 44 piksel yang membuka seluruh delapan
  route berkelompok. Item minimal 48 piksel, current state terlihat, Escape
  mengembalikan fokus ke pemicu, dan memilih route memindahkan fokus ke konten.
  Navigasi paged tetap tersedia; sidebar desktop tidak berubah.
- Source `2b0331d53dc4c590dee5329ef892ea01fa4a8a97` pada branch
  `codex/s114-sagaview-all-menu`. Validation: red 3/3 menjadi focused 5/5;
  regresi navigasi 7/7; format/lint/typecheck; unit 156/156; build/SSR; budget
  288,4 KiB dari 450 KiB; full E2E 113 pass dan 2 capture-only skip; npm audit
  nol. Satu timeout tes lama pada run tiga worker lulus 3/3 terisolasi dan
  full-suite dua worker kemudian lulus bersih.
- Matriks 390x844, 720x450 efektif 200%, 960x600 efektif 150%, 1024x576 efektif
  125%, 1280x720, 1440x900, 1512x982, 1920x1080, 2560x1440, dan 3840x2160
  memverifikasi keyboard/focus, forced-colors, reduced-motion, target 44/48
  piksel, no-overflow, serta tepat satu `Powered by SagaView`.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; backend tetap
  `b504dae30aee90a2b55e1e670d1934e2fc524218`, release
  `20260803221207-b504dae`. Service aktif dan Login, Session, General, serta
  Changelog merespons 200 pada verifikasi read-only.
- Blocker deploy: release-safety receipt berisi encrypted backup, checksum,
  disposable restore, migration preflight yang terikat exact S114, serta
  approval produksi belum tersedia. Permission, device/session, foto,
  local-first, tenant, payment, activation, dan business readiness tidak berubah.

## 2026-08-05 - Dialog perubahan belum disimpan aksesibel candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: penjaga navigasi yang dipakai General, Brand, dan Output hanya berupa
  overlay visual; screen reader tidak memperoleh alert dialog bernama, fokus
  tidak ditahan, Escape tidak tersedia, dan kontrol belum dijamin 44 piksel.
- After: penjaga memakai primitive alert dialog dengan title/description,
  focus trap, Escape yang setara Tetap di Halaman, internal scroll, overlay
  berlapis benar, serta tiga aksi penuh selebar canvas dengan tinggi 48 piksel.
  Kontras aksi peringatan juga lulus Axe.
- Source `707a6f615715c67a8c09817228983c38c28857d6` pada branch
  `codex/s112-sagaview-unsaved-dialog`. Validation: red 1/1 gagal menjadi
  focused 3/3 hijau; regression General/Brand/Output 11 pass dan 1 capture-only
  skip; format/lint/typecheck; unit 156/156; build/SSR; budget 288,4 KiB dari
  450 KiB; full E2E 108 pass dan 2 capture-only skip, termasuk import
  50/200/500; npm audit normal dan production-only nol.
- Matriks 390x844, 1280x720, 1440x900, serta reflow efektif 125%, 150%, dan
  200% memverifikasi dialog tetap dalam viewport, no-overflow, keyboard/focus,
  Axe, forced-colors, reduced-motion, dan tepat satu `Powered by SagaView`.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; backend tetap
  `b504dae30aee90a2b55e1e670d1934e2fc524218`, release
  `20260803221207-b504dae`. Session dan General merespons 200 dengan HSTS, CSP,
  dan XFO.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore dan
  migration preflight yang terikat exact S112 serta approval produksi belum
  tersedia. Persistence setting, device/session, foto/local-first, tenant,
  payment, activation, dan business readiness tidak berubah.

## 2026-08-05 - Dialog PIN aman pada zoom laptop candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: gerbang PIN untuk override paket tidak mempunyai semantik dialog dan
  nama aksesibel. Pada reflow laptop setara zoom 200%, struktur tanpa batas
  tinggi/scroll internal juga berisiko memotong kontrol penting.
- After: dialog memakai primitive aksesibel dengan focus trap dan Escape,
  header/body/footer terpisah, body dapat discroll dalam visual viewport,
  overlay tetap di atas form override, input 44 piksel, serta close/action 48
  piksel. Kontras teks bantuan yang ditemukan Axe juga diperbaiki.
- Source `808470c1ec3f8ae83f050a2988b7ff8af3b1f3a9` pada branch
  `codex/s111-sagaview-zoom-modal`. Validation: red 1/1 gagal menjadi focused
  1/1 hijau; visual capture 1/1; format/lint/typecheck; unit 156/156; build/SSR;
  budget 288,3 KiB dari 450 KiB; full E2E 106 pass dan 1 capture-only skip,
  termasuk import 50/200/500; npm audit normal dan production-only nol.
- Matriks 390x844, 1280x720, 1440x900, serta reflow efektif 125%, 150%, dan
  200% memverifikasi dialog tetap dalam viewport, no-overflow, keyboard/focus,
  Axe, forced-colors, reduced-motion, dan tepat satu `Powered by SagaView` pada
  surface Studio.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; backend tetap
  `b504dae30aee90a2b55e1e670d1934e2fc524218`, release
  `20260803221207-b504dae`. Session dan Install merespons 200 dengan HSTS, CSP,
  dan XFO.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore yang
  terikat exact S111 dan approval produksi belum tersedia. Validasi PIN,
  device/session, foto/local-first, tenant, payment, frame, output 4R,
  activation, dan business readiness tidak berubah.

## 2026-08-05 - Sidebar deep-route compact candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: pada Windows 1280x720, `/admin/install` aktif tetapi item Install App
  berada di luar area sidebar yang terlihat; operator kehilangan konteks route
  sampai menggulir manual.
- After: sidebar desktop mengikuti `aria-current=page` memakai scroll `nearest`,
  menghormati reduced-motion, dan tetap menyerahkan fokus route ke konten utama.
  Mobile 390x844 serta MacBook/monitor lebar mempertahankan mekanisme lama.
- Source `7ad38ef393686decb1d7afc9dea13960d770b986` pada branch
  `codex/s110-sagaview-compact-sidebar`. Validation: red 1/1 gagal, green
  focused 6/6, format/lint/typecheck, unit 156/156, build/SSR, budget 288,3 KiB
  dari 450 KiB, full E2E 105/105 termasuk import 50/200/500, dan npm audit nol.
- Matriks 390x844, 1280x720, 1440x900, 1512x982, dan 2560x1440 memverifikasi
  route aktif terlihat, target 44 piksel, keyboard focus, forced-colors,
  reduced-motion, no-overflow, serta satu `Powered by SagaView` non-fixed.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; endpoint Session
  dan Install merespons 200 dengan masing-masing satu HSTS, CSP, dan XFO.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore yang
  terikat exact S110 dan approval produksi belum tersedia. Device/session,
  foto/local-first, tenant, payment, frame, output 4R, dan business readiness
  tidak berubah.

## 2026-08-04 - Focus recovery navigasi Studio candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: navigasi internal, termasuk CTA `Kembali ke Session`, mengubah route
  tetapi meninggalkan fokus browser pada elemen tidak aktif. Pengguna keyboard
  dan screen reader tidak mendapat handoff deterministik ke konten route baru.
- After: Admin shell memindahkan fokus ke `#studio-console-content` sesudah
  perubahan pathname, mengabaikan render pertama, dan mempertahankan kontrak
  skip-link `tabindex=0`. Screenshot evidence sekarang berukuran viewport exact
  390x844 dan 1440x900, bukan full-page capture.
- Source `2bb868f82b8a4d3a6dc6cd1cd2a7091f447cfeca` pada branch
  `codex/s105-studio-route-focus`. Validation: red 2 pass/1 fail pada focus,
  green focused 3/3, gabungan accessibility/navigation 12/12, format/lint/
  typecheck, 156/156 unit, build/SSR, budget 288,3 KiB dari 450 KiB, full E2E
  99/99, dan npm audit nol vulnerability.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; empat public
  route merespons 200 dan HTML Changelog tetap memuat `v0.20.3`.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore yang
  terikat exact S105 dan approval produksi belum tersedia.
- Device/session, foto/local-first, permission, tenant isolation, payment,
  frame/preset, export/4R, dan satu `Powered by SagaView` tidak berubah.

## 2026-08-04 - Typography visual QA candidate dipulihkan

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: Work Sans dari junction dependency worktree mendapat delapan respons
  HTTP 403 pada browser lokal. Visual regression tetap berjalan, tetapi
  hierarchy, kepadatan, dan wrapping dinilai memakai font fallback.
- After: Vite hanya mengizinkan source worktree dan target dependency yang
  sudah di-resolve. Work Sans termuat tanpa respons font gagal pada 390x844 dan
  1440x900; regression test mengunci family terhitung dan status respons aset.
- Source `babd04cf0d728da2b32318a3200f47b00dbc59e0` pada branch
  `codex/s97-typography-assets`. Validation: red-green 8 respons 403 menjadi 0,
  focused Playwright 6/6, 156/156 unit, 99/99 E2E termasuk Axe,
  forced-colors, navigation, import 50/200/500, lint, typecheck, build, bundle
  budget 288,3 KiB dari batas 450 KiB, dan npm audit nol vulnerability.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; public route
  Changelog dan Home merespons 200 serta HTML Changelog tetap memuat `v0.20.3`.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore yang
  terikat exact candidate dan approval eksekusi belum tersedia.
- Tepat satu `Powered by SagaView` tetap non-fixed dan tidak masuk foto,
  export, print, invoice, atau receipt. Device/session, permission, local-first,
  tenant isolation, payment, frame, serta output 4R tidak berubah.

## 2026-08-04 - Navigasi Changelog operasional candidate

- Klasifikasi: `CONFIRMED` sebagai candidate, bukan production.
- Status: `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`.
- Before: 47 release dan seluruh detail terbuka sekaligus, tanpa pencarian,
  filter, pembagian batch, empty recovery, atau jalur dominan kembali ke
  Session; halaman sangat panjang pada mobile dan desktop.
- After: release terbaru mendapat hierarchy utama, status bundle/offline tetap
  jujur, pencarian mencakup versi dan teks perubahan, filter memisahkan
  All/Production/Ready/Historical, enam batch membatasi kepadatan, hanya satu
  detail dapat dibuka, filtered-empty menyediakan reset, dan CTA 48 px kembali
  ke Session.
- Source `e28422f9daafb1ff27bb0421bebcb285b63cd56c` pada branch
  `codex/s96-studio-nav-flow`. Validation: focused 3/3, 156/156 unit, 98/98 E2E
  termasuk import 50/200/500, format/lint/typecheck/build, bundle budget 288,3
  KiB dari batas 450 KiB, Axe, forced-colors, reduced-motion, no-overflow
  390x844 dan 1440x900, serta npm audit nol vulnerability.
- Production tetap Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`, rollback `20260803215526-be72510`; backend tetap
  `b504dae30aee90a2b55e1e670d1934e2fc524218`, release
  `20260803221207-b504dae`.
- Blocker deploy: fresh encrypted backup/checksum/disposable restore yang
  terikat exact candidate dan approval eksekusi belum tersedia.
- Tepat satu `Powered by SagaView` tetap non-fixed dan tidak masuk foto,
  export, print, invoice, atau receipt. Device/session, permission, local-first,
  tenant isolation, payment, frame, serta output 4R tidak berubah.

## 2026-08-04 - Signature login, dependency patch, dan watermark tunggal production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: halaman login menampilkan copyright SagaDev dan tautan legal, tetapi
  belum memiliki signature produk; Studio memakai dua node responsive untuk
  signature dan navigasi mobile dapat berhenti sebelum target terlihat penuh.
- After: login dan Studio masing-masing menampilkan tepat satu signature
  `Powered by SagaView`. Studio memakai satu footer responsif dalam DOM,
  forced-colors eksplisit, ruang aman mobile, dan navigasi yang membawa target
  sampai terlihat penuh tanpa smooth scroll saat reduced-motion.
- Backend source `b504dae30aee90a2b55e1e670d1934e2fc524218`, release
  `20260803221207-b504dae`; Studio source
  `57c0337b43b46229253ce89ace39f2ed587fc2d7`, release
  `20260803221207-57c0337`.
- Validation: 908/908 backend test dengan 10.637 assertions, release safety
  3/3, 156 Studio unit test, 95/95 E2E, build, bundle budget, Composer/npm audit
  nol vulnerability, deployment gate, service/Nginx/journal, serta browser
  production login+Studio pada 390x844 dan 1440x900 lulus. Semua empat screen
  memiliki satu signature dalam DOM, satu terlihat, tanpa overflow, runtime
  error, atau axe serious/critical violation.
- Rollback: backend `20260803215436-b504dae`; Studio
  `20260803215526-be72510`.
- Tidak ada perubahan database, migration, payment/provider, entitlement,
  tenant/device/session, permission, customer photo, frame, export, atau print.

## 2026-08-03 - Fallback bantuan device selalu tersedia production

- Klasifikasi: `CONFIRMED`.
- Status: `PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED`; business readiness
  mass-scale tetap `NEEDS CONFIRMATION`.
- Before: halaman memanggil bootstrap Support Hub saat load; endpoint production
  404 membuat launcher bantuan hilang, sehingga operator hanya dapat menemukan
  diagnostik melalui panel kesehatan terpisah.
- After: launcher selalu tersedia dengan diagnostik ter-redact, format laporan
  aman, dan koneksi online atas aksi eksplisit. Gagal menghubungkan online tetap
  mempertahankan fallback tanpa foto/PII, identitas tenant/device, credential,
  token, atau path file.
- Studio source `2ab72618a13af6b52d33ee946c56b4b699b70de6`, release
  `20260803163234-2ab7261`; rollback `20260803153923-bb2abce`. Backend tetap
  `20260802042221-f26bb57` dan tidak dipromosikan ulang.
- Validation: 156 unit, 95/95 E2E, focused fallback 2/2 dan katalog 5/5,
  build/budget, dependency audit 0, forced-colors/reduced-motion, immutable
  promotion, service/Nginx/journal, serta production smoke 390x844 dan
  1440x900 tanpa request support otomatis, page error, overflow, kebocoran
  diagnostik, atau watermark ganda.
- Residual: endpoint bantuan online tetap 404 bila operator mencoba koneksi;
  remote AI/ticket belum pulih end-to-end. Fallback lokal sudah aktif.
- Tidak ada migration atau perubahan payment/provider, tenant/device/session,
  customer photo, permission, frame, dan export/print 4R.

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
