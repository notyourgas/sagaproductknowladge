# SagaTech Product Dossier

Updated: 15 Agustus 2026

## Tujuan dokumen

Menjelaskan journey keputusan, experience system, measurement, dan batas
operasional SagaTech bagi implementer dan operator.

## Konteks dan status bukti

Dossier ini bersumber dari Scope 2 Qualification OS v15 yang telah aktif di
produksi. Bukti sosial dipisahkan dari klaim hasil bisnis dan readiness tetap
dibedakan dari deployment teknis.

## Job to be done

Calon operator perlu memahami perbedaan Self Photo, Photobooth lokasi tetap,
event, dan hybrid sebelum membahas paket. SagaTech mengubah perjalanan dari
brosur harga menjadi kualifikasi yang dapat diperiksa dan dibawa ke konsultasi.

## Journey produksi

1. Pengunjung memilih konteks lokasi, event, hybrid, atau eksplorasi.
2. Market Lens memetakan sumber permintaan.
3. Checklist memetakan readiness, budget band, dan target mulai.
4. Fit Engine memberi outcome beserta alasan, gap, alternatif, dan Risk Map.
5. Proof Lens menyaring bukti yang relevan tanpa mengarang hasil bisnis.
6. Decision Passport merangkum keputusan dan handoff WhatsApp.

## Experience system

- Visual memakai ink, warm paper, acid lime, Barlow Condensed, Jakarta Sans,
  dan Feather Icons.
- Motion memakai transform/opacity dengan reduced-motion support.
- Base UI dipakai untuk drawer, accordion, tab, radio, dan checkbox; Embla
  dipakai pada proof rail.
- Proof rail dimuat dekat viewport untuk menekan initial transfer.

## Data dan measurement

- Decision State V6 berada di localStorage dengan TTL 30 hari.
- Kota disanitasi, tidak masuk share URL, dan tidak masuk analytics.
- Funnel aman mencakup market, fit, proof, brief, Passport export, dan WhatsApp
  click; payload hanya enum atau source statis.
- `qualified_brief_submitted` dan `whatsapp_clicked` adalah conversion proxy,
  bukan bukti pesan diterima.

## Release quality

- Local: 90 page-view pada 320/390/768/1024/1440, failures 0.
- Production: 28 page-view pada 390/1440, failures 0.
- Lighthouse production: Performance 91, Accessibility 100, Best Practices 96,
  SEO 100, transfer 528 KiB, TBT 170 ms, CLS 0.
- Security: dependency production 0 vulnerability, secret-pattern scan bersih,
  CSP, frame denial, nosniff, referrer, dan permissions policy aktif.

## Commercial truth

Harga publik hanya harga mulai. Training, support, pengiriman, instalasi,
garansi, SLA, renewal software, dan kewajiban tiap pihak mengikuti scope produk
serta proposal/perjanjian final. Website tidak menjanjikan BEP, ROI, omzet,
traffic, atau status partner aktif.
