# SagaBook Changelog

## 2026-08-08 - Manual booking retry dan read-after-write operator candidate

- Klasifikasi `CONFIRMED`; source
  `fe329a0b12e49ae6c32c4ec861318ccca843c86b` pada branch
  `codex/s157-sagabook-manual-booking-retry` sudah dipush.
- Before: respons mutation yang hilang atau refresh dashboard yang gagal dapat
  terlihat sebagai booking gagal dan mendorong operator membuat booking ganda.
  After: retry memakai kunci stabil tenant-scoped, backend me-replay booking
  asli, payload conflict ditolak 409, kalender diisi dari response mutation,
  dan refresh memiliki recovery terpisah.
- Double-submit diblok sinkron; state loading/error/retry diumumkan secara
  aksesibel dan target aksi minimum 44 piksel.
- Gate hijau: backend 995/995 (11.356 assertion), focused manual booking 17/17,
  Playwright retry/recovery 2/2, matriks UI 390x844 dan 1440x900,
  forced-colors/reduced-motion/no-overflow, build/design, Pint/diff, dan audit
  npm/Composer/OSV nol advisory.
- Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Production tetap source
  `c7f13487` / release `20260808115539-c7f1348`; subscription dan data customer
  tidak diubah. Gap berikutnya adalah combined exit S7-S8.

## 2026-08-08 - Support Hub grounding immutable production release

- Klasifikasi `CONFIRMED`; source kumulatif
  `c7f13487f33b8075ba7c84f05fc41daec6a622e7` aktif sebagai release
  `20260808115539-c7f1348`, dengan rollback `20260808063729-04c9b64`.
- Intent eksplisit baru kini mengalahkan previous intent, greeting mereset
  konteks, `caranya` bukan follow-up mandiri, bonus surface tidak dapat menjadi
  bukti tunggal, dan citation harus mendukung intent jawaban.
- Gate hijau: focused Support Hub 47/47 (3.454 assertion), full backend 996/996
  (11.356), browser context 2/2, build, Composer/npm/OSV audit, backup
  terenkripsi/checksum/disposable restore, immutable deploy, service/header/
  public smoke, dan rollback.
- Status app `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; model, prompt,
  provider, KB, subscription, booking/payment, dan data customer tidak diubah.
  `BUSINESS_READY` serta evaluasi latency/cost authenticated tetap terpisah.

## 2026-08-08 - Support Hub grounding dipindahkan ke baseline S143

- Klasifikasi `CONFIRMED` melalui exact source dan test lokal. Perbaikan
  intent-switch dari candidate awal dipindahkan ke source `dedef195` di atas
  baseline production S143 `8fac4f68`, pada branch
  `codex/s145-sagaview-chatbot-support` yang sudah dipush.
- Intent eksplisit tetap mengalahkan konteks lama, greeting mereset konteks,
  `caranya` bukan follow-up mandiri, dan citation harus mendukung intent.
- Combined Support Hub + device support lulus 41/41 dengan 3.394 assertion;
  Composer audit nol advisory. Prompt, model, KB, schema, data customer, dan
  production tidak berubah.
- Status `AI_EVAL_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; live smoke authenticated, latency/error,
  monitoring, dan rollback pipeline AI masih menjadi gate promotion.

## 2026-08-08 - Support Hub intent-switch grounding candidate

- Klasifikasi `CONFIRMED`; source
  `dad3f5fb1b4af7a0b45aed99ead3f164d9b70b1d`, feature commit
  `de85c7d47cbdcab04c55a202345b45331f3fde7d`, branch
  `codex/chatbot-grounding-finalization`.
- Before: pertanyaan voucher setelah topik cabang dapat mempertahankan artikel
  cabang karena previous intent dan surface terlalu dominan. After: intent
  eksplisit baru menang, bonus surface bukan bukti tunggal, `caranya` bukan
  follow-up mandiri, dan greeting memberi direct response tanpa citation serta
  mereset konteks.
- Gate hijau: focused 45/45 (3.413 assertion), full backend 964/964 (11.022),
  corpus 1.000/1.000, Playwright 4/4 pada 390x844 dan 1440x900, build,
  lint/Pint/diff, dan Composer advisory nol.
- Status `AI_EVAL_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
  Tidak ada perubahan model, prompt, KB, endpoint, schema, data customer,
  subscription, atau production. Residual: authenticated live smoke,
  latency/error/token/cost, rollback pipeline AI, dan adapter SagaView.

## Tujuan

Mencatat perubahan material SagaBook dengan provenance public-safe.

## 2026-08-08 - Cumulative S131-S156 immutable production release

- Klasifikasi `CONFIRMED`; source kumulatif
  `04c9b6416fbe401a001f3fd7b83dad47c613e8e4` aktif sebagai release
  `20260808063729-04c9b64`, dengan rollback
  `20260806152606-0894df0` tersedia.
- Release mempromosikan ancestor S131-S156: auth/session, tenant/cabang,
  paket/background/Add-on/Resource, availability/slot recovery, expiry payment
  hold lintas tab, dan race aktual multi-process.
- Gate fresh lulus: backend 993/993 (11.342), auth 4/4, tenant/cabang 7/7,
  Add-on 4/4, Resource 5/5, storefront/slot 30 test, race 5/5, build/design
  26/0, serta npm/Composer/OSV nol advisory.
- Backup terenkripsi/checksum/disposable restore exact-SHA, manifest, DB audit
  100, migration pending nol, service health, dan public smoke lulus. Production
  390x844 serta 1440x900 menunjukkan canvas 390/460 piksel terpusat, tanpa
  overflow, console/request failure nol, dan satu watermark non-fixed.
- Status code `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`.
  `BUSINESS_READY` belum tercapai karena dua tenant masih mempunyai gap setup
  pilot. Subscription tenant tidak diaktifkan atau dinonaktifkan oleh release.
- Monitor staging lintas-produk masih gagal karena DNS SagaFin dan tujuan
  monitor eksternal belum dikonfigurasi; service serta endpoint SagaBook sehat
  dan temuan ini bukan blocker rilis SagaBook.

## 2026-08-08 - Sprint 7 multi-process same-slot race recovery candidate

- Klasifikasi `CONFIRMED`; source
  `04c9b6416fbe401a001f3fd7b83dad47c613e8e4` pada branch
  `codex/s156-sagabook-slot-race`.
- Before: dua proses dapat sama-sama melewati availability awal; request kalah
  sesekali menerima `booking_conflict` berisi detail SQL/database lock. After:
  transaksi mencoba ulang contention sampai tiga kali dan exception database
  tersisa dipetakan ke 409 `slot_conflict` dengan reason/action hint
  public-safe.
- Dua server PHP independen mengirim `POST /api/submit-booking` bersamaan ke
  satu database SQLite disposable. Lima dari lima race memberi satu 200 dan
  satu 409; database berakhir dengan tepat satu booking, hold, slot lock, dan
  `web_booking_created` audit tanpa write parsial atau data tenant/customer.
- Focused backend 253/253 (1.864), full backend 993/993 (11.342), browser
  recovery fresh 2/2 pada 390x844 dan 1440x900, build, design 26/0,
  npm/Composer/OSV nol advisory, serta Support Hub AI 38/38 (219) hijau.
  Bootstrap PHPUnit juga fail-closed terhadap autoloader donor junction agar
  exact worktree source yang diuji.
- Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S7-S8 tetap `INTEGRATION_IN_PROGRESS` menunggu
  retry mutation dan read-after-write operator. Production tetap
  `20260806152606-0894df0`; deploy ditahan sampai S21.

## 2026-08-08 - Sprint 7 payment-hold expiry cross-tab recovery candidate

- Klasifikasi `CONFIRMED`; source
  `f04e4a9c174c965b2e8308077d9f643f97ef6bd6` pada branch
  `codex/s155-sagabook-hold-expiry-recovery`.
- Before: QRIS memakai timer lokal yang dapat direset dan tab transfer dapat
  tetap menampilkan aksi lama sesudah hold server berakhir. After: deadline
  `paymentHoldExpiresAt` berasal dari backend, QRIS/transfer sinkron saat
  interval/focus/visibility, lalu merender recovery bersama tanpa QR atau aksi
  upload stale.
- `GET /api/booking-status/{code}` menyinkronkan expiry setelah token sah;
  transaction/row lock mengakhiri booking, hold, sesi, slot lock, dan settlement
  terkait dengan audit tunggal. `POST /api/payment/create-session` menolak
  refresh sesi expired dengan 409 `payment_hold_expired`; token salah 403
  sebelum mutasi.
- Focused final 253/253 (1.864), full backend 993/993 (11.342), browser gabungan
  S129+S154+S155 14/14, build, design 26/0, npm/Composer/OSV nol advisory, dan
  Support Hub AI 38/38 (219) hijau. Before exact-parent dan after 390x844 serta
  1440x900 menjaga canvas maksimum 460 piksel dan satu watermark non-fixed.
- Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S7-S8 tetap `INTEGRATION_IN_PROGRESS`.
  Production tetap `20260806152606-0894df0`; deploy ditahan sampai S21.

## 2026-08-08 - Sprint 7 payment-time slot conflict recovery candidate

- Klasifikasi `CONFIRMED`; source
  `1d9d774fe1f506dd076fe09668c7a05e3685c387` pada branch
  `codex/s154-sagabook-slot-conflict-recovery`.
- Before: klik ganda dapat mengirim dua submit, konflik 409 tertahan sebagai
  error generik di Bayar, pilihan slot stale tetap aktif, dan sessionStorage
  berisi booking sebelum server menerimanya. After: synchronous in-flight
  guard membuat satu request, booking lokal hanya ditulis setelah sukses, lalu
  customer kembali ke Jadwal dengan alert natural dan availability aktual.
- API `POST /api/submit-booking` memberi kode `slot_conflict`/action hint;
  `POST /api/availability` dan conflict response menyamarkan kode booking serta
  alasan block internal. Unique slot lock, transaction, hold, dan rollback
  request kedua menjaga database tanpa booking/hold/lock parsial.
- Focused 5/5 (32), full backend 992/992 (11.327), browser S98+S154 12/12,
  build/typecheck, design 26/0, npm/Composer/OSV nol advisory, dan Support Hub
  AI 38/38 (219) hijau; before/after 390x844 dan 1440x900 terverifikasi.
- Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S7-S8 tetap `INTEGRATION_IN_PROGRESS`.
  Production tetap `20260806152606-0894df0`; deploy ditahan sampai S21.

## 2026-08-08 - Sprint 6 combined Resource exit gate candidate

- Klasifikasi `CONFIRMED`; source
  `57310ddd1958dc5fc9f585196b8757ffeb051c41` pada branch
  `codex/s153-sagabook-resource-exit-gate`.
- Runner repeatable mengikat lima profil Resource: create/edit/delete,
  status/retry/double-submit, stale recovery, delete dependency recovery, dan
  permission boundary. Staff kini diuji 403 langsung pada endpoint Resource.
- UI tidak berubah. Bukti S150-S152 dijalankan ulang pada 390x844 dan
  1440x900 beserta matriks desktop 1280-2560, zoom 100-200 persen,
  forced-colors, reduced-motion, keyboard/focus, target 44 piksel, dan satu
  watermark.
- Runner 5/5, focused backend 41/41 (344), full backend 991/991 (11.309),
  build/typecheck/design 26/0, npm/Composer/OSV nol advisory, AI 44/44 (3.440),
  dan corpus 1.000/1.000 hijau.
- S6 `EXIT_GATE_ACCEPTED / UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Production tetap
  `20260806152606-0894df0`; S7-S8 availability/slot concurrency menjadi sprint
  berikutnya, sementara deploy ditahan sampai S21 dan rollback/previous
  symlink dipulihkan.

## 2026-08-08 - Sprint 6 resource stale-write recovery candidate

- Klasifikasi `CONFIRMED`; source
  `872fb8d2f406f2c9ee0712992f1e25874b2259e0` pada branch
  `codex/s152-sagabook-resource-stale-recovery`.
- Before: backend sudah menolak expected lock version lama dengan 409, tetapi
  editor hanya menampilkan error teknis dan tidak memiliki pemulihan aman.
  After: UI menjelaskan konflik, menawarkan `Muat data terbaru`, menjaga draft
  saat GET gagal, lalu mengganti baseline hanya dari response server aktual.
- UI -> frontend -> stale `POST /api/admin/upsertResourceFn` -> 409 -> recovery
  `GET /api/admin/getDashboardData` -> response terbaru -> edit final -> satu
  POST -> transaction/tenant row lock -> resources/activity_logs -> UI lulus.
- Remote capacity, buffer, mode, linked resource, dan lock version tetap utuh
  pada konflik; tidak ada audit sukses palsu. Failure/retry, double-submit,
  keyboard/focus, forced-colors, reduced-motion, target 44 piksel, tanpa
  overflow, permission, dan tenant-negative lulus.
- Focused backend 1/1 (9), kontrak/role/error 57/57 (509), full backend 991/991
  (11.309), browser regression 12 pass/2 intentional skip, build/typecheck,
  design 26/0, npm/Composer/OSV nol advisory, dan AI 44/44 (3.440) hijau.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` sampai combined exit gate.
  Production tetap `20260806152606-0894df0`; rollback/previous symlink tetap
  residual S21.

## 2026-08-08 - Sprint 6 resource delete/dependency recovery candidate

- Klasifikasi `CONFIRMED`; source
  `ac11487f046c8acae328cba89975035b888d00de` pada branch
  `codex/s151-sagabook-resource-delete-recovery`.
- Before: 409 hanya generik dan resource yang direferensikan resource lain
  dapat terhapus sehingga meninggalkan relasi menggantung. After: API memberi
  `resource_delete_blocked`, hitungan dependensi public-safe, dan UI memberi
  aksi pemulihan `Atur paket`, `Lihat booking`, `Buka kalender`, atau `Atur
  studio`.
- UI -> frontend -> `POST /api/admin/deleteResourceFn` -> controller ->
  transaksi/tenant row lock -> `CatalogDeletionGuard` -> resources/packages/
  bookings/block_times/activity_logs -> response 409/200 -> UI lulus. Resource
  bebas tetap dapat dihapus dan audit hanya ditulis pada sukses.
- Failure/retry tidak memutasi data; double-click menghasilkan satu request,
  retry kedua tetap aman; Staff 403 dan foreign tenant 404 tidak membocorkan
  dependensi. Focused 37/37 (214), kontrak/role/error 56/56 (500), full backend
  990/990 (11.300), browser 9 pass/1 intentional skip, build/typecheck/design
  26/0, npm/Composer/OSV nol advisory, serta AI 44/44 (3.440) lulus.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` sampai stale-write
  resource dan combined exit selesai. Production tetap
  `20260806152606-0894df0`; rollback/previous symlink tetap residual S21.

## 2026-08-08 - Sprint 6 resource status/persistence candidate

- Klasifikasi `CONFIRMED`; source
  `ff3b2babe419337c9e29b4bac8b7f9d531c97659` pada branch
  `codex/s150-sagabook-resource-status`.
- Before: tabel mobile memotong status/action, target aksi hanya 28 piksel,
  failure mutation hanya toast, double-click dapat mengirim request ganda, dan
  backend menerima status arbitrer. After: kartu mobile utuh, aksi 44 piksel,
  feedback/retry inline, guard satu request, serta enum status tervalidasi.
- UI -> frontend -> `POST /api/admin/upsertResourceFn` -> controller/service ->
  transaksi/row lock `resources` -> audit -> `GET /api/admin/getDashboardData`
  -> UI lulus untuk happy path, 503/retry, reload persistensi, invalid 422,
  Staff 403, dan tenant-negative tanpa mutasi foreign.
- Controller 32/32 (176), payload/role/error 19/19 (286), browser
  mobile+desktop 6/6, extended desktop/zoom/a11y 4/4, build, npm/Composer nol
  advisory, dan AI SagaBook 44/44 (3.440) lulus.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` sampai dependency/delete
  recovery, stale-write resource, dan combined exit selesai. Production tetap
  `20260806152606-0894df0`; rollback/previous symlink tetap residual S21.

## 2026-08-08 - Sprint 6 combined Add-on exit gate candidate

- Klasifikasi `CONFIRMED`; source
  `239b193c70f30676702da492ece287a3ff1e8c9a` pada branch
  `codex/s149-sagabook-addon-exit-gate`.
- Runner repeatable menjalankan empat profil: create/edit/delete, stale
  recovery, delete dependency, serta permission boundary. Semua profil memakai
  response API aktual dan database disposable, lalu lulus 4/4.
- Backend katalog 29/29 (159), full backend 982/982 (11.245), build, design
  26/0, npm audit, Composer Packagist, dan OSV Composer nol advisory. Temuan
  dependency transitif pada gate awal ditutup dengan versi aman dan seluruh
  gate diulang hijau.
- S149 tidak mengubah UI; bukti before/after S147/S148 pada 390x844 dan
  1440x900 serta matriks desktop/zoom tetap menjadi evidence visual.
- Komponen Add-on S6 `EXIT_GATE_ACCEPTED / UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S6
  keseluruhan tetap `IN_PROGRESS` karena resource belum selesai. Production
  tetap `20260806152606-0894df0`; rollback/previous symlink tetap residual S21.

## 2026-08-08 - Sprint 6 Add-on delete dependency recovery candidate

- Klasifikasi `CONFIRMED`; source
  `2a3fe4c93955d1a588b663808c7c9464ded5ff01` pada branch
  `codex/s148-sagabook-addon-delete-recovery`.
- Before: delete Add-on yang masih dipakai hanya menghasilkan 409 generik dan
  menyuruh operator menonaktifkan Add-on, padahal state tersebut tidak tersedia.
  After: API memberi `addon_delete_blocked`, jumlah `Riwayat booking`, action
  hint public-safe, dan UI menyediakan `Lihat booking`.
- Add-on serta `booking_addons` tetap utuh, audit delete tidak dibuat, target
  tenant lain tetap 404 tanpa dependency leak, dan Staff tetap 403. Klik ganda
  menjadi satu request; retry kedua tetap gagal aman dan tidak menampilkan
  sukses palsu.
- Backend katalog 29/29 (159), browser 2/2, viewport 390x844 serta 1440x900,
  desktop 1280x800 sampai 2560x1440, zoom 100/125/150/200,
  forced-colors/reduced-motion, build, diff/syntax, npm audit, dan OSV Composer
  nol advisory lulus. Composer Packagist timeout dicatat tanpa menurunkan gate
  OSV fresh yang hijau.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 `IN_PROGRESS`. Production tetap
  `20260806152606-0894df0`; berikutnya tutup combined Add-on CRUD exit lalu
  mulai resource. Rollback/previous symlink tetap blocker S21.

## 2026-08-08 - Sprint 6 Add-on stale-write recovery candidate

- Klasifikasi `CONFIRMED`; source
  `0d962430177569eaa6e53b053eedacd6cee01ec7` pada branch
  `codex/s147-sagabook-addon-stale-recovery`.
- Before: konflik 409 editor Add-on hanya menjadi error generik tanpa recovery
  aman. After: UI menyediakan `Muat data terbaru`, merender baseline server
  aktual, dan ketika GET gagal hanya mengulang recovery GET melalui
  `Coba muat lagi`, bukan mutation stale.
- Backend mempertahankan nama, harga, dan `lock_version` versi server;
  staff tetap 403 dan target tenant lain 404 tanpa perubahan data. Guard ref
  sinkron mencegah save/reload ganda.
- Focused backend 3/3 (16), full backend 979/979 (11.227), S141-S147 browser
  20 pass/6 intentional skip, CRUD/hardening 16/16, AI 44/44 (3.440), build,
  typecheck, design 26/0, targeted Pint/diff, npm audit nol, dan Composer audit
  nol advisory lulus. OSV eksternal timeout dua kali sehingga bukti fresh-nya
  belum tersedia.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; S6 `IN_PROGRESS`. Production tetap
  `20260806152606-0894df0`; rollback/previous symlink dan bukti OSV fresh harus
  ditutup sebelum release S21.

## 2026-08-08 - Sprint 5 background publish/deactivation integrity candidate

- Klasifikasi `CONFIRMED`; source
  `ce537667f314e80b8b94479f0defb9d60524f4f0` pada branch
  `codex/s146-sagabook-background-status-integrity`.
- Before: status numeric `0/1` dari API menghasilkan state switch tidak valid,
  error mutation ditelan, dan double-click dapat menggeser kartu lalu membuka
  editor yang salah. After: status dinormalisasi boolean, switch dikunci segera,
  failure mempertahankan state server, dan feedback tidak menggeser target klik.
- Recovery aktual mencakup network retry, 409 `Muat data terbaru`, dan 422
  `Atur background`; staff tetap 403 dan record tenant lain tetap 404 tanpa
  perubahan data.
- Focused backend 24/24 (127), full backend 977/977 (11.213), S141-S146 browser
  17 pass/5 intentional skip, CRUD/hardening 16/16, AI 44/44 (3.440), build,
  typecheck, design 26/0, targeted Pint/diff, serta npm/Composer/OSV nol advisory.
- Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; combined S5 `EXIT_GATE_ACCEPTED /
  LOCAL_VALIDATED`. Production tetap `20260806152606-0894df0`; S6 add-on/resource
  menjadi READY berikutnya. Rollback/previous symlink wajib dipulihkan sebelum
  S21.

## 2026-08-08 - Sprint 5 background stale-write recovery candidate

- Klasifikasi `CONFIRMED`; source
  `c560119745959fe67f3234a6e278c926db595858` pada branch
  `codex/s145-sagabook-background-stale-recovery`.
- Before: konflik edit 409 hanya menampilkan pesan dan operator tidak memiliki
  recovery aman. After: `Muat data terbaru` mengambil response dashboard aktual,
  mengganti draft/baseline dengan versi server, dan retry jaringan mengulang GET
  recovery tanpa mengirim ulang mutation stale.
- Optimistic lock dan transaksi mempertahankan nama, `lock_version`, serta relasi
  paket versi server. Ref sinkron menjaga double-click save menjadi satu request.
- UI mencakup loading/success/error/offline/retry, target 44 px, keyboard/focus,
  forced-colors, reduced-motion, tanpa overflow, dan tepat satu watermark.
- Focused backend 2/2 (8), full backend 975/975 (11.207), S141-S145 browser
  13 pass/3 intentional skip, CRUD/hardening 16/16, AI 44/44 (3.440), build,
  typecheck, design 26/0, targeted Pint/diff/cleanup, serta npm/Composer/OSV nol
  advisory.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: tutup publish/deactivation integrity Background dan combined exit gate
  S5; jangan mulai S6 atau deploy. Rollback symlink harus dipulihkan sebelum S21.

## 2026-08-08 - Sprint 5 background delete dependency recovery candidate

- Klasifikasi `CONFIRMED`; source
  `b9aeb7c9f2bf5205f3a740551530362447d5e9ed` pada branch
  `codex/s144-sagabook-background-delete-recovery`.
- Before: delete Background yang masih terkait hanya menghasilkan pesan 409
  generik. After: backend mengembalikan `background_delete_blocked`, hitungan
  relasi paket dan riwayat booking, serta action hint public-safe tanpa
  menghapus data atau menulis audit sukses.
- UI menampilkan `Background belum dihapus`, daftar dependensi, aksi 44 px
  `Atur paket`, label screen-reader, fokus keyboard, forced-colors,
  reduced-motion, retry, dan double-submit guard.
- Focused backend 27/27 (255), full backend 974/974 (11.202), S141-S144 browser
  9 pass/1 intentional skip, CRUD/hardening 16/16, AI 38/38 (219), build,
  design 26/0, Pint/diff/cleanup, serta npm/Composer/OSV nol advisory.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: lanjutkan state Background lain dan combined exit gate S5; jangan
  mulai S6 atau deploy.

## 2026-08-07 - Sprint 5 package delete dependency recovery candidate

- Klasifikasi `CONFIRMED`; source
  `be02a4e7cc092096c0fdc686c41d4144e93329f0` pada branch
  `codex/s143-sagabook-package-delete-recovery`.
- Before: penghapusan paket yang dipakai booking atau terhubung ke background
  hanya menghasilkan pesan 409 generik. After: backend mengembalikan
  `package_delete_blocked`, hitungan dependensi public-safe, dan petunjuk
  recovery tanpa menghapus paket atau menulis audit sukses.
- UI menampilkan `Paket belum dihapus`, daftar dependensi, serta aksi 44 px
  `Atur background`; pending ref dan disabled state menjaga klik ganda menjadi
  satu request, sementara label screen reader default tetap dipertahankan.
- Focused backend 27/27 (240), full backend 974/974 (11.187), package browser
  7 pass/1 intentional skip, CRUD/hardening 16/16, AI 38/38 (219), build,
  typecheck, design 26/0, Pint/diff/cleanup, serta npm/Composer/OSV nol advisory.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: coverage Background dan combined exit gate S5; jangan mulai S6.

## 2026-08-07 - Sprint 5 package deactivation dependency guard candidate

- Klasifikasi `CONFIRMED`; source
  `4b71e3473d8713848158cfbed7a0923d4433bf46` pada branch
  `codex/s142-sagabook-package-deactivation-guard`.
- Before: paket aktif dapat dijadikan Draft walau background aktif masih
  bergantung padanya; klik ganda menghasilkan 200 lalu 409. After: transaksi
  mengunci paket, pivot, dan background aktif lalu menolak dengan satu 409
  `package_deactivation_blocked` tanpa mengubah data atau menulis audit sukses.
- UI mempertahankan status Aktif, mencegah double-submit, menampilkan state
  failure/retry, dan menyediakan aksi 44 px `Atur background` tanpa layout-shift.
- Focused backend 30/30 (236), full backend 974/974 (11.180), browser S142 2/2
  plus stale/CRUD/hardening regression, AI 38/38 (219), build, design 26/0,
  Pint/diff/cleanup, serta npm/Composer/OSV nol advisory.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: delete dependency/recovery paket lalu coverage background; S5 belum exit.

## 2026-08-07 - Sprint 5 package stale-write recovery candidate

- Klasifikasi `CONFIRMED`; source
  `0874c098440850d104868d891c2f61214cdba36b` pada branch
  `codex/s141-sagabook-package-stale-recovery`.
- Before: response 409 mencegah overwrite tetapi editor tidak memberi jalan
  memuat versi server, sehingga retry terus memakai baseline stale. After: aksi
  `Muat data terbaru` mengambil dashboard API aktual, mengganti draft/baseline,
  lalu memungkinkan save berikutnya tepat satu kali.
- Controller, service, transaksi, row lock, `lock_version`, tenant boundary,
  dan permission existing tetap menjadi sumber kebenaran; tidak ada migration
  atau data production yang diubah.
- Playwright stale recovery 3 pass/1 intentional skip, regresi 6/6, focused
  backend 29/29 (227), full backend 973/973 (11.171), AI 38/38 (219), build,
  design 26/0, dan audit dependency nol advisory.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: publish/deactivate dan dependency integrity paket, lalu background S5.

## 2026-08-07 - Sprint 3-4 tenant/branch exit gate accepted locally

- Klasifikasi `CONFIRMED`; source
  `4ee167ecbc95892a113c9036faada5de85994bb8` pada branch
  `codex/s140-sagabook-tenant-branch-exit-gate`.
- Runner repeatable mengisolasi tujuh profil: branch write/retry, report
  context, staff revocation, live refetch, delete recovery, staff context, dan
  shared hardening. Masing-masing memakai migration/seed dan runtime disposable.
- Runner 7/7 profil dan harness 7/7 lulus; full backend 973/973 dengan 11.171
  assertion, AI 44/44, build/typecheck/design audit, cleanup 0/0, serta
  npm/Composer/OSV nol advisory.
- Bukti slice mencakup 390x844, 1440x900, laptop/QHD dan zoom efektif sampai
  200%, happy/failure/offline/retry, stale response/session, double-submit,
  permission/tenant-negative, audit, dan read-after-write.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  EXIT_GATE_ACCEPTED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
  `20260806152606-0894df0`. Next: mulai S5-S6 katalog feature-by-feature.

## 2026-08-07 - Sprint 3 staff branch-context candidate

- Klasifikasi `CONFIRMED`; source
  `22013fc0acb12b9c235454048154ed1e1206f732` pada branch
  `codex/s139-sagabook-staff-branch-context`.
- Before: selector global dapat menunjukkan Cabang Dago sementara filter lokal
  staff tetap Semua Cabang. After: store global menjadi satu sumber kebenaran,
  filter/reset staff tetap sinkron, dan konteks daftar tampil sebagai status
  aksesibel.
- UI merender `GET /api/admin/getDashboardData` aktual; delegasi yang dicabut
  tetap menghasilkan 401 dan rehidrasi scope. Staff dan branch-admin tidak
  memperoleh capability mutation tambahan; tidak ada migration atau write
  bisnis baru.
- Playwright visual/context/revocation 10/10 dan hardening 6/6, backend 41/41
  (347), AI 44/44 (3.440), typecheck/build/design, npm/Composer/OSV nol
  advisory, dan diff-check lulus.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: combined exit gate S3-S4 sebelum katalog S5-S6.

## 2026-08-07 - Sprint 3 branch-delete dependency recovery candidate

- Klasifikasi `CONFIRMED`; source `4606c5c594b29a4d3075617d01ffed5014d785d1`
  pada branch `codex/s138-sagabook-branch-delete-recovery`.
- Before: dialog mengisyaratkan data terkait mungkin ikut hilang dan tidak
  memberi detail 409/offline/retry. After: dependensi tampil sebagai hitungan
  public-safe dengan recovery links, kontrol 44 px, fokus aman, retry, dan
  double-submit guard.
- Backend memakai transaction dan tenant-scoped row lock; foreign tenant atau
  ID hilang 404 tanpa dependency leak/audit, staff 403, delete bebas 200 dengan
  satu audit dan read-after-reload konsisten.
- Backend 20/20 (85), Playwright 4/4 mobile/desktop, shared CRUD 8/8,
  TypeScript/build dan npm audit lulus. Composer cache nol advisory; fresh OSV
  timeout dua kali.
- Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
  Next: filter cabang route lain dan ulang audit OSV terbaru.

## 2026-08-07 - Sprint 3 live refetch cabang lintas tab candidate

- Klasifikasi: `CONFIRMED`; source
  `70a6aad76f3f86589473986c0e9fa3b26c5022c2` pada branch
  `codex/s137-sagabook-branch-live-refetch`; status `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Before: tab admin lain dapat mempertahankan payload cabang lama sampai polling
  berikutnya, dan response request lama dapat menimpa response yang lebih baru.
  After: mutation cabang yang sukses memberi sinyal invalidasi public-safe,
  pengamat mengambil ulang API terautentikasi, latest-request guard mengabaikan
  response lama, dan focus/visibility serta retry memulihkan state.
- Sinyal tidak memuat tenant, user, booking, atau data operasional; sesi dan
  capability setiap tab tetap menjadi batas akses saat refetch API.
- E2E live-refetch 4/4 dan regresi cabang existing 5 pass/1 intentional skip
  lulus pada 390x844 dan 1440x900. Full backend 970/970 (11.145), focused
  backend 32/32 (296), AI 44/44 (3.440), build, design 26/0, npm/Composer/OSV
  nol advisory, Pint dirty, dan diff-check lulus.
- Production tidak berubah: source/release aktif tetap `0894df00` /
  `20260806152606-0894df0`; deploy ditahan sampai S21. Next action: delete
  dependency/recovery, lalu filter cabang pada route lain.

## 2026-08-07 - Sprint 3 revokasi delegasi cabang staff candidate

- Klasifikasi: `CONFIRMED`; source
  `82a6f376998d8eb5778c6ccaac117a21a1ab8efd` pada branch
  `codex/s136-sagabook-branch-delegation-revocation`; status
  `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`.
- Before: perubahan cabang staff menyimpan scope baru, tetapi sesi yang sudah
  terbuka masih membawa klaim cabang lama sampai logout. After: perubahan
  role, status, email, username, password, atau kumpulan cabang menaikkan
  `staff.session_version` tepat sekali dan menulis audit public-safe.
- UI aktual membuktikan selector dua cabang -> sesi lama menerima 401
  `session_revoked` dan recovery notice -> login ulang hanya menampilkan satu
  cabang yang masih diizinkan. Screenshot before/revoked/after tersedia pada
  390x844 dan 1440x900; forced-colors, reduced-motion, keyboard/focus, target
  44 px, satu watermark, dan no-overflow lulus.
- Gate: focused auth/tenant 18/18 (290), full backend 970/970 (11.145), browser
  E2E 2/2, Node 15/15, AI SagaBook 44/44 (3.440), build, design audit 26/0,
  npm audit nol vulnerability, OSV Packagist 114 paket/0 advisory, Pint, dan
  diff-check lulus.
- Production, migration, subscription, booking, payment, dan data customer
  tidak berubah. Release aktif tetap `20260806152606-0894df0`; deploy ditahan
  sampai S21. Next action: stale refetch lintas tab, delete dependency/recovery,
  lalu filter cabang pada route lain.

## 2026-08-07 - Sprint 2 auth/session exit gate accepted locally

- Klasifikasi: `CONFIRMED`; source
  `bf1766ae84c352cf3687383ca31947a3e619f575` pada branch
  `codex/s135-sagabook-session-revocation`; status `LOCAL_VALIDATED /
  EXIT_GATE_ACCEPTED / IMPLEMENTED_NOT_DEPLOYED`.
- Endpoint Packagist tetap timeout. Fallback fail-closed memakai batch API OSV
  resmi untuk ekosistem Packagist dan hanya mengirim nama/versi public dari
  `composer.lock`; 80 paket production dan 34 development menghasilkan nol
  advisory. Parser/result-count/finding mapper tervalidasi 3/3.
- Combined auth final lulus 4/4 slice: 13 pass dan 1 intentional skip pada
  mobile/desktop. Full backend 969/969 (11.133), node 13/13, build, design audit
  26/0, npm audit nol vulnerability, Composer manifest valid, Pint, diff-check,
  cleanup run/lock 0, dan public health 2/2 200 lulus.
- Tidak ada perubahan UI, API bisnis, migration, subscription, booking,
  payment, tenant, data customer, atau production. Screenshot auth existing
  S133-S135 tetap menjadi evidence visual.
- Sprint berikutnya adalah S3 tenant/cabang. Deploy tetap ditahan sampai S21;
  activation dan business readiness tidak berubah.

## 2026-08-07 - Sprint 2 combined auth acceptance gate candidate

- Klasifikasi: `CONFIRMED`; source candidate
  `549b9c88ad38320815bb7e566eb7db2da9eb65a9` pada branch
  `codex/s135-sagabook-session-revocation`; production tidak berubah.
- Before: empat spec auth dijalankan pada satu konfigurasi global sehingga
  rate-limit menerima cache nonpersisten dan idle memakai timeout default.
  After: satu perintah menjalankan auth/session, rate-limit, idle-session, dan
  revocation pada runtime, database, port, cache, limit, dan timeout disposable
  yang eksplisit per slice.
- Red-to-green: unit harness gagal karena orchestrator belum ada, lalu 10/10;
  combined round pertama menemukan cache 429 nonpersisten, focused 429 menjadi
  2/2 setelah cache database run-scoped, dan combined final lulus 4/4 slice
  dengan 13 pass serta 1 intentional skip pada mobile/desktop.
- Full backend 969/969 (11.133), build, design audit 26/0, npm audit nol
  vulnerability, Pint, diff-check, cleanup run/port-lock 0, dan public health
  dua URL 200 lulus. Composer manifest valid, tetapi advisory audit belum dapat
  mengambil endpoint Packagist karena timeout.
- Status Sprint 2 tetap `IMPLEMENTED_NOT_DEPLOYED`; exit gate belum ditutup
  sampai Composer advisory audit mempunyai bukti fresh. Deploy ditahan S21.

## 2026-08-07 - Sprint 2 revocation perangkat lain candidate

- Klasifikasi: `CONFIRMED`; source candidate
  `6e1a3b59e3cd84af9f0e574c1876d3d46b64ab82` pada branch
  `codex/s135-sagabook-session-revocation`; status `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Dashboard kini menyediakan dialog aksesibel `Keluarkan perangkat lain`.
  Password step-up, loading/success/error/offline/retry, focus recovery,
  double-submit guard, dan idempotency tervalidasi dengan response API aktual.
- `POST /api/admin/sessions/revoke-others` menaikkan `staff.session_version`
  secara transactional dengan row lock. Current context diperbarui agar tetap
  aktif; context lama menerima 401 `session_revoked`. Audit hanya menyimpan
  metadata public-safe dan hash idempotency.
- Gate: focused revocation 2/2 (24), auth/security 29/29 (325), full backend
  969/969 (11.133), isolated Playwright mobile/desktop 2/2, build, design audit,
  npm audit, Pint, dan diff-check lulus. Screenshot before/after tersedia pada
  390x844 dan 1440x900.
- Production, migration, subscription, booking, payment, tenant, dan data
  customer tidak berubah. Combined browser exit gate belum hijau karena drift
  isolasi fixture/config pada rate-limit dan idle timeout; Composer advisory
  audit perlu diulang saat Packagist dapat dijangkau. Deploy ditahan sampai S21.

## 2026-08-07 - Sprint 2 idle-session expiry candidate

- Klasifikasi: `CONFIRMED`; source candidate
  `a572f59c2bfddb65686271cab839ba9710e59657` pada branch
  `codex/s134-sagabook-idle-session`; status `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Before: sesi per tab tidak mempunyai idle cutoff server-authoritative dan
  polling dashboard dapat dianggap sebagai aktivitas. After: default idle 30
  menit, polling pasif tidak menyentuh timestamp, request aktif memperbaruinya,
  dan hanya tab idle yang dihapus dengan audit public-safe.
- UI mengarahkan 401 `session_expired` ke login dengan recovery notice
  aksesibel, target minimum 44 px, forced-colors/reduced-motion, tanpa overflow,
  dan tepat satu `Powered by SagaBook`.
- Gate: focused backend 10/10 (138), full backend 967/967 (11.109), Playwright
  idle 2/2, auth regression 7 pass/1 intentional skip, node harness 9/9, build,
  Composer/npm audit nol advisory, dan AI SagaBook regression 44/44.
- Production, migration, subscription, booking, payment, tenant, dan data
  customer tidak berubah. Next action: revocation lintas device dan combined
  Sprint 2 exit gate; deploy tetap ditahan sampai S21.

## 2026-08-07 - Sprint 1 demo tenant dan test harness terisolasi

- Klasifikasi: `CONFIRMED`; source candidate
  `14ad88cc26aad1ebe90e60e46827bec618ed44a3` pada branch
  `codex/s132-sagabook-harness-security`; status `INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Before: perintah visual/E2E umum berbagi SQLite, session file, upload temp,
  dan port default sehingga run paralel dapat saling mereset atau bertabrakan.
  After: setiap run memakai ID, database, session database, upload temp, serta
  pasangan port loopback unik; inherited remote base URL diabaikan dan path
  keluar worktree ditolak.
- Race pemilihan port yang muncul pada acceptance paralel ditutup dengan lock
  lintas proses dan cleanup fail-safe. Gate akhir: unit harness 8/8, dua dan
  empat run Playwright paralel hijau dengan artefak/lock tersisa 0, full backend
  964/964 dengan 11.079 assertion, serta build lulus.
- Audit baseline menemukan empat advisory high dan dua medium pada
  `league/commonmark 2.8.2`; lock source dinaikkan ke 2.9.0 bersama
  `nette/utils 4.1.5`. Composer dan npm production audit kini nol advisory.
- Tidak ada perubahan UI, API bisnis, migration produk, tenant, subscription,
  payment, data customer, atau production. Screenshot before/after tidak
  berlaku untuk batch tooling ini. Production tetap source `0894df00` dan
  release `20260806152606-0894df0` sampai release gate roadmap dijalankan.
- Next action: Sprint 2 auth/session memakai harness ini dan menutup idle
  expiry, revocation lintas device, serta UI rate-limit 429 tanpa mengaktifkan
  subscription tenant.

## 2026-08-07 - Recovery availability dan payment production S127-S130

- Klasifikasi: `CONFIRMED`; source kumulatif
  `0894df00f6866688db4d053758a99d54ba4e8908` aktif sebagai release immutable
  `20260806152606-0894df0`; rollback `20260806142033-2415097` dari source
  `2415097ed2235008b82e67b9c970e82098450762` dipertahankan.
- S128 membedakan availability belum terjawab dari response sukses kosong;
  `slots: []` kini merender unavailable state dan tidak lagi membuat sebelas
  slot fallback lokal. S129 memberi alert/retry 48 piksel ketika initial load
  manual transfer gagal. S130 menutup recovery aksi Payment Monitor tanpa
  success palsu sebelum response backend aktual.
- Source production juga mencakup guard S127: topik umum di luar SagaDev
  memakai fallback product-scoped tanpa provider call/tiket, sedangkan unknown
  produk tetap menuju knowledge gap/human handoff. Corpus/index/model AI yang
  lebih luas tetap `AI_KNOWLEDGE_NOT_PROMOTED`.
- Verifikasi runtime fresh 7 Agustus 2026: manifest exact SHA cocok, nginx,
  PHP-FPM, dan queue aktif; `/up`, `/account/login`, dan `/admin/login`
  merespons 200; security headers konsisten; journal error ketiga unit sejak
  release tidak memiliki entri. Satu failed unit host
  `saga-platform-staging-monitor.service` tetap triage terpisah dan tidak
  dijadikan bukti kegagalan layanan SagaBook production.
- Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; QRIS/provider nyata,
  reconciliation menyeluruh, authenticated operator/customer UAT, dan
  Founding Studio Pilot tetap dibutuhkan sebelum `BUSINESS_READY`.
- Subscription tenant tidak diaktifkan dan website booking yang sudah aktif
  tidak dinonaktifkan oleh sinkronisasi ini.

## 2026-08-06 - SagaDev AI scope fallback candidate S127

- Klasifikasi keputusan `CONFIRMED` melalui `DEC-046`; implementasi source
  `73de3f5541006dbe9eeed0abc00a39fbe5989998` pada branch
  `codex/s127-sagadev-ai-scope-fallback` berstatus `AI_EVAL_VALIDATED /
  LOCAL_VALIDATED / AI_KNOWLEDGE_NOT_PROMOTED`.
- Before: pertanyaan produk yang belum ada jawabannya dan pertanyaan umum di
  luar SagaDev sama-sama menjadi fallback/knowledge-gap. After: topik luar
  SagaDev mendapat respons natural product-scoped tanpa provider call atau
  tiket; pertanyaan integrasi produk yang belum diketahui tetap dicatat untuk
  human handoff.
- Evaluasi public-safe mencakup 5 product, 3 cross-product, 3 out-of-scope, 2
  ambiguous, 2 candidate/roadmap, 2 injection/privacy, dan 1 tenant-negative;
  critical scope/privacy/candidate gate lulus tanpa unsupported claim.
- Gate: focused 7/7 dengan 62 assertion, Support Hub 38/38 dengan 219
  assertion, backend 964/964 composite, build, npm audit nol, formatting, dan
  diff check lulus. Composer audit memakai cache tanpa advisory tetapi fetch
  Packagist terbaru timeout.
- Production, model/provider, fine-tuning, prompt remote, embedding, tenant,
  booking, payment, subscription, dan data customer tidak berubah. Promotion
  menunggu audit fresh, backup/restore, rehearsal, smoke, dan rollback.

## 2026-08-06 - Admin Changelog navigation production S126

- Klasifikasi: `CONFIRMED`; source kumulatif
  `e20c0ba3480e6143159108e313525d7576312146` aktif sebagai release immutable
  `20260806072249-e20c0ba`; rollback `20260806063717-cb8ef55` dipertahankan.
- Before: 18 rilis/64 detail terbuka sekaligus tanpa pencarian dan recovery.
  After: pencarian lintas versi/area/perubahan, lima filter, accordion
  satu-detail, empty/reset state, dan CTA `Kembali ke Hari Ini`.
- UI 390x844 dan 1440x900, target 44/48 px, keyboard/focus, forced-colors,
  reduced-motion, no-overflow, dan tepat satu watermark lulus.
- Gate: focused Playwright 2/2, visual/design 6/6, storefront mobile-only 6/6
  lintas 390 sampai 4K, backend 962/962 dengan 11.038 assertion, typecheck,
  build, dependency audit nol, encrypted backup/checksum/offsite/disposable
  restore `20260806T072131Z`, manifest, DB audit 100, service, journal, dan
  public smoke lulus.
- Status irisan `UIUX_VALIDATED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`; tidak ada perubahan API/database atau integrasi bisnis.
  Authenticated owner UAT tetap residual sebelum `BUSINESS_READY`.
- Subscription tenant tetap di-skip dan website booking yang sudah aktif tidak
  dinonaktifkan.

## 2026-08-06 - Report branch context production S125

- Klasifikasi: `CONFIRMED`; source
  `cb8ef55a33ad1399c9383d027343a412752fc9ff` aktif sebagai release immutable
  `20260806063717-cb8ef55`; rollback `20260806053037-f6988cb` dipertahankan.
- Before: memilih Cabang Dago pada `/admin/reports` masih menampilkan total dan
  baris cabang lain, sementara write add-on/expense/closing tidak selalu
  membawa `branchId`. After: seluruh ringkasan, analitik, tabel, dan state
  closing mengikuti cabang terpilih; write tanpa cabang konkret diblok dan
  double-submit dijaga.
- Peta integrasi: `/admin/reports` -> frontend store/form ->
  `POST /api/admin/addFinanceTransactionFn` atau
  `POST /api/admin/closeFinanceDayFn` -> controller/service -> transaksi
  tenant/branch-scoped -> response/refetch -> UI. Happy read-after-write,
  failure/permission, cross-branch, dan append-only idempotency lulus.
- Gate: full backend 962/962 dengan 11.038 assertion; focused Playwright 4
  pass/2 intentional skip; viewport 390 sampai 2560 dan zoom 100/125/150/200,
  forced-colors/reduced-motion, storefront S109 12/12, typecheck, build, design
  26/0, dependency audit nol, backup/restore, manifest, service, serta public
  smoke 4/4 lulus.
- Irisan branch-context laporan `UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Payment
  Monitor, pagination/export, reconciliation provider, dan fitur lain masih
  bertahap; produk belum `BUSINESS_READY`. Subscription tenant tetap di-skip
  dan website booking yang aktif tidak dinonaktifkan.

## 2026-08-06 - Tenant/cabang status dan isolation production S124

- Klasifikasi: `CONFIRMED`; source
  `f6988cb945c5ca224015d7fecbc94e81c535fc60` aktif sebagai release immutable
  `20260806053037-f6988cb`; rollback `20260806043833-a912522` dipertahankan.
- Before: status cabang dapat mengirim mutation ganda saat diklik cepat,
  kegagalan hanya tampak sebagai toast, beberapa aksi kurang dari 44 piksel,
  dan ID katalog tenant lain jatuh ke konflik database. After: in-flight guard,
  pending/error/retry inline, response API aktual, target 44 piksel, label/focus
  aksesibel, 404 generik lintas tenant, serta audit save menutup gap tersebut.
- Peta integrasi: `/admin/branches` -> store ->
  `POST /api/admin/upsertBranchFn` -> `AdminCatalogController` ->
  `AdminModelMutationService` -> transaction/`branches`/`activity_logs` ->
  response UI. Happy read-after-write, 503/retry, double-submit, optimistic
  lock, staff 403, dan tenant-negative lulus.
- Gate: full backend 962/962 dengan 11.038 assertion; focused Playwright 6
  pass/2 intentional skip; storefront mobile-only S109 12/12; build, typecheck,
  design 26/0, npm/Composer audit nol; backup terenkripsi/checksum/disposable
  restore, migration 0 pending, DB audit, manifest, service, dan public smoke
  4/4 lulus.
- Irisan status/write cabang `UIUX_VALIDATED / INTEGRATION_VALIDATED /
  LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Coverage
  selector/filter lintas role dan route masih bertahap; produk belum
  `BUSINESS_READY`. Subscription tenant tidak diaktifkan dan website booking
  yang sudah aktif tidak dinonaktifkan.

## 2026-08-06 - Auth/session recovery dan aksesibilitas production S123

- Klasifikasi: `CONFIRMED`; scope auth/session berstatus `UIUX_VALIDATED /
  INTEGRATION_VALIDATED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Source
  `a9125228f8bda3d919a55b1a6ed154355e1bf9da` aktif sebagai release immutable
  `20260806043833-a912522`; rollback `20260806040004-1b8c91f` dipertahankan.
- Before: gangguan network dapat dipetakan seperti kredensial salah, submit
  ganda belum dijaga secara sinkron, dan tombol logout mobile tidak mempunyai
  nama aksesibel. After: timeout/cancellation 15 detik, in-flight guard,
  recovery retry yang jujur, password clear/refocus, `aria-busy`, dan label
  logout mobile menutup gap tersebut.
- Integrasi nyata mencakup login, session, logout, activity log,
  `last_login_at`, protected 401, capability 403, dan cross-tenant 403.
  Backend focused 1 test/21 assertion, browser focused 7 pass/1 intentional
  skip, regression 71 pass/7 intentional skip, full backend 961/961 dengan
  11.028 assertion, serta production smoke 6/6 lulus.
- Viewport 390x844, 1280x800, 1440x900, 1512x982, 1920x1080, dan 2560x1440
  serta zoom 100/125/150/200 persen lulus tanpa horizontal overflow. Tepat satu
  `Powered by SagaBook` dipertahankan.
- Backup terenkripsi/checksum/disposable restore, build, design audit 26/0,
  npm/Composer audit nol, migration/DB audit, service/queue, header, dan public
  smoke lulus. Subscription tenant tidak diaktifkan dan website booking yang
  sudah aktif tidak dinonaktifkan. Produk keseluruhan belum `BUSINESS_READY`.

## 2026-08-06 - Editor Template Booking adaptif production S122

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`. Source
  `1b8c91fc182d1bd8e552cafa16785e5b90bbab01` pada branch
  `codex/s118-sagabook-request-recovery` aktif sebagai release immutable
  `20260806040004-1b8c91f`; rollback
  `20260805052322-20ff682` dipertahankan.
- Before: editor Template Booking overflow pada 390 piksel dan preview turun
  hampir 999 piksel di bawah editor pada 1440 piksel. After: kontrol minimum 44
  piksel, tab/tombol mobile tidak terpotong, panel preset dapat discroll, dan
  preview mobile menjadi kolom ketiga stabil pada layar >=1400 piksel.
- Storefront tetap satu canvas mobile maksimum 460 piksel pada semua viewport,
  tanpa desktop landing/frame/rail, serta tepat satu watermark di preview.
- Gate: full backend 960/960 dengan 11.007 assertion; Playwright lintas
  editor/admin/storefront/accessibility 42/42; booking manual-transfer E2E 1/1;
  build, design 26/0, npm/Composer audit nol; backup terenkripsi, checksum,
  disposable restore, migration preflight, DB audit 100, service, dan tiga
  public smoke 200 lulus.
- Perubahan tidak menyentuh endpoint, backend, migration, database, booking,
  payment, availability, entitlement, atau subscription activation. Ledger
  feature-by-feature dibuat melalui `DEC-041`; integrasi draft/preview/publish
  masih harus discreen sebagai batch terpisah sebelum status
  `INTEGRATION_VALIDATED`.

## 2026-08-05 - S119 production dan website booking tenant aktif

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Source
  `20ff6829f96cebec22d34844291b3d522b91774a` tersedia pada branch
  `codex/s118-sagabook-request-recovery`; release immutable
  `20260805052322-20ff682`, rollback `20260803194351-d70fc1e`.
- Website booking tenant trial hanya diaktifkan setelah pre-publish readiness
  100. Post-activation setup readiness, pilot readiness seluruh tenant target,
  dan HTTP publik lulus; tidak ada tenant yang dinonaktifkan.
- Gate: Playwright candidate 513 pass/72 controlled skip, focused production
  390x844 dan 1440x900, backend 960/960 dengan 11.007 assertion, design/build,
  full check dan viewport SagaView, npm/Composer audit nol, release-readiness
  10/10, database audit 100, manifest exact source, Nginx/queue, serta empat
  endpoint 200.
- Backup run `20260805T051929Z` memenuhi enkripsi, checksum, round-trip offsite,
  disposable restore, dan private-key boundary. Migration preflight, atomic
  switch, serta smoke release lulus. Upload awal ke `/tmp` gagal sebelum deploy
  karena tmpfs penuh; transport dipindahkan ke `/var/tmp` tanpa menghapus
  artefak proyek lain dan tanpa menyentuh runtime lama.
- Storefront production tetap mobile-only: 390 piksel pada mobile dan tepat
  460 piksel terpusat pada desktop 1440, tanpa overflow/desktop rail, CTA 48
  piksel, Maps/WhatsApp tersedia, dan satu watermark non-fixed. Business
  readiness masih menunggu penggantian copy alamat placeholder dan satu
  booking nyata terkontrol oleh owner.

## 2026-08-05 - Recovery pembayaran dan navigasi adaptif S119

- Klasifikasi: `CONFIRMED`; delivery `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`. Source
  `3aa094cc5bee834ba41e31cb16347b899c6a7c18` tersedia pada branch
  `codex/s118-sagabook-request-recovery` dan sama dengan upstream.
- Before: kegagalan sesi QRIS, upload bukti transfer, dan pembayaran tambahan
  reschedule belum memberi recovery kontekstual yang konsisten; menu dashboard
  tidak dapat dicapai pada rentang 768-1023 piksel. After: alert/retry menjaga
  data customer, upload tetap terpilih untuk dicoba ulang, status semantik
  tersedia, serta drawer/menu 44 piksel memulihkan fokus ke trigger.
- Storefront tetap satu canvas mobile maksimum 460 piksel yang terpusat pada
  viewport desktop sampai 4K; tidak ada desktop landing/layout/frame. Tepat
  satu `Powered by SagaBook` non-fixed, no-overflow, keyboard, forced-colors,
  reduced-motion, dan kelas zoom efektif 125-200 persen lulus.
- Gate: Playwright final mobile 163/32 skip, desktop 191/4 skip, tablet 159/36
  skip—total 513 pass dan 0 failure; focused recovery 1/1, dashboard SagaBook
  1/1, matriks SagaView 5/5; backend 960/960 dengan 11.007 assertion; design
  26/0; build; full check/budget SagaView; npm/Composer audit nol.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`; Nginx/queue aktif dan empat public smoke 200.
  Release-readiness VPS lulus 9/10 dan menahan deploy karena satu tenant trial
  belum mengaktifkan website booking. Aktivasi publik tenant memerlukan
  keputusan owner.

## 2026-08-05 - Recovery request customer tetap lokal dan aman diulang

- Klasifikasi: `CONFIRMED`; delivery `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `b2b638cece4e9b18720a5367c05dcda3bb86ecf6` tersedia pada branch
  `codex/s118-sagabook-request-recovery`.
- Before: error refund, perubahan, dan pembatalan memakai satu pesan bersama di
  atas semua disclosure, tanpa live-region atau kaitan ke submit; pengguna
  dapat kehilangan konteks. Refresh status yang gagal setelah POST diterima
  juga dapat mengganti receipt sukses menjadi error tersembunyi. After: error
  tampil sebagai alert di form aktif, submit menunjuk feedback, isian tetap
  tersimpan, retry kembali aktif, dan receipt sukses tetap terlihat walaupun
  refresh status lanjutan gagal.
- Gate: red recovery lokal 2/2 dan red success-receipt 1/1 ditutup; focused S118
  6/6 pada mobile, tablet, dan desktop; regresi S115 terisolasi 4/4; backend
  960/960 dengan 11.007 assertion; build; design 26/0; npm/Composer audit nol.
  Full Playwright tidak menghasilkan receipt final karena timeout 604 detik,
  sehingga candidate belum `STAGING_READY`.
- Coverage: 390x844, effective 200 persen, 1280x720, 1440x900, 1512x982, dan
  2560x1440; no-overflow, forced-colors, reduced-motion, canvas maksimum 460
  piksel, serta tepat satu `Powered by SagaBook` non-fixed lulus. API, mutation,
  policy, migration, payment, availability, permission, tenant isolation,
  preset, foto, export, invoice, receipt, dan SagaView tidak berubah.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`; Nginx/queue aktif dan empat public smoke 200.

## 2026-08-05 - Disclosure request customer aksesibel dan mobile

- Klasifikasi: `CONFIRMED`; delivery `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `8a9a2ef68d8bd725400f0a6bae289ed664ac9794` tersedia pada branch
  `codex/s117-sagabook-request-disclosures`.
- Before: tombol refund, perubahan, dan pembatalan membuka form tanpa
  `aria-expanded`/`aria-controls`; panel tidak dikenali sebagai region bernama,
  beberapa form dapat terbuka sekaligus, tidak ada tombol tutup/Escape dengan
  focus restoration, dan field bank/rekening terlalu padat pada 390 piksel.
  After: satu disclosure aktif pada satu waktu, region memiliki accessible
  name, fokus masuk ke panel lalu kembali ke trigger saat Tutup/Escape, tombol
  tutup minimum 44 piksel, dan field rekening bertumpuk pada anchor mobile.
- Gate: red proof 1/1; focused S117 4/4; regresi cancel end-to-end 2/2; full
  storefront efektif 137 pass/11 expected skip setelah dua fixture S115 yang
  bentrok slot lulus 2/2 secara terisolasi; backend 960/960 dengan 11.007
  assertion; build; design 26/0; npm/Composer audit nol.
- Coverage S117: 390x844, reflow efektif 200 persen, 1280x720, 1440x900,
  1512x982, dan 2560x1440; no-overflow, forced-colors, reduced-motion, keyboard,
  touch target, canvas maksimum 460 piksel, serta tepat satu
  `Powered by SagaBook` non-fixed lulus. API, mutation request, policy,
  migration, payment, availability, permission, tenant isolation, preset,
  foto, export, invoice, receipt, serta SagaView tidak berubah.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`; Nginx/queue aktif dan empat public smoke 200.
  Deployment menunggu release-safety receipt backup+restore exact S117 dan
  approval.

## 2026-08-05 - Baseline visual Detail Payment kembali deterministik

- Klasifikasi: `CONFIRMED`; delivery `LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `77a25c7c5ed7fe31d89b35ceee91b01859b9afca` tersedia pada branch
  `codex/s116-sagabook-visual-baseline`.
- Before: snapshot mobile masih menyimpan tanggal 2026 dan belum memuat alamat
  demo, sedangkan fixture test sudah sengaja dipisah ke tanggal 2099. After:
  satu baseline mobile Detail Payment selaras dengan fixture deterministik dan
  UI S115; tidak ada snapshot lain yang diperbarui.
- Gate: red 1/1 gagal dengan diff 6 persen; green mobile/desktop 2/2; full
  storefront efektif 133 pass/11 expected skip setelah dua retry S115 desktop
  lulus; backend 960/960 dengan 11.007 assertion; build; design 26/0; npm dan
  Composer audit nol.
- Storefront tetap satu canvas maksimum 460 piksel, target header 44 piksel,
  no-overflow, dan tepat satu `Powered by SagaBook`. API, migration,
  booking/payment/availability, permission, tenant isolation, preset, foto,
  export, invoice, receipt, serta SagaView tidak berubah.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Deployment menunggu release-safety receipt exact
  S116 dan approval.

## 2026-08-05 - Signature dan akses header flow sekunder

- Klasifikasi: `CONFIRMED`; delivery `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`. Source
  `5788d6bb5860353c03edac51b968ce05a5d936f7` tersedia pada branch
  `codex/s115-sagabook-secondary-watermark`.
- Before: Detail Booking dan Reschedule tidak memiliki product signature;
  kontrol Kembali/Bantuan hanya sekitar 32 piksel. After: masing-masing route
  memiliki tepat satu `Powered by SagaBook` non-fixed di dalam canvas mobile
  maksimum 460 piksel, serta target 44 piksel dan focus ring keyboard.
- Gate focused S115 2/2 lulus pada 390x844, reflow efektif 200 persen,
  1280x720, 1440x900, 1512x982, 1920x1080, 2560x1440, dan 3840x2160. Backend
  960/960 dengan 11.007 assertion, build, design 26/0, npm/Composer audit nol,
  no-overflow, forced-colors, dan reduced-motion lulus.
- Full visual regression menyisakan satu mismatch baseline detail payment
  karena fixture lama memakai tanggal/lokasi berbeda. Baseline tidak diubah
  diam-diam; full acceptance dan release-safety receipt exact S115 belum hijau.
- API, migration, booking/payment/availability, permission, tenant isolation,
  preset, foto, export, invoice, receipt, dan SagaView tidak berubah.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`; service aktif dan empat public smoke 200.

## 2026-08-05 - Payment QRIS dan transfer selalu mobile

- Klasifikasi: `CONFIRMED`; menerapkan kontrak founder `DEC-031`. Delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Source
  `1de6a935d8694e9c5231a429d4ff41d7d1bc3d9c` tersedia pada branch
  `codex/s113-sagabook-mobile-payment`.
- Before: QRIS dan transfer manual masih memakai container desktop 5xl dan
  grid dua kolom pada layar lebar. After: kedua route memakai satu canvas
  mobile maksimum 460 piksel yang terpusat pada semua viewport, dengan alur
  vertikal yang sama seperti mobile.
- Kontrol Kembali, Salin, Ganti, dan Hapus memenuhi target minimum 44 piksel;
  forced-colors, reduced-motion, keyboard focus, no-overflow, dan tepat satu
  `Powered by SagaBook` lulus. Watermark tidak fixed dan tidak masuk artefak
  pembayaran.
- Gate: red 2/2, focused 2/2, visual payment 6/6, regresi kontrak 20/20,
  acceptance storefront gabungan 129 pass/11 expected skip, backend 960/960
  dengan 11.007 assertion, build, design 26/0, serta npm/Composer audit nol.
  Coverage payment: 390x844, 1280x720, 1440x900, 1512x982, 2560x1440, dan
  reflow efektif 200 persen.
- Tidak ada perubahan API, migration, dependency, nominal, upload bukti,
  status payment, availability, permission, tenant isolation, invoice, receipt,
  preset, SagaView, activation, atau business readiness.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Deployment menunggu release-safety receipt exact
  S113 dan approval.

## 2026-08-05 - Storefront booking selalu mobile

- Klasifikasi: `CONFIRMED` melalui `DEC-031`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Source
  `33de71c6b7ab8bf2c0b2cc8fd5fef327fb68f0a5` tersedia pada branch
  `codex/s109-mobile-only-storefront`.
- Before: storefront desktop memakai rail dan canvas 1040/1280 piksel sehingga
  menyerupai layout desktop/landing. After: seluruh viewport memakai satu canvas
  mobile maksimum 460 piksel yang terpusat; tidak ada rail, workspace dua
  kolom, atau pelebaran preset. Dashboard/admin SagaBook tidak diubah.
- Arah storefront lebar S94/S108 berstatus `DEPRECATED` dan digantikan S109.
- Gate: red proof 6/6; focused 6/6; final storefront 136 test terjadwal dengan
  125 pass/11 expected skip; backend 960/960 dan 11.007 assertion; build;
  design 26/0; npm/Composer audit nol; no-overflow; keyboard focus; target 44
  piksel; Maps/WhatsApp; alur Lokasi ke Paket; satu watermark. Lima preset lulus
  pada matriks 390x844 sampai 3840x2160. Empat public smoke production existing
  merespons 200.
- Tidak ada perubahan workflow/API, migration, dependency, data preset,
  payment, availability, permission, tenant isolation, invoice, receipt,
  SagaView, activation, atau business readiness.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Deployment menunggu release-safety receipt exact
  S109 dan approval.

## 2026-08-05 - Storefront cross-monitor canvas — DEPRECATED

- Klasifikasi: `DEPRECATED`; digantikan kontrak mobile-only S109 pada `DEC-031`.
  Delivery historis
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `835f4ca9ef0eb42a57d31b18667ce9433b66986b` tersedia pada branch
  `codex/s108-wide-monitor-canvas`.
- Before: Full-HD/QHD memakai canvas 1040 piksel; CTA Retro Fun/Streetwear
  tersisa 320 piksel di rail; ringkasan 960x540 efektif keluar 79 piksel dari
  viewport. After: canvas 1280 piksel, CTA kedua preset berada di workspace,
  dan rail tinggi pendek menjadi compact namun tetap lengkap.
- Gate: focused 6/6; storefront 136 test terjadwal, 125 pass/11 expected skip;
  backend 960/960 dengan 11.007 assertion; build; design 26/0; npm/Composer
  audit nol; no-overflow; focus keyboard; target 44 piksel; tepat satu
  watermark. Lima preset lulus Full-HD/QHD; matriks juga memuat 390x844,
  1280x720, 1440x900, 1512x982, serta effective zoom 125/150/200 persen. Empat
  public smoke production existing merespons 200.
- Tidak ada perubahan workflow/API, migration, dependency, data preset,
  payment, availability, permission, tenant isolation, invoice, receipt, atau
  SagaView.
- Production pada batch itu tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Gate yang saat itu belum tersedia adalah
  release-safety receipt exact S108 dan approval; candidate kini tidak lagi
  menunggu promosi.

## 2026-08-05 - Storefront Detail form recovery

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `2b3e544bb334299d443f67d77a43ac5614214d04` tersedia pada branch
  `codex/s107-detail-form-recovery`.
- Before: label empat field Detail belum terhubung secara programatik dan
  feedback WhatsApp belum menjadi deskripsi field. After: accessible name,
  nama/autocomplete, `aria-describedby`, serta panel error dengan live status
  sopan memberi recovery yang terlihat dan terbaca.
- Gate: red 1 pass/1 fail menjadi focused 2/2; regresi caret yang tertangkap
  full matrix ditutup targeted 1/1; final storefront 124 test terjadwal exit 0;
  backend 960/960 dengan 11.007 assertion; build; design 26/0; npm/Composer
  audit nol; visual exact dua viewport; no-overflow; 44 piksel; tepat satu
  watermark pada lima preset existing. Empat public smoke production existing
  merespons 200.
- Tidak ada perubahan workflow/API, migration, dependency, data preset,
  payment, availability, permission, tenant isolation, invoice, receipt, atau
  SagaView.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Deployment menunggu receipt backup terenkripsi,
  checksum, disposable restore, migration preflight exact S107, dan approval.

## 2026-08-04 - Storefront selection state dan touch target

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `18f2b3c15d63dff8f5e97cd7883e48cb56610c8e` tersedia pada branch
  `codex/s106-storefront-selection-state`.
- Before: selected state hanya terlihat visual dan filter Paket pada sebagian
  preset berukuran 34-38 piksel. After: seluruh single-select Lokasi sampai
  Bayar mengekspos `aria-pressed`, sementara filter Paket minimal 44x44 piksel
  pada lima preset existing.
- Gate: red semantic 1 pass/1 fail dan red touch 2 pass/1 fail menjadi focused
  3/3; storefront 120 test terjadwal exit 0; backend 960/960 dengan 11.007
  assertion; build; design 26/0; npm/Composer audit nol; visual 390x844 dan
  1440x900; no-overflow; tepat satu watermark. Empat public smoke production
  existing merespons 200.
- Tidak ada perubahan workflow/API, migration, dependency, data preset,
  payment, availability, permission, tenant isolation, invoice, atau receipt.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Deployment menunggu release-safety receipt exact
  S106 dan approval.

## 2026-08-04 - Review release-gate fixture recovery

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Source kumulatif
  `621a74a006316b9e4cd2135a4b4d34a824c0604f` tersedia pada branch
  `codex/s103-manual-transfer-fixture`; belum `STAGING_READY`.
- Before: dua tes booking-status mulai menerima 410 ketika tanggal sesi absolut
  melewati retensi link 30 hari, sehingga full backend berhenti pada 959/960.
  After: fixture memakai tanggal sesi relatif dan kontrak expiry production
  tetap utuh.
- Gate: red-green focused 2/2 dengan 67 assertion; backend 960/960 dengan
  11.007 assertion; storefront 114 test terjadwal exit 0; build; design 26/0;
  npm audit nol vulnerability; Pint; dua viewport; a11y dan watermark lulus.
- Re-verifikasi segar 4 Agustus pukul 21.00 WIB: Composer online nol advisory,
  backend 960/960 dan 11.007 assertion, focused Playwright 2/2, accessibility
  16/16, build, design 26/0, npm audit nol vulnerability, serta empat public
  smoke 200. Preflight strict lokal memverifikasi provenance exact commit,
  worktree/scope bersih, baseline, dan payment; fixture lokal bukan bukti
  runtime production.
- Release-safety receipt yang mengikat backup terenkripsi, checksum, dan
  disposable restore ke exact S103 serta approval belum tersedia; deployment
  tidak dijalankan.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`; empat public smoke 200. Booking/payment/provider,
  permission, tenant isolation, preset, SagaView, activation, dan business
  readiness tidak berubah.

## 2026-08-04 - Review correction direct-return candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Candidate source
  `8fefbab052292f4538009da30332ed91615a0e21` tersedia pada branch
  `codex/s102-review-edit-return`; belum `STAGING_READY`.
- Before: tombol `Ubah` pada Review membawa customer ke langkah lama, lalu CTA
  generik memaksa pengulangan langkah berikutnya; perubahan langkah juga tidak
  memulihkan fokus atau scroll. After: CTA `Simpan dan kembali ke Review` dan
  tombol header `Kembali ke Review` memberi loop koreksi langsung. Jadwal wajib
  selesai memvalidasi availability sebelum CTA aktif.
- Gate hijau: focused 2/2; seluruh storefront 114 test terjadwal dengan exit 0
  pada mobile dan desktop; build; design audit 26 artefak/0 pelanggaran; npm
  audit nol vulnerability; target 44 piksel, focus, no-overflow, dan tepat satu
  `Powered by SagaBook` non-fixed.
- Gate gagal/belum tersedia: backend 959/960 karena tes lama
  `test_owner_can_configure_structured_manual_transfer_account` menerima 410
  dari `updateSettingsFn` alih-alih 200; Composer audit terhalang timeout
  Packagist dan advisory tidak tersedia di cache; release-safety receipt exact
  S102 serta approval belum tersedia.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Public smoke empat surface 200. Payment/provider,
  availability rules, permission, tenant isolation, invoice/receipt, preset,
  SagaView, activation, dan business readiness tidak berubah.

## 2026-08-04 - Trial lifecycle approval production repair

- Klasifikasi: `CONFIRMED`; status `PRODUCTION_DEPLOYED` pada SagaDev
  Control Center source
  `0ab9d8e3bff95a6c46425a376d93b732c22b7b52`, release
  `20260804171621-0ab9d8e`.
- Before: approval trial SagaBook dapat menghasilkan server error karena tabel
  lifecycle pusat belum tersedia; source lama juga masih dapat membentuk durasi
  14 hari yang bertentangan dengan kebijakan 7 hari.
- After: schema lifecycle tersedia, trial aktif tepat 7 hari, hari 8–14
  grace read-only, katalog bernilai 7, dan reconciliation bersifat idempotent.
- Gate: 961 test/11.008 assertion, build, backup database, dua migration
  exact-path, nol migration lain, dua lifecycle terverifikasi, subscription
  berbayar tetap, service/health/journal/rollback lulus.
- Boundary: aplikasi SagaBook tetap release
  `20260803194351-d70fc1e`; S72 auto-trial tetap `PRODUCTION HOLD` dan
  approval owner manual masih berlaku. Satu retry approval nyata dari owner
  masih menjadi UAT terakhir.

## 2026-08-04 - Success-screen clipboard recovery candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Candidate
  source `2bcacb240c2a89e751a0c1df1ed687f122918988` tersedia pada branch
  `codex/s101-success-copy-recovery`.
- Before: tombol pesan bantuan mengumumkan sukses tanpa menunggu Clipboard API;
  tombol salin kode hanya selebar 28 piksel, tidak memberi status, dan tidak
  punya fallback. After: kedua write ditunggu; kegagalan menampilkan alert,
  kolom readonly yang otomatis fokus/terseleksi, serta satu retry dominan
  minimal 44 piksel. Sukses baru diumumkan melalui status screen reader setelah
  write selesai.
- Gate: focused failure/retry/success mencakup 390x844 dan 1440x900; storefront
  penuh 106 pass/6 expected skip; backend 960/960 dengan 11.007 assertion;
  build; design audit 26 artefak/0 pelanggaran; npm audit nol vulnerability dan
  Composer nol advisory/abandoned. Keyboard/focus, forced-colors,
  reduced-motion, no-overflow, dan satu `Powered by SagaBook` non-fixed lulus.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Blocker deploy adalah release-safety receipt exact
  S101 yang memuat backup/checksum/disposable restore, migration preflight,
  approval, immutable release, service/journal, public smoke, dan rollback proof.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, invoice/receipt, preset, dan SagaView tidak berubah.

## 2026-08-04 - Active storefront header clipboard recovery candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Candidate
  source `9d9c5ede9f1438d799861547ec27f0cd95b55edc` tersedia pada branch
  `codex/s100-storefront-header-copy-recovery`.
- Before: ikon bantuan header langsung berubah menjadi `Pesan bantuan WhatsApp
  tersalin` tanpa menunggu Clipboard API. After: UI menunggu write, menampilkan
  alert dan textarea readonly yang otomatis fokus/terseleksi ketika gagal,
  menyediakan satu tombol retry dominan minimal 44 piksel, serta baru
  mengumumkan sukses melalui status screen reader setelah write selesai.
- Putaran koreksi menghapus retry header duplikat dan memindahkan fallback ke
  kolom workspace agar rail desktop tidak menutup tombol.
- Gate: focused 1/1 mencakup failure/retry/success pada 390x844 dan 1440x900;
  storefront penuh 105 pass/5 expected skip; backend 960/960 dengan 11.007
  assertion; build; design audit 26 artefak/0 pelanggaran; npm audit nol
  vulnerability dan Composer nol advisory/abandoned. Keyboard/focus,
  forced-colors, reduced-motion, no-overflow, dan satu `Powered by SagaBook`
  non-fixed lulus.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Blocker deploy adalah release-safety receipt exact
  S100 yang memuat backup/checksum/disposable restore, migration preflight,
  approval, immutable release, dan rollback proof.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, invoice/receipt, preset, dan SagaView tidak berubah.

## 2026-08-04 - Storefront clipboard recovery candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Candidate
  source `07dda6424f0e935484b25a378f343a7cbfa94f3b` tersedia pada branch
  `codex/s99-storefront-copy-recovery`.
- Before: CTA `Salin template bantuan` langsung berubah menjadi `Template
  tersalin` tanpa menunggu Clipboard API dan tanpa menangani reject/unavailable;
  ikon header memberi jalur sukses palsu kedua. After: UI menunggu hasil,
  menampilkan alert dan kolom readonly yang otomatis fokus/terseleksi saat
  gagal, menyediakan `Coba salin lagi` minimal 44 piksel, mengumumkan sukses
  lewat status screen reader, dan menyisakan satu jalur bantuan dominan.
- Gate: focused 1/1 mencakup failure/retry/success pada 390x844 dan 1440x900;
  storefront penuh 104 pass/4 expected skip; backend 960/960 dengan 11.007
  assertion; build; design audit 26 artefak/0 pelanggaran; npm/Composer audit
  nol vulnerability. Keyboard focus, forced-colors, reduced-motion,
  no-overflow, serta satu `Powered by SagaBook` non-fixed lulus.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Blocker deploy adalah paket release-safety exact
  S99: backup/checksum/disposable restore, migration preflight, approval,
  immutable release, dan rollback proof.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, invoice/receipt, preset, dan SagaView tidak berubah.

## 2026-08-04 - Storefront availability recovery candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Candidate
  source `0f2f7bca255aba5c0ab220e542308ff343b3dfe7` tersedia pada branch
  `codex/s98-storefront-slot-recovery`.
- Before: kegagalan HTTP availability ditampilkan sebagai `Slot tidak
  tersedia`, menyiratkan tanggal penuh, dan tidak memberi jalur retry. After:
  UI menampilkan alert `Jadwal belum bisa dimuat`, mempertahankan tanggal, dan
  tombol `Coba lagi` memuat ulang request yang sama sampai slot tersedia
  muncul.
- Gate: focused recovery 2/2 pada 390x844 dan 1440x900; storefront penuh 147
  pass/6 expected skip; backend 960/960 dengan 11.007 assertion; build; design
  audit 26 artefak/0 pelanggaran; npm/Composer audit nol vulnerability.
  Keyboard focus, target 44 piksel, forced-colors, reduced-motion,
  no-overflow, serta satu `Powered by SagaBook` non-fixed lulus.
- Production tidak berubah: source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`,
  release `20260803194351-d70fc1e`, rollback
  `20260803132556-cfb2af8`. Blocker deploy adalah paket release-safety exact
  S98: backup/checksum/disposable restore, migration preflight, approval,
  immutable release, dan rollback proof.
- Booking/payment/provider, aturan availability, permission, session, tenant
  isolation, invoice/receipt, preset, dan SagaView tidak berubah.

## 2026-08-04 - Admin Changelog navigation candidate

- Klasifikasi: `CONFIRMED`; delivery
  `LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Production
  tetap source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`, release
  `20260803194351-d70fc1e`, dengan rollback `20260803132556-cfb2af8`.
- Candidate source `95621347050450a06dd8e5c95eedbd112aa2ff0e` tersedia pada
  branch `codex/s97-sagabook-admin-nav`.
- Before: 18 rilis dengan 64 detail dibuka bersamaan, tanpa pencarian, tanpa
  empty recovery, dan tanpa jalur dominan kembali ke operasi. After: hanya satu
  rilis terbuka, tersedia pencarian, lima filter, empty/reset state, dan CTA
  kembali ke Hari Ini.
- Kontrol discovery minimal 44 px, CTA 48 px, keyboard/focus, forced-colors,
  reduced-motion, no-overflow, serta tepat satu `Powered by SagaBook` non-fixed
  lulus pada 390x844 dan 1440x900.
- Gate: focused E2E 2/2, snapshot 3/3, kontrak admin 52/52, focused backend
  3 test/364 assertion, full backend 960/960 dengan 11.007 assertion, build,
  design audit 26 artefak/0 pelanggaran, serta npm/Composer audit nol
  vulnerability. Deploy belum berjalan karena belum ada backup/restore exact
  candidate dan approval eksekusi production.
- Registry rilis, booking/payment/availability, permission, session, tenant
  isolation, storefront/template, invoice/receipt, dan SagaView tidak berubah.

## 2026-08-04 - Landscape tablet storefront candidate — DEPRECATED

- Klasifikasi: `DEPRECATED` melalui `DEC-031`; bukti delivery historis
  `IMPLEMENTED_NOT_DEPLOYED`. Production
  tetap source `d70fc1e0d922eed86fe4ea4998688aad32c68c43`, release
  `20260803194351-d70fc1e`, dengan rollback `20260803132556-cfb2af8`.
- Candidate source `1f4b7bafb2f171a689826bcd5c34216924721d18` tersedia pada
  `main` dan branch `codex/s94-storefront-heartbeat`.
- Before: viewport 1024x768 memakai shell ponsel sekitar 460 piksel dan
  menyisakan lebih dari separuh kanvas kosong. After: viewport 900-1119 piksel
  memakai shell dua kolom sekitar 992 piksel; desktop mulai 1120 piksel tetap
  memakai spacing lama dan mobile 390 piksel tidak berubah.
- Kelima preset existing lulus pada 390x844, 1024x768, dan 1440x900; Maps dan
  WhatsApp minimal 44 piksel, tanpa overflow, serta tepat satu
  `Powered by SagaBook` di footer non-fixed. Workflow booking, availability,
  payment/provider, permission, tenant isolation, invoice, receipt, dan
  SagaView tidak berubah.
- Gate: full storefront 120 pass/6 expected skip dari 126, focused a11y 16/16,
  backend 960/960 dengan 11.007 assertion, contract tenant/security/backend
  36/36 dengan 283 assertion, build, design audit 0, serta npm/Composer audit
  nol vulnerability. Patch dependency menutup advisory Guzzle baseline.
- Fresh S39 exact-SHA run `20260804T001149Z` membuktikan encrypted backup,
  checksum, offsite round-trip, dan disposable restore. Deploy belum berjalan
  pada batch tersebut karena approval eksekusi production belum diberikan;
  candidate kini digantikan S109 dan tidak lagi menunggu promosi. Tidak ada
  migration, switch symlink, restart service, atau activation.

## 2026-08-03 - Admin Booking compact triage dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  UI `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `d70fc1e0d922eed86fe4ea4998688aad32c68c43` aktif sebagai release
  `20260803194351-d70fc1e`; rollback `20260803132556-cfb2af8` tersedia.
- Before: pada viewport 1024 piksel, tabel minimal 930 piksel memecah nama,
  tanggal, paket, dan status menjadi kolom sempit. After: viewport di bawah
  1280 piksel memakai kartu triage ringkas; desktop 1440 tetap memakai tabel.
- Keyboard detail flow, target sentuh 44 piksel, focus, forced-colors,
  reduced-motion, no-overflow, dan tepat satu `Powered by SagaBook` lulus.
  Gate final: 960 backend test dengan 11.007 assertion; 449 visual pass dengan
  52 controlled skip dalam 18 chunk mobile/tablet/desktop; focused Playwright
  pada 1024; build; npm/Composer audit 0; S39 backup terenkripsi,
  checksum, disposable restore exact-SHA; manifest; DB audit 100; service;
  empat endpoint 200; serta browser produksi public-safe dua viewport.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, storefront/template, dan SagaView tidak berubah. Admin production
  terautentikasi tidak direkam tanpa credential; exact-source regression 1024
  dan provenance release membuktikan perubahan. UAT operator studio nyata
  tetap diperlukan sebelum klaim business readiness.

## 2026-08-03 - Success screen WhatsApp support dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation tenant
  nyata `NEEDS CONFIRMATION`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `51a916537b51e8a503c6c88d3b130d2396558589` aktif sebagai release
  `20260803080450-51a9165`; rollback `20260803022430-fa228d8` tersedia.
- Before: bantuan setelah booking hanya menyalin template admin. After: CTA
  utama membuka detail/status booking, lalu CTA 48 piksel membuka WhatsApp
  cabang yang dipilih dengan pesan public-safe; nomor tidak valid memakai
  fallback salin pesan.
- Fixture visual dibuat future-safe dan dipisahkan per viewport, sehingga
  matrix fresh lulus 448 skenario dengan 50 controlled skips dan 0 failure.
  Backend 960/960 dengan 11.007 assertions, build, design audit 26 artefak,
  env guard 2/2, serta npm/Composer audit 0 lulus.
- Release safety lulus: backup terenkripsi, checksum, disposable restore
  exact-SHA, manifest, smoke internal, nginx/queue, empat endpoint 200,
  HSTS/CSP pada route booking, dan browser produksi public-safe 390x844 serta
  1440x900. Demo SnapStudio masih belum dipublish; booking nyata terkontrol
  tetap diperlukan sebelum klaim activation tenant atau business readiness.
- Booking/payment/provider, availability, permission, session, tenant
  isolation, preset lain, dan SagaView tidak berubah.

## 2026-08-03 - Success screen WhatsApp support candidate

- Klasifikasi: `CONFIRMED`; delivery `IMPLEMENTED_NOT_DEPLOYED`.
- Source `7f129eadd0ab3cb214b6d5128765e086f14ac0cc` tersedia pada branch
  `codex/s92-booking-success-whatsapp`; production tidak berubah dan tetap
  memakai source `fa228d89bc5bea32fb19bf424a4b0e48db1bc506`, release
  `20260803022430-fa228d8`, rollback `20260802221221-994de01`.
- Before: bantuan setelah booking hanya menyalin template admin. After: CTA
  utama membuka detail dan status booking; CTA berikutnya membuka WhatsApp
  cabang yang dipilih dengan pesan konteks public-safe. Nomor yang tidak valid
  mendapatkan fallback salin pesan, bukan link palsu.
- Target 48 piksel, keyboard focus, `aria-live`, forced-colors, reduced-motion,
  no-overflow, dan tepat satu `Powered by SagaBook` tercakup. Booking,
  payment/provider, availability, permission, session, tenant isolation,
  template lain, dan SagaView tidak berubah.
- Focused success/watermark 9/9 pada mobile/tablet/desktop, backend 960/960
  dengan 11.007 assertions, unit guard 2/2, build, design audit 26 artefak,
  serta npm/Composer audit 0 lulus. Guard database relatif kini berakar pada
  exact worktree tanpa mengizinkan path escape; snapshot success memakai kode
  deterministik dan baseline mobile/desktop yang sudah diinspeksi.
- Full matrix fresh mencapai 264 passed, 45 controlled skips, dan 1 failed.
  Failure tersisa berada pada setup map-recovery tablet: fixture memilih jam
  yang sudah lewat dan API menolak aman dengan HTTP 409. Batas dua correction
  rounds tercapai; release tetap ditahan fail-closed.

## 2026-08-03 - Navigasi edit Review touch-safe dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation UI
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `fa228d89bc5bea32fb19bf424a4b0e48db1bc506` aktif sebagai release
  `20260803022430-fa228d8`; rollback `20260802221221-994de01` tersedia.
- Before: enam kontrol `Ubah` pada Review berukuran sekitar 31x18 piksel.
  After: seluruhnya menjadi tombol semantik minimal 72x44 piksel, memiliki
  label screen reader, focus keyboard, forced-colors, dan reduced-motion.
- Lima preset pada mobile 390x844, tablet 768x1024, dan desktop 1440x900 tidak
  overflow serta tetap menampilkan tepat satu `Powered by SagaBook`. Booking,
  payment/provider, availability, permission, session, tenant isolation, dan
  SagaView tidak berubah.
- Full matrix fresh lulus 142/142 dengan 2 expected skips setelah fixture
  mengunci token font/warna seeded dan empat baseline terkait diinspeksi.
  Backend 960/960 dengan 11.007 assertions, focused Review, accessibility,
  scoped E2E, build, serta npm/Composer audit 0 juga lulus.
- Release gate lulus: S39 encrypted backup, checksum/offsite round-trip,
  disposable restore exact-SHA, manifest, migration preflight, DB audit 100,
  nginx/queue/PHP, lima endpoint 200, dan DOM live mobile+desktop. Production
  menunjukkan tepat satu watermark, tanpa overflow, serta enam tombol 72x44.

## 2026-08-03 - Storefront booking desktop dipromosikan — arah DEPRECATED

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `994de01cf3586adb4da8813a9c4b931085457510` aktif sebagai release
  `20260802221221-994de01`; rollback `20260802183533-35c8219` dipertahankan.
- Fakta release ini tetap berlaku pada runtime production, tetapi arah layout
  desktopnya berstatus `DEPRECATED` melalui `DEC-031` dan akan digantikan S109
  setelah seluruh release gate lulus.
- Before: pada desktop 1440x900, perjalanan booking publik tetap dibatasi
  seperti preview ponsel 460 piksel di tengah ruang kosong. After: viewport
  mulai 1120 piksel memakai shell dua kolom hingga 1040 piksel, dengan panel
  orientasi langkah dan ringkasan pilihan di kiri serta transaksi di kanan.
  Mobile 390x844 tetap identik dan tablet 1024x768 tetap memakai layout ringkas
  tanpa overflow.
- Semua preset existing dan seluruh langkah booking memperoleh layout desktop
  yang sama; Maps, WhatsApp, paket, slot, checkout, confirmation, tenant brand,
  serta satu `Powered by SagaBook` tetap utuh. Payment/provider, availability,
  session, permission, dan tenant isolation tidak berubah.
- Gate: backend 960/960 dengan 11.007 assertions; visual desktop 45/45 dengan
  satu mobile-only skip; mobile manual-transfer E2E 1/1; build, design audit,
  npm/Composer audit 0, encrypted backup, disposable restore exact-SHA,
  migration preflight, database audit 100, service health, scoped journal,
  dan public smoke lulus. Visual production 1440x900 dan 390x844 mengonfirmasi
  layout, no-overflow, serta satu watermark. Endpoint `/up` masih tidak
  mengirim HSTS/CSP; route login dan booking yang diaudit mengirim HSTS, CSP,
  dan `X-Frame-Options: SAMEORIGIN`.

## 2026-08-03 - Admin Staff responsif dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`, activation scope
  `PRODUCTION_ACTIVATED`, business readiness tetap `NEEDS CONFIRMATION`.
- Source `35c82192234eb84e03b2237029540e299c70e12f` aktif sebagai release
  `20260802183533-35c8219`; rollback `20260802160930-596b8a4` dipertahankan.
- Before: mobile memaksa tabel desktop selebar 920 piksel, target sentuh penting
  32-40 piksel, filtered-empty tanpa reset, dan editor tidak memulihkan fokus.
  After: mobile memakai kartu staff, desktop tetap tabel, kontrol kritis minimal
  44 piksel, reset filter tersedia, editor berlabel mengembalikan fokus, serta
  tab, forced-colors, reduced-motion, dan no-overflow lulus.
- CRUD, role/permission, tenant isolation, booking/payment/provider, storefront
  tenant/preset, landing page, watermark, dan SagaView tidak berubah; satu
  `Powered by SagaBook` tetap hadir pada shell dan tidak masuk artefak bisnis.
- Gate: backend 960/960 dengan 11.007 assertions; visual matrix 442 passed
  dengan 41 controlled skip; build, design audit, npm/Composer audit 0,
  encrypted backup, disposable restore exact-SHA, database audit 100, service
  health, journal, dan public browser smoke lulus.
- Visual production Staff terautentikasi tidak dijalankan tanpa credential;
  exact-source regression tiga viewport lulus. `/up` belum mengirim HSTS.
  Sampel login mengirim HSTS dan CSP satu kali tanpa `X-Frame-Options`; CSP
  `frame-ancestors` tetap aktif dan kontrak header perlu dinormalisasi.

## 2026-08-02 - Calendar mobile operasional dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` aktif sebagai release
  `20260802160930-596b8a4`; rollback `20260802104018-a6bb8af` dipertahankan.
- Before: Harian, Mingguan, dan Bulanan pada mobile menampilkan daftar hari yang
  sama. After: ketiganya mempunyai representasi periode nyata, navigasi hari
  keyboard-accessible, kontrol minimal 44 piksel, dan desktop tetap memakai
  grid Calendar.
- Manual Booking sekarang menyelaraskan tanggal Calendar saat dibuka dan
  mengenali nama bulan Indonesia pada parser WhatsApp.
- Gate: visual matrix 430 passed dengan 44 controlled skip; backend 960/960
  dengan 11.007 assertions; build, design audit, npm/Composer audit 0,
  encrypted backup, disposable restore, readiness 100, service health, dan
  public smoke lulus.
- Authenticated production visual Calendar tidak dijalankan tanpa credential;
  exact-source authenticated regression lulus. `/up` belum mengirim HSTS,
  sementara route aplikasi/login yang diaudit mengirim HSTS dan XFO tepat satu.
  Error journal berasal dari staging monitor host, bukan service SagaBook.
- Payment/provider, storefront tenant/preset, landing page, watermark, dan
  SagaView tidak berubah. Business readiness tetap belum diklaim.

## 2026-08-02 - Public branding dan frame-header hygiene dipromosikan

- Klasifikasi: `CONFIRMED`; delivery `PRODUCTION_DEPLOYED`.
- Source `a6bb8afbfe2353597ea55329c50829a220bc5d3e` aktif sebagai release
  `20260802104018-a6bb8af`; rollback `20260802101645-500065c` dipertahankan.
- Pricing, Terms, dan Privacy kini masing-masing menampilkan tepat satu
  signature aksesibel `Powered by SagaBook` pada mobile/desktop tanpa overflow,
  overlap, positioning fixed, atau label silang SagaView.
- `X-Frame-Options` dinormalisasi menjadi satu nilai wire-level di edge;
  CSP `frame-ancestors` tetap aktif. Ketiga route 200 dengan HSTS, CSP, dan XFO
  masing-masing tepat satu.
- Full backend 960/960 dengan 11.007 assertions, browser production 8/8,
  design/build/dependency audit 0, backup terenkripsi, disposable restore,
  readiness 100, service health, journal, dan smoke lulus.
- Tidak ada perubahan booking/payment, provider, preset tenant, atau SagaView.

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
- Gap signature public dan header duplikat pada audit release ini ditutup oleh
  release berikutnya `20260802104018-a6bb8af`.

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
