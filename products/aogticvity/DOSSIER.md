# AOGTICVITY Dossier

## Tujuan dokumen

Menjaga scope event-day operations, readiness, bisnis, teknis, sales, dan
content AOGTICVITY tetap jelas.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `STAGING_DEPLOYED`
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
backend check-in, roster, session/security, dan event-master vertical slices.

## Fitur MVP

Satu event dengan delapan tim dan sepuluh lomba, authenticated roles, MySQL
persistence, multi-device check-in/scoring, audit, projection, dan fallback.
Master event dark staging sudah terverifikasi; auth produksi, frontend API
activation, dan rehearsal fisik tetap belum production.

## Roadmap

1. Finalize auth/IdP produksi dan aktifkan frontend API setelah UAT.
2. Domain/TLS dan provider notification.
3. Finalisasi nama Tim 7/Tim 8, durasi, serta keputusan open pada master recap.
4. Multi-device/event rehearsal dan public smoke.
5. `NEEDS CONFIRMATION`: repeatable product/service model.

## User journey

Register → verify → team/roster → check-in → play → result publish/correct →
standing/announcement.

## User flow

Scoring harus draft→publish→correct; correction memiliki reason/audit. Demo
role switcher/PIN tidak boleh dipakai production.

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

**Apakah domain sudah live?** Belum terverifikasi.
**Apakah notification aktif?** Simulation bukan provider live.
**Apakah bisa multi-device?** Target capability; runtime production belum
terverifikasi.

## Technical overview

Frontend mobile-first dengan lebar aplikasi maksimum 430 px, Plus Jakarta Sans,
dan public/player/leader/admin/live surfaces. Backend memakai MySQL staging untuk
check-in, roster, managed session/security, serta event-master versioning.
SQLite tetap fast test adapter dan beberapa state UI masih localStorage.

## Integrasi

Notification, projection display, export/print, domain/TLS. Provider dan runtime
production belum terverifikasi.

## Data yang digunakan

Event, participant, delapan team, roster, sepuluh competition, schedule,
mechanism, safety, equipment, official assignment, check-in, result, standing,
announcement, version, audit, dan export.

## Risiko dan asumsi

Event-day time pressure, network failure, duplicate scoring, stale projection,
demo auth, localStorage, provider simulation, dua nama tim placeholder, serta
durasi dan keputusan master recap yang masih provisional/open.

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
