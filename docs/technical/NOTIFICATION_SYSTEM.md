# Notification System

## Tujuan

Menetapkan standar notifikasi email, WhatsApp, in-app, dan operational task.

## Konteks

Channel/provider nyata memiliki acceptance dan consent per produk.

## Prinsip

- Business event dicatat sebelum delivery.
- Outbox/queue retry-safe dan idempotent.
- Status `queued`, `sent`, `delivered`, dan `failed` tidak boleh disamakan.
- Fallback manual ditampilkan kepada operator.
- Template versioned dan tenant/product-scoped.
- Payload dan log di-redact.

## Acceptance

- Provider nyata, receipt/delivery, retry, duplicate callback, opt-out, dan
  failure path.
- Timezone dan bahasa sesuai konteks.

## Gap

- `OWNER DECISION`: default channel dan biaya per produk.
- `NEEDS CONFIRMATION`: provider, sender identity, consent, retention, dan SLA.
