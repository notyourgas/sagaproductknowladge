# SagaBook account/file production release — 17 Oktober 2026

## Tujuan

Mencatat source, recovery, deployment, verifikasi dan acceptance terbuka.

## Konteks

Klasifikasi: `CONFIRMED`. Otorisasi: Andreas, deployment dan koreksi minimal;
satu executor memakai skill sagadevs-deployment dan runner produk existing.

## 2026-10-17 - SagaBook account/file: rilis koreksi aktif, UAT tetap terbuka

`CONFIRMED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED` untuk runtime software:
source `fb187164c87f3023b1165d7838c640bf388fcaf8`, branch
`codex/sagabook-account-release-fixes-20261017`, repo `notyourgas/sagabook`,
release `20261016201901-fb18716`. Kandidat awal `ac59d789` tetap disimpan;
source final mencakup koreksi minimum dependency, fixture/browser, runner,
recovery/reconciliation dan routing OTP tanpa tenant. Main tidak di-merge.
Previous/rollback `6bd76eb6328b010d3d2631a507bd0ab2ee4eb8e9` /
`20261016195356-6bd76eb`; baseline awal `2b56868` juga dipertahankan.

Native locked runner terminal exit0; independent verifier PASS, 1.097 file
source aktif dan checksum archive/recovery bundle cocok. Backup terenkripsi,
checksum/offsite dan disposable MySQL8.4 restore terikat exact final source
PASS. Tiga migration sejak baseline awal telah diterapkan, total149;
follow-up OTP tidak menambah migration. Historical deadline, konfigurasi,
feature flags, private storage dan source central terpisah tetap sama.
HTTPS/asset/font/cookie/header/anonymous denial PASS; OTP invalid payload422,
wrong-origin403 tanpa pengiriman provider atau transaksi bisnis.

CI exact [38960481578](https://github.com/notyourgas/sagabook/actions/runs/38960481578):
aplikasi/browser dan MySQL8.4 PASS; isolated Saga AI dependency audit FAIL di
luar surface ini, sehingga bukan full monorepo CI PASS. Job PHP menyelesaikan
16.066 assertion dengan1.450 warning file_get_contents, bukan warning-free.
Regresi scoped recovery/boundary48test/502assertion PASS; browser sintetis
CI desktop/mobile PASS sesuai job, tidak dijumlahkan sebagai full produk.

Browser produksi desktop recovery/method switch terverifikasi melalui DOM;
mobile tertahan pop-up ekstensi Chrome dan capture native tidak tersedia.
Authenticated production acceptance, human UAT, real IdP/provider delivery
belum diterima; `BUSINESS_READY=false`. Next: tutup pop-up ekstensi Chrome,
lanjutkan browser mobile dan acceptance manusia dengan akun yang sah.
Tidak ada aktivasi provider, perubahan DNS/credential, pesan/pembayaran nyata,
restore DB bisnis, migrate-down atau backfill finansial otomatis.
Status NO_GO pada checkpoint lama adalah histori yang telah digantikan untuk
runtime software ini; acceptance eksternal tetap OPEN.

## Provenance dan artifact

- Source awal: `ac59d789722e2bdd5e6ebb972078940504cdfbdc`;
  implementation awal: `7f8373c6aa09f9ab8d644d83b4de66dfb9a078b8`.
- Source aktif: `fb187164c87f3023b1165d7838c640bf388fcaf8`;
  tree `395cf99ed3404d20fb22ec7dda695927e96ed6a7`, clean, remote exact.
- Archive SHA-256:
  `9dea26897fa90b1e0cfc4a371d6658a3af7ba1ba152dcc51bdf75b2f27fe5d7f`.
- Source recovery bundle SHA-256:
  `1b311142b2955eb16d00bfe912f231285182d358413519b5b95d6ef21cbe7c90`.
- Backup run `20261016T201408Z`; restore receipt SHA-256
  `82ad269e554e12cbf019ae98bfaaa5ce2859b5114600d5cf7d437446bf76df30`,
  terikat final source. Snapshot tujuh tabel bisnis dan timezone terjaga.
- Remote terminal receipt checksum
  `da0b5aeb1c59af793df9298c9550c36e33ba343d049ca485fe4f5d962ad70ea7`;
  terminal0, lock released, active pointer, healthy service, cleanup completed.
- Target: [aplikasi](https://app.sagabook.store/admin/login),
  [health](https://app.sagabook.store/up),
  [platform route](https://super.sagabook.store/login).
- ExpectedRemoteMain `da7269efc63a3cf7221fd681c1cced20c2865353`
  dan expected-current diverifikasi; tidak merge atau melemahkan ancestry guard.

## Migration dan rollback

Delta aktual dari runtime awal146 ke149: Member commerce snapshot,
customer deadline TIMESTAMP menjadi nullable DATETIME, dan account recovery
OTP handles. Ketiga checksum canonical Git/Linux telah allowlisted dan
restore-rehearsed; migration source tidak diubah. Tidak mengaktifkan integrasi
Member baru. Deadline historis dan timezone terjaga. Follow-up final149→149.
Code rollback tersedia ke6bd76eb; baseline2b56868 juga disimpan. Schema
compatibility PASS bukan izin migrate-down/drop/restore bisnis otomatis atau
jaminan kode lama memahami recovery handles yang sudah diterbitkan.

## Verifikasi dan batas

Runner existing `ops/invoke-local-vps-release.ps1` memakai
`ops/run-sagabook-release-locked`; independent
`ops/verify-sagabook-production-release.ps1` PASS. Nginx, PHP-FPM,
queue, database, Redis dan scheduler diperiksa; maintenance off.
Audit finansial runner dry-run, automatic financial correction0.
Repair terbatas derived report/task state memakai service existing dan guard.
Baseline2b memiliki OTP404; aktivasi antara6bd juga mereproduksi404. Patch
final memperbaikinya dengan dua route recovery global; regression RED→GREEN
tersimpan. Tidak menandai kegagalan awal sebagai PASS.

Linux syntax, cancellation/rollback disposable dan checksum compatibility PASS.
Focused final recovery21test/276assertion dan boundary48test/502assertion
PASS, runs overlap. CI browser report export6, visual14desktop+12mobile,
persistence5, platform2/6/4, booking synthetic1 PASS pada exact source final.
Build masih mencatat warning font produk tetangga dan chunk lebih500kB;
local SagaBook font/asset runtime PASS. Snapshot full lokal1485test/
16.219assertion/2skip mendahului delta terakhir, bukan full final suite.

UI browser produksi desktop hanya DOM, tanpa screenshot yang berhasil;
mobile OPEN karena pop-up ekstensi, bukan PASS dari browser CI fixture.
Tidak ada authenticated role/tenant/cabang production acceptance baru.
Central/platform terpisah dan SagaView tidak ikut dirilis; handle BFF lokal
berkomunikasi memakai kontrak central yang sudah ada. Real delivery, recovery
timing signal, AV/CDR, strict CSP, mandatory MFA dan customer-link recovery
masih scope terpisah. Deployment ini bukan human UAT/pilot/BUSINESS_READY.

## Dampak knowledge

Product, Dossier, changelog produk/portfolio/root, master, GAPS dan SYNC_STATUS
memuat status software terbaru dan acceptance OPEN. Pricing, paket, trial,
positioning, marketing dan produk lain tidak berubah. Histori checkpoint
sebelumnya dipertahankan. Tidak ada keputusan founder baru untuk DECISIONS.

[Source koreksi](https://github.com/notyourgas/sagabook/blob/fb187164c87f3023b1165d7838c640bf388fcaf8/docs/deployment/sagabook-account-release-corrections-2026-10-17.md).
