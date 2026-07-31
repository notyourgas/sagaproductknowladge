# Data Privacy

## Tujuan

Menetapkan baseline privacy tanpa menggantikan nasihat legal.

## Konteks

Policy legal final dan data inventory per produk masih membutuhkan konfirmasi.

## Prinsip

- Data minimization dan purpose limitation.
- Tenant/product isolation.
- Retention dan deletion terdefinisi.
- Export/access/correction/deletion request memiliki owner dan SLA.
- Log, analytics, diagnostics, dan support evidence di-redact.
- Backup mengikuti retention dan secure deletion policy.

## Boundary penting

- Foto customer SagaView dirancang tetap pada device studio; metadata cloud
  dibatasi pada kebutuhan operasional.
- Repository ini publik dan tidak boleh menyimpan PII atau evidence restricted.

## Baseline SagaBook dan SagaView

`CONFIRMED` oleh founder pada 31 Juli 2026:

- data aktif tersedia selama subscription;
- akses export tersedia 14 hari setelah offboarding;
- data operasional dihapus maksimal 30 hari setelah permintaan terverifikasi;
- audit/security log disimpan 90 hari;
- tiket support disimpan 180 hari;
- catatan keuangan/legal dipisahkan dan disimpan sesuai hukum yang berlaku;
- foto SagaView tetap lokal pada device studio dan tidak dihitung sebagai aset
  frame cloud.

## Gap

- `NEEDS CONFIRMATION`: data controller/processor role, subprocessor, region,
  incident notification, dan policy produk selain SagaBook/SagaView.
- `TODO`: data inventory dan data-flow diagram per produk.
