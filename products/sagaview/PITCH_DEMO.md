# SagaView Pitch Demo

## Tujuan

Menjalankan demo produk 10–15 menit yang production-aware, public-safe, dan
tidak membuka credential, PII, identifier restricted, atau foto customer.

## Konteks

Runbook ini mendukung pitch pada runtime production SagaView yang aktif dan
tidak menggantikan physical UAT atau evidence restricted.

## Persiapan

- Gunakan Chrome pada Windows dan demo organization khusus.
- Gunakan data sintetis/non-PII serta folder foto uji yang memang boleh
  dipresentasikan.
- Siapkan output folder dan preset printer studio yang sudah diuji.
- Jangan membuka dashboard provider, callback payload, receipt, token, atau
  administrative identifier.

## Alur 10–15 menit

| Waktu | Demo | Pesan utama |
|---|---|---|
| 0–1 menit | Home dan Pricing | SagaView dijual satuan. Growth Rp200.000: 1 device/10 frame/3 preset/24 jam/2 GB. Pro Rp500.000: 4 device/50 frame/10 preset/168 jam/10 GB. Session/foto fair-use; foto tetap lokal. |
| 1–3 menit | Signup, login, dan Owner Console | Trial 14 hari: 7 hari full access, 7 hari plan-limited, tanpa auto-charge. |
| 3–4 menit | Studio readiness dan device | Owner Console bebas lintas device; start-session mengikuti exclusive lease. |
| 4–6 menit | Buat sesi, pilih folder, import | Demo 50 foto; jelaskan regression juga mencakup 200 dan 500 foto. |
| 6–9 menit | Frame, selection, editor, review | Foto tetap local-first dan customer mengontrol hasil dalam sesi. |
| 9–10 menit | Output | Tunjukkan 4R portrait 1200×1800 atau landscape 1800×1200 pada 300 DPI. |
| 10–11 menit | Recovery | Tunjukkan status offline/reconnect serta jalur transfer perangkat yang eksplisit. |
| 11–12 menit | Completion/privacy | Customer memanggil operator; operator memverifikasi handoff dan cleanup. |
| 12–13 menit | Help, Legal, dan plan | Tunjukkan SLA support, privacy/retention, serta CTA subscription. |

## Reset setelah demo

1. Selesaikan sesi melalui alur operator.
2. Verifikasi output/handoff sebelum cleanup.
3. Jalankan cleanup recovery state melalui UI; jangan menghapus source photo
   atau output customer.
4. Pastikan tidak ada sesi aktif sebelum demo berikutnya.
5. Kembalikan folder data sintetis ke baseline yang sudah disiapkan.

## Fallback demo

- Bila printer/perangkat tidak tersedia, gunakan production UI dan output 4R
  non-PII yang sudah disiapkan.
- Bila koneksi provider tidak tersedia, tunjukkan state subscription dan
  jelaskan bahwa satu canary exactly-once telah diverifikasi; jangan membuat
  intent/QRIS/transaksi baru untuk demo.
- Bila device lease aktif di perangkat lain, gunakan recovery/transfer resmi;
  jangan menghapus storage atau memanipulasi identity.

## Klaim yang boleh

- Backend, Studio, public self-service, dan trial dua fase aktif di production.
- Foto customer tetap local-first.
- Output canonical 4R tersedia.
- Satu canary provider diproses exactly-once; tidak ada transaksi kedua pada
  release.
- Owner Console dan Studio device lease memiliki boundary berbeda.

## Klaim yang tidak boleh

- Foto customer disimpan atau diproses di cloud.
- Unlimited device atau kompatibilitas semua printer tanpa UAT.
- Bundle SagaBook–SagaView tersedia.
- Mass-scale SLA/business readiness sudah terbukti.
- Menampilkan raw receipt, callback, tenant, device, session, atau customer
  identifier.
