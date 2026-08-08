# SagaView Dossier

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView berdasarkan runtime production aktif.

## Konteks dan status bukti

- Updated: 8 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED`
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal
- UI Studio compact all-menu: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- UI Session monitor besar: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- UI Output monitor besar: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- UI Izin Foto monitor besar: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Free drag rotation slot: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Simpan Draft/Publish Frame: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Ekspansi frame aktif Growth 50 / Pro 100:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Portable frame template: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Bulk export Galeri Frame: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Server ZIP bulk export untuk 3-100 pilihan:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Resumable server batch import sampai 100 template:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S122 Batch Import Control Center:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S134 workspace validation dan tab recovery Batch Import:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S135 Owner dan Studio workspace alignment:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S138 tombol akhir Batch Import dan batch edit kategori Galeri Frame:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S139 sinkronisasi kategori, harga turunan, dan versi katalog frame:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S141 manajemen banyak frame dengan satu simpan:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- Acceptance integrasi feature-by-feature: ledger dimulai konservatif dan
  belum membuktikan coverage penuh; lihat
  [Feature Coverage Ledger](FEATURE_COVERAGE_LEDGER.md).

## Overview produk

`CONFIRMED`: SaaS local-first untuk workflow self-photo studio setelah sesi.

## Masalah yang diselesaikan

Pemilihan nomor file manual, framing/print rawan salah, volume foto besar,
privacy foto customer, offline/reconnect, dan perangkat studio.

## Target pengguna

Owner/admin studio, operator Windows, customer saat selection, dan support
SagaDev.

## Persona pengguna

- Owner: mengelola plan, frame, device, dan kesehatan operasional.
- Admin: mengelola frame, setting, serta report sesuai capability.
- Operator: menjalankan session, import, recovery, export, dan print.
- Customer: memilih foto/frame dan mereview hasil dalam sesi temporary.
- `NEEDS CONFIRMATION`: segmentasi studio berdasarkan volume/perangkat.

## Value proposition

> SagaView menyelesaikan setelah sesi.

Foto tetap local-first, sementara workflow selection sampai output 4R lebih
terstruktur.

## Use case

Provisioning, Owner Console, device activation, exclusive Studio lease,
session/folder, import 50/200/500 foto, frame catalog, selection, editor,
review, output 4R, offline recovery, emergency transfer, completion/privacy
handoff, support diagnostics, trial dua fase, subscription, dan billing.

## Fitur utama

Owner Console, Studio Console, device lease, session workflow, frame catalog,
editor/review, export/print, recovery, support, trial, plan, dan billing.

UI production memakai shell operasional solid dengan hierarchy lokasi,
tenant, status, dan aksi utama yang jelas. Target interaktif minimal 44 px,
motion dibatasi 180 ms, forced-colors/reduced-motion didukung, dan tepat satu
`Powered by SagaView` tampil pada surface aplikasi/public/customer tanpa masuk
ke export, print, invoice, atau receipt.

Workspace Session production kini menggunakan shell sampai 1720 piksel dan
konten operasional sampai 1600 piksel pada layar besar. Before: konten berhenti
di 1180 piksel sehingga monitor 1920/QHD menyisakan ruang hijau berlebihan.
After: kartu paket, form persiapan, readiness, dan status step memakai ruang
monitor secara proporsional, sementara batas teks tetap terbaca. Source Studio
`4bbd1665222332da7aee28da8d4ce01253b9ef8c` dipromosikan sebagai release
`20260805181945-4bbd166`; perilakunya diwarisi Studio aktif
`20260806050546-3b66f8d`.

Workspace Output production memakai batas konten 1400 piksel. Before: tujuan
output dan format selalu bertumpuk di dalam batas sekitar 896 piksel, sehingga
monitor QHD/4K menyisakan ruang besar dan operator perlu menggulir lebih jauh.
After: mobile, zoom tinggi, Windows compact, dan MacBook tetap memakai satu
alur vertikal; layar besar menampilkan panel tujuan serta format berdampingan
secara seimbang. Source Studio `1accf323ffa9517855f8acf2d93120c01136720d`
dipromosikan sebagai release `20260805191930-1accf32`, lalu diwarisi source
kumulatif aktif `3b66f8d5df3e34aba11c4eab2619cfe44efd06d7` pada release
`20260806050546-3b66f8d`. Rollback Studio `20260805155605-3b66f8d` tersedia.
Perubahan tidak menyentuh folder,
device/session, subscription, payment, foto lokal, atau kontrak export 4R.

Workspace Izin Foto production juga memakai batas konten 1400 piksel. Before:
daftar sesi selalu satu kolom di dalam batas sekitar 1152 piksel sehingga
monitor QHD/4K menyisakan ruang lebar dan menambah scroll vertikal. After:
mobile, laptop, dan 1440 piksel tetap satu kolom; QHD/4K menampilkan dua kartu
sesi berdampingan tanpa mengubah ringkasan, filter, retry, cabut izin, consent
API, permission, atau penyimpanan foto lokal. Source Studio
`3b66f8d5df3e34aba11c4eab2619cfe44efd06d7` aktif sebagai release
`20260806050546-3b66f8d`; rollback `20260805155605-3b66f8d` tersedia.

Pemilihan frame production memakai preview, selected state, jumlah cetakan,
serta satu aksi `Terapkan & lanjut`. Editor dan Review kini menjadi alur
vertikal yang dapat dijangkau pada mobile 390x844, sambil mempertahankan
workspace tiga/dua kolom pada desktop, output 4R, status lokal/offline,
error/retry, stepper aktif, dan target sentuh 44/48 px.

Editor frame production mempertahankan rasio artwork asli agar portrait atau
landscape tidak dipenyet. Canvas landscape mendukung putar kanan/kiri 90
derajat dan memetakan ulang geometri slot sesuai arah. Deteksi otomatis memakai
feather awal 4 px; operator dapat mengatur semua slot 0–12 px, menambah atau
mengurangi 2 px, memindahkan slot pada canvas, serta resize dari empat titik
sudut. Field X/Y/W/H tetap tersedia untuk koreksi presisi. Perubahan tidak
mengubah tenant, device/session, foto local-first, payment, atau output 4R.

Backend production `5906028703759d49ef930a7363c5efc293f6be97` mengunci urutan
authoring frame menjadi `pilih PNG/WebP -> Deteksi otomatis -> periksa/koreksi
slot -> simpan draft`. Frame baru dan file pengganti tidak lagi menerima satu
slot bawaan; canvas tetap kosong sampai deteksi dijalankan. Penambahan manual
baru tersedia setelah percobaan deteksi, save diblokir selama slot kosong, dan
frame existing tetap memuat slot tersimpan. Release lulus build, 119 test
SagaView/1.248 assertions, focused Playwright desktop, serta audit npm/composer
nol advisory, backup, deploy gate 6/6, canary, bundle check, service/header/
journal, dan public smoke. Source tersebut dipromosikan sebagai release
`20260805133709-5906028`; perilakunya diwarisi backend aktif
`20260806050513-1158926` dengan rollback `20260805155517-c853806`.

Implementasi production lama memberi tombol rotate yang menukar W/H 90
derajat. Founder mengoreksi kontrak tersebut melalui `DEC-036`: rotate yang
diterima adalah drag angle bebas agar slot dapat mengikuti opening frame yang
miring.

Source production Owner/API `0b655da4aeea270ce9048d853e7df09d42a36dd9`
dan Studio `2121ebb80fa4238e91eef4003f852d34841e923f` menyimpan angle opsional per slot,
default 0 derajat untuk frame lama, menerapkan rotated bounds di server, serta
merender sudut yang sama pada preview customer dan export PNG. Drag ke kiri
menghasilkan sudut negatif dan drag ke kanan sudut positif; inspector juga
menyediakan angka/reset dan keyboard. Build, 120 test SagaView/1.250 assertions,
focused Playwright, 44 file test Studio/156 test, lint, typecheck, build/budget,
visual QA, dan audit dependency lulus. Commerce canary dipulihkan melalui state
machine resmi; backup, preflight/deploy gate 6/6, canary, service/header/journal,
HTTP smoke, dan marker bundle production lulus. Perilaku free drag diwarisi
release aktif backend `20260806050513-1158926` dan Studio
`20260806050546-3b66f8d`.

Portable frame template production pada source
`1158926b2be35887aff7dc8a09cb0111e8a71fc7` menutup pengulangan setup frame
lintas akun. Owner mengekspor file `.sagaview-frame` berisi artwork dan metadata
portable yang dibatasi pada konfigurasi frame/slot. Akun tujuan mengimpor paket
sebagai draft baru, lalu dapat mengubah nama dan kategori sebelum save/publish.
Orientasi, geometri termasuk hasil feather, serta angle per slot dipertahankan;
kode yang sudah ada tidak ditimpa. Checksum ganda, magic-byte, limit ukuran,
slot/rotated bounds, dan validasi authoring server menjadi defense in depth.
Tidak ada foto customer, identifier akun/tenant, device, session, credential,
path lokal, atau payment di dalam paket. Fitur aktif melalui backend release
`20260806050513-1158926` dan Studio release `20260806050546-3b66f8d` setelah
backup/restore, rehearsal candidate/rollback, deploy gate 6/6, canary, dan live
smoke lulus. Authenticated Owner UAT lintas dua akun tetap residual.

Bulk export Galeri Frame aktif melalui `DEC-044` dan source
`73979542ceeb8fc11e658c7d27346ca983dc163f`. Checkbox per kartu,
select-all berdasarkan hasil filter, partial state, jumlah/clear pilihan, dan
sequential batch download sudah local-validated. Dua download diuji sebagai
template v1 tenant-neutral; regresi export/import lama tetap lulus. Proses
berurutan membatasi artwork/template aktif di memori, sementara izin beberapa
download tetap dikendalikan browser. Delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` melalui backend release
`20260806071707-7397954` dan Studio release `20260806071733-3b66f8d`.
Rollback backend `20260806050513-1158926` dan Studio
`20260806050546-3b66f8d` dipertahankan; Owner UAT galeri nyata masih residual.

`DEC-049` mengoreksi implementasi packaging bulk export pada production source
`ea432e977d02ada8f4b7289bfbd43c6e56941f9a`, branch
`codex/sagaview-zip-bulk-export-s120`: satu atau dua pilihan tetap memakai
download `.sagaview-frame` langsung, sedangkan tiga sampai 100 pilihan disiapkan
sebagai satu ZIP di private temp storage backend. Browser baru menjalankan satu
native download setelah paket siap. Export ID deterministik mendukung retry
idempotent selama TTL 30 menit; kegagalan satu frame membatalkan paket tanpa
arsip parsial. Backend 917/917 dengan 10.964 assertion, focused Playwright 3/3,
production build, workload 51 frame di atas 90 MB, batas 100, tenant isolation,
corrupt asset, expiry, dan all-or-nothing lulus. Fresh encrypted backup/restore,
candidate+rollback rehearsal, deploy gate 6/6, atomic release, canary,
payment/device preservation, service/journal/header/public smoke, live marker,
dan rollback lulus. Release menambah endpoint tenant-scoped dan scheduler purge,
tetapi tidak mengubah schema, pricing, entitlement Growth 50/Pro 100, payment,
device/session, foto customer, atau source Studio. Delivery dan activation
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` melalui backend
`20260806122125-ea432e9` dan Studio `20260806122126-3b66f8d`; rollback
`20260806111019-555682b` / `20260806111020-3b66f8d` dipertahankan. Authenticated
Owner UAT 51 frame nyata, retry, dan dua akun tetap residual sebelum
`BUSINESS_READY` mass-scale.

Koreksi founder `DEC-050` mengganti batch import yang bergantung pada proses
browser menjadi resumable server batch import pada source
`e850d6c7542c10e97309ca045ebe2f700a488ebf`. Modal menerima maksimal 100 file
`.sagaview-frame` atau satu ZIP. Browser mengirim chunk 4 MB dengan SHA-256,
retry otomatis maksimal lima kali, dan resume melalui batch ID/manifest saat
kumpulan file yang sama dipilih ulang. Server menyimpan batch dan item secara
durable, memvalidasi tenant/capability, template, checksum, magic-byte, dimensi,
metadata, serta ZIP, lalu memproses item secara serial melalui queue.

Invalid/corrupt/cross-tenant item tidak membatalkan item valid. Draft dibuat
sebelum publish; quota overflow mempertahankan draft. ZIP menolak folder, path
traversal, non-template entry, nama duplikat, lebih dari 100 entry, expanded
size di atas 2 GB, dan compression ratio di atas 100x. Upload privat dipurge
setelah 24 jam dan riwayat batch setelah tujuh hari.

Acceptance membuktikan Growth 51 menghasilkan 50 published + 1 draft dan Pro
100 menghasilkan 100 published. Resume/idempotency, manifest mismatch, ZIP
valid/path traversal, corrupt partial, cross-tenant/auth, serta batas 101 ikut
lulus. Focused suite 57 test/1.033 assertion, full SagaView 134 test/1.620
assertion, Playwright 51-file dengan retry 503, build, encrypted backup/restore,
rehearsal candidate+rollback, deploy gate 6/6, canary/payment/device
preservation, service/journal/header/public smoke, live marker, dan rollback
lulus. Production aktif pada backend `20260806133407-e850d6c` dan Studio
`20260806133407-3b66f8d`; rollback `20260806122125-ea432e9` /
`20260806122126-3b66f8d` dipertahankan. Migration additive tidak mengubah
pricing, entitlement, payment, device/session, foto customer, atau source
Studio. Authenticated Owner UAT 50-100 file nyata dan dua akun tetap residual
sebelum `BUSINESS_READY` mass-scale.

S122 pada source `b6af5797fb6fdcea499e727ee2bdb1e4dc666165`
menambahkan preflight kuota/storage, duplicate policy `skip/copy/draft`, riwayat
tujuh hari, notification acknowledgement, cancel, laporan CSV, serta bulk retry,
publish draft, category update, dan remove draft/item gagal. Fingerprint
checksum+geometri serta semua endpoint/mutation tetap tenant+membership scoped.
Schema tambahan bersifat aditif; foto customer, payment, pricing, entitlement,
device/session, dan source Studio tidak berubah.

ZIP export ikut diperkeras dengan file-backed entry staging, cleanup fail-closed,
dan reserve workspace 3x agar 51-100 frame tidak menumpuk di RAM PHP.

Build, 137 test SagaView/1.656 assertion, focused 20/484, serta Playwright
export-all dan batch import 51-file lulus. Backup/restore, rehearsal
kandidat+rollback, deploy gate 6/6, canary/payment/device preservation,
service/journal/header/public smoke, dan rollback target lulus. Production aktif
pada backend `20260806200400-b6af579` dan Studio `20260806200400-3b66f8d`.
Smoke runtime 51 frame menghasilkan ZIP 103.282.237 byte dalam 6,751 detik pada
RAM 128 MB dengan tambahan peak 23.597.056 byte dan nol file sementara.
Authenticated Owner UAT import 50-100 file nyata pada dua akun tetap residual.

S134 pada backend source `902e5dd81919168b1978c8bfbcd62303920184a6`
memvalidasi workspace terhadap server sebelum pemilih file diaktifkan. UI
menampilkan nama workspace dan `Workspace siap`; stale URL/local storage tidak
boleh mengganti server-auth tenant. Pemulihan hanya berlaku untuk session dan
tenant yang sama, sementara context invalid/cross-tenant memberi error bertipe
`401`, `403`, atau `409` dengan tindakan terarah.

Preflight, create, upload resume, dan polling memakai tenant+membership context
yang sama dan fail-closed bila context berubah di tengah upload. Build, 96 test
SagaView/1.038 assertion, 266 test boundary/1.950 assertion, serta Playwright
desktop dan mobile lulus. Fresh encrypted backup/restore, rehearsal exact
candidate+rollback, deploy gate 6/6, canary/payment/device preservation,
service/journal/header/public smoke, marker live, dan rollback production juga
lulus. Backend aktif `20260806212915-902e5dd`; Studio rebuild aktif
`20260806213012-3b66f8d`; rollback `20260806200400-b6af579` /
`20260806200400-3b66f8d` dipertahankan. Tidak ada migration atau perubahan pada
pricing, entitlement, payment, device/session, foto customer, maupun data
tenant. Authenticated Owner UAT 50-100 file nyata pada dua akun tetap residual.

S135 mengikat launcher Owner ke workspace target dan mewajibkan respons
aktivasi Studio cocok dengan target tersebut. Server-auth tenant menang sebelum
request Owner pertama; perpindahan workspace mereset batch/launcher lama.
Studio mengarsipkan state serta metadata runtime per workspace, membersihkan
state aktif lintas tenant, memulihkan state target bila ada, lalu bootstrap dan
reload. Saat promosi S135, backend source/release adalah `85ec0f64` /
`20260806224422-85ec0f6`; Studio source/release aktif `07454264` /
`20260806224441-0745426`; rollback S134 dipertahankan. Acceptance 344 test
backend/2.852 assertion, 158 unit Studio, 5 Playwright device-transfer,
dependency audit, backup/restore, rehearsal kandidat+rollback, deploy `6/6`,
live marker, preservation, dan rollback lulus. Tidak ada migration atau
perubahan payment, subscription, device/session, foto customer, maupun data
tenant. UAT Owner dua workspace nyata tetap residual.

S136 memperketat boundary session: requested tenant wajib sama dengan tenant
credential device dan mismatch ditolak `403` sebelum persistence. Backend
source/release aktif `4642b408` / `20260807003837-4642b40`; Studio tetap source
`07454264` melalui release `20260807003838-0745426`; rollback S135
dipertahankan. Regression 142 test/1.692 assertion, Playwright disposable 2/2,
encrypted backup/restore tiga database, rehearsal kandidat+rollback 6/6,
preflight/deploy/post-preflight 6/6, canary/preservation, lima public smoke 200,
service/header, dan error unit runtime nol lulus. Tidak ada foto customer yang
diunggah, payment intent/QRIS baru, perubahan subscription, atau aktivasi
tenant. Status `PRODUCTION_DEPLOYED`, belum `PRODUCTION_ACTIVATED` atau
`BUSINESS_READY`.

S137 memulihkan bootstrap cloud untuk akun Owner legacy yang sah tetapi belum
memiliki membership workspace. Sebelumnya endpoint sync memberi `403`, lalu UI
menutup error dan terus menampilkan `Memuat cloud`. Backend sekarang membuat
membership yang hilang secara transactional/idempotent hanya untuk Staff aktif,
tenant yang sama, role legacy yang dikenali, dan subscription SagaView yang
tersedia. Membership yang eksplisit nonaktif tetap ditolak. UI membedakan
loading, aktif, nonaktif, dan gagal, lalu menyediakan pesan tindakan dan
`Coba lagi`. Backend source/release aktif `d7542fdc` /
`20260807010717-d7542fd`; Studio source/release `05c5fda0` /
`20260807010718-05c5fda`; rollback S136 dipertahankan. Regression 935 test/
11.101 assertion, build, focused Playwright, dependency audit, encrypted
backup/restore, rehearsal kandidat+rollback 6/6, preflight/deploy,
canary/preservation, public smoke, marker runtime, serta probe transaksi yang
di-rollback lulus. Tidak ada migration atau perubahan foto customer, payment,
subscription, device, session, maupun data customer. Status
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated Owner UAT tetap
residual sebelum `BUSINESS_READY`.

S138 membuat akhir batch import dapat ditutup secara jelas melalui footer
status dan tombol `Selesai` yang selalu terlihat; Escape serta tombol tutup
juga bekerja tanpa bergantung pada posisi scroll. Pemilihan massal Galeri Frame
sekarang dapat dipakai untuk export atau mengubah kategori 1-100 frame ke satu
kategori aktif. Update kategori published/draft berlangsung transactional,
tenant+membership scoped, dan fail-closed bila satu frame tidak tersedia atau
berasal dari workspace lain. Backend source/release aktif `f515dd7a` /
`20260807023502-f515dd7`; Studio source yang tidak berubah `05c5fda0` dibangun
sebagai `20260807023502-05c5fda`; rollback S137 dipertahankan.

Acceptance mencakup full regression 938 test/11.110 assertion, focused
SagaView 149/1.721, Playwright desktop+mobile, build/audit, fresh encrypted
backup tiga database, candidate+rollback rehearsal 6/6, preflight/deploy/
post-preflight, canary/payment/device preservation, marker source+bundle+route,
public smoke, service, journal, dan security header. Tidak ada migration atau
perubahan artwork, slot, foto customer, payment, subscription, device, session,
atau data operasional tenant. Status `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; authenticated Owner UAT tetap residual sebelum
`BUSINESS_READY`.

S139 mengoreksi batch kategori S138. Sebelum koreksi, kategori hanya berubah
pada frame utama/draft, sementara versi published dan override harga lama dapat
tertinggal; harga efektif tetap memakai nilai per-frame lama. Sekarang update
tunggal dan massal menyinkronkan master, draft aktif, serta versi published
aktif dalam transaksi yang sama. Batch kategori menghapus override harga
per-frame agar mengikuti default kategori tujuan, sedangkan override harga
cabang tetap dipertahankan. Versi/checksum katalog dan revisi workspace ikut
maju agar Studio menerima perubahan.

Backend source/release aktif `f05c919ab0f7e645eabeac1ce959000eeecbf8cc` /
`20260807045115-f05c919`; Studio `05c5fda07a342d2977d8e6e3d836adb17a84605b`
/ `20260807045115-05c5fda`; rollback S138 dipertahankan. Pemulihan data
fail-closed menyinkronkan tepat 29 frame pada satu workspace yang memenuhi pola
bug dan menurunkan mismatch published menjadi 0. Artwork, slot, foto customer,
payment, subscription, device, dan session tidak berubah. Authenticated Owner
UAT dengan kategori/harga nyata tetap residual sebelum `BUSINESS_READY`.

S140 menutup sisa kontaminasi identitas workspace setelah S135. Nama
administratif pada shell Studio sekarang dibaca dari konfigurasi aktivasi
server-authoritative. Nama brand yang dapat diedit tetap disimpan sebagai
konfigurasi visual dan tidak boleh menentukan akun/workspace aktif. Test
aktivasi membuktikan shell tetap menampilkan workspace target meskipun payload
brand cloud masih membawa nama lama.

Owner Dashboard kembali menyediakan `Changelog` pada kelompok `AKUN`, dengan
route authenticated tersendiri, layout desktop/mobile tanpa overflow, dan data
release terpusat. Penjelasan `Cloud vN` kini eksplisit sebagai revision katalog
per workspace; nilainya tidak harus sama antar-akun dan tidak merepresentasikan
versi aplikasi atau jumlah frame.

Backend source/release aktif `c2a05076a626562244adabcb22fb86a9a60cbbd8` /
`20260807161105-c2a0507`; Studio source/release
`10bcaaae20bfff69fe250d4dd303acbedd8a4bd3` /
`20260807161105-10bcaaa`; rollback S139 dipertahankan. Repair production
exact-match/idempoten memperbaiki satu field brand pada satu workspace,
menaikkan version/checksum sekali, dan menulis satu audit. Hash/count 51 frame,
kategori, katalog, subscription, device/lease, session, foto customer, dan
payment tidak berubah. Tidak ada migration. Backup terenkripsi dan restore,
candidate+rollback rehearsal, atomic deploy, idempotency, service/journal,
security header, public smoke, marker live, serta rollback target lulus.
Authenticated UAT pada Owner Dashboard dan Studio device nyata tetap residual.

S141 memperluas batch kategori menjadi mode manajemen multi-frame. Owner dapat
menyiapkan nama, kategori, pilihan harga default/khusus, serta status berbeda
untuk sampai 100 frame, lalu mengirim semuanya melalui satu `Simpan semua`.
Kategori dan status juga dapat diterapkan ke seluruh pilihan tanpa menutup
kemampuan edit per baris. Dialog dapat ditutup melalui tombol atau Escape;
failure server tetap menampilkan alasan dan mempertahankan edit untuk retry.

Endpoint bulk baru capability-, tenant-, dan membership-scoped. Satu transaksi
mengunci catalog version serta workspace revision, memverifikasi seluruh frame
dan kategori, lalu menyinkronkan brand frame, draft aktif, dan published aktif.
Satu target invalid atau stale membatalkan semua perubahan. Kategori baru
menghapus override per-frame lama kecuali Owner memilih harga khusus baru;
override cabang tetap eksplisit. Source
`369f01140e3db0144d189fb781acdad91cfe3fc5` / release
`20260807173443-369f011` sudah `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; S140 `20260807161105-c2a0507` menjadi rollback dan
Studio tetap `20260807161105-10bcaaa`. Seluruh test SagaView 160/1.807,
desktop+mobile Playwright 6/6, build, Pint, route, dan audit dependency lulus.
Backup terenkripsi `20260807T173247Z`, offsite round-trip/restore, rehearsal,
atomic switch, preservation frame/customer/device/payment/subscription,
service/journal/header/public smoke, live marker, dan rollback target lulus.
Authenticated Owner UAT pada frame nyata tetap residual.

S142 mengunci boundary kategori Owner/Studio. Nama, status, dan harga kategori
hanya berasal dari Owner Console; Studio tidak lagi menambah fixture atau
fallback `Basic`, `Premium`, dan kategori lokal. Snapshot kategori mengganti
cache secara exact per workspace. Metadata lama yang tidak ditemukan pada
katalog aktif dipetakan saat dibaca ke kategori aktif pertama, tanpa menulis
ulang frame, artwork, versi, atau histori import.

Studio General menyediakan drag, tombol naik/turun, dan satu aksi simpan untuk
urutan seluruh kategori. Request `PUT /api/sagadev/sync/categories/order`
memakai device credential, tenant scope, exact active set, dan revision guard;
server menyimpan sort order rapat lalu menerbitkan workspace snapshot baru.
Konflik revision memuat snapshot terbaru dan tidak menimpa perubahan tab lain.
Customer picker membuka kategori aktif pertama menurut urutan tersimpan,
sedangkan manajemen tetap menyediakan `Semua` sebagai overview. Rename Owner
mempertahankan slug/posisi dan duplikat nama case-insensitive ditolak. Paket
serta promo direkonsiliasi ketika kategori authoritative berubah, dan editor
terkait ditahan sampai konfigurasi server tersedia.

Backend source/release `e6a7f97941c6b93f88fbd90e09044a4e8fa699b6` /
`20260808020447-e6a7f97`; Studio source/release
`c4f664fc5ad6ec1ac3ef992fc7a75b9e7205b666` /
`20260808020447-c4f664f`; rollback backend S141 dan Studio S140 dipertahankan.
Backend 953/953 test dan 11.215 assertion, Studio 160 unit test, 28/28 selected
Playwright, lint/typecheck/build/budget, npm audit, route/CORS, fresh encrypted
backup/checksum/offsite restore, rehearsal candidate+rollback, atomic switch,
snapshot preservation, service/journal/header/public smoke, live marker, dan
rollback target lulus. Tidak ada migration atau mutasi data tenant/customer.
Authenticated Owner/Studio UAT dengan kategori nyata tetap residual sebelum
`BUSINESS_READY`.

S143 memperbaiki stabilitas galeri dan kontrak pricing paket. Runtime cloud
tetap polling setiap interval, namun fingerprint tenant/version/checksum
menghindari recovery ketika manifest identik. Aset dengan metadata/SHA/version
yang sama tidak dibuat ulang; frame berubah di-update pada ID/posisi lama, dan
urutan katalog hanya ditulis ulang bila benar-benar berbeda. Acceptance browser
mempercepat timer polling dan membuktikan pilihan, urutan, URL gambar, dan scroll
tetap sama setelah polling identik.

Pricing kini memisahkan cetakan paket dan surcharge kategori: credit paket hanya
menanggung nonpremium, base extra price tidak diterapkan ke premium, dan Special
tetap membayar kategori penuhnya. Kasus kontrak: Original x1 + Special Rp15.000
= Rp15.000; Original x2 + Special = Rp25.000 ketika extra Original Rp10.000.
Review menyebutnya `Tambahan kategori berbayar`. Eligibility paket yang kosong
atau stale karena bootstrap kategori terlambat direkonsiliasi ke kategori aktif
pertama saat simpan, tanpa mengganti pilihan yang masih valid.

S143 juga membawa retry metadata aman: respons 408, 425, 429, dan 5xx dapat masuk
antrean lokal yang tidak menyimpan credential atau lease token; validation 422
tetap meminta koreksi operator. Dependency `nanoid` pada Studio dan Owner Console
dipatch ke 3.3.18 setelah audit menemukan advisory high.

Backend `8fac4f681d45660da27afdd72ba36460d4bd6d0c` /
`20260808134902-8fac4f6` dan Studio
`91d7bd7bf13d6dcf7d386431d652a9cf9f3cdefa` /
`20260808134902-91d7bd7` sudah production. Full backend 953/11.215, Studio 171
unit dan 119 browser pass/2 intentional skip, build/budget/audit, backup encrypted
offsite restore, rehearsal, live rollback/re-activation, preservation snapshot,
service/journal/header/public smoke, dan live marker lulus. S142 tersedia sebagai
rollback. UAT authenticated pada galeri dan harga workspace nyata masih residual.

Mulai sesi production memakai checklist perangkat, paket, folder, frame, dan
output serta satu CTA kontekstual 48 px. Utility cloud/recovery yang sehat
diringkas; detail terbuka otomatis saat operator perlu bertindak. Alur tetap
fail-closed untuk device, import safety, frame/output recovery, dan offline.

Display Settings production kini memakai alur `pilih tampilan -> periksa
preview -> sesuaikan -> simpan`. Pada mobile 390x844 preview tampil sebelum
pengaturan tanpa overflow; preset memiliki state `Dipakai`, keyboard focus,
target 44 px, status local/offline, validasi warna, dan recovery save. Kontrak
frame customer, device/session/privacy, serta output 4R tidak berubah.

Katalog frame terisi production memakai alur `cari -> filter kategori/status
-> verifikasi frame`. Mobile 390x844 kini memakai kartu horizontal ringkas dan
desktop 1440x900 memakai empat kolom, sehingga delapan frame lebih cepat
dipindai. Nama, preview, kategori, slot, orientasi, harga, serta status tetap
terbaca; launcher bantuan masuk alur halaman saat tertutup dan tidak lagi
menutupi kartu mobile. Local frame tetap dapat dilihat saat offline dan cloud
recovery fail-closed. Customer picker, device/session/privacy, serta output 4R
tidak berubah.

Bantuan perangkat production sekarang fail-soft ketika backend Support Hub
belum aktif. Launcher tetap terlihat dan menyediakan `Unduh diagnostik aman`
serta `Salin format laporan`; keduanya dibangun dari status teknis ter-redact
tanpa foto, PII customer, identitas tenant/device, credential, token, atau path
file. Endpoint online baru dicoba setelah aksi operator dan kegagalan 404 tidak
lagi menghilangkan fallback. Panel touch-safe, aksesibel, bebas overflow, dan
tidak menutupi signature produk pada mobile/desktop.

Changelog Studio candidate sekarang mengutamakan release terbaru, menyediakan
pencarian, filter status, enam batch versi, satu detail terbuka, empty/reset
recovery, dan CTA kembali ke Session. Source kumulatif `2bb868f` juga menutup
delapan respons font 403 dari junction dependency dan mengembalikan fokus ke
konten utama sesudah navigasi route. Candidate lulus focused 3/3, gabungan
accessibility/navigation 12/12, 156 unit, 99 E2E, import 50/200/500, build,
visual exact 390x844/1440x900 dengan Work Sans, dan audit 0.
Production belum berubah karena backup/restore exact candidate dan approval
deploy belum tersedia; status ini tidak mengubah device/session, foto,
permission, local-first, frame, payment, atau output 4R.

Candidate sidebar deep-route memperbaiki konteks navigasi pada laptop Windows
compact. Sebelumnya `/admin/install` aktif pada 1280x720 tetapi item Install App
berada di bawah area sidebar yang terlihat. Source kumulatif `7ad38ef` kini
menjalankan scroll `nearest` ke route aktif, tanpa mengambil fokus dari konten
utama dan dengan reduced-motion. Regression mencakup 390x844, 1280x720,
1440x900, 1512x982, dan 2560x1440; focused 6/6, unit 156/156, full E2E 105/105,
build/budget, forced-colors, no-overflow, target 44 piksel, satu watermark, dan
dependency audit nol lulus. Production belum berubah karena receipt
backup/restore exact S110 dan approval belum tersedia.

Candidate dialog PIN zoom source kumulatif `808470c1` memperbaiki gerbang
override paket Studio. Dialog sekarang mempunyai nama aksesibel, focus trap,
Escape, body scroll internal, overlay di atas form asal, input 44 piksel, serta
close/action 48 piksel. Matriks 390x844, 1280x720, 1440x900, dan reflow efektif
125/150/200 persen lulus Axe, keyboard/focus, forced-colors, reduced-motion,
no-overflow, dan satu watermark. Full E2E menghasilkan 106 pass dan satu
capture-only skip; unit 156/156, build/budget, serta audit dependency nol.
Production belum berubah karena receipt backup/restore exact S111 dan approval
belum tersedia; validasi PIN dan kontrak device/session, foto, tenant, payment,
frame, serta output 4R tidak berubah.

Candidate penjaga navigasi source kumulatif `707a6f61` memperbaiki dialog
perubahan belum disimpan yang dipakai General, Brand, dan Output. Dialog
sekarang mempunyai nama/deskripsi aksesibel, focus trap, Escape, internal
scroll, overlay berlapis benar, dan tiga aksi 48 piksel. Alur simpan kemudian
pindah route tetap terbukti end-to-end. Matriks 390x844, 1280x720, 1440x900,
dan reflow efektif 125/150/200 persen lulus Axe, keyboard/focus, forced-colors,
reduced-motion, no-overflow, serta satu watermark. Full E2E menghasilkan 108
pass dan dua capture-only skip; unit 156/156, build/budget, serta audit
dependency nol. Production belum berubah karena receipt backup/restore exact
S112 dan approval belum tersedia; persistence setting dan kontrak bisnis tidak
berubah.

All-menu compact source kumulatif `2b0331d5` menutup gap akses route
Studio Console pada layar sempit dan reflow zoom. Sebelumnya indikator
`Menu n/8` hanya berupa teks dan sebagian route berada di luar area horizontal;
operator harus berpindah satu halaman untuk menemukan route lain. Indikator kini
menjadi disclosure 44 piksel yang membuka delapan route berkelompok, dengan item
48 piksel, label/deskripsi, current state, keyboard, Escape focus restoration,
dan fokus konten setelah memilih route. Navigasi paged lama tetap tersedia dan
sidebar desktop tidak berubah. Red 3/3 menjadi focused 5/5, regresi navigasi
7/7, unit 156/156, full E2E 113 pass/2 capture-only skip, build/budget, audit
dependency nol, forced-colors, reduced-motion, no-overflow, dan satu watermark
lulus. Coverage mencakup 390x844, reflow efektif 125/150/200 persen, Windows
compact, MacBook, Full HD, QHD, serta 4K. Source tersebut dipromosikan sebagai
release `20260805170231-2b0331d`; perilakunya diwarisi Studio aktif
`20260806050546-3b66f8d` dengan rollback `20260805155605-3b66f8d`. Permission,
device/session, foto, payment, tenant, local-first, dan output 4R tidak berubah.
Subscription tenant tidak diaktifkan; keputusan founder hanya melewati UAT
subscription untuk promosi frontend ini dan business readiness tetap terbuka.

Owner/API production `9ee5bcca14ace7771a169bf8823df1e9ba7241c9` menerapkan
keputusan founder `DEC-038`:
`Simpan Draft` tetap menyimpan frame privat, sedangkan `Publish Frame` menjadi
aksi utama yang menjalankan save draft lalu publish secara berurutan. Kegagalan
publish tidak membuang draft yang sudah berhasil disimpan. Kode ber-spasi seperti
`SPC 18` dinormalisasi menjadi `spc-18`, dan error validasi/quota dari API
ditampilkan secara spesifik. Build, focused Playwright, 75 test fitur SagaView
dengan 613 assertion, focused safety 15/15, audit Composer/npm nol vulnerability,
route check, dan diff check lulus. Guarded gate 6/6, backup, canary, payment
boundary, services, header/journal, route, HTTP smoke, dan bundle marker lulus.
Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada backend release
`20260806050513-1158926` dan Studio `20260806050546-3b66f8d`.

## Fitur MVP

`CONFIRMED`: journey Studio, output 4R, completion/privacy handoff,
Owner Console, trial dua fase, subscription, dan public self-service aktif di
production.

## Roadmap

1. Founding Studio Pilot tiga studio dan observasi support/incident.
2. Verifikasi implementasi dan penggunaan limit Growth/Pro pada cohort nyata.
3. Evaluasi readiness mass self-service berdasarkan telemetry ter-redact.
4. `NEEDS CONFIRMATION`: timing integrasi SagaBook; subscription tetap terpisah.

## User journey

Owner memilih plan → provisioning → operator mengaktifkan device → membuat
session → import → customer memilih/edit → review → export/print → customer
memanggil operator → operator memverifikasi handoff → cleanup/reset.

## User flow

Device lease hanya mengunci Studio/start-session. Owner Console dapat digunakan
dari browser setelah login. Customer tidak mereset sesi sendiri; cleanup
recovery state, error/offline/reconnect/retry, dan emergency transfer
fail-closed. Entitlement ditentukan server; UI hanya merender snapshot.

## Business model

Subscription SaaS bulanan per produk. SagaView dan SagaBook tetap memiliki
subscription, entitlement, ledger, serta cancellation terpisah.

## Pricing

- Growth Rp200.000 per bulan.
- Pro Rp500.000 per bulan.
- Trial 14 hari: 7 hari full access lalu 7 hari plan-limited, tanpa auto-charge.
- Bundle ditunda.

Growth: 1 device, 50 frame aktif, 3 preset, offline 24 jam, 2 GB aset frame
cloud, dan laporan dasar. Pro: 4 device, 100 frame aktif, 10 preset, offline 168
jam, 10 GB aset frame cloud, laporan lanjutan, activity log, dan priority
support. Session/foto dipasarkan unlimited dengan fair-use; foto tetap lokal.

`CONFIRMED` melalui `DEC-039`: Growth 50 dan Pro 100 frame aktif telah live.
Source `c8538060f64cfabce46dc7f837531015673e7a1c` menyelaraskan commercial
policy, license/trial entitlement, katalog owner, boundary publish, migrasi
metadata additive, serta release safety. Seluruh benefit lain tetap.

`CONFIRMED` — kontrak ini aktif di production. Source backend aktif adalah
`f515dd7a1066b2c6b5244bb1f5bc48d306430768`, release
`20260807023502-f515dd7`. Source Studio aktif adalah
`05c5fda07a342d2977d8e6e3d836adb17a84605b`, release
`20260807023502-05c5fda`; rollback backend/Studio adalah
`20260807010717-d7542fd` / `20260807010718-05c5fda`. Session, Frames, dan Install App kini memakai render
awal SSR/client deterministik sehingga tidak memicu hydration mismatch. Output
Settings hanya menampilkan action simpan saat
dirty, tidak menutup konten mobile, mempertahankan action sticky desktop, dan
menjaga status `Belum disimpan` tetap jujur. Kontrak folder, device, foto lokal,
payment, dan output PNG 4R tidak berubah.

General Settings juga memakai action simpan kontekstual. Action hilang ketika
form bersih, mengikuti konten tanpa horizontal overflow pada mobile 390x844,
dan tetap sticky pada desktop. Accessible name, target 44 px, forced-colors,
reduced-motion, paket sesi, promo, kategori/harga, dan workflow operasional
dipertahankan.

Consent Dashboard sekarang membedakan loading, offline/error, populated,
filtered-empty, dan recovered. Gagal fetch tidak lagi menyamar sebagai data
kosong; retry tersedia tanpa memutasi izin atau file foto. Filter selected state,
target 44 px, mobile/desktop, keyboard, forced-colors, reduced-motion, dan tepat
satu `Powered by SagaView` dijaga. Kontrak backend, customer flow, local-first,
privacy, dan output 4R tidak berubah.

Install App sekarang membedakan prompt otomatis siap, install manual, dan
aplikasi sudah terpasang. Operator selalu mendapat satu action utama yang jujur,
status live, panduan Chrome/Edge atau iOS, recovery cek status, dan jalur kembali
ke Session. CTA utama 48 px serta keyboard, forced-colors, reduced-motion,
mobile/desktop, no-overflow, dan satu `Powered by SagaView` tervalidasi. Device,
session, foto lokal, backend, payment, tenant isolation, dan output 4R tidak
berubah.

Navigasi Studio Console mobile sekarang menunjukkan posisi `Menu n/8`, memakai
tombol sebelumnya/berikutnya 44 px, dan memusatkan route aktif. Operator dapat
menemukan Output, Izin Foto, Changelog, serta Install App tanpa menebak bahwa
tab dapat digeser. Session, permission, local-first, customer flow, backend,
payment, dan output 4R tidak berubah.

## Kompetitor

`NEEDS CONFIRMATION`: competitor research. Kategori pembanding: gallery
selection, kiosk/photo booth software, print workflow, dan manual folder/file
selection.

## Diferensiasi produk

`CONFIRMED`: local-photo boundary, 50/200/500 workflow, exact 4R output,
offline recovery, dan pemisahan Owner Console dari device-bound Studio.

## Brand positioning

Local-first studio workflow setelah sesi—dari folder ke hasil 4R.

## Messaging

- “Pilih, atur, review, dan cetak tanpa mencatat nomor file.”
- “Foto customer tetap di perangkat studio.”
- “Owner Console berbeda dari perangkat Studio yang menjalankan sesi.”

## FAQ

**Apakah foto masuk cloud?** Tidak sebagai product contract; metadata
operasional tertentu tetap diperlukan.

**Bisa dipakai tanpa SagaBook?** Ya, produk dijual satuan.

**Apakah trial 14 hari live?** Ya. Enforcement dua fase aktif server-side dan
tanpa auto-charge.

**Apakah semua komputer dapat memulai sesi?** Owner Console dapat diakses lintas
device, tetapi Studio/start-session tetap mengikuti entitlement dan exclusive
device lease.

## Technical overview

Studio frontend/PWA local-first; backend menyimpan account, membership produk,
entitlement, device/session metadata, frame sync, subscription, payment state,
dan operational state. Role/capability, session/cookie, subscription, audit,
dan cancellation SagaView terpisah dari SagaBook.

## Integrasi

Payment provider, notification, printer Windows/Epson, dan future SagaBook
account-link seam. Satu canary Tokopay bernilai rendah telah membuktikan jalur
callback exactly-once; release tidak membuat transaksi kedua.

## Data yang digunakan

Organization, membership, product account, entitlement, device lease, session,
frame metadata, redacted completion event, subscription, payment state, dan
audit. Customer photo bytes tetap lokal; privacy mode memasking nama output
pada UI customer.

## Reliability, security, dan operations

- Exact backend/Studio release immutable `20260807023502-f515dd7` dan
  `20260807023502-05c5fda`; rollback backend `20260807010717-d7542fd` serta
  Studio `20260807010718-05c5fda` tersedia.
- Release Izin Foto lulus 156 unit, focused 18/18, 116 skenario Playwright
  executable dalam dua evidence round, build/budget, npm audit nol, exact
  preflight, promosi atomik, service/header/journal, empat route 200, serta
  Playwright production 4/4 pada 390, 1440, QHD, dan 4K.
- Release editor frame `20260805053500-9b4b68a` lulus 119 test SagaView/1.248
  assertions, focused Playwright, build, audit dependency, gate production
  6/6, backup, canary, service/header/journal, serta public smoke. Authenticated
  owner visual UAT terbaru masih `NEEDS CONFIRMATION` karena vault lokal
  terkunci; exact-source regression dan verifikasi bundle production lulus.
- Additive migration, encrypted backup, disposable restore, deploy gate, dan
  rollback compatibility lulus.
- HSTS dan frame policy konsisten pada public, Laravel, dan Studio HTML routes.
- Monitoring pascadeploy menunjukkan services aktif, failed job nol, dan tidak
  ada error-journal baru pada window verifikasi.
- Physical Windows/Epson dan recovery memakai owner attestation carry-forward;
  artifact restricted tetap berada di evidence privat.
- Responsive production audit pada 390x844, 1024x768, dan 1440x900 tidak
  menemukan overflow, target audit di bawah 44 px, atau Axe serious finding.

## Risiko dan asumsi

- Business readiness mass-scale belum dibuktikan melalui controlled cohort dan
  observasi support nyata.
- Hardware/browser/storage behavior tetap memerlukan UAT per studio.
- `ASSUMPTION`: Epson L8050 adalah printer pilot utama.
- Identitas badan usaha/pajak dan policy lintas produk masih perlu finalisasi
  owner sebelum ekspansi penjualan luas.

## KPI dan success metrics

`CONFIRMED` untuk exit pilot: minimal 3 studio, onboarding rata-rata maksimal
60 menit, activation maksimal 1 hari, 50 session nyata total dan minimal 10 per
studio, minimal 95% core journey tanpa engineer, 4R/offline/transfer lulus per
studio, SLA minimal 90%, dan minimal 2 studio lanjut berbayar. Baseline aktual
masih `NEEDS CONFIRMATION`.

## Sales dan content

Demo session end-to-end, jelaskan data boundary, hardware requirement, plan,
trial, support, dan batas klaim. Gunakan foto sintetis/non-PII dan
[Pitch Demo](PITCH_DEMO.md).

## Ide konten pemasaran

200 foto tanpa upload cloud; preview-to-print 4R; Owner vs Studio Console;
offline recovery.

## Contoh caption

`PROPOSAL`: “Dari 200 foto ke hasil 4R tanpa mencatat nomor file. SagaView
menjaga selection, framing, dan output dalam satu alur local-first.”

## Ide campaign

`PROPOSAL`: “200 Photos, One Session” sebagai controlled demo dengan foto
sintetis/non-PII.

## Sales talking points

Demo session end-to-end, jelaskan local-photo boundary, harga/trial, device
lease, support, dan batas klaim business readiness.

## Objection handling

- “Internet studio tidak stabil”: jelaskan offline/reconnect scope dan batasnya.
- “Bisa di semua komputer?”: Owner Console dan Studio device lease berbeda.
- “Apakah langsung cetak?”: output harus dikonfigurasi dan diuji pada printer
  studio.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagaview).
