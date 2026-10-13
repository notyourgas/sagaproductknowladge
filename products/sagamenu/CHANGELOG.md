# SagaMenu Changelog

## 2026-10-14 - Sinkronisasi source dan pemetaan repo

`CONFIRMED / SOURCE_SYNC_VERIFIED`; scope hanya backup source, ref dan dokumentasi.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| pilot-application-and-prototype | [Source](https://github.com/notyourgas/sagamenu/tree/main) | `2cd48139cea0f75d9a02b0a86d8f6ffe12ee2d58` | `SOURCE_PUSHED` |

Source Laravel pilot dan prototype tersimpan pada repo privat terpisah. Seluruh 380 path tracked dari subtree pilot sumber asal tersedia dalam snapshot; skeleton storage dan contoh release ikut disimpan, sedangkan runtime data/environment privat dikecualikan. Baseline workspace juga dipertahankan dalam histori repo. Ini tidak menerbitkan target PostgreSQL/VPS atau mengklaim production readiness.

Source/ref diverifikasi melalui Git remote pada 14 Oktober. Tidak ada deployment, migration, perubahan data/provider atau UAT runtime baru. Lihat [registry source](../../docs/SOURCE_REGISTRY.md) dan [ringkasan sinkronisasi](../../docs/SOURCE_SYNC_20261014.md). Pricing, positioning dan batas BUSINESS_READY tidak diubah.

## Tujuan

Mencatat perubahan material SagaMenu dengan provenance public-safe.

## Konteks

Status local/staging/production pada setiap entri harus dibaca secara eksplisit.

## 2026-07-31 - Public media recovery

- Status batch: `IMPLEMENTED_NOT_DEPLOYED`.
- Before -> after: gambar/video gagal yang sebelumnya tidak memberi pemulihan
  jelas kini memiliki fallback aksesibel, status gagal, retry, dan recovery.
- Dampak: customer tetap dapat membaca detail menu pada Bio Menu dan Store
  Display saat storage/CDN media bermasalah.
- Source implementation:
  `bff2d75dc33647ba7b88f2366c32dd49cd584797`.
- Validasi: 101 test dan 718 assertion lulus, build lulus, browser mobile/tablet
  lulus, serta audit dependency tidak menemukan advisory.
- Production tidak berubah. Prototype Vercel tidak dideploy ulang karena tidak
  memiliki perubahan source.
- Blocker: target Laravel staging nyata dan signed 55-gate probe belum tersedia.

## 2026-07-31 — Central knowledge baseline

- Status: `LOCAL_VALIDATED`.
- Wave 1-4, pilot closure, domain contract, dan production blockers
  disinkronkan.
