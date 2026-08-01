# AOGTICVITY Product Knowledge

Updated: 1 Agustus 2026
Evidence status: public Vercel prototype + dark staging backend

## Tujuan dokumen

Menjadi ringkasan fakta kanonik AOGTICVITY. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#aogticvity).

## Konteks

Dokumen membedakan public prototype Vercel yang sudah aktif, backend dark
staging yang sudah terverifikasi, dan runtime multi-device production yang
belum diaktifkan.

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

Public prototype saat ini: `https://olimpiade-kemerdekaan.vercel.app`.

## Arsitektur status

- Frontend mobile-first.
- Motion for React menangani page/state/gesture animation; canvas-confetti hanya
  dipakai pada success bernilai tinggi dan dinonaktifkan saat reduced-motion.
- Backend dark staging memakai identity MySQL dan database session untuk role
  `admin/operator/leader/player`, forced password change, TOTP admin, rate
  limit, revoke session, serta server-side page/API authorization.
- Check-in, roster, event-master, dan result publish/correct memakai versioning,
  idempotency, permission, persistence MySQL, dan audit event.
- SQLite hanya fast test adapter.
- Event-master memiliki dry-run, validation, atomic publish, versioning, dan
  audit. Durasi jadwal bersifat provisional dan dapat disunting admin.
- Lomba seluruh tim memakai roster otomatis tanpa input nama peserta.
- Sebagian state UI masih memakai localStorage sampai auth produksi, runtime API
  frontend, domain/TLS, dan UAT multi-device lulus.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `NOT_PRODUCTION_ACTIVATED`. Business
readiness: `BLOCKED`.

- UI public/player/leader/admin/live aktif pada public Vercel prototype.
- UI memakai festival motion system yang tetap mobile-first 430 px: Plus
  Jakarta Sans, Feather-style icons, hierarchy/spacing yang dipadatkan,
  animated navigation, state feedback, serta celebration terbatas yang
  menghormati reduced-motion.
- Master recap 2026 berisi 8 tim, 10 lomba, jadwal provisional, mekanisme,
  safety, equipment, dan assignment panitia.
- Backend auth/operations aktif pada immutable Hostinger dark staging yang
  hanya dapat diakses melalui loopback; migration identity dan result serta
  recovery bootstrap ter-audit sudah lulus smoke.
- MySQL-backed API pada Vercel tetap fail-closed 503 dan dev session 404;
  browser masih memakai bundled master/local state.
- Typecheck, test, build, security, accessibility, responsive, migration, dan
  rollback telah menjadi gate.
- Human password-change/TOTP UAT, public TLS/trusted origins, secure
  Vercel-to-Hostinger path, target custom domains, notification provider, dan
  UAT fisik multi-device belum terverifikasi.

## Belum boleh diklaim

- Role switcher/PIN demo bukan auth production.
- Fonntte queue masih simulation.
- localStorage bukan persistence multi-device.
- Public Vercel prototype bukan bukti custom domain atau core journey
  database-backed sudah aktif.

## Ide konten

- Command center lomba 17an.
- Dari check-in sampai standing live.
- Offline fallback untuk event.
- Mengapa scoring perlu draft/publish/correct dan audit.
