# AOGTICVITY Dossier

## Tujuan dokumen

Menjaga scope event-day operations, readiness, bisnis, teknis, sales, dan
content AOGTICVITY tetap jelas.

## Konteks dan status bukti

- Updated: 4 Agustus 2026
- Delivery: `PRODUCTION_DEPLOYED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `BLOCKED`

## Overview produk

Web app mobile-first untuk community matchday dan operasi event/kompetisi
hari-H. Nama lama: 17an/Olimpiade Kemerdekaan.

## Masalah yang diselesaikan

Registrasi, roster, check-in, jadwal, scoring, standing, announcement, dan
projection sering tersebar dan rawan koreksi tanpa audit.

## Target pengguna

Peserta, leader tim, admin event, operator check-in/scoring, dan penonton.

## Persona pengguna

- Peserta: melihat tim/jadwal/status.
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

Public/player/leader/admin/live surfaces; master recap 8 tim/10 lomba; serta
backend identity, access directory, check-in, roster, session/security,
event-master, result operations, announcement persistence, dan Day-H readiness
vertical slices.
Workspace peserta menampilkan onboarding status, `Lomba Saya`, tim, agenda,
dan feed assignment dari server. Snapshot memakai revision/ETag, polling 12
detik, serta recovery saat focus, visibility, dan koneksi kembali aktif.
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
memakai empty state. Public/player refresh setiap 12 detik serta saat focus,
visibility, dan reconnect. Acceptance suite kini mencakup 50 Playwright checks,
termasuk podium mocked, pending state, geometry 320 px, dan public smoke 390 px.

Pemain dari luar komunitas memakai `/register/guest`. Data minimum adalah nama,
nomor WhatsApp, status sudah/belum memiliki CG, dan consent; role maupun tim
tidak dipilih public. Dashboard admin dapat memfilter sumber peserta dan wajib
memilih tim saat approval guest selama roster tim masih `Draft`. Approval
menyatukan team assignment, identity player, WhatsApp outbox, dan audit dalam
satu transaksi. Guest tidak dipindahkan oleh generator otomatis. UI publik
guest lulus matriks 320–1440 px, WCAG axe, no-overflow, serta total 58
Playwright checks. Full guest-to-valid-session UAT nyata masih diperlukan.

Hotfix source `111e01152c842d802ff1b4114f8e787577fe611d` menghilangkan
konflik kebijakan referrer yang sebelumnya membuat POST konfirmasi magic-link
berasal dari `Origin: null`. Same-origin backend tetap fail-closed. Modal
pendaftaran sekarang dipindah ke portal, mengikuti visual viewport, memisahkan
content scroll dari footer CTA, serta membuat shell dan bottom navigation tidak
interaktif selama dialog terbuka. Public acceptance 60/60 dan smoke 320 × 480
lulus; valid-link nyata tetap menjadi UAT manusia.

Taxonomy komunitas final mempunyai dua kategori utama: `TEEN` dengan enam
subcategory `CG teen`, dan `SOUTH, WEST, CENTRAL` dengan delapan subcategory
`CG youth`. Form, API validation, admin display, export, team balancing, dan
constraint MySQL memakai satu taxonomy kanonik. Nilai demo lama tidak dapat
dipakai untuk submission baru; record historis tetap dapat dibaca sebagai
legacy dan tidak dipetakan secara spekulatif.

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
guarded HTTPS proxy. Auth dan public registration aktif; core operations UAT
dan rehearsal fisik masih menahan activation keseluruhan.

## Roadmap

1. Uji jalur pemain undangan nyata dari submit, pending WhatsApp, approval
   bertim, valid-link, dan player session pada dua perangkat; lanjutkan role
   redirect, assignment tim/operator, roster, status lomba, check-in,
   result draft/publish, live display, announcement, readiness, audit, dan
   recovery melalui public Vercel.
2. Lakukan two-device authorization dan stale-state reconciliation UAT.
3. Aktifkan target custom domain dan pilih recovery/notification provider.
4. Finalisasi durasi dan keputusan lain yang masih open pada master recap.
5. Multi-device/event rehearsal dan public smoke.
6. `NEEDS CONFIRMATION`: repeatable product/service model.

## User journey

Register → admin approve → WhatsApp access → player workspace → team/roster →
check-in → play → result publish/correct → standing/announcement.

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

**Apakah domain sudah live?** Public Vercel delivery aktif; domain custom
AOGTICVITY belum diaktifkan.
**Apakah notification aktif?** Sebagian. Runtime Fonnte, migration 009–010,
dan satu pengiriman kanal UAT sudah aktif. Provider status webhook serta flow
approval → valid magic-link → session → reuse/revoke belum lulus UAT. Origin
redirect publik, origin POST form, serta state invalid/expired sudah
terverifikasi, tetapi login WhatsApp penuh belum production-ready.
**Apakah auth sudah nyata?** Ya, real credential login, MySQL identity,
database session, dan admin password claim sudah terverifikasi melalui public
Vercel.
**Apakah pendaftaran sudah nyata?** Ya. Submit publik, receipt, persistence
MySQL, admin list/approve, idempotent replay, dan audit sudah lulus UAT.
Jalur guest sudah production-deployed tetapi belum production-activated sampai
satu registrasi guest nyata, approval bertim, WhatsApp link, dan session player
lulus UAT.
**Apakah MFA wajib?** Tidak. MFA admin opsional; kontrol password, session,
rate limit, RBAC, revoke, dan audit tetap wajib.
**Apakah bisa multi-device?** Backend contract dan test MySQL tersedia, tetapi
UAT fisik pada runtime public belum terverifikasi.

## Technical overview

Frontend mobile-first dengan lebar aplikasi maksimum 430 px, Plus Jakarta Sans,
Feather-style icons, Motion for React, canvas-confetti terbatas, dan
public/player/leader/admin/live surfaces. Backend Hostinger memakai Better
Auth dengan MySQL, HttpOnly database session, TOTP admin, role authorization,
rate limit, account suspend/reactivate, session revocation, identity audit,
check-in, roster assignment, competition status, event-master, serta
server-authoritative result operations.
Vercel menjadi public edge dan guarded HTTPS proxy ke backend; endpoint backend
langsung 404 tanpa server-only proxy secret dan MySQL tetap loopback-only.
Registrasi tidak lagi memakai participant fixture atau localStorage. Roster,
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
UAT masih menunggu. Projection display, export/print,
custom domain/TLS, dan rehearsal runtime penuh belum terverifikasi.

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
operations UAT, guest registration end-to-end UAT, serta durasi dan keputusan
master recap yang masih provisional/open.

## KPI dan success metrics

`PROPOSAL`: registration completion, check-in throughput, correction
rate, result publish latency, projection uptime, support incident, dan operator
recovery. Target `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Command center lomba; scoring audit; offline fallback; live standing.

## Contoh caption

`PROPOSAL`: “Hari-H bukan waktunya mencari spreadsheet terakhir.
AOGTICVITY menyatukan check-in, jadwal, hasil, dan standing dalam satu alur.”

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

Lihat [GAPS](../../GAPS.md#aogticvity).
