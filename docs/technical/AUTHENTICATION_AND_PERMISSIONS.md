# Authentication and Permissions

## Tujuan

Menjelaskan boundary akun, identity, role, session, dan entitlement.

## Konteks

Produk dapat berbagi identity seam tanpa berbagi role, session, atau entitlement.

## Keputusan kanonik

- Identity yang sama boleh ditautkan ke beberapa produk.
- Role dan permission tetap product-scoped.
- Membership organisasi tidak otomatis memberi akses seluruh produk.
- Subscription dan entitlement memiliki `product_code`.
- Owner SagaBook tidak otomatis menjadi Admin SagaView.
- Device activation SagaView berlaku pada Studio Console, bukan seluruh Owner
  Console.

## Baseline

- Session rotation, expiry, revocation, dan recovery.
- MFA/2FA sesuai risiko.
- Tenant resolution fail-closed.
- Cross-tenant dan cross-product denial test.
- Service-to-service contract ditandatangani dan replay-safe.

## Gap

- `OWNER DECISION`: UX account linking lintas produk.
- `NEEDS CONFIRMATION`: MFA policy, recovery owner, dan support impersonation
  policy per produk.
