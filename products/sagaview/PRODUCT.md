# SagaView Product Knowledge

Updated: 5 Agustus 2026
Evidence status: production deployed + production activated; frame import-order,
compact all-menu, workspace Session/Output monitor besar, dan free drag rotation
production

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaView. Detail lengkap berada di
[DOSSIER](DOSSIER.md); keputusan terbuka berada di
[GAPS](../../GAPS.md#sagaview).

## Konteks

Fakta release di dokumen ini mengacu pada exact source dan runtime production
yang diverifikasi sampai 5 Agustus 2026.

## Status production terbaru

- Studio source `2121ebb80fa4238e91eef4003f852d34841e923f` aktif sebagai
  release `20260805193458-2121ebb`; rollback
  `20260805191930-1accf32` dipertahankan.
- Workspace Session memakai lebar adaptif sampai 1600 piksel pada monitor
  besar. Layar mobile, laptop compact, dan MacBook tetap memakai reflow lama;
  tidak ada horizontal overflow atau fitur yang disembunyikan.
- Workspace Output memakai alur satu kolom pada mobile/laptop dan dua panel
  seimbang pada monitor besar, dengan batas konten 1400 piksel. Target 44
  piksel, no-overflow, dan satu watermark tetap dipertahankan.
- Backend source `0b655da4aeea270ce9048d853e7df09d42a36dd9` aktif sebagai
  release `20260805193458-0b655da`; rollback
  `20260805133709-5906028` dipertahankan.
- Delivery dan activation `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`;
  business readiness tetap `NEEDS CONFIRMATION`.

## Ringkasan

SagaView adalah SaaS local-first untuk workflow self-photo studio setelah sesi
foto: device activation, customer/session/folder, import foto, frame selection,
photo selection, editor, review, export, print, offline recovery, dan support.

> SagaView menyelesaikan setelah sesi.

## Target pengguna

- Owner dan admin self-photo studio.
- Operator Windows studio.
- Customer yang memilih frame dan foto.
- SagaDev support/operator.

## Masalah yang diselesaikan

- Customer memilih nomor file secara manual.
- Operator mengatur frame/print dengan workflow yang mudah salah.
- Foto dalam jumlah besar harus tetap cepat dan private.
- Studio membutuhkan offline/reconnect dan transfer perangkat yang aman.

## Prinsip data

- Foto customer dan export tetap berada di device studio.
- Cloud menyimpan account, entitlement, device/session metadata, frame tenant,
  dan operational state yang memang dibutuhkan.
- Diagnostics harus ter-redact dan tidak membawa PII, credential, token, raw
  local storage, atau path file customer.

## Core journey

1. Owner/provisioning menyiapkan account dan plan.
2. Operator mengaktifkan device Studio Console.
3. Operator membuat session dan memilih folder.
4. Sistem mengimpor 50/200/500 foto.
5. Customer memilih frame dan foto.
6. Customer mengatur foto pada slot frame.
7. Operator/customer review output.
8. Sistem export/print 4R.
9. Session selesai dan data dihapus/ditahan sesuai policy.

## Fitur utama

- Owner Console dan Studio Console.
- Device activation dan exclusive lease.
- Session/customer/folder workflow.
- Import 50/200/500 foto.
- Frame catalog dan frame cloud sync.
- Photo selection, editor, review, output recovery.
- Offline/reconnect dan emergency transfer.
- Support readiness/diagnostics.
- Trial, plan/device limits, subscription, dan payment callback.
- Public Home, Pricing, Help, Contact, Privacy, Terms, dan Legal.

## Commercial contract

### Harga dan limit satuan bulanan

| Paket | Harga | Device | Frame aktif | Preset | Offline | Aset frame cloud | Laporan/support |
|---|---:|---:|---:|---:|---:|---:|---|
| Growth | Rp200.000 | 1 | 10 | 3 | 24 jam | 2 GB | Laporan operasional dasar. |
| Pro | Rp500.000 | 4 | 50 | 10 | 168 jam | 10 GB | Laporan lanjutan, activity log, dan priority support. |

Kebutuhan device atau skala di atas Pro menggunakan penawaran Custom. Jumlah
session/foto dipasarkan sebagai unlimited dengan fair-use. Foto tetap lokal dan
tidak dihitung sebagai aset frame cloud.

Bundle belum ditampilkan atau diaktifkan.

### Trial contract

- Hari 1-7: semua fitur Pro, maksimal 2 device dan 10 completed session.
- Hari 8-14: limit paket yang dipilih, maksimal 20 completed session trial
  total.
- Hari 15-21: read-only/export grace.
- Trial satu organisasi+produk dan tidak dapat di-reset lewat email, plan, atau
  pergantian device.
- Tidak ada auto-charge.

Kontrak ini sekarang enforced server-side pada runtime production yang aktif.

### Support, retention, dan offboarding

- Support Senin–Sabtu 10.00–18.00 WIB.
- P1 maksimal 4 jam kerja, P2 1 hari kerja, P3 3 hari kerja.
- Data aktif tersedia selama subscription dan akses export tersedia 14 hari
  setelah offboarding.
- Penghapusan data operasional maksimal 30 hari setelah permintaan
  terverifikasi; audit/security log 90 hari; tiket support 180 hari.
- Catatan keuangan/legal disimpan terpisah sesuai hukum yang berlaku.
- Foto customer tetap lokal pada device studio.

## Account dan device boundary

- Owner Console dapat dibuka dari browser/device mana pun setelah login.
- Device activation/exclusive lease hanya berlaku pada Studio Console dan
  start-session.
- Identity yang sama tidak membuat role Owner SagaBook menjadi Admin SagaView.
- Entitlement, role, session, subscription, dan ledger terpisah.

## Output 4R

- Portrait: `1200x1800`.
- Landscape: `1800x1200`.
- Resolution: 300 DPI.
- Editor/review memakai canonical ratio 4R.
- Slot dapat zoom/geser/bleed, tetapi canvas melakukan clipping.
- Postcard/Square tidak ditampilkan karena renderer belum mendukung.

## Urutan import frame

`CONFIRMED` - production: source backend
`0b655da4aeea270ce9048d853e7df09d42a36dd9` memulai frame baru
dengan 0 slot. Operator wajib memilih PNG/WebP terlebih dahulu, lalu menjalankan
`Deteksi otomatis`; hasil deteksi baru menjadi slot yang dapat diperiksa dan
disesuaikan. `Tambah slot` manual baru aktif setelah deteksi pernah dicoba, dan
draft tanpa slot tidak dapat disimpan. Frame existing tetap memuat slot
tersimpannya. Source aktif pada release backend
`20260805193458-0b655da`; delivery `PRODUCTION_DEPLOYED`, activation tetap
`PRODUCTION_ACTIVATED`, dan business readiness mass-scale tetap menunggu UAT
owner terautentikasi serta Founding Studio Pilot.

Implementasi lama yang menukar W/H 90 derajat telah `DEPRECATED` oleh
`DEC-036` dan tidak lagi aktif pada runtime production.

`CONFIRMED` - production: source Owner/API
`0b655da4aeea270ce9048d853e7df09d42a36dd9` dan Studio
`2121ebb80fa4238e91eef4003f852d34841e923f` mengubah ikon rotate menjadi drag
handle sudut bebas. Tahan lalu geser kiri memberi kemiringan negatif, geser
kanan memberi kemiringan positif, tanpa menukar W/H. Angle opsional per slot
dipersist ke metadata, dirender pada customer Studio, dan diterapkan pada export
PNG; frame lama default 0 derajat. Commerce canary dipulihkan melalui lifecycle
resmi sebelum guarded preflight dan deployment; tidak ada intent atau QRIS baru.

## Session completion dan privacy handoff

`CONFIRMED` — production:

- customer hanya dapat memanggil operator, bukan mereset sesi sendiri;
- operator wajib memverifikasi output dan handoff/antre cetak;
- nama output dimasking ketika privacy mode aktif;
- cleanup menghapus recovery state sebelum reset dan fail-closed dengan retry;
- source folder dan output file tetap utuh;
- completion event yang dikirim hanya memakai data operasional ter-redact.

## UI/UX shell dan branding

`CONFIRMED` — production:

- Owner, Studio, public, dan customer shell memakai permukaan operasional solid
  dengan hierarchy lokasi/tenant/status yang lebih jelas;
- setiap screen memiliki satu aksi utama yang dominan, target interaktif
  minimal 44 px, dan motion 180 ms yang menghormati reduced-motion;
- forced-colors, keyboard focus, contrast, serta responsivitas mobile, tablet,
  dan desktop masuk acceptance gate;
- setiap surface menampilkan tepat satu `Powered by SagaView` yang accessible;
  signature tidak dimasukkan ke export foto, hasil print, invoice, atau receipt.

`CONFIRMED` sebagai production melalui source kumulatif `2b0331d5`: source
`808470c1` membuat
dialog PIN override paket dapat dikenali screen reader, menahan fokus, ditutup
dengan Escape, dan tetap operabel pada reflow laptop efektif 125-200 persen.
Body dialog dapat discroll tanpa mengeluarkan CTA dari visual viewport; input
minimal 44 piksel, close/action 48 piksel, serta Axe, forced-colors,
reduced-motion, no-overflow, dan satu watermark lulus.

`CONFIRMED` sebagai production melalui source kumulatif `2b0331d5`: source
`707a6f61`
membuat penjaga navigasi perubahan aktif pada General, Brand, dan Output menjadi
alert dialog bernama dengan focus trap, Escape, internal scroll, dan tiga aksi
48 piksel. Alur Simpan & Pindah tetap meneruskan operator ke route tujuan;
persistence dan kontrak setting tidak berubah. Matriks 390x844, 1280x720,
1440x900, serta reflow efektif 125-200 persen lulus Axe, keyboard/focus,
forced-colors, reduced-motion, no-overflow, dan satu watermark.

`CONFIRMED` sebagai production: source `2b0331d5`
menambahkan disclosure `Semua menu` pada header compact Studio Console. Delapan
route kini dapat dilihat dan dipilih langsung pada mobile serta reflow zoom,
tanpa menghapus navigasi sebelumnya/berikutnya; desktop tetap memakai sidebar.
Setiap item minimal 48 piksel, Escape mengembalikan fokus ke pemicu, dan pilihan
route memindahkan fokus ke konten utama. Matriks 390x844, reflow efektif
125/150/200 persen, 1280x720, 1440x900, 1512x982, 1920x1080, 2560x1440, dan
3840x2160 lulus keyboard/focus, forced-colors, reduced-motion, no-overflow, dan
tepat satu watermark. Source aktif sebagai release Studio
`20260805170231-2b0331d`; rollback `20260805133709-57c0337` dipertahankan.
Promosi kumulatif ini juga membawa Changelog operasional, typography asset,
route-focus recovery, deep-route compact visibility, dialog PIN reflow, dan
unsaved-navigation guard yang sebelumnya berstatus candidate. Subscription
tenant tidak diaktifkan atau diubah; waiver owner hanya melewati UAT subscription
untuk release frontend ini.

## Workflow preset, editor, dan review

`CONFIRMED` — production:

- pemilihan frame memakai urutan `preview -> pilih -> jumlah cetakan -> Terapkan
  & lanjut`, dengan selected/applied, loading, offline queue, error/retry, empty,
  dan disabled state yang eksplisit;
- Editor dan Review memakai workspace desktop yang tetap padat, tetapi berubah
  menjadi satu alur vertikal pada mobile 390x844 agar canvas, foto terpilih,
  checklist, CTA, dan retry tidak terpotong;
- status penyimpanan lokal/offline, langkah aktif, serta target sentuh 44/48 px
  terlihat tanpa mengubah geometri atau output 4R;
- tombol fullscreen tidak menutupi `Powered by SagaView`, dan stepper mobile
  memusatkan langkah aktif dengan menghormati reduced-motion.

## Editor frame dan geometri slot

`CONFIRMED` — production:

- preview frame mempertahankan rasio artwork asli dengan `contain`, sehingga
  aset portrait maupun landscape tidak dipenyet untuk mengikuti canvas;
- saat canvas landscape dipilih, operator dapat memakai `Putar kanan` atau
  `Putar kiri`; preview berputar 90 derajat dan geometri slot dipetakan ulang
  sesuai arah putar;
- deteksi otomatis memberi feather awal 4 px. Semua slot dapat diperbesar
  bersama melalui slider 0–12 px atau aksi `Kurangi 2 px` / `Tambah 2 px`;
- setiap slot dapat dipindahkan langsung pada canvas dan diubah ukurannya dari
  empat titik sudut. Field X, Y, W, dan H tetap tersedia untuk koreksi angka;
- perubahan ini hanya menyentuh editor frame dan geometri presentasi. Kontrak
  tenant, device/session, foto local-first, payment, serta output 4R tidak
  berubah.

## Display preset customer

`CONFIRMED` — production:

- workflow operasional `pilih tampilan -> periksa preview -> sesuaikan ->
  simpan` dapat dipakai tanpa horizontal overflow pada mobile 390x844 dan
  tetap dua kolom pada desktop;
- preset menampilkan state `Dipakai`, `aria-pressed`, keyboard focus, serta
  target minimal 44 px;
- edit tetap local-first saat offline, invalid color menahan save dengan pesan
  pemulihan yang jelas, dan preview tidak mengubah frame/output 4R;
- tepat satu `Powered by SagaView` tetap berada di surface Studio dan tidak
  masuk export/print.

## Katalog frame terisi

`CONFIRMED` — production:

- katalog `/admin/frames` dapat dicari berdasarkan nama/kategori dan difilter
  berdasarkan kategori serta status aktif/nonaktif;
- ringkasan jumlah, status teks, dan filtered-empty recovery membuat operator
  tidak perlu menebak ketersediaan frame dari opacity atau warna saja;
- katalog terisi memakai kartu horizontal ringkas pada mobile 390x844 dan
  empat kolom pada desktop 1440x900, sehingga delapan frame dapat dipindai
  lebih cepat tanpa horizontal overflow atau metadata terpotong;
- launcher bantuan tidak lagi fixed menutup kartu pada mobile; launcher masuk
  alur halaman saat tertutup dan hanya menjadi panel fixed ketika dibuka;
- frame lokal tetap dapat dilihat saat offline, sedangkan pemulihan katalog
  cloud fail-closed sampai koneksi kembali;
- customer picker, tenant/device/session/privacy, dan output/export/print 4R
  tidak berubah.

## Kesiapan mulai sesi

`CONFIRMED` — production:

- status perangkat/cloud yang sehat diringkas dalam disclosure agar tidak
  mengambil ruang utama operator;
- checklist kesiapan menyatukan status perangkat, paket, folder foto, frame,
  dan output;
- satu CTA kontekstual 48 px mengarahkan operator dari pemilihan folder,
  konfirmasi import, pemulihan frame/output, sampai customer flow;
- kondisi offline, loading, error/retry, forced-colors, reduced-motion, serta
  import 50/200/500 foto tetap masuk acceptance gate;
- kontrak local-first, exclusive lease, privacy handoff, output 4R, dan tepat
  satu `Powered by SagaView` tidak berubah.

## Output Settings responsif

`CONFIRMED` - production:

- action Reset/Simpan hanya muncul ketika pengaturan Output benar-benar berubah;
- status dirty selalu tampil sebagai `Belum disimpan`, termasuk ketika operator
  mengedit lagi sesaat setelah feedback save;
- action region mengikuti konten pada mobile agar tidak menutup form, tetapi
  tetap sticky pada desktop;
- kontrol format, DPI, filename, Reset, dan Simpan memiliki target minimal 44 px;
- workspace menggunakan batas 1400 piksel dan memisahkan panel tujuan serta
  format menjadi dua kolom mulai layar besar, tanpa mengubah alur satu kolom
  pada mobile, laptop compact, atau zoom tinggi;
- pengaturan folder, device/session, payment, privacy foto, dan kontrak PNG 4R
  tidak berubah.

## General Settings responsif

`CONFIRMED` - production:

- action Reset/Simpan tidak lagi memenuhi layar ketika form General masih
  bersih; action region baru muncul setelah ada perubahan atau feedback save;
- mobile 390x844 tidak lagi melebar akibat negative margin action bar dan
  menaruh action setelah konten, sedangkan desktop tetap sticky;
- accessible name `Reset Perubahan` dan `Simpan Perubahan`, target minimal 44
  px, forced-colors, reduced-motion, focus, serta satu signature tetap dijaga;
- paket sesi, promo, harga kategori, local-first, device/session, payment,
  privacy foto, dan output 4R tidak berubah.

## Consent Dashboard responsif dan tahan gangguan

`CONFIRMED` - production:

- loading, offline/error, populated, filtered-empty, dan recovered ditampilkan
  sebagai state yang berbeda; kegagalan fetch tidak lagi menyamar sebagai data
  kosong;
- retry tersedia tanpa memutasi izin customer, consent tersimpan, atau file
  foto lokal;
- filter memakai selected state aksesibel, seluruh action minimal 44 px, dan
  metadata consent memakai separator yang terbaca;
- mobile 390x844 memakai ringkasan ringkas dan action penuh, sedangkan desktop
  tetap memakai workspace terbatas tanpa overflow;
- keyboard, forced-colors, reduced-motion, serta tepat satu
  `Powered by SagaView` dijaga; backend, customer flow, dan output 4R tidak
  berubah.

## Install App jujur dan kontekstual

`CONFIRMED` - production:

- halaman Install membedakan prompt otomatis siap, install manual, dan aplikasi
  sudah terpasang; tombol install tidak lagi terlihat aktif ketika browser belum
  menyediakan prompt;
- setiap state memiliki satu action utama, status live, dan jalur recovery;
  mode manual memberi langkah Chrome/Edge atau iOS, sedangkan mode installed
  kembali langsung ke Session;
- CTA utama minimal 48 px, keyboard/focus, forced-colors, reduced-motion,
  mobile 390x844, desktop 1440x900, no-overflow, serta satu
  `Powered by SagaView` tervalidasi;
- device trust, session, foto lokal, backend, payment, tenant isolation, output,
  dan export/print 4R tidak berubah.

## Navigasi Studio Console mobile

`CONFIRMED` - production:

- header mobile menampilkan posisi route sebagai `Menu n/8`, sehingga operator
  mengetahui bahwa Studio Console memiliki delapan menu;
- tombol sebelumnya/berikutnya masing-masing 44 px membuka menu yang semula
  tersembunyi di luar viewport, sedangkan route aktif otomatis dipusatkan;
- seluruh jalur Session, General, Frames, Brand, Output, Izin Foto, Changelog,
  dan Install App tetap memakai route serta permission yang sama;
- keyboard, reduced-motion, active state, no-overflow 390x844, desktop
  1440x900, dan tepat satu `Powered by SagaView` tervalidasi.

## Stabilitas hydration Studio Console

`CONFIRMED` - production:

- Session, Frames, dan Install App tidak lagi merender state browser yang
  berbeda dari HTML server pada kunjungan pertama;
- status online/PWA memakai snapshot awal deterministik, sedangkan snapshot
  recovery cloud stabil selama hydration dan baru disegarkan setelah mount;
- offline/reconnect, install prompt, device lease, frame recovery, serta
  fail-closed state tetap berjalan tanpa mengubah permission atau data;
- enam kombinasi route dan viewport lulus regression lokal, sedangkan 14
  kombinasi tujuh route pada 390x844 dan 1440x900 lulus production smoke tanpa
  hydration error, overflow, atau watermark ganda.

## Fallback bantuan perangkat

`CONFIRMED` - production:

- launcher bantuan tidak lagi hilang ketika endpoint Support Hub belum aktif;
- halaman Studio tidak memanggil endpoint bantuan secara otomatis, sehingga
  404 support tidak menjadi noise pada setiap kunjungan;
- operator selalu dapat mengunduh diagnostik ter-redact atau menyalin format
  laporan kendala tanpa mengirim foto, PII customer, identitas tenant/device,
  credential, token, atau path file;
- koneksi ke bantuan online hanya dicoba setelah tindakan eksplisit operator;
  kegagalan tetap mempertahankan fallback lokal dan memberi recovery yang jujur;
- panel mobile/desktop memakai target minimal 44 px, forced-colors,
  reduced-motion, tanpa overflow, dan tidak menutupi `Powered by SagaView`.

## Signature login dan watermark shell

`CONFIRMED` - production:

- halaman login menampilkan tepat satu signature non-link
  `Powered by SagaView` di footer, terpisah dari copyright dan tautan legal;
- Studio Console merender tepat satu signature sebagai footer responsif dalam
  DOM, bukan dua elemen yang disembunyikan bergantian oleh breakpoint;
- footer tidak fixed, tidak menutupi konten, memiliki ruang aman mobile,
  kontras eksplisit pada forced-colors, dan tidak masuk export/print;
- navigasi mobile berikutnya/sebelumnya membawa target sampai terlihat penuh;
  reduced-motion tidak lagi mewarisi smooth scroll;
- dependency backend dan Studio yang memiliki advisory sudah dipatch. Composer
  audit dan npm audit production sama-sama melaporkan nol vulnerability;
- backend source `5906028703759d49ef930a7363c5efc293f6be97`, Studio source
  `2b0331d53dc4c590dee5329ef892ea01fa4a8a97`.

## Navigasi Changelog operasional

`CONFIRMED` - production melalui source kumulatif `2b0331d5`:

- route `/admin/changelog` mengganti 47 detail release yang seluruhnya terbuka
  dengan latest-release hierarchy, pencarian versi/perubahan, empat filter,
  enam batch versi, dan hanya satu detail terbuka;
- filtered-empty menyediakan reset, sedangkan CTA 48 px memberi satu jalur
  dominan kembali ke Session;
- 390x844 dan 1440x900 bebas overflow; keyboard, focus, Axe, forced-colors,
  reduced-motion, dan tepat satu footer `Powered by SagaView` tervalidasi;
- source kumulatif `2bb868f82b8a4d3a6dc6cd1cd2a7091f447cfeca` menutup
  delapan respons font 403 dari junction dependency dan memindahkan fokus ke
  `#studio-console-content` sesudah navigasi route tanpa mengubah render awal;
- focused Changelog 3/3, gabungan accessibility/navigation 12/12, unit 156/156,
  E2E 99/99 termasuk import 50/200/500, build/budget, dan audit 0; screenshot
  evidence kini berukuran viewport exact 390x844 dan 1440x900;
- aktif pada release `20260805170231-2b0331d`.

## Sidebar deep-route lintas layar

`CONFIRMED` - production melalui source kumulatif `2b0331d5`:

- pada Windows compact 1280x720, route dalam seperti Install App sebelumnya
  aktif tetapi berada di luar area sidebar yang terlihat;
- source kumulatif `7ad38ef393686decb1d7afc9dea13960d770b986` membuat sidebar desktop
  mengikuti route aktif dengan scroll `nearest`, menghormati reduced-motion,
  dan tidak memindahkan fokus operator dari konten utama;
- mobile 390x844, Windows 1280x720, MacBook 1440x900/1512x982, serta monitor
  QHD 2560x1440 menjaga route aktif terlihat, target 44 piksel, keyboard focus,
  no-overflow, forced-colors, dan tepat satu `Powered by SagaView`;
- red proof 1/1 gagal berubah menjadi focused 6/6 lulus; format, lint,
  typecheck, unit 156/156, full E2E 105/105 termasuk import 50/200/500,
  build/budget, dan npm audit nol lulus;
- aktif pada release `20260805170231-2b0331d`.

## Status saat ini

- Delivery: `PRODUCTION_DEPLOYED`.
- Activation: `PRODUCTION_ACTIVATED`.
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal; pilot
  terkontrol dan pitch produk dapat dijalankan.

### Runtime production

- Backend source:
  `0b655da4aeea270ce9048d853e7df09d42a36dd9`.
- Backend release aktif: `20260805193458-0b655da`.
- Studio source aktif:
  `2121ebb80fa4238e91eef4003f852d34841e923f`.
- Studio release aktif: `20260805193458-2121ebb`.
- Studio release sebelumnya yang menjadi rollback:
  `20260805191930-1accf32`.
- Backend release sebelumnya yang menjadi rollback:
  `20260805133709-5906028`.
- Saga Platform release teramati tetap
  `20260804171621-0ab9d8e`; release editor frame tidak mengubah Platform.
- Additive migration, encrypted backup, disposable restore, candidate gate,
  dan rollback compatibility lulus.
- Public Home/Pricing/Help/Contact/Privacy/Terms/Legal, login, Studio route,
  customer route, API health, dan pricing API lulus post-deploy smoke.
- HTTPS routes memakai satu HSTS dan satu `X-Frame-Options: DENY`; HTML routes
  tetap memakai CSP dengan `frame-ancestors 'none'`.
- Candidate signup tanpa approval owner dan trial 7 hari sudah
  `LOCAL_VALIDATED` pada Saga Platform source
  `dcb5a3f3dc1e3e7b5c0c067e8968ca341ebf1c27`. Candidate mempertahankan
  provisioning fail-closed dan login baru terbuka setelah runtime `ready`.
  Production belum berubah; activation candidate berstatus `PRODUCTION HOLD`.

### Payment/provider

- Hanya satu canary pembayaran Tokopay production bernilai rendah yang dibuat.
- Canary dibayar; callback diproses exactly-once; subscription aktif; katalog
  canary otomatis diarsipkan.
- Release tidak membuat intent, QRIS, atau transaksi kedua.
- Identifier transaksi, receipt, callback payload, tenant, dan evidence
  restricted tidak disimpan di repository publik.

### Release validation

- Release editor frame: build exact source, 120 test SagaView dengan 1.250
  assertions, focused Playwright, npm audit production nol vulnerability,
  Composer lock audit nol advisory, dan diff/public-safety check lulus.
- Gate production 6/6, backup database, additive migration, single-device
  canary, callback exactly-once tanpa intent/QRIS baru, service, error journal,
  security header, Nginx, serta rollback target lulus.
- Pascadeploy, source/release symlink exact, service aktif, endpoint API/login/
  Session/Changelog/frame editor merespons 200, dan bundle production memuat
  drag hint, rotasi preview, serta rotasi export. Authenticated owner visual UAT
  tetap `NEEDS CONFIRMATION`; ini tidak membatalkan smoke dan regression
  exact-source yang lulus.
- Backend: 908/908 test dengan 10.637 assertions, focused release safety 3/3,
  build, syntax PowerShell/Bash, dan Composer audit nol advisory lulus.
- Studio: 156 unit test, 95/95 E2E, format/lint/typecheck/build, bundle budget,
  dan npm audit nol vulnerability lulus.
- Browser production memeriksa login dan Studio pada 390x844 serta 1440x900:
  HTTP 200, tepat satu signature pada seluruh DOM dan satu terlihat, tanpa
  overflow, runtime error, atau axe serious/critical violation. Navigasi mobile
  berikutnya membawa target sampai terlihat penuh.
- Studio/customer/public route smoke 200 dengan `/up` 200 melalui Nginx, HSTS,
  CSP, nosniff, dan `X-Frame-Options: DENY`; visual production 390x844 dan
  1440x900 lulus.
- Import 50/200/500, accessibility, responsive mobile–desktop, forced-colors,
  reduced-motion, dependency audit, dan bundle budget lulus.
- Physical Windows/Epson L8050, 200-photo, offline/reconnect, dan emergency
  transfer menggunakan owner attestation terdahulu. Perubahan release ini tidak
  mengubah kontrak output/device, sehingga attestation dibawa forward secara
  terbatas dan bukan pengganti artifact restricted.

### Rollback

- Backend: `20260803221207-b504dae`.
- Studio: `20260803221207-57c0337`.
- Backup release dan konfigurasi Nginx sebelumnya dipertahankan.

## Belum boleh diklaim

- Foto customer disimpan di cloud.
- SagaView mendukung device tanpa batas.
- Semua printer/driver pasti kompatibel tanpa UAT studio.
- Business readiness mass-scale sudah terbukti sebelum cohort studio nyata dan
  support observation selesai.
- Bundle SagaBook–SagaView tersedia.

## Demo

Gunakan [Pitch Demo](PITCH_DEMO.md) untuk demo 10–15 menit yang public-safe.

## Ide konten

- Mengapa memilih hasil print lebih baik daripada mencatat nomor file.
- Workflow 200 foto tanpa mengunggah foto customer ke cloud.
- Output 4R yang konsisten dari preview sampai print.
- Perbedaan Owner Console dan device-bound Studio Console.
