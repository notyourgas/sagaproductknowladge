# SagaView Dossier

## S235 physical UAT final availability receipt

Studio exact `831ea54bf979fc2bf8d24f9d33f07f77d7fd4053` membuat hasil recheck
availability S234 dapat diaudit langsung dari `evidence-index.json`. Sebelumnya
Finalize sudah mewajibkan Studio dan API tetap HTTP 200, tetapi status akhir itu
belum tercatat dalam receipt.

Evidence index v9 menambahkan `finalAvailability` berisi status HTTP akhir serta
SHA-256 URL Studio/API yang sudah diikat Preflight. URL mentah, credential, path
lokal, foto, output, dan data customer tidak disimpan. Release contract menolak
evidence sebelum v9. Contract 18/18, 219 unit, format/lint/typecheck, build 2.121
client/195 SSR, bundle 299,7 KiB/450 KiB, tiga simulasi storage, dan npm audit
nol lulus. Status `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
production tidak berubah dan 14 gate fisik masih residual.

## S234 physical UAT finalize availability binding

Studio exact `d9d95f518fd1cb49cc8e235b1afb935789954fe6` mengikat
availability halaman Studio dan API health dari Preflight sampai Finalize.
Sebelumnya kedua route hanya diperiksa saat Preflight, sehingga evidence manual
berpotensi disahkan setelah halaman utama atau API kandidat berhenti tersedia.

Preflight v8 menyimpan SHA-256 kedua URL, lalu Finalize menolak URL yang berubah
dan memeriksa ulang HTTP 200. Guardrail candidate URL tetap melarang endpoint
production dan evidence tidak membawa credential, path lokal, foto, atau data
customer. Release contract menolak evidence index lama. Red-green contract
17/17, 218 unit, format/lint/typecheck, build 2.121 client/195 SSR, bundle
terbesar 299,7 KiB dari batas 450 KiB, tiga simulasi storage, dan npm audit nol
lulus. Status `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production,
database, payment, printer/service, dan SagaBook tidak berubah.

## S233 physical UAT finalize printer binding

Studio exact `c81e934cd2907196f8be35d764ced7b0a76b7068` mengikat printer
physical output UAT dari Preflight sampai Finalize. Sebelumnya EPSON L8050,
driver, Print Spooler, dan antrean kosong hanya diperiksa saat Preflight.
Finalize kini memeriksa ulang Spooler aktif, printer/driver yang sama, serta
antrean kembali kosong sebelum evidence dapat ditutup.

Queue dipilih deterministik bila lebih dari satu perangkat cocok. Identitas
queue, driver, port, dan versi driver hanya disimpan sebagai SHA-256; nama,
port, dan path driver mentah tidak dipersistenkan. Schema preflight/index naik
ke v7 dan release contract menolak v6. Red-green contract, 217 unit,
format/lint/typecheck, build 2.121 client/195 SSR, bundle budget, tiga simulasi,
physical fail-closed probe, dan npm audit nol lulus. Status `PUSHED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, printer/service,
database, foto/path/output customer, pembayaran, dan SagaBook tidak berubah.

## S232 physical UAT finalize storage binding

Studio exact `72e7a0a940a3e428cb8cdc6bb4e1d166abeea45d` mengikat storage
physical output UAT dari Preflight sampai Finalize. Sebelumnya fixed NTFS dan
kapasitas hanya diperiksa pada Preflight, sehingga pergantian folder/volume
setelahnya belum ditolak. Finalize kini mewajibkan `OutputDirectory`, mencocokkan
hash folder serta identitas volume, dan memeriksa ulang fixed NTFS serta ruang
bebas minimum 10 GiB.

Evidence hanya menyimpan SHA-256 folder dan identitas volume; path serta serial
volume tidak dipersistenkan mentah. Schema preflight/evidence index naik ke v6
dan release contract hanya menerima v6. Red-green contract test, tiga simulasi
storage, 216 unit, format/lint/typecheck, build 2.121 client/195 SSR, bundle
budget, dan npm audit nol lulus. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production, database, foto/path/output customer,
printer, pembayaran, dan SagaBook tidak berubah.

## S231 physical UAT fixed NTFS gate

Studio exact `f2f67bea9004549e16cc0d4206dffe9830718c2b` memperketat
orchestrator physical output UAT. Preflight kini membaca `DriveType` dan
filesystem target: selain fixed menghasilkan `output_drive_not_fixed`, selain
NTFS menghasilkan `output_filesystem_not_ntfs`, dan drive yang tidak dapat
diidentifikasi gagal aman dengan kapasitas nol. Evidence hanya mencatat status
drive/filesystem tanpa folder path.

Tes kontrak merah sebelum implementasi lalu hijau. Simulasi fixed NTFS 50 GiB
tetap hanya siap untuk validasi script; removable exFAT 50 GiB diblokir oleh
dua alasan eksplisit; fixed NTFS 9 GiB tetap diblokir kapasitas. Gate lengkap
lulus 215 unit, format/lint/typecheck, build 2.121 modul/budget, dan npm audit
nol. Status `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Perubahan
hanya tooling UAT; production, runtime, database, printer, pembayaran, foto,
path, output customer, dan SagaBook tidak berubah.

## S230 physical output UAT preflight blocked

Audit read-only dijalankan pada kandidat exact Studio
`c132c04eb483ac3ab699d424af1ed5acf395a4b4` dan backend
`a648c180310e197934ac84eed8519e51ae90f0eb`; kedua worktree bersih dan remote
memuat exact commit. Print Spooler berjalan dengan startup otomatis. Namun,
tidak ada fixed NTFS dengan ruang bebas minimum 10 GiB: dua volume internal
tersisa 6,44 GiB dan 0,60 GiB. Media removable mempunyai 26,82 GiB tetapi
berformat exFAT, sehingga tidak sah sebagai target output kontrak UAT.

Daftar printer hanya memuat printer virtual; queue EPSON L8050 dan driver
EPSON/L8050 tidak ditemukan. Karena prasyarat fisik belum terpenuhi, runner
tidak dipaksakan dan 14 gate physical output UAT—termasuk galeri 50/200/500,
permission/recovery, quota/disk-full, offline/no-upload, isolasi 10 sesi, serta
print portrait/landscape—belum dijalankan. Status
`PHYSICAL_UAT_PREFLIGHT_BLOCKED / IMPLEMENTED_NOT_DEPLOYED`; production,
database, pembayaran, SagaBook, serta data customer tidak berubah.

## S229 disposable restore rehearsal validated

Restore dijalankan dari salinan media terpisah S228 tanpa menyentuh production
atau data customer. Dua archive lulus scan path traversal dan dapat diekstrak;
359/359 file Studio cocok byte-for-byte dengan worktree exact bersih, sedangkan
2.211 file runtime backend cocok dan dua workflow CI memang dikecualikan oleh
`/.github export-ignore`. Marker commit/manifest Studio cocok dengan commit
`e0416650b95c25f2a2486efe17b15f8bf4510129` dan tree
`4bbeba9787149278cd799ae01d8d65fedcfc9986`. Dua bundle dipulihkan ke bare
repository disposable; backend kembali ke
`a648c180310e197934ac84eed8519e51ae90f0eb` / tree
`e08644bf67112018bbacfd15ebc56c59dab03477`, dan keduanya lulus full fsck.

Kontrak marker ditutup pada Studio exact
`c132c04eb483ac3ab699d424af1ed5acf395a4b4` / tree
`0ff5f298264a75409ac850ca4f2ddfbb9ce8a107`: `.release-commit` dan
`.release-manifest.json` dikecualikan dari formatter, tetap diwajibkan oleh tes
release, dan tetap ditambahkan oleh packager. Tes kontrak merah lalu hijau;
full source check lulus 214 test, build, dan budget. Artifact baru berisi 383
entry/361 file, lolos path-safety, membawa exact marker, mempunyai archive,
bundle, manifest, dan checksums dengan hash identik pada dua media. Restore
NTFS native kemudian lulus clean install 600 package, format, lint, typecheck,
214 unit test, build/budget, serta npm audit nol tanpa `.git`.

Backend tetap exact `a648c180310e197934ac84eed8519e51ae90f0eb` / tree
`e08644bf67112018bbacfd15ebc56c59dab03477`. Runtime archive lulus clean
Composer install, validation/audit, focused Support Hub 6 test/58 assertion,
route contract lima route sah tanpa upload, clean npm install, build 5.097
modul, dan npm audit nol. Karena dua workflow CI sengaja dikecualikan archive,
full regression dijalankan dari bundle exact-source dengan dependency lokal;
994 test/11.460 assertion lulus. Status `RESTORE_REHEARSAL_VALIDATED /
RELEASE_ARTIFACT_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
Production, database, SagaBook, payment, dan data customer tidak berubah.

## S228 paired immutable no-upload candidate

Studio S226 `e0416650b95c25f2a2486efe17b15f8bf4510129` dan backend S227
`a648c180310e197934ac84eed8519e51ae90f0eb` dipaketkan sebagai satu kandidat
no-upload tanpa deployment. Setiap komponen memiliki archive, evidence
manifest, SHA-256 sums, dan recovery git bundle; paired manifest mengunci exact
commit/tree serta kontrak local-first, upload Support Hub nonaktif di client
dan server, dan pembayaran tetap off-app. Sepuluh file berjumlah 199.703.531
byte memiliki hash identik pada salinan utama dan USB terpisah. Bundle verify
menunjukkan history lengkap; archive berisi 383 entry Studio dan 2.379 entry
backend tanpa metadata `.git`. Kontrak release Studio 4/4 serta focused backend
6/6 dengan 58 assertion lulus. Status `RELEASE_ARTIFACT_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, database, payment,
foto/path/editor/output customer, dan SagaBook tidak berubah. Media USB exFAT
hanya menjadi backup artifact dan tidak menutup gate output fixed NTFS 10 GiB
atau kebutuhan EPSON L8050/driver.

## S227 backend device Support Hub no-upload enforcement

Backend source `a648c180310e197934ac84eed8519e51ae90f0eb` menghapus handler
`POST /api/admin/support/device/upload` dan method controller yang sebelumnya
dapat meneruskan screenshot. POST langsung sekarang 405 karena hanya wildcard
OPTIONS/CORS yang tersisa dan tidak membuat attachment. Release gate juga
menolak kandidat bila route upload SagaView muncul kembali. Focused 6/6 dengan
58 assertion, full 994/994 dengan 11.460 assertion, route list empat endpoint
sah, formatter, build 5.097 modul, Composer validation/audit, dan npm audit nol
lulus. Status `PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
production, database/migration, payment, SagaBook, dan data customer tidak
berubah.

## S226 Support Hub Studio no-upload enforcement

Studio source `e0416650b95c25f2a2486efe17b15f8bf4510129` menghapus kontrol
screenshot/file dari Support Hub dan mencabut operasi `upload` dari allowlist
client. Permintaan upload kini ditolak lokal sebelum `fetch`; bantuan online
hanya menerima teks dan metadata teknis yang sudah disaring. Diagnostik aman
tetap dibuat dan diunduh secara lokal. Full 213 unit, focused 5 unit/contract,
3 browser support, visual 390x844 dan 1440x900, Axe nol, build/budget,
format/lint/typecheck, serta audit dependency nol lulus. Status `PUSHED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, backend/database,
payment, SagaBook, dan data customer tidak berubah.

## S225 device transfer viewport acceptance

Studio source `36db9a452530cf09f68edfa932bf023bd0362286` menambah acceptance
eksplisit untuk layar konflik dan pemindahan perangkat. CTA transfer tetap
aktif, fokus keyboard, minimal 44x44 px, dan seluruhnya berada di viewport pada
390x844, enam monitor 1280-3840, serta reflow efektif zoom 125/150/200%.
Forced-colors dan reduced-motion teruji; tidak ada overflow horizontal dan Axe
nol serious/critical pada empat anchor. Exact-commit lulus 212 unit, lima
Playwright device-transfer berurutan, format/lint/typecheck, build/budget, dan
audit dependency nol. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; hanya test/evidence dan dokumentasi berubah.
Production, backend/database, foto/path, payment, SagaBook, dan no-upload tetap
sama. Authenticated UAT pada perangkat Studio nyata masih residual.

## S224 Session viewport, zoom, and forced-colors closure

Studio source `3a21da0c4732a483e08aea80edf2bba1caec6907` memperluas acceptance
Session ke 1280/1440/1512/1920/2560/3840 serta viewport efektif zoom
125/150/200%. Satu CTA kontekstual tetap fokus dan minimal 48 px, disclosure
perangkat tetap keyboard-operable dan minimal 44 px, satu signature serta
no-overflow terjaga. Regresi menemukan active Session pada navigasi mobile
forced-colors hanya 1,02:1; warna sistem `Highlight`/`HighlightText` menutup
pelanggaran WCAG 1.4.3. Exact-commit lulus 212 unit, enam Playwright berurutan,
Axe, format/lint/typecheck, build/budget, dan audit dependency nol. Status
`PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, data,
backend, dan kontrak no-upload tidak berubah.

## S223 Changelog single-detail and zoom acceptance

Studio source `f0ce5f7bcce592410e4fe19f183ebcd5104e8fe9` menambah acceptance
eksplisit untuk single-detail Changelog dan reflow zoom tinggi. Membuka detail
kedua lewat keyboard menutup detail pertama; pencarian mempertahankan fokus dan
menutup detail yang tidak lagi sesuai. Viewport efektif 640x360 sebagai
simulasi 1280x720 pada zoom 200% tidak overflow, dan Axe nol serious/critical.
Empat E2E Changelog, focused exact-commit 1/1, 212 unit, format/lint/typecheck,
build/budget, serta audit dependency nol lulus. Status `PUSHED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; hanya test/evidence berubah,
runtime/production/backend/database dan no-upload tetap sama.

## S222 recovery desktop and zoom acceptance matrix

Studio source `b605bd54ebfe1c1a11049df9317fa2447b537450` menambah matriks
acceptance recovery pada 1280/1512/1920/2560/3840 dan viewport efektif untuk
zoom 125/150/200%. Guidance tetap terlihat, retry menerima fokus serta Enter,
target minimal 44 px, dan tidak ada overflow horizontal. Full 212 unit dan 19
Playwright, focused exact-commit 1/1, Axe nol serious/critical, build/budget,
lint/typecheck, serta audit dependency nol lulus. Status `PUSHED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; hanya test/evidence berubah,
production/backend/database dan no-upload tetap sama. Residual S220 tetap.

## S221 recovery accessibility modes

Studio source `3139f91e7c5edc210f1a609536407e34eefcc264` memperbaiki label
tombol utama yang hilang pada Windows forced-colors. Tombol retry recovery dan
aksi utama sekarang memakai warna sistem kontras, tetap memiliki fokus
keyboard, target minimal 44 px, dan retry dapat dijalankan dengan Enter. Full
212 unit dan 18 Playwright, focused exact-commit 1/1, forced-colors,
reduced-motion, Axe nol serious/critical, build/budget, lint/typecheck, dan
audit dependency lulus. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production/backend/database dan no-upload tidak
berubah. Residual fisik S220 tetap terpisah.

## S220 Windows output and printer preflight

Audit read-only pada perangkat Windows memeriksa fixed volume, health disk,
spooler, printer, driver, dan exact candidate. C/D berada pada satu SSD sehat;
C hanya bebas 1,56 GiB dan D 1,94 GiB, sehingga tidak ada target yang lolos
gate 10 GiB. Spooler `Running/Automatic`, tetapi tiga printer yang terpasang
tidak mencakup EPSON L8050 dan tidak ada driver EPSON/L8050. Delapan worktree
SagaVIEW terukur sekitar 0,71 GiB dan tidak dihapus. Studio S219
`25012842e9e74ba3ac6a9dee566e205446b656ea` tetap exact/clean/remote.
Status `AUDIT_COMPLETE / BLOCKED_PREFLIGHT`; physical output UAT belum dimulai
dan production tidak berubah.

## S219 recovery initial-load failure transparency

Studio source `25012842e9e74ba3ac6a9dee566e205446b656ea` menutup false-empty
state ketika IndexedDB gagal membaca checkpoint saat halaman dibuka. UI kini
memiliki state loading, failure persisten tiga bagian, dan retry. Import folder
serta customer flow fail-closed sampai read berhasil, mencegah checkpoint yang
belum terbaca tertimpa sesi baru. Raw browser error tidak dirender dan foto
tetap local-first/no-upload. Full 212 unit dan 17 browser scenario, focused
exact-commit 10+2, responsive/a11y dua viewport, build/budget, dan audit
dependency lulus. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production/backend/database tidak berubah. Physical
Windows storage failure tetap residual UAT terpisah.

## S218 recovery clear-failure preservation

Studio source `889baae919869f56b560c8c10a605ec38314b421` menutup dua false-success
path pada cleanup checkpoint lokal. `Buang Draft` tidak lagi menyembunyikan
draft sebelum delete IndexedDB berhasil; `Reset Session` tidak lagi mereset
state lokal atau memberi toast sukses bila delete gagal. Keduanya memakai
in-flight guard dan panel persisten yang memisahkan kegagalan, keamanan data,
serta aksi berikutnya. Full 211 unit dan 15 browser scenario, focused
exact-commit 9+2, responsive/a11y dua viewport, no-upload, build/budget, dan
audit dependency lulus. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production/backend/database tidak berubah. Initial
recovery-load failure masih residual terpisah.

## S216 recovery checkpoint write-failure transparency

Studio source `d9a284812b29ab8688365e319c2c098d4357ca8c` menutup silent
failure ketika IndexedDB tidak dapat menyimpan checkpoint setelah folder lokal
diimpor. Warning kini menjadi pesan dominan dan menjelaskan kegagalan, keamanan
sesi/foto lokal, larangan upload, serta aksi ruang browser sebelum operator
membuka alur customer. Foto yang sudah dipilih tetap tersedia di state lokal;
toast sukses lokal tidak ditampilkan pada jalur gagal ini. Unit 209/209,
Playwright 13/13, responsive/a11y dua viewport, no-upload check, build/budget,
dan audit dependency lulus. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production, backend, dan database tidak berubah.

## S215 storage-target eligibility audit

Audit read-only menutup ambiguitas volume E. Volume yang S214 lihat warning
sekarang tidak terdaftar sebagai volume, partisi, atau disk lokal, sehingga
tidak boleh dipakai untuk output SagaVIEW. Hanya C dan D tersedia pada satu SSD
NVMe sehat; ruang bebasnya 3,05 GiB dan 2,01 GiB, tetap di bawah gate 10 GiB.
Spooler berjalan, tetapi EPSON L8050 dan driver belum terpasang. Backend S210
`a07d8af9924b49977adf184a921979fcd8bdec4a` dan Studio S206
`d0655c46f08e0a8322dd4c30fb47c29c25e11fe9` tetap clean/upstream exact.
Status `AUDIT_COMPLETE / BLOCKED_PREFLIGHT`; tidak ada mutasi source,
production, database, atau file operator.

## S214 storage-remediation audit

Audit read-only memperbarui risiko kapasitas: C 0,88 GiB, D 2,04 GiB, dan E
8,09 GiB dengan health warning. Empat belas worktree SagaVIEW lama berjumlah
9,63 GiB terbukti clean serta sama dengan upstream/remote. Daftar tidak
memasukkan worktree aktif S210/S206, artefak release immutable, atau worktree
dirty. Jika Andreas menyetujui pensiun worktree dan state diperiksa ulang tepat
sebelum operasi, ruang D diproyeksikan menjadi 11,67 GiB. Audit tidak menghapus
file; UAT tetap `BLOCKED_PREFLIGHT` pada kapasitas dan perangkat printer.

## S213 output-capacity preflight audit

Audit read-only memeriksa seluruh volume lokal tetap sebelum mencoba target
output alternatif. Hanya dua volume tersedia; keduanya sehat tetapi ruang
bebasnya 2,71 GiB dan 2,17 GiB, di bawah gate 10 GiB. Karena itu tidak ada
folder output yang dipaksakan dan preflight tetap fail-closed. Backend S210
`a07d8af9924b49977adf184a921979fcd8bdec4a` serta Studio S206
`d0655c46f08e0a8322dd4c30fb47c29c25e11fe9` tetap clean dan remote exact.
Residual UAT: kapasitas output, EPSON L8050, dan driver; production tidak
berubah.

## S212 exact-runtime preflight closure

Git archive exact backend S210
`a07d8af9924b49977adf184a921979fcd8bdec4a` dijalankan sebagai runtime
disposable dengan marker release terpisah dari source checkout. Ini membuat
source tetap clean sekaligus memberi backend health dan runtime provenance HTTP
200 dengan product/commit exact, no-store, dan noindex. Studio S206
`d0655c46f08e0a8322dd4c30fb47c29c25e11fe9` page/runtime provenance juga
200. Focused backend 4/4 dengan 14 assertion dan Studio 2/2 lulus. Harness
preflight exact kini hanya mencatat EPSON L8050/driver dan kapasitas output
2,72 GB sebagai blocker. Runtime closure `LOCAL_VALIDATED`; UAT keseluruhan
tetap blocked dan production tidak berubah.

## S211 physical-UAT exact-candidate preflight

Preflight lokal memakai backend S210
`a07d8af9924b49977adf184a921979fcd8bdec4a` dan Studio S206
`d0655c46f08e0a8322dd4c30fb47c29c25e11fe9`. HEAD, upstream, dan remote
branch kedua kandidat exact; kedua worktree kembali clean setelah marker
sementara dibuang. Windows 11, Chrome, spooler, antrean cetak kosong, profil
browser terpisah, Studio page/runtime provenance 200, dan backend health 200
lulus. Gate awal berhenti pada marker runtime backend konfigurasi lokal; S212
kemudian menutupnya dengan artifact disposable. Ketiadaan EPSON L8050/driver
serta ruang output di bawah minimum 10 GB tetap membuat harness berstatus
`BLOCKED_PREFLIGHT / hold_manual_evidence`; tidak ada finalize,
evidence foto customer, deploy, database write, atau perubahan production.

## S201 Owner Support Hub production activation

Source exact `c3d4bc5412ff70495bfae6498b21f73b464c04ad` aktif sebagai
release `20260814170455-c3d4bc5`. S199 memasang launcher Support Hub pada Owner
Console dan S200 membuktikan bootstrap/ask, scope `sagaview`, no-upload,
metadata allowlist, jawaban lokal, serta persistent safety warning pada browser
390x844 dan 1440x900. Build, backend 34/34 dengan 176 assertion, audit
dependency, archive/bundle/copy checksum, encrypted backup dan disposable
restore 149 tabel, deploy-gate 6/6, atomic switch, public smoke, route cache,
Owner asset, tiga service, source/database backup checksum, dan journal lulus.
Rollback langsung `20260813152501-ff0c178`. Status `PUSHED /
PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated Owner UAT masih
residual sebelum `BUSINESS_READY`. Tidak ada migration, payment, foto/path/
output upload, atau perubahan SagaBook.

## S198 Owner Changelog production activation

Source `ff0c178fe84b36d02fc530a051b0ebc4588715c0` aktif sebagai release
`20260813152501-ff0c178`. Fresh backup terenkripsi dipulihkan ke database
disposable dengan 149 tabel dan checksum VPS/off-VPS identik; migration tree,
pre/post gate 6/6, atomic switch, API/login/session, auth boundary, Owner asset,
service, dan journal lulus. Rollback langsung adalah
`20260811190515-475db4c`. Status `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED`; UAT Owner terautentikasi tetap residual sebelum
`BUSINESS_READY`. Tidak ada perubahan pada foto/path/output lokal atau kontrak
pembayaran off-app.

## S198 pre-activation blocker closed

Candidate nonaktif `20260813152501-ff0c178` sekarang memakai exact shared
storage setelah harness menghapus hanya path storage kandidat yang tervalidasi,
membuat symlink, lalu membangun config/route/view cache. Deploy-gate lulus 6/6;
current, rollback, database, migrasi, layanan, dan endpoint production tidak
berubah. Source tetap `ff0c178fe84b36d02fc530a051b0ebc4588715c0` dan status
menjadi `IMPLEMENTED_NOT_DEPLOYED / PREACTIVATION_READY`. Aktivasi production,
backup fresh, atomic switch, smoke, journal, dan rollback verification tetap
fase terpisah.

## S198 Owner Changelog deploy blocked before activation

Source `ff0c178fe84b36d02fc530a051b0ebc4588715c0` menambahkan pencarian/filter
riwayat rilis, satu detail terbuka, pemulihan hasil kosong, target kontrol 44
piksel, dan jalur kembali ke Galeri Frame. Build, focused browser dua viewport,
13 regresi browser terisolasi, 142 test/1.308 assertion SagaView, release
contract 9/9, npm audit nol vulnerability, dan Composer audit nol advisory
lulus. Fresh backup khusus SagaView dienkripsi AES-256, diverifikasi checksum,
disalin off-VPS, dan dipulihkan ke database disposable dengan 149 tabel.

Cutover tidak terjadi. Candidate deploy-gate lulus schema, route, security,
tenant pilot, dan source state, tetapi gagal pada backup freshness karena
manifest disk lokal tidak ditemukan setelah config cache kandidat dibuat.
Setelah dua correction round, deployment dihentikan fail-closed. Current tetap
`20260811190515-475db4c`, rollback tetap `20260810091159-f3b0774`, service dan
health tetap hijau. Status `LOCAL_VALIDATED / PUSHED /
IMPLEMENTED_NOT_DEPLOYED / BLOCKED_PREACTIVATION`. Rehearsal disposable lalu
membuktikan archive membawa direktori `storage`, sehingga link ke shared storage
terbentuk bersarang sebagai `storage/storage`. Harness lokal sekarang menghapus
hanya path storage kandidat yang tervalidasi, membuat exact shared-storage link,
baru menjalankan config cache/gate; syntax dan kontrak link lulus. Retry tetap
ditahan sampai release candidate baru membuktikan gate 6/6.

## S203 Owner entitlement production provenance correction

Audit read-only membuktikan S160
`28e0ab9b8159426633d88d52b68b5f713fa86aa2` berada dalam backend aktif
`475db4c21b00440004d88b8f876e3eb38aea6be0` / release
`20260811190515-475db4c`. Middleware owner mempunyai blob Git identik, dan
47/47 route Owner Surface masih memakainya. Fresh 7 test dengan 241 assertion
meliputi owner positif, admin/staff, role sesi palsu, batas device, membership
nonaktif, tenant mismatch, dan no-write activation token. Probe anonim
mengarah ke login atau concealment 404 yang aman; current/rollback, service,
health, dan journal tetap sehat. Status `SECURITY_VALIDATED /
DATA_INTEGRITY_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED /
PRODUCTION_SCREENED`; authenticated UAT akun sintetis tetap residual.

## S202 recovery/quota production provenance correction

Audit read-only membuktikan S169
`13e565814ed1c987e887b9024e87d6c0124c522d` merupakan ancestor exact Studio
aktif `86b04c9133fc7c28f6b4a6ff7c2aeb80d1480d58` / release
`20260811124309-86b04c9`. Focused 13 unit dan 16 browser test lulus untuk
checkpoint atomik, crash/reload guidance, sanitasi error, no-upload, cleanup,
serta ingest 50/200/500 foto. Production health dan rollback tetap sehat;
tidak ada deploy atau mutasi data. Status `PRODUCTION_DEPLOYED /
PRODUCTION_ACTIVATED / PRODUCTION_SCREENED`; physical Windows permission dan
disk/quota UAT tetap residual sebelum `BUSINESS_READY`.

## S193 backend rollback recovery activated

Source final `cf9ec67d7850ed9070455dcd072998889d0ac3e5` menambahkan preflight
read-only yang mengirim Bash melalui stdin, sehingga quoting PowerShell tidak
mengubah ekspresi disk `awk`. Exact current/rollback lineage, release marker,
containment, kapasitas disk, enam service, health backend/Studio, dan journal
diverifikasi tanpa file remote, restart, database write, atau perubahan
symlink. Focused 8/184, full backend 993/11.493, Pint, parser PowerShell,
syntax Bash, dua rehearsal disposable, Composer audit nol advisory, dan
preflight VPS read-only lulus. Fresh encrypted backup tiga database, checksum,
offsite round-trip, dan disposable restore lulus sebelum archive exact commit
diunggah dan hash-nya diverifikasi di VPS. Symlink rollback backend kemudian
diaktifkan secara atomik ke `20260810091159-f3b0774`; current backend tetap
`20260811190515-475db4c`, Studio tetap `20260811124309-86b04c9`, service tidak
direstart, database tidak dimutasi, health 200/200, dan journal error nol.
Status `SECURITY_VALIDATED / QA_VALIDATED / LOCAL_VALIDATED / PUSHED /
PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`.

## Tujuan dokumen

Merangkum product, UX, business, technical, sales, dan content contract
SagaView berdasarkan runtime production aktif.

## Konteks dan status bukti

- Updated: 13 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `PRODUCTION_ACTIVATED`
- Business readiness: `NEEDS CONFIRMATION` untuk penjualan massal
- Studio local production activation: `PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED / REMOTE_PUSH_PENDING`; exact source
  `86b04c9133fc7c28f6b4a6ff7c2aeb80d1480d58`, release
  `20260811124309-86b04c9`, terikat ke backend S190 `475db4c2`. Gate exact,
  clean-install npm 9, build/browser/audit, artifact immutable, backup, atomic
  switch, smoke, runtime provenance, service, journal release, dan rollback
  Studio lulus. UAT printer fisik lulus. Residual: push exact source Studio,
  authenticated normal-browser UAT. Symlink rollback backend sudah dipulihkan
  melalui S193.
- S191 cumulative Studio audit: `UIUX_VALIDATED /
  ACCESSIBILITY_VALIDATED / SECURITY_VALIDATED / QA_VALIDATED /
  RELEASE_TOOLING_VALIDATED / LOCAL_VALIDATED / SUPERSEDED / DO_NOT_DEPLOY`;
  source `6902f4b7a9ecda0b42eb9e3e77fb6b30e6f09ff1` menyatukan S185 dan S186 pada
  satu lineage bersih yang sudah `PUSHED`. Unit 207/207, Playwright relevan
  28/28, format/lint/typecheck/build, budget 299,7/450 KiB, serta audit
  dependency nol vulnerability lulus. Archive immutable, manifest SHA-256,
  git bundle, embedded source commit/tree, dan salinan kedua dengan hash identik
  tersedia. S191 bukan source production dan tidak membawa tambahan
  kompatibilitas npm 9 serta provenance runtime yang ada pada `86b04c9`.
- S190 session-cookie recovery: `SECURITY_VALIDATED / QA_VALIDATED /
  RELEASE_REHEARSAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED`; backend
  `475db4c21b00440004d88b8f876e3eb38aea6be0` / release
  `20260811190515-475db4c`. Sesi aplikasi dan API kini host-only; scope legacy
  dipensiunkan otomatis pada allowlist host SagaView tanpa memengaruhi host
  marketing atau domain produk lain. Focused final 5/5 dengan 53 assertion,
  regression terkait 58/58 dengan 805 assertion, dan full backend 987/987
  dengan 11.434 assertion lulus; Composer audit nol advisory. Backup,
  candidate cache, deploy gate, aktivasi/rollback rehearsal, atomic switch,
  health, service, journal, dan uji cookie stale production lulus. Tidak ada
  migration; Studio, frontend artifact, Nginx, dan data bisnis tidak berubah.
  Authenticated login profil browser normal tetap UAT residual sebelum
  `BUSINESS_READY`.
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
- S144 pilihan izin foto cepat:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` melalui S146
- S146 bantuan AI device-scoped dan consent gabungan:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`
- S147 boundary metadata sesi tanpa nama/path file:
  `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend
  `0cda8a09` / `20260808225730-0cda8a0`, Studio `df959ccb` /
  `20260808225730-df959cc`, rollback S146
- S148-S150 export fail-closed, recovery checkpoint atomik, dan cleanup import
  lokal: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Studio `4d25f606` /
  `20260809103753-4d25f60`, rollback langsung S147; backend tetap
  `0cda8a09` / `20260808225730-0cda8a0`
- S157-S158 payment candidates: `DEPRECATED / DO_NOT_DEPLOY`
- S159 estimate-only contract: `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / UIUX_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; backend `38c4221e`, Studio `6d7083a3`
- S161 publish frame idempotent: `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
  backend `49cc6673`, tanpa migration atau perubahan Studio
- S162 draft optimistic concurrency: `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / UIUX_VALIDATED / LOCAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`; source `063dfc1a`, tanpa deployment. Save
  Owner memakai ID+checksum revisi isi; stale 409 tidak mengubah draft, aset,
  kuota, katalog, atau audit. UI menahan Simpan/Publish sampai reload terbaru.
  Harness release memakai principal MySQL ephemeral dengan privilege hanya pada
  satu schema disposable; tiga rehearsal dan forced rollback lulus tanpa
  mengubah schema/data/symlink production. Guarded deploy awal plus dua
  correction rounds seluruhnya rollback. Snapshot lintas schema sudah
  dinormalisasi dengan verifikasi backfill default `0`, tetapi gate route akhir
  masih mencocokkan `mark-paid` settlement platform bersama. Route pembayaran
  SagaVIEW sendiri tidak ada. Production tetap baseline dan retry ditahan sampai
  acceptance route di-scope khusus SagaVIEW serta diuji lokal.
- S163 release route contract: `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / RELEASE_REHEARSAL_VALIDATED / STAGING_READY /
  IMPLEMENTED_NOT_DEPLOYED`; source `f3b07749`. Gate hanya memeriksa route
  `api/sagadev/` dan `api/admin/sagaview/`, mengizinkan settlement platform
  bersama, serta tetap menolak payment/provider/expiry/callback/QRIS pada
  namespace SagaVIEW. Tiga rehearsal, forced rollback, cleanup, dan audit
  baseline production lulus; production belum berubah.
- S163 guarded production release: `PRODUCTION_DEPLOYED`; backend
  `f3b07749` / `20260810091159-f3b0774`, Studio `6d7083a3` /
  `20260810091159-6d7083a`. Schema additive aktif, data lama tetap utuh, route
  payment SagaVIEW 405, layanan dan smoke hijau. Audit S180 menemukan direktori
  rollback S155 sudah tidak ada dan artifact Studio S155 melanggar kontrak
  estimate-only, sehingga S155 `DEPRECATED / DO_NOT_ROLLBACK`. Artifact exact
  runtime aktif serta backup terenkripsi lulus checksum dan menjadi dasar
  rollback deploy berikutnya. S181 membuktikan restore exact, marker
  fail-closed, switch kandidat sintetis, dan rollback ke pasangan aktif pada
  filesystem disposable; build/test/audit dependency juga lulus. Status
  `ROLLBACK_REHEARSAL_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; `PRODUCTION_ACTIVATED` dan `BUSINESS_READY` belum
  diklaim.
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

S147 menegakkan metadata-only pada session API. Studio menyaring label folder,
nama/path/ukuran foto, nama output, path absolut, dan key lokal sebelum request;
backend menolak field tersebut dan meredaksi response record historis. Dry-run
agregat menemukan 31 sesi historis, tanpa embedded image, dan keputusan founder
adalah mempertahankan row tersebut tanpa cleanup production. Backup tiga
database, restore disposable, rehearsal kandidat/rollback, live rollback,
snapshot preservation, header/CORS/service/journal, dan smoke exact release
lulus. Authenticated UAT menggunakan data sintetis/disposable; UAT operator pada
folder Windows nyata dan `BUSINESS_READY` tetap gate terpisah.

S205 source Studio `a7386800404dd2e136cadf9827d89d7e333499bb`
menutup residual corrupt-image pada ingest lokal. Thumbnail worker yang gagal
mencoba decode main-thread; file yang tetap gagal dipisahkan, URL lokalnya
dilepas, dan tidak pernah masuk state sesi maupun metadata cloud. Folder
campuran mempertahankan foto valid, sedangkan folder seluruhnya rusak berhenti
sebelum pencatatan session cloud. Status `PUSHED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production dan database tidak berubah.

### Estimate-only contract S159

Keputusan founder menetapkan bahwa SagaVIEW hanya menampilkan estimasi total
biaya. Pembayaran dilakukan langsung kepada staf di lokasi dan tidak dicatat,
dikonfirmasi, atau diproses aplikasi. Karena itu tidak ada provider, expiry,
callback, QRIS, rekening, payment hold, status paid, atau gate export/cetak.

Backend menolak field pembayaran lama, menghapus route mark-paid, menetralkan
kolom legacy, serta menyimpan estimasi melalui migration additive. Studio
menghapus seluruh kontrol pembayaran aktif dan selalu mengizinkan export ketika
prasyarat foto/output terpenuhi. S157-S158 tidak boleh dipromosikan. S159 lulus
backend 44/44 dengan 741 assertion, Studio 188/188, migration cycle, focused
Playwright desktop/mobile/a11y, build/budget, lint/typecheck, dan audit dependency.

Audit kandidat pascaproduksi menemukan residual field dan satu switch
konfirmasi pembayaran pada source Studio kumulatif. S182 source
`e6a6769b9e9d837cbecedcb616a8e0229fb171e0` menghapus module QRIS/rekening,
state/action paid, switch General, serta field kontrak lokal tersebut. Migrasi
rehydrate hanya membuang key lama dan mempertahankan setting operator yang sah;
status `awaiting_payment` lama tetap inert dan diarahkan ke Review estimasi.
Full unit 203/203, Playwright 3/3 desktop/mobile/a11y, build/budget, dan audit
dependency lulus. Kandidat belum dideploy; production tetap S163/S159.

S183 source `1eb8689588ec96fb5629338c19c804bff25ec27e` membuktikan jalur
persistence/hydration tersebut pada browser nyata. Fixture sintetis membawa
paid, QRIS/rekening, payment gate, dan status `awaiting_payment`; setelah reload
seluruh key payment hilang, status sesi aman kembali `idle`, dan setting
non-payment tetap utuh. Playwright 4/4 pada desktop/mobile termasuk Axe,
forced-colors, reduced-motion, dan no-overflow; unit 203/203, build/budget, dan
audit dependency lulus. Production tidak berubah.

S184 source `7c3d1b2f5fb5cd1da4fdc4826667299669f602ae` membuktikan alias
`awaiting_payment` di router browser. Dengan fixture lokal sintetis yang telah
memenuhi prasyarat foto/frame/output, route customer lama diarahkan ke Review,
estimasi tetap tampil, export aktif, dan surface pembayaran tetap tidak ada.
Playwright alias serta regresi estimate-only lulus pada kanal browser standar;
desktop/mobile, no-overflow, forced-colors/reduced-motion, unit 203/203,
build/budget, dan audit dependency lulus. Rule Axe `color-contrast` mengikuti
pengecualian suite Review existing dan belum diklaim selesai. Production tidak
berubah.

S186 source `556c2818c7629907717e245863a3ed2d86649fbe` menutup pengecualian
tersebut. Badge kategori berbayar Review sebelumnya memakai teks warning di
atas tint warning dengan rasio 1,72:1; kandidat memakai amber gelap di atas
amber terang dengan rasio sekitar 14,44:1. Axe WCAG 2 AA kini berjalan tanpa
menonaktifkan `color-contrast`. Playwright 7/7 memverifikasi desktop/mobile,
zoom 200%, forced-colors, reduced-motion, fokus, offline/retry, no-overflow,
alias historis, dan hydration legacy. Unit 203/203, format/lint/typecheck,
build/budget, serta audit dependency juga lulus. Production tidak berubah.

S185 source `996344c2ef139746143480d22ca09adac82fde04` menyediakan jalur
release exact local commit yang tidak bergantung pada GitHub Actions sebagai
gate tunggal. Package-only final membuktikan archive immutable, embedded
commit/tree, manifest SHA-256, git bundle, dan salinan terpisah dengan hash
identik. Status remote dipisahkan menjadi `PUSHED` atau
`REMOTE_PUSH_PENDING`; deployment tetap ditolak tanpa approval Andreas,
physical UAT exact Studio/backend, local quality gate, backup source,
runtime provenance, service/smoke/journal, atomic switch, dan rollback target
persisten. Focused 12/12, unit 207/207, Playwright relevan 28/28,
format/lint/typecheck/build/budget, serta audit dependency lulus. Status
`RELEASE_TOOLING_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
production tidak berubah.

## Use case

Provisioning, Owner Console, device activation, exclusive Studio lease,
session/folder, import 50/200/500 foto, frame catalog, selection, editor,
review, output 4R, offline recovery, emergency transfer, completion/privacy
handoff, support diagnostics, trial dua fase, subscription, dan billing.

## Fitur utama

Owner Console, Studio Console, device lease, session workflow, frame catalog,
editor/review, export/print, recovery, support, trial, plan, dan billing.

Pemulihan reopen production membuat Studio melepas exclusive lease melalui
background beacon saat jendela ditutup normal. Close intent berumur pendek
menutup race saat aplikasi dibuka kembali terlalu cepat. Jika unload tidak
terjadi karena crash/force-close, operator mendapat aksi `Ambil alih di jendela
ini` dengan konfirmasi. Takeover tetap memerlukan credential dan proof
kriptografis perangkat yang sama; backend mengganti token lease, mencatat audit,
dan instance lama gagal pada heartbeat/request berikutnya. Foto, folder,
editor, export, pricing, entitlement, dan offline grace tidak berubah. Fitur
aktif pada backend `20260809162045-13a94c5` dan Studio
`20260809162045-5eeef36`.

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

S144 yang kini aktif kumulatif melalui S146 mengubah consent customer pada Review menjadi pop-up empat
tindakan. Izinkan semua, foto yang sudah dipilih, dan jangan gunakan foto
langsung memakai penyimpanan consent serta penyelesaian sesi existing; pilihan
beberapa foto saja yang memuat wizard galeri. Tidak ada default, policy snapshot
dan local-first boundary tetap sama, serta kegagalan simpan tetap berada di
dialog untuk retry. Source ancestor `76f06a8a59a1bb88ad140250faaf2db1a8f1ce51`
aktif melalui Studio `81e55adc` / release `20260808190040-81e55ad`; UAT empat
pilihan consent nyata tetap residual sebelum `BUSINESS_READY`.

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

Production S146 menyambungkan bantuan online melalui autentikasi perangkat,
bukan sesi admin SagaBook. Credential dan fingerprint diverifikasi backend;
tenant, product, dan actor ditentukan server-side sebelum gateway bertanda
tangan memanggil Support Hub pusat. First-use bootstrap tanpa conversation kini
tetap membuka composer. Launcher mobile berlabel `Bantuan`, input berlabel
aksesibel, dan fallback diagnostik lokal tetap tersedia. Boundary local-first
tidak berubah: folder foto, editor, serta export tidak dipindai atau diunggah.
Backend `1af885248f04d95960a015749152c784af33307e` dan Studio
`81e55adc170af0949245e3f381d881b716e25b0e` aktif sebagai release
`20260808190040-1af8852` dan `20260808190040-81e55ad`. Gate final meliputi
backend 961/961, Studio 180/180, full browser 122 pass/3 intentional skip,
accessibility/build/budget/audit, backup/restore, rehearsal, live rollback,
snapshot data, service/header/CORS/journal, dan smoke device-negative 422.
Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated device UAT
dan metrik latency/cost tetap residual sebelum `BUSINESS_READY`.

Candidate S170 source `c52c1416b7a604509e00a858a606b92f47990dcc`
menutup regresi keterjangkauan launcher pada mobile: tombol yang sebelumnya
berada di akhir halaman panjang sekarang fixed di atas safe-area. Panel tetap
non-modal, bebas overflow, dan mengembalikan fokus ke launcher setelah ditutup;
tidak ada request Support Hub sebelum operator memilih koneksi online. Unit
195/195, focused Playwright 8/8, full Playwright 132 pass/3 intentional skip,
visual 390x844 dan 1440x900, Axe/forced-colors/reduced-motion, build/budget,
serta npm audit lulus. Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`;
production S163, backend/API/database, dan boundary no-upload tidak berubah.

Candidate S172 source `1a6d1d0b7ed7959321c902d7d561938642efcee0`
menutup debt acceptance pada harness Windows. Dua commit kandidat kini wajib
exact dan worktree bersih; checklist v2 memerlukan 14 gate untuk 50/200/500
foto, permission revoke, crash recovery, output read-only, quota/disk-full,
offline/no-upload, 10 sesi tanpa state silang, dual runtime, serta print
portrait/landscape. JSON/TXT evidence yang memuat path, identitas, credential,
filename, atau payload foto ditolak. Gate receipt WhatsApp/provider lama
dihapus karena pembayaran berlangsung di luar aplikasi. Simulation tetap tidak
dapat dipromosikan dan hasil physical tertinggi hanya
`ready_for_human_release_review`. Unit/contract 196/196, Playwright relevan
17/17, build/budget, parser, simulation negative, dan audit dependency lulus.
Status `QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production S163/S159 tidak berubah.

Candidate S173 source `b71d2008cb235f6aefedfe3897830616b0dca8f9`
menutup kontradiksi preflight pada harness S172. Node kandidat yang memang
wajib hidup tidak lagi dihitung sebagai collision; hanya Chrome yang masih
memakai profil UAT A/B yang memblokir run. Red contract 1 gagal sebelum
perbaikan, lalu focused 5/5, unit/contract 197/197, Playwright relevan 17/17,
parser, reproduksi proses disposable, simulation active-profile exit 2,
build/budget, dan audit dependency lulus. Status `QA_VALIDATED /
SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production,
backend/API/database, foto, output, dan boundary no-upload tidak berubah.

Candidate S174 source `691999568651118fbb82cc7124c563d10e4f3058`
menutup gap provenance kandidat pada harness fisik. Preflight kini mewajibkan
HEAD, upstream `origin/*`, tracking commit, dan SHA remote identik untuk backend
serta Studio. Finalize mengulang pemeriksaan live, termasuk path worktree, agar
drift selama UAT berhenti fail-closed. Reproduksi Git disposable membedakan
tanpa-upstream, pushed-exact, dan commit lokal belum dipush. Contract 6/6,
unit 198/198, Playwright 17/17, parser, build/budget, dan audit dependency
lulus. Status `QA_VALIDATED / SECURITY_VALIDATED / LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`; production dan boundary local-first tidak berubah.

Candidate S175 source `ab1d884a77872869f64a0b5c724940b2643f4f50`
menutup gap identitas runtime Studio pada harness fisik. Build menyematkan exact
source commit dari environment release, marker `.release-commit`, atau HEAD Git
lokal. Endpoint read-only/no-cache `/api/runtime-provenance` hanya mengembalikan
produk dan SHA; preflight/finalize menolak marker hilang, produk salah, commit
berbeda, serta marker URL/build yang berganti. Exact-commit preview
mengembalikan HTTP 200, `sagaview-studio`, dan SHA S175. Focused 9/9,
unit/contract 201/201, Playwright relevan 19 pass/1 intentional skip, parser,
format/lint/typecheck, build/budget 299,7/450 KiB, dan audit dependency nol
vulnerability lulus. Status `QA_VALIDATED / SECURITY_VALIDATED /
LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, backend, foto/path,
output, metadata cloud, dan kontrak pembayaran off-app tidak berubah. Marker
exact runtime backend masih residual.

Candidate S176 backend source
`a37fe9474f54de01befc308168f42816ba4719d9` menutup gap identitas runtime
backend. Route read-only/no-cache `/api/sagadev/runtime-provenance` membaca
marker immutable `.release-commit`, mengembalikan hanya produk dan SHA, serta
fail-closed HTTP 503 saat marker hilang atau tidak valid. Studio gate source
`353293f1285839712c6bfbe6200fc33514440956` memeriksa marker pada preflight
dan finalize serta menaikkan schema evidence ke v4. Focused backend 11/11,
full backend 987/987 dengan 11.433 assertion, Studio 202/202, exact-SHA runtime
HTTP 200, parser/format/lint/typecheck, build/budget 299,7/450 KiB, dan audit
dependency nol vulnerability lulus. Status `QA_VALIDATED /
SECURITY_VALIDATED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production,
database, foto/path, metadata cloud, dan pembayaran off-app tidak berubah.
Residual sekarang adalah UAT fisik Windows/printer dan authenticated
Owner/Studio.

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
Pada release reopen production, close normal memulihkan lease otomatis. Crash atau
force-close tidak menuntut operator mengetahui cara mematikan instance lama;
operator dapat melakukan takeover eksplisit dari device terautentikasi yang
sama tanpa menunggu TTL. Backend `20260809162045-13a94c5` dan Studio
`20260809162045-5eeef36` aktif; S147/S150 tetap tersedia sebagai rollback.
Backup/restore, rehearsal, live rollback-cycle, preservation, service, header,
route, queue, dan journal gate lulus. UAT pada device Studio nyata masih perlu
dilakukan sebelum status `BUSINESS_READY`.

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

- Kandidat S152 backend `e2cb726705bb630d2bb1b737a54c1d30cb1176e9`
  menambah pembatasan abuse berlapis, ledger replay perangkat durable berbasis
  hash, cleanup berumur pendek, foreign-key cleanup, dan transaksi terkunci
  saat lease dilepas. Focused 6/50, seluruh regresi SagaView 123/1.212, full
  backend 964/11.317, migration fresh/rollback/re-apply, format kandidat,
  syntax, dan Composer audit lulus. Status `SECURITY_VALIDATED /
  DATA_INTEGRITY_VALIDATED / LOCAL_VALIDATED /
  IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah.
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
