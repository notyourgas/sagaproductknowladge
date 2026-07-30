# AOGTICVITY Product Knowledge

Updated: 31 Juli 2026
Evidence status: prototype + local release candidate

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
- Enam tim.
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

## Arsitektur status

- Frontend mobile-first.
- Backend check-in vertical slice dengan MySQL adapter.
- SQLite hanya fast test adapter.
- UI publik lama masih memakai localStorage sampai auth, staging roster,
  domain/TLS, dan UAT multi-device lulus.

## Status saat ini

Status: `PROTOTYPE/LOCAL_RELEASE_CANDIDATE`.

- UI public/player/leader/admin/live tersedia.
- Backend slice dan migration tersedia.
- Typecheck/test/build lokal telah menjadi gate.
- Production MySQL credential, domain, TLS, dan authenticated multi-device
  runtime belum terverifikasi.

## Belum boleh diklaim

- Role switcher/PIN demo bukan auth production.
- Fonntte queue masih simulation.
- localStorage bukan persistence multi-device.
- Domain target belum berarti live.

## Ide konten

- Command center lomba 17an.
- Dari check-in sampai standing live.
- Offline fallback untuk event.
- Mengapa scoring perlu draft/publish/correct dan audit.
