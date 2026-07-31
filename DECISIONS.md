# Riwayat Keputusan Saga Product Knowledge

## Tujuan

Menyimpan keputusan penting founder dan governance secara append-only agar
perubahan keputusan dapat ditelusuri oleh manusia maupun AI agent.

## Konteks

Dokumen ini hanya memuat informasi berstatus `CONFIRMED`. Usulan berada sebagai
`PROPOSAL`; informasi belum jelas berada di [GAPS](GAPS.md). Keputusan lama
tidak dihapus ketika berubah: statusnya menjadi `DEPRECATED` dan menunjuk ID
keputusan pengganti.

## Aturan ID dan lifecycle

- ID menggunakan format `DEC-001`, `DEC-002`, dan seterusnya.
- ID tidak digunakan ulang.
- Keputusan baru berstatus `CONFIRMED`.
- Keputusan yang diganti berstatus `DEPRECATED`.
- Field “Alternatif” bukan keputusan aktif.
- Implementasi keputusan tetap memerlukan source/release evidence.

## DEC-001 — Repository sebagai single source of truth

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Tata kelola product knowledge |
| Keputusan | Repository `notyourgas/sagaproductknowladge` menjadi single source of truth publik untuk product, business, technical, marketing, dan operational knowledge Saga. Setiap informasi baru yang cukup jelas wajib disinkronkan lintas dokumen, di-commit, dan di-push ke `main`. |
| Alasan | Manusia dan AI agent membutuhkan sumber kanonik yang konsisten, terbarui, dan dapat diaudit. |
| Alternatif yang dipertimbangkan | Knowledge tersebar di percakapan/repo produk; update manual sesekali; update satu file tanpa impact analysis. |
| Dampak | Wajib pull terbaru, klasifikasi informasi, impact analysis, changelog, decision/gap/sync update, validation, commit, push, dan laporan SHA. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [README](README.md), [Update Protocol](docs/UPDATE_PROTOCOL.md), [Knowledge Governance](docs/governance/KNOWLEDGE_GOVERNANCE.md), [Sync Status](SYNC_STATUS.md) |

## DEC-002 — SagaBook dan SagaView dijual satuan

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Packaging self-photo SaaS |
| Keputusan | SagaBook dan SagaView memiliki paket serta harga masing-masing. Penjualan bundle ditunda. |
| Alasan | Kedua produk memiliki workflow, account role, entitlement, dan kesiapan operasional yang berbeda. |
| Alternatif yang dipertimbangkan | Menjual hanya sebagai bundle; menyatukan pricing kedua produk. |
| Dampak | Pricing, FAQ, sales messaging, subscription, dan landing harus product-scoped. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Business Strategy](docs/business/BUSINESS_STRATEGY.md) |

## DEC-003 — Trial dua fase

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Trial SagaBook dan SagaView |
| Keputusan | Trial berjalan 14 hari: hari 1–7 full access dan hari 8–14 plan-limited. Activation tetap harus dibuktikan per produk. |
| Alasan | Pengguna perlu merasakan nilai lengkap sebelum memasuki batas paket. |
| Alternatif yang dipertimbangkan | Trial 7 hari; trial 14 hari dengan akses penuh sepanjang periode; trial tanpa batas product-scoped. |
| Dampak | Backend enforcement, UI countdown, FAQ, pricing, sales copy, entitlement, dan analytics harus konsisten. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md) |

## DEC-004 — Identity dapat sama, akses tetap product-scoped

| Field | Isi |
|---|---|
| Tanggal | 2026-07-30 |
| Topik | Account, role, dan entitlement |
| Keputusan | Identity dapat ditautkan ke organisasi/produk lain, tetapi role, membership, session, entitlement, subscription, trial, data, dan payment ledger tetap terpisah per produk. Owner SagaBook tidak otomatis menjadi Admin SagaView. |
| Alasan | Menghindari privilege escalation dan kebingungan account lintas produk. |
| Alternatif yang dipertimbangkan | Satu role global; satu session global; entitlement otomatis berdasarkan email yang sama. |
| Dampak | Authentication, permission, account linking, billing, audit, dan integration contract harus product-scoped dan deny-by-default. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Authentication and Permissions](docs/technical/AUTHENTICATION_AND_PERMISSIONS.md), [Saga Platform](products/saga-platform/PRODUCT.md) |

## DEC-005 — Finance Tracker Go adalah SagaFin

| Field | Isi |
|---|---|
| Tanggal | 2026-07-29 |
| Topik | Identitas produk finance |
| Keputusan | Finance Tracker Go dan SagaFin adalah produk yang sama dan tidak boleh dihitung sebagai dua produk. |
| Alasan | Menghindari duplikasi roadmap, status, dan knowledge. |
| Alternatif yang dipertimbangkan | Mempertahankan keduanya sebagai produk terpisah. |
| Dampak | Registry, reporting, feature scope, changelog, dan knowledge memakai nama SagaFin dengan provenance nama lama. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaFin Product](products/sagafin/PRODUCT.md), [Portfolio](docs/SAGA_PRODUCT_PORTFOLIO.md) |

## DEC-006 — Repository knowledge bersifat public-safe

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Security dan privacy repository |
| Keputusan | Repository tidak boleh menyimpan secret, credential, token, PII, raw receipt/callback, tenant/device/account identifier, database dump, private evidence URL/path, atau detail vulnerability exploitable. |
| Alasan | Repository dibagikan kepada manusia dan AI agent serta tersedia publik. |
| Alternatif yang dipertimbangkan | Menyimpan evidence operasional mentah di repository yang sama. |
| Dampak | Hanya ringkasan public-safe yang disinkronkan; evidence restricted tetap berada pada store berizin. |
| Pemberi keputusan | Andreas / founder dan governance repository |
| Status | `CONFIRMED` |
| Dokumen terkait | [Knowledge Governance](docs/governance/KNOWLEDGE_GOVERNANCE.md), [Data Privacy](docs/technical/DATA_PRIVACY.md) |

## DEC-007 — Status delivery, activation, dan business readiness dipisahkan

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Readiness dan klaim |
| Keputusan | Local validation, deployment, provider activation, dan business readiness adalah status berbeda. Dummy, fixture, simulation, log lokal, atau HTTP 200 tidak membuktikan provider/business activation. |
| Alasan | Mencegah klaim progress yang melampaui evidence. |
| Alternatif yang dipertimbangkan | Satu status gabungan untuk seluruh readiness. |
| Dampak | Product docs, changelog, sales claim, AI answer, dan release report wajib menyebut evidence level secara eksplisit. |
| Pemberi keputusan | Andreas / founder dan governance repository |
| Status | `CONFIRMED` |
| Dokumen terkait | [Status Legend](docs/STATUS_LEGEND.md), [Deployment Process](docs/technical/DEPLOYMENT_PROCESS.md) |
