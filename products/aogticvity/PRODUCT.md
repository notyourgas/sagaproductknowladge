# AOGTICVITY Product Knowledge

Updated: 4 Agustus 2026
Evidence status: public Vercel delivery + database-backed auth, registration, team, and event-day operations runtime

## Tujuan dokumen

Menjadi ringkasan fakta kanonik AOGTICVITY. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#aogticvity).

## Konteks

Dokumen membedakan public Vercel delivery, operasi yang sudah server-authoritative,
surface pendukung yang masih memakai local state, dan UAT fisik multi-device
yang masih tertunda.

## Ringkasan

AOGTICVITY adalah web app mobile-first untuk community matchday dan operasi
event/kompetisi hari-H.

Nama ini menggantikan penyebutan project `17an` atau `Olimpiade Kemerdekaan`
sebagai nama produk terbaru. Nama lama tetap disimpan sebagai provenance.

## Target pengguna

- Peserta/player.
- Leader tim.
- Admin event.
- Operator check-in dan scoring.
- Penonton melalui public/live projection.

## Scope

- Registrasi dan verifikasi.
- Check-in.
- Delapan tim.
- Sepuluh lomba dari master recap 17 Agustus 2026.
- Roster dan assignment.
- Jadwal.
- Competition/result draft-publish-correct.
- Standing.
- Announcement.
- Audit.
- Export/print.
- Live projection.
- Offline/fallback hari-H.

## Surface target

| Surface | Target |
|---|---|
| Public | `aogticvity.com` |
| Admin | `admin.aogticvity.com` |
| Player | `app.aogticvity.com` |
| Leader | `appl.aogticvity.com` |

Domain tersebut target, bukan bukti production aktif.

Public delivery saat ini: `https://olimpiade-kemerdekaan.vercel.app`.

## Arsitektur status

- Frontend mobile-first.
- Motion for React menangani page/state/gesture animation; canvas-confetti hanya
  dipakai pada success bernilai tinggi dan dinonaktifkan saat reduced-motion.
- Backend Hostinger memakai identity MySQL dan database session untuk role
  `admin/operator/leader/player`, forced password change, TOTP admin, rate
  limit, revoke session, serta server-side page/API authorization.
- Vercel menjadi public edge dan meneruskan request melalui HTTPS dengan
  server-only proxy secret; endpoint BFF langsung fail-closed dan MySQL tetap
  loopback-only.
- Check-in, roster, event-master, dan result publish/correct memakai versioning,
  idempotency, permission, persistence MySQL, dan audit event.
- Public registration memakai validasi server, consent version, anti-bot,
  anonymous rate limit, idempotent receipt, transaksi MySQL, dan audit. Admin
  dapat membaca serta memverifikasi pendaftaran dari authenticated desk.
- Source release `6b4b6feca16dc2d49b909f9301227e5078dfaf60` membawa akses peserta
  passwordless ke runtime public: transactional WhatsApp outbox, provisioning
  role `player`, Better Auth magic link single-use 30 menit, hash-only token
  ledger, adapter Fonnte, session HttpOnly, revocation, status webhook,
  retry/recovery operator, dan redacted operations console.
- Hostinger release `20260802T125353Z`, Vercel production
  `dpl_3zhzGA9oTp7U2QkKVyekJPZTxkz2`, serta MySQL migration 009–010 aktif.
  Fonnte device preflight dan satu pengiriman kanal ke penerima UAT lulus.
  Provider status webhook dan approval → magic-link → session → reuse/revoke
  UAT belum lulus, sehingga WhatsApp login belum boleh diklaim production-ready.
- Source `864ef633c040ede662e569fe768513a46a57befd`, Hostinger release
  `20260802T134116Z`, Vercel production
  `dpl_3tesPCd9CH8CURfusqeZM2BkMHdX`, dan migration 011–012 mengaktifkan
  redirect home server-side berdasarkan role database, workspace operator
  terpisah, assignment tim leader dari admin, workspace player/leader
  team-scoped, roster perwakilan atomik, serta status lomba lintas perangkat.
  Role tidak lagi dipilih pengguna; leader tidak lagi memakai PIN prototype;
  CSV assignment menerima seluruh delapan canonical team ID.
- Source `5820d8199e75bd9c00f3bdbb8de51e831a0b5717`, Hostinger release
  `20260802T164829Z`, Vercel production
  `dpl_65E94pdpkp6kcF7xMrwkMsmxM7ju`, dan migration 013 mengaktifkan team
  generator serta assignment langsung yang persisten. Lifecycle global
  `Draft → Published → Locked`, controlled reopen, optimistic version,
  idempotency, audit, dan invalidasi roster lomba stale sekarang ditegakkan
  server-side. Leader/Player hanya menerima assignment saat Published/Locked.
- Source `baffaa52c0567d3fb3ed665ae673cf6e7c32e40c`, Hostinger release
  `20260802T174812Z`, Vercel production
  `dpl_9gXvi7t6xv6fisNC4LuuAiqZGvsX`, dan migration 014 mengaktifkan rundown,
  assignment operator per lomba, recovery status beralasan, result
  `Draft → Published/Corrected`, standing publik, serta live display persisten.
  Operator hanya dapat mengubah lomba assigned; admin publish menyelesaikan
  lomba secara atomik. Optimistic version, idempotency, dan audit aktif.
- Source `3917b5ea07ddfec33a7c0bd18194f1d7d18b29da`, Hostinger release
  `20260802T193509Z`, Vercel production
  `dpl_CDcW9tZehoaM38aSSb3Nu5u8CGDU`, dan migration 015 mengaktifkan
  announcement persistence serta Day-H Readiness Snapshot. Publish,
  pin/unpin, archive/restore bersifat admin-only, transactional, idempotent,
  versioned, dan audited. Feed peserta hanya menerima pengumuman publik aktif.
  Admin/operator dapat membandingkan snapshot agregat PII-free dengan digest,
  cache perangkat terakhir, dan export JSON.
- Source `64d00282d1eb3fc13713f818c7c326659464676d`, Hostinger release
  `20260803T061744Z`, Vercel production
  `dpl_9MtjxbGLSHNz7bHXjrLS1RZpZm5U`, dan migration 016 memperbaiki redirect
  magic-link agar selalu kembali ke origin publik, bukan listener internal.
  Workspace peserta kini server-authoritative dengan revision/ETag, refresh
  12 detik plus focus/reconnect recovery, status sinkronisasi, serta feed
  assignment roster dan lifecycle tim yang transaksional.
- Source UI `390e07a2d1b087666dfee97438b35b2c0eef362c`, Hostinger release
  `20260803T123530Z`, dan Vercel production
  `dpl_7iF6UC1XYEq8fdn9ykrUbDozxsVx` mengaktifkan `Pixel Matchday Arcade`
  pada seluruh public/player/leader/operator/admin/live surface. Sistem tetap
  memakai Plus Jakarta Sans, Feather-style icons, canvas mobile-first 430 px,
  state lengkap, dan reduced-motion; kontrak data, auth, role, serta API tidak
  berubah.
- Source UI `3f5cf151666dbb3d83030ffef8127fdd88ad55ac`, Hostinger release
  `20260803T132457Z`, dan Vercel production
  `dpl_G7AGcqTMFxi2w3AHhCD5F3RYWGCe` mengaktifkan refinement `Calm HUD`
  berbasis 24 micro-sprint. Topbar dan bottom navigation mempunyai baris
  layout sendiri; hanya main content yang scroll. Safe wrapping, spacing
  4/8/12/16/24/32, hierarchy heading/card/form/status, compact admin controls,
  serta focusable scroll region mencegah teks dan kontrol saling menutup.
- Source UI `bdcb5b76009eb807b00a975cbc4e4901fe71de74`, Hostinger release
  `20260803T223609Z`, dan Vercel production
  `dpl_88XXaFUfsW4ivSBnk7qBc3KPTUAf` memperbaiki kartu alur pendaftaran pada
  viewport sempit. Nomor, copy, dan panah memakai track terpisah dengan gap
  tetap sehingga tidak saling menumpuk pada 320 px.
- Source `e38de48b2e8a88d7a7e2ac8aa54b0af9e398b38c`, Hostinger release
  `20260803T192801Z`, Vercel production
  `dpl_8PU7woDFGWbJeK3dYTMZHASfzX4K`, dan migration 017 mengganti taxonomy
  komunitas demo. Pendaftaran baru hanya menawarkan kategori `TEEN` dengan
  `CG teen 1` sampai `CG teen 6`, serta `SOUTH, WEST, CENTRAL` dengan
  `CG youth 1` sampai `CG youth 8`. Validasi API dan constraint MySQL menolak
  pasangan silang; record taxonomy lama tetap dipertahankan sebagai legacy
  read-only tanpa ditampilkan pada form baru.
- Source `ecaa63f42deaf61e0777959853106e61e4b0bbc3`, Hostinger release
  `20260803T221158Z`, Vercel production
  `dpl_9jKWEEKDQJkszwBGNyyNYTpBs2CJ`, dan migration 018 mengaktifkan Admin
  Control Center serta CRUD/lifecycle anggota dan tim. Admin dapat membuat
  anggota manual, mengedit identitas komunitas, mengarsipkan anggota dengan
  pencabutan sesi/assignment, serta mengubah atau mereset profil tim. Write
  admin-only memakai same-origin, optimistic version, idempotency, transaksi,
  dan append-only audit. ID/jumlah tim serta histori operasional tetap
  fail-closed dari hard delete.
- Source `8bc827b8014cc9df37c952b843790f046c5de07c`, Hostinger release
  `20260803T222400Z`, Vercel production
  `dpl_7haQUfw8PJsJqazJgNXN7zxSL737`, dan migration 019 menetapkan nama final
  `team-7` sebagai **Team Kindness** (Kebaikan) serta `team-8` sebagai
  **Team Patience** (Kesabaran). ID, warna, anggota, assignment, roster,
  hasil, dan leaderboard tidak berubah.
- Source `f7fd6f161985a4b0886f03ad67776e1b08a76b4d`, Hostinger release
  `20260803T234003Z`, dan Vercel production
  `dpl_G1LSCYXbuu5RNjdF8Fpdc98mXtwq` menambahkan flow `Hapus peserta` pada
  admin. Penghapusan memakai lifecycle `Withdrawn`: peserta hilang dari daftar
  aktif, akses/sesi/tim/roster dicabut, sedangkan audit dan histori dipertahankan.
- Source UI `cd26cf52ad8f56320bcf4240ab73b0868af50298`, Hostinger release
  `20260803T235030Z`, dan Vercel production
  `dpl_8q5LTDZappCxbDo4igw1LMaGwuEE` menyederhanakan kartu agenda. Jadwal
  menampilkan waktu mulai saja, durasi menjadi teks `(n menit)` pada baris
  kategori, dan ikon jenis lomba dihapus. Status, lokasi, link detail, serta
  data rundown tidak berubah.
- Source UI `63fbb593236eff1bcbdb19b3383c591efe263e08`, Hostinger release
  `20260804T055431Z`, dan Vercel production
  `dpl_Bw3VAk3xYqXAsnESS7HF6L9BnEPu` melonggarkan timeline resmi pada halaman
  Info. Milestone mempunyai inset 14 px, gap 12 px, deskripsi selebar kartu,
  serta jarak 16 px ke panel keselamatan tanpa mengubah data timeline.
- Source UI `2590f69d3ac609f6f92d3badb1343ad55f1a239c`, Hostinger release
  `20260804T061230Z`, dan Vercel production
  `dpl_e3nqmA7PoXHxfRuBiLLUwvzuUtoz` menambahkan riwayat pemenang pada Standing
  resmi. Sepuluh lomba selalu tampil sebagai accordion; hanya hasil
  `Published`/`Corrected` yang memunculkan podium, sedangkan `Draft` tetap
  tersembunyi dan lomba tanpa publikasi memakai empty state jujur.
- Source `308a8547af171c9fc26ce07350ca332bbe8ae913`, Hostinger release
  `20260804T065837Z`, Vercel production
  `dpl_9CknJM1QQzWGjbCPXFWPXegA2SBH`, dan migration 020 mengaktifkan jalur
  `/register/guest` untuk pemain undangan. Form hanya meminta nama, WhatsApp,
  status sudah/belum memiliki CG, dan consent. Admin wajib memilih tim Draft
  saat approval; assignment tim, provisioning player, antrean WhatsApp, dan
  audit terjadi atomik. Generator tim mempertahankan guest pada tim pilihan
  admin dan hanya menyeimbangkan anggota komunitas. Technical production
  deployment lulus; satu siklus guest nyata sampai valid-link/session masih
  memerlukan UAT sebelum fitur ini dinyatakan production-activated.
- SQLite hanya fast test adapter.
- Event-master memiliki dry-run, validation, atomic publish, versioning, dan
  audit. Durasi jadwal bersifat provisional dan dapat disunting admin.
- Lomba seluruh tim memakai roster otomatis tanpa input nama peserta.
- Admin MFA bersifat opsional sesuai keputusan founder. Passphrase kuat,
  forced bootstrap change, HttpOnly session, expiry, RBAC, rate limit, revoke,
  dan audit tetap wajib.
- Participant fixture dan persistence registrasi localStorage telah dihapus.
  Roster perwakilan, status lomba, team generator, direct assignment,
  publish/lock pembagian tim, rundown, result verification, dan live-controller
  kini server-authoritative. Announcement dan readiness console juga persisten;
  seluruh operasi hari-H tetap memerlukan authenticated multi-device UAT
  sebelum diklaim siap.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation produk keseluruhan:
`NOT_PRODUCTION_ACTIVATED`; auth dan public registration:
`PRODUCTION_ACTIVATED`. Business readiness: `BLOCKED`.

- UI public/player/leader/admin/live aktif pada public Vercel delivery.
- UI memakai `Pixel Matchday Arcade` yang tetap mobile-first 430 px: Plus
  Jakarta Sans, Feather-style icons, stepped geometry, hard shadow, quest/HUD
  hierarchy, state feedback, dan motion yang menghormati reduced-motion.
- Public visual regression lulus 50/50 pada enam route dan viewport 320, 390,
  430, serta 1440 px; matriks memeriksa overflow teks, collision sibling,
  clearance navigasi, touch target, reduced motion, dan axe WCAG.
- Agenda publik/peserta memakai tiga track: waktu mulai, informasi lomba, dan
  panah. Durasi tampil sebagai teks pada baris kategori tanpa ikon jenis lomba;
  lokasi serta status tetap terlihat. Form, timeline, standing, dan panel
  operasional memakai wrapping serta gap konsisten.
- Timeline resmi pada halaman Info memisahkan judul/status dari deskripsi,
  memakai padding dan gap antarkartu yang konsisten, serta memberi jarak aman
  sebelum peringatan keselamatan.
- Standing resmi memuat accordion riwayat untuk seluruh 10 lomba. Podium Juara
  1/2/3 muncul hanya setelah hasil dipublikasikan atau dikoreksi admin; halaman
  menyegarkan hasil setiap 12 detik serta saat focus, visibility, dan koneksi
  kembali aktif.
- Master recap 2026 berisi 8 tim, 10 lomba, jadwal provisional, mekanisme,
  safety, equipment, dan assignment panitia.
- Database-backed auth aktif melalui Vercel: real credential login dan forced
  password change terverifikasi; akun admin sudah diklaim, privileged routes
  memakai server session, dan dev session tetap 404.
- Public submit, MySQL persistence, admin list/approve, idempotent replay,
  audit, reconciliation, dan cleanup UAT terbukti end-to-end. Dataset awal
  production kosong dan pendaftaran dibuka eksplisit pada backend.
- Hostinger BFF hanya menerima Vercel proxy secret melalui HTTPS; direct endpoint
  404 dan MySQL tetap bind pada loopback.
- Typecheck, test, build, security, accessibility, responsive, migration, dan
  rollback telah menjadi gate.
- Announcement publik/operasional dan Day-H readiness aggregate sudah aktif
  pada public delivery. Readiness tanpa session ditolak dan snapshot tidak
  membawa nama, nomor WhatsApp, actor ID, atau credential.
- Login tidak memiliki selector role atau email admin bawaan. Admin menetapkan
  role dan tim leader; perubahan assignment mencabut session lama. Admin,
  operator, leader, dan player mempunyai home route kanonik yang ditegakkan
  server-side.
- Roster/check-in/result rehearsal lintas perangkat, target custom domains,
  aktivasi provider status webhook, valid-link WhatsApp session UAT dua
  perangkat, serta UAT fisik hari-H belum selesai. Public invalid-link smoke
  sudah membuktikan redirect memakai origin Vercel dan tidak lagi localhost.

## Belum boleh diklaim

- Fonnte runtime dan pengiriman kanal UAT sudah aktif. Redirect magic-link dan
  state invalid/expired/consumed sudah diperbaiki, tetapi UI tidak boleh
  mengklaim seluruh flow login WhatsApp production-ready sebelum webhook status
  dan valid-link two-device session UAT lulus.
- Announcement, rundown, result desk, live-controller, dan readiness snapshot
  sudah server-authoritative, tetapi authenticated four-role multi-device UAT,
  stale-write browser UAT, dan offline cached-snapshot recovery belum sign-off.
- Auth dan registrasi sudah terbukti, tetapi belum membuktikan seluruh
  event-day journey business-ready sebelum operations rehearsal.

## Ide konten

- Command center lomba 17an.
- Dari check-in sampai standing live.
- Offline fallback untuk event.
- Mengapa scoring perlu draft/publish/correct dan audit.
