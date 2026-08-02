# AOGTICVITY Product Knowledge

Updated: 3 Agustus 2026
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
- UI memakai festival motion system yang tetap mobile-first 430 px: Plus
  Jakarta Sans, Feather-style icons, hierarchy/spacing yang dipadatkan,
  animated navigation, state feedback, serta celebration terbatas yang
  menghormati reduced-motion.
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
  aktivasi provider status webhook, WhatsApp magic-link/session UAT, serta UAT
  fisik hari-H belum selesai.

## Belum boleh diklaim

- Fonnte runtime dan pengiriman kanal UAT sudah aktif, tetapi UI tidak boleh
  mengklaim seluruh flow login WhatsApp production-ready sebelum webhook status
  dan two-device magic-link/session UAT lulus.
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
