# AOGTICVITY Product Knowledge

Updated: 1 Agustus 2026
Evidence status: public Vercel delivery + database-backed auth/runtime

## Tujuan dokumen

Menjadi ringkasan fakta kanonik AOGTICVITY. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#aogticvity).

## Konteks

Dokumen membedakan public Vercel delivery dengan auth/database nyata, surface
yang masih memakai local state, dan runtime multi-device yang masih menunggu
human UAT.

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
- SQLite hanya fast test adapter.
- Event-master memiliki dry-run, validation, atomic publish, versioning, dan
  audit. Durasi jadwal bersifat provisional dan dapat disunting admin.
- Lomba seluruh tim memakai roster otomatis tanpa input nama peserta.
- Admin MFA bersifat opsional sesuai keputusan founder. Passphrase kuat,
  forced bootstrap change, HttpOnly session, expiry, RBAC, rate limit, revoke,
  dan audit tetap wajib.
- Sebagian state UI masih memakai localStorage sampai seluruh runtime API
  frontend dan UAT multi-device lulus.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `NOT_PRODUCTION_ACTIVATED`. Business
readiness: `BLOCKED`.

- UI public/player/leader/admin/live aktif pada public Vercel delivery.
- UI memakai festival motion system yang tetap mobile-first 430 px: Plus
  Jakarta Sans, Feather-style icons, hierarchy/spacing yang dipadatkan,
  animated navigation, state feedback, serta celebration terbatas yang
  menghormati reduced-motion.
- Master recap 2026 berisi 8 tim, 10 lomba, jadwal provisional, mekanisme,
  safety, equipment, dan assignment panitia.
- Database-backed auth aktif melalui Vercel: real credential login dan forced
  password-change redirect terverifikasi; privileged routes memakai server
  session dan dev session tetap 404.
- Hostinger BFF hanya menerima Vercel proxy secret melalui HTTPS; direct endpoint
  404 dan MySQL tetap bind pada loopback.
- Typecheck, test, build, security, accessibility, responsive, migration, dan
  rollback telah menjadi gate.
- Human password-change dan core admin operations UAT, target custom domains,
  notification/recovery provider, serta UAT fisik multi-device belum selesai.

## Belum boleh diklaim

- Role switcher/PIN demo bukan auth production.
- Fonntte queue masih simulation.
- localStorage bukan persistence multi-device.
- Real login sudah terbukti, tetapi belum membuktikan seluruh event-day journey
  business-ready sebelum human operations UAT.

## Ide konten

- Command center lomba 17an.
- Dari check-in sampai standing live.
- Offline fallback untuk event.
- Mengapa scoring perlu draft/publish/correct dan audit.
