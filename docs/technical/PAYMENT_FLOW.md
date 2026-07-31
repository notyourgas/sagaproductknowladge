# Payment Flow

## Tujuan

Menetapkan kontrak pembayaran aman lintas produk tanpa menganggap satu provider
berlaku untuk semua produk.

## Konteks

Dokumen adalah baseline; provider, tax, invoice, dan policy tetap product-scoped.

## State minimum

`created → pending → paid|expired|failed|cancelled|rejected`

## Aturan

- Intent terikat produk, organisasi, plan, nominal, currency, dan idempotency.
- Callback diverifikasi, replay-safe, exactly-once secara efek bisnis, dan
  auditable.
- Browser redirect bukan bukti pembayaran.
- Provider adapter/test tidak membuktikan credential atau transaksi nyata.
- Activation entitlement terjadi setelah status server-authoritative valid.
- Refund/reversal memiliki workflow dan permission tersendiri.

## Produk

- SagaBook dan SagaView memiliki pricing dan ledger terpisah.
- Refund SagaBook selalu operator-approved. Policy default: cancel minimal 48
  jam menerima 100% dikurangi fee provider yang non-refundable; 24–48 jam
  menerima 50%; kurang dari 24 jam/no-show tidak menerima refund; pembatalan
  studio menawarkan refund penuh atau reschedule gratis. Tenant dapat
  menerapkan policy sendiri secara eksplisit.
- COYABAG membutuhkan payment dan shipping activation tersendiri.
- SagaOPS payment outlet tidak boleh disamakan dengan SaaS subscription.

## Gap

- `NEEDS CONFIRMATION`: provider, tax, invoice, dunning, dan dispute policy per
  produk; refund produk selain SagaBook belum dikunci.
