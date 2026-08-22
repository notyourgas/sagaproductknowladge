# SagaBook Dossier

## Tujuan dokumen

Memberi konteks produk, pengalaman, bisnis, teknis, sales, dan konten SagaBook
dalam satu dokumen public-safe.

## Konteks dan status bukti

- Hardening closing operasional S278 exact source
  `a53f21493c19a5b4374f47120348df9c04b41e63`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`.
  Deteksi overdue menggunakan timezone dan kalender cabang, membentuk task
  deterministik tanpa duplikasi, membuka kembali task bila closing kembali
  bermasalah, serta menyelesaikannya setelah closing beres. UI Owner/Staff,
  preflight, draft/retry, review, revision history, Task Center, export, API,
  database transaction, permission, audit, dan read-after-write telah diuji
  sebagai satu alur. Full regression 1.084/1.084 (12.581 assertion), focused
  closing 20/20 (174), database hardening 9/9 (46), browser closing dan Task
  Center, visual 26/26, build/typecheck, database audit 100, serta dependency
  audit nol lulus. Release `20260822202624-a53f214` aktif dengan rollback
  `20260822103441-7e28a8d`; source archive dan recovery bundle ber-SHA-256,
  encrypted backup/checksum/disposable restore, exact manifest, atomic
  activation, verifier 17/17, service/journal, migrasi 0 pending, serta
  public/security smoke 3/3 lulus tanpa exception. `BUSINESS_READY=false`
  sampai authenticated Owner/operator UAT serta dua studio pilot selesai.

- Closing operasional S276 exact source
  `7e28a8d6ddb2c114e4cf02aa35e329511cf2c452`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Workflow sekarang mencakup
  preflight ledger server, draft, submit, review approve/reject, koreksi,
  reopen, revision archive, resubmit, Task Center, audit, dan read-after-reload.
  Tenant/cabang/actor server-authoritative; capability, selisih wajib catatan,
  idempotency, optimistic lock stale-tab, dan task review/koreksi fail-closed.
  Gate backend, full regression, browser, accessibility, build, migration,
  dependency, backup/restore, database audit 100, service/journal, dan public
  smoke lulus. Release `20260822103441-7e28a8d` aktif dengan rollback
  `20260822064328-b033cdb`; authenticated Owner/operator UAT dan dua studio
  pilot tetap exit gate `BUSINESS_READY`.

- Perbaikan kontrol storefront `Cinematic Noir` exact source
  `b033cdb3bce72f65c055e3b00dad9e4c2c1a5216`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Filter paket tetap horizontal-scrollable tetapi
  tidak menampilkan scrollbar native. Navigasi foto memakai hit area 44x44
  piksel dengan disc visual 30x30 dan ikon 14 piksel, lengkap dengan
  aria-label, fokus keyboard, forced-colors, dan no-overflow. TypeScript,
  build, design 26/0, Cinematic 4/4, serta accessibility 3/3 lulus. Release
  `20260822064328-b033cdb` aktif dengan rollback
  `20260821215633-f6f850d`; encrypted backup/restore, source backup lokal+VPS,
  readiness 100/100, verifier 17/17, serta public/security 3/3 lulus tanpa
  exception. Data tenant, API, dan database tidak berubah;
  `BUSINESS_READY=false`.

- Perbaikan akurasi warna semantic dan lapisan nama cabang S274 implementation
  `5cf6d4bd3f09a63cc93f9d177092453bca793f76`, tercakup pada release source
  `77eda54273f3943da0f136245b90429a88a65978`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Warna Studio/Brand dan overlay cabang mengikuti
  computed token persis; renderer Cinematic menempatkan nama cabang di atas
  foto dengan scrim dan inspector layer deterministik. Browser 12/12, backend
  template 9/9 (229 assertion), full PHP 1.076/1.076 (12.507 assertion), build,
  TypeScript, npm/Composer audit, fresh encrypted backup/restore, verifier
  17/17, readiness 100/100, dan public/security 3/3 lulus. Release
  `20260822042930-77eda54` aktif dengan rollback
  `20260821215633-f6f850d`; tidak ada migration atau mutasi profile tenant dan
  `BUSINESS_READY=false`.

- Renderer halaman khusus `Cinematic Noir` exact source
  `f6f850df3796e653e5c7c69692ba06ced6befd63`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Implementasi membangun ulang sembilan halaman
  dengan HTML/CSS native dari pedoman visual, tidak mengimpor PNG ImageGen.
  State universal tetap utuh: loading/empty/error slot, konflik jadwal,
  voucher, payment failure, review correction, clipboard fallback, dan
  WhatsApp support. Layout aman pada 344/360/390/430/460 piksel, target sentuh
  minimum 44 piksel, safe area, reduced motion, forced colors, serta fokus
  keyboard eksplisit. Full PHP 1.076/1.076 (12.507 assertion), browser preset
  4/4, editor/publish/parity 8/8, accessibility/recovery 19 skenario, build,
  TypeScript, design audit, dan dependency audit nol lulus. Exact source aktif
  sebagai release `20260821215633-f6f850d` dengan rollback
  `20260821212120-1a7f5fb`; encrypted backup/checksum/disposable restore,
  source backup lokal+VPS, readiness 100/100, verifier 17/17, public smoke 3/3,
  dan security header 3/3 lulus tanpa exception. Published tenant profile tidak
  dimutasi; `BUSINESS_READY=false`.

- Template Booking text inspector S273 exact source
  `1a7f5fb80c422bf759c6092110d35c1606361cc3`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Empat semantic text color memisahkan heading
  halaman, nama studio, nama cabang pada overlay foto, dan nama cabang pada
  card/ringkasan. Nilai tersedia pada Global Brand serta override per halaman,
  masuk ke canonical hash, draft rehydrate, exact publish, dan public snapshot,
  dengan fallback snapshot legacy. Editor dan Preview Live memiliki inspector
  dua arah melalui hover/focus/pin, tanda seleksi, Escape, aria-live, target 44
  piksel, forced-colors, reduced-motion, dan no-overflow mobile/desktop.
  Boundary pesan preview dibatasi same-origin dan authority server yang cocok;
  raw query preview tanpa authority gagal tertutup. Full PHP 1.076/1.076
  (12.507 assertion), template matrix 12/12, accessibility/adaptive 21/21,
  Promotion Center ber-flag 4/4, build, formatter, dan dependency audit lulus.
  Tidak ada schema, pricing, payment, atau permission baru. Release immutable
  `20260821212120-1a7f5fb` aktif dengan rollback `20260821192026-64c1fc8`;
  encrypted backup/checksum/disposable restore, source backup lokal+VPS,
  verifier 17/17, public smoke 3/3, dan security header 3/3 lulus tanpa
  exception. Published customer profile tidak dimutasi; `BUSINESS_READY=false`.

- Preset booking `Cinematic Noir` production implementation source
  `fca0fe510f076243c739a03eff0f5f6f8d585aec`, tercakup pada release source
  `1a7f5fb80c422bf759c6092110d35c1606361cc3`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Arah visual
  dark editorial memakai photography-first layout, surface charcoal, satu
  aksen amber, heading Cormorant, body Nexa, radius 12 piksel, dan CTA solid
  tanpa gradient baru. Sembilan layout recipe tetap memakai workflow universal
  Lokasi, Paket, Waktu, Background, Add-on, Detail, Review, Pembayaran, dan
  Selesai; semuanya inherit Global Brand secara default. Wireframe 3x3 dan
  asset brief mendefinisikan ukuran 360/390/430/460, spacing, crop portrait/
  landscape, format WebP/AVIF, prompt, negative prompt, safe area, dan minimum
  touch target 44 piksel. Visual 3/3, accessibility enam preset 20/20, backend
  21/21 (378 assertion), TypeScript/build, XML, serta audit dependency lulus.
  Paket UI direction sembilan halaman dibangkitkan melalui built-in ImageGen
  pada branch referensi `4a40a1b180412c20090e81bfecdda766f6e78987`; manifest
  membatasi penggunaannya sebagai referensi HTML/CSS, bukan raster UI shipping.
  Release `20260821212120-1a7f5fb` aktif, tetapi preset baru berlaku untuk
  tenant hanya setelah dipilih, disimpan sebagai preview, lalu dipublish.
  Asset fotografi final tetap belum dibuat.

- Normalisasi orientasi foto cabang exact source
  `7afdf345cf32427d390c2d636ef1107833136ae8`: `CONFIRMED / PUSHED /
  QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Pipeline upload mengubah orientasi JPEG kamera
  menjadi piksel canonical sebelum resize dan membuang metadata, lalu memakai
  byte tersimpan untuk checksum serta kuota. Regresi sintetis membuktikan dua
  arah rotasi, preservasi PNG/WebP, upload sampai admin/public read, tenant dan
  permission-negative, serta response asset. PHP 270/270 (2.017 assertion),
  browser 2/2 mobile/desktop, build 5.132 modul, design audit 26/0, dan audit
  dependency nol lulus. Tidak ada migration atau perubahan workflow universal.
  Release `20260821163643-7afdf34` aktif dengan rollback
  `20260821124922-9bc208a`; backup terenkripsi exact commit, restore disposable,
  source backup lokal+VPS, verifier 17/17, public smoke 3/3, dan security header
  3/3 lulus. Foto lama yang sudah tersimpan miring tidak dimutasi otomatis.

- Template Booking semantic component colors exact release source
  `9bc208af60b9a9abc08c64ad463313d734cca734`, feature implementation
  `c8fd2103f7274bdb3d5d0d2a4748ca547f0f418b`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Tujuh token semantic Global/Custom mengatur heading,
  card/card text, primary button text, secondary button/text, dan border.
  Plain title transparan tanpa kotak; card, input, filter, payment method, CTA,
  dan secondary action memakai token aktif. Validator, canonical hash,
  rehydrate, exact publish, dan public snapshot mempertahankan seluruh token.
  Fallback legacy/manual `Minimal` juga mengikuti kontrak ini. Full PHP
  1.064/1.064 (12.336), focused 24/24 (916), visual final 23 pass/3
  intentional skip, build/audit, encrypted backup/restore, activation atomik,
  verifier 17/17, smoke/security 3/3, readiness 100/100, dan Chrome production
  sembilan halaman lulus. Registry `1.15.1`; release aktif
  `20260821124922-9bc208a`, rollback `20260821122634-c8fd210`;
  `BUSINESS_READY=false`.

- Template Booking token-parity hotfix exact release source
  `9fa050286ecacac6e04d154b36f899476bcab035`, feature implementation
  `0617dba3c5c8e73045c24f0db84b4ca6fb65c0f3`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Root, mobile canvas, header, card, input, primary,
  accent, foreground, dan muted renderer pada lima preset kini memakai token
  semantic aktif. Alias Elegant, Retro, dan Streetwear dipetakan ke token
  Global/Custom; gradient dekoratif tetap ada dengan pigment token-driven.
  Color-only Custom tidak lagi mengubah component variant atau radius preset,
  dan UI menyediakan `Ikuti preset`. S271 membuktikan lima preset, seluruh
  halaman inherited, enam token, isolasi Custom, save revision/hash/token,
  iframe ACK, family-solid, radius card 20px, dan CTA 16px. Full backend
  1.063/1.063 (12.282), visual matrix 9/9, build/type-check, dependency audit,
  backup/restore, activation atomik, verifier 17/17, public/security smoke 3/3,
  dan readiness 100/100 lulus. Registry `1.14.1`; release aktif
  `20260821112729-9fa0502`, rollback `20260821110414-0617dba`. Authenticated
  Chrome Owner UAT membuktikan background tersimpan `#ff0000`, preview revision
  3 siap, root/shell merah, dan surface terpisah tanpa menekan Publish;
  `BUSINESS_READY=false`.

- Template Booking editor v2 exact source
  `57635d4a6d29218797e1406385fed64d09abf2a0`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Snapshot kanonik menyatukan booking brand, enam warna,
  dua font, copy sembilan step, override/inheritance per halaman, button style,
  card radius, asset font tenant-owned, dan preset. Save memakai optimistic
  revision serta content hash; stale save/publish ditolak, publish tidak lagi
  menerima snapshot arbitrer client, dan preview memakai token server terbatas
  yang terikat tenant/user/revisi/hash. Preview hanya memberi ACK dari authority
  yang diinject setelah server merender draft exact. Draft rehydrate setelah
  reload; published profile bersifat hash-addressed dan scope global/cabang
  dikunci exact. Layout editor lebih ramping, preview sticky memakai kanvas
  proporsional 390/430/460 tanpa squeeze. Full backend 1.063/1.063 (12.265),
  browser gate 8/8, public accessibility 27/27, build/type-check/formatter,
  audit dependency, backup/restore, atomic activation, dan verifier 17/17
  lulus. Release aktif `20260821091334-57635d4`, rollback langsung
  `20260821073107-161ba76`. Authenticated Owner/operator UAT masih residual;
  `BUSINESS_READY=false`.

- Global Brand preview-save S269 exact release source
  `161ba76b8caa620741b76fe8d8d8bad18ec2841e`: `CONFIRMED / PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`. Owner mengedit nama studio, enam token warna, dan
  dua font di tab Global Brand, lalu memakai tombol kontekstual `Simpan untuk
  Preview`. Save menggunakan boundary draft tenant existing dan respons server
  menjadi sumber editor, local preview scoped, serta iframe Preview Live.
  Perubahan belum terlihat customer sebelum `Publish`; aksi Publish dinonaktifkan
  ketika draft form belum disimpan ke preview. Build, 12 feature test/160
  assertion, browser draft/publish recovery, brand iframe, adaptive layout,
  serta 18 accessibility test mobile/desktop lulus. Full backend 1.055/1.055
  (12.058 assertion), registry `1.13.0`, build, dependency audit, backup
  terenkripsi/offsite, restore disposable tiga database, atomic activation,
  verifier 17/17, public smoke 3/3, dan security header 3/3 lulus. API, schema,
  role/capability, pricing, dan payment tidak berubah.

- SagaTech V25 sales surface: `CONFIRMED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED` pada `https://sagatech.site/saga-product/`, production
  `dpl_5S2BWzukN4Fat1xdpPVsx9kvFbFF`, runtime source
  `6cfab80a9a06b50ec72e139b46ad5e4b3171f87a`. Hub hanya memilih produk;
  halaman SagaBook berurutan PDF interaktif, video inline, lalu CTA trial.
  Layout tetap mobile shell maksimum 430 px pada semua viewport. Tidak ada
  perubahan runtime SagaBook, pricing, billing, lifecycle, atau entitlement.

- SagaTech V24 sales surface: `CONFIRMED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED` pada `https://sagatech.site/saga-product/`, production
  deployment `dpl_D1xLKDsFxrVxn3UC1BjP4ftz892x`, runtime source
  `124f55191b2288fc8f2365b83c5472199fa0a310`. Surface memuat UI aktual,
  video, viewer/PDF penawaran, trial 14 hari tanpa auto-charge, dan early
  adopter 1 bulan berlangganan menjadi total 2 bulan aktif. Ini sales promise
  assisted, bukan perubahan runtime SagaBook; lifecycle DEC-029 tetap berlaku
  sampai ada release entitlement terpisah.

- Updated: 21 Agustus 2026 23:45 WIB
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED`; current release
  `20260821163643-7afdf34`, exact release source
  `7afdf345cf32427d390c2d636ef1107833136ae8`, rollback langsung
  `20260821124922-9bc208a`, dan verifier independen 17/17 termasuk HTTP 3/3
  serta security profile 3/3
- Business readiness: `NEEDS CONFIRMATION`
- Host-storage recovery S267 exact
  `ad1285cf9d02fb700e2b952ba736698580e9e2a5`: `CONFIRMED / PUSHED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Runbook operator menetapkan
  freeze sebelum pemeriksaan, inventaris read-only, perlindungan backup/data/
  provenance, cleanup target eksplisit bertahap, floor existing 2 GiB, dan
  rerun backup/restore dari awal setelah kegagalan kapasitas. Contract 10/10
  serta scan destructive-command lulus. Blocker kapasitas ditutup untuk S269
  melalui cleanup exact duplikat transport yang sudah memiliki salinan
  persisten checksum-valid; tooling S267 tetap belum dideploy.
- Release tooling S266 exact `253c4e0b497a07ead472643b827d405538343ed7`:
  `CONFIRMED / PUSHED / QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`. Setelah preflight awal, bundler memvalidasi ulang
  reparse-point dan volume root pada direktori output, staging, dan parent
  sumber segera sebelum mutasi/copy serta setelah copy. Drift yang sudah hadir
  pada setiap guard gagal tertutup. Focused release contract 16/16 (240), full
  backend 1.055/1.055 (12.050), build 5.132, parser PowerShell, Pint, npm audit,
  dan Composer audit lulus. Tidak ada perubahan UI, API, schema, data, tenant,
  payment atau provider. Tooling S266 belum dideploy; production saat ini S269.
- Combined service-fee UI S265 feature source
  `63b17f9a6af5437e663db265a3f1f2c6305a4ce5` dan exact release source
  `5a4e24fa67d28ab0e15c7d8110d7742f26d875a0`: `CONFIRMED / PUSHED /
  OWNER_UAT_APPROVED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Ringkasan customer
  menggabungkan service fee SagaDev dan provider menjadi satu `Biaya layanan`
  berdasarkan selisih customer payable dengan booking amount; total QRIS tetap
  eksplisit. Nama SagaDev, persentase, nama provider, status fee provider, dan
  paragraf penjelasan tidak dirender. Data split internal tidak diubah sehingga
  settlement dan audit tetap authoritative. Focused backend 19/19 (173),
  browser known/unknown provider mobile-desktop 4/4, build 5.132, design 26/0,
  screenshot, serta no-overflow lulus. Registry `1.12.2`; backup terenkripsi
  `20260820T102608Z`, offsite round-trip, dan restore disposable tiga database
  lulus. Founder menyetujui exception sempit hanya untuk satu failed job Fonnte;
  contract menolak exception bila ada check lain gagal atau jumlahnya berubah.
  Atomic activation dan verifier 17/17 lulus. Fonnte masih disconnected dan
  satu notifikasi verifikasi pembayaran tetap gagal tanpa blind retry/delete;
  readiness 80/100 dan `BUSINESS_READY=false`. Production aktif S265.
- Upload UI S264 feature source
  `a6d585eb5627071f3a62c3bef342284598adb751` dan exact release source
  `6d89fc14649f48886f38d39f66580a36e2784552`: `CONFIRMED / PUSHED /
  OWNER_UAT_APPROVED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Upload Foto Paket
  diringkas dari label ganda, empat kartu status, empty panel, dan tiga kolom
  panduan menjadi satu header, count singkat, satu current-state panel,
  dropzone, grid hasil, serta dua microcopy bantuan. Empty state menyebut foto
  pertama sebagai cover; input file tetap keyboard-focusable, status memakai
  live region, error tetap dekat tindakan, dan batas 10 file tidak berubah.
  Build 5.132 modul, design 26/0, browser Paket, tiga shared surface, dan E2E
  upload-persist lulus. Registry `1.12.1`; full release gate, dependency audit,
  encrypted backup `20260820T084630Z`, offsite round-trip, restore disposable,
  atomic activation, verifier 17/17, smoke 3/3, dan security profile 3/3 lulus.
  Tidak ada perubahan API, schema, tenant scope, permission, atau storage.
- Package ordering S263 feature source
  `26a34eca77d63dfb3eea35678a7b63caed4ebce8` dan exact release source
  `7ac5efd371b83162566120c7c832cb2c25943c71`: `CONFIRMED / PUSHED /
  OWNER_UAT_APPROVED / UIUX_VALIDATED / QA_VALIDATED / SECURITY_VALIDATED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Menu Paket menyediakan pengurutan per cabang
  dengan drag-and-drop dan kontrol naik/turun; satu urutan authoritative
  dipakai seluruh Template Booking. Kategori Solo, Couple, Grup, Family, dan
  Lainnya disimpan eksplisit. Draft tetap tidak publik, paket baru ditambahkan
  di akhir, dan save memakai transaksi, capability `manage_catalog`, scope
  tenant/cabang, serta stale-order 409. Full backend 1.055/1.055 (11.985
  assertion), focused final 42/42 (240), build 5.132 modul, design 26/0, visual
  mobile/desktop, dan E2E drag-save-reload lulus. Registry `1.12.0`; backup
  terenkripsi/disposable restore, migration rehearsal, atomic activation,
  verifier 17/17, public smoke 3/3, dan security profile 3/3 lulus.
- Navigation fix S262: klik ikon Pengaturan sekarang membuka Template Booking
  dan merender seluruh grup Pengaturan; Subscription & Billing tetap tersedia
  sebagai menu tersendiri. Full backend 1.051/1.051 (11.968 assertion), build
  5.132 modul, design audit 26/0, navigation lintas viewport, template dan UI
  contract 27/27, changelog 3/3, backup terenkripsi/disposable restore, atomic
  activation, dan verifier 17/17 lulus. `BUSINESS_READY=false` sampai
  authenticated Owner/operator UAT, dua studio pilot, dan provider canary
  nyata selesai.
- Dashboard production S261: shell SleekFlow-inspired memakai Plus Jakarta
  Sans, lima modul unik tanpa menu ganda, tombol minimize, preview sementara
  via hover/keyboard focus tanpa layout shift, dan tombol expand untuk pin
  terbuka. Full backend 1.051/1.051 (11.955 assertion), build 5.132 modul,
  design audit 26/0, focused responsive/toolbar, UI contract 26/26, backup
  terenkripsi/disposable restore, atomic activation, dan public verification
  lulus. Authenticated Owner/operator UAT, dua studio pilot, dan provider
  canary nyata tetap residual; `BUSINESS_READY=false`.
- Candidate dashboard S260 exact
  `54188003be44bb993add3a7daf2cf99e63fd1c45`: `PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap S244
- Candidate tooling S259 exact
  `e3b754f5bf2c6fe4e3c2bfd19bd920ddaf0cea2c`: `PUSHED / QA_VALIDATED /
  SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; bundler
  release lokal menolak primary dan secondary local-letter yang berada pada
  disk fisik sama sebelum capacity check atau mutasi. Host validasi belum
  mempunyai dua disk fixed lokal yang memenuhi semua gate. Production tetap
  S244.
- Candidate tooling S258 exact
  `2b00e8c36cffd814d8e687202abb0bc0c1309bc6`: `PUSHED / QA_VALIDATED /
  SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; bundler
  release lokal menolak path primary, secondary, dan staging yang melewati
  junction/reparse point sebelum capacity check atau mutasi. Production tetap
  S244.
- Candidate tooling S257 exact
  `622e2b76df0e2fb182e8bec4ccb50425877fce3f`: `PUSHED / QA_VALIDATED /
  SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; bundler
  release lokal mewajibkan salinan primary dan secondary pada volume root
  berbeda sebelum mutasi. Ini independensi volume root, bukan disk fisik.
  Production tetap S244.
- Candidate tooling S256 exact
  `f43e011d9cc7d13270d5ead267fb57ba5453c260`: `PUSHED / QA_VALIDATED /
  SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; preflight
  release menolak volume removable/unknown dan fixed filesystem selain
  NTFS/ReFS sebelum mutation, serta memeriksa health fixed Windows ketika
  probe tersedia. Production tetap S244.
- Candidate tooling S255 exact
  `74e082366afc544c69dc35e560c19c91424a63ff`: `PUSHED / QA_VALIDATED /
  SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; bundler
  release lokal melakukan preflight ruang read-only dengan minimum 2 GiB per
  target sebelum mutasi, mengakumulasi target satu volume, dan gagal tertutup
  bila kapasitas kurang. Production tetap S244.
- Candidate dashboard S254 exact
  `02c4fff8a404fb9d9fcd57d657709ef442566f90`: `PUSHED /
  UIUX_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap S244
- Availability empty-response recovery, manual-transfer initial-load recovery,
  dan Payment Monitor action recovery: `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`
- Source kumulatif aktif: `ab9687c48b27840222001b461bfe33cf86d36ae1`,
  release `20260820064803-ab9687c`, rollback
  `20260820052220-62a7acb`. Exact source tersedia di remote `main`; archive, Git
  bundle, backup/restore, migrasi, atomic activation, smoke, service, journal,
  dan rollback terverifikasi.
- S73 provider-cleared payout pada source fitur
  `305baaaea324301e379d8594604e13f233a3976b` dan release source
  `7e617b7ba2ff280d137d4d4f263c60f5e7aa6f0a` pernah aktif sebagai release
  `20260818054003-7e617b7` dan sekarang menjadi rollback langsung S244.
  Collection yang berhasil tetap held sampai order terminal, maturity clearing,
  dan saldo tersedia konsisten. Snapshot hanya menyimpan fingerprint audit;
  batch mingguan tidak melakukan withdrawal atau transfer otomatis. Risiko
  refund setelah payout manual tetap ditangani reconciliation operator.
- Candidate S246 exact source `c6d6b39045a6df94071892b45678405a557f531f`
  mengunci request refund dan booking lalu menjalankan finance transaction,
  perubahan status, pelepasan slot, task/notifikasi, dan audit dalam satu
  transaksi database. Kegagalan final audit sintetis membuktikan seluruh write
  dan slot lock kembali ke before-state; double-submit tidak menduplikasi
  finance/audit dan tenant lain tidak dapat disentuh. Gate 39/39 (401
  assertion), database disposable 100/100, build, Pint, serta dependency audit
  lulus. Status `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production, provider, schema, dan kebijakan carry-forward tidak berubah.
- Release S208 membuat manifest immutable sebagai satu sumber coverage untuk
  generator S207, validator S206, dan browser preflight S191. Tiga fixture
  booking dibuat future-relative sehingga regression tidak gagal palsu karena
  tanggal kalender. Focused 3/3, tooling 13/13, full backend 1.045/1.045
  (11.868 assertion), browser synthetic 4/4, build 5.116 modul, database
  disposable, npm/Composer/OSV, backup/restore, dan verifier 17/17 lulus.
  Tidak ada perubahan workflow runtime, API, schema, provider, subscription,
  atau data customer; authenticated UAT nyata dan pilot tetap residual.
- Tooling S207 source `a1e56bfc07df4a6c9105b3a61a8f2a2033535466`
  membuat template evidence UAT exact-provenance secara create-only. Dua role,
  seluruh surface, viewport 390x844/1440x900, dan check accessibility/security
  sudah disiapkan tetapi tetap `pending`/`null`; validator S206 menolaknya
  sampai UAT nyata lengkap. Focused 11/11, build 5.116 modul, npm audit nol,
  dan OSV memeriksa 114 paket Composer tanpa advisory. Tidak ada runtime,
  database, provider, atau production mutation; UAT nyata belum dilakukan.
- Tooling S206 source `8ce42d1af34627e84285261cdfca984906104356`
  menyediakan kontrak fail-closed untuk evidence authenticated UAT nyata.
  Owner/operator, surface, viewport, accessibility, zero-error/zero-mutation,
  exact source/release, PII/secret, dan residual gate divalidasi tanpa login
  atau akses production. Focused 6/6, full backend 1.045/1.045 (11.868), build
  5.116 modul, serta audit npm/Composer/OSV lulus. Actual UAT belum dilakukan.
- Tool operasi S201 pada source
  `948dea70c97b8e5d489e9cfb7bd5a5fe3e6acb61` sudah dipush dan tervalidasi
  lokal. Verifier PowerShell read-only membandingkan expected source/release/
  rollback dengan remote dan runtime, memeriksa manifest, service,
  maintenance, migration, journal, serta public smoke, lalu menghasilkan JSON
  public-safe. Verifikasi positif lulus 13/13 dan input commit salah gagal
  tertutup tanpa mutation; source ini belum dideploy dan tidak mengubah runtime
  S199.
- Hardening S202 source `2ad6cb6d830c48347a9578f73f4ce477c89cf385`
  menambahkan snapshot awal-akhir untuk remote main dan release/commit aktif.
  Verifier gagal tertutup bila pointer berubah selama pemeriksaan, tetap
  read-only, dan tidak mengubah runtime atau database. Positive production
  check lulus 16/16; expected commit salah menghasilkan status tidak deployed/
  activated tanpa mutation.
- Hardening S203 source `e67757fe15cdd388b3f59f9f21faeb17849b01e7`
  menambahkan profil security header public-safe dan memisahkan provenance
  deployment dari activation runtime. Exact runtime S199 stabil serta 3/3 URL
  merespons 200, tetapi hanya 1/3 profil header lulus karena header anti-MIME
  ganda pada dua halaman login. Output hanya berisi boolean/profile, tidak
  membawa nilai header mentah, dan `mutationPerformed=false`. Gap historis ini
  sudah ditutup release S205; verifier yang sama kini lulus 17/17.
- Candidate S204 source `2add43c0b7eaedf7db444ffe3a1330be9e80d813`
  menghapus kepemilikan ganda header anti-MIME pada source production:
  middleware tidak lagi menambah `nosniff` ketika edge ownership aktif, tetapi
  fallback tetap tersedia dan diuji untuk environment tanpa edge. Pemeriksaan
  Nginx read-only membuktikan domain app, platform, dan storefront SagaBook
  sudah memiliki edge header. Candidate lulus full regression, build, format,
  dan audit dependency; perubahan kini aktif melalui release S205.
- Candidate S205 source `50afa6e4a2096f0b111714121e9fa8042c219a8e`
  membawa packaging reproducibility ke lineage kandidat S204. Script menolak
  worktree kotor, commit selain HEAD, remote selain SagaBook, output relatif,
  output di dalam source, serta dua tujuan yang sama atau nested. Archive,
  Git bundle, metadata, dan manifest SHA-256 exact commit sudah dibuat pada
  dua lokasi terpisah dan checksum keduanya identik. Exact source kemudian
  dirilis melalui gate local-VPS; final verifier 17/17 mengonfirmasi source,
  release, rollback, service, journal, migration, HTTP, dan security header.
- Candidate S190 1b794e533788abf384af25e489a9b016669573fd
  menutup gap fresh draft -> preview untuk preset existing. UI kini memakai
  candidate settings yang benar-benar dikembalikan server setelah save, lalu
  menyimpan nilai itu ke preview tenant dan memuat ulang iframe. API/database
  membuktikan respons sama dengan profile draft per tenant; public tanpa preview
  tetap membaca published profile. Double activation satu request, recovery
  publish, permission/tenant-negative, multi-viewport, accessibility, full
  backend, build, dan audit dependency lulus. Schema, preset, workflow universal,
  credential, data customer, dan production tidak berubah.
- Candidate S189 `a8652ba5fd196f30930297064ea6625fd912a928`
  mengubah urutan reconciliation agar inquiry provider selesai sebelum expiry
  hold/session lokal. Status paid dari provider pada boundary expiry kini
  menang secara authoritative: session dan booking menjadi paid/confirmed,
  hold dikonversi, slot dipertahankan, dan collection tercatat satu kali.
  Replay tidak memanggil provider atau menambah event/collection. Acceptance,
  regresi payment/backend, enam recovery spec pada browser, build, database
  disposable 100/100, dan audit dependency lulus. UI, schema, credential,
  provider nyata, data customer, dan production tidak berubah; canary, UAT,
  pilot, serta deploy tetap gate terpisah.
- Candidate S188 `95a22d3bf27be9dca2e45fcbf6af5c01f40b6879`
  membuat reconciliation operator yang difilter tenant meneruskan scope yang
  sama ke expiry hold dan payment session. Booking, slot, settlement expiry,
  serta audit tenant lain tidak lagi dapat berubah dalam run tersebut;
  scheduler tanpa filter tetap kompatibel dan global. Acceptance lintas tenant,
  regresi command/payment/backend, enam visual recovery spec, build, database
  disposable 100/100, dan audit dependency lulus. Tidak ada perubahan UI,
  schema, provider, data customer, atau production; provider nyata, UAT, pilot,
  serta deploy tetap gate terpisah.
- Candidate S187 `94d2b59fe6c77cd74e9625a841f0798265d1eb73`
  memberi operator paket acceptance dan runbook untuk rehearsal reconciliation
  memakai database serta data sintetis. Gap provider-net dan legacy accounting
  terdeteksi read-only tanpa task, notifikasi, atau audit baru; tenant filter
  tidak bocor dan role `platform_support` tidak dapat membaca atau menjalankan
  reconciliation. Focused 8/8, regresi payment/backend 314/314, visual recovery,
  build, migration disposable, dan audit dependency lulus. Produk, API, schema,
  UI, provider, serta production tidak berubah; real provider inquiry,
  reconciliation, settlement, canary, UAT, pilot, dan deploy tetap terpisah.
- Candidate S186 `55f65940277b589165ec66f20b1a5a1d94953a26`
  mengunci satu closing per tenant/cabang/tanggal pada database dan backend.
  Retry identik mengembalikan row yang sudah ada tanpa audit kedua, sedangkan
  retry dengan actual cash berbeda mengembalikan konflik 409 serta row
  authoritative. Cabang di luar tenant ditolak. UI Owner, Staff, dan Report
  memakai lock sinkron, status loading, serta recovery copy; panel Closing yang
  sebelumnya tidak mempunyai tab kini dapat dinavigasi. Migration fresh,
  rollback, dan migrate ulang lulus; data production read-only tidak memiliki
  natural-key duplicate. Browser mobile/tablet/desktop, accessibility mode,
  focused backend, regresi report, build, dan audit dependency lulus.
  Production tetap S170; authenticated UAT, pilot, dan deploy terpisah.
- Candidate S185 `e1772b2b94bc9feae65ec2367b62ab00926b6622`
  mengganti tombol Filter inert pada Detail Transaksi dengan pencarian lokal,
  filter metode, reset, empty state, live region, dan pagination 10 baris.
  Ringkasan total tetap authoritative; rows tetap berasal dari response yang
  sudah capability dan tenant/cabang scoped. Tidak ada endpoint, schema, write,
  raw PII, atau audit payload baru. Keyboard Enter/Escape, target 44 px,
  forced-colors, reduced-motion, zoom/no-overflow, tiga viewport, full backend,
  database 100/100, build, dan audit dependency lulus. Production tetap S170;
  authenticated UAT, pilot, serta real provider/reconciliation tetap terpisah.
- Candidate S184 `f63713e1b8e7e9fa677fec7ed22fdb4c8573122f`
  mengaktifkan jalur export background existing sebagai satu primary action
  sesuai status. Kunci request stabil menjaga retry ambigu dan double-submit
  tetap satu row, satu job, dan satu audit; filter yang berbeda dengan kunci
  sama ditolak. UI membaca status authoritative sebelum download, menjaga
  pilihan cabang pada offline/permission denial, dan mengganti scope export
  ketika jenis/periode/cabang berubah. Format PDF palsu dihapus dari UI dan
  backend menolak format/rentang invalid tanpa write. Pesan job/audit
  public-safe, tiga viewport/accessibility, full backend, database 100/100,
  build, serta audit dependency lulus. Production tetap S170; tidak ada schema,
  deploy, credential/data customer, atau activation.
- Candidate S183 `12fd512ced523a41167b9b68cfad55eaa3b04e4e`
  menambahkan combined exit payment/status yang fail-fast atas backend,
  database, build, serta recovery browser. Exactly-once/replay/transisi,
  reconciliation concurrency, stale multi-tab, permission/tenant-negative,
  cancellation, QRIS/transfer, keyboard, screen reader, forced-colors,
  reduced-motion, dan no-overflow dibuktikan kumulatif. Pemisahan service
  notification publik menurunkan `BookingController` dari 931 menjadi 895 baris
  tanpa mengubah route, schema, atau workflow. Production tetap S170; deploy,
  provider canary, authenticated UAT, dan pilot tetap gate terpisah.
- Candidate S182 `67a64df3503cde2116666bdeb14cc70c19d61d15`
  menambahkan guard sinkron pada tombol draft/publish dan serialisasi publish
  per tenant. Retry konten published yang sama menjadi replay no-op untuk
  profil/audit, UI menjelaskan bahwa versi authoritative sudah aktif, dan
  respons gagal tetap menjaga draft. Public read-after-write, permission dan
  tenant-negative, tiga viewport, forced-colors, reduced-motion, target 44 px,
  serta lima preset existing lulus. Tidak ada schema, preset, workflow, data
  customer, atau runtime production yang berubah.
- Candidate S181 `34006a5a4a692778176834394ddee224e50193d9`
  membuat retry reminder aman terhadap double activation dan request replay.
  Write pertama tetap memakai transaction/row lock; replay state yang sama
  hanya mengembalikan hasil authoritative tanpa mutation atau audit kedua.
  Dashboard memisahkan status booking dari notifikasi, menyembunyikan kode
  internal, dan memberi fallback template manual ber-placeholder saat provider
  atau clipboard tidak siap. Outcome ambigu tidak dapat di-retry; role owner,
  recent-auth, tenant, dan audit public-safe tetap berlaku. Production tetap
  S170 dan tidak ada provider send/canary.
- Candidate S180 `d32d09b2267d1ccc867c70203737e112ea5fc1a1`
  menstandarkan dialog Manual Booking dengan scroll internal, header/footer
  stabil, target 44 px, dan proteksi draft. Create/read-after-write tetap
  memakai boundary booking existing; production tetap S170.
- Candidate S179 `7eac46e4681a48caa479bc02e859f7165257b192`
  menyatukan label, penyebab, expiry WIB, dan tindakan pembayaran pada detail
  customer, detail admin, serta Payment Monitor. Status asing berhenti aman
  sebagai `Perlu dicek`; production tetap S170.
- Candidate S175 `27ea36a27a22de165758962be307ab4cdd0e125a`
  menutup gap double-submit di tahap Bayar. Dua klik cepat hanya memanggil
  write booking dan create-session masing-masing sekali; customer mendapat
  status proses yang terbaca screen reader dan CTA stabil pada forced-colors
  serta reduced-motion. Booking-status read-after-write memakai database
  disposable. Production belum berubah.
- Candidate S174 `73f0ec20c44ded9fb9f31c2bbb134107ad160265`
  menutup ambiguity saat write booking publik sudah tersimpan tetapi respons
  jaringan tidak sampai ke customer. Storefront mempertahankan state dan
  memakai request yang sama saat retry; backend menahan race dengan transaksi,
  unique tenant scope, serta HMAC tanpa menyimpan kunci mentah. Dua respons
  identik menunjuk satu booking, hold, audit, dan notifikasi. Production belum
  berubah.
- Candidate S173 `e70b2389a7488d7e9d30a399cb1863a8bd8fc4dc`
  membuat posisi customer konsisten dengan sembilan langkah workflow tanpa
  mengubah urutan, aksi lanjut/kembali, skip Background, API, atau database.
  Marker selesai/aktif/berikutnya/lewati tetap terbaca pada forced-colors dan
  oleh screen reader; canvas tetap maksimum 460 piksel pada mobile, tablet,
  dan desktop. Production belum berubah.
- Candidate S172 `e111f40187a970cf6dc36cf76da5e25cbeaac55d`
  menyelesaikan alur create/update Task Center dari UI ke database dan kembali
  ke UI. Detail task hanya menonjolkan satu aksi utama per status; stale write
  ditolak dengan data terbaru, retry idempoten, draft bertahan saat permission
  ditolak, dan cabang yang tidak didelegasikan tetap tidak dapat dimutasi.
  Production belum berubah.
- Candidate S171 `33aa5261d23656fd452826f82cfef4eda377eca4`
  menutup gap privasi admin: nomor customer dimasking pada payload dashboard
  dan hanya dibuka melalui aksi berizin, tenant/cabang-scoped, no-store, serta
  audit tanpa nomor lengkap atau empat digit terakhir. Production belum
  berubah.
- Repository source `main`, manifest production, dan embedded release commit
  menunjuk exact SHA S170 yang sama.
- S170 mempromosikan S168 dan S169: deploy production hanya melalui dispatch
  manual dengan backup/restore evidence wajib, dan dialog tambah/edit
  Background Admin sekarang terpusat, lebar, scroll-internal, serta aman pada
  viewport mobile sampai desktop tanpa mengubah API atau schema.
- Quality Gate `31321196676`, fresh encrypted backup/restore, workflow deploy
  `31321655190`, DB audit 100, service/journal, rollback, dan public smoke
  lulus. Tidak ada provider canary atau aktivasi subscription.
- S131-S156 aktif kumulatif. Gate fresh backend 993/993, browser auth,
  tenant/cabang, Add-on, Resource, storefront/slot, race 5/5, build/design,
  dependency audit, backup/restore exact-SHA, manifest, DB audit 100, service,
  dan public smoke lulus.
- Browser production 390x844 dan 1440x900 mempertahankan satu canvas mobile
  390/460 piksel terpusat, tanpa overflow, serta satu watermark non-fixed.
- Code `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; `BUSINESS_READY` masih
  `NEEDS CONFIRMATION` karena dua tenant belum lolos setup pilot. Aktivasi
  subscription tidak diubah.
- Label candidate pada histori menunjukkan status saat bukti dibuat. Source
  S98-S156 yang menjadi ancestor release aktif sudah production kumulatif;
  grounding intent-switch/reset greeting Support Hub aktif, tetapi promosi
  corpus/index/model AI yang lebih luas tetap terpisah; S94/S108 yang
  memperlebar storefront tetap deprecated dan tidak aktif.

- Support Hub production sekarang memprioritaskan intent eksplisit baru,
  mereset konteks saat greeting, tidak menganggap kata `caranya` sebagai
  follow-up mandiri, dan menolak citation yang tidak mendukung intent. Gate
  release mencakup 996/996 backend, 47/47 focused support, build, audit
  dependency, backup/restore, public smoke, service health, dan rollback.
  Model, prompt, provider, dan KB tidak diubah oleh release ini.

### Candidate S175-S171, release S170, dan histori terkait
- S175 `27ea36a2` membuktikan repeated activation pada Bayar tidak melewati
  guard mutation. Gate Playwright 4/4, backend 12/12 (162 assertion), race
  5/5, build/design, dan audit dependency lulus.
- S174 `73f0ec20` memberi recovery aktual ketika respons submit booking hilang:
  alert mempertahankan pilihan dan aksi keyboard 44 px mengulang request yang
  sama. Backend me-replay hasil authoritative, menolak payload berbeda, dan
  menjaga tenant isolation serta side effect exactly-once. Gate 12/12 (162
  assertion), race multi-proses 5/5, Playwright recovery/regresi 3/3 pada
  390x844, 768x1024, 1440x900, build/design 26/0, dan audit dependency lulus.
  Status `SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED / UIUX_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap S170.
- S173 `e70b2389` mengganti indikator lima label yang menggabungkan tiga
  langkah menjadi perjalanan sembilan langkah kanonik. Header memakai bentuk
  ringkas `Langkah X/9`, progressbar menyatakan nilai serta nama langkah, dan
  daftar semantik membedakan state tanpa warna saja. Focused 5/5, regresi
  visual seluruh layar dan template accessibility pada 390x844, 768x1024,
  1440x900, build/typecheck/design 26/0, backend 12/12 (136 assertion), serta
  npm/Composer audit lulus. Status `SECURITY_VALIDATED / UIUX_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap S170.
- S171 `33aa5261` mengubah Dashboard, Booking list, dan Booking Detail menjadi
  secure-by-default untuk nomor WhatsApp customer. Tampilkan, Salin, dan CTA
  WhatsApp memakai endpoint akses eksplisit; respons tidak dicache, reveal
  hanya hidup sementara di browser, dan pergantian booking mereset masking.
  Owner/operator tetap dibatasi capability, tenant, dan cabang. Activity log
  hanya mencatat tindakan dan role. Backend/contract/tenant/role 15/15 dengan
  233 assertion, Playwright 6/6 pada 390x844, 768x1024, dan 1440x900,
  keyboard/focus, target 44 px, forced-colors, reduced-motion, no-overflow,
  build, typecheck, design audit 26/0, Pint, serta audit dependency lulus.
  Status `SECURITY_VALIDATED / UIUX_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap S170 dan belum `BUSINESS_READY`.
- S170 `f69170a7` mempertahankan tiga parent provenance S166, S168, dan S169.
  Release `20260809153848-f69170a` aktif dengan rollback langsung
  `20260809083131-5c76735`. Status `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`; authenticated Owner UAT dan dua gap pilot tetap
  menahan `BUSINESS_READY`.
- S169 `28fccc91` mengganti drawer kanan editor Background Admin dengan dialog
  terpusat yang dipakai bersama oleh aksi tambah dan edit. Dialog mempertahankan
  draft protection dan seluruh mutation existing, membatasi tinggi terhadap
  viewport, memakai scroll internal, serta menyediakan target tutup minimum
  44 piksel. Playwright membuktikan centered/no-overflow pada 390x844,
  768x1024, dan 1440x900; fokus/Escape mobile/desktop serta CRUD
  tambah-edit-persist-hapus juga lulus. Build, design audit 26/0, npm audit nol,
  dan Quality Gate `31319295683` hijau. Status `UIUX_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; tidak ada perubahan database
  production, API, auth, tenant, permission, provider, atau subscription.
- S168 `abda8f6a` menghapus trigger `workflow_run` dan fallback evidence dari
  variables sehingga Quality Gate tidak dapat memulai deploy production.
  Operator tetap harus memberi dua evidence wajib melalui dispatch manual;
  checkout dan validasi tetap terkunci pada exact SHA. Focused contract 14/14
  (118 assertion), build, dependency audit, MySQL 8.4, Laravel,
  visual/browser, dan booking smoke hijau. Status `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; database dan runtime production tidak berubah.
- S166 `5c767353` menambahkan observability fail-closed antara batas
  body reverse proxy dan guard webhook aplikasi. Inspector hanya mengeluarkan
  metadata public-safe, memilih batas efektif paling konservatif termasuk
  nested override, dan kontrak deploy menjalankan pembanding sebelum migration
  serta sesudah activation. Missing, invalid, unbounded, dan batas di bawah
  aplikasi ditolak. Full backend 1.014/1.014 (11.511 assertion), focused 5/5,
  DB audit disposable 100, browser Payment Monitor mobile/desktop, build/design,
  format/syntax/diff, npm/Composer/OSV, dan read-only live inspection hijau.
  Workflow `31303720382`, exact manifest, backup/restore, body-limit readiness,
  services, dan public smoke lulus. Status `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`; belum `BUSINESS_READY`.
- Candidate S165 `33c10710` menambah optimistic stale-version pada rekonsiliasi
  Payment Monitor di atas lock S164. Tab yang membawa versi lama mendapat 409
  sebelum provider/audit, memuat ulang state server, dan menampilkan status
  provider serta recovery screen-reader tanpa false success. Dua tab berurutan
  membuktikan satu provider check; permission-negative dan tenant-negative
  tetap fail-closed. Payment 49/49, full backend 1.010/1.010, DB audit 100 dan
  integrity ok, browser 16/16, build/design, format/diff, npm/Composer/OSV
  hijau. Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
  S161.
- Candidate S164 `ea023fff` menambah lock database tenant+payment-session pada
  rekonsiliasi admin. Request paralel untuk sesi sama sekarang mendapat 409
  public-safe sebelum provider dipanggil, tanpa perubahan booking, payment
  session, atau activity log; lock selalu dilepas setelah proses selesai.
  Full backend 1.008/1.008 (11.467 assertion), focused payment/security 80/80,
  DB audit disposable 100, Payment Monitor 10/10, cache compile, build/design,
  format/diff, npm/Composer/OSV hijau. Status `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap S161.
- Candidate S163 `fc898bf8` menambah batas ukuran fail-closed pada dua route
  webhook pembayaran. Header ukuran yang melampaui batas ditolak sebelum body
  dibaca oleh proses bisnis; ukuran body aktual tetap diverifikasi untuk
  menangkal deklarasi palsu. Response 413 public-safe membawa request ID dan
  rejection tidak menambah payment event atau audit database. Gate 116/116
  (777 assertion), DB audit disposable 100, cache compile, build/design,
  format/diff, npm/Composer/OSV hijau. Status `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap S161.
- Candidate S160 `71eb45ba` menutup state transition untuk callback provider
  yang hanya memberi reference transaksi fallback. Pending/expired dapat maju
  ke paid melalui ID transisi deterministik tenant-scoped; retry paid tidak
  menggandakan payment event, audit, settlement, atau accounting, sedangkan
  nominal/identitas kritis yang berubah ditolak 409. Tokopay signed, recovery
  expiry, dan booking-status read-after-write lulus. Payment 61/61, backend
  1.001/1.001, browser 10/10, build/design, format/diff, serta audit dependency
  hijau. Candidate ini `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tidak berubah.
- Candidate S159 `2b101b87` menutup replay conflict untuk callback dengan
  `event_id` eksplisit. Payload identik, termasuk urutan field berbeda dan
  signature retry baru, me-replay event pertama tanpa write/audit sukses ganda
  serta mengembalikan penanda idempoten. Payload bisnis berbeda dengan ID sama
  ditolak 409, dicatat sebagai rejection public-safe, dan status customer tetap
  memakai booking pertama yang sudah confirmed/paid. Focused 5/5, payment
  regression 50/50, full backend 999/999, browser Payment Monitor 10/10,
  build/design, format/diff, serta audit dependency lulus. Candidate ini
  `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah.
- Candidate combined exit S7-S8 `c8138517` menyatukan lineage production
  `c7f13487` dan retry booking manual dalam satu runner fail-fast. Konflik slot,
  expiry lintas tab, race dua proses, serta retry/read-after-write operator
  lulus bersama: focused 265/265, race 5/5, browser 6/6, full backend 998/998,
  Support Hub 4/4, build/design, dan dependency audit nol advisory. S7-S8
  `EXIT_GATE_ACCEPTED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  production tidak berubah.
- Candidate manual-booking retry `fe329a0b` menambahkan kunci idempotensi
  tenant-scoped, replay response asli, penolakan payload conflict, optimistic
  calendar update, refresh recovery, dan double-submit guard. Backend 995/995,
  Playwright terfokus 2/2, UI mobile/desktop, build/design, serta audit
  dependency hijau. Candidate ini `LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tetap `c7f13487`.
- Candidate S156 `04c9b641` membuktikan race slot melalui dua proses PHP
  independen yang berbagi database disposable. Hasil 5/5 selalu satu winner
  dan satu 409 `slot_conflict`; persistensi akhir tepat satu booking, hold,
  slot lock, dan audit, tanpa SQL atau kode booking pada response. Transaction
  retry serta fallback concurrency yang disanitasi local-validated dan belum
  production.
- Candidate S155 `f04e4a9c` menyinkronkan expiry payment hold pada tab QRIS dan
  transfer dari deadline backend. Request status sah mengakhiri booking/hold/
  sesi secara atomik, melepas slot, dan menampilkan recovery yang sama; token
  salah tidak memicu mutasi. Candidate ini local-validated dan belum production.
- Candidate S154 `1d9d774f` memulihkan konflik slot pada batas Bayar -> Jadwal:
  satu request mutation, 409 `slot_conflict` public-safe, availability refetch,
  pilihan slot stale dibersihkan, dan sessionStorage baru ditulis setelah API
  menerima booking. Candidate ini local-validated dan belum production.

## Overview produk

`CONFIRMED`: SaaS booking dan operating system self-photo studio untuk workflow
sebelum sesi.

## Masalah yang diselesaikan

Booking via chat, bentrok slot, status pembayaran yang tersebar, follow-up
manual, serta kurangnya audit dan reconciliation.

## Target pengguna

Owner studio, manager/admin/cashier/operator, customer booking, dan SagaDev
super admin.

## Persona pengguna

- Owner: membutuhkan occupancy, revenue visibility, policy, dan kontrol staff.
- Operator: membutuhkan calendar, task, check-in, dan recovery yang jelas.
- Customer: membutuhkan slot, checkout, status, dan perubahan booking.
- `NEEDS CONFIRMATION`: volume, ukuran studio, dan buyer persona prioritas.

## Value proposition

> SagaBook mengatur sebelum sesi.

Satu alur dari availability sampai session handoff, dengan tenant/permission
dan status pembayaran yang server-authoritative.

## Use case

Booking publik, reschedule/cancel/refund request, check-in, task/reminder,
reconciliation, reporting, tenant onboarding, dan subscription.

## Fitur utama

Storefront, availability/capacity, checkout/payment, Customer Booking Center,
calendar, Task Center, check-in, report, staff permission, audit, dan
Activation Center, serta Support & Recovery Center.

## Fitur MVP

`CONFIRMED`: booking, slot, payment status, customer secure link, request
workflow, calendar, check-in, operator task, serta limit paket pada
[PRODUCT](PRODUCT.md) termasuk core scope.

## Roadmap

1. `TODO`: Founding Studio Pilot minimal tiga studio.
2. `TODO`: booking/payment/notification acceptance end-to-end dengan provider.
3. `TODO`: observasi kualitas support dan recovery pada cohort studio nyata.
4. `NEEDS CONFIRMATION`: integrasi SagaView setelah kedua produk siap satuan.

## User journey

Discover studio → pilih paket/slot → checkout → konfirmasi → reminder →
check-in → session handoff → perubahan/refund bila perlu.

## User flow

Customer dan operator flow rinci berada di [PRODUCT](PRODUCT.md). Mutation uang
dan booking kritis harus request/permission/idempotency aware.

## Business model

Subscription SaaS bulanan per produk/tenant. Setup, transaction fee, dan add-on
belum dikunci.

## Pricing

`CONFIRMED`: Basic Rp500.000, Growth Rp950.000, Pro Rp1.500.000 per bulan.
Basic mencakup 1 cabang/3 staff; Growth 3 cabang/10 staff; Pro maksimal 10
cabang/30 staff self-service; kebutuhan di atasnya menggunakan Custom.
Booking dipasarkan unlimited dengan fair-use.

`CONFIRMED` — kontrak ini aktif di production pada release
`20260731172605-39fb2d3`, source
`39fb2d3ff01c3b7368ed623fbf551b349fe4b56c`.

## Kompetitor

`NEEDS CONFIRMATION`: daftar kompetitor dan evidence perbandingan. Kategori
pembanding yang relevan: generic booking, appointment scheduling, studio
management, dan workflow berbasis chat/spreadsheet.

## Diferensiasi produk

`PROPOSAL`: tekankan alur studio end-to-end, tenant operations, customer
secure center, dan session handoff—bukan booking calendar generik.

## Brand positioning

Operating system sebelum sesi untuk self-photo studio Indonesia.

## Messaging

- “Booking, pembayaran, perubahan jadwal, dan operasional studio dalam satu
  alur.”
- “Customer melihat status; operator melihat next action.”
- Klaim outcome kuantitatif: `NEEDS CONFIRMATION`.

## FAQ

**Apakah SagaBook termasuk SagaView?** Tidak. Produk dijual satuan.
**Apakah trial otomatis menagih?** Tidak. Trial aktif 7 hari tidak auto-charge;
setelahnya tersedia grace read-only 7 hari sebelum suspend.
**Apakah provider pasti mengirim reminder?** Hanya bila delivery nyata
terverifikasi; fallback manual harus tetap terlihat.

## Technical overview

Candidate S162 source `e294fb4791f168772ab7c101443efbf45f9147a8`
menambah limiter webhook pembayaran berlapis dengan cache key ter-fingerprint.
Boundary agregat dan per-event mencegah request berlebih mencapai controller;
tes membuktikan response 429 tidak menambah payment event maupun audit. Gate
relevan/unit, database disposable, build, dan dependency security hijau. Status
`IMPLEMENTED_NOT_DEPLOYED`; production dan provider runtime tidak berubah.

Multi-tenant web application dengan storefront, admin, super-admin, background
jobs, billing, audit, dan immutable release process.

Kontrak storefront terbaru melalui `DEC-031` adalah mobile-only pada semua
viewport: canvas maksimum 460 piksel dan terpusat ketika dibuka dari desktop.
Storefront tidak memiliki rail, workspace dua kolom, canvas lebar, atau layout
landing page. Arah S94/S108 yang memperlebar storefront menjadi 1040/1280
piksel berstatus `DEPRECATED`; responsivitas desktop penuh hanya untuk
dashboard/admin SagaBook serta aplikasi/dashboard SagaView.

Editor Template Booking S122 pada source
`1b8c91fc182d1bd8e552cafa16785e5b90bbab01` aktif sebagai release
`20260806040004-1b8c91f` dengan rollback `20260805052322-20ff682`. Layout
mobile tidak lagi overflow, tab dan tombol aksi minimum 44 piksel, panel preset
dapat discroll, dan preview mobile berada sebagai kolom ketiga stabil pada
viewport >=1400 piksel. Storefront di dalam preview tetap maksimum 460 piksel.
Full backend 960/960, Playwright 42/42, booking E2E 1/1, build/design/audit,
backup/restore, DB audit 100, service, dan public smoke lulus. Tidak ada API,
database, migration, booking, payment, availability, entitlement, atau
subscription activation yang berubah. Screening integrasi berikutnya mengikuti
[Feature Coverage Ledger](FEATURE_COVERAGE_LEDGER.md) dan `DEC-041`.

Auth/session S123 pada source
`a9125228f8bda3d919a55b1a6ed154355e1bf9da` aktif sebagai release
`20260806043833-a912522` dengan rollback `20260806040004-1b8c91f`. Frontend
login memakai timeout 15 detik, cancellation, in-flight guard, password
clear/refocus, pesan network yang dapat dicoba ulang, dan `aria-busy`. Tombol
logout mobile kini memiliki nama aksesibel. Alur UI -> frontend -> API ->
auth/session service -> staff/activity log/session store -> response UI,
termasuk invalid credential, protected 401, capability 403, cross-tenant 403,
dan logout lulus dengan data demo public-safe. S123 tidak mengaktifkan
subscription dan tidak menonaktifkan website booking yang sudah aktif.

Candidate Sprint 2 terbaru pada source
`bf1766ae84c352cf3687383ca31947a3e619f575` mempertahankan idle expiry per tab
dan menambahkan kontrol `Keluarkan perangkat lain` bagi staff terautentikasi.
Password step-up, idempotency, transaksi dengan row lock, kenaikan
`staff.session_version`, current-context renewal, 401 `session_revoked`, dan
audit tersanitasi tervalidasi end-to-end. Current device tetap aktif, sedangkan
context lama dicabut. Full backend 969/969 (11.133), browser revocation
mobile/desktop 2/2, build, design audit, npm audit, Pint, dan diff-check lulus.
Combined browser gate menjalankan auth/session, rate-limit, idle-session, dan
revocation pada runtime disposable dengan cache/limit/timeout eksplisit; hasil
13 pass dan 1 intentional skip. Karena endpoint advisory Packagist timeout,
fallback fail-closed mengaudit 114 nama/versi public dari `composer.lock`
melalui OSV resmi untuk ekosistem Packagist; hasil nol advisory dan unit audit
3/3. Full backend 969/969, node 13/13, build, design, npm audit, Pint, diff, dan
cleanup juga lulus. Sprint 2 berstatus `LOCAL_VALIDATED /
EXIT_GATE_ACCEPTED / IMPLEMENTED_NOT_DEPLOYED`.

Candidate Sprint 3 tenant/cabang pada source
`82a6f376998d8eb5778c6ccaac117a21a1ab8efd` mencabut sesi stale saat owner
mengubah batas akses staff. `StaffAccountService` membandingkan role, status,
email, username, password, serta kumpulan cabang yang sudah dinormalisasi;
perubahan keamanan menaikkan `staff.session_version` tepat sekali di dalam
transaksi dan menyimpan audit public-safe. Request lama kemudian menerima 401
`session_revoked`; login ulang mengambil scope cabang aktual dari API. Browser
UI -> API -> service -> SQLite disposable -> response UI lulus 2/2 pada
390x844 dan 1440x900. Full backend 970/970, AI SagaBook 44/44, build, design,
Pint, npm audit, dan OSV Composer 114 paket/0 advisory lulus. Status irisan
`UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap pada release sebelumnya.

Candidate Sprint 3 berikutnya pada source
`70a6aad76f3f86589473986c0e9fa3b26c5022c2` menyinkronkan perubahan cabang
antar-tab tanpa membawa tenant, user, booking, atau data operasional dalam
sinyal invalidasi. Tab pengamat langsung mengambil ulang response API
terautentikasi; response yang lebih lama diabaikan, focus/visibility memulihkan
state, dan kegagalan offline menampilkan retry tanpa sukses palsu. Browser UI
owner -> mutation API -> backend/database disposable -> invalidasi -> refetch
API -> response UI lulus pada 390x844 dan 1440x900, termasuk race response,
offline/retry, keyboard/focus, target 44 piksel, forced-colors, reduced-motion,
satu watermark, dan tanpa overflow. Full backend 970/970 dengan 11.145
assertion, AI SagaBook 44/44, regresi cabang existing, build, design audit,
dependency audit, Pint dirty, dan diff-check lulus. Status irisan
`UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap pada release
`20260806152606-0894df0`. Residual tenant/cabang adalah delete
dependency/recovery dan filter cabang pada route lain.

Candidate Sprint 3 source `4606c5c594b29a4d3075617d01ffed5014d785d1`
menutup delete dependency/recovery pada `/admin/branches`. UI merender response
409 aktual sebagai daftar hitungan public-safe dan tautan pemulihan, menangani
offline/retry, mencegah double-submit sinkron, serta mengembalikan fokus ke aksi
aman. Backend mengunci record tenant di dalam transaksi sebelum memeriksa
dependensi; foreign-tenant/missing ID 404 tanpa leak/audit, staff 403, dan
penghapusan cabang bebas menghasilkan satu audit serta read-after-reload yang
konsisten. Browser 4/4 mobile/desktop, regresi CRUD 8/8, backend 20/20, typecheck,
build, dan npm audit lulus. Composer cache tidak menemukan advisory, tetapi
fresh OSV timeout dua kali; status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
Residual tenant/cabang kini filter cabang route lain dan audit OSV terbaru.

Candidate Sprint 3 terbaru source
`22013fc0acb12b9c235454048154ed1e1206f732` menyelaraskan `/admin/staff`
dengan selector cabang global. Sebelumnya owner dapat berada pada Cabang Dago
namun daftar masih memakai Semua Cabang; sekarang filter, reset, jumlah, dan
status konteks memakai satu state kanonik. Browser memakai response dashboard
aktual, revokasi delegasi tetap memaksa rehidrasi scope, dan staff/branch-admin
mutation negative tetap ditolak. Visual/context/revocation 10/10, hardening
6/6, backend 41/41, AI 44/44, build/typecheck/design, serta npm/Composer/OSV
nol advisory. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; residual berikutnya adalah
combined exit gate S3-S4 sebelum katalog S5-S6.

Combined exit gate S3-S4 diterima lokal pada source
`4ee167ecbc95892a113c9036faada5de85994bb8`. Runner mengisolasi tujuh profil
untuk branch write/retry, report context, staff revocation, live refetch,
delete recovery, staff context, dan shared hardening. Runner 7/7, harness 7/7,
full backend 973/973 dengan 11.171 assertion, AI 44/44, build/typecheck/design,
cleanup 0/0, serta npm/Composer/OSV nol advisory. Bukti viewport/zoom dan
failure/security berasal dari slice yang dijalankan ulang terhadap API aktual
dan database disposable. Status `LOCAL_VALIDATED / EXIT_GATE_ACCEPTED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`, dan
vertical slice READY berikutnya berasal dari S5-S6 katalog.

Vertical slice pertama S5 ditutup lokal pada source
`0874c098440850d104868d891c2f61214cdba36b`. Konflik stale-write paket 409
tidak lagi membuat editor buntu: operator dapat memuat versi server dari
`GET /api/admin/getDashboardData`, baseline/draft diperbarui, lalu save
berikutnya berjalan satu kali melalui optimistic lock existing. Playwright,
permission/tenant-negative, full backend, build/design, dan audit dependency
hijau. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
Publish/deactivate paket, dependency integrity, background, dan exit gate S5
belum selesai.

Vertical slice S5 berikutnya ditutup lokal pada source
`4b71e3473d8713848158cfbed7a0923d4433bf46`. Sebelum perbaikan, paket aktif
dapat dijadikan Draft meski background aktif masih bergantung padanya dan klik
ganda dapat menghasilkan respons 200 lalu 409. Setelah perbaikan, controller
mengunci paket, pivot, dan background aktif secara transactional; satu respons
409 `package_deactivation_blocked` mempertahankan kedua entitas tetap aktif dan
tidak menulis audit sukses palsu. UI menyediakan state pending/error serta aksi
`Atur background`, dengan target 44 piksel dan tanpa layout-shift pada klik
ganda. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`. Delete
dependency/recovery paket, coverage background, dan exit gate S5 belum selesai.

Vertical slice S5 selanjutnya ditutup lokal pada source
`be02a4e7cc092096c0fdc686c41d4144e93329f0`. Penghapusan paket yang masih
dipakai booking atau terhubung ke background kini menghasilkan satu respons
409 `package_delete_blocked` dengan hitungan dependensi public-safe dan petunjuk
recovery. Controller mengunci paket di dalam transaksi, memeriksa tabel booking
serta pivot background, mempertahankan paket, dan tidak menulis audit sukses.
UI menampilkan `Paket belum dihapus`, daftar dependensi, dan aksi 44 piksel
`Atur background`; pending ref mencegah double-submit dan response API aktual
tetap menjadi sumber state. Focused/full backend, package serta CRUD/hardening
browser regression, AI SagaBook, build/typecheck/design, dependency audit, dan
cleanup lulus. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
`20260806152606-0894df0`. Coverage Background dan exit gate S5 belum selesai;
S6 belum dimulai.

Vertical slice Background pertama S5 ditutup lokal pada source
`b9aeb7c9f2bf5205f3a740551530362447d5e9ed`. Delete Background yang masih
terhubung paket atau riwayat booking sekarang gagal aman dengan 409
`background_delete_blocked`, dua jenis hitungan dependensi public-safe, dan
petunjuk recovery ke menu Paket. Transaksi memakai tenant-scoped row lock;
record, pivot, dan riwayat tetap utuh serta audit sukses tidak dibuat pada
failure. UI merender response aktual, memberi target 44 piksel `Atur paket`,
label screen-reader, fokus keyboard, forced-colors/reduced-motion, retry, dan
double-submit guard. Full backend 974/974, browser focused/regression serta
CRUD/hardening, AI SagaBook, build/design, Pint/diff, dan audit dependency
lulus. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`.
Coverage Background dan exit gate S5 belum selesai; S6 belum dimulai.

Vertical slice Background berikutnya S5 ditutup lokal pada source
`c560119745959fe67f3234a6e278c926db595858`. Konflik edit lintas tab sekarang
ditolak 409 tanpa menimpa `lock_version`, nama, atau relasi paket versi server;
UI menyediakan `Muat data terbaru`, mengganti baseline dengan response API
aktual, serta mengulang GET recovery ketika jaringan gagal tanpa mengirim
mutation stale. Ref sinkron mencegah double-submit. State loading, success,
error, offline, retry, target 44 piksel, keyboard/focus,
forced-colors/reduced-motion, no-overflow, dan satu watermark lulus. Full backend
975/975, S141-S145 browser 13 pass/3 intentional skip, CRUD/hardening 16/16,
AI 44/44, build/typecheck/design, targeted Pint/diff/cleanup, dan audit
dependency lulus. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
`20260806152606-0894df0`. Publish/deactivation integrity Background dan exit
gate S5 belum selesai; S6 belum dimulai. Health read-only hijau, tetapi
rollback/previous symlink wajib dipulihkan sebelum S21.

Vertical slice Background penutup S5 ditutup lokal pada source
`ce537667f314e80b8b94479f0defb9d60524f4f0`. Status numeric API `0/1` sekarang
dinormalisasi menjadi boolean aksesibel; switch dikunci segera, mutation failure
mempertahankan status terkonfirmasi server, dan success baru dirender setelah
response aktual. Recovery membedakan jaringan/retry, konflik 409 dengan
`Muat data terbaru`, serta validation 422 dengan `Atur background`. Feedback
saving ditunda 150 ms agar kartu tidak bergeser saat double-click; request awal
tetap tepat satu. Staff mutation 403 dan tenant-negative 404 tidak mengubah
record. Screenshot before/after 390x844 dan 1440x900, matriks desktop sampai
2560x1440, zoom 100-200 persen, forced-colors, reduced-motion, full backend
977/977, S141-S146 browser 17 pass/5 intentional skip, CRUD/hardening 16/16,
AI 44/44, build/typecheck/design, targeted Pint/diff, dan audit dependency
lulus. Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; combined S5
`EXIT_GATE_ACCEPTED / LOCAL_VALIDATED`. S6 add-on/resource menjadi READY
berikutnya. Production tetap `20260806152606-0894df0`; rollback/previous
symlink wajib dipulihkan sebelum S21.

Vertical slice pertama S6 ditutup lokal pada source
`0d962430177569eaa6e53b053eedacd6cee01ec7`. Konflik stale-write editor Add-on
sekarang menampilkan recovery `Muat data terbaru`; GET dashboard aktual
mengganti draft/baseline dengan versi server, sedangkan kegagalan jaringan
menampilkan `Coba muat lagi` dan tidak mengulang POST stale. Ref sinkron
mencegah save/reload ganda. Focused backend 3/3 (16), full backend 979/979
(11.227), S141-S147 browser 20 pass/6 intentional skip, CRUD/hardening 16/16,
AI 44/44 (3.440), build/typecheck/design 26/0, targeted Pint/diff, npm audit
nol, dan Composer audit nol advisory lulus. OSV eksternal tidak menghasilkan
bukti karena koneksi ke `api.osv.dev` timeout dua kali; ini dicatat sebagai gap
audit sebelum release. Status irisan `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS` dan
production tetap `20260806152606-0894df0`.

Vertical slice kedua S6 ditutup lokal pada source
`2a3fe4c93955d1a588b663808c7c9464ded5ff01`. Delete Add-on yang masih
direferensikan `booking_addons` kini menghasilkan 409 `addon_delete_blocked`,
hitungan `Riwayat booking`, dan action hint ke daftar Booking. UI merender
response aktual, menjaga klik ganda menjadi satu request, menyediakan retry
aman serta link recovery 44 px, dan lulus keyboard/focus, forced-colors,
reduced-motion, viewport 390x844 sampai 2560x1440, serta zoom 100-200 persen.
Add-on, riwayat, dan audit tetap konsisten; Staff 403 dan tenant lain 404 tidak
membocorkan dependensi. Backend katalog 29/29 (159), browser 2/2, build,
diff/syntax, npm audit, dan OSV Composer nol advisory lulus. Composer Packagist
timeout dicatat sebagai error provider audit, bukan advisory. Status
`UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; S6 tetap `IN_PROGRESS`, production tetap
`20260806152606-0894df0`, dan combined Add-on exit/resource masih residual.

Combined exit Add-on diterima lokal pada source
`239b193c70f30676702da492ece287a3ff1e8c9a`. Runner repeatable menjalankan
empat profil terisolasi: create/edit/delete, stale recovery, delete dependency,
dan permission boundary. Semua profil lulus dengan response API aktual serta
SQLite disposable; backend katalog 29/29 (159), full backend 982/982 (11.245),
build, design audit 26/0, npm audit, Composer, dan OSV juga hijau. Dependency
transitif berisiko yang ditemukan saat gate ditutup sudah dinaikkan ke versi
aman sebelum verifikasi final. Perubahan S149 hanya test harness/provenance dan
tidak mengubah UI, sehingga bukti before/after tetap memakai visual S147/S148
pada 390x844 dan 1440x900 beserta matriks desktop/zoom yang telah diterima.
Komponen Add-on S6 berstatus `EXIT_GATE_ACCEPTED / UIUX_VALIDATED /
INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S6 secara
keseluruhan tetap `IN_PROGRESS` sampai resource selesai. Production tetap
`20260806152606-0894df0`.

Status/persistensi resource ditutup lokal pada source
`ff3b2babe419337c9e29b4bac8b7f9d531c97659`. Before: tabel mobile memotong
kolom status/action, tombol hanya 28 piksel, error mutation hanya toast, klik
ganda dapat mengirim dua request, dan backend menerima status arbitrer. After:
kartu mobile menjaga seluruh data/aksi dalam satu alur, target minimum 44
piksel serta label/focus aksesibel, response 503 memiliki retry inline, 409
memuat dashboard terbaru, 422 membuka editor, dan ref sinkron menjaga satu
mutation. Controller kini hanya menerima draft/published/unpublished/archived;
transaksi, tenant-scoped row lock, optimistic `lock_version`, read-after-write,
audit, Staff 403, dan tenant-negative lulus di SQLite disposable. Controller
32/32 (176), payload/role/error 19/19 (286), browser mobile+desktop 6/6,
extended desktop/zoom/a11y 4/4, build, npm/Composer audit, serta AI SagaBook
44/44 (3.440) hijau. Status `UIUX_VALIDATED / INTEGRATION_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tetap
`20260806152606-0894df0`, sedangkan dependency/delete recovery, stale-write
resource, dan combined exit S6 masih residual.

Delete/dependency recovery resource ditutup lokal pada source
`ac11487f046c8acae328cba89975035b888d00de`. Backend sekarang menghitung
dependensi paket, booking, block time, dan resource tertaut dalam tenant yang
sama, lalu memberi 409 `resource_delete_blocked` dengan detail public-safe.
UI merender response aktual dan jalur recovery ke Paket, Booking, Kalender,
atau Resource; klik ganda satu request dan retry kedua tetap gagal aman tanpa
sukses palsu. Resource bebas tetap terhapus dan audit hanya dibuat pada sukses;
Staff 403 dan target tenant lain 404 tidak membocorkan dependensi. Focused
katalog 37/37 (214), kontrak/role/error 56/56 (500), full backend 990/990
(11.300), browser 9 pass/1 intentional skip, build/typecheck/design 26/0,
npm/Composer/OSV nol advisory, serta AI 44/44 (3.440) hijau. Status
`UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0`,
sedangkan stale-write resource dan combined exit S6 masih residual.

Stale-write recovery resource ditutup lokal pada source
`872fb8d2f406f2c9ee0712992f1e25874b2259e0`. Before: backend sudah
menolak expected lock version lama, tetapi editor hanya merender error teknis.
After: 409 menjelaskan konflik dan memberi aksi `Muat data terbaru`; recovery
memakai GET aktual, menjaga draft pada offline/error, mengganti baseline hanya
setelah response sukses, serta memblok POST stale dan double-submit. Remote
capacity, buffer, mode, linked resource, dan lock version tidak tertimpa dan
tidak menghasilkan audit sukses palsu. Focused backend 1/1 (9),
kontrak/role/error 57/57 (509), full backend 991/991 (11.309), browser
regression 12 pass/2 intentional skip, build/typecheck/design 26/0,
npm/Composer/OSV nol advisory, serta AI 44/44 (3.440) hijau. Status
`UIUX_VALIDATED / INTEGRATION_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production tetap `20260806152606-0894df0` dan S6
hanya menunggu combined exit gate.

Combined exit S6 Resource ditutup lokal pada source
`57310ddd1958dc5fc9f585196b8757ffeb051c41`. Runner repeatable menjalankan
lima profil terisolasi: CRUD, status/retry/double-submit, stale recovery,
delete dependency recovery, dan Staff 403 spesifik Resource. Fresh runner 5/5,
focused backend 41/41 (344), full backend 991/991 (11.309), build/typecheck,
design 26/0, audit dependency, AI 44/44 (3.440), dan corpus 1.000/1.000 hijau.
Tidak ada mutasi UI/production. S6 `EXIT_GATE_ACCEPTED / UIUX_VALIDATED /
INTEGRATION_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; S7-S8
availability/slot concurrency menjadi sprint berikutnya.

Tenant/cabang S124 pada source
`f6988cb945c5ca224015d7fecbc94e81c535fc60` aktif sebagai release
`20260806053037-f6988cb`; rollback `20260806043833-a912522`. Switch status
cabang memiliki in-flight guard sinkron, state pending/error/retry yang
aksesibel, target aksi 44 piksel, dan hanya mengubah UI setelah response API
aktual. Backend menolak ID tenant lain dengan 404 generik, menjaga optimistic
lock, menghasilkan audit `catalog_branch_saved`, serta menolak staff tanpa
capability. Full backend 962/962 dengan 11.038 assertion, focused browser,
viewport/zoom, storefront mobile-only S109 12/12, dependency audit nol,
backup/checksum/disposable restore, DB audit, service, manifest, dan public
smoke lulus. Subscription tidak diaktifkan dan website booking aktif tidak
dinonaktifkan.

Report branch context S125 pada source
`cb8ef55a33ad1399c9383d027343a412752fc9ff` aktif sebagai release
`20260806063717-cb8ef55`; rollback `20260806053037-f6988cb`. Selector
`/admin/reports` kini memfilter booking, transaksi, paket, total, analitik,
tabel, dan closing state menurut cabang. Add-on, expense, dan closing
menyertakan `branchId`, menolak konteks all-branch untuk write, menjaga
double-submit, dan merender response/refetch backend aktual. Focused browser 4
pass/2 intentional skip, backend 962/962 dengan 11.038 assertion, matriks
viewport/zoom, forced-colors/reduced-motion, storefront S109 12/12, build,
audit, backup/restore, service, dan public smoke 4/4 lulus. Payment Monitor,
pagination/export, stale multi-tab, dan reconciliation provider belum ditutup.

Candidate customer request terbaru adalah source kumulatif
`b2b638cece4e9b18720a5367c05dcda3bb86ecf6` pada
`codex/s118-sagabook-request-recovery`, berstatus `LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`. Disclosure eksklusif, focus restoration, target 44
piksel, dan density S117 dipertahankan. Error refund, perubahan, atau
pembatalan kini muncul di form yang bersangkutan dengan `role=alert`,
`aria-describedby`, copy retry, dan visual destructive yang tetap terbaca pada
forced-colors. Isian tidak hilang dan submit dapat dicoba lagi. Receipt sukses
memakai `role=status` dan tidak diubah menjadi error bila refresh status setelah
POST yang sudah diterima gagal.

Red recovery lokal 2/2 dan red success-receipt 1/1 ditutup; focused S118 lulus
6/6 pada profil mobile, tablet, dan desktop. Test merotasi 390x844, reflow
efektif 200 persen, 1280x720, 1440x900, 1512x982, dan 2560x1440; canvas
storefront tetap maksimum 460 piksel, terpusat, tanpa overflow, serta memakai
tepat satu watermark non-fixed. Backend 960/960 dengan 11.007 assertion, build,
design 26/0, npm/Composer audit nol, dan regresi S115 terisolasi 4/4 lulus.
Full Playwright melampaui 604 detik tanpa receipt final, sehingga full
acceptance belum hijau dan candidate tidak `STAGING_READY`. API, mutation,
policy, migration, payment, availability, permission, tenant isolation, preset,
invoice, receipt, foto, export, serta SagaView tidak berubah. Production tetap
`d70fc1e0` / `20260803194351-d70fc1e`, rollback
`20260803132556-cfb2af8`.

Flow sekunder Detail Booking dan Reschedule pada source
`5788d6bb5860353c03edac51b968ce05a5d936f7`, branch
`codex/s115-sagabook-secondary-watermark`, berstatus `LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`. Sebelumnya kedua route sudah mobile-only tetapi
tidak memiliki product signature dan target Kembali/Bantuan hanya sekitar 32
piksel. Kini masing-masing tetap memakai satu canvas maksimum 460 piksel,
memiliki tepat satu `Powered by SagaBook` non-fixed, target 44 piksel, dan
focus ring keyboard. Focused S115 2/2 lulus pada 390x844, reflow efektif 200
persen, Windows compact, desktop anchor, MacBook, Full HD, QHD, dan 4K;
backend 960/960 dengan 11.007 assertion, build, design 26/0, serta audit npm
dan Composer nol. Drift baseline visual Detail Payment ditutup oleh source
kumulatif `77a25c7c5ed7fe31d89b35ceee91b01859b9afca` pada
`codex/s116-sagabook-visual-baseline`: baseline mobile sekarang sesuai fixture
tanggal 2099 dan alamat demo deterministik. Red 1/1 menjadi green
mobile/desktop 2/2; full storefront efektif 133 pass/11 expected skip setelah
dua retry S115 desktop lulus. Candidate kini `LOCAL_VALIDATED / STAGING_READY /
IMPLEMENTED_NOT_DEPLOYED`. Production tetap `d70fc1e0` /
`20260803194351-d70fc1e`, rollback `20260803132556-cfb2af8`; receipt exact
S116, approval, workflow bisnis, dan SagaView tidak berubah.

Implementasi kumulatif source `1de6a935d8694e9c5231a429d4ff41d7d1bc3d9c`
pada `codex/s113-sagabook-mobile-payment` berstatus `LOCAL_VALIDATED /
STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Baseline S109 tetap mengunci
storefront umum maksimum 460 piksel; S113 menutup route QRIS dan transfer yang
sebelumnya masih memakai container 5xl dan grid desktop dua kolom. Keduanya
sekarang satu alur mobile terpusat, kontrol Salin/Ganti/Hapus minimum 44 piksel,
dan tepat satu `Powered by SagaBook` non-fixed.

Red proof payment 2/2 berubah menjadi focused 2/2; visual payment 6/6,
regresi kontrak 20/20, dan acceptance storefront gabungan 129 pass/11 expected
skip lulus. Backend 960/960 dengan 11.007 assertion, build, design 26/0,
npm/Composer audit nol, no-overflow, keyboard focus, forced-colors,
reduced-motion, dan target 44 piksel lulus. Coverage payment exact meliputi
390x844, 1280x720, 1440x900, 1512x982, 2560x1440, dan reflow efektif 200
persen; coverage baseline S109 tetap sampai 3840x2160 pada lima preset existing.
API, migration, dependency, nominal, upload bukti, status pembayaran,
availability, permission, tenant isolation, invoice, receipt, dan SagaView
tidak berubah. Production tetap source `d70fc1e0`, release
`20260803194351-d70fc1e`, rollback `20260803132556-cfb2af8`; kandidat menunggu
receipt backup terenkripsi, checksum, disposable restore, migration preflight
exact S113, dan approval.

Recovery semantik form Detail storefront pada source kumulatif
`2b3e544bb334299d443f67d77a43ac5614214d04` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: empat
label terlihat tetapi belum menjadi accessible name bagi input; helper/error
WhatsApp tidak ditautkan ke field. After: `id`/`htmlFor`, nama field, dan
autocomplete diterapkan; WhatsApp memiliki `aria-describedby` dan panel error
berikon dengan live status sopan. Red 1 pass/1 fail menjadi focused 2/2.
Perubahan `type=email` yang sempat menggeser custom caret tertangkap oleh full
matrix, dikoreksi tanpa mengurangi input mode/autocomplete, lalu targeted caret
1/1 dan final 124 test storefront terjadwal exit 0. Backend 960/960 dengan
11.007 assertion, build, design 26/0, npm/Composer audit nol, no-overflow,
target 44 piksel, visual exact 390x844 dan 1440x900, serta satu
`Powered by SagaBook` lulus pada lima preset existing. Workflow/API, migration,
dependency, data preset, payment, availability, permission, tenant isolation,
invoice, receipt, dan SagaView tidak berubah. Production tetap source
`d70fc1e0`, release `20260803194351-d70fc1e`, rollback
`20260803132556-cfb2af8`; kandidat menunggu receipt backup terenkripsi,
checksum, disposable restore, migration preflight exact S107, dan approval.

State pilihan storefront pada source kumulatif
`18f2b3c15d63dff8f5e97cd7883e48cb56610c8e` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: perubahan
visual tidak diikuti state programatik pada pilihan Lokasi, filter/Paket,
tanggal/slot, Background, dan Bayar; filter Paket pada sebagian preset berukuran
34-38 piksel. After: seluruh single-select mengumumkan `aria-pressed=true/false`
secara konsisten dan filter Paket minimal 44x44 piksel pada Elegant Cream Brown,
Retro Fun, Streetwear Studio, Family Bright, serta Mono Gallery. Red semantic
1 pass/1 fail dan red touch 2 pass/1 fail ditutup menjadi focused 3/3; seluruh
storefront 120 test terjadwal exit 0 pada mobile/desktop, backend 960/960 dengan
11.007 assertion, build, design audit 26/0, npm/Composer audit nol, no-overflow,
dan satu `Powered by SagaBook` lulus. Perubahan tidak menyentuh workflow/API,
migration, dependency, data preset, payment, availability, permission, tenant
isolation, invoice, receipt, atau SagaView. Production tetap source `d70fc1e0`,
release `20260803194351-d70fc1e`; kandidat menunggu receipt backup terenkripsi,
checksum, disposable restore exact S106, dan approval.

Koreksi Review storefront pada source kumulatif
`621a74a006316b9e4cd2135a4b4d34a824c0604f` berstatus
`LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Before: setelah memilih `Ubah`,
customer harus mengulang langkah berikutnya satu per satu dan tidak mendapat
focus recovery. After: customer dapat menyimpan lalu kembali langsung ke
Review, atau memakai tombol header `Kembali ke Review`; fokus dan scroll
dipulihkan. Pada koreksi Jadwal, CTA tetap terkunci sampai availability selesai
dan slot pilihan terverifikasi. Focused Playwright 2/2 dan suite storefront 114
test terjadwal exit hijau pada 390x844 serta 1440x900; build, design audit 26/0,
npm audit nol vulnerability, no-overflow, target 44 piksel, dan satu watermark
non-fixed lulus. Backend kini 960/960 dengan 11.007 assertion setelah dua
fixture sesi absolut yang melewati retensi 30 hari diganti tanggal relatif;
expiry production tetap fail-closed. Re-verifikasi segar 4 Agustus pukul 21.00
WIB meluluskan Composer online dengan nol advisory, backend 960/960, focused
Playwright 2/2, accessibility 16/16, build, design 26/0, npm audit nol
vulnerability, dan empat public smoke 200. Preflight strict lokal memverifikasi
provenance exact commit, worktree/scope bersih, baseline, dan payment, tetapi
tidak menggantikan bukti runtime production. Kandidat belum `STAGING_READY`;
release-safety receipt yang mengikat backup terenkripsi, checksum, dan
disposable restore ke exact source serta approval belum ada. Production tetap
source `d70fc1e0`, release
`20260803194351-d70fc1e`; booking/payment/provider, tenant isolation, preset,
invoice, receipt, dan SagaView tidak berubah.

Recovery clipboard langkah `Selesai` pada source
`2bcacb240c2a89e751a0c1df1ed687f122918988` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: pesan
bantuan mengumumkan sukses tanpa menunggu Clipboard API; salin kode hanya
selebar 28 piksel tanpa feedback atau fallback. After: kedua write ditunggu;
reject/unavailable menampilkan alert, input/textarea readonly yang otomatis
fokus/terseleksi, satu retry dominan minimal 44 piksel, dan status screen reader
baru mengumumkan sukses setelah write selesai. Focus, forced-colors,
reduced-motion, no-overflow, 390x844, 1440x900, serta satu watermark non-fixed
lulus. Focused 1/1, storefront 106 pass/6 expected skip, backend 960/960 dengan
11.007 assertion, build, design audit, npm audit nol vulnerability, serta
Composer nol advisory/abandoned lulus. Production tetap source `d70fc1e0`,
release `20260803194351-d70fc1e`, karena belum ada release-safety receipt dan
approval exact S101. Booking/payment/provider, availability, tenant isolation,
preset, invoice, dan receipt tidak berubah.

Recovery clipboard header storefront aktif pada source
`9d9c5ede9f1438d799861547ec27f0cd95b55edc` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: ikon
header menampilkan sukses tanpa menunggu Clipboard API. After: write ditunggu;
reject/unavailable menghasilkan alert, textarea readonly yang otomatis
fokus/terseleksi, dan satu retry dominan minimal 44 piksel di workspace; sukses
baru diumumkan melalui status screen reader setelah write selesai. Putaran
koreksi memastikan rail konteks desktop tidak menutup tombol. Focus,
forced-colors, reduced-motion, no-overflow, 390x844, 1440x900, dan satu
watermark non-fixed lulus. Focused 1/1, storefront 105 pass/5 expected skip,
backend 960/960 dengan 11.007 assertion, build, design audit, npm audit nol
vulnerability, serta Composer nol advisory/abandoned lulus. Production tetap
source `d70fc1e0`, release `20260803194351-d70fc1e`, karena belum ada
release-safety receipt dan approval exact S100. Booking/payment/provider,
availability, tenant isolation, preset, invoice, dan receipt tidak berubah.

Recovery clipboard storefront pada source
`07dda6424f0e935484b25a378f343a7cbfa94f3b` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: CTA
unpublished mengubah label menjadi sukses tanpa menunggu Clipboard API dan
tanpa fallback ketika browser menolak; ikon header memberi jalur duplikat.
After: write ditunggu, error memakai alert, template public-safe tersedia di
textarea readonly yang otomatis fokus/terseleksi, retry minimal 44 piksel
mengulang write, sukses diumumkan melalui status screen reader, dan state
unpublished hanya memiliki satu jalur bantuan dominan. Focus, forced-colors,
reduced-motion, no-overflow, 390x844, 1440x900, serta tepat satu watermark
non-fixed lulus. Focused 1/1, storefront 104 pass/4 expected skip, backend
960/960 dengan 11.007 assertion, build, design audit, dan npm/Composer audit
nol vulnerability lulus. Booking/payment/provider, availability, tenant
isolation, preset, invoice, dan receipt tidak berubah. Production tetap source
`d70fc1e0`, release `20260803194351-d70fc1e`, karena belum ada
backup/restore, approval, dan rollback package exact S99.

Recovery jadwal storefront pada source
`0f2f7bca255aba5c0ab220e542308ff343b3dfe7` berstatus
`LOCAL_VALIDATED / STAGING_READY / IMPLEMENTED_NOT_DEPLOYED`. Before: HTTP 503
availability menghasilkan copy `Slot tidak tersedia` yang dapat disalahartikan
sebagai tanggal penuh dan tidak memiliki retry. After: loading memakai status
polite, kegagalan memakai alert `Jadwal belum bisa dimuat`, tanggal tetap
tersimpan, dan tombol `Coba lagi` minimal 44 piksel mengulang request yang sama
sampai slot tersedia tampil. Focus keyboard, forced-colors, reduced-motion,
no-overflow, 390x844, 1440x900, serta tepat satu watermark non-fixed lulus.
Focused recovery 2/2, storefront lintas perangkat 147 pass/6 expected skip,
backend 960/960 dengan 11.007 assertion, build, design audit, serta npm/Composer
audit nol vulnerability lulus. API/payment/provider, availability rules,
booking mutation, tenant isolation, invoice, dan receipt tidak berubah.
Production tetap source `d70fc1e0`, release `20260803194351-d70fc1e`, karena
belum ada backup/restore, approval, dan rollback package exact S98.

Candidate UI/UX S260 pada exact source
`54188003be44bb993add3a7daf2cf99e63fd1c45` berstatus `PUSHED /
UIUX_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`. Rail desktop/tablet kini hanya mempunyai lima modul
bisnis dan panel konteks hanya merender grup aktif. Operasional memuat Hari Ini,
Task Center, Kalender, dan Booking; duplikasi item yang sebelumnya juga hadir
sebagai ikon rail dihapus. Drawer mobile tetap memuat seluruh grup dan module
visibility mengikuti item capability-aware yang tersedia. Build 5.132 modul,
design audit 26/0, focused navigation 4/4 dengan 2 expected skip, visual
regression 48/48, baseline dashboard 3/3, serta full UI contract 26/26 lulus.
API, auth, permission, database, booking flow, dan production tidak berubah.

Candidate UI/UX S254 pada exact source
`02c4fff8a404fb9d9fcd57d657709ef442566f90` berstatus `PUSHED /
UIUX_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`. Dashboard/admin memakai shell dua tingkat
SleekFlow-inspired dengan rail modul navy, menu konteks terang, canvas
biru-abu, active state biru, panel datar, dan Plus Jakarta Sans. Capability
filtering dan taxonomy operasional tetap dipertahankan. Build, design audit
26/0, focused role/visual 6/6, visual desktop-tablet-mobile 3/3, dan full admin
UI contract 26/26 lulus. API, auth, permission, database, booking flow, dan
production tidak berubah; tidak ada aset proprietary SleekFlow yang disalin.

UI/UX operasional pada source
`8edd762154ec231b7e00c4a38db9c94dd0ee322c` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260801213514-8edd762`. Dashboard/admin,
staff action, storefront booking
tenant, responsive hierarchy, accessibility states, dan signature
`Powered by SagaBook` telah diintegrasikan tanpa mengubah kontrak booking,
payment, tenant isolation, invoice, atau artefak bisnis. Visual matrix
mobile/tablet/desktop lulus 400 skenario; exact-source focused release safety
lulus 19 test/131 assertions, build dan dependency audit hijau, serta backup
terenkripsi dan disposable restore exact-SHA lulus. Manifest, public smoke,
database audit, service health, dan rollback production juga lulus.

Hardening auth dan fallback surface berikutnya pada source
`d9bbbac3d5960013c6df267ff9ae2534b883710d` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802002923-d9bbbac`. Login, signup,
dan password recovery sekarang
memiliki tepat satu `Powered by SagaBook`, target sentuh kritis minimal 44
piksel, preview dekoratif inert, metode pemulihan dan CTA fallback minimal 44
piksel, serta dukungan forced-colors dan reduced-motion. Focused visual
regression 6/6, full backend 957/957 dengan 10.989 assertions, typecheck, build,
dependency audit, encrypted backup, dan disposable restore exact-SHA lulus.
Matriks browser desktop+mobile lulus 296/296 melalui empat shard deterministik;
production auth smoke 6/6, manifest, database audit 100, public HTTP smoke,
service health, dan rollback gate juga lulus.

Perbaikan Maps storefront dan Booking Center pada source
`76defd19eb7dad9fe12fa0f52609ec6dda6e62e2` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802013852-76defd1`. Bila cabang
memiliki alamat tetapi belum memiliki URL Maps khusus, customer tetap mendapat
link pencarian Google Maps berbasis nama dan alamat; URL eksplisit dibatasi ke
host Google HTTPS. Kontrol Maps dan salin kode minimal 44 piksel. Full backend
957/957, browser desktop+mobile 298/298, backup/restore exact-SHA, manifest,
database audit, service health, public smoke, dan pemeriksaan production mobile
serta desktop lulus. URL Maps presisi dari data owner tetap opsional.

Refinement CTA cabang berikutnya pada source
`b74ebb56099849dc17d759f4a9f0c8f1a04788e4` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802024941-b74ebb5`, dengan rollback
`20260802013852-76defd1`. Before: langkah Lokasi menampilkan CTA fixed disabled
sebelum pilihan dibuat sehingga katalog cabang dapat tertutup pada mobile.
After: CTA tidak dirender sebelum cabang dipilih; setelah pilihan valid, tepat
satu CTA aktif 48 piksel muncul dan membawa customer ke langkah Paket. Tidak
ada perubahan pada booking, payment, tenant isolation, preset, Maps/WhatsApp,
atau artifact bisnis. Full backend 957/957, matriks browser desktop+mobile
298/298, typecheck, build, audit dependency 0, backup terenkripsi, disposable
restore exact-SHA, database audit, service health, public smoke, dan production
visual mobile/desktop lulus.

Admin Booking pada source `500065c81cbc07e29b3370f8b22a8fcc521f7d7d`
berstatus `PRODUCTION_DEPLOYED` sebagai release `20260802101645-500065c`.
Before: mobile memadatkan tabel desktop
dan detail selalu mengisi panel samping. After: mobile memakai kartu triage,
desktop tetap memakai tabel, detail dibuka satu per satu dalam drawer, filter,
pagination, tab, close, dan action memenuhi target minimal 44 piksel, serta
aksi batal/no-show/refund menutup drawer dan mengembalikan fokus ke daftar.
Payment reconciliation juga tidak lagi memberi false positive pada booking
paid yang sah setelah memasuki `checked_in` atau `in_session`; webhook invalid,
unpaid, duplikat, atau ledger belum verified tetap diblokir. Full backend
959/959, focused UI tiga viewport 6/6, encrypted backup, disposable restore,
migration, readiness 100, service/journal, dan public smoke lulus. SagaView
tidak berubah.

Public commercial/legal branding safety pada source
`a6bb8afbfe2353597ea55329c50829a220bc5d3e` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802104018-a6bb8af`. Before:
Pricing, Terms, dan Privacy tidak memiliki signature produk, dan response wire
memuat dua nilai identik `X-Frame-Options`. After: ketiga route memiliki tepat
satu `Powered by SagaBook` yang responsif dan aksesibel; edge mengirim satu
`X-Frame-Options`, sementara CSP `frame-ancestors` tetap enforced. Browser
production mobile/desktop 8/8, full backend 960/960, build/design/dependency
gate, backup/restore, readiness 100, tujuh service, header, journal, dan smoke
lulus. Tidak ada perubahan workflow booking/payment, provider, preset, atau
runtime SagaView; rollback `20260802101645-500065c` dipertahankan.

Calendar operasional pada source
`596b8a48a2dc6f1e3810b4dcd5a41be37183fdf1` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802160930-596b8a4`, dengan rollback
`20260802104018-a6bb8af`. Before: tab mobile Harian, Mingguan, dan Bulanan
menampilkan daftar hari yang sama; kontrol tanggal 40 piksel; beberapa kontrol
terlihat interaktif tanpa action; dan empty-state mempunyai callback tanggal
yang tidak valid. After: Harian mempertahankan agenda hari, Mingguan menyusun
tujuh hari nyata, Bulanan menampilkan hari aktif, baris hari dapat dibuka lewat
keyboard, kontrol kritis minimal 44 piksel, serta desktop mempertahankan grid.
Manual Booking menyelaraskan tanggal Calendar saat dialog dibuka dan parser
WhatsApp mengenali nama bulan Indonesia. Full visual matrix lulus 430 skenario
dengan 44 controlled skip; full backend 960/960 dengan 11.007 assertions;
build, design audit, npm/Composer audit 0, encrypted backup, disposable restore,
readiness 100, manifest exact-source, service health, dan public smoke lulus.
Tidak ada perubahan payment/provider, tenant isolation, storefront/preset milik
studio, landing page, watermark, atau SagaView. Authenticated production visual
Calendar tidak dijalankan tanpa credential; exact-source authenticated browser
regression lulus. `/up` belum mengirim HSTS walau route aplikasi/login yang
diaudit mengirim HSTS dan XFO tepat satu. Error journal pascarilis berasal dari
`saga-platform-staging-monitor.service` di level host, bukan service SagaBook.

Admin Staff pada source
`35c82192234eb84e03b2237029540e299c70e12f` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802183533-35c8219`, dengan rollback
`20260802160930-596b8a4`. Before: mobile memaksa tabel desktop selebar 920
piksel, target sentuh penting 32-40 piksel, filtered-empty tidak memiliki reset,
dan editor tidak memulihkan fokus. After: mobile memakai kartu operasional,
desktop mempertahankan tabel, kontrol kritis minimal 44 piksel, reset filter
tersedia, editor berlabel mengembalikan fokus, dan tab memiliki state semantik.
Forced-colors, reduced-motion, no-overflow, CRUD/permission, tenant isolation,
serta satu `Powered by SagaBook` tetap utuh. Backend 960/960 dengan 11.007
assertions, visual matrix 442 passed dengan 41 controlled skip, build, design
audit, npm/Composer audit 0, encrypted backup, disposable restore, database
audit 100, service health, journal, dan public browser smoke lulus. Visual live
Staff terautentikasi tidak dijalankan tanpa credential; exact-source regression
tiga viewport lulus. `/up` belum mengirim HSTS. Sampel login mengirim HSTS dan
CSP satu kali tanpa `X-Frame-Options`; CSP `frame-ancestors` tetap aktif dan
kontrak header perlu dinormalisasi.

Storefront booking desktop pada source
`994de01cf3586adb4da8813a9c4b931085457510` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260802221221-994de01`; rollback
`20260802183533-35c8219` dipertahankan. Mulai viewport 1120 piksel, renderer menggunakan
shell dua kolom hingga 1040 piksel: panel kiri memberi orientasi langkah dan
ringkasan pilihan, sedangkan panel kanan mempertahankan transaksi. Mobile
390x844 tetap identik dan tablet 1024x768 tetap memakai layout ringkas tanpa
overflow. Seluruh langkah dan preset existing, Maps, WhatsApp, paket, slot,
checkout, confirmation, tenant brand, serta satu `Powered by SagaBook` tetap
tercakup tanpa perubahan payment/provider, availability, session, permission,
atau tenant isolation. Backend 960/960, visual desktop 45/45 dengan satu
mobile-only skip, mobile manual-transfer E2E 1/1, build, design audit,
npm/Composer audit 0, encrypted backup, disposable restore exact-SHA,
migration preflight, database audit 100, service, scoped journal, public smoke,
dan visual production dua viewport lulus. Endpoint `/up` masih tanpa HSTS/CSP;
route login dan booking yang diaudit mengirim HSTS, CSP, dan XFO SAMEORIGIN.
Arah layout desktop ini berstatus `DEPRECATED` melalui `DEC-031`, tetapi fakta
runtime tetap dicatat karena production belum dipromosikan ke candidate S109.

Refinement Review storefront pada source
`fa228d89bc5bea32fb19bf424a4b0e48db1bc506` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260803022430-fa228d8`. Enam jalur edit Review sekarang memakai tombol
semantik minimal 72x44 piksel, label screen reader, focus keyboard,
forced-colors, dan reduced-motion. Verifikasi lima preset pada mobile, tablet,
dan desktop menunjukkan no-overflow serta tepat satu `Powered by SagaBook`.
Backend 960/960, focused Review 9/9, accessibility 24/24, scoped E2E, build,
serta npm/Composer audit 0 lulus. Full matrix fresh lulus 142/142 dengan 2
expected skips. S39 backup/restore exact-SHA, manifest, migration preflight,
DB audit 100, service/public smoke, rollback, dan DOM live mobile+desktop
lulus. Runtime menunjukkan watermark tepat satu, overflow false, serta enam
tombol 72x44; rollback `20260802221221-994de01` tersedia. Kontrak booking,
payment/provider, availability, permission, session, dan tenant isolation tidak
berubah.

Success screen WhatsApp support pada source
`51a916537b51e8a503c6c88d3b130d2396558589` berstatus
`PRODUCTION_DEPLOYED` sebagai release `20260803080450-51a9165`; rollback
`20260803022430-fa228d8` tersedia. Customer diarahkan ke detail/status booking
sebelum CTA WhatsApp cabang yang dipilih; nomor tidak valid memperoleh fallback
salin pesan. Full matrix fresh lulus 448 skenario dengan 50 controlled skips
dan 0 failure pada mobile, tablet, serta desktop. Backend 960/960, build,
design audit, audit dependency 0, backup/restore exact-SHA, manifest, smoke,
service health, endpoint publik, dan visual browser produksi dua viewport
lulus. Demo SnapStudio masih belum dipublish; activation tenant nyata dan
business readiness tetap memerlukan UAT terkontrol.

Admin Booking compact triage pada source
`d70fc1e0d922eed86fe4ea4998688aad32c68c43` berstatus
`PRODUCTION_DEPLOYED` dan `PRODUCTION_ACTIVATED` sebagai release
`20260803194351-d70fc1e`; rollback `20260803132556-cfb2af8` tersedia. Pada
viewport 1024 piksel, tabel 930 piksel yang membuat identitas, jadwal, paket,
dan status terpecah telah diganti kartu ringkas. Breakpoint di bawah 1280
memakai kartu, sedangkan desktop 1440 tetap memakai tabel. Regression
memverifikasi detail booking via keyboard, target sentuh 44 piksel,
forced-colors, reduced-motion, no-overflow, dan satu `Powered by SagaBook`.
Gate final lulus: 960 backend test dengan 11.007 assertion, 449 visual pass
dengan 52 controlled skip dalam 18 chunk mobile/tablet/desktop, focused
Playwright viewport 1024, build, audit dependency 0, backup/restore exact-SHA,
manifest, database audit 100, service, empat endpoint 200, dan visual produksi
public-safe 390x844 serta 1440x900. Tidak ada perubahan pada mutasi booking,
payment/provider, availability, permission, session, tenant isolation,
storefront, atau SagaView. UAT operator studio nyata tetap diperlukan untuk
klaim business readiness.

Landscape tablet storefront candidate pada source
`1f4b7bafb2f171a689826bcd5c34216924721d18` berstatus
`DEPRECATED / IMPLEMENTED_NOT_DEPLOYED` melalui `DEC-031`. Pada 1024x768, shell
yang sebelumnya sekitar 460
pixel kini memakai canvas dua kolom sekitar 992 pixel dengan dua kartu lokasi
sejajar. Mobile 390 dan desktop mulai 1120 pixel tetap stabil. Kelima preset
existing, CTA Maps/WhatsApp minimum 44 pixel, forced-colors, reduced-motion,
keyboard focus, no-overflow, serta satu `Powered by SagaBook` lulus. Full
storefront 120 pass/6 expected skip, focused a11y 16/16, backend 960/960,
contract tenant/security/backend 36/36, build, design audit, dan dependency
audit lulus. Fresh S39 exact-SHA run `20260804T001149Z` lulus; candidate ini
tidak lagi menunggu promosi karena digantikan S109. Runtime tetap release
`20260803194351-d70fc1e` dan tidak ada migration atau activation.

Admin Changelog navigation dari source asal
`95621347050450a06dd8e5c95eedbd112aa2ff0e` aktif secara kumulatif melalui
source `e20c0ba3480e6143159108e313525d7576312146`, release
`20260806072249-e20c0ba`. Sebelum
perubahan, 18 rilis dan 64 detail terbuka bersamaan tanpa pencarian atau jalur
recovery. Kandidat menambahkan pencarian lintas versi/area/perubahan, lima
filter jenis, accordion satu-detail, empty/reset state, dan CTA 48 pixel
kembali ke Hari Ini. Focus keyboard, kontrol 44 pixel, forced-colors,
reduced-motion, no-overflow, serta satu `Powered by SagaBook` non-fixed lulus
pada 390x844 dan 1440x900. Focused E2E 2/2, snapshot 3/3, kontrak admin 52/52,
backend regression terbaru 962/962 dengan 11.038 assertion, build, design
audit, dan audit dependency 0 lulus. Backup terenkripsi/checksum/disposable
restore `20260806T072131Z`, manifest, service, DB audit, public smoke, dan
rollback `20260806063717-cb8ef55` lulus. Data rilis, booking, payment,
availability, permission, tenant isolation, storefront, dan SagaView tidak
berubah; authenticated owner UAT tetap residual sebelum `BUSINESS_READY`.

Critical recovery dan adaptive navigation S119 pada source
`20ff6829f96cebec22d34844291b3d522b91774a` berstatus
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Before: kegagalan pembuatan sesi
QRIS hanya mengosongkan QR, upload bukti transfer gagal tanpa feedback yang
tetap berada di form aktif, pembayaran tambahan reschedule belum mempunyai
status semantik, dan menu dashboard hilang pada rentang 768-1023 piksel.
After: ketiga alur mempertahankan data serta menyediakan alert/retry yang
jelas; tombol navigasi/drawer minimum 44 piksel dan fokus kembali ke trigger
setelah drawer ditutup. Storefront tetap mobile-only maksimum 460 piksel dan
terpusat sampai 4K, tanpa desktop landing/layout/frame.

Acceptance final: Playwright mobile 163 pass/32 controlled skip, desktop 191
pass/4 controlled skip, dan tablet 159 pass/36 controlled skip; total 513 pass
dan 0 failure. Focused recovery 1/1, dashboard SagaBook 1/1, serta matriks
SagaView 5/5 lulus pada anchor 390x844 dan 1440x900, kelas zoom efektif
125-200 persen, Windows compact, MacBook, Full HD, QHD, dan 4K. Backend
960/960 dengan 11.007 assertion, design audit 26/0, build, full SagaView check
dan bundle budget, npm audit, Composer validate/audit, no-overflow, keyboard,
forced-colors, reduced-motion, serta watermark tunggal lulus. Production tidak
langsung dipromosikan sampai tenant trial melewati pre-publish readiness 100.
Setelah approval owner, website booking tenant diaktifkan tanpa menonaktifkan
tenant lain; post-activation setup/pilot readiness dan HTTP publik lulus.

Release immutable `20260805052322-20ff682` memakai backup run
`20260805T051929Z`; enkripsi, checksum, offsite round-trip, disposable restore,
private-key boundary, migration preflight, manifest, DB audit 100, service,
empat endpoint 200, dan smoke lulus. Browser production menunjukkan canvas 390
piksel pada mobile dan tepat 460 piksel terpusat pada desktop 1440, CTA 48
piksel, Maps/WhatsApp, tanpa overflow/desktop rail, dan satu watermark
non-fixed. Rollback `20260803194351-d70fc1e` tersedia. Business readiness masih
menunggu copy alamat final menggantikan placeholder dan satu booking nyata
terkontrol.

## Integrasi

Payment dan notification provider, serta future SagaView handoff.
Provider/credential spesifik tidak didokumentasikan di repository publik.
Routing Fonnte tenant-scoped aktif di production: SagaDev-managed menjadi
default, owner dapat membawa koneksi Fonnte studio sendiri, dan manual-only
tersedia. Token tenant terenkripsi, tidak dikembalikan ke browser, dan setiap
delivery menyimpan snapshot route untuk menjaga retry serta audit tetap
konsisten. Release aktif: `20260731181921-378bcdf` dari source
`378bcdf4dac6c54d0bf421b5ef188103d82c6b40`.
Support Hub pusat diakses melalui adapter bertanda tangan; percakapan owner
tetap product-, tenant-, account-, dan conversation-scoped.
Platform Support menambahkan antrean operator berbasis ownership dan SLA waktu
kerja Asia/Jakarta. Aksi triage memakai idempotency key, optimistic lock, dan
receipt audit tersanitasi agar retry serta konflik antaroperator tidak
menggandakan atau menimpa tindakan.

Candidate AI S127 pada source
`73de3f5541006dbe9eeed0abc00a39fbe5989998` menambahkan klasifikasi
out-of-scope deterministik sebelum retrieval. Topik luar SagaDev mendapat
fallback natural tanpa OpenAI call atau tiket knowledge-gap; unknown yang masih
terkait produk tetap dicatat. OpenAI tetap opsional sebagai composer grounded,
`store=false`, dan tidak menerima pertanyaan unknown/injection. Corpus 18
kategori, Support Hub 38/38, backend 964/964 composite, build, npm audit,
privacy/injection, dan tenant-negative lulus. Status tetap
`AI_EVAL_VALIDATED / AI_KNOWLEDGE_NOT_PROMOTED`; production S126 tidak berubah
karena advisory feed Composer fresh timeout dan backup/restore/rehearsal S127
belum dijalankan.

Candidate finalisasi grounding berikutnya sudah dipindahkan ke source
current-baseline `dedef195` di atas S143 `8fac4f68`; source awal
`dad3f5fb1b4af7a0b45aed99ead3f164d9b70b1d` tetap menjadi histori bukti yang
menutup regresi konteks yang
pernah menjawab pertanyaan voucher dengan artikel cabang. Semantic score kini
dipisahkan dari bonus surface, intent eksplisit baru mengalahkan previous
intent, `caranya` bukan penanda follow-up mandiri, dan greeting menghasilkan
direct response tanpa citation lalu mereset konteks. Sequence cabang -> voucher
-> greeting -> voucher lulus pada service, API, dan browser 390x844 serta
1440x900. Focused 45/45 dengan 3.413 assertion, full backend 964/964 dengan
11.022 assertion, corpus 1.000/1.000, build, lint, Pint, diff, dan Composer
advisory nol lulus; port current-baseline juga lulus combined 41/41 dengan
3.394 assertion. Status `AI_EVAL_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; model/prompt/KB tidak diubah, latency/cost belum
diukur, dan production belum dipromosikan.

## Data yang digunakan

Organization, tenant, branch, staff membership, catalog/package, resource,
availability, booking, payment state, request, task, audit, dan report.

## Privacy, retention, dan offboarding

`CONFIRMED` sebagai keputusan founder: seluruh keputusan P01-P18 pada draft
SagaBook telah disetujui untuk implementasi dan review legal. Kontrak target
mencakup pemisahan Controller/Processor, consent terpisah dan berversi,
retention per kategori, export/deletion, incident handling, disclosure
subprocessor, serta offboarding trial dan subscription.

Consent versioning, customer privacy request, owner triage, incident register,
offboarding timeline, dan retention preview berstatus
`IMPLEMENTED_NOT_DEPLOYED` pada source commit
`d4c96276b6b79e9a969975cfa5b4943d0c275e4b`. Retention apply sengaja ditolak;
tidak ada penghapusan otomatis. Public status tetap `NOT ACTIVE - NOT
PUBLISHED`. Klaim unrestricted public SaaS launch masih `BLOCKED` oleh review
legal, identitas/kontak resmi, destructive-retention acceptance, release, dan
publication gate.

Provenance public-safe: owner decision pada source docs commit
`295ec863ff6cfc2e79ac98183651f19c15a3b368`; implementasi source pada
`d4c96276b6b79e9a969975cfa5b4943d0c275e4b`.

## Risiko dan asumsi

- Provider delivery dan payment tidak boleh disimpulkan dari queue/log.
- `ASSUMPTION`: self-photo studio adalah ICP awal utama.
- Policy refund/cancel default sudah `CONFIRMED`; tenant dapat mengubah policy
  secara eksplisit dan refund tetap operator-approved.

## KPI dan success metrics

`CONFIRMED` untuk exit pilot: minimal 3 studio, onboarding rata-rata maksimal
60 menit, activation maksimal 1 hari, 50 booking nyata total, minimal 95% core
journey tanpa engineer, notification receipt minimal 98%, SLA minimal 90%, dan
minimal 2 studio lanjut berbayar. Baseline aktual masih `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Booking via chat vs Customer Booking Center; double-booking prevention; alur
cancel berbayar; operator Task Center.

## Contoh caption

`PROPOSAL`: “Booking ramai bukan berarti operasional harus berantakan.
SagaBook menyatukan slot, status pembayaran, perubahan jadwal, dan tugas
operator dalam satu alur.”

## Ide campaign

`PROPOSAL`: “First Booking in One Session” untuk cohort studio, hanya
setelah onboarding/support siap.

## Sales talking points

Mulai dari workflow studio saat ini, tunjukkan activation center dan secure
customer link, Support & Recovery Center, lalu jelaskan plan, trial, fallback,
dan batas provider.

## Objection handling

- “Kami sudah pakai WhatsApp”: WhatsApp dapat tetap menjadi channel, SagaBook
  menjadi source of truth workflow.
- “Takut migrasi”: mulai dari cabang/paket terbatas dan acceptance checklist.
- “Butuh SagaView juga”: keduanya dijual satuan; integrasi bukan syarat memakai
  SagaBook.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagabook).
