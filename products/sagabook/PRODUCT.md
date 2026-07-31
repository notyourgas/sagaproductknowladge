# SagaBook Product Knowledge

Updated: 31 Juli 2026
Evidence status: production + source verified

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaBook. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Informasi yang
belum pasti dicatat di [GAPS](../../GAPS.md#sagabook).

## Konteks

Ringkasan ini memuat fakta public-safe per cut-off di atas; runtime yang dapat
berubah tetap harus diverifikasi sebelum klaim eksternal.

## Ringkasan

SagaBook adalah SaaS booking dan operating system untuk self-photo studio.
Produk mengatur perjalanan sebelum sesi: storefront, availability, checkout,
payment, confirmation, reminder, reschedule/cancel/refund request, calendar,
check-in, session handoff, reconciliation, report, dan tenant operations.

Positioning singkat:

> SagaBook mengatur sebelum sesi.

## Target pengguna

- Owner self-photo/photobox studio.
- Admin/manager/cashier/operator studio.
- Customer yang melakukan booking.
- SagaDev super admin untuk provisioning, subscription, dan support.

## Masalah yang diselesaikan

- Booking tersebar di chat dan rawan bentrok jadwal.
- Customer sulit melihat status pembayaran/perubahan booking.
- Operator perlu calendar, task, reminder, dan reconciliation yang konsisten.
- Owner memerlukan multi-branch, staff permission, audit, dan report.

## Core journey

### Customer

1. Memilih studio/cabang, paket, background, add-on, tanggal, dan slot.
2. Mengisi data yang diperlukan.
3. Memilih metode pembayaran.
4. Menerima secure booking link.
5. Memantau status booking dan pembayaran.
6. Mengajukan reschedule, perubahan, pembatalan, atau refund sesuai policy.
7. Menerima reminder, confirmation, dan result/gallery link bila tersedia.

### Operator

1. Menyiapkan cabang, resource, schedule, package, policy, dan payment.
2. Memantau booking/calendar/payment/Task Center.
3. Meninjau customer request.
4. Check-in dan menjalankan session handoff.
5. Menangani reconciliation, report, support, dan recovery.

## Fitur utama

- Public booking storefront.
- Availability dan capacity.
- Hosted/manual payment flow.
- Customer Booking Center.
- Reschedule, change, cancel, dan refund request.
- Task Center dan notification.
- Calendar, check-in, dan session lifecycle.
- Tenant, branch, staff, role, permission, dan audit.
- Payment monitoring dan reconciliation.
- Report dan export.
- SagaBook subscription portal dan trial lifecycle.
- Activation Center untuk setup tenant, preview/publish storefront, dan
  handoff menuju booking pertama.
- Support & Recovery Center untuk bantuan produk, human handoff, account
  recovery, dan bukti screenshot privat.

## Commercial contract

### Harga satuan bulanan

| Paket | Harga |
|---|---:|
| Basic | Rp500.000 |
| Growth | Rp950.000 |
| Pro | Rp1.500.000 |

### Trial 14 hari

- Hari 1-7: `full_access`.
- Hari 8-14: `plan_limited`.
- Hari 15-21: `grace_read_only`.
- Setelah hari 21: `suspended`, data tidak dihapus otomatis.

Trial dan subscription SagaBook tidak mengaktifkan SagaView.

## Account dan product boundary

- Satu identity dapat ditautkan ke organisasi yang sama.
- Membership, role, session, subscription, entitlement, dan ledger SagaBook
  tetap terpisah dari SagaView.
- Staff memakai akun individual.
- Akses tenant dan branch deny-by-default.
- Bundle belum dijual.

## Status saat ini

Delivery: `PRODUCTION_DEPLOYED`. Activation: `PRODUCTION_ACTIVATED` untuk scope
yang dibuktikan di bawah. Business readiness: `NEEDS CONFIRMATION`.

- Customer Booking Center aktif di production.
- Source kanonik terbaru pada cut-off: commit
  `285ab943b93466deda0f6c07466c0fbe8da16e4c`.
- Release production tercatat: `20260731075424-285ab94`.
- Storefront, admin, dan super-admin merespons public smoke.
- Tenant Onboarding dan First Booking Activation aktif melalui Activation
  Center yang tenant-scoped dan server-authoritative.
- Support & Recovery Center aktif untuk owner/admin dengan percakapan
  tenant-scoped, retry idempotent, dan human handoff.
- Platform Support aktif untuk operator dengan antrean SLA, ownership,
  penyelesaian auditable, dan perlindungan konflik antaroperator.

## Update terbaru

### Customer Booking Center

Before: secure link hanya berfungsi sebagai detail booking dasar.

After:

- status booking/payment dan detail jadwal tampil dalam satu halaman;
- customer dapat membuat request tanpa memutasi transaksi langsung;
- token expiring dan tenant/booking-scoped;
- request retry-safe/idempotent;
- cancel booking berbayar diarahkan ke refund;
- Task Center menerima handoff yang auditable.

### Tenant Onboarding dan First Booking Activation

Before: owner perlu membaca beberapa halaman setup terpisah dan tidak memiliki
satu status kanonik untuk mengetahui apakah storefront siap dipublikasikan.

After:

- Activation Center merangkum akun, studio, katalog, kebijakan, payment,
  notification, storefront, dan booking pertama;
- progress dan blocker dihitung server-side berdasarkan tenant aktif;
- owner dapat melanjutkan setup, preview, publish, lalu memantau booking publik
  pertama dari satu alur;
- status notification membedakan otomatis, fallback manual, dan belum siap;
- endpoint onboarding menggunakan permission settings, tenant resolution
  fail-closed, dan rate limit.

### Support & Recovery Center

Before: bantuan produk tersebar dan owner tidak dapat melanjutkan percakapan
setelah tiket dialihkan ke tim manusia.

After:

- bantuan produk, account recovery, setup, dan changelog tersedia dari satu
  halaman;
- owner dapat bertanya, melakukan human handoff, lalu melanjutkan tiket aktif;
- retry jaringan memakai idempotency key tenant-scoped agar pesan tidak
  tergandakan;
- screenshot hanya dapat dikirim setelah konfirmasi bahwa informasi sensitif
  sudah dihapus dan lampiran tetap privat;
- permission, payload public-safe, audit, dan adapter Support Hub ditegakkan
  server-side.
- operator dapat memfilter antrean berdasarkan produk, status, prioritas, SLA,
  dan ownership;
- claim, release, resolve, reopen, perubahan prioritas, private note, dan
  balasan publik memakai idempotency key serta optimistic lock;
- retry tidak menggandakan tindakan dan konflik operator menghasilkan refresh
  aman, bukan overwrite;
- receipt audit tidak memuat isi pesan, tenant ID mentah, provider reference,
  atau PII.

## Belum boleh diklaim

- Provider delivery tidak boleh dianggap berhasil hanya dari queue/log.
- Business-ready penuh tetap membutuhkan acceptance booking nyata, support
  observation, serta cohort onboarding studio nyata.

## Ide konten

- Dari booking via chat menjadi booking center terstruktur.
- Mengapa cancel booking berbayar tidak boleh langsung mengubah uang.
- Perbedaan secure link dengan halaman status biasa.
- Cara studio menghindari double booking dan task ganda.
