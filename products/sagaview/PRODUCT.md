# SagaView Product Knowledge

Updated: 7 Agustus 2026
Evidence status: production deployed + production activated; frame import-order,
compact all-menu, workspace Session/Output/Izin Foto monitor besar, free drag
rotation, pemisahan Simpan Draft/Publish Frame, limit Growth 50/Pro 100,
portable frame template, bulk export, server ZIP untuk tiga sampai 100 pilihan,
dan resumable server batch import sampai 100 template aktif di production.
S135 menyelaraskan workspace Owner Console dan Studio Console per tenant dan
sudah `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Owner UAT dua workspace
nyata tetap residual.

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaView. Detail lengkap berada di
[DOSSIER](DOSSIER.md); keputusan terbuka berada di
[GAPS](../../GAPS.md#sagaview).

## Konteks

Fakta release di dokumen ini mengacu pada exact source dan runtime production
yang diverifikasi sampai 7 Agustus 2026.

## Status production terbaru

- Workspace Session memakai lebar adaptif sampai 1600 piksel pada monitor
  besar. Layar mobile, laptop compact, dan MacBook tetap memakai reflow lama;
  tidak ada horizontal overflow atau fitur yang disembunyikan.
- Workspace Output memakai alur satu kolom pada mobile/laptop dan dua panel
  seimbang pada monitor besar, dengan batas konten 1400 piksel. Target 44
  piksel, no-overflow, dan satu watermark tetap dipertahankan.
- Workspace Izin Foto tetap satu kolom pada mobile/laptop hingga 1440 piksel,
  lalu memakai dua kartu sesi berdampingan pada QHD/4K di dalam batas 1400
  piksel. Ringkasan, filter, retry, cabut izin, dan workflow privacy tidak
  berubah.
- Backend source `902e5dd81919168b1978c8bfbcd62303920184a6` aktif sebagai
  release `20260806212915-902e5dd`; rollback
  `20260806200400-b6af579` dipertahankan.
- Studio tetap memakai source `3b66f8d5df3e34aba11c4eab2619cfe44efd06d7`
  melalui rebuild release `20260806213012-3b66f8d`; rollback
  `20260806200400-3b66f8d` dipertahankan.
- Entitlement live memberi Growth 50 dan Pro 100 frame aktif. Harga, device,
  preset, offline grace, storage, laporan, support, payment, dan fair-use tidak
  berubah.
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
- Screening integrasi feature-by-feature mengikuti
  [Feature Coverage Ledger](FEATURE_COVERAGE_LEDGER.md). Ingest foto, editor,
  recovery, dan export dinilai pada boundary filesystem/local store, atomic
  write, quota, permission, serta no-upload guarantee; bukan dipaksa memakai
  API/cloud.

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
| Growth | Rp200.000 | 1 | 50 | 3 | 24 jam | 2 GB | Laporan operasional dasar. |
| Pro | Rp500.000 | 4 | 100 | 10 | 168 jam | 10 GB | Laporan lanjutan, activity log, dan priority support. |

Tabel di atas adalah kontrak production aktif. `CONFIRMED` melalui `DEC-039`;
kontrak Growth 50/Pro 100 berasal dari source `c8538060` dan tetap terverifikasi
pada runtime kumulatif `1158926b`. Harga, device, preset, offline, storage,
laporan, support, payment, dan fair-use tidak berubah.

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

Kontrak ini enforced server-side pada runtime production yang aktif. Full-access
trial memakai kapasitas authoring Pro 100 dan fase plan-limited mengikuti paket
Growth 50 atau Pro 100.

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
tersimpannya. Perilaku diwarisi source aktif
`1158926b2be35887aff7dc8a09cb0111e8a71fc7` pada release backend
`20260806050513-1158926`; delivery `PRODUCTION_DEPLOYED`, activation tetap
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

## Simpan draft dan publish frame

`CONFIRMED` sebagai keputusan founder melalui `DEC-038`; implementasinya
diwarisi Owner/API aktif `1158926b2be35887aff7dc8a09cb0111e8a71fc7`
pada release `20260806050513-1158926` dan Studio aktif
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7` pada release
`20260806050546-3b66f8d`.
Workspace Tambah Frame menyediakan dua hasil yang berbeda: `Simpan Draft`
menyimpan pekerjaan privat tanpa mengaktifkan frame, sedangkan `Publish Frame`
menjadi aksi utama yang menyimpan draft lalu mempublish versi tersebut agar siap
dipakai Studio. Bila tahap publish gagal, draft yang sudah tersimpan tetap aman
dan UI menampilkan alasan API yang spesifik. Kode seperti `SPC 18` dinormalisasi
menjadi `spc-18`. Delivery dan activation berstatus
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated Owner UAT dengan
frame nyata tetap residual sebelum klaim business-ready mass-scale.

## Portable frame template

`CONFIRMED` melalui `DEC-042`: production source
`1158926b2be35887aff7dc8a09cb0111e8a71fc7` memungkinkan Owner mengekspor
artwork PNG/WebP dan metadata slot yang sudah disanitasi ke file
`.sagaview-frame`, lalu mengimpornya pada akun lain sebagai draft baru.
Orientasi, posisi/ukuran slot, hasil feather, angle per slot, dan saran kategori
dipulihkan; nama dan kategori tetap dapat diganti. Konflik kode mendapat suffix
copy agar frame lama tidak tertimpa. Checksum SHA-256 artwork dan metadata,
magic-byte, ukuran, slot bounds, serta validasi server menolak paket yang rusak
atau diubah.

Paket tidak membawa identifier akun/tenant, internal version ID, device,
session, foto customer, path lokal, credential, atau payment. Tidak ada route
API atau migration baru; import tetap memakai save draft tenant-scoped yang
sudah ada dan tidak pernah auto-publish. Delivery dan activation berstatus
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` melalui backend release
`20260806050513-1158926` dan Studio release `20260806050546-3b66f8d`.
Authenticated Owner UAT lintas dua akun tetap residual sebelum klaim
business-ready mass-scale.

## Bulk export Galeri Frame

`CONFIRMED` melalui `DEC-044`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
`73979542ceeb8fc11e658c7d27346ca983dc163f`. Owner dapat mencentang setiap
kartu atau memakai `Pilih semua hasil` yang mengikuti pencarian, status, dan
orientasi yang sedang tampil. Pilihan dari filter lain tetap tersimpan; UI
menunjukkan jumlah pilihan, state parsial, `Kosongkan`, dan `Export dipilih`.

Batch memproses frame secara berurutan agar pemakaian memori tetap terbatas.
Setiap hasil tetap `.sagaview-frame` schema versi 1 dan melewati kontrak
magic-byte, ukuran, dimensi, checksum, metadata portable, serta sanitasi
tenant/customer yang sama dengan export production. Browser dapat meminta izin
beberapa download. Tidak ada route API, migration, pricing, entitlement,
payment, device/session, foto customer, atau perubahan source Studio. Fitur
aktif melalui backend release `20260806071707-7397954` dan Studio release
`20260806071733-3b66f8d`; authenticated Owner UAT dengan galeri nyata tetap
residual sebelum klaim `BUSINESS_READY` mass-scale.

Koreksi stabilitas packaging `CONFIRMED` melalui `DEC-049` dengan delivery dan
activation `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
`ea432e977d02ada8f4b7289bfbd43c6e56941f9a`, branch
`codex/sagaview-zip-bulk-export-s120`. Satu atau dua pilihan tetap diunduh
sebagai file `.sagaview-frame` terpisah. Tiga sampai 100 pilihan kini disiapkan
backend sebagai satu ZIP tenant-neutral pada private temp storage lalu
diunduh sekali melalui native browser download. Export ID deterministik membuat
retry idempotent; paket berlaku 30 menit dan satu kegagalan tetap membatalkan
seluruh arsip. Backend 917/917 dengan 10.964 assertion, focused Playwright 3/3,
production build, workload realistis 51 frame di atas 90 MB, batas 100 frame,
tenant isolation, corrupt asset, TTL, dan all-or-nothing lulus. Fresh encrypted
backup/checksum/offsite round-trip/disposable restore, rehearsal
candidate+rollback, deploy gate 6/6, single-device canary, payment/device
preservation, service/journal/security-header/public smoke, live route/marker,
dan rollback lulus. Production aktif pada backend
`20260806122125-ea432e9` dan Studio `20260806122126-3b66f8d`; rollback
`20260806111019-555682b` / `20260806111020-3b66f8d` dipertahankan. Tidak ada
payment intent/QRIS baru atau perubahan foto customer. Authenticated Owner UAT
51 frame nyata, retry, dan dua akun tetap residual sebelum klaim
`BUSINESS_READY` mass-scale.

## Resumable server batch import Galeri Frame

`CONFIRMED` melalui koreksi founder `DEC-050`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
`e850d6c7542c10e97309ca045ebe2f700a488ebf`, branch
`codex/sagaview-resumable-batch-import-s121`. Owner dapat drag-and-drop sampai
100 file `.sagaview-frame` atau satu ZIP. Browser mengirim chunk 4 MB dengan
SHA-256, retry otomatis maksimal lima kali, dan resume saat kumpulan file yang
sama dipilih ulang. Server menyimpan batch/item secara durable, memvalidasi
template dan ZIP secara tenant-scoped, lalu memproses item secara serial melalui
queue agar batch 50-100 frame tidak bergantung pada satu request browser.

File invalid tidak menghentikan item valid. Setiap item memiliki status yang
dapat dipantau; draft dibuat sebelum percobaan publish. Publish yang ditolak
oleh limit Growth 50/Pro 100, storage, atau aturan backend mempertahankan draft
untuk koreksi. ZIP menolak path traversal, folder, entry selain template,
duplikasi nama, lebih dari 100 entry, expanded size di atas 2 GB, dan rasio
kompresi di atas 100x. Upload privat dipurge setelah 24 jam dan riwayat batch
setelah tujuh hari.

Acceptance mencakup Growth 51 menjadi 50 published + 1 draft, Pro 100 menjadi
100 published, resume/idempotency, checksum/manifest mismatch, ZIP valid dan
path traversal, corrupt partial, cross-tenant/auth, serta batas 101. Focused
suite lulus 57 test dengan 1.033 assertion; full SagaView 134 test dengan 1.620
assertion; Playwright 51-file termasuk satu retry 503, production build,
encrypted backup/restore, candidate+rollback rehearsal, deploy gate 6/6,
canary/payment/device preservation, atomic release, service/journal/header,
public smoke, live marker, dan rollback verification lulus.

Production aktif pada backend `20260806133407-e850d6c` dan Studio
`20260806133407-3b66f8d`; rollback `20260806122125-ea432e9` /
`20260806122126-3b66f8d` dipertahankan. Migration bersifat additive dan tidak
mengubah pricing, entitlement, payment, device/session, foto customer, atau
source Studio. Authenticated Owner UAT dengan 50-100 file nyata dan import
lintas dua akun tetap residual sebelum klaim `BUSINESS_READY` mass-scale.

### S122 Batch Import Control Center production

`CONFIRMED` melalui `DEC-051`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada source
`b6af5797fb6fdcea499e727ee2bdb1e4dc666165`, branch
`codex/sagaview-batch-import-control-center-s122`, release
`20260806200400-b6af579`.

Sebelum upload dimulai, Owner memperoleh preflight ukuran, storage, frame aktif,
limit paket, serta estimasi published/draft. Duplikat checksum+geometri dapat
dilewati, dibuat sebagai copy berkode unik, atau disimpan sebagai draft review.
Riwayat tujuh hari, notifikasi selesai, cancel yang mempertahankan hasil aman,
laporan CSV, serta bulk retry gagal, publish draft, ganti kategori, dan hapus
draft/item gagal berada pada satu control center.

Schema baru bersifat aditif dan menyimpan duplicate policy, counter
skipped/removed, acknowledgement, fingerprint, serta relasi duplikat. API dan
mutation tetap tenant+membership scoped; ZIP traversal, checksum, batas 100,
dan local-first foto customer tetap fail-closed. ZIP export 3-100 frame kini
memakai file sementara privat per entry melalui `ZipArchive::addFile`, bukan
menahan semua JSON/base64 di RAM; cleanup fail-closed dan reserve workspace 3x
ukuran artwork diterapkan.

Acceptance mencakup 137 test SagaView/1.656 assertion, focused export/import
dan production safety 20 test/484 assertion, serta Playwright export-all dan
batch import 51 file. Fresh encrypted backup/restore, preflight, rehearsal
kandidat+rollback, atomic deploy, canary/payment/device preservation,
service/journal/header/public smoke, dan rollback target lulus. Smoke runtime
production menghasilkan ZIP valid 51 entry berukuran 103.282.237 byte dalam
6,751 detik pada batas RAM 128 MB, tambahan peak memory 23.597.056 byte, dan
nol file sementara tertinggal. Authenticated Owner UAT import 50-100 file nyata
dan isolasi dua akun tetap residual sebelum `BUSINESS_READY` mass-scale.

### S134 Workspace validation dan tab recovery production

`CONFIRMED` melalui `DEC-054`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada backend source
`902e5dd81919168b1978c8bfbcd62303920184a6`, branch
`codex/s134-sagaview-admin-context-recovery`, release
`20260806212915-902e5dd`. Studio memakai source yang sama seperti sebelumnya,
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7`, melalui rebuild release
`20260806213012-3b66f8d`.

Batch Import kini menonaktifkan pemilih file sampai server mengonfirmasi tenant,
membership, role staff, dan subscription untuk tab aktif. Target workspace
ditampilkan dengan status `Workspace siap`. Context kedaluwarsa hanya boleh
dipulihkan dalam session dan tenant yang sama; server-auth tenant mengalahkan
URL atau local storage yang stale. Error `401`, `403`, dan `409` memberikan
tindakan terarah tanpa menghapus pilihan file yang masih aman.

Preflight dan create batch terikat pada context tervalidasi, resume key dicakup
tenant+membership, dan perubahan context saat upload menghentikan polling serta
mutation secara fail-closed. Tidak ada migration, perubahan pricing,
entitlement, payment, device/session, foto customer, atau data tenant. Build,
96 test SagaView/1.038 assertion, 266 test boundary/1.950 assertion, Playwright
desktop+mobile, backup/restore terenkripsi, rehearsal kandidat+rollback, deploy
6/6, canary/preservation, service/journal/header/public smoke, marker live, dan
rollback production lulus. Authenticated Owner UAT dengan 50-100 file nyata dan
dua akun tetap residual sebelum `BUSINESS_READY`.

### S135 Owner dan Studio workspace alignment production

`CONFIRMED` melalui `DEC-055`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Saat promosi S135, backend source
`85ec0f64f08d7f80769480e0b7217cad55dd1591` memakai release
`20260806224422-85ec0f6`; Studio source
`07454264ad3c95d5fb5157135a333f6139bef054` aktif sebagai release
`20260806224441-0745426`. Rollback S134 dipertahankan pada backend
`20260806212915-902e5dd` dan Studio `20260806213012-3b66f8d`.

Tenant yang dikonfirmasi server sekarang menjadi sumber request Owner sebelum
API pertama. Perubahan workspace mereset proses batch/launcher lama, dan link
Studio membawa identitas workspace yang wajib cocok dengan respons aktivasi.
Pada perangkat yang pernah membuka workspace lain, state serta metadata runtime
lama diarsipkan per workspace; state aktif lintas tenant dibersihkan, state
target dipulihkan bila tersedia, lalu Studio melakukan bootstrap dan reload.

Tidak ada migration atau perubahan pricing, entitlement, payment,
device/session, foto customer, maupun data tenant. Acceptance mencakup 344 test
backend/2.852 assertion, 158 unit Studio, 5 Playwright device-transfer, build,
audit dependency nol advisory, encrypted backup/restore, preflight dan
candidate+rollback rehearsal `6/6`, atomic deploy, canary/preservation,
service/journal/header/public smoke, marker live, rollback ke S134 dan pemulihan
ke S135. Authenticated Owner UAT dua workspace nyata tetap residual sebelum
`BUSINESS_READY` mass-scale.

### S136 tenant-bound session production

`CONFIRMED` dengan delivery `PRODUCTION_DEPLOYED`; activation dan business
readiness belum diklaim. Backend source
`4642b4080f6056ef289c791d8997a63f8445f03b` aktif sebagai release
`20260807003837-4642b40`; Studio source tetap
`07454264ad3c95d5fb5157135a333f6139bef054` melalui release
`20260807003838-0745426`. Rollback S135 dipertahankan.

Pembuatan session sekarang membandingkan tenant yang diminta dengan tenant
credential device dan menolak mismatch `403` sebelum persistence. Alur tetap
metadata-only: foto customer, editor, dan export tidak berpindah ke cloud.
Backup/restore, rehearsal kandidat+rollback, deploy gate, canary, smoke publik,
service/header, dan post-preflight lulus. Tidak ada payment intent/QRIS baru,
perubahan subscription, atau aktivasi tenant. Authenticated UAT serta matriks
zoom/viewport luas tetap residual.

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
tepat satu watermark. Source tersebut dipromosikan sebagai release Studio
`20260805170231-2b0331d`; perilakunya diwarisi Studio aktif
`20260806050546-3b66f8d` dengan rollback `20260805155605-3b66f8d`.
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
  `1158926b2be35887aff7dc8a09cb0111e8a71fc7`.
- Backend release aktif: `20260806050513-1158926`.
- Studio source aktif:
  `3b66f8d5df3e34aba11c4eab2619cfe44efd06d7`.
- Studio release aktif: `20260806050546-3b66f8d`.
- Studio release sebelumnya yang menjadi rollback:
  `20260805155605-3b66f8d`.
- Backend release sebelumnya yang menjadi rollback:
  `20260805155517-c853806`.
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

- Release Izin Foto monitor besar: format/lint/typecheck, 156 unit, focused
  acceptance 18/18, seluruh 116 skenario Playwright executable lulus dalam dua
  evidence round dengan 2 capture-only skip, build SSR/client, bundle budget,
  npm audit nol vulnerability, exact-archive preflight, promosi atomik, dan
  Playwright production 4/4 lulus. Satu penulisan artifact full-run awal
  kehabisan ruang lokal; skenario yang sama lulus saat output dipindah ke drive
  sehat dan bukan failure assertion produk.
- Release draft/publish: 75 test fitur SagaView/613 assertion, focused safety
  15/15, Playwright, build, audit dependency nol, preflight/gate 6/6, backup,
  canary, payment unchanged, service/header/journal, route, HTTP smoke, rollback,
  dan tiga marker bundle live lulus. Enam failure combined suite direproduksi
  identik pada baseline aktif dan terbatas pada test SagaBook manual-transfer
  yang tidak berubah.
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
