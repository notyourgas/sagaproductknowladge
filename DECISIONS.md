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

## DEC-008 — Paket, limit, dan trial SagaBook/SagaView

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kontrak komersial produk self-photo SaaS |
| Keputusan | SagaBook: Basic Rp500.000/bulan (1 cabang, 3 staff), Growth Rp950.000/bulan (3 cabang, 10 staff), Pro Rp1.500.000/bulan (maksimal 10 cabang, 30 staff self-service); kebutuhan di atas Pro memakai kontrak Custom. Trial hari 1–7 memakai akses Pro dengan guardrail 2 cabang, owner + 4 staff, dan 30 booking aktif/confirmed; hari 8–14 memakai limit paket terpilih dan maksimal 50 booking trial total. SagaView: Growth Rp200.000/bulan (1 device, 10 frame aktif, 3 preset, offline 24 jam, 2 GB aset frame cloud, laporan dasar) dan Pro Rp500.000/bulan (4 device, 50 frame aktif, 10 preset, offline 168 jam, 10 GB aset frame cloud, laporan lanjutan, activity log, priority support); kebutuhan di atas Pro memakai penawaran Custom. Trial hari 1–7 memakai fitur Pro maksimal 2 device/10 completed session; hari 8–14 memakai limit paket terpilih dan maksimal 20 completed session trial total; hari 15–21 read-only/export. Booking SagaBook serta sesi/foto SagaView dipasarkan sebagai unlimited dengan fair-use; foto SagaView tetap lokal dan tidak dihitung sebagai storage cloud. Trial tidak auto-charge dan tetap product-scoped. |
| Alasan | Customer membutuhkan paket yang mudah dibandingkan, sementara sistem memerlukan batas server-authoritative yang aman dan dapat diaudit. |
| Alternatif yang dipertimbangkan | Pro tanpa batas; paket multi-term publik; satu harga/bundle; trial tanpa guardrail. |
| Dampak | Pricing, entitlement, quota, UI, billing, sales copy, trial, dan acceptance test wajib konsisten. Implementasi dan production activation tetap membutuhkan provenance source/release. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Business Strategy](docs/business/BUSINESS_STRATEGY.md) |

## DEC-009 — Policy default, privacy, offboarding, dan support

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Policy operasional produk self-photo SaaS |
| Keputusan | Policy default SagaBook dapat dioverride tenant: satu reschedule gratis minimal 24 jam sebelum sesi; pembatalan minimal 48 jam menerima refund 100% dikurangi fee provider yang tidak dapat dikembalikan; 24–48 jam menerima 50%; kurang dari 24 jam atau no-show tidak mendapat refund; refund selalu membutuhkan persetujuan operator; pembatalan oleh studio menawarkan refund penuh atau reschedule gratis. Baseline kedua produk: data aktif selama subscription, akses export 14 hari setelah offboarding, penghapusan data operasional maksimal 30 hari setelah permintaan terverifikasi, audit/security log 90 hari, tiket support 180 hari, dan catatan keuangan/legal mengikuti hukum yang berlaku. Support Senin–Sabtu 10.00–18.00 WIB; P1 maksimal 4 jam kerja, P2 1 hari kerja, P3 3 hari kerja. Foto SagaView tetap lokal. |
| Alasan | Sales, billing, customer care, privacy, dan incident handling membutuhkan kontrak yang konsisten sebelum pilot bisnis. |
| Alternatif yang dipertimbangkan | Refund otomatis; policy tunggal yang tidak dapat dioverride; retention tanpa batas; SLA tanpa jam layanan. |
| Dampak | Legal copy, customer request, operator approval, retention job, support queue, onboarding, dan sales handoff harus menggunakan policy ini atau policy tenant yang lebih eksplisit. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Data Privacy](docs/technical/DATA_PRIVACY.md), [Payment Flow](docs/technical/PAYMENT_FLOW.md), [Founding Studio Pilot](docs/business/FOUNDING_STUDIO_PILOT.md) |

## DEC-010 — Founding Studio Pilot dan exit criteria business-ready

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Validasi business readiness SagaBook dan SagaView |
| Keputusan | Jalankan Founding Studio Pilot 14 hari untuk minimal 3 studio per produk; studio yang sama boleh mencoba keduanya tetapi akun, subscription, bukti, dan evaluasi tetap terpisah. Onboarding assisted maksimal 60 menit, tanpa setup fee untuk cohort pertama, feedback hari 3/7/14, dan hari ke-15 kembali ke harga daftar atau berhenti. Business-ready membutuhkan seluruh exit criteria pada runbook pilot, termasuk penggunaan nyata, core journey minimal 95% tanpa engineer, provider/recovery/SLA lulus, tidak ada incident critical, dan minimal 2 dari 3 studio per produk melanjutkan berbayar. |
| Alasan | Deployment teknis tidak membuktikan produk dapat dijual dan dipakai bisnis nyata secara berulang. |
| Alternatif yang dipertimbangkan | Langsung mass launch; pilot tanpa target kuantitatif; satu cohort gabungan tanpa pemisahan produk. |
| Dampak | Status tetap `NEEDS CONFIRMATION` untuk business readiness sampai cohort menghasilkan evidence agregat yang memenuhi semua gate. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [Founding Studio Pilot](docs/business/FOUNDING_STUDIO_PILOT.md), [Status Legend](docs/STATUS_LEGEND.md), [Sales Strategy](docs/business/SALES_STRATEGY.md) |

## DEC-011 - SagaBook public privacy, retention, deletion, dan offboarding

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kebijakan publik dan data lifecycle SagaBook |
| Keputusan | Andreas menyetujui seluruh keputusan P01-P18 untuk implementasi dan review legal. Studio menjadi Controller untuk data booking customer dan SagaBook/SagaDev menjadi Processor; SagaBook/SagaDev menjadi Controller independen untuk identity, billing, security, support, compliance, dan analytics teragregasi. Consent booking wajib berversi; marketing dan izin foto terpisah serta tidak preselected. Retention target: booking PII 24 bulan lalu anonymize; ledger 5 tahun atau lebih bila hukum mewajibkan; bukti transfer manual 90 hari; expired hold 30 hari; support conversation/attachment 180/30 hari; app/security-audit log 90/365 hari; backup encrypted rolling 30 hari. Paid cancellation memberi read-only/export 30 hari dan penghapusan data eligible maksimal 90 hari setelah jendela export. Persetujuan hanya mengizinkan implementasi dan legal review; policy tetap belum aktif dan belum dipublikasikan. |
| Alasan | Produk memerlukan kontrak data lifecycle dan batas klaim publik yang eksplisit sebelum penjualan SaaS tanpa batas. |
| Alternatif yang dipertimbangkan | Publikasi langsung tanpa legal/implementation gate; retention tanpa kategori; consent gabungan; penghapusan langsung tanpa export window. |
| Dampak | Source, UI consent, policy versioning, retention/deletion jobs, export/offboarding, incident runbook, vendor disclosure, legal pages, sales claim, QA, release, dan rollback harus mengikuti keputusan ini. Bila berbeda dengan baseline umum DEC-009, ketentuan SagaBook yang lebih spesifik pada DEC-011 berlaku. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [Data Privacy](docs/technical/DATA_PRIVACY.md), [Gaps](GAPS.md) |

## DEC-012 — Branding signature SagaBook dan SagaView

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Branding product surface |
| Keputusan | Semua surface aplikasi, public, dan customer SagaBook menampilkan tepat satu `Powered by SagaBook`; SagaView menampilkan tepat satu `Powered by SagaView`. Signature harus halus tetapi terbaca, accessible, responsif, tidak menutupi konten, dan tidak dimasukkan ke foto, hasil cetak, export, invoice, atau receipt. |
| Alasan | Produk memerlukan attribution konsisten tanpa mengganggu operasi atau artifact bisnis customer. |
| Alternatif yang dipertimbangkan | Tanpa signature; watermark fixed; watermark masuk ke output customer. |
| Dampak | Shell, storefront, template, visual regression, accessibility, forced-colors, dan public knowledge harus memeriksa presence tepat satu serta mencegah cross-brand label. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md) |

## DEC-013 — SagaDevs sebagai parent hub dan Preview-only release

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Arsitektur public hub dan deployment SagaDevs |
| Keputusan | SagaDevs menjadi parent product hub dan overview layanan. SagaBook, SagaView, serta Sagafin tetap memiliki landing page masing-masing. UI/UX Sprint 1–5 dideploy sebagai Vercel Preview lebih dulu; domain production tidak diubah sampai visual UAT disetujui. Showroom harus menggunakan capture dan workflow source produk, bukan fabricated demo. |
| Alasan | Product discovery membutuhkan satu pintu yang konsisten tanpa mencampur product landing, pricing, account, data, atau operational workflow lintas produk; Preview menutup risiko visual sebelum promotion production. |
| Alternatif yang dipertimbangkan | Satu landing gabungan untuk seluruh detail produk; fabricated interactive demo; langsung promote ke production tanpa Preview UAT. |
| Dampak | Navigation, showroom, CTA, content ownership, deployment gate, noindex, dan future Super Admin harus menjaga boundary public hub versus produk. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [Portfolio](docs/SAGA_PRODUCT_PORTFOLIO.md) |

## DEC-014 — SagaDevs memakai source-preserving visual refinement

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Batas perubahan visual SagaDevs |
| Keputusan | Source, original style, keluarga font, komposisi tujuh section, dan fitur interaktif SagaDevs harus dipertahankan. Refinement hanya mencakup typography, hierarchy, spacing, density, placement, responsive behavior, dan accessibility navigation. Arah redesign `ui-ux-sprints-1-5-preview-v1` ditolak; corrected Preview aktif adalah `source-preserving-polish-v2`. Production tetap tidak berubah sampai visual UAT disetujui. |
| Alasan | Founder menginginkan website yang lebih rapi tanpa kehilangan karakter, fitur menarik, dan familiaritas source sebelumnya. |
| Alternatif yang dipertimbangkan | Information architecture baru, font utama baru, penghapusan fitur lama, dan promotion langsung ke production. |
| Dampak | Audit dan perubahan berikutnya wajib memakai source composition sebagai baseline; penghapusan atau redesign komponen memerlukan keputusan baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [SagaDevs Changelog](products/sagadevs/CHANGELOG.md) |
