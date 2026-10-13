# SagaTech Product Dossier

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| marketing | [Source](https://github.com/notyourgas/sagatech/tree/main) | `f8759a08acc8c12dfd952a641d8da318ab35047c` | `SOURCE_PUSHED` |

Source marketing yang sebelumnya berada pada umbrella repo kini disimpan di repository privat tersendiri dengan checksum source. Snapshot bukan bukti bahwa setiap file identik dengan deployment historis V23/V25; production tidak diubah dan validasi runtime tidak diulang.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

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

## Overview produk

Website kemitraan Self Photo Studio dan Photobooth untuk memahami model usaha, paket, tanggung jawab dan handoff konsultasi.

## Masalah yang diselesaikan

Calon operator sulit membedakan model usaha, kebutuhan alat, biaya dan pembagian tanggung jawab sebelum meminta proposal.

## Target pengguna

Calon pemilik/operator studio atau photobooth; PIC lokasi dan event; tim konsultasi SagaTech.

## Persona pengguna

Calon pemilik/operator studio atau photobooth; PIC lokasi dan event; tim konsultasi SagaTech. Persona ini berbasis role, bukan profil customer nyata.

## Value proposition

Kualifikasi konteks lokasi/event/hybrid, bukti yang relevan dan Decision Passport membuat diskusi proposal dapat diperiksa.

## Use case

Pilih konteks -> periksa pasar/readiness -> hasil fit/gap -> periksa proof -> rangkum Passport -> konsultasi/proposal.

## Fitur utama

Market Lens, Fit Engine/Risk Map, Proof Lens, Decision Passport, quotation dan simulator CAPEX/OPEX; hub SagaBook/SagaView tetap surface marketing.

## Fitur MVP

Market Lens, Fit Engine/Risk Map, Proof Lens, Decision Passport, quotation dan simulator CAPEX/OPEX; hub SagaBook/SagaView tetap surface marketing. Scope yang belum diterima tidak disebut live hanya karena source tersedia.

## Roadmap

Bukti hasil bisnis, consent/publikasi, proposal final, scope garansi/support dan handoff operasional tetap diperlukan; source snapshot tidak mereproduksi bukti deployment. Urutan acceptance mengikuti Product/GAPS dan runner produk.

## User journey

Pilih konteks -> periksa pasar/readiness -> hasil fit/gap -> periksa proof -> rangkum Passport -> konsultasi/proposal.

## User flow

Pilih konteks -> periksa pasar/readiness -> hasil fit/gap -> periksa proof -> rangkum Passport -> konsultasi/proposal. Permission, error, uncertainty dan recovery tetap bagian kontrak source.

## Business model

Penjualan paket/hardware/jasa sesuai proposal final; baseline tidak mengesahkan sewa perangkat, royalty atau bagi hasil baru.

## Pricing

Tidak ada keputusan harga baru. Gunakan harga/scope yang sudah tercatat di [PRODUCT](PRODUCT.md) dan proposal/kontrak terkait. Angka yang belum dikunci tetap NEEDS CONFIRMATION.

## Kompetitor

NEEDS CONFIRMATION: belum ada benchmark kompetitor terkini yang disahkan pada milestone source ini. Tidak menambahkan klaim perbandingan atau rekomendasi vendor tanpa riset/bukti baru.

## Diferensiasi produk

Kualifikasi konteks lokasi/event/hybrid, bukti yang relevan dan Decision Passport membuat diskusi proposal dapat diperiksa. Ini menjelaskan workflow source, bukan keunggulan bisnis yang telah diukur.

## Brand positioning

Website kemitraan Self Photo Studio dan Photobooth untuk memahami model usaha, paket, tanggung jawab dan handoff konsultasi. Positioning final tetap mengikuti keputusan founder yang tercatat.

## Messaging

Sampaikan fungsi yang mempunyai bukti scope dan tanggal. Bukti hasil bisnis, consent/publikasi, proposal final, scope garansi/support dan handoff operasional tetap diperlukan; source snapshot tidak mereproduksi bukti deployment.

## FAQ

Apakah repo lengkap berarti siap production? Tidak; source backup dan acceptance runtime berbeda. Apakah pricing/provider berubah? Tidak pada sinkronisasi ini. Source terbaru dibaca dari ref pada registry.

## Technical overview

Next.js/React website marketing; source disimpan pada repo privat SagaTech. State keputusan lokal dan analytics allowlist mengikuti source/kontrak yang tercatat.

## Integrasi

Next.js/React website marketing; source disimpan pada repo privat SagaTech. State keputusan lokal dan analytics allowlist mengikuti source/kontrak yang tercatat. Setiap provider/device mempunyai activation/acceptance tersendiri; identifier dan credential tidak masuk knowledge publik.

## Data yang digunakan

Role/workflow dan metadata produk sesuai source; media/attendance/financial data mengikuti izin dan retention kontrak. Knowledge ini tidak menyimpan customer data, credentials atau raw receipts.

## Risiko dan asumsi

Bukti hasil bisnis, consent/publikasi, proposal final, scope garansi/support dan handoff operasional tetap diperlukan; source snapshot tidak mereproduksi bukti deployment. Unknown tidak ditutup dengan label SOURCE_PUSHED.

## KPI dan success metrics

KPI teknis: source dapat ditelusuri ke repo/ref/SHA, critical journey selesai tepat sekali dan recovery mempunyai bukti. Target bisnis/conversion/adoption terukur belum ditetapkan oleh audit ini; source push bukan KPI omzet.

## Ide konten pemasaran

PROPOSAL: jelaskan satu workflow yang tercatat dan tunjukkan batas fitur/source versus activation; gunakan demo sintetis berlabel, tanpa mengarang customer/testimoni.

## Contoh caption

PROPOSAL: "Kenali alur sagatech dan cek milestone yang sudah terverifikasi sebelum mulai operasional." Draft ini bukan keputusan campaign atau klaim seluruh produk siap.

## Ide campaign

PROPOSAL: edukasi workflow dan invitation demo sesuai status produk; real customer campaign hanya setelah acceptance dan scope publiknya jelas.

## Sales talking points

Kualifikasi konteks lokasi/event/hybrid, bukti yang relevan dan Decision Passport membuat diskusi proposal dapat diperiksa. Jelaskan scope implementation, kebutuhan perangkat/provider dan gate yang masih terbuka sebelum memberi janji komersial.

## Objection handling

Source tersimpan bukan jaminan hardware/provider atau hasil usaha. Tunjukkan evidence yang cocok dengan source/release dan uraikan gate berikutnya; hindari janji ROI/SLA yang belum diputuskan.

## Keputusan dan gap

Lihat [PRODUCT](PRODUCT.md), [GAPS](../../GAPS.md) dan [source registry](../../docs/SOURCE_REGISTRY.md). Bukti hasil bisnis, consent/publikasi, proposal final, scope garansi/support dan handoff operasional tetap diperlukan; source snapshot tidak mereproduksi bukti deployment.
