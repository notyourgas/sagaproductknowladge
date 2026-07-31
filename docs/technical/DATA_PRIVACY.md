# Data Privacy

## Tujuan

Menetapkan baseline privacy tanpa menggantikan nasihat legal.

## Konteks

Policy legal final dan data inventory per produk masih membutuhkan konfirmasi.
SagaBook memiliki keputusan owner yang lebih rinci, tetapi belum aktif atau
dipublikasikan.

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

## Kontrak target SagaBook

`CONFIRMED` oleh founder pada 31 Juli 2026 untuk implementasi dan review legal:

- studio adalah Controller data booking customer; SagaBook/SagaDev adalah
  Processor dan Controller independen untuk identity, billing, security,
  support, compliance, serta analytics teragregasi;
- booking acknowledgement wajib berversi; marketing dan izin foto terpisah,
  opsional, serta tidak preselected;
- booking PII 24 bulan lalu anonymize; ledger 5 tahun atau lebih bila hukum
  mewajibkan; bukti transfer 90 hari; expired hold 30 hari;
- support conversation/attachment 180/30 hari; app/security-audit log 90/365
  hari; backup encrypted rolling 30 hari;
- paid cancellation memberi read-only/export 30 hari dan penghapusan data
  eligible maksimal 90 hari setelah jendela tersebut;
- request biasa ditargetkan selesai 14 hari kalender setelah verifikasi;
- policy tidak boleh dipublikasikan sebelum legal review, identitas dan kontak
  resmi, subprocessor disclosure, implementasi, acceptance, immutable release,
  rollback, dan public smoke lulus.

Status: `PLANNED`, `NOT ACTIVE - NOT PUBLISHED`. Keputusan ini memperinci
baseline SagaBook pada `DEC-009`; bila terdapat perbedaan, `DEC-011` berlaku
untuk SagaBook.

## Gap

- `NEEDS CONFIRMATION`: identitas/kontak legal SagaBook, daftar subprocessor,
  region, legal sign-off, dan policy produk selain SagaBook/SagaView.
- `TODO`: data inventory dan data-flow diagram per produk.
