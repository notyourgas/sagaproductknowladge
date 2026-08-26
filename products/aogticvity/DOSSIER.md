# AOGTIVITY Dossier

## Tujuan dokumen

Menjaga scope event-day operations, readiness, bisnis, teknis, sales, dan
content AOGTIVITY tetap jelas.

## Konteks dan status bukti

- Updated: 26 Agustus 2026
- Delivery current: `ARCHIVED / HOSTINGER_RUNTIME_RETIRED`
- Public event hub current: `NOT_OPERATIONAL`; edge/domain yang masih resolve
  bukan activation evidence
- Public registration dan participant login: `DEPRECATED / CLOSED`
- Business readiness: `NOT_APPLICABLE_WHILE_ARCHIVED`
- Taxonomy VOLTAGE: capability historis; runtime current retired

`CONFIRMED` melalui `DEC-107`: runtime AOGTIVITY dan legacy Olimpiade telah
diarsipkan setelah event. Backend, worker, timer, credential config, dan release
Hostinger dipensiunkan; database historis dipertahankan cold untuk recovery.
Restore kembali ke layanan aktif membutuhkan keputusan baru, rotasi credential,
release terkontrol, smoke test, dan UAT. Rincian arsip restricted tidak masuk
repository publik.

## Overview produk

Web app mobile-first untuk community matchday dan operasi event/kompetisi
hari-H. Nama lama: AOGTICVITY, 17an, dan Olimpiade Kemerdekaan. Slug teknis
`aogticvity` serta domain `aogticvities.fun` tetap dipertahankan untuk
kompatibilitas.

## Masalah yang diselesaikan

Informasi peserta, roster, check-in, jadwal, scoring, standing, announcement,
dan projection sering tersebar dan rawan koreksi tanpa audit. Setelah
pendaftaran ditutup, peserta membutuhkan satu sumber informasi tanpa hambatan
akun.

## Target pengguna

Peserta, leader tim, admin event, operator check-in/scoring, dan penonton.

## Persona pengguna

- Peserta: melihat agenda, tim, lomba, standing, dan pengumuman tanpa login.
- Leader: mengelola roster dan koordinasi.
- Operator: check-in/scoring cepat dengan fallback.
- Admin: publish/correct/audit.

## Value proposition

Command center event dari check-in sampai standing live.

## Use case

Registration, verification, team assignment, roster, schedule, check-in,
draft/publish/correct result, standing, announcement, export, print, projection,
dan offline fallback.

## Fitur utama

Public/leader/admin/live surfaces; master recap 8 tim/10 lomba; serta
backend identity, access directory, check-in, roster, session/security,
event-master, result operations, announcement persistence, dan Day-H readiness
vertical slices.
Public event hub menampilkan agenda transparan, pembagian delapan tim, katalog
lomba/detail, standing, pengumuman, dan info tanpa akun peserta. Workspace
peserta lama, permanent access, dan magic-link tetap dipertahankan sebagai
provenance/rollback tetapi tidak lagi menjadi entry point publik.
Public Vercel delivery memakai `Pixel Matchday Arcade`: hierarchy quest/HUD,
stepped geometry, hard shadow, physical button state, animated navigation,
modal/state motion, dan reduced-motion fallback. Plus Jakarta Sans tetap satu-
satunya font, Feather-style icons tetap dipakai, dan canvas mobile-first 430 px
tidak diperlebar di desktop. Refinement `Calm HUD` memakai spacing
4/8/12/16/24/32, safe wrapping, hierarchy heading/card/form/status, serta
baris layout khusus untuk topbar dan bottom navigation. Hanya main content
yang scroll sehingga navigasi tidak menutup field, tombol, timeline, atau
kartu. Enam route publik lulus visual regression 47/47 pada empat viewport,
collision/clearance assertions, touch target, reduced motion, dan axe WCAG.

`DEC-081` menutup registration dan participant login. `/register` serta
`/register/guest` hanya menampilkan status penutupan; POST registration
fail-closed dengan `410`. `/app` dan subdomain player mengalihkan permanen ke
route publik setara. Direktori tim hanya aktif setelah roster
`Published/Locked` dan hanya membawa nama serta team membership; nomor kontak,
internal ID, kategori komunitas, attendance, dan version tidak dipublikasikan.
Runtime source `a74221c4720b0afc59cadbf3f115e4934c4745e1`, Hostinger
`20260816T185201Z`, dan Vercel `dpl_F2nGXwrWRSNerhKybbWUUikwz94G` sudah
production-activated. Tidak ada migration atau mutasi peserta/tim.

Visual source awal `9543450696760666b9ec50a19f918c3381c5d9cf` mengubah
hierarchy landing agar AOGTIVITY menjadi nama acara utama, 17 Agustus 2026
menjadi tanggal resmi, dan Army of God Madiun menjadi identitas penyelenggara.
Lime elektrik, navy, magenta, cyan/kuning terbatas, halftone, petir, spark,
koin, serta handheld-console frame berasal dari referensi poster founder.
Seluruh teks tetap Plus Jakarta Sans. Implementasi final aktif melalui runtime
`c9a6702094ea36088c44040656f638d3db28da57`, Hostinger
`20260809T075137Z`, dan Vercel `dpl_D1ubBCWkFs6ENp9CqPz5Fv25zwYE`.
Runtime terbaru memakai kontrak rundown owner-confirmed `DEC-075`: Registrasi
& Perkenalan Tim 14.30-15.00, Opening AOGTIVITY 15.00-15.15, lomba 1-5 mulai
15.15, Break 17.15-17.30, lomba 6-10 mulai 17.30, Name Tag Ripped sebagai satu
pertandingan bersama 18.50-19.20 tanpa Grup A/B, serta Awarding & Closing
19.20-19.35. Schedule builder, reload API, UI publik, admin, migration MySQL
031, audit, dan rollback memakai struktur yang sama. Seluruh 10 ID kompetisi
dan relasi data dipertahankan.
`DEC-076` menetapkan lokasi final berdasarkan urutan agenda: Pendopo Utama
untuk lomba 1-2, Lapangan A untuk lomba 3, 5, 7, 9, dan 10, Lapangan B untuk
lomba 4, 6, dan 8, serta Pendopo Utama untuk Awarding & Closing. Ejaan lokasi
dinormalisasi tanpa mengubah maksud founder. Registrasi, Opening AOGTIVITY,
Break, jam, urutan, sepuluh ID kompetisi, peserta, roster, hasil, dan operator
tetap dipertahankan.
Kontrak rundown dan lokasi final aktif melalui source runtime
`70aa749764cdeb6a5bc59b36438c23e22c3a1e66`, Hostinger
`20260813T171101Z`, Vercel `dpl_EvVDPn38C6R5h56oyRNdzT8abHu6`, serta
migration 031-033. Gate release lulus 145 unit/API, typecheck, build, 28 MySQL
integration, 67/67 UI/WCAG, backup/restore disposable, preservation gate, dan
15/15 public-domain regression. Migration 033 mengarsipkan arena lama dan
menyediakan rollback tanpa membuat ulang entitas kompetisi.
Runtime terbaru memakai source
`f9f43e16d5fe885fbd12b4cf627bfbdd343b38e9`, Hostinger
`20260814T053031Z`, Vercel `dpl_Bn3Y8p71Y3AZdK3p4iYam5aer9JF`, serta
migration 034. Release gate memaksa `nanoid` transitif ke 3.3.18; audit npm dan
pnpm kembali nol vulnerability.
Kartu alur `Dari daftar sampai podium` memakai tiga track tetap untuk badge
nomor, copy, dan panah. Badge 30 px dan gap 10 px mencegah overlap pada
viewport 320 px; acceptance suite kini mencakup 48 Playwright checks.
Agenda publik/peserta memakai tiga track ringkas pada 320 px: waktu mulai,
informasi lomba, dan panah. Rentang waktu diganti menjadi satu waktu mulai;
durasi tetap terlihat sebagai teks `(n menit)` pada baris kategori; ikon jenis
lomba dihapus. Judul, lokasi, status, link detail, dan sumber data tetap utuh.
Timeline resmi halaman Info memakai kartu milestone dengan padding 14 px dan
gap 12 px. Judul/status berada pada baris pertama, deskripsi memakai lebar penuh
di bawahnya, dan peringatan keselamatan terpisah 16 px. Acceptance suite kini
mencakup 49 Playwright checks termasuk geometry khusus 320 px.
Standing resmi sekarang mempunyai riwayat pemenang berbentuk accordion untuk
seluruh 10 lomba. Hanya result `Published`/`Corrected` yang menampilkan podium
Juara 1/2/3; `Draft` tidak masuk endpoint publik dan lomba yang belum selesai
memakai empty state. Snapshot server memakai revision deterministik, ETag, dan
kebijakan poin berversi 15/10/5. Public/player/live/team refresh maksimal setiap
5 detik; result desk/admin maksimal 3 detik serta pulih saat focus, visibility,
online, dan reconnect. Retry mempertahankan idempotency key, stale write 409
memuat versi server, dan correction tetap audited.

Master data terbaru memakai dataVersion
`master-recap-2026.7-final-committee-lingkarin-angka`. `Lingkarin Angka`
menggantikan `Trenggiling Bolak-Balik` pada slot 17.30 selama 20 menit, dan 12
penugasan panitia final mencakup pemisahan Grup A/B pada Suit Karton serta Voli
Air. Legacy slug tetap menuju detail kanonik. Perubahan ini tidak memutasi
peserta, roster, hasil, standing, atau jadwal MySQL.

`cmp-2` kini **Ambil Bola Pakai Sarung** dan `cmp-8` kini **Paralon Bola**.
Keduanya memakai seluruh tim tanpa selector nama, 10 menit pertandingan dan 5
menit pergantian. Operator/admin mengisi jumlah bola delapan tim; ranking
terbentuk otomatis dan publish tertahan bila seri memengaruhi podium sampai
tie-break dikonfirmasi. Migration 022 mengarsipkan roster/hasil lama sebelum
rekonsiliasi dan menyediakan rollback. Legacy URL tetap membuka detail lomba
pengganti; total rundown provisional tetap 275 menit.

`DEPRECATED`: peserta dari luar komunitas sebelumnya memakai jalur VIP di
`/register/guest`. Data minimum
adalah nama, nomor WhatsApp, status sudah/belum memiliki CG, dan consent; role
maupun tim tidak dipilih public. Admin menyetujui VIP tanpa tim; identity player,
WhatsApp outbox, dan audit tetap atomik. VIP kemudian ikut generator tim
seimbang bersama peserta komunitas dan dapat dipindahkan manual saat Draft.
Nilai storage legacy `Guest` dipertahankan untuk rollback. UI publik
guest lulus matriks 320–1440 px, WCAG axe, no-overflow, serta total 58
Playwright checks. Route itu sekarang hanya menampilkan pendaftaran ditutup;
flow historis dipertahankan untuk audit dan rollback, bukan onboarding baru.

`DEPRECATED` untuk peserta baru: admin mempunyai policy server-side untuk
membuka/menutup link peserta dan
memilih TTL 15/30/60/360/1440 menit. Off menolak penerbitan serta konsumsi link
yang belum dipakai tanpa memutus sesi aktif. Mutation admin-only memakai
same-origin, idempotency UUID, optimistic version, transaksi, dan audit MySQL.

Hotfix source `111e01152c842d802ff1b4114f8e787577fe611d` menghilangkan
konflik kebijakan referrer yang sebelumnya membuat POST konfirmasi magic-link
berasal dari `Origin: null`. Same-origin backend tetap fail-closed. Modal
pendaftaran sekarang dipindah ke portal, mengikuti visual viewport, memisahkan
content scroll dari footer CTA, serta membuat shell dan bottom navigation tidak
interaktif selama dialog terbuka. Public acceptance 60/60 dan smoke 320 × 480
lulus; valid-link nyata tetap menjadi UAT manusia.

Domain preparation source `f915947f8159cfa6bde922c26cc6615273547372`
aktif pada Hostinger `20260804T180816Z` dan Vercel
`dpl_GU4AUDL98wgfM9KAFwgCKHY68KpB`. Runtime telah mengenali hostname `.fun`
dan trusted origins baru, tetapi link auth/WhatsApp tetap memakai URL Vercel
lama sampai DNS, TLS, serta public smoke lulus. Rollback langsung tetap
Hostinger `20260804T164327Z` dan Vercel
`dpl_5pVdzKAGfZVv4w41cLborLhDFv4Z`.

Taxonomy komunitas production mempunyai empat kategori utama: `TEEN` dengan enam
subcategory `CG teen`, `SOUTH, WEST, CENTRAL` dengan delapan subcategory `CG
youth`, `Other Region` dengan `AOG Ponorogo` dan `AOG Magetan`, serta `VOLTAGE`
dengan `ALL CG VOLTAGE`. Form,
API validation, admin display, export, team balancing, dan constraint MySQL
memakai satu taxonomy kanonik. Nilai demo lama tidak dapat dipakai untuk
submission baru; record historis tetap dapat dibaca sebagai legacy dan tidak
dipetakan secara spekulatif. Penambahan `Other Region` aktif melalui migration
024, Hostinger `20260806T055642Z`, dan Vercel production
`dpl_4RtjNcViWkxN3fZSTZ15VWiumy5G`.

`DEC-077` menetapkan kategori keempat `VOLTAGE` dengan stable code `Voltage`
dan satu-satunya subkategori `ALL CG VOLTAGE`. Source production
`f9f43e16d5fe885fbd12b4cf627bfbdd343b38e9` menyelaraskan form publik/admin,
kontrak API, proyeksi laporan, dan constraint MySQL migration 034. Gate lulus
146 unit/API, 29 MySQL integration, 67/67 UI/WCAG, typecheck, build,
rollback/reapply migration disposable, backup/restore production, preservation
48 peserta, 15/15 public regression, serta smoke taxonomy langsung. Statusnya
`PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; UAT operator terautentikasi dan
business readiness tetap residual terpisah.

Admin Control Center memetakan aksi CRUD/lifecycle untuk anggota, tim, lomba,
roster, rundown, hasil, pengumuman, akun, WhatsApp, dan audit. Anggota dapat
dibuat manual, diedit, dan dihapus secara operasional. Tombol `Hapus` memakai
modal alasan audit, memindahkan record dari filter Aktif ke Dihapus, mencabut
akses/sesi, serta melepas assignment tim dan roster tanpa menghapus histori.
Export peserta hanya mengambil record aktif. Profil delapan tim dapat diedit/reset,
sementara ID dan jumlah tim tetap dikunci oleh event master. Nama kanonik Tim 7
adalah **Team Kindness** dengan arti Kebaikan dan Tim 8 adalah **Team
Patience** dengan arti Kesabaran. Penetapan ini tidak mengubah ID
`team-7`/`team-8`, warna, anggota, assignment, roster, hasil, atau leaderboard.

## Fitur MVP

Satu event dengan delapan tim dan sepuluh lomba, authenticated roles, MySQL
persistence, multi-device check-in/scoring, audit, projection, dan fallback.
Master event dan backend auth/operations sudah terhubung ke public Vercel lewat
guarded HTTPS proxy. Public event hub aktif tanpa login peserta; auth hanya
untuk panitia/role berwenang. Core operations UAT dan rehearsal fisik masih
menahan activation keseluruhan.

## Roadmap

1. Lanjutkan authenticated role redirect, assignment tim/operator, roster,
   status lomba, check-in,
   result draft/publish, live display, announcement, readiness, audit, dan
   recovery melalui public Vercel.
2. Lakukan two-device authorization dan stale-state reconciliation UAT.
3. Monitor domain `aogticvities.fun` dan pilih recovery/notification provider.
4. Finalisasi format bracket serta keputusan teknis lomba lain yang masih
   provisional pada master recap; nama Lingkarin Angka dan penugasan panitia
   sudah dikunci.
5. Uji scoring dua lomba bola dari dua perangkat, termasuk seri, publish,
   standing, correction, serta recovery setelah reconnect.
6. Rehearsal keselamatan pengangkatan dengan sarung, spotter, titik henti,
   paralon, bola, dan lintasan sebelum dipakai pada hari-H.
7. Multi-device/event rehearsal dan public smoke.
8. `NEEDS CONFIRMATION`: repeatable product/service model.

## User journey

Peserta membuka public hub → melihat agenda/tim/lomba/pengumuman → check-in
oleh panitia → bermain → hasil dipublish/dikoreksi → standing publik.

## User flow

Scoring harus draft→publish→correct; correction memiliki reason/audit. Role
ditetapkan admin dan home route berasal dari session/database. Pengguna tidak
memilih role; leader team-scoped tidak lagi memakai PIN prototype.

## Business model

`NEEDS CONFIRMATION`: internal event tool, managed service per event, atau SaaS.

## Pricing

`NEEDS CONFIRMATION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: event registration, tournament bracket, scoring,
community event, dan spreadsheet/manual operations.

## Diferensiasi produk

`PROPOSAL`: event-day command center, multi-role mobile UI,
draft/publish/correct audit, live projection, dan offline fallback.

## Brand positioning

Operational app untuk matchday komunitas, bukan sekadar landing event.

## Messaging

- “Dari check-in sampai standing dalam satu command center.”
- “Koreksi hasil tercatat, bukan diam-diam berubah.”

## FAQ

**Apakah domain sudah live?** Ya. Public, admin, leader, serta `www` aktif
melalui Vercel dengan DNS Hostinger dan HTTPS tervalidasi. Subdomain player
lama mengalihkan permanen ke public hub. Human UAT operations tetap terpisah.
**Apakah notification aktif?** Sebagian. Runtime Fonnte, migration 009–010,
dan satu pengiriman kanal UAT sudah aktif. Provider status webhook serta flow
approval → valid magic-link → session → reuse/revoke belum lulus UAT. Origin
redirect publik, origin POST form, serta state invalid/expired sudah
terverifikasi, tetapi login WhatsApp penuh belum production-ready.
**Apakah auth sudah nyata?** Ya, real credential login, MySQL identity,
database session, dan admin password claim sudah terverifikasi melalui public
Vercel.
**Apakah pendaftaran masih dibuka?** Tidak. Pendaftaran ditutup; halaman
registration hanya memberi informasi penutupan dan POST ditolak `410`.
Persistence/audit historis dipertahankan tanpa membuka onboarding baru.
**Apakah MFA wajib?** Tidak. MFA admin opsional; kontrol password, session,
rate limit, RBAC, revoke, dan audit tetap wajib.
**Apakah bisa multi-device?** Backend contract dan test MySQL tersedia, tetapi
UAT fisik pada runtime public belum terverifikasi.

## Technical overview

Frontend mobile-first dengan lebar aplikasi maksimum 430 px, Plus Jakarta Sans,
Feather-style icons, Motion for React, canvas-confetti terbatas, dan
public/leader/admin/live surfaces. Backend Hostinger memakai Better
Auth dengan MySQL, HttpOnly database session, TOTP admin, role authorization,
rate limit, account suspend/reactivate, session revocation, identity audit,
check-in, roster assignment, competition status, event-master, serta
server-authoritative result operations.
Vercel menjadi public edge dan guarded HTTPS proxy ke backend; endpoint backend
langsung 404 tanpa server-only proxy secret dan MySQL tetap loopback-only.
Registrasi historis tidak memakai participant fixture atau localStorage dan
submission publik sekarang fail-closed. Roster,
status lomba, rundown, assignment operator, result draft/publish/correct, live
display, serta announcement publish/pin/archive/restore memakai optimistic
version, idempotency, RBAC, audit, dan MySQL.
Team generator, direct assignment, serta publish/lock pembagian tim juga
persisten; Draft disembunyikan dari Leader/Player dan standing publik,
sedangkan stale write ditolak. Day-H readiness membaca agregat konsisten tanpa
PII, mempunyai digest, cache snapshot terakhir, dan export JSON. SQLite tetap
fast test adapter.
CRUD anggota dan profil tim memakai mutation admin-only, same-origin,
idempotency, optimistic version, transaksi MySQL, dan append-only resource
audit. Hard delete tidak tersedia untuk data operasional yang sudah dirujuk;
withdraw, archive, cancel, correct, retry, dan revoke dipakai sesuai lifecycle.
Admin participant delete memakai `Withdrawn`, alasan 3-240 karakter, revocation
magic link/session, roster cleanup, serta audit event dalam transaksi yang sama.
Player workspace menggunakan participant-scoped snapshot, revision/ETag, dan
feed event persisten untuk publish/lock tim serta roster assigned/removed.
Modal global memakai portal ke body, VisualViewport, focus trap, background
inert, body scroll lock, content scroll, dan footer CTA safe-area-aware.

## Integrasi

Fonnte runtime memakai transactional outbox dan Better Auth magic link
single-use 30 menit; token hanya disimpan sebagai hash dan tidak ikut request
GET. Status webhook memakai shared secret dan idempotent event ledger; operator
dapat retry failed/blocked setelah cooldown dengan batas lima percobaan.
Provider channel UAT sudah terverifikasi. Redirect magic-link ke origin publik
sudah terverifikasi, tetapi status webhook dan valid-link two-device session
UAT masih menunggu. Projection display, export/print, dan custom domain/TLS
tersedia; rehearsal runtime penuh belum terverifikasi.

`DEPRECATED` sebagai entry point publik: permanent participant access pernah
menjadi fallback operasional saat provider WA tidak tersedia. Link personal
dapat dipakai ulang sampai admin mencabut atau
memutar pass; sesi browser tetap terbatas delapan jam. Token ditandatangani,
berada pada URL fragment, tidak disimpan mentah, dan diverifikasi terhadap
approval, role player, banned state, access policy, status, serta versi pass.
Withdraw/revoke juga mencabut sesi aktif. Backend historis tetap tersedia
untuk audit/rollback, tetapi public hub tidak memerlukan link atau session
peserta.

Google Sheets participant reporting memakai proyeksi satu arah dari MySQL,
bukan database kedua. Dashboard admin dapat mengaktifkan, menonaktifkan, dan
memicu sync; timer Hostinger menjalankan reconciliation maksimal setiap menit
dan digest melewati snapshot yang tidak berubah. Adapter memeriksa permission
Drive dan menolak semua target bertipe `anyone` sebelum nomor WhatsApp penuh
ditulis. Service-account private key hanya boleh berada di runtime Hostinger.
Sheet sekarang Restricted/owner-only; tab `WA Manual` menerima link personal
Approved melalui koneksi Drive terautentikasi. Worker otomatis tetap
`NOT_PRODUCTION_ACTIVATED` karena credential service account belum tersedia;
source of truth tetap MySQL.

## Data yang digunakan

Event, participant beserta sumber Community/Guest dan status CG, delapan team,
roster, sepuluh competition, schedule,
mechanism, safety, equipment, official assignment, check-in, result, standing,
announcement, participant feed event, workspace revision, version, audit, dan
export.

## Risiko dan asumsi

Event-day time pressure, network failure, duplicate scoring, stale projection,
authenticated four-role event-day UAT, stale-write/offline readiness recovery
UAT, aktivasi/recovery provider notification,
operations UAT, public roster privacy monitoring, serta durasi dan keputusan
master recap yang masih provisional/open.

## KPI dan success metrics

`PROPOSAL`: registration completion, check-in throughput, correction
rate, result publish latency, projection uptime, support incident, dan operator
recovery. Target `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Command center lomba; scoring audit; offline fallback; live standing.

## Contoh caption

`PROPOSAL`: “Hari-H bukan waktunya mencari spreadsheet terakhir.
AOGTIVITY menyatukan check-in, jadwal, hasil, dan standing dalam satu alur.”

## Ide campaign

`ASSUMPTION`: behind-the-scenes event operations series.

## Sales talking points

Mulai dari risiko hari-H, demo multi-role workflow, lalu jelaskan fallback dan
status production secara jujur.

## Objection handling

- “Cuma untuk 17an?”: domain workflow dapat dipakai event komunitas, tetapi
  product model belum diputuskan.
- “Bisa offline penuh?”: hanya klaim sesuai acceptance runtime.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#aogtivity).
