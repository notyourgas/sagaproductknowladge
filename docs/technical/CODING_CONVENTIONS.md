# Coding Conventions

## Tujuan

Memberi baseline umum; aturan repo produk tetap menang bila lebih spesifik.

## Konteks

Konvensi ini public-safe dan tidak menggantikan framework/repository lint rules.

## Konvensi

- Ikuti formatter/linter framework.
- Nama domain lebih penting daripada singkatan teknis.
- Function/module kecil dengan responsibility jelas.
- Mutation kritis idempotent dan transactional.
- Jangan hard-code secret, tenant, provider credential, atau production URL
  sensitif.
- Test perilaku dan permission, bukan hanya implementation detail.
- Changelog menjelaskan dampak pengguna/operator.

## Git

- Perubahan source dan knowledge di-commit terpisah.
- Commit message menjelaskan outcome.
- Jangan force-push main.
- Jangan mencampur file antarproduk.

## Dokumentasi

- Gunakan Bahasa Indonesia profesional.
- Heading konsisten.
- Fakta memiliki provenance.
- Unknown memakai label kanonik.
