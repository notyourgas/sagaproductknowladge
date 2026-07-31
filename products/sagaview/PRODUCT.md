# SagaView Product Knowledge

Updated: 31 Juli 2026
Evidence status: partial production + release candidate

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaView dan memisahkan scope live dari
candidate. Detail lengkap berada di [DOSSIER](DOSSIER.md); keputusan terbuka
berada di [GAPS](../../GAPS.md#sagaview).

## Konteks

SagaView memiliki komponen production dan release candidate yang berbeda;
setiap klaim di bawah berlaku hanya pada scope yang disebutkan.

## Ringkasan

SagaView adalah SaaS local-first untuk workflow self-photo studio setelah sesi
foto: device activation, customer/session/folder, import foto, frame selection,
photo selection, editor, review, export, print, offline recovery, dan support.

Positioning singkat:

> SagaView menyelesaikan setelah sesi.

## Target pengguna

- Owner dan admin self-photo studio.
- Operator Windows studio.
- Customer yang memilih frame dan foto.
- SagaDev support/operator.

## Masalah yang diselesaikan

- Customer memilih nomor file secara manual.
- Operator mengatur frame/print dengan workflow yang mudah salah.
- Foto dalam jumlah besar harus tetap cepat dan private.
- Studio membutuhkan offline/reconnect dan transfer perangkat yang aman.

## Prinsip data

- Foto customer dan export tetap berada di device studio.
- Cloud menyimpan account, entitlement, device/session metadata, frame tenant,
  dan operational state yang memang dibutuhkan.
- Diagnostics harus ter-redact dan tidak membawa PII, credential, token, raw
  local storage, atau path file customer.

## Core journey

1. Owner/provisioning menyiapkan account dan plan.
2. Operator mengaktifkan device Studio Console.
3. Operator membuat session dan memilih folder.
4. Sistem mengimpor 50/200/500 foto.
5. Customer memilih frame dan foto.
6. Customer mengatur foto pada slot frame.
7. Operator/customer review output.
8. Sistem export/print 4R.
9. Session selesai dan data dihapus/ditahan sesuai policy.

## Fitur utama

- Owner Console dan Studio Console.
- Device activation dan exclusive lease.
- Session/customer/folder workflow.
- Import 50/200/500 foto.
- Frame catalog dan frame cloud sync.
- Photo selection, editor, review, output recovery.
- Offline/reconnect dan emergency transfer.
- Support readiness/diagnostics.
- Trial, plan/device limits, subscription, dan payment callback candidate.
- Public self-service Home, Pricing, Help, Contact, Privacy, dan Terms candidate.

## Commercial contract

### Harga satuan bulanan

| Paket | Harga |
|---|---:|
| Growth | Rp200.000 |
| Pro | Rp500.000 |

### Trial contract

- Hari 1-7: `full_access`.
- Hari 8-14: `plan_limited`.
- Hari 15-21: read-only/export grace.
- Trial satu organisasi+produk dan tidak dapat di-reset lewat email, plan, atau
  pergantian device.

Contract trial terbaru belum boleh disebut production-activated sampai backend
kumulatif dipromosikan.

## Account dan device boundary

- Target contract: Owner Console dapat dibuka dari browser/device mana pun
  setelah login. Perbaikan context-navigation untuk kontrak ini sudah
  diimplementasikan, tetapi belum production.
- Device activation/exclusive lease hanya berlaku pada Studio Console dan
  start-session.
- Identity yang sama tidak membuat role Owner SagaBook menjadi Admin SagaView.
- Entitlement, role, session, subscription, dan ledger terpisah.

## Output 4R

- Portrait: `1200x1800`.
- Landscape: `1800x1200`.
- Resolution: 300 DPI.
- Editor/review memakai canonical ratio 4R.
- Slot dapat zoom/geser/bleed, tetapi canvas melakukan clipping.
- Postcard/Square tidak ditampilkan karena renderer belum mendukung.

## Session completion dan privacy handoff

`CONFIRMED` — production pada release Studio terbaru:

- customer hanya dapat memanggil operator, bukan mereset sesi sendiri;
- operator wajib memverifikasi output dan handoff/antre cetak;
- nama output dimasking ketika privacy mode aktif;
- cleanup menghapus recovery state sebelum reset dan fail-closed dengan retry;
- source folder dan output file tetap utuh;
- completion event yang dikirim hanya memakai data operasional ter-redact.

## Status saat ini

Headline status candidate: `IMPLEMENTED_NOT_DEPLOYED`. Studio 4R memiliki
komponen `PRODUCTION_DEPLOYED`; activation produk masih parsial dan business
readiness `BLOCKED`.

### Sudah production

- Studio frontend fixed 4R dan session completion/privacy handoff.
- Release: `20260731113223-2f65a9a`.
- Source: `2f65a9ac0322c33a429dcc888bdacd59836aab0b`.
- Public session-completion/changelog smoke lulus; changelog menampilkan
  v0.20.2 sebagai production aktif.
- Backend production masih release `20260729002327-86d6920` pada source
  `86d6920bfd3da0234e74f73fda0c2fc5e7307903`.

### Belum production

- Backend cumulative candidate:
  `dc55cbb09f45279b591e82bca6be50f7d4c1f6ee`.
- Guarded release tooling:
  `b778a068a09e28a6900918172fc64637655be2fa`.
- Owner Console context fix.
- Trial dua fase server-side.
- Subscription Growth/Pro flow.
- Payment callback exactly-once.
- Device trust dan exclusive lease hardening.
- Public self-service source:
  `6ff15f653c64a3bb2ffed5ee3785341165dbb0c9`.
  - Pricing hanya menampilkan Growth Rp200.000 dan Pro Rp500.000 per bulan.
  - Trial menjelaskan 7 hari full access, 7 hari plan-limited, tanpa
    auto-charge.
  - Help memuat state koneksi/recovery, jam support, SLA respons, maintenance,
    serta RTO/RPO.
  - Privacy/Terms memuat local-photo boundary, retention, grace, refund, dan
    offboarding.

Blocker: belum ada Tokopay canary/paid callback production yang terikat ke
exact runtime candidate. Public self-service juga belum dipromosikan karena
runtime signup production masih memakai kontrak trial lama; source publik tidak
boleh menjanjikan 14 hari sebelum enforcement backend sesuai.

### Release readiness backend candidate

- Full backend suite: 905/905 test lulus.
- Production build dan dependency audit lulus.
- Fresh encrypted backup, checksum, offsite round-trip, dan disposable restore
  lulus.
- Dua additive migration, candidate deploy gate, dan rollback-source
  compatibility sudah direhearsal.
- Release tooling mewajibkan build Owner Console terbaru dan menolak fallback
  ke asset production lama.
- Production belum dimutasi dan migration belum dijalankan pada database live.
- Public self-service lulus 153 unit test, 47 E2E, build budget, dependency
  audit, WCAG 2.1 AA automated scan, forced-colors, dan visual responsive
  mobile sampai 2560 piksel.

### Release evidence Studio v0.20.2

- Exact source lulus 156 unit test dan 54 E2E.
- Import 50/200/500 tervalidasi pada regression suite.
- Accessibility, responsive, forced-colors, reduced-motion, dependency audit,
  dan bundle budget lulus.
- Backend, migration, payment, dan provider tidak berubah pada release ini.
- Rollback release tersedia ke `20260731112542-09445f8` dan baseline sebelumnya
  `20260731023744-1c5678c`.

## Belum boleh diklaim

- Backend candidate terbaru belum live.
- Trial dua fase belum production-activated.
- Payment/provider belum terverifikasi hanya karena test otomatis lulus.
- Owner Console multi-device belum boleh disebut live sebelum backend candidate
  dipromosikan dan smoke production lulus.
- Public Pricing/Help/Legal terbaru belum live.
- Foto customer tidak disimpan di cloud.

## Ide konten

- Mengapa memilih hasil print lebih baik daripada mencatat nomor file.
- Workflow 200 foto tanpa mengunggah foto customer ke cloud.
- Output 4R yang konsisten dari preview sampai print.
- Perbedaan Owner Console dan device-bound Studio Console.
