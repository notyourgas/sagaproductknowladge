# SagaBook Feature Coverage Ledger

Evidence cut-off: 6 Agustus 2026 11:05 WIB

## Tujuan

Mencatat bukti UI/UX dan integrasi SagaBook secara bertahap tanpa mengubah test lokal atau release UI menjadi klaim integrasi penuh.

## Konteks

Ledger ini melanjutkan screening UI/UX dan integrasi secara fitur-per-fitur. Status integrasi hanya naik bila alur nyata UI -> frontend -> API -> backend -> database -> response UI, failure/retry, dan permission/tenant-negative memiliki bukti.

| Fitur/alur | Role | Route/surface | Status UI/UX | Frontend state/form | API/boundary | Backend/database | Auth/tenant/permission | Happy/failure/retry/idempotency | Viewport/zoom | Evidence/source/release | Status akhir | Gap berikutnya |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Auth/session | Owner, staff | Login dan dashboard | Belum discreen ulang | Belum discreen ulang | Web auth/session | Auth service dan session store | Wajib deny-by-default | Belum discreen ulang | Belum discreen ulang | Historical production; fresh ledger belum ada | `NOT_SCREENED` | Mulai dari login, expiry, retry, dan role-negative. |
| Tenant/cabang | Owner, admin | Dashboard cabang | Belum discreen ulang | Belum discreen ulang | Tenant/branch API | Tenant dan branch persistence | Tenant/branch isolation wajib | Belum discreen ulang | Belum discreen ulang | Historical production; fresh ledger belum ada | `NOT_SCREENED` | Verifikasi switch cabang dan cross-tenant negative. |
| Paket/background/add-on/resource | Owner, admin | Katalog | Belum discreen ulang | Belum discreen ulang | Catalog API | Catalog service/tables | Tenant scope wajib | Belum discreen ulang | Belum discreen ulang | Historical production; fresh ledger belum ada | `NOT_SCREENED` | Verifikasi CRUD, stale state, dan permission. |
| Availability/slot | Customer, operator | Storefront dan calendar | UI storefront tervalidasi | Integrasi fresh belum discreen | Availability API | Slot/lock persistence | Tenant dan concurrency wajib | Belum discreen ulang | Storefront 390 sampai 4K tetap canvas <=460 px | Playwright S109/S122 | `UIUX_VALIDATED` | Uji hold, race, expiry, retry, dan read-after-write. |
| Public booking | Customer | Storefront booking | Tervalidasi | Happy path manual transfer lulus | Booking API | Booking/payment persistence | Public tenant scope wajib | Happy path lulus; negative fresh belum lengkap | 390x844 sampai 3840x2160 | Playwright 42/42 + booking E2E 1/1 | `UIUX_VALIDATED` | Tambah failure dan tenant-negative end-to-end. |
| Payment/status | Customer, cashier | Checkout dan Payment Monitor | Tervalidasi untuk alur kritis | Retry/error UI tersedia | Payment API/provider boundary | Payment session dan ledger | Tenant/permission wajib | Manual-transfer happy path lulus; provider nyata di luar batch | Mobile + desktop regression | Source `1b8c91fc`; release `20260806040004-1b8c91f` | `UIUX_VALIDATED` | Screen QRIS/manual transfer/status feature-by-feature. |
| Booking admin/manual booking/task | Owner, operator | Admin booking dan Task Center | Visual contract lulus | Integrasi fresh belum discreen | Admin booking/task API | Booking/task services | Role/capability wajib | Belum discreen ulang | Mobile, narrow-risk, desktop | Admin contract 100 persen | `UIUX_VALIDATED` | Uji create/update/conflict/permission dari UI ke DB. |
| WhatsApp/reminder | Owner, operator | Template dan reminder | Belum discreen ulang | Belum discreen ulang | Provider/outbox boundary | Delivery/outbox tables | Tenant routing wajib | Belum discreen ulang | Belum discreen ulang | Historical production; fresh ledger belum ada | `NOT_SCREENED` | Uji provider failure, retry, idempotency, dan manual fallback. |
| Report/reconciliation | Owner | Report dan Payment Monitor | Visual contract lulus | Integrasi fresh belum discreen | Report/reconciliation API | Ledger/report query | Tenant/role wajib | Belum discreen ulang | Desktop contract lulus | Admin contract 100 persen | `UIUX_VALIDATED` | Verifikasi filter, pagination, totals, export, dan negative scope. |
| Template draft/preview/publish | Owner, admin | `/admin/template` dan storefront preview | `UIUX_VALIDATED` | Draft/publish handler tidak diubah pada S122 | Existing template endpoints | Existing settings/publish persistence | Capability dan tenant scope tidak diubah | Contract backend 12/12; integration mutation fresh belum lengkap | 390x844, 1280x800, 1440x900, 1512x982, 2560x1440; forced-colors/reduced-motion | Source `1b8c91fc182d1bd8e552cafa16785e5b90bbab01`; release `20260806040004-1b8c91f`; Playwright 42/42 | `RELEASED` | Screen draft -> preview -> publish -> public read, failure, double-submit, dan tenant-negative. |

Subscription tenant tidak diaktifkan oleh ledger ini. Website booking yang sudah aktif tidak dinonaktifkan.
