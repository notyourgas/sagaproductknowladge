# SagaTech Product Dossier

Updated: 21 Agustus 2026

## Tujuan dokumen

Menjelaskan journey keputusan, experience system, measurement, dan batas
operasional SagaTech bagi implementer dan operator.

## Konteks dan status bukti

Dossier ini bersumber dari Scope 2 Qualification OS dan Photobooth Commercial
Truth v23 yang telah aktif di produksi. Bukti sosial dipisahkan dari klaim hasil bisnis dan readiness tetap
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

Pada Photobooth, journey dilanjutkan dengan pemilihan booth lengkap atau vendor
lokal, pembagian tanggung jawab customer/PIC/SagaTech, FAQ komersial, checklist
quotation, lalu simulator CAPEX/OPEX yang seluruh asumsi kritisnya dapat diubah.

Pada Saga Product V25, hub hanya memilih SagaBook atau SagaView. Halaman produk
menempatkan PDF interaktif sebelum video inline dan CTA trial. Thumbnail
SagaBook memakai dashboard admin aktual agar fungsi operasional studio terbaca
sejak hub; screenshot menggunakan data dummy dan kontak termasking. Runtime
produk, pricing, entitlement, PDF, dan video tidak diubah oleh revisi visual ini.

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
- Simulator V5 memigrasikan state lokal V3/V4 dan menambahkan package cost,
  shipping, upgrade, software, MDR, waste, printer profile, serta procurement
  mode tanpa mengirim input tersebut ke backend SagaTech.

## Release quality

- Local: 110 page-view pada 320/390/768/1024/1440, page failures 0.
- Production: 36 page-view pada 390/1440, failures 0.
- Unit: 49 test; export: 28 halaman dan 56 internal link; JSON-LD valid.
- Security: dependency production 0 vulnerability, secret-pattern scan bersih,
  CSP, frame denial, nosniff, referrer, dan permissions policy aktif.

## Commercial truth

Harga publik hanya harga mulai. Training, support, pengiriman, instalasi,
garansi, SLA, renewal software, exact model, harga sistem-only, DNP, dan
kewajiban tiap pihak mengikuti scope serta proposal/perjanjian final. Website
tidak menjanjikan replacement otomatis, HPP tetap, BEP, ROI, omzet, traffic,
atau status partner aktif.

Baseline tidak memakai sewa perangkat, royalty, atau bagi hasil dengan
SagaTech. Kepemilikan hardware berlaku setelah pelunasan dan serah terima sesuai
perjanjian. Garansi produsen/distributor/toko dipisahkan dari support SagaTech.
