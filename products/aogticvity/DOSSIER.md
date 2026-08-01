# AOGTICVITY Dossier

## Tujuan dokumen

Menjaga scope event-day operations, readiness, bisnis, teknis, sales, dan
content AOGTICVITY tetap jelas.

## Konteks dan status bukti

- Updated: 1 Agustus 2026
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
event-master, dan result operations vertical slices.
Public prototype memakai festival visual system yang tetap ringkas untuk
operator: hierarchy mobile, colored metric cues, animated active navigation,
modal/state motion, dan success celebration dengan reduced-motion fallback.

## Fitur MVP

Satu event dengan delapan tim dan sepuluh lomba, authenticated roles, MySQL
persistence, multi-device check-in/scoring, audit, projection, dan fallback.
Master event dan backend auth/operations dark staging sudah terverifikasi;
public prototype aktif di Vercel. Human MFA UAT, public TLS/API activation, dan
rehearsal fisik tetap belum production-activated.

## Roadmap

1. Selesaikan owner password-change, TOTP, dan two-device authorization UAT.
2. Aktifkan domain/TLS, trusted origins, dan jalur frontend API yang aman.
3. Pilih email recovery dan notification provider.
4. Finalisasi nama Tim 7/Tim 8, durasi, serta keputusan open pada master recap.
5. Multi-device/event rehearsal dan public smoke.
6. `NEEDS CONFIRMATION`: repeatable product/service model.

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

**Apakah domain sudah live?** Public Vercel prototype aktif; domain custom
AOGTICVITY belum diaktifkan.
**Apakah notification aktif?** Simulation bukan provider live.
**Apakah auth sudah nyata?** Identity MySQL dan database session sudah aktif di
dark staging; public Vercel masih prototype dan belum menjadi bukti auth production.
**Apakah bisa multi-device?** Backend contract dan test MySQL tersedia, tetapi
UAT fisik pada runtime public belum terverifikasi.

## Technical overview

Frontend mobile-first dengan lebar aplikasi maksimum 430 px, Plus Jakarta Sans,
Feather-style icons, Motion for React, canvas-confetti terbatas, dan
public/player/leader/admin/live surfaces. Backend dark staging memakai Better
Auth dengan MySQL, HttpOnly database session, TOTP admin, role authorization,
rate limit, account suspend/reactivate, session revocation, identity audit,
check-in, roster, event-master, serta server-authoritative result operations.
Public Vercel prototype memakai bundled master/local browser state; API MySQL
tetap fail-closed. SQLite tetap fast test adapter.

## Integrasi

Notification, projection display, export/print, domain/TLS. Provider dan runtime
production belum terverifikasi.

## Data yang digunakan

Event, participant, delapan team, roster, sepuluh competition, schedule,
mechanism, safety, equipment, official assignment, check-in, result, standing,
announcement, version, audit, dan export.

## Risiko dan asumsi

Event-day time pressure, network failure, duplicate scoring, stale projection,
public demo auth/localStorage, provider simulation, recovery email yang belum
dipilih, human MFA UAT, dua nama tim placeholder, serta durasi dan keputusan
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
