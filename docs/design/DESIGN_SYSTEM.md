# Design System Lintas Produk

## Tujuan

Menetapkan standar pengalaman minimum tanpa memaksa semua produk memakai visual
identity yang sama.

## Konteks

Setiap source product tetap memiliki token dan komponen kanoniknya sendiri.

## Standar pengalaman

- Mobile dan desktop sesuai konteks.
- Loading, empty, error, success, offline, retry, dan permission denied.
- Keyboard/focus, contrast, label, dan screen-reader semantics.
- Hierarchy jelas; CTA primer tunggal per konteks.
- Data kritis menampilkan status, waktu, dan next action.

## Komponen konseptual

- App shell dan navigation.
- Status badge dengan teks, bukan warna saja.
- Form field, validation summary, dan destructive confirmation.
- Table/list/card responsive.
- Toast untuk feedback sementara; halaman menyimpan status penting.
- Skeleton/spinner hanya ketika proses benar-benar berjalan.

## Token

- `NEEDS CONFIRMATION`: token warna, type scale, spacing, radius, shadow, dan
  icon lintas keluarga produk.
- `RECOMMENDATION`: setiap repo memiliki token kanonik dan mapping high-contrast.

## Review

- Inspect viewport nyata, bukan hanya screenshot komponen.
- Pastikan tidak ada horizontal overflow yang tidak disengaja.
- Visual review tidak menggantikan test aksesibilitas dan user flow.
