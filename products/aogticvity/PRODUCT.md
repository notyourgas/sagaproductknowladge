# AOGTICVITY Product Knowledge

Updated: 31 Juli 2026
Evidence status: dark staging release candidate

## Tujuan dokumen

Menjadi ringkasan fakta kanonik AOGTICVITY. Detail product, experience,
business, technical, sales, dan content berada di [DOSSIER](DOSSIER.md).
Keputusan terbuka berada di [GAPS](../../GAPS.md#aogticvity).

## Konteks

Dokumen membedakan dark staging yang sudah terverifikasi dari domain publik dan
runtime multi-device production yang belum diaktifkan.

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

## Arsitektur status

- Frontend mobile-first.
- Backend check-in, roster, session/security, dan event-master vertical slice
  dengan MySQL staging.
- SQLite hanya fast test adapter.
- Event-master memiliki dry-run, validation, atomic publish, versioning, dan
  audit. Durasi jadwal bersifat provisional dan dapat disunting admin.
- Lomba seluruh tim memakai roster otomatis tanpa input nama peserta.
- Sebagian state UI masih memakai localStorage sampai auth produksi, runtime API
  frontend, domain/TLS, dan UAT multi-device lulus.

## Status saat ini

Delivery: `STAGING_DEPLOYED`. Activation: `NOT_PRODUCTION_ACTIVATED`. Business
readiness: `BLOCKED`.

- UI public/player/leader/admin/live tersedia.
- Master recap 2026 berisi 8 tim, 10 lomba, jadwal provisional, mekanisme,
  safety, equipment, dan assignment panitia.
- Backend slice dan migration MySQL sudah lulus dark-staging smoke.
- Typecheck, test, build, security, accessibility, responsive, migration, dan
  rollback telah menjadi gate.
- Auth/IdP production, domain, TLS, frontend API activation, notification
  provider, dan UAT fisik multi-device belum terverifikasi.

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
