# SagaPOS dan Saga Member Business Readiness Scoreboard

Status: `CONFIRMED / PHASE_6_SIMULATION_SAFE / REAL_CLOSING_UAT_PENDING`

Evidence cut-off: 23 September 2026.

## Konteks

Andreas memutuskan menyelesaikan kesiapan SagaPOS dan Saga Member secara
bertahap. QRIS dan hardware disiapkan kontrak serta recovery-nya sejak awal,
sedangkan acceptance uang dan perangkat fisik dijalankan pada fase terakhir.

## Tujuan

Dokumen ini adalah registry kanonik untuk menyelesaikan kesiapan SagaPOS dan
Saga Member satu per satu. Nilai bukan persentase jumlah baris kode atau rata-rata
test. Nilai menunjukkan tahap bukti terendah yang sudah dicapai oleh capability.

## Skala

| Nilai | Arti |
|---:|---|
| 0–24 | belum dikerjakan |
| 25–49 | desain, kontrak, atau simulator awal |
| 50–64 | fungsi dasar tersedia |
| 65–74 | terintegrasi dengan dependency utama |
| 75–84 | aktif di production tetapi acceptance belum lengkap |
| 85–94 | technical UAT lulus |
| 95–99 | pilot bisnis representatif lulus |
| 100 | diterima Owner untuk operasional bisnis |

Nilai hanya boleh naik berdasarkan source/runtime evidence, UAT, recovery, atau
acceptance bisnis. `PRODUCTION_DEPLOYED`, `PRODUCTION_ACTIVATED`, dan
`BUSINESS_READY` tetap status terpisah.

## Baseline production

### Phase 6 finance, closing, dan exception snapshot

- SagaPOS production source `770c81657b4e589188885e33dc0b7ab3f2f9011a` menyediakan control center Owner untuk rehearsal closing bersih, selisih kas, provider unsettled, HPP incomplete, dan multi-exception; rollback `cbde7e58c5e1368d9dda34ebb7c06afe98ad7d27` dan schema tetap 34 migrasi.
- Readiness server-derived `92%` atau `11/12`. Contract, Owner RBAC, exception matrix, idempotency/replay, observability, UI, release, recovery, restart persistence, dan monitor lulus.
- Simulator selalu non-mutating: provider tidak dipanggil, ledger/kas tidak ditulis, closing tidak dikunci, customer data tidak dipakai, dan fakta bisnis tidak berubah. Angka 92% adalah subscore Phase 6, bukan business-readiness berbobot seluruh SagaPOS.
- Satu blocker adalah controlled real shift closing serta acceptance Owner/Finance. Payment/gateway dan inventory reporting tetap OFF.

### Phase 5 Member lifecycle snapshot

- SagaPOS production source `9c2035b27d10a2729896fa2adf0f8a8331c21d1f` menyediakan console Owner untuk rehearsal commerce → earn → reserve → redeem → reversal; rollback tetap `26eb16807e4a76349b1864f83dfb2624a369d821` dan schema 34 migrasi unchanged.
- Readiness server-derived `88%` atau `7/8`. Happy path, redeem ambigu, reversal pending, idempotency/replay deterministik, lookup-before-retry, Owner RBAC, dan observability simulasi lulus.
- Simulator selalu non-mutating: provider tidak dipanggil, customer data tidak dipakai, dan fakta bisnis tidak berubah. Angka 88% adalah subscore Phase 5, bukan business-readiness berbobot seluruh SagaPOS atau Saga Member.
- Satu blocker adalah controlled mutation UAT terhadap provider authoritative untuk earn, redeem, reversal/refund, replay, dan lookup. Sampai gate itu lulus, real loyalty lifecycle belum boleh disebut operational-ready.

### Phase 4 workforce snapshot

- SagaPOS production source `e80305bb3fe68dc7fcb18b44060f1135d222b3c8` menyediakan Phase 4 readiness Owner-only dan Staff Portal PWA native.
- Nilai server-derived `88%` atau `7/8`: akun staf `4/4`, dua template shift, 102 assignment dari satu roster published, request flow, GPS+selfie, storage absensi, dan portal kanonik lulus.
- Satu blocker adalah bukti lengkap `roster published → absensi → keputusan approval`. Karena itu Phase 4 aktif dan siap diuji, tetapi belum business-ready.
- URL staf kanonik adalah <https://staff.sagapos.site/login/staff>; `/staff/login` hanya redirect permanen.

### Phase 3 order/KDS/HPP snapshot

- Source Phase 3 `6ac0cd9639aedf19bba9f007c5f6cc919810f37d` sudah tercakup dalam source production kumulatif `c2e9ee4bf83e7997f0eee078d0e2ad02f9544908` melalui parent `4b9f0532a55deef06b6df8589387ae9978bf46c2`.
- Flow test order → KDS → simulasi HPP/stok aktif dan terisolasi dari stok, penjualan, settlement, reward, serta fakta bisnis.
- Authenticated Owner UAT mencapai `67%` atau `4/6`; order demo Americano selesai sampai `SERVED`, membaca satu bahan dan HPP teoritis Rp1.500 tanpa inventory mutation.
- Residual data adalah HPP terverifikasi baru `2/22` menu aktif dan saldo operasional baru `1/15` bahan aktif. Ini menahan klaim kesiapan inventory/HPP operasional penuh.

### Phase 1 master-data snapshot

- SagaPOS production source `d49a6ee2efb2e562cd63d3dd24dd723b19eeb4fb` menyediakan halaman Owner-only **Kesiapan bisnis**.
- Nilai server-derived `70%` atau `16/23`: menu/harga `60%`; bahan/supplier/HPP `80%`; workforce `100%`; member/reward `33%`; aturan outlet `60%`.
- Tujuh blocker: foto menu `0/22`, publish Owner, HPP `9%`, kontrak member, katalog reward, enforcement jam outlet, dan konfirmasi pricing.
- Angka ini adalah subscore Phase 1, bukan business-readiness berbobot seluruh SagaPOS. Overall tetap `62/100` sampai gate lintas capability memperoleh evidence baru.

### Phase 2 inventory/HPP snapshot

- SagaPOS production source `5535e2c5c2637f5d4fc3284bf3ab101b05d14d77` menyediakan tab Owner **Finalisasi Phase 2**.
- Nilai server-derived adalah `43%` atau `3/7`: Database Bahan `67%`, Gudang `0%`, dan HPP `50%`.
- Blocker data: satu bahan belum memiliki satuan beli, 14 bahan belum memiliki saldo gudang, belum ada full stock count, dan 20 menu belum memiliki HPP terverifikasi.
- Implementasi dan deployment Phase 2 selesai, tetapi data operasional belum. Target gabungan 75% belum dicapai dan overall SagaPOS tetap `62/100`.

### SagaPOS

- Runtime production aktif pada exact source
  `770c81657b4e589188885e33dc0b7ab3f2f9011a` dengan 34 migrasi dan health
  `ready=true`.
- Member provider, absensi native, dan penerimaan barang staff aktif. Table
  Order masih `DEMO` dengan payment simulator dan tidak menulis fakta bisnis.
- Payment/gateway dan inventory reporting tetap `OFF`. Bukti penerimaan dan
  absensi masih memakai filesystem VPS; migrasi object storage belum diterima.
- Exact-source validation Phase 0 lulus: static/type check 559 modul, 14 focused
  Menu Preview/Table Order tests, dan production dependency audit nol vulnerability.
- Portal Staff kanonik adalah <https://staff.sagapos.site/> dan mengarahkan ke
  `/login/staff`. URL historis `/staff/login` sudah tidak kanonik.
- Status: `PRODUCTION_ACTIVATED / BUSINESS_READY=false`.

### Saga Member

- Member release `20260922T070500Z-cb51362-r0u` dan Saga Platform release
  `20260922060607-aeb17ba` aktif.
- Member dan Owner public smoke lulus; authenticated Owner integration dan
  projection Platform terakhir berstatus `HEALTHY` dengan nol isu terbuka.
- Payment, Push delivery, hardware/NFC, independent offsite restore, dan pilot
  customer representatif belum menjadi gate yang diterima.
- Status: `PRODUCTION_ACTIVATED / PLATFORM_PROJECTION_HEALTHY /
  BUSINESS_READY=false`.

## Scoreboard SagaPOS

| Capability | Nilai | Status ringkas | Gate berikutnya |
|---|---:|---|---|
| Login, session, RBAC | 85 | technical Owner boundary lulus | UAT seluruh role dan rotasi credential |
| Dashboard Owner | 85 | aktif production | acceptance data dan rutinitas harian |
| Menu, kategori, foto | 88 | aktif dan Owner UAT lulus | katalog bisnis final |
| Modifier, varian, add-on | 84 | aktif | kombinasi menu nyata |
| Pricing, pajak, service | 78 | server-authoritative | kebijakan bisnis dan rekonsiliasi |
| Promo | 78 | aktif untuk Owner | promo nyata, kuota, konflik, checkout |
| Kiosk/customer ordering | 80 | flow aktif tanpa uang nyata | perangkat fisik dan payment acceptance |
| Table Order | 76 | demo durable terisolasi | UAT meja nyata dan promotion terpisah |
| KDS bar/kitchen | 82 | projection demo sehat | satu shift operasional nyata |
| Cash dan shift accountability | 65 | kontrak tersedia, activation tertutup | cash drawer, closing, SOP |
| QRIS/payment gateway | 55 | simulator dan guard tersedia | live canary paling akhir |
| Refund/reversal/settlement | 55 | contract/simulator | provider settlement nyata |
| Member/reward di POS | 80 | provider dan simulator lifecycle aktif | controlled earn–redeem–reversal UAT |
| Database bahan | 80 | UI/data model aktif | master data bahan asli |
| Supplier dan pembelian | 72 | flow tersedia | PO, invoice, supplier asli |
| Penerimaan barang | 80 | staff runtime ready | object storage dan perangkat nyata |
| Gudang/stok | 78 | flow aktif | opening balance dan stock opname |
| HPP/resep | 76 | authoring tersedia | recipe, yield, waste, harga aktual |
| Variance/inventory reporting | 55 | runtime `OFF` | pipeline dan acceptance data |
| Akun karyawan | 78 | flow tersedia | onboarding staff nyata |
| Template dan jadwal shift | 84 | generator aktif | roster satu bulan nyata |
| Tukar shift/izin/libur | 68 | workflow parsial | approval dan exception operasional |
| Absensi GPS/foto | 82 | operational-ready | matriks Android/iPhone |
| Portal Staff/PWA | 80 | root/login aktif | UAT staff dan link hygiene |
| Finance/report/closing | 92 | simulator closing/exception dan Owner technical UAT lulus | controlled real closing dan Finance acceptance |
| Security/monitor/release | 85 | health/recovery aktif | long-run alert dan incident drill |
| Backup/rollback lokal | 88 | rehearsal lulus | pertahankan per candidate |
| Independent offsite recovery | 40 | belum diterima | backup dan restore lokasi terpisah |
| Printer/NFC/peripheral | 30 | kontrak lokal | hardware UAT terakhir |
| Load/performance | 45 | belum representatif | simulasi jam ramai |
| SOP/training/pilot | 40 | belum lengkap | pelatihan dan pilot outlet |

Business-readiness berbobot SagaPOS: **62/100**. Nilai modul yang tinggi tidak
menutupi gate kritis payment, reporting, hardware, offsite recovery, dan pilot.

## Scoreboard Saga Member

| Capability | Nilai | Status ringkas | Gate berikutnya |
|---|---:|---|---|
| Email OTP | 85 | production aktif | matriks provider/perangkat |
| Google login | 85 | production aktif | recovery dan abuse UAT publik |
| Registrasi/onboarding | 84 | resumable dan aktif | pilot customer nyata |
| Profil dan consent | 82 | persistence aktif | privacy-request operation |
| Mobile-first PWA | 90 | visual/technical UAT lulus | physical-device matrix |
| Kartu Member digital | 85 | aktif | pemakaian lintas produk nyata |
| Points ledger | 78 | server-authoritative | transaksi dan reversal nyata |
| Reward | 72 | workflow tersedia | katalog, stok, kebijakan bisnis |
| Quest/benefit | 72 | workflow tersedia | trigger transaksi authoritative |
| Inbox | 76 | aktif | event bisnis nyata |
| Notification preference | 72 | UI/state aktif | delivery provider |
| Push provider | 35 | belum aktif penuh | provider dan delivery receipt |
| Integrasi SagaPOS | 78 | machine provider dan simulator lifecycle aktif | controlled mutation UAT end-to-end |
| Integrasi Saga Platform | 90 | projection `HEALTHY` | business operator acceptance |
| Dashboard Owner | 84 | aktif production | acceptance rutinitas harian |
| SagaBook/cross-product | 55 | handoff parsial | booking dan benefit end-to-end |
| Analytics/reporting Member | 65 | summary tersedia | data pilot nyata |
| Fraud dan abuse protection | 60 | guard dasar | simulasi abuse berskala nyata |
| Account recovery/privacy rights | 60 | sebagian tersedia | SOP export/delete/dispute |
| Customer support/dispute | 45 | belum operasional penuh | tool dan SLA operator |
| Marketing/segmentasi | 40 | belum operasional | campaign dan consent |
| Backup/rollback | 88 | rehearsal lulus | pertahankan per candidate |
| Independent offsite recovery | 40 | belum diterima | restore eksternal |
| Pilot customer nyata | 30 | belum representatif | cohort dan window pilot |
| NFC/member hardware | 25 | kontrak/konsep | hardware UAT terakhir |
| Payment/wallet Member | 20 | bukan capability aktif | keputusan scope dan provider |

Business-readiness berbobot Saga Member: **72/100**.

## Urutan fase

| Fase | Fokus | Target gabungan |
|---|---|---:|
| 0 | production truth, link, registry | 67% |
| 1 | master data bisnis | 70% |
| 2 | database bahan, gudang, HPP nyata | 75% |
| 3 | order → KDS → stok/HPP tanpa uang nyata | 80% |
| 4 | HR, roster, absensi, Portal Staff | 84% |
| 5 | Member earn → redeem → reversal simulasi | 88% |
| 6 | reporting, finance, closing, exception | 92% |
| 7 | offsite restore, load, SOP, pilot simulasi | 96% |
| 8 | QRIS, printer, NFC, hardware outlet | 100% |

QRIS dan hardware dipersiapkan sejak fase awal melalui contract, simulator,
idempotency, duplicate-callback guard, recovery, kill switch, device registry,
print spooler, dan runbook. Hanya acceptance uang dan perangkat fisik yang
ditunda ke Fase 8.

## Aturan update

1. Ubah nilai hanya saat evidence baru tersedia.
2. Catat exact source/release dan tanggal cut-off tanpa data restricted.
3. Satu feature tidak menjadi 100 hanya karena UI tampil atau HTTP 200.
4. Gate provider, perangkat, recovery, dan acceptance manusia tidak dapat
   digantikan simulator.
5. Update product changelog, portfolio changelog, master knowledge, gaps, dan
   sync status bila nilai atau status material berubah.
