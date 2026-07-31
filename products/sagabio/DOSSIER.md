# SagaBio Dossier

## Tujuan dokumen

Mendefinisikan scope pilot, positioning, kebutuhan bisnis, dan batas teknis
SagaBio.

## Konteks dan status bukti

- Updated: 31 Juli 2026
- Delivery: `LOCAL_VALIDATED`
- Activation: `NOT_PRODUCTION_ACTIVATED`
- Business readiness: `NEEDS CONFIRMATION`

## Overview produk

Custom mini website link-in-bio untuk bisnis lokal, creator, dan personal brand;
fokus awal yang tercatat adalah F&B.

## Masalah yang diselesaikan

Link list tidak membimbing customer ke menu, promo, lokasi, WhatsApp, dan CTA
utama secara terstruktur.

## Target pengguna

Coffee shop, resto, dessert/drink brand, tenant F&B, lalu creator/personal
brand pada fase berikutnya.

## Persona pengguna

- Owner bisnis: ingin update CTA dan promo tanpa website berat.
- Customer mobile: ingin menemukan informasi/action dalam beberapa tap.
- SagaDev operator: menyiapkan page done-for-you.

## Value proposition

> Front desk digital dari Instagram/QR menuju action bisnis utama.

## Use case

Link Instagram/TikTok, QR outlet, promo, featured menu, lokasi/jam, WhatsApp,
delivery link, dan e-menu gateway.

## Fitur utama

Public page, owner dashboard, admin, block editor, preset, publish snapshot,
analytics dasar, QR tracking, asset checklist, dan help request.

## Fitur MVP

Done-for-you setup untuk page mobile-first dan CTA terukur. Custom domain,
checkout, POS, booking, dan full self-service bukan MVP pilot.

## Roadmap

1. `TODO`: demo F&B production-like.
2. `ASSUMPTION`: satu paid pilot dan 3–5 founding clients.
3. `TODO`: staging/deploy, analytics consent, support, dan handoff.
4. `NEEDS CONFIRMATION`: self-service dan custom domain.

## User journey

Lihat konten/QR → buka SagaBio → pahami offering → pilih CTA → owner melihat
insight action.

## User flow

Admin/owner menyusun block → preview → publish immutable payload → customer
mengakses → event allowlist direkam.

## Business model

`ASSUMPTION`: done-for-you subscription/service. Pricing, setup fee, hosting,
dan domain belum diputuskan.

## Pricing

`NEEDS CONFIRMATION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: competitor set. Kategori: link-in-bio builders, mini-site
builders, QR landing pages, dan bio tools platform sosial.

## Diferensiasi produk

`PROPOSAL`: customer journey berbasis kategori bisnis, guided editor,
done-for-you onboarding, dan action analytics.

## Brand positioning

“Bukan sekadar daftar tombol.”

## Messaging

- “Susun perjalanan customer dari profil sosial sampai action.”
- “Promo, menu, lokasi, dan WhatsApp dalam satu front desk digital.”

## FAQ

**Apakah ini e-menu?** Tidak; SagaMenu produk terpisah.
**Ada checkout?** Tidak pada pilot.
**Bisa custom domain?** `NEEDS CONFIRMATION`.

## Technical overview

Laravel, Inertia Vue, Blade public renderer, Filament, MySQL, dan compiled
publish payload.

## Integrasi

Social/delivery/WhatsApp link dan e-menu gateway. API/provider tambahan belum
termasuk pilot.

## Data yang digunakan

Tenant, page/section/block, asset metadata, CTA link, publish snapshot, QR
source, allowlisted analytics event, dan help request.

## Risiko dan asumsi

Pilot target belum membuktikan demand; analytics/privacy consent dan asset
ownership harus ditutup sebelum production.

## KPI dan success metrics

`PROPOSAL`: publish completion, CTA click rate, time-to-publish, help
request, repeat update, dan paid conversion. Target: `NEEDS CONFIRMATION`.

## Ide konten pemasaran

Before/after bio coffee shop; link list vs journey; QR outlet; SagaBio vs
SagaMenu.

## Contoh caption

`PROPOSAL`: “Link di bio bukan tempat menumpuk tombol. Susun jalur dari
‘baru lihat’ sampai ‘siap chat, datang, atau buka menu’.”

## Ide campaign

`ASSUMPTION`: “5-Minute Bio Audit” untuk calon pilot F&B.

## Sales talking points

Audit CTA saat ini, tampilkan before/after, jelaskan scope done-for-you dan apa
yang tidak termasuk.

## Objection handling

- “Sudah punya Linktree”: fokus pada alur kategori bisnis dan CTA.
- “Butuh order online”: bukan scope SagaBio pilot; evaluasi produk/integrasi
  lain.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagabio).
