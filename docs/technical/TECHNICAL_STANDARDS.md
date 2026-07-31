# Technical Standards

## Tujuan

Menetapkan baseline arsitektur dan kualitas lintas produk Saga.

## Konteks

Aturan repository produk yang lebih spesifik tetap menjadi source of truth
implementasi.

## Prinsip

- Bounded context per produk.
- Deny-by-default untuk tenant, role, permission, dan entitlement.
- Idempotency untuk retry, callback, queue, dan mutation kritis.
- Audit event untuk perubahan material.
- Structured errors tanpa secret/PII.
- Production evidence terikat ke exact source/release.
- Mock/dummy/simulation tidak menjadi bukti production.

## API dan data

- Version contract ketika perubahan breaking.
- Validasi request di boundary.
- Pagination, rate limit, timeout, retry, dan circuit behavior eksplisit.
- Migration additive lebih disukai; rollback tidak boleh merusak data.

## Quality gate

- Focused test, full regression proporsional, build, lint/typecheck.
- Dependency/security audit.
- Permission dan cross-tenant denial.
- Backup/restore dan release rollback untuk production.
