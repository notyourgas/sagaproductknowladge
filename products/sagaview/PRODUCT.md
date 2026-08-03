# SagaView Product Knowledge

Updated: 3 Agustus 2026
Evidence status: production deployed + production activated

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaView. Detail lengkap berada di
[DOSSIER](DOSSIER.md); keputusan terbuka berada di
[GAPS](../../GAPS.md#sagaview).

## Konteks

Fakta release di dokumen ini mengacu pada exact source dan runtime production
yang diverifikasi sampai 3 Agustus 2026.

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

## Status saat ini

- Delivery: `PRODUCTION_DEPLOYED`.
- Activation: `PRODUCTION_ACTIVATED`.
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal; pilot
  terkontrol dan pitch produk dapat dijalankan.

### Runtime production

- Backend source:
  `f26bb57737fc25a0a40d350dc26ca727d30885b2`.
- Backend release aktif: `20260802042221-f26bb57`; backend tidak dipromosikan
  ulang dan migration tidak diperlukan pada batch hydration Studio.
- Studio source aktif:
  `2ab72618a13af6b52d33ee946c56b4b699b70de6`.
- Studio release aktif: `20260803163234-2ab7261`.
- Studio release sebelumnya yang menjadi rollback:
  `20260803153923-bb2abce`.
- Saga Platform source:
  `a6bb8afbfe2353597ea55329c50829a220bc5d3e`.
- Saga Platform release: `20260802104018-a6bb8af`.
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

- Backend shared runtime: 960/960 test, 11.007 assertions dari release aktif;
  batch navigasi tidak mengubah backend atau database.
- Studio S92: 156 unit test dan 95/95 E2E default-parallel; focused fallback
  bantuan 2/2 dan katalog 5/5 lulus. Production smoke fallback pada 390x844 dan
  1440x900 lulus tanpa request support otomatis, page/console error, overflow,
  kebocoran diagnostik, atau watermark ganda.
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

- Backend tidak berubah pada batch app-only ini.
- Studio: `20260803153923-bb2abce`.
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
