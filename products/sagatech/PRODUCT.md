# SagaTech Product Knowledge

Updated: 21 Agustus 2026
Evidence status: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / NOT_BUSINESS_READY`

## Tujuan dokumen

Menjadi sumber publik kanonik untuk positioning, fitur, harga, bukti rilis,
serta batas kesiapan bisnis website SagaTech.

## Konteks dan status bukti

Dokumen ini merangkum keadaan produksi per 21 Agustus 2026. Klaim fitur dan
status ditautkan pada manifest source, deployment Vercel, serta gate QA; klaim
hasil bisnis tidak dibuat tanpa data operasional yang memadai.

## Ringkasan

SagaTech adalah website kemitraan Self Photo Studio dan Photobooth yang
menggabungkan brosur, portofolio, edukasi model operasi, kualifikasi awal, dan
handoff konsultasi WhatsApp.

Positioning:

> Pilih model bisnis foto berdasarkan konteks operasi sebelum membeli alatnya.

## Produk dan harga publik

- Self Photo Studio: mulai Rp55.000.000.
- Photobooth: mulai Rp45.000.000.
- Harga final mengikuti lokasi, pengiriman, instalasi, penyesuaian, dan proposal
  tertulis.
- Sewa, renovasi, perizinan, dan biaya operasi berjalan tidak otomatis termasuk.

## Scope 2 Qualification OS

- Decision Studio memetakan konteks, sumber permintaan, budget, timeline, dan
  kesiapan.
- Fit Engine policy `2026.08-v15` dapat memberi hasil `fit`, `conditional`,
  `not-ready`, atau `compare`; sistem tidak selalu merekomendasikan paket.
- Risk Map memisahkan hal yang harus diselesaikan, dikonfirmasi di proposal,
  dan bisa menunggu.
- Proof Lens memisahkan Project Archive dari Field/Operator Note dengan sumber,
  tanggal review, serta batas pembuktian.
- Decision Passport tersimpan lokal dan dapat disalin, diunduh, dicetak,
  diteruskan ke planner, atau dikirim ke WhatsApp oleh pengguna.

## Photobooth Commercial Truth v23

- Halaman Photobooth membedakan booth lengkap dari opsi booth yang dibuat
  vendor lokal; harga sistem-only tidak dipublikasikan sebelum permanen.
- Customer dapat menjalankan workflow self-service, tetapi PIC lokal tetap
  dibutuhkan untuk consumable dan gangguan fisik.
- Software Photobooth dapat termasuk hingga enam bulan sesuai quotation;
  renewal, fitur, device, payment provider, dan add-on mengikuti dokumen final.
- Exact Bill of Materials, kondisi unit, garansi, ongkir, DNP RX1HS, dan
  aturan substitusi harus dikunci sebelum DP.
- Simulator V5 memisahkan harga quotation, ongkir, upgrade, software bulanan,
  MDR, waste/reprint, HPP, serta mode pengadaan sebagai input editable.
- Checklist quotation publik membantu calon mitra memeriksa hardware,
  software, payment, garansi, logistik, acceptance test, dan serah terima.

## Saga Product sales surface V25

- `https://sagatech.site/saga-product/` adalah hub mobile-only untuk memilih
  SagaBook atau SagaView, lalu membaca PDF, menonton video, dan menghubungi
  SagaTech untuk trial.
- Thumbnail SagaBook memakai dashboard admin aktual dengan data dummy dan
  kontak termasking, bukan lagi layar pemilihan jadwal customer.
- Perubahan thumbnail tidak mengubah runtime, pricing, entitlement, PDF,
  video, trial, atau status kesiapan bisnis SagaBook dan SagaView.

## Batas klaim dan privasi

- Website menggunakan istilah `kemitraan`, bukan otomatis `franchise` atau
  `waralaba`.
- Simulator dan Fit Engine bukan proyeksi, jaminan omzet, atau persetujuan
  investasi.
- Konten Instagram `@notyourgas` adalah konteks founder/lapangan, bukan bukti
  profit atau performa partner.
- Kota dan isi Passport tidak masuk URL atau analytics.

## Status release

- Public/canonical: `https://sagatech.site`.
- Production deployment aktif: `dpl_FYGb1kcSN9rjW2HRC44RghjyQrbu`.
- Preview: `dpl_8VydicXVxwji1M3Zq6VTXab4UYwV`.
- Rollback langsung: `dpl_5S2BWzukN4Fat1xdpPVsx9kvFbFF`.
- Source runtime aktif: `94992fdfb243822c895266bfe90ecc680cbbb576`.
- 55 test, build/export 37 route, visual QA local/production,
  PDF/video/fullscreen, accessibility, alias, dan security-header smoke lulus.

## Residual sebelum business-ready

- Linktree dan PDF lama perlu diganti owner agar istilah serta harga konsisten.
- Persistensi custom analytics perlu diverifikasi di production dashboard/network.
- UAT nyata iPhone dan Android belum dilakukan.
- Repository Git SagaTech kanonik belum dipastikan; release memakai deployment
  ID, acceptance report, dan hash HTML production sebagai provenance operasional.
- Seller of record, exact model/condition/warranty issuer, renewal software,
  serta harga upgrade DNP tetap harus dikunci sebelum transaksi.
