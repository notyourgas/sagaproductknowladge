# SagaView Product Knowledge

Updated: 9 Agustus 2026
Evidence status: production deployed + production activated; frame import-order,
compact all-menu, workspace Session/Output/Izin Foto monitor besar, free drag
rotation, pemisahan Simpan Draft/Publish Frame, limit Growth 50/Pro 100,
portable frame template, bulk export, server ZIP untuk tiga sampai 100 pilihan,
resumable server batch import sampai 100 template, dan pemulihan bootstrap cloud
Owner lama aktif di production. S138 menambahkan tombol akhir `Selesai`, close
via Escape, dan batch edit kategori pada frame terpilih. S139 menyinkronkan
kategori ke master/draft/published, menghapus override harga lama saat kategori
diganti, serta menerbitkan versi katalog baru. S140 memisahkan identitas
workspace administratif dari nama brand yang dapat diedit, memulihkan menu
Changelog pada Dashboard Owner, dan menjelaskan bahwa `Cloud vN` adalah revisi
katalog per workspace. S140 sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; authenticated Owner UAT tetap residual sebelum
`BUSINESS_READY`. S141 menambahkan manajemen nama, kategori, harga, dan status
banyak frame dengan satu `Simpan semua`; source
`369f01140e3db0144d189fb781acdad91cfe3fc5` / release
`20260807173443-369f011` sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`. S142 menjadikan kategori Owner Console sebagai katalog
authoritative untuk nama, status, dan harga, menghapus fallback kategori lokal
Studio, serta menambahkan pengurutan kategori tersimpan dari Studio Console.
Backend `e6a7f97941c6b93f88fbd90e09044a4e8fa699b6` / release
`20260808020447-e6a7f97` dan Studio
`c4f664fc5ad6ec1ac3ef992fc7a75b9e7205b666` / release
`20260808020447-c4f664f` sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`. S143 menahan rekonsiliasi katalog cloud ketika
tenant/version/checksum identik sehingga frame terpilih, urutan, URL aset, dan
posisi scroll stabil. Pricing paket kini menanggung Original dan hanya
menambahkan surcharge kategori Special; Studio juga memulihkan paket stale ke
kategori authoritative terbaru saat simpan. Backend
`8fac4f681d45660da27afdd72ba36460d4bd6d0c` / release
`20260808134902-8fac4f6` dan Studio
`91d7bd7bf13d6dcf7d386431d652a9cf9f3cdefa` / release
`20260808134902-91d7bd7` sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`. Authenticated Owner/Studio UAT tetap residual.
S144 menyederhanakan izin penggunaan foto menjadi empat tindakan cepat dan
hanya membuka galeri untuk pilihan manual. Studio source
`76f06a8a59a1bb88ad140250faaf2db1a8f1ce51` berstatus
`LOCAL_VALIDATED` saat bukti dibuat dan kini aktif kumulatif melalui S146.
S146 mengaktifkan empat pilihan izin foto cepat serta bantuan AI yang
diautentikasi perangkat. Backend
`1af885248f04d95960a015749152c784af33307e` / release
`20260808190040-1af8852` dan Studio
`81e55adc170af0949245e3f381d881b716e25b0e` / release
`20260808190040-81e55ad` sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; rollback langsung tetap S143.
S147 menutup boundary metadata sesi secara lokal: Studio tidak lagi mengirim
label folder, nama/path/ukuran foto, atau nama output; backend menolak field
tersebut dan meredaksi response record lama. Studio
`df959ccba2a69306d4aa50795b5aa35e875ffe43` / release
`20260808225730-df959cc` dan backend
`0cda8a09fa3f4bb08a483f6bd46ba25dc4fa6b28` / release
  `20260808225730-0cda8a0` sudah `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`; rollback langsung adalah S146. Row historis tidak
  dimutasi sesuai `DEC-067`; agregat sebelum/sesudah release tetap identik.
  S148 source Studio `6a80d6dc41fb8227ece6b002c8d00a9b9dd0c444`
  kini aktif kumulatif melalui S150: kegagalan tulis
  folder output kini menghentikan export, membatalkan writer yang gagal, dan
  tidak berpindah diam-diam ke download browser. Operator mendapat panduan
  izin/ruang disk serta retry; mode download tetap hanya aktif bila dipilih
  eksplisit. Stepper customer yang dapat digulir kini dapat difokuskan dan
  diberi nama aksesibel pada semua tema.
  S149 source Studio `b1e0425847cde1da0d8ec3893fcef421ea4cece9`
  kini aktif kumulatif melalui S150: checkpoint recovery
  lokal sekarang harus benar-benar commit sebelum status sesi cloud diubah dan
  customer flow dibuka. Checkpoint lanjutan mempertahankan handle folder yang
  sudah dipilih, klik ganda ditahan, dan kegagalan quota tetap di halaman
  Session dengan pesan aman serta keluar dari fullscreen.
  S150 source Studio `4d25f6069737dc8f14342a62b6c6241081d544d3`
  aktif sebagai release `20260809103753-4d25f60`: import foto lokal
  kini baru mengubah folder dan target foto setelah session cloud diterima.
  Bila thumbnail dibatalkan atau pencatatan cloud gagal, seluruh object URL
  sementara dilepas, state sesi lama tidak ditimpa, dan pesan backend mentah
  tidak ditampilkan kepada operator.
  S152 backend `e2cb726705bb630d2bb1b737a54c1d30cb1176e9`
  berstatus `SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Kandidat menambahkan pembatasan
  request berlapis, ledger replay perangkat berbasis hash yang tetap bekerja
  setelah cache hilang, dan serialisasi pelepasan lease. Production tidak
  berubah; backend aktif tetap S147 dan Studio aktif tetap S150.
  S153 backend `4d41125c0779be2cbfb7862ce7bbf7989c9e62cb`
  berstatus `SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Redeem serial kini mengunci
  baris tenant dan serial dalam satu transaksi, memakai ledger sebagai guard
  kuota, mengembalikan retry tenant yang sama secara idempoten, serta memiliki
  constraint unik database untuk satu klaim per tenant dan serial. Production,
  paket, harga, provider, dan subscription aktif tidak berubah.
  S154 backend `20c09f0795853661033fa73a070bcd89818646cd`
  berstatus `SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. PATCH lifecycle SagaVIEW kini
  mempertahankan field entitlement yang tidak dikirim, mengunci tenant dan
  subscription, menaikkan versi entitlement, serta menolak key atau tipe
  override SagaVIEW yang tidak dikenal. Produk lain dan production tidak
  berubah.
  S155 source `1aae8a2efc65da754dd1ef6373d34640fcc3d13c`
  berstatus `SECURITY_VALIDATED / DATA_INTEGRITY_VALIDATED /
  LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Browser/API kini wajib membawa
  versi snapshot untuk PATCH entitlement SagaVIEW. Versi diperiksa setelah row
  lock; request tanpa versi ditolak 422 dan snapshot stale ditolak 409 tanpa
  mutasi database. Browser memuat ulang state terbaru dan tidak mengulang
  mutasi otomatis. Production tidak berubah.
  Candidate pemulihan lease membuka ulang memakai Studio
  `5eeef36904f84c7cf01d8f365f3d6a94ba9eec9e` dan backend
  `75f43b40dcd1dc81d601f16245cea3b659af483d`. Saat Studio ditutup normal,
  client mengantrekan release lease dan menandai close intent singkat agar
  reopen cepat dapat pulih tanpa menunggu TTL. Bila browser crash atau proses
  ditutup paksa, operator dapat memilih `Ambil alih di jendela ini`; backend
  hanya menerima takeover dari credential dan proof perangkat yang sama,
  mengganti token lama, dan mencatat audit. Status `SECURITY_VALIDATED /
  UIUX_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production
  tetap backend S147 dan Studio S150.

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaView. Detail lengkap berada di
[DOSSIER](DOSSIER.md); keputusan terbuka berada di
[GAPS](../../GAPS.md#sagaview).

## Konteks

Fakta release di dokumen ini mengacu pada exact source dan runtime production
yang diverifikasi sampai 9 Agustus 2026. S148 sampai S150 sudah aktif
kumulatif melalui exact source S150.

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
- Backend source `0cda8a09fa3f4bb08a483f6bd46ba25dc4fa6b28` aktif sebagai
  release `20260808225730-0cda8a0`; rollback
  `20260808190040-1af8852` dipertahankan.
- Studio source `4d25f6069737dc8f14342a62b6c6241081d544d3` aktif sebagai
  release `20260809103753-4d25f60`; rollback langsung
  `20260808225730-df959cc` dipertahankan.
- S146 mengaktifkan consent S144 dan Support Hub device-scoped. Missing/
  invalid/revoked credential ditolak, tenant/product/actor diturunkan
  server-side, launcher tetap fail-soft, dan foto/folder/editor/export tidak
  dipindai atau diunggah.
- S147 menegakkan allowlist metadata sesi pada client dan server. Cloud hanya
  menerima ID lokal opaque, urutan, hitungan, status, harga, dan mode simpan;
  nama/path/ukuran file serta label folder ditolak atau disaring. Data lama
  tetap tersimpan tetapi tidak dikembalikan melalui response API.
- S148-S150 aktif kumulatif: export folder gagal secara fail-closed tanpa
  fallback download otomatis, checkpoint recovery harus commit sebelum
  navigasi/status cloud, dan import staged dibersihkan tanpa menimpa state lama
  ketika dibatalkan atau cloud gagal.
- S152 sudah tervalidasi lokal untuk hardening auth/device/session: rotasi
  identitas input tidak melewati batas request per sumber, replay proof tetap
  ditolak setelah cache dikosongkan, dan pelepasan lease ditulis dalam
  transaksi terkunci. Database hanya menyimpan hash nonce dan metadata minimum.
  Kandidat belum dideploy.
- S153 sudah tervalidasi lokal untuk integritas aktivasi serial: race paralel
  diserialkan dengan row lock, counter yang tertinggal tidak mengalahkan ledger,
  retry tenant yang sama tidak mengonsumsi kuota atau memperpanjang trial, dan
  database menolak klaim ganda. Kandidat belum dideploy.
- S154 sudah tervalidasi lokal untuk integritas PATCH entitlement Owner/admin:
  perubahan lifecycle tidak lagi menghapus override yang tidak dikirim,
  payload custom memakai schema fail-closed, write diserialkan, dan versi
  entitlement maju pada setiap mutation. Kandidat belum dideploy.
- S155 sudah tervalidasi lokal untuk optimistic concurrency entitlement:
  read model mengirim versi, PATCH wajib membawa expected version, dan service
  memeriksanya di dalam transaksi setelah row lock. Konflik stale mengembalikan
  respons aman dan tidak mengubah database; kandidat belum dideploy.
- Pemulihan lease setelah reopen sudah tervalidasi lokal: close normal melepas
  lease secara background, race reopen cepat diselesaikan otomatis hanya bila
  ada close intent terbaru, dan crash/force-close memiliki takeover eksplisit
  dengan konfirmasi operator. Token instance lama langsung tidak valid setelah
  takeover; kandidat belum dideploy.
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
- Metadata sesi cloud baru hanya membawa ID lokal opaque, urutan, hitungan,
  status, harga, dan mode simpan. Label/path folder, nama/path/ukuran foto, dan
  nama output tetap berada di device; response record lama meredaksi field itu.
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

### S137 cloud bootstrap recovery production

`CONFIRMED` dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Backend source
`d7542fdc51dae66763057d2ac9d847c68d6dec1f` aktif sebagai release
`20260807010717-d7542fd`; Studio source
`05c5fda07a342d2977d8e6e3d836adb17a84605b` aktif sebagai release
`20260807010718-05c5fda`. Rollback S136 dipertahankan pada backend
`20260807003837-4642b40` dan Studio `20260807003838-0745426`.

Sebelum S137, akun Owner legacy yang sah tetapi belum memiliki membership
workspace mendapat `403`; UI menutup error itu dan terus menampilkan
`Memuat cloud`. S137 membuat membership yang hilang secara transactional dan
idempotent hanya untuk Staff aktif, tenant yang sama, role legacy yang dikenali,
serta subscription SagaView yang tersedia. Membership yang telah dinonaktifkan
tetap ditolak dan tidak pernah diaktifkan kembali secara otomatis. UI sekarang
membedakan loading, cloud aktif, cloud nonaktif, dan kegagalan dengan aksi
`Coba lagi` serta pesan API yang dapat ditindaklanjuti.

Full regression lulus 935 test dengan 11.101 assertion, production build,
focused Playwright, Composer/npm audit nol advisory, encrypted backup/checksum/
offsite round-trip/disposable restore, candidate+rollback rehearsal 6/6,
preflight/deploy, canary/payment/device preservation, service/journal/header/
public smoke, marker runtime, rollback target, serta probe transaksi production
yang seluruhnya di-rollback. Tidak ada migration atau perubahan foto customer,
payment, subscription, device, session, maupun data customer. Authenticated
Owner UAT pada akun terdampak, termasuk Batch Import dan error/retry nyata,
tetap residual sebelum `BUSINESS_READY`.

### S138 import finish dan batch kategori production

`CONFIRMED` dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Backend source
`f515dd7a1066b2c6b5244bb1f5bc48d306430768` aktif sebagai release
`20260807023502-f515dd7`; Studio source tetap
`05c5fda07a342d2977d8e6e3d836adb17a84605b` melalui release
`20260807023502-05c5fda`. Rollback S137 dipertahankan.

Batch Import sekarang menampilkan footer status akhir dan tombol `Selesai`
yang selalu terlihat setelah batch completed, failed, atau cancelled. Tombol
tutup menerima fokus, Escape menutup dialog, dan konten panjang bergulir tanpa
menyembunyikan header/footer. Checkbox Galeri Frame kini melayani export dan
batch edit kategori. Owner dapat memilih 1-100 frame, memilih kategori aktif,
dan mengubah kategori published serta draft terkait dalam satu transaksi.

Endpoint batch kategori tetap capability-, tenant-, dan membership-scoped.
Kategori harus aktif; bila satu frame hilang atau lintas workspace, seluruh
aksi gagal tanpa perubahan parsial. Tidak ada migration atau perubahan artwork,
slot, foto customer, payment, subscription, device, session, maupun data
operasional tenant. Regression 938 test/11.110 assertion, focused SagaView
149/1.721, Playwright desktop+mobile, build/audit, fresh encrypted backup tiga
database, candidate+rollback rehearsal 6/6, atomic deploy, post-preflight,
payment/device preservation, marker source+bundle+route, public smoke, service,
journal, dan security header lulus. Authenticated Owner UAT dengan batch nyata
dan kategori nyata tetap residual sebelum `BUSINESS_READY`.

### S139 sinkronisasi kategori dan harga frame production

`CONFIRMED` melalui `DEC-057`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Backend source
`f05c919ab0f7e645eabeac1ce959000eeecbf8cc` aktif sebagai release
`20260807045115-f05c919`; Studio source tetap
`05c5fda07a342d2977d8e6e3d836adb17a84605b` melalui release
`20260807045115-05c5fda`. Rollback S138 dipertahankan.

Perubahan kategori tunggal maupun massal sekarang menyinkronkan metadata frame
utama, draft aktif, dan versi published aktif dalam satu transaksi. Batch
kategori menghapus override harga per-frame lama sehingga harga efektif
mengikuti default kategori tujuan; override harga cabang tetap menjadi lapisan
eksplisit dan tidak dihapus. Perubahan metadata juga menaikkan versi/checksum
katalog dan menerbitkan revisi workspace agar Studio menerima konfigurasi baru.

Pemulihan production yang fail-closed menemukan tepat satu workspace dengan
29 frame yang mempunyai kategori master/published berbeda. Seluruh target
memiliki kategori aktif dan override lama, lalu disinkronkan; mismatch turun ke
0 dan 29 override dibersihkan. Frame lain, artwork, slot, foto customer,
payment, subscription, device, dan session tidak diubah. Authenticated Owner
UAT kategori/harga nyata tetap residual sebelum `BUSINESS_READY`.

### S140 identitas workspace dan Changelog Dashboard production

`CONFIRMED` melalui `DEC-060`, dengan delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`. Backend source
`c2a05076a626562244adabcb22fb86a9a60cbbd8` aktif sebagai release
`20260807161105-c2a0507`; Studio source
`10bcaaae20bfff69fe250d4dd303acbedd8a4bd3` aktif sebagai release
`20260807161105-10bcaaa`. Rollback S139 dipertahankan.

Label workspace administratif Studio kini berasal dari konfigurasi aktivasi
server-authoritative, bukan `brand.studioName` yang memang dapat diubah sebagai
identitas visual. Pergantian akun atau aktivasi device memperbarui label shell
dari workspace target, sementara custom brand tetap hanya memengaruhi tampilan
brand. Changelog Owner kembali tersedia di Dashboard pada kelompok `AKUN`;
release S140 dan riwayat terkini dirender responsif. UI juga menegaskan bahwa
`Cloud vN` adalah nomor revisi katalog milik workspace aktif, bukan versi
aplikasi dan bukan jumlah frame, sehingga dua akun dapat menampilkan angka yang
berbeda secara sah.

Repair terarah yang exact-match dan idempoten memperbaiki satu setting brand
pada satu workspace terdampak, menaikkan version/checksum tepat sekali, dan
membuat audit tunggal. Sebanyak 51 frame, kategori, katalog, subscription,
device/lease, session, foto customer, serta payment tetap tidak berubah. Tidak
ada migration. Focused backend 140 test/1.798 assertion, visual Owner
desktop+mobile, build dan audit dependency lulus; full suite membawa satu
failure SagaBook reschedule yang direproduksi identik pada baseline. Studio
158 unit test, lint/typecheck/build/budget, serta Playwright aktivasi dengan
brand lama lulus. Fresh encrypted backup tiga database, checksum, offsite
round-trip, disposable restore, rehearsal candidate+rollback, atomic release,
preservation, service/journal/security-header, public smoke, marker live, dan
rollback target lulus. Authenticated Owner/Studio UAT pada akun nyata tetap
residual sebelum `BUSINESS_READY`.

### S141 manajemen banyak frame dengan satu simpan production

`CONFIRMED` melalui `DEC-061`; source
`369f01140e3db0144d189fb781acdad91cfe3fc5` pada branch
`codex/s141-sagaview-bulk-frame-save` berstatus `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED` melalui release `20260807173443-369f011`. Backend S140
`20260807161105-c2a0507` dipertahankan sebagai rollback; Studio tetap
`20260807161105-10bcaaa`.

Owner dapat memilih sampai 100 frame, membuka mode manajemen, mengubah nama,
kategori, harga default/khusus, dan status setiap frame, atau menerapkan
kategori/status ke seluruh pilihan. Edit ditahan di dialog sampai satu tombol
`Simpan semua` ditekan. Perubahan kategori kembali memakai harga default;
harga khusus baru hanya dikirim bila dipilih eksplisit.

Backend memvalidasi seluruh patch sebelum menulis, mengunci versi katalog dan
revision workspace, menyinkronkan master/draft/published aktif, serta
menerbitkan katalog/revision satu kali. Missing/cross-workspace, kategori tidak
aktif, permission salah, atau stale tab membatalkan seluruh transaksi tanpa
perubahan parsial. Kegagalan mempertahankan semua edit di dialog. Tidak ada
migration dan tidak ada perubahan artwork, slot, foto customer, payment,
subscription, device, session, atau data customer. Seluruh test SagaView 160
test/1.807 assertion, Playwright galeri/manajemen/pricing 6/6 pada
desktop+mobile, build, Pint, route, diff check, dan dependency audit lulus.
Backup terenkripsi/offsite restore, candidate+rollback rehearsal, atomic
switch, preservation snapshot, service/journal/header/public smoke, live marker,
dan rollback target lulus. Authenticated Owner UAT nyata masih diperlukan
sebelum `BUSINESS_READY`.

### S142 kategori authoritative dan urutan Studio production

`CONFIRMED` melalui `DEC-062`. Owner Console menjadi sumber tunggal nama,
status aktif, dan harga kategori. Studio tidak lagi membuat kategori
`Basic`, `Premium`, atau kategori lain dari fixture/fallback lokal. Nilai
metadata lama yang tidak ada pada katalog aktif dipetakan saat dibaca ke
kategori aktif pertama tanpa menulis ulang frame, artwork, atau versi lama.

Studio Console menampilkan urutan kategori server-authoritative dan menyediakan
drag, naik/turun, serta satu tombol simpan. Simpan memakai revision guard,
menulis urutan rapat, dan menerbitkan snapshot workspace baru; konflik dari tab
stale meminta operator memuat data terbaru. Customer picker membuka kategori
aktif pertama sesuai urutan Studio; `Original` menjadi tie-break deterministik
ketika urutan sama, sementara `Semua` tetap tersedia sebagai overview. Rename
Owner mempertahankan slug stabil dan posisi; kategori yang
dihapus atau diganti direkonsiliasi pada paket/promo agar tidak menyisakan
referensi lokal palsu.

Backend source `e6a7f97941c6b93f88fbd90e09044a4e8fa699b6` / release
`20260808020447-e6a7f97`; Studio source
`c4f664fc5ad6ec1ac3ef992fc7a75b9e7205b666` / release
`20260808020447-c4f664f`. Rollback backend S141
`20260807173443-369f011` dan Studio S140 `20260807161105-10bcaaa`
dipertahankan. Backend 953/953 test dengan 11.215 assertion, Studio 160 unit
test, 28/28 selected browser acceptance, lint, typecheck, build, bundle budget,
dan npm audit lulus. Fresh backup terenkripsi/checksum/offsite restore,
candidate+rollback rehearsal, deployment gate, atomic switch, snapshot
preservation, CORS PUT, service/journal/security header, public smoke, live
marker, dan rollback target lulus. Tidak ada migration atau mutasi frame,
artwork, slot, foto customer, payment, subscription, device, session, maupun
produk lain. Authenticated Owner/Studio UAT kategori nyata tetap diperlukan
sebelum `BUSINESS_READY`.

### S143 galeri stabil dan harga paket jujur production

`CONFIRMED` melalui `DEC-064`. Polling cloud tetap membaca manifest berkala,
tetapi hanya merekonsiliasi katalog ketika fingerprint tenant, version, atau
checksum berubah. Frame yang metadata, SHA, versi, dan URL lokalnya masih
current dilewati; frame berubah diperbarui di posisi lama dan urutan remote
diterapkan deterministik hanya bila memang berbeda. Pilihan operator dan posisi
scroll tidak lagi berubah pada polling identik.

Kredit paket hanya dipakai untuk cetakan kategori nonpremium. Original yang
termasuk paket bernilai Rp0; Special Rp15.000 menambah tepat Rp15.000. Original
kedua tetap mengikuti biaya extra print yang dikonfigurasi. Draft Pengaturan
Umum yang terbentuk sebelum bootstrap kategori selesai direkonsiliasi terhadap
kategori authoritative terbaru saat simpan, sehingga perubahan lain tidak lagi
gagal karena eligibility paket stale. Respons metadata 408/425/429/5xx dapat
masuk antrean lokal tanpa credential, sedangkan 422 tetap fail-closed.

Backend source/release `8fac4f681d45660da27afdd72ba36460d4bd6d0c` /
`20260808134902-8fac4f6`; Studio source/release
`91d7bd7bf13d6dcf7d386431d652a9cf9f3cdefa` /
`20260808134902-91d7bd7`. Rollback S142 backend
`20260808020447-e6a7f97` dan Studio `20260808020447-c4f664f` dipertahankan.
Backend 953/953 test dengan 11.215 assertion; Studio 171 unit test dan full
Playwright 119 pass/2 intentional skip, lint/typecheck/build/budget, serta audit
npm/Composer nol advisory lulus. Backup terenkripsi `20260808T064733Z`,
checksum/offsite/disposable restore, candidate+rollback rehearsal, live rollback
cycle, atomic re-activation, preservation frame/customer/device/session/payment/
subscription, service/journal/header/public smoke, dan marker S143/0.20.6 lulus.
Tidak ada migration atau perubahan foto customer, artwork, payment, subscription,
device lease, SagaBook, maupun Saga Platform. Authenticated UAT galeri panjang
dan kombinasi harga paket nyata tetap diperlukan sebelum `BUSINESS_READY`.

### S144 pilihan izin foto cepat

`CONFIRMED` melalui `DEC-065` dan aktif kumulatif pada S146. Pada Review, aksi akhir
membuka pop-up ringkas dengan empat jawaban: `Izinkan semua foto`, `Hanya foto
yang saya pilih`, `Pilih beberapa foto`, dan `Jangan gunakan foto saya`. Tiga
jawaban selain pilihan manual menyimpan scope consent lalu melanjutkan workflow
export dan penyelesaian sesi yang sudah ada. Hanya `Pilih beberapa foto` yang
memuat galeri thumbnail; kembali ke daftar jawaban mempertahankan pilihan manual
selama dialog masih terbuka.

Tidak ada pilihan otomatis. Policy snapshot, payload consent, penyalinan foto
yang memang diizinkan, persistence cloud, dan batas local-first tetap memakai
kontrak production lama. Source Studio
`76f06a8a59a1bb88ad140250faaf2db1a8f1ce51`; status saat validasi
`LOCAL_VALIDATED`. Format/lint/typecheck, 177 unit,
production build/budget, focused consent 8 unit + 2 browser, full browser 121
pass/2 intentional skip, mobile 390x844, keyboard/Escape, WCAG, dan audit
dependency nol advisory lulus. Source ini aktif melalui Studio S146
`81e55adc`; live UAT empat cabang consent tetap residual sebelum
`BUSINESS_READY`.

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

`CONFIRMED` - production S146:

- Studio memakai credential dan fingerprint perangkat untuk endpoint Support
  Hub device-scoped; tenant, product `sagaview`, dan identitas actor diturunkan
  server-side, bukan dari browser;
- first-use bootstrap tanpa percakapan tetap membuka composer; launcher mobile
  menampilkan label `Bantuan` dan input mempunyai label aksesibel;
- hanya metadata teknis allowlist yang dapat diteruskan. Folder foto, editor,
  export, credential, tenant browser, dan path lokal tidak dipindai/diunggah;
- backend `1af885248f04d95960a015749152c784af33307e` dan Studio
  `81e55adc170af0949245e3f381d881b716e25b0e` aktif sebagai release immutable
  `20260808190040-1af8852` / `20260808190040-81e55ad`.
- Gate hijau: backend 961/961, Studio 180/180, full browser 122 pass/3
  intentional skip, build/budget/audit, backup/checksum/restore, candidate dan
  rollback rehearsal, live rollback cycle, snapshot data, header/CORS/service/
  journal, serta smoke device-negative 422.
- Status `AI_EVAL_VALIDATED / INTEGRATION_VALIDATED / RELEASED /
  PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated perangkat nyata,
  latency, error/timeout, dan cost tetap residual sebelum `AI_BUSINESS_READY`.

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
  `f515dd7a1066b2c6b5244bb1f5bc48d306430768`.
- Backend release aktif: `20260807023502-f515dd7`.
- Studio source aktif:
  `05c5fda07a342d2977d8e6e3d836adb17a84605b`.
- Studio release aktif: `20260807023502-05c5fda`.
- Studio release sebelumnya yang menjadi rollback:
  `20260807010718-05c5fda`.
- Backend release sebelumnya yang menjadi rollback:
  `20260807010717-d7542fd`.
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
