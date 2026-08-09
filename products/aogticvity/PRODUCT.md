# AOGTIVITY Product Knowledge

Updated: 10 Agustus 2026
Evidence status: public Vercel delivery + database-backed auth, registration, team, and event-day operations runtime

## Tujuan dokumen

Menjadi ringkasan fakta kanonik AOGTIVITY. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#aogtivity).

## Konteks

Dokumen membedakan public Vercel delivery, operasi yang sudah server-authoritative,
surface pendukung yang masih memakai local state, dan UAT fisik multi-device
yang masih tertunda.

## Ringkasan

AOGTIVITY adalah web app mobile-first untuk community matchday dan operasi
event/kompetisi hari-H.

Nama ini menggantikan **AOGTICVITY** serta penyebutan project `17an` atau
`Olimpiade Kemerdekaan` sebagai nama produk terbaru. Nama lama dan slug teknis
`aogticvity` tetap disimpan sebagai provenance dan compatibility identifier.

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
| Public | `aogticvities.fun` |
| Admin | `admin.aogticvities.fun` |
| Player | `app.aogticvities.fun` |
| Leader | `appl.aogticvities.fun` |

Domain telah dibeli dan kelima hostname, termasuk `www`, aktif melalui Vercel.
DNS Hostinger, sertifikat, runtime origin, role routing, serta public smoke
telah lulus. Domain technically production-activated; business readiness tetap
menunggu human UAT.

Public delivery kanonik: `https://aogticvities.fun`.

Rebrand AOGTIVITY pertama kali aktif pada source `e4c217b`; runtime terbaru
adalah `625efddf2da75a416fb82ed21e51725390a77e7c`, Hostinger
`20260809T230612Z`, dan Vercel `dpl_4txuxGraGsfaT9BSWzWvT24uZ8wg`. UI,
metadata, PWA, aset merek, pesan
WhatsApp baru, serta issuer TOTP baru memakai AOGTIVITY. Domain, repository,
path deploy, environment variable, cookie/session prefix, database, service,
dan identifier integrasi lama tidak diganti agar sesi, data, dan rollback tetap
kompatibel.

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
- Migration 029 menyediakan laporan peserta satu arah MySQL ke Google Sheets.
  Sheet kini Restricted/owner-only dan tab `WA Manual` berisi link personal
  hanya untuk peserta Approved melalui koneksi Drive terautentikasi. Worker
  otomatis Hostinger tetap OFF karena credential service account belum tersedia.
- Migration 030 dan runtime source `625efdd` menyediakan permanent participant
  access yang dapat dipakai ulang. Token HMAC berada di URL fragment dan tidak
  disimpan mentah; setiap login memeriksa approval, role, banned state, access
  policy, status, dan versi pass. Revoke/withdraw memutar versi serta mencabut
  sesi aktif. Sesi browser tetap HttpOnly/Secure dan berumur delapan jam.
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
  komunitas demo menjadi `TEEN`/CG teen 1-6 dan `SOUTH, WEST, CENTRAL`/CG
  youth 1-8. Record taxonomy lama tetap dipertahankan sebagai legacy read-only.
- Source runtime `5a2d3ef3fdb21503f9a559334796cea656f1a087`, Hostinger release
  `20260806T055642Z`, Vercel production
  `dpl_4RtjNcViWkxN3fZSTZ15VWiumy5G`, dan migration 024 menambah kategori utama
  `Other Region` dengan kode stabil `OtherRegion`. Subcategory yang sah hanya
  `AOG Ponorogo` dan `AOG Magetan`. Form publik/admin, API, export, dan
  constraint MySQL memakai kontrak yang sama serta menolak pasangan silang.
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
- Source `111e01152c842d802ff1b4114f8e787577fe611d`, Hostinger release
  `20260804T164327Z`, dan Vercel production
  `dpl_5pVdzKAGfZVv4w41cLborLhDFv4Z` menutup dua blocker P0. Form konfirmasi
  magic-link kini mengirim origin publik yang valid tanpa melemahkan
  same-origin; modal pendaftaran memakai portal, VisualViewport, content scroll,
  footer CTA aman, background inert, dan bottom navigation tersembunyi. Tidak
  ada perubahan schema/data. Valid-link/session nyata tetap memerlukan UAT.
- Source `f915947f8159cfa6bde922c26cc6615273547372`, Hostinger release
  `20260804T180816Z`, dan Vercel production
  `dpl_GU4AUDL98wgfM9KAFwgCKHY68KpB` menyiapkan domain kanonik `.fun`.
  Hostname routing dan trusted origins sudah tersedia di runtime, sedangkan
  `APP_PUBLIC_URL` dan `BETTER_AUTH_URL` sekarang memakai player/admin domain
  `.fun`; URL Vercel lama tetap trusted dan tersedia sebagai rollback.
- Source runtime `15cf535893a67fad1c00b2bfe55c43951b978099`, Hostinger release
  `20260804T185839Z`, dan Vercel production
  `dpl_3yVYyFzQKU3Ba7xaBffSHq57F3cS` menambahkan finalization gate yang dapat
  diulang. Production-domain suite memeriksa mobile/accessibility, security
  header, canonical/role redirect, anonymous API boundary, dev-session denial,
  dan cross-origin write. Offline/reconnect registration, 20 migration serta
  22 integration test disposable MySQL, backup integrity, disposable restore,
  aggregate readiness audit PII-free, dan operator runbook juga lulus.
  Application runtime sehat; business readiness masih `BLOCKED` oleh finalisasi
  data admin, valid-link WhatsApp/two-device UAT, dan rehearsal fisik.
- Source `356e2126ea0b9dc10f9c9bb5d9e299c93b963fa1`, Hostinger release
  `20260805T035621Z`, Vercel production
  `dpl_FxpLMFrkYqPebdhRmwR5kVb9gaKb`, dan migration 021 mengaktifkan kebijakan
  akses peserta. Admin dapat membuka/menutup link yang belum dipakai dan memilih
  TTL 15 menit sampai 24 jam tanpa memutus sesi aktif. Jalur pemain luar kini
  tampil sebagai VIP, disetujui tanpa tim, lalu ikut generator tim seimbang.
  Mutation policy admin-only memakai same-origin, idempotency, optimistic
  version, transaksi, dan audit. Aktivasi operasional menunggu UAT manusia.
- Source runtime `5bc951e0b8747e113b69b18162a200c592b39d3c`, Hostinger
  release `20260805T145857Z`, Vercel production
  `dpl_DacHrH6BN3u3bbD4ckFje7rU3fST`, dan migration 022 mengganti `cmp-2`
  menjadi **Ambil Bola Pakai Sarung** serta `cmp-8` menjadi **Paralon Bola**.
  Keduanya adalah lomba seluruh tim dengan roster otomatis, 10 menit bermain,
  5 menit pergantian, dan ranking jumlah bola. Admin mengisi skor delapan tim;
  publish seri podium ditahan sampai tie-break dikonfirmasi. Legacy URL tetap
  menuju lomba pengganti dan total rundown provisional tetap 275 menit.
- Source runtime `640990f619156e16159be0562ccae1e7f259aa0b`, Hostinger release
  `20260805T190449Z`, Vercel production
  `dpl_6zCCyTMBbA4eNgP7FYyanJ1RChAJ`, dan migration 023 mengaktifkan
  finalisasi reliability operasional. Admin dapat merekonsiliasi pesan yang
  dikonfirmasi diterima tanpa resend melalui write admin-only, same-origin,
  transactional, idempotent, dan audited. Worker outbox otomatis berjalan
  setiap menit, health probe setiap dua menit, readiness membedakan antrean
  internal dari provider queue, rundown mempunyai bulk PIC assignment, dan
  offline cache dibatasi hanya pada public allowlist. WhatsApp delivery channel
  telah dikonfirmasi founder; record lama tetap membutuhkan rekonsiliasi admin
  agar audit server sesuai fakta.
- Source runtime `b7fabaaf58dfd4d9d00043f7864ef7691f39a13f`, Hostinger release
  `20260806T043451Z`, dan Vercel production
  `dpl_ERhafxHwXJCoTHbV8dxsskExieC7` memfinalisasi hasil ke standing live.
  Server membentuk snapshot standing resmi hanya dari hasil
  `Published`/`Corrected`, memakai kebijakan poin berversi 15/10/5, revision
  deterministik, ETag, idempotency, optimistic version, correction audit, dan
  rate limit. Dashboard hasil aktif refresh maksimal 3 detik; public standing,
  live, dan team maksimal 5 detik serta pulih saat focus/reconnect. Worker
  WhatsApp juga dibuat tahan immutable release dan timer terverifikasi exit 0.
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
- Runtime source `c9a6702094ea36088c44040656f638d3db28da57` menerjemahkan
  poster AOGTIVITY menjadi event identity lime-navy-magenta dengan halftone,
  petir, spark, koin, handheld-console frame, serta hierarchy nama
  **AOGTIVITY / 17 Agustus 2026 / Army of God Madiun**. Theme ini aktif pada
  Hostinger `20260809T075137Z` dan Vercel `dpl_D1ubBCWkFs6ENp9CqPz5Fv25zwYE`.
- Rundown owner-confirmed terbaru menyamakan waktu hadir dan waktu mulai
  menjadi 14.30 WIB (`DEC-063`): Opening Tim & Yel-yel 15 menit, Sing
  Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding &
  Closing. `DEC-059` mengunci Lomba 9 dan Lomba 10 masing-masing 30 menit,
  serta Awarding & Closing 15 menit. Lomba pertama mulai 15.00, Lomba 9
  18.05, Lomba 10 18.35, Awarding & Closing 19.05, dan estimasi selesai
  19.20 WIB. Migration 027 mengubah durasi/jam secara audited dan reversible
  tanpa menghapus peserta, hasil, atau assignment operator.
- Security gate release juga memaksa dependency transitif `nanoid` ke versi
  patched 3.3.17; audit npm/pnpm production kembali nol vulnerability.
- UI memakai `Pixel Matchday Arcade` yang tetap mobile-first 430 px: Plus
  Jakarta Sans, Feather-style icons, stepped geometry, hard shadow, quest/HUD
  hierarchy, state feedback, dan motion yang menghormati reduced-motion.
- Public visual regression lulus 66/66 pada route publik dan viewport 320, 390,
  430, serta 1440 px; matriks memeriksa overflow teks, collision sibling,
  clearance navigasi, touch target, reduced motion, axe WCAG, CTA modal pada
  visual viewport pendek, dan origin POST magic-link.
- Agenda publik/peserta memakai tiga track: waktu mulai, informasi lomba, dan
  panah. Durasi tampil sebagai teks pada baris kategori tanpa ikon jenis lomba;
  lokasi serta status tetap terlihat. Form, timeline, standing, dan panel
  operasional memakai wrapping serta gap konsisten.
- Timeline resmi pada halaman Info memisahkan judul/status dari deskripsi,
  memakai padding dan gap antarkartu yang konsisten, serta memberi jarak aman
  sebelum peringatan keselamatan.
- Standing resmi memuat accordion riwayat untuk seluruh 10 lomba. Podium Juara
  1/2/3 muncul hanya setelah hasil dipublikasikan atau dikoreksi admin; halaman
  memakai snapshot server yang sama dan menyegarkan maksimal setiap 5 detik
  serta saat focus, visibility, dan koneksi kembali aktif.
- Master recap 2026 berisi 8 tim dan 10 lomba. `Lingkarin Angka` menggantikan
  `Trenggiling Bolak-Balik` pada slot 17.30 selama 20 menit; 12 penugasan
  panitia final mencakup pemisahan Grup A/B untuk Suit Karton dan Voli Air.
  Jadwal, peserta, roster, hasil, dan standing tidak dimutasi oleh perubahan
  master ini.
- Dua lomba tim bola pengganti sudah production-deployed dengan scoring jumlah
  bola dan tie-break fail-closed; rehearsal keselamatan serta authenticated
  two-device scoring UAT belum sign-off.
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
- Roster/check-in/result rehearsal lintas perangkat,
  assignment empat peserta approved, assignment PIC 10 lomba, valid-link
  WhatsApp session UAT dua perangkat, serta UAT fisik hari-H belum selesai.
  Provider webhook tetap belum terverifikasi walaupun delivery channel telah
  dikonfirmasi founder. Public invalid-link smoke
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
