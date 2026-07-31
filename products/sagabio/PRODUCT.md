# SagaBio Product Knowledge

Updated: 31 Juli 2026
Evidence status: local implementation

## Tujuan dokumen

Menjadi ringkasan fakta kanonik SagaBio. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Keputusan
terbuka berada di [GAPS](../../GAPS.md#sagabio).

## Konteks

Informasi saat ini berasal dari implementasi dan acceptance lokal; belum ada
production activation yang terverifikasi.

## Ringkasan

SagaBio adalah custom mini website link-in-bio untuk bisnis lokal, creator,
personal brand, dan brand kecil. Fokus awalnya F&B.

Positioning:

> Bukan sekadar daftar tombol. SagaBio menyusun perjalanan customer dari lihat
> brand sampai klik action utama.

Untuk F&B:

> Front desk digital dari Instagram/QR menuju menu, promo, lokasi, WhatsApp,
> dan e-menu.

## Target pengguna

- Coffee shop, resto, dessert/drink brand, dan tenant F&B.
- Creator/personal brand pada fase berikutnya.
- SagaDev admin yang melakukan setup done-for-you.

## Batas produk

SagaBio bukan:

- clone Linktree;
- e-menu replacement;
- website company profile berat;
- SaaS full self-serve pada pilot pertama;
- checkout/POS/inventory.

SagaMenu tetap merupakan produk e-menu/e-katalog terpisah.

## Fitur pilot

- Public page mobile-first.
- Owner dashboard.
- SagaDev admin.
- Guided section/block editor.
- Preset kategori dan element library.
- Promo, featured menu, location/hours, WhatsApp, social/delivery links.
- E-menu gateway.
- QR source tracking dan analytics dasar.
- Publish workflow dengan immutable compiled payload.
- Help request, asset checklist, dan handoff.

## Target pilot

`ASSUMPTION` — target kerja, bukan hasil:

- Demo F&B yang kuat.
- Satu paid pilot.
- 3-5 founding clients.
- Before/after dan click insight untuk materi sales.

## Status saat ini

Status: `LOCAL_VALIDATED`.

- Laravel, Inertia Vue, Blade public renderer, Filament, dan MySQL lokal sudah
  tersedia.
- Owner, public bio, admin, publish, analytics, QR, dan security contracts telah
  dibangun.
- Belum ada staging/production evidence yang cukup untuk menyebutnya live.

## Belum boleh diklaim

- Custom domain, payment, WhatsApp API, booking, POS, dan e-menu sync tidak
  termasuk pilot.
- Demo/local data bukan customer production.

## Ide konten

- Link-in-bio sebagai customer journey, bukan link list.
- Before-after link bio coffee shop.
- QR outlet yang mengukur action.
- Kapan bisnis membutuhkan SagaBio vs SagaMenu.
