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
| Status | `DEPRECATED` untuk SagaBook oleh DEC-029; tetap berlaku untuk SagaView sampai ada release product-scoped baru. |
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
| Keputusan | SagaBook: Basic Rp500.000/bulan (1 cabang, 3 staff), Growth Rp950.000/bulan (3 cabang, 10 staff), Pro Rp1.500.000/bulan (maksimal 10 cabang, 30 staff self-service); kebutuhan di atas Pro memakai kontrak Custom. Trial hari 1–7 memakai full access dengan guardrail 2 cabang, owner + 4 staff, dan 30 booking aktif/confirmed; hari 8–14 grace read-only; setelah hari 14 suspended. SagaView: Growth Rp200.000/bulan (1 device, 10 frame aktif, 3 preset, offline 24 jam, 2 GB aset frame cloud, laporan dasar) dan Pro Rp500.000/bulan (4 device, 50 frame aktif, 10 preset, offline 168 jam, 10 GB aset frame cloud, laporan lanjutan, activity log, priority support); kebutuhan di atas Pro memakai penawaran Custom. Kontrak trial SagaView tetap product-scoped dan tidak diubah oleh release platform SagaBook ini. Booking SagaBook serta sesi/foto SagaView dipasarkan sebagai unlimited dengan fair-use; foto SagaView tetap lokal dan tidak dihitung sebagai storage cloud. Trial tidak auto-charge dan tetap product-scoped. |
| Alasan | Customer membutuhkan paket yang mudah dibandingkan, sementara sistem memerlukan batas server-authoritative yang aman dan dapat diaudit. |
| Alternatif yang dipertimbangkan | Pro tanpa batas; paket multi-term publik; satu harga/bundle; trial tanpa guardrail. |
| Dampak | Pricing, entitlement, quota, UI, billing, sales copy, trial, dan acceptance test wajib konsisten. Implementasi dan production activation tetap membutuhkan provenance source/release. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; limit frame SagaView 10/50 pada keputusan ini `DEPRECATED` oleh `DEC-039`, sedangkan harga dan benefit lainnya tetap |
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
| Keputusan | Source, original style, keluarga font, komposisi tujuh section, dan fitur interaktif SagaDevs harus dipertahankan. Refinement hanya mencakup typography, hierarchy, spacing, density, placement, responsive behavior, restrained motion, performance, dan accessibility navigation. Arah redesign `ui-ux-sprints-1-5-preview-v1` ditolak. Setelah Motion Polish v3 disetujui, logo 3D diperbesar 1,5× dan digeser kiri sebagai `source-preserving-hero-scale-v4`, lalu dipromosikan ke production `sagadevs.com`. |
| Alasan | Founder menginginkan website yang lebih rapi tanpa kehilangan karakter, fitur menarik, dan familiaritas source sebelumnya. |
| Alternatif yang dipertimbangkan | Information architecture baru, font utama baru, penghapusan fitur lama, dan promotion langsung ke production. |
| Dampak | Audit dan perubahan berikutnya wajib memakai source composition sebagai baseline; penghapusan atau redesign komponen memerlukan keputusan baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` |
| Dokumen terkait | [SagaDevs Product](products/sagadevs/PRODUCT.md), [SagaDevs Dossier](products/sagadevs/DOSSIER.md), [SagaDevs Changelog](products/sagadevs/CHANGELOG.md) |

## DEC-015 — AOGTICVITY memakai Master Recap 17 Agustus 2026

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Kontrak event dan identitas produk AOGTICVITY |
| Keputusan | Nama produk terbaru adalah AOGTICVITY. PDF Master Recap Lomba 17 Agustus 2026 menjadi sumber keseluruhan data aplikasi untuk 8 tim dan 10 lomba. Durasi boleh ditentukan sementara oleh sistem dan tetap dapat diubah admin; lomba dengan peserta seluruh tim tidak meminta input nama peserta. |
| Alasan | Public, player, leader, admin, live projection, dan backend harus memakai kontrak event yang sama tanpa memaksa data roster yang tidak dibutuhkan. |
| Alternatif yang dipertimbangkan | Mempertahankan konfigurasi lama enam tim; mengunci durasi sebelum konfirmasi; meminta nama peserta untuk setiap lomba seluruh tim. |
| Dampak | Master data, schedule builder, roster rule, result policy, UI semua role, migration, audit, UAT, dan knowledge publik memakai 8 tim/10 lomba. Klausa nama Tim 7/Tim 8 yang provisional diselesaikan oleh DEC-023; keputusan open lain tetap tercatat sebagai gap. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; klausa nama produk AOGTICVITY `DEPRECATED` oleh `DEC-047`, sedangkan kontrak master recap, 8 tim, 10 lomba, durasi editable, dan roster seluruh tim tetap berlaku |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-059 - Durasi akhir Lomba 9, Lomba 10, dan Awarding AOGTIVITY

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Finalisasi durasi tiga blok terakhir AOGTIVITY 17 Agustus 2026 |
| Keputusan | Lomba 9/Voli Air berdurasi 30 menit pada 18.05–18.35, Lomba 10/Name Tag Ripped berdurasi 30 menit pada 18.35–19.05, dan Awarding & Closing berdurasi 15 menit pada 19.05–19.20. Ketiga durasi confirmed, tetapi tetap dapat diedit admin untuk recovery kondisi lapangan. |
| Alasan | Founder meminta ketiga durasi dipersingkat dan seluruh susunan acara dihitung ulang. |
| Alternatif yang dipertimbangkan | Mempertahankan 60/45/30 menit; mengurangi durasi tanpa menggeser blok berikutnya; mengubah jam mulai acara. |
| Dampak | Estimasi selesai berubah dari 20.20 menjadi 19.20 WIB. Master data version 2026.5, schedule builder, UI semua role, migration MySQL 027, audit, tests, release, dan rollback memakai kontrak yang sama tanpa mengubah peserta, hasil, atau assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; runtime `d97547acf92d68ad8567401858b76e27adbd0f56`, Hostinger `20260807T161422Z`, Vercel `dpl_4oWi3Yt4x8BsGKDmMbBcA36A9JBP`, migration 027; human operational UAT tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-058 - Rundown AOGTIVITY dimulai pukul 14.30 WIB

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Perubahan waktu operasional AOGTIVITY 17 Agustus 2026 |
| Keputusan | Registrasi ulang dan briefing dimulai 14.00 WIB. Acara dimulai 14.30 WIB dengan Opening Tim & Yel-yel 15 menit, Sing Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding & Closing. Durasi lomba dan penutupan tetap editable/provisional sampai dikunci panitia. |
| Alasan | Founder mengubah jam mulai acara menjadi 14.30 dan meminta seluruh susunan dihitung ulang sesuai durasi yang sudah ada. |
| Alternatif yang dipertimbangkan | Mempertahankan rundown 12.00; memotong durasi agar selesai pada jam lama; menggeser hanya opening tanpa menggeser seluruh lomba. |
| Dampak | Master data version 2026.4, landing, agenda publik, schedule builder, admin warning, reload lintas perangkat, timeline, test, dan migration MySQL 026 memakai kontrak yang sama. Jam provisional menghasilkan lomba pertama 15.00, Break 16.55, sesi kedua 17.10, Awarding & Closing 19.50, dan estimasi selesai 20.20 WIB. Migration mengarsipkan jadwal migration 025, menaikkan schedule version, menulis audit, dan menyediakan rollback tanpa mengubah peserta, hasil, atau assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED` untuk jam mulai dan struktur dua sesi; klausa durasi provisional `DEPRECATED` oleh `DEC-059`. Release historis aktif melalui runtime `6ec56e5b7e6859581d5a678a21b27971f10a5c14`, Hostinger `20260807T154156Z`, Vercel `dpl_6hKz6JJ2s2vogcLXQLFEBNEZuWEF`, migration 026 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-057 - Kategori frame memakai harga default kategori kecuali ada override eksplisit

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Sinkronisasi kategori dan harga frame SagaView |
| Keputusan | Perubahan kategori single maupun batch wajib menyinkronkan master, draft aktif, dan published aktif secara transactional. Batch kategori menghapus override harga per-frame lama sehingga harga efektif mengikuti default kategori baru; override cabang yang memang eksplisit tetap berlaku. Setiap perubahan berhasil wajib menaikkan versi/checksum katalog dan revision workspace. |
| Alasan | Kategori published yang stale serta override harga lama membuat kategori dan harga di Owner/Studio berbeda setelah batch edit. Katalog perlu sinyal versi baru agar konsumen tidak memakai konfigurasi lama. |
| Alternatif yang dipertimbangkan | Hanya mengubah master; mempertahankan seluruh override lama; memaksa operator membersihkan harga satu per satu; memperbaiki data tanpa menutup jalur tulis. |
| Dampak | Service kategori, UI Galeri Frame, response audit, cache/catalog invalidation, recovery data terarah, test integrasi, release, dan UAT wajib mengikuti kontrak ini. Missing/cross-workspace membatalkan transaksi tanpa perubahan parsial. |
| Pemberi keputusan | Andreas / founder melalui instruksi memperbaiki kategori dan harga yang tidak sinkron |
| Status | `CONFIRMED`; production backend `f05c919a` / `20260807045115-f05c919`, Studio `05c5fda0` / `20260807045115-05c5fda`; authenticated Owner UAT masih residual sebelum `BUSINESS_READY`. |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Feature Coverage Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md) |

## DEC-056 - Batch Import memiliki aksi selesai dan Galeri Frame mendukung batch kategori

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Penyelesaian Batch Import dan pengelolaan kategori banyak frame SagaView |
| Keputusan | Setelah batch import completed, failed, atau cancelled, Owner harus mendapat ringkasan dan tombol `Selesai` yang selalu terlihat; Escape dan tombol tutup juga harus dapat menutup dialog. Checkbox Galeri Frame digunakan untuk export atau mengubah kategori 1-100 frame terpilih ke kategori aktif tanpa membuka tiap frame. Batch kategori harus transactional, tenant+membership scoped, dan membatalkan seluruh aksi bila satu frame tidak tersedia atau lintas workspace. |
| Alasan | Operator tidak boleh terjebak pada dialog import panjang dan tidak perlu membuka puluhan frame satu per satu hanya untuk menyamakan kategori. |
| Alternatif yang dipertimbangkan | Hanya mengandalkan tombol tutup di header; auto-close tanpa ringkasan; edit kategori satu per satu; update parsial ketika sebagian frame invalid. |
| Dampak | Owner Console menambah footer status akhir, close via Escape, pilihan kategori massal, serta endpoint metadata tenant-scoped. Tidak ada perubahan artwork, slot, foto customer, pricing, payment, subscription, device/session, atau migration. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `f515dd7a1066b2c6b5244bb1f5bc48d306430768` / `20260807023502-f515dd7`; Studio source/release `05c5fda07a342d2977d8e6e3d836adb17a84605b` / `20260807023502-05c5fda`; authenticated Owner UAT tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-055 - Owner dan Studio SagaView wajib memakai workspace yang sama

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Penyelarasan workspace Owner Console dan Studio Console SagaView |
| Keputusan | Tenant yang dikonfirmasi server menjadi sumber request Owner sebelum API pertama. Link Studio wajib membawa workspace target dan hasil aktivasi wajib cocok. Saat berpindah workspace, Studio mengarsipkan state dan metadata runtime lama per workspace, membersihkan state aktif lintas tenant, memulihkan target bila tersedia, lalu bootstrap dan reload. |
| Alasan | Komputer yang sebelumnya membuka studio lain tidak boleh menampilkan nama, pengaturan, katalog, antrean, atau referensi sesi workspace lama saat Owner membuka Studio Console workspace target. |
| Alternatif yang dipertimbangkan | Mempercayai tenant URL/session storage; memakai satu local state global; hanya mengganti nama studio; selalu menghapus seluruh state tanpa arsip per workspace. |
| Dampak | Owner launcher dan response API memperoleh verifikasi workspace; Studio state menjadi tenant-scoped. Tidak ada migration atau perubahan pricing, entitlement, payment, device/session, foto customer, maupun data tenant. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `85ec0f64f08d7f80769480e0b7217cad55dd1591` / `20260806224422-85ec0f6`; Studio source/release `07454264ad3c95d5fb5157135a333f6139bef054` / `20260806224441-0745426`; Owner UAT dua workspace nyata tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-054 - Batch import SagaView memvalidasi workspace sebelum memilih file

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Pemulihan context tenant dan session pada Batch Import SagaView |
| Keputusan | Pemilih file dinonaktifkan sampai server memvalidasi tenant, membership, role staff, dan subscription untuk tab aktif. Target workspace wajib terlihat. URL/local storage tidak boleh mengalahkan server-auth tenant; context stale hanya boleh dipulihkan dalam session dan tenant yang sama. Preflight dan create harus terikat context tervalidasi, resume key harus tenant+membership scoped, dan perubahan context saat upload berhenti fail-closed dengan error bertipe serta pilihan file aman dipertahankan. |
| Alasan | Operator tidak boleh memilih 50-100 file lalu baru menerima pesan context generik, dan stale tab tidak boleh berisiko mengarahkan import atau resume ke tenant lain. |
| Alternatif yang dipertimbangkan | Validasi hanya setelah file dipilih; mempercayai URL/local storage; selalu memaksa login ulang; otomatis berpindah tenant tanpa konfirmasi server. |
| Dampak | Dua endpoint context dan middleware validasi ditambahkan tanpa migration. Pricing, entitlement, payment, device/session, foto customer, serta data tenant tidak berubah. Kandidat S133 tetap terpisah dan wajib direbase ke atas S134 sebelum deploy. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; backend source/release `902e5dd81919168b1978c8bfbcd62303920184a6` / `20260806212915-902e5dd`; Studio rebuild `20260806213012-3b66f8d`; authenticated Owner UAT 50-100 file nyata pada dua akun masih residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-053 - Rundown AOGTIVITY dimulai pukul 12.00 WIB dalam dua sesi lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Struktur waktu dan urutan operasional AOGTIVITY 17 Agustus 2026 |
| Keputusan | Registrasi ulang dan briefing dimulai 11.30 WIB. Acara dimulai 12.00 WIB dengan Opening Tim & Yel-yel 15 menit, Sing Song 15 menit, lima lomba, Break 15 menit, lima lomba, lalu Awarding & Closing. Durasi lomba dan penutupan tetap editable/provisional sampai dikunci panitia. |
| Alasan | Founder memerlukan alur acara yang dimulai lebih awal, mudah dipahami peserta, dan memiliki jeda eksplisit di antara dua sesi berisi masing-masing lima lomba. |
| Alternatif yang dipertimbangkan | Mempertahankan mulai 13.00; menaruh seluruh 10 lomba tanpa break; mempertahankan Makan Bersama sebagai agenda setelah seluruh lomba. |
| Dampak | Master data version 2026.3, landing, agenda publik, schedule builder, admin warning, reload lintas perangkat, timeline, test, dan migration MySQL 025 memakai kontrak yang sama. Jam provisional menghasilkan Awarding & Closing 17.20 dan estimasi selesai 17.50 WIB. Migration mengarsipkan jam lama, menaikkan schedule version, menulis audit, dan menyediakan rollback tanpa mengubah assignment operator. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` untuk kontrak waktu oleh `DEC-058`; release historis tetap `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` pada runtime `1dc0532991bd8bf70ba3db906880581b34bd5329`, Hostinger `20260806T225940Z`, Vercel `dpl_7HfPz4QWhcAJqiajAei9RHZyXhk7`, dan migration 025 |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-052 - Hierarchy visual AOGTIVITY mengikuti poster event founder

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Identitas event dan visual system AOGTIVITY |
| Keputusan | AOGTIVITY menjadi nama acara utama, 17 Agustus 2026 menjadi tanggal resmi, dan Army of God Madiun menjadi identitas penyelenggara. Referensi poster diterjemahkan menjadi lime, navy, magenta, halftone, petir, spark, koin, dan handheld-console frame tanpa mengganti Plus Jakarta Sans atau kontrak mobile-first. |
| Alasan | Visual aplikasi perlu konsisten dengan materi acara resmi dan tidak lagi menampilkan Pixel Matchday sebagai seolah-olah nama event. |
| Alternatif yang dipertimbangkan | Mempertahankan header Pixel Matchday; menyalin poster sebagai background raster; mengganti font utama dengan pixel font. |
| Dampak | Landing/header, theme CSS, asset pipeline, dan regression visual berubah; role, auth, API, data, domain, dan infrastructure identifier tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; visual source `9543450696760666b9ec50a19f918c3381c5d9cf` aktif secara kumulatif melalui runtime `6ec56e5b7e6859581d5a678a21b27971f10a5c14`, Hostinger `20260807T154156Z`, dan Vercel `dpl_6hKz6JJ2s2vogcLXQLFEBNEZuWEF`; visual UAT founder tetap residual |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-051 - Batch import SagaView memiliki preflight, duplicate policy, dan control center

| Field | Isi |
|---|---|
| Tanggal | 2026-08-07 |
| Topik | Operasional lanjutan batch import 50-100 template frame SagaView |
| Keputusan | Sebelum upload, Owner harus melihat preflight kuota frame aktif, storage, dan estimasi publish/draft. Duplikat checksum+geometri harus dapat dilewati, dibuat copy, atau disimpan sebagai draft review. Batch harus memiliki riwayat, notifikasi selesai, cancel aman, laporan CSV, serta bulk retry gagal, publish draft, ganti kategori, dan remove draft/item gagal. Semua kontrol tetap tenant+membership scoped dan hasil yang sudah published/draft tidak boleh terhapus saat cancel. |
| Alasan | Resumable upload S121 sudah mengatasi putus jaringan, tetapi operator masih membutuhkan prediksi kapasitas, keputusan duplikat, recovery pasca-import, dan pengelolaan hasil puluhan frame tanpa membuka editor satu per satu. |
| Alternatif yang dipertimbangkan | Mempertahankan S121 tanpa control center; selalu skip duplikat; selalu auto-publish; menyediakan CSV saja; memindahkan seluruh processing ke browser. |
| Dampak | Backend menambah migration aditif untuk duplicate policy, counter skipped/removed, acknowledgement, fingerprint, dan relasi duplikat; tiga endpoint kontrol ditambahkan. Frontend menambah preflight, history, notification, CSV, selection, dan bulk actions. Pricing, Growth 50/Pro 100, payment, device/session, foto customer, dan source Studio tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source/release `b6af5797fb6fdcea499e727ee2bdb1e4dc666165` / `20260806200400-b6af579`; rollback S121 dipertahankan; authenticated Owner UAT import 50-100 file nyata pada dua akun masih residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-050 - Batch import SagaView memakai upload resumable dan antrean server

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Keamanan dan ketahanan batch import 50-100 template frame SagaView |
| Keputusan | Batch import menerima maksimal 100 `.sagaview-frame` atau satu ZIP. Upload harus memakai chunk, checksum, retry, dan resume; server menyimpan batch/item secara durable, memprosesnya serial melalui queue, serta memperlihatkan hasil per item. File invalid tidak membatalkan item valid, dan publish yang ditolak mempertahankan draft. ZIP harus fail-closed terhadap traversal, folder, entry non-template/duplikat, expanded size berlebih, dan compression bomb. |
| Alasan | Import 50-100 frame tidak boleh bergantung pada satu request/browser session atau mengalami kegagalan jaringan serupa export ZIP sebelumnya. Operator juga harus dapat melanjutkan pekerjaan tanpa mengulang seluruh batch. |
| Alternatif yang dipertimbangkan | Mempertahankan proses sequential di browser; satu upload/request besar tanpa resume; all-or-nothing import; auto-publish tanpa draft preservation; menaikkan timeout server saja. |
| Dampak | Backend menambah schema batch/item additive, endpoint upload/status tenant-scoped, queue serial, TTL purge, dan rate limit. Browser mengirim chunk 4 MB dengan SHA-256 dan maksimal lima retry otomatis. Growth tetap 50, Pro tetap 100; pricing, payment, device/session, foto customer, dan source Studio tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `e850d6c7542c10e97309ca045ebe2f700a488ebf`, backend release `20260806133407-e850d6c`, Studio release `20260806133407-3b66f8d`; authenticated Owner UAT 50-100 file nyata dan dua akun tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-049 - ZIP bulk export SagaView disiapkan server-side

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Stabilitas export ZIP Galeri Frame besar |
| Keputusan | Satu atau dua frame tetap diunduh langsung. Tiga sampai 100 frame disiapkan sebagai satu ZIP tenant-neutral pada private temporary storage backend, lalu browser melakukan satu native download. Export ID harus deterministik agar retry idempotent, paket berumur 30 menit, akses tenant-scoped, dan satu kegagalan membatalkan seluruh arsip. |
| Alasan | ZIP client-side berhenti pada 39 dari 51 frame dengan `Network Error` karena browser memegang artwork dan paket besar di memori sekaligus. Server-side preparation mengurangi tekanan RAM browser dan tetap menghasilkan satu download. |
| Alternatif yang dipertimbangkan | Memperbesar timeout client-side; memecah menjadi beberapa ZIP; menurunkan batas pilihan; mempertahankan client-side ZIP dengan concurrency lebih kecil. |
| Dampak | Backend menambah endpoint authenticated tenant-scoped untuk prepare/download dan scheduler purge. Arsip tetap kompatibel dengan batch import, tenant-neutral, tanpa foto customer. Pricing, Growth 50/Pro 100, payment, device/session, schema, dan Studio source tidak berubah. Klausa `DEC-048` bahwa ZIP dibuat client-side menjadi deprecated; threshold satu-dua versus tiga atau lebih tetap berlaku sampai batas 100. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `ea432e977d02ada8f4b7289bfbd43c6e56941f9a`, backend release `20260806122125-ea432e9`, Studio release `20260806122126-3b66f8d`, rollback `20260806111019-555682b` / `20260806111020-3b66f8d`; authenticated Owner UAT 51 frame nyata, retry, dan dua akun tetap residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-048 - Tiga atau lebih bulk export SagaView dikemas sebagai ZIP

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Threshold packaging bulk export Galeri Frame SagaView |
| Keputusan | Satu atau dua frame terpilih tetap diunduh sebagai file `.sagaview-frame` terpisah. Tiga frame atau lebih dikemas menjadi satu ZIP client-side yang berisi file template tenant-neutral yang sama. ZIP hanya boleh diunduh setelah seluruh template berhasil disiapkan; kegagalan satu template membatalkan seluruh arsip tanpa partial download. |
| Alasan | Founder ingin export puluhan frame hanya memicu satu download agar browser tidak membanjiri operator dengan banyak file atau permintaan izin multiple-download. Threshold tiga mempertahankan alur sederhana untuk satu atau dua template. |
| Alternatif yang dipertimbangkan | Seluruh jumlah tetap direct download; dua atau lebih selalu ZIP; format bundle multi-template baru; ZIP server-side. |
| Dampak | Tombol/helper text Galeri Frame mengikuti jumlah pilihan; schema `.sagaview-frame`, sanitasi tenant/customer, dan import tetap kompatibel. ZIP dibuat di browser tanpa route, migration, pricing, entitlement, payment, device/session, foto customer, atau perubahan Studio source. Klausa DEC-044 bahwa setiap pilihan selalu diunduh terpisah menjadi deprecated, sementara selection/filter/export massal lainnya tetap berlaku. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / HISTORICAL PRODUCTION`; source `555682bb749fc2c97a16172bbf09de2b6d8026d4`, backend release `20260806111019-555682b`; klausa ZIP dibuat client-side `DEPRECATED` oleh `DEC-049`, sedangkan threshold satu-dua direct download dan tiga atau lebih ZIP tetap berlaku sampai batas 100 |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-047 - Nama produk menjadi AOGTIVITY dengan domain tetap

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Rebrand produk event dan batas compatibility identifier |
| Keputusan | Nama produk kanonik berubah dari AOGTICVITY menjadi **AOGTIVITY** untuk seluruh surface yang aman diubah. Domain root dan role tetap memakai `aogticvities.fun`. Slug repository/path deploy, environment variable, cookie/session prefix, database, service, header, cache prefix, dan identifier integrasi `aogticvity` dipertahankan agar sesi, data, integrasi, dan rollback tidak terputus. |
| Alasan | Founder meminta satu nama produk baru di seluruh pengalaman pengguna tanpa mengganti domain atau memaksakan migrasi identifier teknis yang berisiko. |
| Alternatif yang dipertimbangkan | Mengganti domain; mengganti semua identifier teknis sekaligus; hanya mengganti logo; mempertahankan nama lama. |
| Dampak | UI, metadata, PWA, aset, pesan WhatsApp baru, dokumentasi aktif, Better Auth, dan issuer TOTP baru memakai AOGTIVITY. Label TOTP yang telah tersimpan pada authenticator pengguna tidak dapat diubah dari server, tetapi kode lama tetap valid. Histori release mempertahankan nama lama sebagai provenance. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source runtime `e4c217b36a215b94922785f97a14b828ff87826a`, Hostinger `20260806T093015Z`, Vercel `dpl_2ZfuhtLs4v8crJ1g3NnRyv8TSzU9`; business readiness keseluruhan tetap `BLOCKED` |
| Dokumen terkait | [AOGTIVITY Product](products/aogticvity/PRODUCT.md), [AOGTIVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTIVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-046 - Chatbot SagaDev product-scoped dan ditingkatkan melalui guarded knowledge evaluation

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Batas knowledge, gaya respons, dan peningkatan berkala chatbot SagaDev |
| Keputusan | Chatbot hanya membantu informasi produk SagaDev yang tersedia. Jawaban harus natural, hangat, ringkas, grounded pada dokumen `CONFIRMED`, membedakan production/candidate/roadmap, dan meminta maksimal satu klarifikasi bila pertanyaan masih mungkin terkait produk. Topik yang benar-benar di luar SagaDev dijawab dengan fallback natural yang mengarahkan kembali ke SagaBook, SagaView, atau produk SagaDev lain. Peningkatan per jam berarti knowledge sync, prompt/retrieval/RAG evaluation, drift monitoring, dan guarded rollout; bukan fine-tuning bobot otomatis. |
| Alasan | Founder ingin AI makin akurat mengikuti perubahan produk tanpa menjawab topik umum, mengarang status, mencampur produk, atau membocorkan data tenant/customer. |
| Alternatif yang dipertimbangkan | Menjawab seluruh topik umum; menganggap semua unknown sebagai knowledge gap; fine-tuning otomatis tiap jam; mengunggah dokumen/customer chat privat ke provider; menyatukan SagaBook/SagaView. |
| Dampak | Inventory surface/model/provider wajib didahulukan. Corpus hanya memakai knowledge canonical public-safe. Unknown produk tetap dapat menjadi knowledge gap/human handoff, sedangkan out-of-scope tidak membuat tiket palsu. Pertanyaan account-specific wajib melalui API terautentikasi/terotorisasi. Prompt injection, cross-tenant, secret, PII, payment, dan foto customer fail-closed. Promotion wajib memakai eval, backup/rollback, smoke, dan status AI terpisah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; implementasi awal source `73de3f5541006dbe9eeed0abc00a39fbe5989998` `AI_EVAL_VALIDATED / AI_KNOWLEDGE_NOT_PROMOTED`, production belum berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-045 - Galeri Frame SagaView mendukung batch import dan auto-publish

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Import puluhan portable frame template tanpa membuka editor satu per satu |
| Keputusan | Owner dapat membuka `Batch import` langsung dari Galeri Frame, drag-and-drop atau memilih sampai 100 file `.sagaview-frame`, lalu sistem memvalidasi, membuat draft, dan mencoba mempublish setiap template valid secara berurutan. Kategori dicocokkan pada akun tujuan atau fallback ke kategori pertama/Basic dan tetap dapat diedit setelah import. |
| Alasan | Pemindahan katalog 40-50 frame antar akun tidak boleh mengharuskan operator masuk ke halaman editor dan mengimpor satu file demi satu file. |
| Alternatif yang dipertimbangkan | Mempertahankan import satu file; menerima hanya ZIP/bundle baru; menghentikan seluruh batch pada error pertama; membuang draft ketika publish gagal; mengabaikan category/key collision. |
| Dampak | Galeri memperoleh modal drag-and-drop, batas 100 file, progress dan status per file, strict decoder template v1, collision-safe key, category matching/fallback, sequential draft/publish, invalid-file continuation, serta draft preservation saat publish ditolak. Backend tetap mengotorisasi permission, entitlement/limit aktif, storage, dan publish. Tidak ada route, migration, pricing, payment, device/session, foto customer, atau Studio runtime baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `1657c16ca3e05dd442db66ad11177f13edae1d37`, backend release `20260806092647-1657c16`, Studio release `20260806092648-3b66f8d`, rollback `20260806071707-7397954` / `20260806071733-3b66f8d`; authenticated Owner UAT 40-100 file nyata pada dua akun masih residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-044 - Galeri Frame SagaView mendukung pilihan dan export massal

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Pemilihan banyak frame pada Galeri Frame SagaView |
| Keputusan | Owner dapat memilih frame satu per satu atau memakai `Pilih semua hasil` untuk seluruh frame yang sedang tampil sesuai pencarian/filter, lalu mengekspor semua pilihan. Pilihan di luar filter tetap dipertahankan sampai dikosongkan. Setiap frame tetap diekspor sebagai file `.sagaview-frame` terpisah agar kompatibel dengan import yang sudah aktif. |
| Alasan | Memindahkan keseluruhan atau sebagian besar katalog tidak boleh mengharuskan operator membuka dan mengekspor frame satu per satu. |
| Alternatif yang dipertimbangkan | Export per frame saja; select-all selalu seluruh katalog tanpa mengikuti filter; membuat format bundle baru yang belum kompatibel dengan import; mengekspor semua otomatis tanpa review pilihan. |
| Dampak | Galeri Frame memperoleh checkbox per kartu, select-all filtered results, partial state, jumlah pilihan, clear, dan sequential batch download. Jalur validasi serta sanitasi template versi 1 dipakai ulang; API, migration, pricing, entitlement, payment, device/session, foto customer, dan Studio runtime tidak berubah. Browser dapat meminta izin beberapa download. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `73979542ceeb8fc11e658c7d27346ca983dc163f`, backend release `20260806071707-7397954`, Studio release `20260806071733-3b66f8d`; klausa setiap frame selalu direct download `DEPRECATED` oleh `DEC-048`, sedangkan selection/filter/export massal lainnya tetap berlaku; authenticated Owner UAT tetap residual sebelum `BUSINESS_READY` mass-scale |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-016 — Deploy public prototype AOGTICVITY ke Vercel

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | Public prototype release AOGTICVITY |
| Keputusan | Deploy seluruh perubahan AOGTICVITY yang sudah lulus gate lebih dulu ke domain public Vercel agar dapat dicoba. Deployment publik tidak mengaktifkan MySQL/auth production yang belum aman. |
| Alasan | Founder membutuhkan URL yang dapat dibuka dari mana saja sebelum finalisasi auth, persistence multi-device, custom domain, dan UAT. |
| Alternatif yang dipertimbangkan | Menunggu seluruh backend production selesai; mempertahankan hanya dark staging internal; mempromosikan deployment lama dengan provenance yang salah. |
| Dampak | Public prototype tersedia di `https://olimpiade-kemerdekaan.vercel.app`; delivery menjadi `PRODUCTION_DEPLOYED`, tetapi activation tetap `NOT_PRODUCTION_ACTIVATED`. UI wajib tetap melabeli prototype dan API database fail-closed. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` untuk klausa auth belum aktif oleh DEC-019; keputusan memakai public Vercel tetap berlaku sebagai histori delivery |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-017 — Fonnte tenant routing dan persiapan auto-trial SagaDev

| Field | Isi |
|---|---|
| Tanggal | 2026-07-31 |
| Topik | WhatsApp tenant routing dan signup trial SagaBook/SagaView |
| Keputusan | Implementasikan secara lokal routing Fonnte SagaBook dengan SagaDev-managed sebagai default, opsi token Fonnte milik studio, dan manual-only. Implementasikan secara lokal signup SagaBook/SagaView yang dapat mengaktifkan trial 7 hari tanpa approval owner atau verifikasi email. Deployment production auto-trial ditahan sampai ada approval baru. |
| Alasan | Studio memerlukan default WhatsApp yang siap dipakai tanpa kehilangan opsi membawa provider sendiri; calon pengguna juga membutuhkan onboarding trial yang lebih cepat, tetapi perubahan identity/provisioning harus tetap melewati release gate terpisah. |
| Alternatif yang dipertimbangkan | Satu credential global tanpa override; mewajibkan credential setiap studio; mempertahankan approval manual untuk semua signup; langsung mengaktifkan auto-trial di production. |
| Dampak | Routing credential harus tenant-scoped dan encrypted; delivery menyimpan sender snapshot; owner setting dan canary wajib diuji. Auto-trial harus idempotent, product-scoped, tepat 7 hari, tidak membuat tagihan, dan login tetap fail-closed sampai provisioning ready. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; production S71 `DEPLOYED` dan `ACTIVATED` pada release `20260731181921-378bcdf`; production S72 `HOLD` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaView Product](products/sagaview/PRODUCT.md), [Gaps](GAPS.md) |

## DEC-018 — AOGTICVITY memakai festival motion system

| Field | Isi |
|---|---|
| Tanggal | 2026-08-01 |
| Topik | Arah UI/UX dan motion AOGTICVITY |
| Keputusan | Buat keseluruhan UI/UX AOGTICVITY lebih fun dan hidup menggunakan public animation library yang layak, tetapi pertahankan mobile-first canvas, Plus Jakarta Sans, Feather-style icons, serta fungsi yang sudah ditentukan. Motion harus menarik tanpa membuat hierarchy, font, icon, spacing, atau workflow operator kembali berantakan. |
| Alasan | Founder menilai UI sebelumnya terlalu statis dan membutuhkan feedback/karakter yang lebih kuat setelah masalah hierarchy mobile dibereskan. |
| Alternatif yang dipertimbangkan | CSS animation saja; animasi dekoratif berat; mengganti font/icon/design system; redesign desktop lebar. |
| Dampak | Motion for React menjadi layer route/state/gesture/layout; canvas-confetti dibatasi ke success bernilai tinggi; reduced-motion wajib; visual QA mobile 400 px dan desktop mobile-canvas menjadi release gate. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production release terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-019 - AOGTICVITY memakai password auth tanpa MFA wajib di Vercel

| Field | Isi |
|---|---|
| Tanggal | 2026-08-01 |
| Topik | Public identity architecture dan kebijakan MFA AOGTICVITY |
| Keputusan | AOGTICVITY tetap memakai public Vercel dan admin MFA tidak wajib. Password auth harus tetap database-backed dengan forced bootstrap change, HttpOnly session, expiry, rate limit, RBAC, suspend/revoke, dan audit. Vercel memakai guarded HTTPS proxy ke backend Hostinger; MySQL tidak boleh dibuka ke internet. |
| Alasan | Founder menginginkan akses yang lebih sederhana dan tetap dapat dicoba melalui URL Vercel tanpa mengorbankan session server-side atau membuka database publik. |
| Alternatif yang dipertimbangkan | Tetap mewajibkan TOTP; membiarkan Vercel sebagai localStorage prototype; membuka MySQL langsung ke dynamic Vercel egress. |
| Dampak | MFA menjadi opsional. Public login dan database session aktif melalui Vercel; owner password claim telah diselesaikan pada release registrasi 2 Agustus 2026. Activation keseluruhan tetap menunggu operations UAT dan physical rehearsal. Klausa auth belum aktif pada DEC-016 digantikan oleh keputusan ini. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Status Legend](docs/STATUS_LEGEND.md) |

## DEC-020 - AOGTICVITY menghapus participant demo dan mengaktifkan registrasi MySQL

| Field | Isi |
|---|---|
| Tanggal | 2026-08-02 |
| Topik | Sumber data pendaftaran dan kesiapan trial AOGTICVITY |
| Keputusan | Hapus data participant demo dan localStorage registration. Finalisasi public registration agar submit tersimpan pada MySQL, muncul pada authenticated admin verification desk, dan dapat segera dipakai mendaftar. Canonical event master tidak dihapus. |
| Alasan | Form browser-local dan 80 participant fixture tidak dapat dipakai lintas perangkat atau dianggap sebagai pendaftaran nyata. |
| Alternatif yang dipertimbangkan | Mempertahankan demo sambil menunggu seluruh event workflow selesai; mengimpor fixture ke production; membuka database langsung dari Vercel. |
| Dampak | Registrasi memakai server validation, consent, anti-bot, rate limit, idempotency, receipt, transaksi, RBAC, optimistic concurrency, dan audit. Auth dan registration menjadi `PRODUCTION_ACTIVATED`; activation produk keseluruhan tetap menunggu rehearsal operasi hari-H. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-021 - AOGTICVITY mengikat link dan dashboard ke role admin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-02 |
| Topik | Assignment role, navigasi, dan scope lomba AOGTICVITY |
| Keputusan | Admin menetapkan role akun dan tim leader. Pengguna tidak memilih role; setelah login server mengarahkan akun ke home kanonik admin, operator, leader, atau player. Leader hanya mengelola timnya, player hanya membaca profil/tim/penugasan terhubung, dan operator tidak memperoleh menu konfigurasi admin. |
| Alasan | Role berbasis URL atau pilihan pengguna berisiko membuka workspace yang salah dan membuat alur hari-H membingungkan. |
| Alternatif yang dipertimbangkan | Role selector setelah login; satu dashboard admin bersama untuk admin/operator; PIN tim leader; hanya menyembunyikan menu tanpa enforcement server. |
| Dampak | Route dan API memakai session/database sebagai sumber role. Perubahan assignment mencabut session lama. Roster perwakilan dan status lomba menjadi persisten, versioned, idempotent, permission-scoped, dan diaudit. UAT role nyata serta rehearsal multi-device tetap wajib sebelum business-ready. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi, authenticated role UAT masih menunggu |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-022 - AOGTICVITY memakai taxonomy komunitas Teen dan Youth

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Kategori utama dan subcategory pendaftaran AOGTICVITY |
| Keputusan | Hapus kategori demo dari pendaftaran baru. Kategori final adalah `TEEN` dengan `CG teen 1` sampai `CG teen 6`, serta `SOUTH, WEST, CENTRAL` dengan `CG youth 1` sampai `CG youth 8`. |
| Alasan | Form dan operasi peserta harus memakai struktur komunitas aktual, bukan distrik dan nama CG contoh. |
| Alternatif yang dipertimbangkan | Mempertahankan South/Central/West; menyimpan label panjang sebagai primary key; menghapus atau menebak pemetaan record lama. |
| Dampak | UI memakai label final; persistence memakai kode stabil `Teen`/`Youth`; API dan MySQL menegakkan pasangan kategori-subcategory. Record lama dipertahankan sebagai legacy read-only agar audit dan rollback aman. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-023 - AOGTICVITY menetapkan nama final Tim 7 dan Tim 8

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Identitas dua tim terakhir AOGTICVITY |
| Keputusan | Tim 7 memakai nama **Team Kindness** dengan arti Kebaikan dan Tim 8 memakai nama **Team Patience** dengan arti Kesabaran. |
| Alasan | Founder meminta kedua tim memiliki nama buah Roh berbahasa Inggris agar konsisten dengan enam tim sebelumnya. |
| Alternatif yang dipertimbangkan | Tetap memakai Tim 7/Tim 8; nama buah Roh lain seperti Goodness, Gentleness, atau Self-Control. |
| Dampak | Label kanonik UI dan profil tim berubah; ID `team-7`/`team-8`, warna, anggota, assignment, roster, hasil, dan leaderboard tetap sama. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source, migration, Hostinger, dan public Vercel runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-024 - AOGTICVITY memakai safe delete untuk peserta admin

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Penghapusan peserta pada platform admin |
| Keputusan | Admin memperoleh tombol `Hapus` dan filter Aktif/Dihapus. Aksi tersebut memakai lifecycle `Withdrawn`, bukan hard delete database: akses, sesi, assignment tim, dan roster dicabut sementara audit serta histori dipertahankan. |
| Alasan | Admin perlu menghilangkan pendaftaran ganda/batal dari operasi aktif tanpa merusak referensi hasil, roster, audit, atau recovery insiden. |
| Alternatif yang dipertimbangkan | Hard delete seluruh relasi; mempertahankan label Arsipkan; menyembunyikan record hanya di browser. |
| Dampak | Delete wajib admin-only, same-origin, idempotent, version-checked, transactional, dan memerlukan alasan audit. UI memisahkan record aktif dan dihapus; export hanya memuat peserta aktif. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi, authenticated human UAT masih menunggu |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-025 - AOGTICVITY memakai agenda waktu mulai tunggal tanpa ikon lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Kepadatan visual kartu agenda AOGTICVITY |
| Keputusan | Kartu agenda publik/peserta hanya menampilkan satu waktu mulai. Durasi dipindahkan menjadi teks `(n menit)` pada baris kategori dan ikon jenis lomba dihapus. |
| Alasan | Founder meminta layar agenda lebih sederhana, mudah dipindai, dan tidak memakai dua baris waktu atau ikon yang mengambil ruang judul pada mobile. |
| Alternatif yang dipertimbangkan | Mempertahankan rentang waktu; memindahkan durasi ke metadata desktop saja; menyembunyikan ikon hanya pada viewport kecil. |
| Dampak | Grid kartu menjadi waktu, informasi lomba, dan panah pada semua viewport. Lokasi, status, link detail, sumber rundown, auth, dan permission tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-026 - AOGTICVITY melonggarkan layout timeline resmi

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Spacing timeline resmi pada halaman Info AOGTICVITY |
| Keputusan | Timeline resmi memakai padding milestone 14 px, gap antarkartu 12 px, deskripsi full-width di bawah judul/status, dan jarak 16 px sebelum panel keselamatan. |
| Alasan | Founder menilai milestone dan panel keselamatan terlalu mepet, sementara badge status membuat deskripsi terasa sempit. |
| Alternatif yang dipertimbangkan | Hanya mengecilkan font; memindahkan badge status ke bawah; mengubah seluruh notification list global. |
| Dampak | Timeline Info lebih mudah dipindai pada mobile tanpa mengubah data timeline, daftar notifikasi lain, auth, role, atau permission. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-027 - AOGTICVITY menampilkan riwayat pemenang per lomba

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Riwayat kemenangan pada Standing resmi AOGTICVITY |
| Keputusan | Standing resmi menyediakan satu accordion untuk masing-masing dari 10 lomba. Hasil resmi menampilkan Juara 1/2/3; lomba tanpa hasil menampilkan status menunggu. |
| Alasan | Founder ingin standing tidak hanya memperlihatkan agregat tim, tetapi juga dapat ditelusuri sampai siapa pemenang pada setiap lomba. |
| Alternatif yang dipertimbangkan | Menampilkan hanya lomba yang selesai; mencampur draft operator; membuat halaman riwayat terpisah. |
| Dampak | Endpoint publik tetap mengecualikan `Draft`; `Published`/`Corrected` menjadi sumber podium. Public/player melakukan refresh periodik dan recovery focus/reconnect tanpa mengubah schema, permission, atau workflow scoring. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production runtime terverifikasi |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md) |

## DEC-028 - AOGTICVITY memisahkan pendaftaran pemain undangan

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Jalur pemain dari luar komunitas AOGTICVITY |
| Keputusan | Sediakan link pendaftaran tambahan untuk pemain undangan yang hanya meminta nama, nomor WhatsApp, status sudah/belum memiliki CG, dan consent. Public tidak memilih role atau tim; admin memilih tim saat approval. |
| Alasan | Pemain undangan tidak seharusnya dipaksa memakai taxonomy komunitas atau menentukan permission dan tim sendiri. |
| Alternatif yang dipertimbangkan | Memakai form komunitas yang sama; menambah field role/tim pada form public; menyimpan guest pada dataset terpisah. |
| Dampak | Guest tetap memakai participant identity kanonik, mendapat workflow WhatsApp/player/check-in/roster yang sama, tetapi sumbernya eksplisit. Approval guest admin-only, memerlukan roster Draft dan team assignment atomik; generator otomatis mempertahankan tim guest. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED`; digantikan DEC-032 untuk approval VIP tanpa tim dan generator seimbang |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-029 - SagaBook memakai trial aktif 7 hari

| Field | Isi |
|---|---|
| Tanggal | 2026-08-04 |
| Topik | Durasi trial dan lifecycle SagaBook |
| Keputusan | Trial aktif SagaBook berlangsung tepat 7 hari. Hari 8–14 menjadi grace read-only dan setelah hari 14 status suspended. Trial tidak auto-charge, tetap product-scoped, dan approval owner manual tetap berlaku sampai S72 auto-trial memperoleh release terpisah. |
| Alasan | UI, katalog pusat, subscription, dan lifecycle harus memakai satu durasi kanonik agar approval tidak menciptakan entitlement 14 hari yang bertentangan. |
| Alternatif yang dipertimbangkan | Mempertahankan trial aktif dua fase 14 hari; langsung mengaktifkan auto-trial; memperpanjang trial tanpa batas melalui approval. |
| Dampak | SagaDev Control Center, katalog SagaBook, migration/backfill, countdown, entitlement, FAQ, dan acceptance test memakai 7 hari aktif serta 7 hari grace. Subscription berbayar tidak diubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `0ab9d8e3bff95a6c46425a376d93b732c22b7b52`, platform release `20260804171621-0ab9d8e` |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md), [Gaps](GAPS.md) |

## DEC-030 - AOGTICVITY memakai domain aogticvities.fun

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Domain kanonik dan hostname role AOGTICVITY |
| Keputusan | Domain kanonik adalah `aogticvities.fun`. Public memakai root, admin memakai `admin`, player memakai `app`, dan leader memakai `appl`; `www` diarahkan ke root. |
| Alasan | Founder membeli domain tersebut dan mengonfirmasi ejaannya sebelum aktivasi. |
| Alternatif yang dipertimbangkan | Tetap memakai URL Vercel; membeli ejaan singular; mengarahkan DNS langsung ke VPS Hostinger. |
| Dampak | Vercel tetap menjadi edge publik dan Hostinger tetap upstream/MySQL runtime. Auth allowlist, metadata, WhatsApp public origin, TLS, routing, smoke, serta rollback harus menggunakan domain baru. URL Vercel lama dipertahankan sampai cutover lulus. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; domain, DNS, TLS, runtime origin, dan role routing production-activated |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-031 - Storefront booking SagaBook selalu mobile

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrak viewport dan batas produk storefront booking SagaBook |
| Keputusan | Website/storefront booking milik studio selalu memakai satu canvas mobile maksimum 460 piksel pada semua viewport, termasuk desktop dan monitor besar. Desktop hanya memusatkan canvas mobile; storefront tidak boleh memiliki rail/sidebar desktop, workspace dua kolom, canvas lebar, device/window frame, atau layout landing page. Optimasi desktop adaptif hanya berlaku untuk dashboard/admin SagaBook serta aplikasi/dashboard SagaView. |
| Alasan | Storefront adalah alur booking customer yang mobile-first, bukan landing page marketing atau workspace desktop. Konsistensi satu alur mengurangi drift antarlayar dan menjaga fitur booking tetap mudah dijangkau. |
| Alternatif yang dipertimbangkan | Canvas storefront 1040/1280 piksel; rail orientasi desktop; dua kolom pada monitor besar; landing page khusus desktop. |
| Dampak | Arah storefront lebar S94/S108 berstatus `DEPRECATED` dan digantikan S109. Seluruh preset, visual regression, automation heartbeat, accessibility, CTA, Maps/WhatsApp, checkout, confirmation, recovery, dan watermark harus mempertahankan canvas mobile pada setiap viewport. Dashboard SagaBook dan SagaView tidak dibatasi 460 piksel. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `33de71c6b7ab8bf2c0b2cc8fd5fef327fb68f0a5` local-validated dan staging-ready, production belum berubah |
| Dokumen terkait | [SagaBook Product](products/sagabook/PRODUCT.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaBook Changelog](products/sagabook/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-032 - AOGTICVITY memakai access policy dan pembagian tim VIP

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Masa berlaku link peserta dan pembagian tim pemain luar |
| Keputusan | Admin dapat membuka/menutup link peserta dan memilih TTL 15 menit, 30 menit, 1 jam, 6 jam, atau 24 jam. Off menolak link baru dan link belum dipakai tanpa memutus sesi aktif. Pemain luar disebut VIP, disetujui tanpa tim, lalu ikut generator tim seimbang bersama peserta komunitas. |
| Alasan | Founder perlu mengendalikan periode akses dari dashboard dan meminta VIP tidak langsung ditempatkan pada tim saat approval. |
| Alternatif yang dipertimbangkan | TTL tetap 30 menit; off mencabut semua sesi; admin memilih tim VIP saat approval; VIP dipisahkan dari generator. |
| Dampak | Migration 021 menambah policy, idempotency, dan audit; UI admin mendapat kontrol access; approval VIP tidak memiliki team selector; generator mencakup VIP. Storage legacy `Guest` dipertahankan agar rollback aplikasi aman. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source dan public production deployment terverifikasi, operational activation menunggu UAT manusia |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-033 - Editor frame SagaView mempertahankan rasio dan kontrol geometri

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrak preview frame, feather, dan penyesuaian slot foto SagaView |
| Keputusan | Artwork frame tidak boleh dipenyet ketika orientasi canvas berubah. Landscape harus mendukung putar kanan/kiri 90 derajat dengan pemetaan ulang slot. Deteksi memakai feather awal 4 px; operator dapat mengatur feather semua slot 0–12 px atau ±2 px, memindahkan slot pada canvas, resize dari empat titik sudut, dan tetap memakai input X/Y/W/H untuk presisi. |
| Alasan | Frame landscape sebelumnya terlihat terdistorsi, arah putar tidak bekerja, dan operator kehilangan kontrol feather serta resize visual yang dibutuhkan untuk menyesuaikan slot agar tidak terlalu mepet. |
| Alternatif yang dipertimbangkan | Memaksa artwork mengikuti rasio canvas; hanya menyediakan input angka; hanya menyediakan satu arah rotasi; menerapkan feather permanen tanpa kontrol operator. |
| Dampak | Editor frame menjaga rasio asli dan memberi kontrol geometri langsung tanpa mengubah tenant, device/session, foto local-first, payment, pricing, entitlement, atau output 4R. Regression harus mencakup kedua arah rotasi, feather, empat handle, drag-move, dan drag-resize. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source `9b4b68a126cbf5f98f67ddf562eedbc93df60a2f`, release production `20260805053500-9b4b68a` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-034 - Slot frame SagaView dibuat setelah auto-detect

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Urutan authoring frame dan pembuatan slot foto SagaView |
| Keputusan | Frame baru harus dimulai dengan 0 slot. Operator memasukkan PNG/WebP terlebih dahulu, lalu menjalankan `Deteksi otomatis`; hasilnya baru menjadi slot untuk diperiksa atau dikoreksi. Penambahan slot manual hanya tersedia setelah deteksi pernah dicoba, dan draft tanpa minimal satu slot tidak dapat disimpan. Frame existing tetap memuat slot tersimpan. |
| Alasan | Founder meminta slot tidak dibuat sebelum artwork frame tersedia karena sumber geometri harus berasal dari transparansi PNG dan proses deteksi, bukan placeholder satu slot. |
| Alternatif yang dipertimbangkan | Mempertahankan satu slot bawaan; menjalankan deteksi otomatis langsung saat file dipilih; membolehkan slot manual sebelum percobaan deteksi. |
| Dampak | Empty state, enable/disable action, draft validation, dan regression editor mengikuti urutan PNG -> deteksi -> review/koreksi -> save. Tenant, device/session, foto local-first, payment, pricing, entitlement, dan output 4R tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; source kumulatif `5906028703759d49ef930a7363c5efc293f6be97`, release production `20260805133709-5906028` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-035 - Setiap box slot SagaView memiliki rotate individual

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kontrol orientasi individual pada slot foto frame editor SagaView |
| Keputusan | Setiap box slot foto memiliki ikon rotate kecil. Satu klik memutar geometri slot tersebut 90 derajat dengan menukar lebar dan tinggi di sekitar titik tengah serta menjaga hasil tetap berada di dalam canvas. Rotate tidak memutar artwork frame atau slot lain. |
| Alasan | Founder membutuhkan koreksi orientasi langsung pada masing-masing box tanpa mengubah keseluruhan frame. |
| Alternatif yang dipertimbangkan | Rotate hanya dari inspector; memutar seluruh frame; menyimpan angle bebas per slot; menampilkan ikon hanya pada slot aktif. |
| Dampak | Tombol rotate selalu terlihat dan accessible pada setiap slot, tetap kompatibel dengan drag, empat resize handle, feather, dan input X/Y/W/H. Tidak ada perubahan API atau metadata karena rotasi 90 derajat direpresentasikan sebagai pertukaran W/H. |
| Pemberi keputusan | Andreas / founder |
| Status | `DEPRECATED` oleh `DEC-036`; source `5906028703759d49ef930a7363c5efc293f6be97`, release production `20260805133709-5906028` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-036 - Rotate slot SagaView menggunakan drag sudut bebas

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Interaksi rotate individual pada slot foto frame editor SagaView |
| Keputusan | Ikon rotate pada setiap box adalah drag handle. Operator menahan ikon lalu menggeser ke kiri untuk sudut negatif atau ke kanan untuk sudut positif; box slot benar-benar miring tanpa menukar W/H. Sudut per slot disimpan pada metadata, diterapkan di preview Studio dan export PNG, serta dapat dikoreksi melalui keyboard atau input sudut dan reset. |
| Alasan | Founder mengoreksi implementasi klik 90 derajat karena kebutuhan sebenarnya adalah menyesuaikan slot dengan opening frame yang miring. |
| Alternatif yang dipertimbangkan | Pertukaran W/H 90 derajat; rotate seluruh artwork; input angka tanpa drag handle; rotasi hanya di preview tanpa persistensi/export. |
| Dampak | Kontrak metadata menambah angle opsional per slot dengan default 0 derajat untuk frame lama. Backend membatasi -180 sampai 180 derajat dan menolak rotated bounds di luar canvas. Drag, feather, empat resize handle, X/Y/W/H, customer transform, dan output 4R tetap tersedia. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; Owner/API source `0b655da4aeea270ce9048d853e7df09d42a36dd9`, release `20260805193458-0b655da`; Studio source `2121ebb80fa4238e91eef4003f852d34841e923f`, release `20260805193458-2121ebb`; commerce canary dipulihkan melalui lifecycle resmi sebelum gate 6/6 dan deployment |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-037 - Release UI SagaView tidak menunggu aktivasi subscription tenant

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Gate promosi frontend compact all-menu SagaView |
| Keputusan | Aktivasi subscription tenant dilewati untuk release frontend Studio `2b0331d5`. Seluruh gate teknis lain tetap wajib dan subscription, entitlement, payment, tenant isolation, serta data tenant tidak boleh diubah. Waiver ini tidak membuktikan UAT tenant berlangganan dan tidak mengubah status business readiness. |
| Alasan | Founder meminta pekerjaan UI/UX dilanjutkan tanpa menunggu aktivasi subscription tenant, sementara kandidat frontend tidak membawa migration atau perubahan kontrak bisnis. |
| Alternatif yang dipertimbangkan | Menahan seluruh release UI sampai subscription pilot aktif; mengaktifkan subscription hanya untuk melewati gate; mengubah entitlement. |
| Dampak | Source Studio `2b0331d53dc4c590dee5329ef892ea01fa4a8a97` dipromosikan setelah backup/restore, backend schema/route/security/backup, build, audit, atomic switch, service/header/journal, dan live browser acceptance lulus. Business readiness tetap `NEEDS CONFIRMATION` dan Founding Studio Pilot tetap wajib sebelum klaim mass-scale. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; release Studio `20260805170231-2b0331d`, rollback `20260805133709-57c0337` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-038 - Authoring SagaView memisahkan Simpan Draft dan Publish Frame

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Hasil penyimpanan frame pada Owner Console SagaView |
| Keputusan | `Publish Frame` menjadi CTA utama pada workspace Tambah Frame dan menjalankan save draft lalu publish. `Simpan Draft` tetap tersedia sebagai aksi sekunder yang hanya menyimpan pekerjaan privat. Bila publish gagal setelah draft tersimpan, draft tidak boleh hilang dan operator harus menerima alasan API yang spesifik. Kode frame ber-spasi dinormalisasi menjadi format slug. |
| Alasan | Founder menegaskan bahwa simpan draft dan publish memiliki hasil operasional berbeda; frame lengkap seharusnya dapat langsung dipublish tanpa harus menebak langkah lanjutan di galeri. |
| Alternatif yang dipertimbangkan | Tetap satu tombol Simpan Draft lalu publish dari Galeri Frame; auto-publish tanpa opsi draft; satu tombol dengan menu dropdown. |
| Dampak | Hierarki aksi editor berubah, tetapi kontrak draft privat tetap dipertahankan. Publish memakai endpoint existing secara berurutan, tidak mengubah tenant isolation, quota, payment, device/session, foto local-first, atau output 4R. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source Owner/API `9ee5bcca14ace7771a169bf8823df1e9ba7241c9`, branch `codex/s70-single-device-production-lineage`, release `20260805203055-9ee5bcc`; Studio source `2121ebb80fa4238e91eef4003f852d34841e923f`, release `20260805203055-2121ebb` |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-039 - Limit frame aktif SagaView Growth 50 dan Pro 100

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Kapasitas frame aktif paket SagaView |
| Keputusan | Paket Growth mendukung maksimal 50 frame aktif dan Pro maksimal 100 frame aktif. Full-access trial mengikuti kapasitas authoring Pro 100; fase plan-limited mengikuti paket terpilih. Harga, device, preset, offline grace, storage aset frame, reports, support, payment, dan fair-use tetap. |
| Alasan | Founder meminta kapasitas Growth dinaikkan dari 10 ke 50 dan Pro dari 50 ke 100 agar katalog frame studio tidak terlalu cepat mencapai batas paket. |
| Alternatif yang dipertimbangkan | Mempertahankan 10/50; menaikkan Growth saja; menjadikan limit custom per tenant tanpa kontrak paket baru. |
| Dampak | Commercial policy, entitlement license/trial, katalog harga owner, validasi publish frame, metadata plan, test, dan release tooling harus menggunakan 50/100 secara konsisten. Migrasi bersifat additive dan rollback runtime tidak mencabut ekspansi entitlement yang sudah diberikan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `c8538060f64cfabce46dc7f837531015673e7a1c`, branch `codex/sagaview-frame-limits-s116`, backend release `20260805155517-c853806`, Studio release `20260805155605-3b66f8d`; entitlement live Growth 50/Pro 100 |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Pitch Demo](products/sagaview/PITCH_DEMO.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [Master Knowledge](CHATGPT_MASTER_KNOWLEDGE.md) |

## DEC-040 - AOGTICVITY mengganti dua lomba menjadi lomba tim bola

| Field | Isi |
|---|---|
| Tanggal | 2026-08-05 |
| Topik | Pengganti Makan Kerupuk dan Balap Karung Helm |
| Keputusan | `cmp-2` menjadi Ambil Bola Pakai Sarung dan `cmp-8` menjadi Paralon Bola. Keduanya diikuti seluruh tim tanpa input nama perwakilan. Durasi awal 10 menit bermain ditambah 5 menit pergantian; pemenang ditentukan dari jumlah bola, dengan tie-break wajib untuk seri yang memengaruhi podium. |
| Alasan | Founder mengganti dua lomba individual menjadi permainan kerja sama tim: mengambil bola oleh satu anggota yang diangkat bersama memakai sarung, serta estafet bola melalui paralon dari anggota depan ke belakang. |
| Alternatif yang dipertimbangkan | Membuat ID lomba baru; mempertahankan lomba perwakilan; memakai ranking manual tanpa skor; mengizinkan publish saat seri belum diselesaikan. |
| Dampak | ID dan legacy URL dipertahankan. Event master, agenda/detail, roster player/leader, scoring operator/admin, standing, asset, migration/archive, rollback, safety, dan acceptance test mengikuti kontrak baru. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED`; source `5bc951e0b8747e113b69b18162a200c592b39d3c`, Hostinger `20260805T145857Z`, Vercel `dpl_DacHrH6BN3u3bbD4ckFje7rU3fST` |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |

## DEC-041 - Screening UI/UX dilanjutkan dengan integrasi fitur per fitur

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Heartbeat acceptance SagaBook dan SagaView |
| Keputusan | Setelah UI/UX sebuah fitur tervalidasi, heartbeat melanjutkan screening fitur tersebut secara end-to-end: UI state, frontend, network/API atau boundary local-first, backend/service, database/storage, response UI, failure/retry, permission/tenant-negative, dan data integrity. Coverage disimpan dalam ledger per produk dan tidak boleh diklaim penuh sebelum seluruh fitur prioritas hijau. |
| Alasan | Founder meminta pemeriksaan bertahap agar tampilan yang baik juga benar-benar terhubung ke data dan backend tanpa sukses palsu, schema drift, kebocoran permission, atau kehilangan data. |
| Alternatif yang dipertimbangkan | Hanya mengaudit UI/UX; mengaudit seluruh produk sekaligus tanpa ledger; menganggap mock/localStorage/fixture sebagai integrasi; memindahkan alur foto SagaView ke cloud. |
| Dampak | SagaBook mengikuti urutan auth sampai template publish. SagaView mengikuti urutan auth/device sampai dashboard/entitlement, tetapi ingest foto, editor, recovery, dan export tetap local-first dengan no-upload guarantee. Aktivasi subscription tenant tetap dilewati sampai instruksi baru, dan website booking yang sudah aktif tidak dinonaktifkan. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED`; kebijakan acceptance/heartbeat, bukan klaim bahwa seluruh integrasi sudah selesai |
| Dokumen terkait | [SagaBook Ledger](products/sagabook/FEATURE_COVERAGE_LEDGER.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [SagaBook Dossier](products/sagabook/DOSSIER.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [Gaps](GAPS.md) |

## DEC-042 - Metadata frame SagaView dapat dipindahkan lintas akun

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Export/import template frame pada Owner Console SagaView |
| Keputusan | Owner dapat mengekspor artwork frame dan metadata portable termasuk orientasi, posisi/ukuran slot, hasil feather, serta angle per slot; akun lain dapat mengimpornya sebagai draft baru lalu mengganti nama atau kategori. Import tidak boleh auto-publish atau menimpa frame existing. Paket harus tenant-neutral dan tidak membawa foto customer, identifier akun/tenant, device/session, credential, path lokal, atau payment. |
| Alasan | Setup frame dan peletakan slot yang sama tidak perlu diulang manual pada setiap akun. Draft-first dan collision-safe key menjaga operator tetap memeriksa konteks akun tujuan. |
| Alternatif yang dipertimbangkan | Mengulang upload/deteksi/koreksi secara manual; menyalin data langsung antar-tenant di server; import yang langsung publish; paket hanya metadata tanpa artwork. |
| Dampak | Owner Console mendapat file `.sagaview-frame`, checksum artwork/metadata, sanitasi field, import-as-draft, editable name/category, serta suffix copy. API authoring tenant-scoped yang sudah ada tetap menjadi boundary save; pricing, entitlement, payment, device/session, foto customer, dan output 4R tidak berubah. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source `1158926b2be35887aff7dc8a09cb0111e8a71fc7`, backend release `20260806050513-1158926`, Studio release `20260806050546-3b66f8d`; authenticated Owner UAT lintas dua akun tetap residual |
| Dokumen terkait | [SagaView Product](products/sagaview/PRODUCT.md), [SagaView Dossier](products/sagaview/DOSSIER.md), [SagaView Changelog](products/sagaview/CHANGELOG.md), [SagaView Ledger](products/sagaview/FEATURE_COVERAGE_LEDGER.md), [Gaps](GAPS.md) |

## DEC-043 - AOGTICVITY menambah kategori Other Region

| Field | Isi |
|---|---|
| Tanggal | 2026-08-06 |
| Topik | Perluasan kategori utama dan subcategory pendaftaran AOGTICVITY |
| Keputusan | Tambahkan kategori utama `Other Region` dengan subcategory yang hanya terdiri dari `AOG Ponorogo` dan `AOG Magetan`. Kategori `TEEN` dan `SOUTH, WEST, CENTRAL` tetap berlaku tanpa perubahan. |
| Alasan | Founder membutuhkan jalur pendaftaran kanonik bagi peserta dari wilayah AOG di luar kategori Teen dan Youth yang sudah ada. |
| Alternatif yang dipertimbangkan | Memasukkan Ponorogo/Magetan ke kategori Youth; memakai input teks bebas; memakai jalur VIP untuk anggota komunitas Other Region. |
| Dampak | Source taxonomy, form publik/admin, validasi API, export, migration/constraint MySQL, test, dan knowledge memakai kode stabil `OtherRegion` serta dua label subcategory yang disetujui. Pasangan silang ditolak dan data existing tidak dimutasi. |
| Pemberi keputusan | Andreas / founder |
| Status | `CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; source runtime `5a2d3ef3fdb21503f9a559334796cea656f1a087`, Hostinger `20260806T055642Z`, Vercel `dpl_4RtjNcViWkxN3fZSTZ15VWiumy5G`, migration 024 |
| Dokumen terkait | [AOGTICVITY Product](products/aogticvity/PRODUCT.md), [AOGTICVITY Dossier](products/aogticvity/DOSSIER.md), [AOGTICVITY Changelog](products/aogticvity/CHANGELOG.md), [Gaps](GAPS.md) |
