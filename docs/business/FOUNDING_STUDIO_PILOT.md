# Founding Studio Pilot

## Tujuan

Membuktikan bahwa SagaBook dan SagaView dapat dijual, di-onboard, dipakai
harian, didukung, dipulihkan, dan dilanjutkan sebagai subscription berbayar
tanpa ketergantungan rutin pada engineer.

## Konteks

`CONFIRMED` oleh Andreas pada 31 Juli 2026. Pilot berlangsung 14 hari dan
menilai setiap produk secara terpisah. Hasil teknis lokal atau production smoke
tidak menggantikan penggunaan studio nyata.

## Bentuk cohort

- Nama program: **Founding Studio Pilot**.
- Minimal 3 studio untuk SagaBook dan 3 studio untuk SagaView.
- Studio yang sama boleh mencoba kedua produk, tetapi account role,
  subscription, ledger, evidence, dan keputusan lanjut tetap product-scoped.
- Segmen yang dicakup: studio satu cabang baru, studio bertumbuh dengan banyak
  operator, dan studio bervolume tinggi.
- Assisted onboarding ditargetkan selesai maksimal 60 menit.
- Setup fee cohort pertama: Rp0.
- Trial mengikuti kontrak product-scoped dan tidak auto-charge.
- Feedback terstruktur pada hari ke-3, ke-7, dan ke-14.
- Hari ke-15: lanjut pada harga daftar atau berhenti/offboard.
- Testimoni hanya digunakan setelah persetujuan studio.
- Evidence publik harus agregat, ter-redact, dan tanpa PII.

## Alur SagaBook

1. Kualifikasi studio, cabang, staff, paket, jadwal, dan provider.
2. Buat tenant serta akun individual sesuai role.
3. Konfigurasikan cabang, katalog, capacity, policy, payment, dan notification.
4. Preview lalu publish storefront.
5. Selesaikan booking nyata pertama, pembayaran, confirmation, reminder,
   check-in, dan session handoff.
6. Uji satu perubahan jadwal serta satu cancel/refund menggunakan policy tenant
   atau policy default.
7. Rekonsiliasi pembayaran, review report, buka satu tiket support, dan uji
   export/offboarding.

## Alur SagaView

1. Kualifikasi perangkat Windows, printer, browser, storage, dan jaringan.
2. Buat product account dan role Owner/Admin/Operator yang terpisah dari
   SagaBook.
3. Aktifkan Studio Console serta verifikasi device entitlement/exclusive lease.
4. Jalankan session dengan import, pemilihan, editor, review, export, dan print
   4R portrait serta landscape.
5. Uji 50/200/500 foto dengan data sintetis/non-PII sebelum data customer.
6. Jalankan satu offline/reconnect dan satu emergency transfer per studio.
7. Verifikasi privacy handoff, cleanup recovery, support, export, dan
   offboarding.

## Exit criteria 100% business-ready

Semua kriteria berikut wajib lulus untuk setiap produk yang ingin diberi status
`BUSINESS_READY`:

- minimal 3 studio menyelesaikan onboarding;
- rata-rata onboarding maksimal 60 menit;
- first activation maksimal 1 hari;
- SagaBook menghasilkan minimal 50 booking nyata total;
- SagaView menghasilkan minimal 50 session nyata total dan minimal 10 session
  per studio;
- minimal 95% core journey selesai tanpa bantuan engineer;
- pembayaran/callback memiliki efek bisnis exactly-once;
- receipt notification nyata minimal 98% pada scope yang diukur;
- setiap studio SagaView meluluskan 4R portrait/landscape, offline/reconnect,
  dan emergency transfer;
- tidak ada kehilangan data, pelanggaran privacy/cross-tenant, atau temuan
  security critical/high yang belum ditutup;
- backup dan restore lulus pada exact candidate;
- minimal 90% tiket memenuhi SLA dan tidak ada P1 belum terselesaikan;
- pricing, trial, refund/cancel, privacy, retention, support, dan offboarding
  dipublikasikan konsisten;
- minimal 2 dari 3 studio per produk memilih lanjut berbayar.

Kegagalan kriteria critical tidak membatalkan fakta bahwa runtime production
aktif, tetapi produk belum boleh disebut `BUSINESS_READY`.

## Data yang dicatat

Gunakan data agregat tanpa identitas studio/customer:

- durasi onboarding dan time-to-activation;
- jumlah booking/session selesai;
- persentase core journey tanpa engineer;
- keberhasilan payment, callback, notification, print, recovery, dan restore;
- jumlah tiket per severity serta kepatuhan SLA;
- incident, workaround, dan keputusan lanjut/berhenti;
- keputusan paid continuation per produk.

## Stop dan eskalasi

Hentikan onboarding baru dan lakukan review bila terjadi data loss, akses
cross-tenant, pembayaran ganda, privacy incident, security critical/high,
restore gagal, atau P1 tidak memiliki owner. Jangan menutupi kegagalan dengan
data simulasi atau mengubah acceptance criteria setelah pilot berjalan.

## Status

- Keputusan dan acceptance criteria: `CONFIRMED`.
- Pelaksanaan cohort: `TODO`.
- Business readiness SagaBook: `NEEDS CONFIRMATION` sampai evidence cohort
  lengkap.
- Business readiness SagaView: `NEEDS CONFIRMATION` sampai evidence cohort
  lengkap.
