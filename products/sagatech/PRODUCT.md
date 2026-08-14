# SagaTech Product Knowledge

Updated: 15 Agustus 2026
Evidence status: `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / NOT_BUSINESS_READY`

## Tujuan dokumen

Menjadi sumber publik kanonik untuk positioning, fitur, harga, bukti rilis,
serta batas kesiapan bisnis website SagaTech.

## Konteks dan status bukti

Dokumen ini merangkum keadaan produksi per 15 Agustus 2026. Klaim fitur dan
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

## Batas klaim dan privasi

- Website menggunakan istilah `kemitraan`, bukan otomatis `franchise` atau
  `waralaba`.
- Simulator dan Fit Engine bukan proyeksi, jaminan omzet, atau persetujuan
  investasi.
- Konten Instagram `@notyourgas` adalah konteks founder/lapangan, bukan bukti
  profit atau performa partner.
- Kota dan isi Passport tidak masuk URL atau analytics.

## Status release

- Public: `https://sagatech.vercel.app`.
- Production deployment: `dpl_GTQ96ZbwH3RxxvyTqzZcwD3xHce1`.
- Rollback baseline: `dpl_5DAsu8Gz1bq4ecwuwDnYjKMoFfbE`.
- Source manifest: `0cf764da2facff05387d5007b6b42b08ab8833450153cef7a6adb8394ea94cb4`.
- 37 test, build/export, 90 local page-view, 28 production page-view,
  dependency/secret scan, dan security-header smoke lulus.

## Residual sebelum business-ready

- Linktree dan PDF lama perlu diganti owner agar istilah serta harga konsisten.
- Persistensi custom analytics perlu diverifikasi di production dashboard/network.
- UAT nyata iPhone dan Android belum dilakukan.
- Repository Git SagaTech kanonik belum dibuat; release memakai deployment ID
  dan manifest hash sebagai provenance.
