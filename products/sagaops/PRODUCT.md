# SagaOPS Product Knowledge

## 2026-09-24 — KopiSaga P0–P2 aktif, e-katalog publik baca-saja

- `CONFIRMED`: source UI/UX `de16d351e634fb7bfadb3617e1edd30b7cef9759` aktif di production; ingress katalog dari source `10e4f51a6c63e225e0fad525b76b2da1f61316bb` aktif. Rollback runtime `9c364ff2359940f73d52985fd752101d5d94b84b` tersedia. E-katalog `https://sagapos.site/menu` kini HTTP 200 publik, responsif di desktop/mobile, memakai palet KopiSaga dan Plus Jakarta Sans.
- Kiosk dan QR meja mendapat perbaikan hierarki, ukuran, spasi, navigasi, dan responsivitas; keduanya tetap demo/simulator, bukan alur transaksi nyata. API katalog `CATALOG_PREVIEW`, `readOnly=true`, tanpa cart, quote, checkout, payment, identitas meja, atau dispatch KDS. Mode gateway production existing tetap `GATEWAY`; rilis ini tidak membuat payment intent atau memperpanjang canary.
- Exact-source artifact, backup terenkripsi/restore disposable, rehearsal rollback, Owner/public/authenticated smoke, browser screenshot desktop/mobile, dan monitor production lulus. UAT kiosk fisik 32 inci, dua perangkat mobile nyata, konten/foto final dan hak pakai, persetujuan bisnis, serta independent offsite restore belum selesai. `PRODUCTION_DEPLOYED / PUBLIC_MENU_INGRESS_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / BUSINESS_READY=false`.

## 2026-09-23 — E-menu admission tetap NO-GO

- `CONFIRMED`: source `3330ce1da4779d9576a9dee43a4c8ccfc78d1b83` menampilkan status Phase 8B yang tersanitasi pada Owner smoke e-menu. Artifact exact-source baru checksum-verified dan staged; scoped Owner smoke, backup terenkripsi/restore disposable, dan rehearsal ingress–rollback kandidat lulus.
- Gateway readiness tetap `PARTIAL` (7/10) karena tiga gate terkait readiness/jendela canary belum lulus; jendela lokal kedaluwarsa sesuai konfigurasi. Tidak ada izin memperpanjangnya untuk rilis katalog. Admission final dan aktivasi ditahan; `/menu` masih 401. `IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

## 2026-09-23 — E-menu release gate ditahan

- `CONFIRMED`: source bersih `91b3d575d4956528bf2c75d7889d1ba283c77263` menambah Owner smoke terbatas baca-saja dan rehearsal ingress terisolasi. Artifact immutable sudah checksum-verified dan staged, backup terenkripsi/restore disposable serta rehearsal rollback lulus; live Nginx tidak berubah.
- Scoped Owner/auth/CSRF smoke lulus untuk runtime saat ini, tetapi broad release smoke gagal pada payment containment: Phase 8B readiness `PARTIAL` (7/10), `activationSafe=false`. Aktivasi ingress ditahan fail-closed, public `/menu` tetap 401, dan mode gateway existing tidak diubah. Status `IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`; ledger 62/100 historis belum direbaseline.

## Source 2026-09-23 — runner e-menu gateway-aware, belum aktif

- `CONFIRMED`: source `b486d3399e68b5de37f42f8fdaa41d5a0da7508f` menambah runner ingress baca-saja, packager exact pushed SHA, guard gateway existing, rollback Nginx, dan uji negatif. Artifact lokal checksum-bound telah dibuat; ini belum berarti staging atau production.
- Runtime tetap `9c364ff2359940f73d52985fd752101d5d94b84b`, `/menu` anonim masih 401. Verifikasi Owner terkini, backup terenkripsi/restore disposable, rehearsal rollback, authenticated smoke, dan monitoring kandidat belum lengkap. `IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

## Source 2026-09-23 — public e-menu diselaraskan dengan gateway aktif, belum deploy

- `CONFIRMED`: commit `c8a811dbf90574c14b957e2668ddb0e22ce2d964` pada branch terisolasi menambahkan renderer fail-closed untuk delapan route katalog GET/HEAD tepat pada host `sagapos.site`. Kontrak preview tetap baca-saja, tanpa cart, quote, checkout, pembayaran, identitas meja, atau dispatch KDS.
- Pemeriksaan statis/type 612 modul, tes terfokus, browser katalog, regresi penuh lokal dengan exit 0 pada host test yang mendukung hard-link, dan audit dependency production nol vulnerability. Kandidat konfigurasi lulus `nginx -t` secara terisolasi; Nginx production tidak diubah.
- Production tetap pada source `9c364ff2359940f73d52985fd752101d5d94b84b`, dengan SagaDev Gateway controlled canary existing tetap ON atas izin Owner. Order Meja/Kiosk tetap simulator. Anonymous `https://sagapos.site/menu` masih 401; `https://order.sagapos.site/` belum tersedia. Artifact rilis, runner gateway-aware, recovery, Owner gate dan authenticated smoke masih pending. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.
- Entri ingress `1298fc...` di bawah adalah histori kandidat lama dengan asumsi payment OFF; jangan mempromosikannya di atas release gateway aktif.

## Production 2026-09-23 — Phase 8B SagaDev Gateway controlled canary aktif

- `CONFIRMED`: exact source `9c364ff2359940f73d52985fd752101d5d94b84b` aktif dengan rollback `dbb3d72b598f37210e970c2eb489517b9296ab11`, artifact SHA-256 `3f0accd414ab1a13abb125f49385c6b34741e2ab3871efd5de92dde0bcbb72e9`, health ready, dan 34 migrasi unchanged.
- Payment runtime kini berada pada mode `GATEWAY` untuk controlled canary SagaDev Gateway product `sagaops`. Credential dipisahkan sebagai systemd credential, provider secret/callback tetap di gateway pusat, signed readiness menyatakan ready, dan limit produksi dikunci pada maksimal 5 intent, Rp220 per intent, serta Rp1.100 total.
- Immutable packaging, focused Linux gate 26/26, static/type 608 modul, encrypted backup/disposable restore, code-only rehearsal, activation, authenticated Owner restart UAT, dan monitor mode gateway lulus. Acceptance tidak membuat payment intent atau transaksi uang nyata.
- Delivery `SOURCE_PUSHED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED_CONTROLLED_CANARY / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / BUSINESS_READY=false`. Real QRIS payment, settlement/closing, hardware, dan independent offsite restore tetap gate terpisah.

## Source 2026-09-23 — ingress e-menu Kopi Saga publik baca-saja, belum aktif

- `CONFIRMED`: source `1298fc375ab5134ed88729dd445845880f146dbf` pada branch `codex/sagapos-public-menu-ingress-20260923` menyiapkan delapan lokasi Nginx tepat untuk `sagapos.site`: tiga halaman e-menu, API katalog baca-saja, dan empat aset entry CSS/JS. Host lain ditolak, hanya GET/HEAD diterima, dan credential/cookie tidak diteruskan ke backend.
- Kontrak katalog tetap `CATALOG_PREVIEW` dan `readOnly=true`, tanpa cart, quote, checkout, payment, identitas meja, atau dispatch KDS. Signed Order Meja, Kiosk, Owner Dashboard, dan KDS tidak dibuka oleh ingress ini. Static/type 603 modul dan regresi relevan 19 pass/0 fail/1 skip host Firefox lulus; audit dependency production 0 temuan.
- Production belum berubah: `/menu` masih 401 secara anonim, active/rollback `758eb8f02cffa38a294c0fa91420074b06e4d981` / `c2440a2e938317332977f9d0912d986b9a502df6`, payment/gateway nyata `OFF`. Candidate masih memerlukan rekonsiliasi dengan branch release lain, artifact/recovery, aktivasi ingress, public/auth negative smoke, dan monitoring. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

## Source 2026-09-23 — Phase 8B SagaDev Gateway candidate, belum dideploy

- `CONFIRMED`: commit source `601db9f4b5afeab676fb5be3fcd32ea8db52fa5d` pada branch `codex/sagapos-phase8b-sagadev-gateway` mengimplementasikan boundary pembayaran SagaDev Gateway untuk product `sagaops`, contract `1.0`, dan delivery `signed_status_polling`. Provider callback tetap berhenti di gateway pusat; SagaPOS tidak menerima callback provider langsung dan tidak menyimpan central merchant secret.
- Runtime production default tetap `OFF/OFF`. Mode gateway hanya dapat dimulai dengan pasangan `gateway/production`, credential systemd yang dipisah antara konfigurasi non-secret dan outbound secret, marker controlled canary, serta Owner readiness fail-closed. Readiness tidak mengeksekusi transaksi dan `paymentMutationAllowed` tetap `false`.
- Validasi source: static/type 607 modul, focused final 33/33, dan durable production QRIS gateway 1/1 lulus. Full repository run tidak diterima sebagai bukti release karena kapasitas disk/OOM host; setelah satu ekspektasi source diperbaiki, sepuluh failure tersisa berasal dari admission/temp-write/Node OOM dan harus diulang pada host sehat.
- Candidate ini berasal dari baseline Phase 8A `420c407d92a8055d5bd8fcaa6605704f23195bbe`, sehingga wajib direkonsiliasi ke release aktif dan branch Phase 8A terkini sebelum packaging. Belum ada artifact, credential provisioning, backup/restore, rehearsal, activation window, authenticated Owner production UAT, pembayaran uang nyata, atau settlement reconciliation. Production tetap pada `758eb8f02cffa38a294c0fa91420074b06e4d981`, payment/gateway `OFF`; status `SOURCE_PUSHED / LOCAL_VALIDATED_FOCUSED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

## Source 2026-09-23 — Phase 8A diselaraskan ke release aktif, belum dideploy

- `CONFIRMED`: commit source `93595a56e38efef43aa125e5fa69c503a5836075` pada branch `codex/sagapos-phase8a-aligned-20260923` membawa Phase 8A ke baseline production `758eb8f02cffa38a294c0fa91420074b06e4d981` tanpa mengganti Kiosk/Table Order stream. Pemeriksaan statis/type dan regresi penuh lulus: 1.600 pass, 0 fail, 73 skip.
- Production tetap pada `758eb8f02cffa38a294c0fa91420074b06e4d981` dengan rollback `c2440a2e938317332977f9d0912d986b9a502df6`; inventory reporting dan pembayaran nyata `OFF`. Tidak ada artifact/rehearsal/aktivasi untuk commit baru ini, dan branch release paralel perlu direkonsiliasi sebelum rilis. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`.

## Production 2026-09-23 — Kiosk dan QR meja memakai status stream aktif

- `CONFIRMED`: exact source `758eb8f02cffa38a294c0fa91420074b06e4d981` aktif; rollback `c2440a2e938317332977f9d0912d986b9a502df6`; artifact SHA-256 `14afd586a4b62100420553f25f29e9c63c07017e36d5fa2b3d9967d0031d9462`. Health ready, 34 migrasi unchanged, payment/gateway `OFF`, dan Table Order tetap simulator terisolasi.
- Kiosk kini memakai stream status sesi bersama QR meja untuk perubahan pembayaran demo serta status KDS; fixed polling dihapus. Replay tidak menggandakan notifikasi; client menunjukkan freshness/offline, backoff reconnect, dan refresh manual. Browser gate memverifikasi role Owner dan provider produksi pada tujuh surface serta batas akses publik Order Meja tanpa membuat transaksi.
- Regresi gabungan 1.589 pass/0 fail/73 skip dari 1.662 tes; static/type/build dan audit dependency production lulus. Artifact immutable, admission, backup terenkripsi/restore disposable, rehearsal kandidat-rollback-kandidat, aktivasi, authenticated browser smoke, dan monitor pasca-aktivasi lulus. Monitor pertama tertahan oleh 85% kapasitas host akibat transport sementara; setelah hanya salinan transport rilis dibersihkan, monitor lulus pada 84%.
- URL Order Meja yang terverifikasi adalah `https://sagapos.site/order`; `https://order.sagapos.site/` belum resolve DNS. Kiosk/KDS tetap di boundary autentikasi. Delivery `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / BUSINESS_READY=false`; backup terbaru belum diuji restore offsite independen, perangkat fisik dan acceptance bisnis masih terbuka. Kandidat Phase 8A `420c407d92a8055d5bd8fcaa6605704f23195bbe` tidak termasuk rilis ini.

## Source 2026-09-23 — Phase 8A operational data candidate, belum dideploy

- `CONFIRMED`: source candidate `420c407d92a8055d5bd8fcaa6605704f23195bbe` menambahkan readiness Owner yang fail-closed untuk opening stock, HPP published, ledger/reconciliation, katalog transaksi, serta pipeline reporting.
- Owner dapat membuat `OPENING_BASELINE` resmi untuk seluruh bahan aktif tanpa penerimaan supplier fiktif. Baseline wajib mencakup semua bahan aktif dan memakai biaya satuan positif; penambahan bahan baru otomatis membuka kembali blocker cakupan.
- Kandidat memeriksa parity katalog Admin terhadap katalog transaksi/Kiosk, price integer positif, published revision tanpa draft tersisa, serta mode/freshness/queue reporting. Monitor menahan drift mode reporting dan grant runtime membatasi mutasi tabel reporting append-only.
- Validasi lokal: static/type 605 modul; focused 61/61; full suite 1.591 pass, 73 controlled skip, dan tiga kegagalan awal yang seluruhnya lulus pada rerun terisolasi. Dua advisory moderate pada dependency development masih perlu review sebelum packaging.
- Delivery kandidat Phase 8A `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`; reporting tetap `OFF`, data opening/HPP nyata belum dimasukkan, dan artifact/recovery/Owner UAT khusus kandidat ini belum dijalankan. Catatan production `c2440a2e938317332977f9d0912d986b9a502df6` adalah snapshot saat validasi kandidat, bukan SHA aktif terkini.

## Source 2026-09-23 — Status Kiosk tersinkron melalui stream, belum dideploy

- `CONFIRMED`: commit `1491cd0` pada branch source khusus sudah ter-push. Kiosk memakai event stream sesi yang sama dengan QR meja untuk snapshot order, pembayaran demo, dan status KDS; polling tetap 4 detik dihapus. Reconnect dibatasi dengan backoff, status stale terlihat, dan tersedia refresh manual.
- Replay idempoten tidak mengirim notifikasi status baru. Harga, pembayaran, dan status tetap ditetapkan server; payment nyata tetap `OFF` dan order demo tetap terisolasi dari fakta bisnis.
- Validasi lokal: focused Kiosk/Table 17/17, full regression serial 1.588 pass/0 fail/73 skip dari 1.661 tes, static/type/build lulus, dependency production audit nol vulnerability. Run paralel sebelumnya gagal satu tes akibat batas buffer jaringan host, bukan dipakai sebagai bukti lulus.
- Saat source-only, delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED / BUSINESS_READY=false`; catatan ini telah disupersesi oleh rilis gabungan `758eb8f02cffa38a294c0fa91420074b06e4d981` di atas. Hostname khusus Order Meja tetap belum resolve DNS.

## Production 2026-09-23 — Phase 7.5 Owner Dashboard information architecture aktif

- `CONFIRMED`: exact source `c2440a2e938317332977f9d0912d986b9a502df6` aktif pada `https://dashboard.sagapos.site/dashboard` dengan rollback `66e9aa1263b2f06141742ab7c780ccfaa31971e9`, artifact SHA-256 `7f9c831e565c835569610ff1ac08f5ad61c07c7f5dc6568790525b4dce86521a`, health `ready=true`, dan schema tetap 34 migrasi.
- Owner Dashboard kini mengelompokkan 13 route lama ke Beranda, Operasional, Menu & Katalog, Stok & Pembelian, Tim & Pelanggan, Keuangan & Laporan, serta Sistem. Navigasi menambahkan Feather icon lokal, breadcrumb, badge status server-derived, submenu readiness, dan lima tujuan mobile dengan safe-area tanpa mengubah otoritas route.
- Quick app dipangkas menjadi Kasir, KDS, dan Portal staf; shortcut Admin/HR duplikat dihapus. Simulator Phase 7 dipindahkan dari Keuangan ke `Kesiapan bisnis > Simulasi & recovery` agar fungsi operasional dan alat technical UAT tidak tercampur.
- Release juga memperbaiki crash penutupan event stream table-order pada serialized runtime dengan memastikan subscription di-await dan cleanup selalu berupa fungsi. Regression event stream, Phase 7, browser information architecture, recovery, authenticated Owner restart UAT, public ingress, anonymous denial, dan monitor lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; Table Order tetap demo-only; backup terbaru belum memiliki verifikasi offsite independen, dan real shift/hardware/payment UAT tetap residual.

## Production 2026-09-23 — Phase 7 resilience dan pilot simulasi aktif

- `CONFIRMED`: exact source `df361c11ef07240cbefb376fc8ea3abf90dc84c7` aktif pada production dengan rollback `451c596c913c47b87a1c623e42b27063a84c3c26`, artifact SHA-256 `f9eb2bec4d5fcafc74aa41465f4d5afa4f704c8272275e097949fe1219cbec96`, health `ready=true`, dan schema tetap 34 migrasi.
- Owner Dashboard menambahkan **Simulasi satu shift** untuk hari normal, jam ramai, jaringan menurun, dan multi-exception. Hasil menyajikan keputusan, action queue, stop condition, serta idempotency/replay deterministik tanpa memanggil provider atau mengubah ledger, stok, payment, Member, customer, maupun fakta bisnis.
- Readiness Phase 7 adalah `96%` atau `24/25`. Load lab 600 request mencatat nol kegagalan, p95 `53,91 ms`, p99 `80,07 ms`, dan throughput `891,86 request/detik`; simulasi jaringan menurun 200 order/concurrency 24 tidak mengubah fakta bisnis.
- Independent encrypted offsite copy dan disposable restore pada host terpisah lulus untuk exact candidate, begitu pula same-host backup/restore, immutable target admission, candidate-current-candidate rehearsal, authenticated Owner UAT, restart smoke, public health/dashboard, anonymous denial, dan monitor.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_7_TECHNICAL_TARGET_PASS / BUSINESS_READY=false`. Satu shift manusia yang representatif dan acceptance Owner masih `NEEDS CONFIRMATION`; payment/gateway, inventory reporting, QRIS, printer, NFC, dan perangkat fisik tetap gate Phase 8.

## Public demo 2026-09-23 — Guided kiosk self-order flow aktif

- `CONFIRMED`: exact source `7e12466811f11a0b7f3dc9b20b6cb365e9f21735` aktif pada Vercel public demo `https://saga-pos-kiosk.vercel.app/kiosk` melalui deployment `dpl_64MYNBWucre2nfQoCcPdRpKhcp3u`; rollback tersedia pada `dpl_6HbnUCxnPuhpkubZzZCvgNF3G8Wj`.
- Flow publik adalah home → dine-in/takeaway → NFC simulator atau nomor HP demo → menu → modifier → cart → detail pembayaran → QRIS/tunai simulator → sukses dengan nomor pesanan → pesan lagi. UAT publik menghasilkan tiket demo `KD-*` untuk jalur NFC/QRIS dan phone/cash tanpa browser atau network error.
- Nomor HP mentah tidak disimpan pada event. Payment tetap `SIMULATOR_ONLY`, persistence `EPHEMERAL_SERVERLESS_DEMO`, provider/gateway nyata tetap `OFF`, dan order tidak membuat sales, settlement, stock, HPP, reward, atau fakta bisnis.
- Desain tetap memakai shell produksi Warm Wood; URL kiosk lama hanya menjadi referensi urutan flow, bukan referensi visual. Commit kiosk `451c596c913c47b87a1c623e42b27063a84c3c26` dengan artifact SHA-256 `9056f9ae58009cc98147f3a8a203cadf05b0ccf3b53c9dc8dd103c6d40fe182f` kini terintegrasi sebagai parent pada core merge release aktif `df361c11ef07240cbefb376fc8ea3abf90dc84c7`; rollback menunjuk `451c596c913c47b87a1c623e42b27063a84c3c26`, health ready, dan 34 migrasi unchanged.
- Target admission, encrypted backup/disposable restore, candidate-current-candidate rehearsal, activation atomik, serta authenticated Owner restart smoke untuk commit kiosk lulus. Exact-source health, public browser QRIS flow, exact KDS projection, dan monitor pada merge release aktif juga lulus. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PUBLIC_DEMO_ACTIVE / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_TRANSACTION_SIMULATION_PASS / BUSINESS_READY=false`. Payment nyata, printer/NFC fisik, konten final, dan business acceptance tetap gate terpisah.

## Production 2026-09-23 — Menu reference parity v3 aktif

- `CONFIRMED`: exact source `e5734c028d94e48dbfb95023027eede15f18e7bb` aktif pada production dengan rollback `fbd178d8ac70ccb5888c95228cefa6d9b7f5e5ce`, artifact SHA-256 `bec57f21af71bc61186cc04d7903676d9fded82c2f20b3a9123892529c39ca59`, health `ready=true`, dan schema tetap 34 migrasi.
- E-katalog tetap preview-only. Kiosk dan signed QR meja tetap dapat cart, checkout, serta payment simulasi; public HTTPS UAT membuktikan kedua sumber demo mencapai KDS setelah `PAID` tanpa mengubah penjualan, settlement, reward, stok, HPP, atau fakta bisnis. Payment/gateway global tetap `OFF`.
- UI v3 menerapkan token warna, grid 2/3/4 kolom, komposisi hero/favorit/pencarian/kategori, dialog detail-first, promo, Member, kiosk dua kolom, target sentuh, serta font serif berlisensi yang dibundel. Manifest sumber dan ledger parity tersedia pada source release.
- Full regression exact candidate menghasilkan 1.567 pass, 0 fail, dan 73 controlled skip dari 1.640 test; static/type 589 modul; production dependency audit nol vulnerability. Chromium/WebKit, Axe serious/critical nol, public rendering/image decode, recovery rehearsal, authenticated Owner restart smoke, dan monitor lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / REFERENCE_PARITY_IMPLEMENTED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_TRANSACTION_SIMULATION_PASS / BUSINESS_READY=false`. `REFERENCE_PARITY_ACCEPTED=100%` belum boleh diklaim sebelum aset editable/font/foto asli yang hilang tersedia dan Andreas memberi visual sign-off; QR/perangkat fisik, Firefox, konten final, serta independent offsite restore juga masih residual.

## Production 2026-09-23 — Menu reference v2, kiosk, dan QR meja transaksional-demo

- `CONFIRMED`: exact source `fbd178d8ac70ccb5888c95228cefa6d9b7f5e5ce` aktif pada production dengan rollback `2520ebcb5f2936c40bc8beaa25174c78485303dc`, artifact SHA-256 `ef1dc942c34b884e41caa50c4bd7fac4c98057f55e15c2bdb5010a71541992af`, health `ready=true`, dan schema tetap 34 migrasi.
- Surface kini dibedakan tegas. `/menu`, `/menu/promo`, dan `/menu/member` adalah e-katalog read-only. `/menu/kiosk` menyediakan cart, quote, checkout, serta payment simulator kiosk. QR meja memakai URL bertanda tangan `/order?t=...` dan flow Table Order demo. Hanya hasil simulasi `PAID` yang membuat tiket KDS.
- KDS membedakan `KIOSK DEMO` dan `QR MEJA DEMO`, menyediakan filter Operasional/Simulasi, dan mempertahankan isolasi: order demo tidak menjadi penjualan, settlement, reward, pergerakan stok, HPP, atau fakta bisnis.
- UI katalog menerapkan komposisi handoff Warm Wood: header/navigation, hero, favorit, pencarian, chip kategori, grid responsif 2/3/4 kolom, detail modal, promo, dan Member. Dua puluh dua produk memiliki copy, tag, alergen, alternatif, dan estimasi nutrisi dummy berlabel `DUMMY_PREVIEW_ONLY`; data ini bukan konten bisnis yang disetujui.
- Full regression exact candidate menghasilkan 1.566 pass, 0 fail, dan 73 controlled skip dari 1.639 test; static/type 587 modul; dependency audit production nol vulnerability. Kiosk dan signed QR meja lulus UAT melalui HTTPS publik sampai tiket exact ditemukan di KDS, dengan payment global tetap `OFF` dan dead-letter nol.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_TRANSACTION_SIMULATION_PASS / BUSINESS_READY=false`. Copy/nutrisi final, aset/hak pakai, promo bisnis, scan QR fisik, perangkat kiosk/KDS, assistive-technology UAT, Firefox environment, dan independent offsite restore tetap gate terpisah.

## Production 2026-09-23 — Phase 6 finance, closing, dan exception

- `CONFIRMED`: exact source `770c81657b4e589188885e33dc0b7ab3f2f9011a` aktif pada production dengan rollback `cbde7e58c5e1368d9dda34ebb7c06afe98ad7d27`, artifact SHA-256 `c8982af65e29a3e207fa6416d62054d4bd73f2c60ebb876243fc5f7336716590`, health `ready=true`, service aktif, dan schema tetap 34 migrasi.
- Owner Dashboard menambahkan control center **Uji closing & exception** dengan lima rehearsal aman: closing bersih, selisih kas, provider belum settled, HPP belum lengkap, dan multi-exception. Hasil menampilkan keputusan, alasan yang mudah dipahami, pemilik tindakan, serta fingerprint replay deterministik.
- Simulator bersifat non-mutating: provider tidak dipanggil, ledger dan kas tidak ditulis, closing tidak dikunci, data customer tidak dipakai, dan fakta bisnis tidak berubah. Engine varians kas production tetap menjadi sumber klasifikasi skenario cash variance.
- Readiness Phase 6 adalah `92%` atau `11/12`. Kontrak, Owner RBAC, exception matrix, idempotency/replay, observability, UI, release, recovery, restart persistence, dan monitor lulus; gate terakhir adalah controlled real shift closing serta acceptance Owner/Finance.
- Validation exact source mencatat 1.560 pass, 0 fail, 73 controlled skip, dan satu load-cancelled test dari 1.634; test tersebut lulus pada rerun terisolasi. Immutable packaging, encrypted same-host backup/disposable restore, code-only recovery rehearsal, authenticated Owner UAT, restart smoke, dan monitor lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_6_SIMULATION_SAFE / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; independent offsite restore dan closing bisnis nyata tetap gate terpisah.

## Production 2026-09-22 — Katalog publik performance hardening

- `CONFIRMED`: exact source `cbde7e58c5e1368d9dda34ebb7c06afe98ad7d27` aktif pada production dengan rollback `f4553743a55ae659390594e80a7f30c25f47e265`, health `ready=true`, service aktif, dan schema tetap 34 migrasi.
- Hero katalog sekarang diprioritaskan sebagai elemen gambar awal yang dipindahkan ke komposisi hero setelah payload authoritative tersedia. Perubahan ini menutup LCP lambat ketika ingress mengirim `Cache-Control: no-store`, tanpa mengubah data katalog atau membuka kemampuan commerce.
- Pengukuran production 7 kali pada viewport 390x844, latency 150 ms, download 1,6 Mbps, dan CPU slowdown 4x menghasilkan p75 LCP `1.512 ms`, CLS `0,000787`, serta next-paint pencarian `32,1 ms`; target LCP adalah maksimal `2.500 ms`.
- Validation exact source: 1.556 pass, 0 fail, dan 73 controlled skip dari 1.629 test; static/type 577 modul; dependency audit production nol vulnerability; delapan breakpoint dan lima route lulus pada Chromium/WebKit dengan nol overflow, nol gambar rusak, nol kontrol commerce, serta nol temuan Axe serious/critical. Immutable package, encrypted backup/disposable restore, recovery rehearsal, Owner restart smoke, dan monitor juga lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_CATALOG_BROWSE_ONLY / PERFORMANCE_BUDGET_PASS / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; Table Order tetap `DEMO`/simulator-only. Konten, aset, promo, jam, domain/SEO, QR fisik, UAT perangkat/manusia, analytics governance, dan independent offsite restore tetap gate terpisah.

## Production 2026-09-22 — Phase 5 Member earn, redeem, dan reversal

- `CONFIRMED`: exact source `9c2035b27d10a2729896fa2adf0f8a8331c21d1f` aktif pada production dengan rollback `26eb16807e4a76349b1864f83dfb2624a369d821`, health `ready=true`, service aktif, dan schema tetap 34 migrasi.
- Owner Dashboard menambahkan console Phase 5 untuk memahami alur commerce → earn → reserve → redeem → reversal melalui tiga skenario aman: happy path, redeem ambigu, dan reversal pending. Input memakai nilai belanja eligible, biaya reward, serta idempotency key; hasil menampilkan operation ID, replay fingerprint, langkah lifecycle, saldo proyeksi, dan tindakan rekonsiliasi.
- Simulator tidak memanggil provider, tidak memakai data customer, dan tidak mengubah poin, stok, penjualan, settlement, atau fakta bisnis. Status ambigu selalu diarahkan ke `LOOKUP_BY_IDEMPOTENCY_KEY_BEFORE_RETRY`, bukan retry buta.
- Readiness Phase 5 production adalah `88%` atau `7/8`. Kontrak, idempotency, replay deterministik, reversal, rekonsiliasi, Owner surface, dan observability simulasi lulus; satu gate tersisa adalah controlled mutation UAT terhadap provider authoritative dengan data uji yang disetujui.
- Source validation menghasilkan 1.548 pass, 0 fail, dan 72 controlled skip dari 1.620 test; static/type 576 modul, OpenAPI 3.1, artifact immutable, encrypted backup/disposable restore, code-only recovery rehearsal, Owner restart smoke, authenticated Phase 5 UAT, dan monitor lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_5_SIMULATION_SAFE / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; real earn/redeem/reversal, pilot customer, serta independent offsite restore tetap gate terpisah.

## Production 2026-09-22 — Katalog publik handoff-complete di atas Phase 4

- `CONFIRMED`: exact source kumulatif `26eb16807e4a76349b1864f83dfb2624a369d821` aktif pada production dengan rollback `e80305bb3fe68dc7fcb18b44060f1135d222b3c8`, artifact SHA-256 `77c7e914b03ce325055feafbf83bf63ddb683179c1ad4d43d7390da72a6a61f7`, health `ready=true`, dan schema tetap 34 migrasi. Release mempertahankan seluruh perubahan Phase 4 workforce.
- Lima surface browse-only aktif pada host dashboard: `/menu`, `/menu/qr`, `/menu/promo`, `/menu/member`, dan `/menu/kiosk`. API publik memuat 22 produk; cart, quote, checkout, payment, identitas meja, dan dispatch KDS tetap `false`.
- Completion handoff menambah URL/deep-link state, Back/Escape dan focus return pada dialog, satu accordion terbuka, kiosk dua kolom dengan target sentuh 64 px, state maintenance, promo terms, serta cache last-success yang fail-closed: promo disembunyikan dan jam/ketersediaan menjadi unknown ketika stale.
- Analytics katalog hanya memancarkan event privasi-aman di halaman untuk view, kategori, pencarian, detail produk/promo, retry, dan handoff Member. Tidak ada query pencarian, PII, network sink, atau tracking provider yang diaktifkan.
- Full regression menghasilkan 1.550 pass, 0 fail, dan 73 controlled skip dari 1.623 test; static/type 573 modul, production dependency audit nol vulnerability, delapan breakpoint, Chromium/WebKit, Axe serious/critical nol, performance budget, immutable packaging, backup/disposable restore, recovery rehearsal, Owner restart smoke, public smoke, dan monitor lulus. Firefox host Windows tetap `BLOCKED_ENVIRONMENT`, bukan pass.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_CATALOG_BROWSE_ONLY / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; Table Order tetap `DEMO`/simulator-only. Jam bisnis final, aset/hak pakai, copy/nutrisi, promo nyata, domain katalog, QR fisik, UAT perangkat/assistive technology, enam sign-off manusia, dan offsite restore tetap gate terpisah.

## Production 2026-09-22 — Phase 4 HR, roster, absensi, dan Staff Portal

- `CONFIRMED`: exact source `e80305bb3fe68dc7fcb18b44060f1135d222b3c8` aktif pada production dengan rollback `4a750a0261d12555d7f5222bda9d26f76f6ecc6b`, artifact SHA-256 `6ddd8fda2a09870dd739960f85638ceec3404d3af8999ddce88d870bea9cc618`, health `ready=true`, dan schema tetap 34 migrasi.
- Owner Dashboard menampilkan readiness Phase 4 berbasis data server: akun staf, template shift, roster published, kategori pengajuan, policy GPS+selfie, storage absensi, Staff Portal PWA, dan bukti siklus pilot. Payload hanya agregat dan tidak membawa identitas staf.
- Snapshot authenticated production adalah `88%` atau `7/8`: 4/4 akun staf aktif siap, dua template shift aktif, 102 assignment dari satu periode published, request flow lengkap, policy GPS+selfie aktif, runtime absensi operasional, dan URL kanonik PWA aktif. Satu blocker tersisa adalah bukti lengkap `roster → absensi → keputusan approval`.
- Staff Portal native aktif pada [staff.sagapos.site/login/staff](https://staff.sagapos.site/login/staff). URL lama `/staff/login` mengarah permanen ke URL kanonik; sesi anonim ditolak dan endpoint Owner tidak dibuka pada host Staff. Host Admin lama tidak diubah.
- Immutable packaging, target admission, dua backup terenkripsi dengan disposable restore, candidate-current-candidate rehearsal, activation, Owner restart smoke, public ingress checks, monitor, serta storage retention lulus. Payment/gateway dan inventory reporting tetap `OFF`; offsite recovery dan pilot bisnis tetap gate terpisah.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_4_ACTIVE_PILOT_EVIDENCE_PENDING / BUSINESS_READY=false`.

## Production 2026-09-22 — Katalog publik Menu, QR Meja, Promo, dan Member

- `CONFIRMED`: exact source `c2e9ee4bf83e7997f0eee078d0e2ad02f9544908` aktif pada production dengan rollback `4b9f0532a55deef06b6df8589387ae9978bf46c2`, artifact SHA-256 `88cb90627d645324cfd2f5af48d3c194f7ae10bcf2b553ab3fa0a6b2fc428874`, dan schema tetap 34 migrasi.
- Empat entry point browse-only aktif di `dashboard.sagapos.site`: `/menu`, `/menu/qr`, `/menu/promo`, dan `/menu/member`. API publik menampilkan 22 produk published dan secara eksplisit mematikan cart, quote, checkout, payment, identitas meja, serta dispatch KDS.
- UI memakai arah Warm Wood Editorial, harga singkat tanpa pembulatan diam-diam, pencarian/kategori, grid responsif 2/3/4 kolom, detail produk, state sold-out/tutup/error/offline, promo hanya dari konfigurasi published aktif, dan halaman Member sebagai handoff tanpa membaca akun/poin/tier.
- Admin dapat menyimpan deskripsi pendek/panjang, profil rasa, alergen, maksimal dua badge, alternatif produk, dan estimasi nutrisi bersumber tanggal. Seluruh field mengikuti draft/publish/version/audit yang sudah ada; label nutrisi publik adalah `Estimasi Resep` hanya ketika datanya tersedia.
- Perbaikan final memindahkan manifest aset katalog ke boundary publik; browser production membuktikan 22 kartu, gambar ter-decode, detail dialog, mobile dua kolom tanpa overflow, serta route Promo/Member yang jujur. QR generator dikunci ke URL HTTPS browse-only `/menu/qr`.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PUBLIC_CATALOG_BROWSE_ONLY / BUSINESS_READY=false`. Payment/gateway tetap `OFF`; Table Order tetap `DEMO`/simulator-only. Foto final beserta hak penggunaan, copy/nutrisi final, promo bisnis nyata, proof QR fisik, domain katalog khusus, offsite restore, dan business acceptance tetap gate terpisah.
## Production 2026-09-22 — Phase 3 order, KDS, dan simulasi HPP/stok

- `CONFIRMED`: source Phase 3 `6ac0cd9639aedf19bba9f007c5f6cc919810f37d` sudah menjadi bagian dari production source kumulatif `c2e9ee4bf83e7997f0eee078d0e2ad02f9544908` melalui parent `4b9f0532a55deef06b6df8589387ae9978bf46c2`; rollback aktif `4b9f0532a55deef06b6df8589387ae9978bf46c2`, health `ready=true`, schema tetap 34 migrasi, dan payment/gateway tetap `OFF`.
- Flow demo Owner/Kiosk sekarang dapat membuat order uji, memproyeksikannya ke KDS, lalu menghitung simulasi kebutuhan bahan dan HPP per menu. Hasil membedakan `READY`, `SHORTAGE`, dan `INCOMPLETE_RECIPE`, serta secara eksplisit menyatakan bahwa simulasi tidak mengubah stok, penjualan, settlement, reward, atau fakta bisnis.
- Jalur order bisnis juga dikoreksi agar transisi KDS `NEW → ACKNOWLEDGED → PREPARING` mengonsumsi stok tepat satu kali berdasarkan waktu mulai persiapan, bukan asumsi status sebelumnya selalu `NEW`.
- Authenticated Owner UAT production lulus pada order demo Americano sampai `SERVED`: satu bahan terbaca, HPP teoritis Rp1.500, `inventoryChanged=false`, dan `businessFactsAffected=false`. Readiness Phase 3 production adalah `67%` (`4/6`); cakupan data masih `2/22` menu aktif ber-HPP dan `1/15` bahan aktif bersaldo.
- Validation source: static/type 567 modul, OpenAPI 3.1, 34 migrasi, 21 focused test, dan recovery Wave 8 9/9 lulus. Full suite menghasilkan 1.531 pass, 72 controlled skip, dan tiga kegagalan kapasitas/tanggal yang seluruhnya lulus setelah TEMP dipindah serta assertion zona waktu dikoreksi.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_3_ACTIVE_DATA_INCOMPLETE / BUSINESS_READY=false`. Phase 3 siap dicoba sebagai prototype, bukan izin transaksi uang nyata atau klaim stok/HPP operasional lengkap.

## Production 2026-09-22 — Phase 2 finalisasi Database Bahan, Gudang, dan HPP

- `CONFIRMED`: exact source `5535e2c5c2637f5d4fc3284bf3ab101b05d14d77` aktif pada production dengan rollback `d49a6ee2efb2e562cd63d3dd24dd723b19eeb4fb`; health `ready=true`, schema tetap 34 migrasi, dan artifact immutable SHA-256 `34ee0b109a12b55e0fd442dda0fb5a70195d2fe5752c5dac975fdc24329c0886`.
- Tab **Finalisasi Phase 2** di Stok & HPP menunjukkan urutan kerja server-derived: Database Bahan → baseline stok fisik Gudang → resep/HPP menu. Nilai kosong tidak dianggap nol; setiap blocker memiliki tautan kerja ke workspace terkait.
- Snapshot authenticated production adalah `43%` atau `3/7`: Database Bahan `67%` dengan satu bahan belum mempunyai satuan beli; Gudang `0%` karena 14 bahan belum mempunyai saldo dan belum ada full stock count; HPP `50%` karena 20 menu belum mempunyai HPP terverifikasi.
- Focused inventory 12/12, Phase 2 4/4, static/type 564 modul, dependency audit nol vulnerability, browser 390/1440 tanpa overflow, serta Axe serious/critical nol lulus. Full-run paralel terkena batas memori host; seluruh grup OOM lulus saat rerun serial. Satu test promo bertanggal gagal identik pada baseline Phase 1 dan bukan regresi Phase 2.
- Target admission, encrypted backup/disposable restore, code-only recovery rehearsal, activation atomik, public health/dashboard, anonymous denial, Owner role/provider check, dan UI asset production lulus. Backup tetap same-host; offsite restore independen belum diterima.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_CHECK_PASS / PHASE_2_ACTIVE_DATA_INCOMPLETE / BUSINESS_READY=false`. Skor Phase 2 `43%` adalah kesiapan data inventory/HPP, bukan overall business-readiness SagaPOS; overall tetap `62/100`.

## Production 2026-09-22 — Phase 1 pusat kesiapan master data

- `CONFIRMED`: exact source `d49a6ee2efb2e562cd63d3dd24dd723b19eeb4fb` aktif pada production dengan rollback `dfee4fc6d3cee75fc26ee4eb773501d3aab240d3`; health `ready=true` dan ledger tetap 34 migrasi.
- Owner Dashboard menambahkan halaman **Kesiapan bisnis**. Nilainya dihitung dari data server, bukan checklist manual, untuk lima domain: menu/harga; bahan/supplier/HPP; tim/jadwal; member/reward; dan aturan outlet. Endpoint agregat hanya dapat diakses Owner dan tidak mengeluarkan nama, kode karyawan, credential, atau data pribadi.
- Snapshot production Phase 1 adalah `70%` atau `16/23` pemeriksaan. Tim/jadwal `100%`; menu/harga `60%`; bahan/supplier/HPP `80%`; member/reward `33%`; aturan outlet `60%`.
- Tujuh blocker data: foto menu `0/22`, belum ada bukti publish Owner, cakupan HPP `9%`, kontrak member belum terverifikasi, katalog reward belum terverifikasi, enforcement jam outlet belum aktif, dan kebijakan harga belum memiliki bukti konfirmasi Owner.
- Artifact immutable SHA-256 `6b0edac170a47dab4e45ba8af565bcb993b56b626725d7809b0116f695ce6aec`, encrypted backup/disposable restore, candidate-current-candidate rehearsal, activation code-only, anonymous denial, authenticated Owner restart smoke, dan ledger verification lulus. Payment/gateway tetap `OFF`; backup ini same-host dan bukan bukti offsite recovery.
- Skor `70%` adalah kesiapan master data Phase 1, bukan pengganti skor business-readiness berbobot `62/100`. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / PHASE_1_IN_PROGRESS / BUSINESS_READY=false`.

## Production truth 2026-09-22 — Phase 0 readiness baseline

- `CONFIRMED`, cut-off 16:00 WIB: production SagaPOS berjalan pada exact source `dfee4fc6d3cee75fc26ee4eb773501d3aab240d3`, health `ready=true`, dan 34 migrasi. Snapshot ini menggantikan `4349024cff24be29e7fffd4123f7ab3fb3670c5d` sebagai fakta runtime terbaru tanpa menghapus histori release sebelumnya.
- Member provider, absensi native, dan penerimaan barang staff aktif. Table Order tetap `DEMO` dengan payment simulator serta tidak memengaruhi fakta bisnis. Payment/gateway dan inventory reporting tetap `OFF`; evidence storage masih filesystem VPS dan object-storage migration belum diterima.
- Exact-source Phase 0 validation lulus: static/type check 559 modul, 14 focused Menu Preview/Table Order tests, dan production dependency audit nol vulnerability.
- [Portal Staff](https://staff.sagapos.site/) kanonik mengarahkan ke `/login/staff`; URL historis `/staff/login` tidak lagi dipakai. Dashboard Owner tetap aktif di [dashboard.sagapos.site/dashboard](https://dashboard.sagapos.site/dashboard).
- Registry lintas produk tersedia pada [Business Readiness Scoreboard](../../docs/SAGA_POS_MEMBER_BUSINESS_READINESS_SCOREBOARD.md). Baseline berbobot SagaPOS `62/100`; QRIS dan hardware dipersiapkan tetapi acceptance fisik ditempatkan pada fase terakhir.
- Tidak ada deployment atau perubahan runtime pada sinkronisasi Phase 0 ini. Delivery tetap `PRODUCTION_ACTIVATED / BUSINESS_READY=false`.

## Production 2026-09-22 — Menu & Promo Batch 7 aktif untuk Owner

- `CONFIRMED`: exact source `4349024cff24be29e7fffd4123f7ab3fb3670c5d` aktif pada production dengan rollback `47b1947f69f9979b1cf2bf01d10accbb43843419`; schema tetap 34 migrasi.
- Feature flag `menuUiV2`, `catalogWorkspaceV2`, dan `promoEngineV1` aktif. Workspace Owner mencakup Produk, Kategori, Modifier & Add-on, Promo, Publikasi, dan Pengaturan Kiosk; pricing/promo tetap server-authoritative dan mutasi struktural tetap draft/publish berversi.
- Patch final memastikan seluruh elemen banner Admin production mengganti label fixture menjadi `SAGAPOS · PILOT OWNER`; regression test menolak `LOCAL SPRINT LAB` pada HTML production.
- Artifact immutable SHA-256 `32f400f4cb6f33ceb581be146e663046584c0446af805399ca2c83645fd747ee`, target admission, encrypted backup/disposable restore, candidate-current-candidate rehearsal, activation atomik, Owner smoke sebelum/sesudah restart, dan monitor final lulus.
- Browser UAT Owner lulus pada tujuh surface tanpa transaksi: enam tab, tujuh row halaman pertama, empat halaman, sidebar desktop 264 px, thumbnail 52 px, availability route, dan nol browser exception. Empat anonymous `401` bootstrap dikenali sebagai auth boundary yang diharapkan.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / MENU_PROMO_FEATURE_ACTIVATION=true / BUSINESS_READY=false`. Payment/gateway dan inventory reporting tetap `OFF`; printer/NFC, offsite restore independen, data promo bisnis, serta UAT Manager/Staff dengan grant nyata tetap gate terpisah.

## Historical snapshot 2026-09-22 — Kode Menu & Promo Batch 7 terdeploy, aktivasi fitur masih tertutup

- Pada snapshot awal, exact source `5c817607c1c29a4078d8c0565272ff7068820b6c` aktif pada runtime production dengan rollback `b4a5ac3509afe9afc7907cba0324ce2c6e9fe69c`; snapshot ini kemudian digantikan release `4349024cff24be29e7fffd4123f7ab3fb3670c5d` di atas.
- Source menambahkan workspace Owner enam tab: Produk, Kategori, Modifier & Add-on, Promo, Publikasi, dan Pengaturan Kiosk. Produk/kategori tetap memakai draft dan publish berversi; harga dan diskon dihitung server, bukan browser.
- Mesin promo mendukung persen, potongan rupiah, harga khusus, bundle, beli X gratis Y, dan gratis item, dengan jadwal WIB, scope, prioritas/stacking, cap, kuota total, lifecycle draft/active/paused/archived, audit, serta persistence restart-safe.
- Tiga kill switch `menuUiV2`, `catalogWorkspaceV2`, dan `promoEngineV1` default `false`. Environment production tidak mengaktifkannya, sehingga release code aktif tetapi UI dan promo baru belum tersedia bagi operator/customer serta belum memengaruhi checkout.
- Validation: static/type 545 modul dan 34 migrasi; focused Menu/Promo, browser, accessibility, pricing, modifier, variant, dan preview 22/22; code-only contract 4 pass/3 controlled skip. Full-run paralel tidak seluruhnya hijau karena OOM dan kapasitas TEMP host; semua kelompok yang terdampak lulus 31/31 saat rerun serial pada volume yang cukup. Dependency audit mencatat dua advisory moderate Vitest, nol high/critical.
- Immutable artifact, target admission, encrypted backup/disposable restore, candidate-current-candidate rehearsal, code-only activation, exact-source health, public anonymous boundary, dan final monitor lulus. Monitor awal mengenai ambang storage; redundant transport yang sudah identik dengan artifact dibersihkan melalui retention terverifikasi sampai volume 84%, lalu monitor PASS.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / RELEASE_RUNTIME_ACTIVE / MENU_PROMO_FEATURE_ACTIVATION=false / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`. Aktivasi memerlukan Owner UAT, data menu/promo nyata, keputusan operasional, dan rollback switch yang tetap tersedia.

## Source 2026-09-21 — Packaging kandidat Linux dibuat fail-closed

- `CONFIRMED / LOCAL_VALIDATED / SOURCE_PUSHED`: cumulative source `1b0dd66ec7f373c3d19a2131d57180a5a5ce30eb` menambahkan pipeline Linux permission-minimal untuk membangun artifact SagaPOS dari exact pushed SHA, memeriksa receipt serta checksum, dan menyimpan kandidat selama tujuh hari tanpa credential atau jalur deployment production.
- Pipeline memakai actions yang dipin ke commit, `contents: read`, Node 24, checkout history lengkap, exact-source/origin containment, packager kanonik, serta upload artifact yang fail-closed bila file, digest, atau receipt tidak cocok.
- Evidence lokal final: focused packaging 24 pass/1 controlled skip; static/type 530 modul; full 1.532 test menghasilkan 1.459 pass, 0 fail, 72 controlled skip, dan 1 TODO. Browser cash-control tetap mencakup 390x844, 1024x768, dan 1440x900.
- Eksekusi hosted Linux belum berjalan karena account billing/spending-limit GitHub menolak job sebelum runner memperoleh langkah apa pun. Tidak ada artifact yang diterbitkan; status tetap `IMPLEMENTED_NOT_DEPLOYED / STAGING_READY=false / PRODUCTION_UNCHANGED / BUSINESS_READY=false`.
- Production tetap `94d67c2aef26acabc4a4a46842985135b88c7819`, rollback `3f8c6b51f22407be00a7adffe863574a1734d885`, payment/gateway `OFF`. Dua advisory moderate Vitest tetap dicatat tanpa upgrade major otomatis.

## Source 2026-09-21 — Kontrol assisted cash terhubung ke Dashboard Owner

- `CONFIRMED / LOCAL_VALIDATED / SOURCE_PUSHED / IMPLEMENTED_NOT_DEPLOYED`: exact source head `8eee60bb56da7ed0f4e61609b06f345aaa25c2af` menambahkan kontrol assisted cash pada Dashboard Owner. Production tetap `94d67c2aef26acabc4a4a46842985135b88c7819` dengan rollback `3f8c6b51f22407be00a7adffe863574a1734d885`.
- Dashboard menampilkan jumlah/nilai bantuan tunai pending, umur tiket tertua, order, tagihan, nominal yang dinyatakan, estimasi kembalian, dan jalur tindakan ke Kasir. Checklist closing tetap tertutup selama bantuan cash belum dikonfirmasi.
- Pending cash tidak dihitung sebagai cash sales serta tidak masuk KDS, inventory/HPP, reward, atau laporan paid. Setelah kasir mengonfirmasi uang fisik, antrean pending hilang dan expected cash diperbarui oleh server.
- Evidence: focused 4/4 termasuk browser 390x844, 1024x768, dan 1440x900 dengan reduced motion, Axe A/AA critical/serious nol, serta overflow nol; static/type 529 modul; full 1.531 test berisi 1.458 pass, 0 fail, 72 controlled skip, dan 1 TODO.
- Dependency scan menemukan dua advisory moderate pada toolchain Vitest dan nol high/critical; perbaikan tersedia hanya melalui upgrade major dan belum dipaksakan. Delivery belum `STAGING_READY`, belum `PRODUCTION_DEPLOYED`, belum authenticated UAT, dan tidak mengubah `paymentMode=OFF`, gateway, transaksi, atau data production.

## Production 2026-09-21 — Assisted cash Kiosk siap kode, aktivasi bisnis tetap tertutup

- `CONFIRMED`: exact source `94d67c2aef26acabc4a4a46842985135b88c7819` aktif di production dengan rollback `3f8c6b51f22407be00a7adffe863574a1734d885`; schema tetap 34 migrasi.
- QRIS tetap metode utama. Slice assisted cash menambahkan pilihan sekunder kecil, nominal cepat/manual, estimasi kembalian, antrean bantuan kasir, konfirmasi uang fisik dan kembalian aktual, serta blok penutupan shift selama bantuan cash masih pending.
- Order cash tidak dianggap `PAID`, tidak masuk KDS, stok, HPP, reward, atau cash ledger sebelum kasir mengonfirmasi penerimaan uang fisik. Replay konfirmasi bersifat idempoten dan tetap bertahan setelah restart.
- Evidence: focused 64/64; full 1.530 test berisi 1.457 pass, 0 fail, 72 controlled skip, dan 1 TODO lama; static/type, dependency audit nol, Axe/viewport, target admission, artifact immutable, encrypted backup/disposable restore, recovery rehearsal, activation, monitor, public smoke, Owner RBAC, dan restart-persistence smoke lulus tanpa transaksi.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_TECHNICAL_UAT_PASS / CASH_FEATURE_ACTIVATION=false / BUSINESS_READY=false`. Production tetap `paymentMode=OFF` dan `gateway=PAYMENT_OFF`; printer/NFC, perangkat nyata, offsite restore independen, serta aktivasi operasional cash/payment tetap gate terpisah.

## Staging-ready 2026-09-21 — Pilot expiry kembali ke maintenance 503

- `CONFIRMED / STAGING_READY / PRODUCTION_UNCHANGED`: source `ac4b59f616408348d5c10d1143269d341eed16f8` sudah dipush dan dipaketkan sebagai artifact Linux immutable ber-SHA256 `e5b25dc3cada501bebd20b810f8dd7efc8814066e3b589dbdcf9e6e6fb92638a`; production tetap memakai `0b7ef92f4a76af352fd7134d86c655dff1b8e37b` dengan rollback `446e95318b9ec8e7e323fbe44c37388202507d8b`.
- Sebelum patch, monitor menghentikan runtime ketika pilot kedaluwarsa tetapi membiarkan ingress pilot aktif sehingga upstream yang mati menghasilkan `502 Bad Gateway`.
- Candidate menghentikan runtime lalu mengembalikan ingress secara atomik ke maintenance `503` yang sudah ditahan dan diverifikasi checksum. Guard mencakup exact release, epoch expiry, shared release lock, `nginx -t`, rollback ingress bila reload gagal, dan verifikasi host; database serta data bisnis tidak diubah.
- Evidence lokal final: full suite 1.518 test menghasilkan 1.445 pass, 0 fail, 72 skip, dan 1 TODO; focused 49/49, static/type, dependency audit, dan changed-file secret scan lulus.
- Target admission, staging, artifact/tree verification, encrypted-backup disposable restore, dan boot rehearsal candidate-current-candidate lulus tanpa transaksi serta tanpa menyentuh service/database production. Aktivasi candidate dan authenticated post-deploy UAT belum dijalankan.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / STAGING_READY / PRODUCTION_UNCHANGED_BY_THIS_PATCH / AUTHENTICATED_UAT_PENDING / BUSINESS_READY=false`; payment/gateway/member tetap `OFF`.

## Update operasional 2026-09-20 — Pilot SagaPOS diperpanjang dan diaktifkan kembali

- `CONFIRMED`: runtime production tetap memakai exact source `0b7ef92f4a76af352fd7134d86c655dff1b8e37b`; tidak ada source, artifact, migration, schema, atau data bisnis yang diubah.
- Guard expiry menghentikan service secara fail-closed setelah periode pilot sebelumnya berakhir. Andreas mengotorisasi perpanjangan baru sampai 27 September 2026 malam WIB; identity dan password Owner tidak berubah.
- Encrypted backup/disposable restore, checksum artifact, exact-source health, 34 migrasi, service, PostgreSQL, Nginx, monitor/timer, Dashboard, health endpoint, dan Portal Staff kembali lulus.
- Payment/gateway, Member, dan inventory reporting tetap `OFF`; printer/NFC, authenticated Owner/Staff UAT, serta independent offsite restore tetap residual.
- Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`.

## Update production 2026-09-20 — Isolasi Mode Uji dan hardening katalog POS

- `CONFIRMED`: exact source aktif `0b7ef92f4a76af352fd7134d86c655dff1b8e37b`; rollback `446e95318b9ec8e7e323fbe44c37388202507d8b`.
- Order prototype memakai nomor `TEST-`, berlabel Mode Uji pada Kiosk/KDS, dan dikeluarkan dari metrik operasional Dashboard. Copy Kiosk menegaskan tidak ada pembayaran, posting bisnis, konsumsi stok, HPP, atau settlement.
- Owner dapat membersihkan antrean order prototype dengan konfirmasi dan alasan. Aksi hanya menyentuh data uji dan menghasilkan audit event.
- Foto menu dikompresi serta dibuat ulang sebagai WebP di browser, lalu diverifikasi lagi oleh server berdasarkan base64, MIME/magic bytes, dimensi, ukuran piksel, dan metadata. Owner juga dapat menghapus foto menu.
- Setiap respons memiliki referensi permintaan aman pada header untuk membantu penelusuran error tanpa mengubah kontrak JSON publik.
- Evidence: static/type 526 modul; focused final 14/14; full suite 1.517 test mencatat 1.425 pass, 19 failure baseline/historis, 72 skip, dan 1 TODO. Seluruh failure yang disebabkan kandidat telah diperbaiki dan rerun terkait lulus. Artifact immutable, encrypted backup/disposable restore, tiga-boot recovery rehearsal, activation, exact-source health, 34 migrasi, monitor, dan service journal lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; payment/member provider tetap `OFF`, printer/NFC UAT dan independent offsite restore masih pending.

## Update production 2026-09-20 — Katalog Owner dan checkout prototype POS

- `CONFIRMED`: exact source aktif `446e95318b9ec8e7e323fbe44c37388202507d8b`; rollback `e7d6ed59941683db76a038d4153c1f6083d72614`.
- Owner dapat membuat kategori dan draft menu, mengunggah foto, mengatur nama, harga, kategori, station, urutan, status, jam operasional, lalu menerbitkan menu ke Kiosk langsung dari Dashboard.
- Saat payment production tetap `OFF`, Kiosk menyediakan checkout prototype terautentikasi. Pesanan uji dapat masuk ke KDS dan diproses, tetapi ditandai `testMode`, tidak ditulis ke database bisnis, dan tidak masuk penjualan, settlement, laporan keuangan, HPP, varians inventori, atau konsumsi stok.
- State katalog custom bertahan setelah restart. Pesanan prototype sengaja ephemeral dan hilang setelah service restart agar tidak disalahartikan sebagai transaksi operasional.
- Evidence: static/type 526 modul; focused Dashboard/Kiosk/KDS/payment 10/10; artifact immutable, encrypted backup/disposable restore, tiga-boot code-only recovery rehearsal, activation, exact-source health, 34 migrasi, monitor, public health, dan service journal lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; payment/member provider tetap `OFF`, printer/NFC UAT dan offsite restore masih belum selesai.

## Hotfix production 2026-09-20 — Foto absensi iPhone tanpa metadata perangkat

- `CONFIRMED`: exact source aktif `9f80cbaf8f24d318cf402bb775694350db9f2a1f`; rollback `7c825d3bdb7800e34ae6f99429659b6ef8585330`.
- Foto yang diambil langsung dari kamera Portal Staff kini dibuat sebagai PNG tanpa EXIF sehingga Safari/iPhone tidak lagi mengirim metadata perangkat yang ditolak oleh penyimpanan evidence.
- Validasi server tetap ketat: EXIF, GPS tersembunyi, dan metadata perangkat pada evidence attendance tetap ditolak. Upload memakai content type hasil foto aktual dan tetap terikat challenge, checksum, GPS, sesi, serta idempotensi.
- Evidence: focused attendance/PWA/recovery 72/72, static/type 525 modul, production dependency audit 0 vulnerability, isolated retry atas satu timeout kiosk yang tidak terkait lulus, immutable artifact, encrypted backup/disposable restore, tiga-boot recovery rehearsal, activation, exact-source health, 34 migrasi, monitor/timer, dan public asset verification lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_REAL_DEVICE_PHOTO_UAT_PENDING / BUSINESS_READY=false`.

## PWA production 2026-09-20 — Portal Staff dan Pusat Izin

- CONFIRMED: exact source aktif b9026956fd448be1e8fe091c8dbd22eebe6ef94a; rollback e8757d221956a9ce6deb5efed8c3065bc90c3698.
- Portal Staff kini installable sebagai PWA dengan manifest, icon maskable, service worker shell-only, dan tampilan standalone. API, sesi, foto, serta data absensi tidak disimpan oleh service worker.
- Setelah login atau reload, Pusat Izin memeriksa GPS dan kamera, meminta izin lewat aksi pengguna, menampilkan status, serta memberi langkah pemulihan Android/Chrome dan iPhone/Safari. Browser tetap menjadi pemegang keputusan izin; penolakan permanen harus diubah melalui pengaturan situs/perangkat.
- Attendance tetap memeriksa eligibility server, GPS, selfie, session binding, challenge, checksum, idempotensi, geofence, dan receipt ketika staf benar-benar menekan Absen.
- Evidence: PWA browser manifest tanpa error dan service worker aktif; full suite 1.507 test mencatat 1.434 pass, 0 fail, 72 expected skip, dan 1 TODO; static/type 525 modul serta focused ingress lulus. Artifact, encrypted backup/disposable restore, tiga-boot recovery, activation, exact-source health, Nginx, monitor/timer, dan semua aset publik lulus.
- Status SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_REAL_DEVICE_PERMISSION_UAT_PENDING / BUSINESS_READY=false.

## Mode uji production 2026-09-20 — Absensi foto dapat dicoba kapan saja

- `CONFIRMED`: exact source aktif `618c218cf33b0ff9347c691006b89a61b947ebd2`; rollback `84baa2cea64b7dd572eeb10830f688917f8e05c8`.
- Staf yang memiliki jadwal terbit dapat mencoba absen masuk atau pulang di luar jendela shift melalui Mode uji 24 jam. Mode ini memilih jadwal terdekat yang belum mempunyai absensi; staf tanpa jadwal tetap ditolak.
- GPS, foto wajah, session binding, challenge, checksum, idempotensi, dan penyimpanan privat tetap berlaku. Hasil mode uji ditandai `PENDING`, `is_unscheduled=true`, dan masuk antrean Perlu diperiksa Owner; hasil tidak diterima sebagai absensi normal secara diam-diam.
- Owner dapat mematikan mode dari Tim & Shift → Absensi → Pengaturan waktu dan lokasi outlet. Kebijakan production lama memperoleh mode uji aktif pada rilis ini agar UAT foto dapat langsung dilakukan.
- Tidak ada perubahan schema, payment, provider, atau data kehadiran otomatis. Static/type 524 modul dan full 1.505 test: 1.432 pass, 0 fail, 72 expected skip, 1 TODO; backup/restore, tiga-boot recovery rehearsal, activation, health, monitor, dan public smoke lulus.
- Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_REAL_DEVICE_PHOTO_UAT_PENDING / BUSINESS_READY=false`; Mode uji harus dimatikan setelah uji foto selesai.

## Hotfix production 2026-09-19 — Short link Google Maps terbaca

- `CONFIRMED`: exact source aktif `84baa2cea64b7dd572eeb10830f688917f8e05c8`; rollback `2408eeb13faf4dbca57fdaa9adcb347b695f337b`.
- Resolver lokasi kini membaca koordinat pada path hasil redirect Google Maps modern, termasuk bentuk `/maps/search/latitude,+longitude`; format lama tetap didukung.
- Link short Google Maps yang dilaporkan Owner lulus resolver smoke pada runtime production. Link dan koordinat aktual tidak dicatat dalam knowledge publik.
- Tidak ada perubahan schema, payment, provider, atau data lokasi. Static/type 524 modul dan full 1.504 test: 1.431 pass, 0 fail, 72 expected skip, 1 TODO; backup/restore, recovery rehearsal, activation, health, monitor, dan public smoke lulus.
- Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; Owner tetap harus mengambil titik, meninjaunya, lalu menyimpan kebijakan.

## Update production 2026-09-19 — Lokasi absensi via Google Maps

- Exact source aktif `2408eeb13faf4dbca57fdaa9adcb347b695f337b`; rollback `4f3acabaf8b1656b70909712f0d00b13b5599802`.
- Pada Tim & Shift → Absensi, Owner dapat menempel link/pin Google Maps atau memakai lokasi perangkat untuk mengisi koordinat outlet, melihat preview, mengatur radius, lalu menyimpan kebijakan.
- Link penuh, parameter koordinat, pasangan latitude/longitude, dan short link Google Maps didukung. Resolver server-side fail-closed pada host non-Google, HTTP, redirect berlebih, timeout, atau akses non-Owner.
- Tidak ada perubahan schema, payment, provider, atau data operasional. Full 1.503 test: 1.430 pass, 0 fail, 72 expected skip, 1 TODO; release dan recovery gate lulus.
- Status `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_AND_REAL_DEVICE_UAT_PENDING / BUSINESS_READY=false`. Owner belum menyimpan titik outlet aktual.

## 2026-09-17 — UI Portal Staff diselaraskan dengan handoff dan Feather Icons

- `CONFIRMED`: exact source `4f3acabaf8b1656b70909712f0d00b13b5599802` aktif pada [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `21bbba38366a47cb6cf23a8e53b2e318d460e94f`.
- UI memakai token handoff: Plus Jakarta Sans, palet netral-cokelat, judul 28/34, isi 16/24, caption 12/16, angka utama 40/44, kartu 24 px, tombol 52 px, input 52 px, dan icon 22 px dengan stroke 1.8.
- Seluruh icon navigasi, aksi, status, attendance, pengajuan, dan penerimaan memakai satu bahasa Feather outline. Glyph campuran, gradient, glow, dan blur dekoratif lama telah dihapus.
- Flow Pengajuan kini membuka pemilih jenis satu kolom sebagai layar fokus, lalu form terkait tanpa header utama atau bottom navigation. Layout tervalidasi tanpa overflow pada 360, 390, 430, dan 768 px.
- Static/type check dan full suite 1.499 test selesai dengan 1.426 pass, 0 fail, 72 expected skip, serta 1 TODO. Release code-only, backup/restore, recovery rehearsal, activation, health 34 migration, monitor, TLS, dan smoke aset publik lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_STAFF_UAT_PENDING / BUSINESS_READY=false`. Koordinat outlet masih belum dikonfigurasi dan offsite restore belum terverifikasi.

## 2026-09-17 — Portal Staff mobile mengikuti handoff operasional v1

- `CONFIRMED`: exact source `21bbba38366a47cb6cf23a8e53b2e318d460e94f` aktif pada [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `66860fa67e5e509daee81d1ad42e0a9ed4d0e4df`.
- Portal memakai empat navigasi utama mobile-first: Beranda, Jadwal, Pengajuan, dan Barang. Dua puluh sembilan state handoff terhubung ke data tenant/outlet/staf yang terautentikasi, termasuk empty, loading, error, koreksi, dan pemulihan respons tidak pasti.
- Absensi memeriksa shift dan jendela waktu server, GPS, foto, receipt, serta status operasi; Jadwal menyediakan daftar/rentang dan detail milik staf; Pengajuan menyediakan form kondisional dan timeline keputusan; Barang Datang mempertahankan draft, beberapa item/foto, retry, koreksi, dan receipt ID.
- Payroll tetap preview-only tanpa payout atau aktivasi performance. Lampiran umum Pengajuan belum diaktifkan; foto koreksi absensi memakai jalur evidence attendance yang terproteksi.
- Static/type check, 17 focused acceptance, 11 handoff acceptance, dan full suite 1.498 test dengan 1.425 pass, 0 fail, 72 expected skip, serta 1 TODO lulus. Release code-only tanpa perubahan schema; backup/restore, recovery rehearsal, activation, exact-source health, monitor, dan public 200/401 smoke lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_STAFF_UAT_PENDING / BUSINESS_READY=false`. Koordinat outlet belum dikonfigurasi dan offsite restore masih belum terverifikasi.

## 2026-09-17 — Review barang datang dapat diminimalkan di HP

- `CONFIRMED`: exact source `c9e23066ba010a94cc98cec8fec9b7702847b7c2` aktif pada [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `f618dacdc2b35d19712d8c058757f55757a8d044`.
- Panel Review yang menempel di bawah layar kini mempunyai tombol tutup. Saat diminimalkan, panel berubah menjadi bar ringkas berisi jumlah bahan dan foto, lalu dapat dibuka kembali untuk mengirim.
- Menutup panel tidak menghapus supplier, bahan, foto, atau draft perangkat. Tombol berukuran minimal 44 px dan state buka/tutup memiliki label aksesibel.
- Static/type check 520 modul dan focused browser 4/4 lulus. Public HTML/JS/CSS, exact-source health, backup/restore, monitor dan timer terverifikasi.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_REAL_DEVICE_UAT_PENDING / BUSINESS_READY=false`.

## 2026-09-17 — Login Portal Staff mobile tidak lagi terpental

- `CONFIRMED`: exact source `f618dacdc2b35d19712d8c058757f55757a8d044` aktif pada [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `8b15d82320825658fcbc78958c322c24ae55268c`.
- Login, session, dan home sebelumnya berhasil, tetapi permintaan eligibility absensi diblokir ingress sehingga portal kembali ke layar login dengan pesan portal belum tersedia. Allowlist ingress kini meneruskan seluruh route attendance native yang terautentikasi.
- Public smoke membuktikan login `200`, session/attendance/receiving anonim `401`, serta route Owner dan legacy tetap `403`. Service, monitor, maintenance timer, exact-source health, backup/restore, dan 34 migration tetap sehat.
- Static/type check 520 modul dan full suite 1.484 test selesai dengan 1.412 pass, 0 fail, 71 expected skip, dan 1 TODO lama.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_REAL_DEVICE_UAT_PENDING / BUSINESS_READY=false`.

## 2026-09-17 — Penerimaan barang staf diperkeras dan aktif di production

- `CONFIRMED`: exact source `81154a727e601b0e5cc94e601593a750cd61b25b` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard) dan [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `ff717a612093231f145f1b13e0456bc1ff2fee5a`.
- Draft dan foto barang datang bertahan setelah refresh, dapat dicoba ulang per foto saat koneksi putus/lambat, serta mencegah perubahan form selama upload atau submit. Multi-foto, koreksi Owner, resubmit, idempotensi, dan pemulihan status `POSTING` tetap tercatat.
- Receipt dapat terhubung ke supplier dan PO, membawa business date serta biaya SHIPPING/HANDLING/OTHER, dan menerima beberapa lot bahan yang sama tanpa kehilangan lot/expiry. Duplicate delivery, selisih harga, kondisi barang, biaya yang belum jelas, dan capability outlet ditangani fail-closed atau masuk review Owner.
- Evidence tetap privat pada filesystem VPS dengan checksum, validasi struktur/dimensi gambar, batas kapasitas dan concurrency, encrypted recovery set DB+credential+media, monitor 60 detik, serta maintenance timer. Adapter object storage belum diaktifkan (`objectStorageMigrationReady=false`).
- Static/type check 516 modul, acceptance gabungan 86/86, attendance/mobile regression 5/5, package, backup/restore, recovery rehearsal, activation, schema companion V1–V4, Nginx, monitor, timer, dan public 200/401/403 smoke lulus. Ledger utama tetap 34.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_AND_REAL_DEVICE_UAT_PENDING / BUSINESS_READY=false`. Tax/discount receipt dan koreksi receipt yang sudah `POSTED` tetap ditolak sampai kontrak canonical tersedia.

## 2026-09-17 — Absensi terjadwal dengan GPS dan foto wajah aktif di production

- `CONFIRMED`: exact source `6002ea4ffe8c71c58de5be0bb28d7d8faa8a7c36` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard) dan [Portal Staff SagaPOS](https://staff.sagapos.site/); rollback `e5e291c9e25334f52bd0551045e92ac4889fcd65`.
- Karyawan hanya dapat absen pada shift terbit, mulai 60 menit sebelum shift sampai 60 menit setelah shift selesai. Waktu server, shift malam, absensi masuk/pulang, idempotensi, sesi singkat anti-replay, serta pengajuan lupa absen ditangani server-side.
- Portal mobile meminta GPS akurat dan kamera depan, menampilkan jarak/akurasi serta receipt. Foto disimpan privat dan hanya dapat dilihat Owner terautentikasi; fitur ini adalah bukti foto, bukan pengenalan biometrik.
- Owner dapat mengatur jendela waktu, radius, akurasi, koordinat outlet, aturan review/block, serta kewajiban GPS/foto dari tab Absensi. Catatan di luar area atau kurang akurat masuk antrean review bila kebijakan `REVIEW` dipilih.
- Full suite 1.453 test: 1.381 pass, 0 fail, 71 expected skip, 1 TODO. Artifact immutable, backup/restore, tiga-boot recovery rehearsal, activation, health exact-source, 34 migrasi, HTTPS, header kamera/GPS, dan anonymous boundary lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_AND_REAL_DEVICE_UAT_PENDING / BUSINESS_READY=false`; offsite restore tetap `UNVERIFIED`.

## 2026-09-17 — Konflik roster langsung mengikuti koreksi Owner

- `CONFIRMED`: exact source `e5e291c9e25334f52bd0551045e92ac4889fcd65` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `1d08a1898bace02ff770f78da6bc24b1cb400f6c`.
- Setelah Owner mengubah Pagi/Sore/Libur, daftar perbaikan dan ikon cakupan dihitung ulang dari assignment terkini. Konflik hasil Generate yang sudah tidak berlaku tidak lagi tertinggal di dashboard.
- Write manual menyimpan hasil validasi baru sebagai audit immutable. Draf lama dari sebelum rilis tetap mendapat perhitungan live saat dashboard dibuka; Publish memakai validator yang sama sehingga status UI dan keputusan server konsisten.
- Static check 507 modul, focused 29/29, dan full suite 1.449 test dengan 1.377 pass, 0 fail, 71 expected skip, serta 1 TODO lulus. Backup/restore, recovery rehearsal, activation, exact health 34 migrasi, monitor, dan dashboard HTTP 200 lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; tidak ada perubahan schema, credential, payment, atau provider.

## 2026-09-17 — Penerimaan stok oleh staf dengan multi-foto aktif di production

- `CONFIRMED`: exact source `1d08a1898bace02ff770f78da6bc24b1cb400f6c` aktif pada [SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `b8da8ef5aca7d8a71045fa4917adf445aa0a470e`.
- Staf dapat mencatat beberapa bahan dalam satu dokumen penerimaan melalui portal mobile, melampirkan beberapa foto dari kamera atau galeri, menyimpan draft, memperbaiki permintaan koreksi, dan mengirim ulang tanpa membuat receipt baru.
- Owner mendapat antrean Barang Datang untuk memeriksa bahan, jumlah, biaya, exception, foto, dan jejak aktivitas; keputusan approve memposting stok melalui jalur inventory kanonik yang idempoten. Owner juga dapat meminta perbaikan atau menolak.
- Akses dipecah menjadi capability untuk membuat, mengirim, memposting, mereview, menulis biaya, dan membaca evidence. Jabatan tidak otomatis memberi seluruh akses.
- Evidence foto disimpan privat melalui adapter filesystem server-side. Kontrak penyimpanannya dapat dipindahkan ke object storage tanpa mengubah alur mobile.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; authenticated real-device UAT `NEEDS CONFIRMATION`; `BUSINESS_READY=false`. Health receiving siap dengan evidence mode `FILESYSTEM_VPS` dan object-storage migration ready; anonymous-route smoke lulus.

## 2026-09-17 — Template rotasi Set A–D untuk empat staf

- `CONFIRMED`: exact source `1de842b4270cab2a8f9e9565f01f2a0c4a018689` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `45fbd5bd0b82235ac9918d9649e6044503b56c4a`.
- Pada pola Seimbang 4 staf dengan tepat dua shift aktif, Owner dapat memilih `Otomatis`, `Set A`, `Set B`, `Set C`, atau `Set D`. Set A–D menggeser urutan deterministik Pagi/Sore antarkaryawan agar pembagian tidak terus membentuk streak panjang dan tetap maksimal dua shift sejenis berturut-turut.
- Set hanya dipakai saat Owner menyimpan aturan lalu menekan Generate; roster/draf yang sudah ada tidak diubah otomatis. Mode Otomatis tetap memakai jeda aman 11 jam. Set A–D menampilkan peringatan bahwa pola anti-streak dapat memakai jeda aktual Sore→Pagi 8 jam untuk template 07.00–15.00 dan 15.00–23.00.
- Focused HR 27/27; full suite 1.434 test: 1.362 pass, 0 fail, 71 expected skip, 1 TODO. Artifact immutable, backup/restore, recovery rehearsal, activation, exact-source health, 34 migrasi, public asset, monitor, dan retention di bawah gate 90% lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; uji Owner nyata dan offsite restore tetap pending.

## 2026-09-16 — Maksimal satu libur terjadwal per hari

- `CONFIRMED`: exact source `e117d1f8d22cb1fbfa8b3c2740a3d3e0bcffca83` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `4c50671bdee1c0122b9ee2fa2e4337d0ae3d190e`.
- Generator roster tidak lagi menempatkan lebih dari satu libur terjadwal pada tanggal yang sama. Jika jumlah hari libur yang diizinkan tidak cukup, sistem menampilkan konflik yang dapat ditindaklanjuti dan menahan publish, bukan menumpuk dua staf libur.
- Edit manual Owner menolak libur terjadwal kedua pada tanggal yang sudah dipakai. Publish memvalidasi ulang aturan ini agar draf lama yang sudah memiliki duplikasi tidak dapat lolos.
- Sakit, izin, atau cuti yang disetujui tetap diproses sebagai exception melalui approval dan tidak dipalsukan sebagai libur terjadwal. Draf lama perlu di-Generate ulang untuk memakai aturan baru.
- Focused 27/27; full suite 1.429 test: 1.357 pass, 0 fail, 71 expected skip, 1 TODO. Backup/restore, recovery rehearsal, activation, exact-source health, dashboard publik, monitor, dan 34 migrasi lulus. Retention menjaga current/rollback/backup dan menurunkan pemakaian host ke bawah gate 90%.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; offsite restore tetap `UNVERIFIED`.

## 2026-09-16 — Lifecycle dan costing produksi bahan olahan diperkeras

- `CONFIRMED`: exact source `61fd150de7b3d803219d618a1d8dc3f3524ff156` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `76c7f5df6aa518eba8b008489f0ee3dbd34e068f`.
- Resep produksi kini menolak siklus antarbahan olahan, mengunci identitas bahan yang sudah menjadi dependensi, dan membatasi toleransi hasil maksimal 25%. Bahan `MADE_IN_HOUSE` tidak dapat dimasukkan melalui penerimaan pembelian.
- Rencana batch dapat dilanjutkan memakai snapshot resep yang sama, dibatalkan, atau ditandai kedaluwarsa dengan audit dan replay idempoten. Completion menolak stok yang sudah direservasi, tanggal pada periode tertutup, hasil di atas toleransi, input measured yang terlalu rendah, lot output ganda, serta kedaluwarsa output yang melampaui input berlot.
- Simulasi perubahan harga bahan mentah sekarang meneruskan dampak biaya ke bahan olahan dan margin menu downstream. Gudang menampilkan lot hasil, tanggal kedaluwarsa, dan sisa kuantitas turunannya.
- Full suite 1.425 test: 1.353 pass, 0 fail, 71 expected skip, 1 TODO; ledger tetap 34 migrasi. Release exact-source, recovery, activation, health, monitor, dan public asset lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`. Void/correct lintas-ledger dinonaktifkan fail-closed; FEFO input berlot wajib, pagination histori, scheduler kedaluwarsa otomatis, dan UAT fisik Owner masih terbuka.

## 2026-09-16 — Maksimal dua shift sejenis dan konflik roster operasional

- `CONFIRMED`: exact source `76c7f5df6aa518eba8b008489f0ee3dbd34e068f` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `985aa1efaccaa59ecb7b6ba6dc27cb32ad92b270`.
- Generator `schedule-rules-rolling-v3` sangat memprioritaskan pergantian setelah maksimal dua shift pada band yang sama. Pola Pagi–Sore tetap boleh selama jeda minimum, role, izin, jam kerja, coverage, dan guard operasional lain terpenuhi.
- Bila aturan coverage dan jeda membuat rotasi maksimal dua tidak mungkin, draf tetap lengkap tetapi konflik tampil dengan kalimat Indonesia dan tombol yang membuka staf/tanggal atau pengaturan minimum shift terkait. Publish ditolak sampai konflik diselesaikan; sistem tidak melonggarkan jeda aman.
- Tidak ada migrasi, credential, payment, atau provider change. Focused 22/22; full suite 1.337 pass, 0 fail, 71 expected skip, 1 TODO dari 1.409; static/type check 497 modul dan dependency audit 0. Paket exact-source, backup/restore, tiga boot recovery, activation, health 34 migrasi, monitor, dan public UI smoke lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; draf lama perlu di-Generate ulang dan offsite restore tetap `UNVERIFIED`.

## 2026-09-16 — Bahan olahan dan produksi batch aktif di production

- `CONFIRMED`: exact source `985aa1efaccaa59ecb7b6ba6dc27cb32ad92b270` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `1b632bc841b6c7db923e18fdab062f7de6801765`.
- Database Bahan kini membedakan bahan yang dibeli dan dibuat sendiri. Untuk bahan dibuat sendiri seperti Espresso, Owner mengatur resep olahan dalam pop-up satu layar dengan komponen, hasil standar, toleransi susut, dan review langsung.
- Gudang menyediakan Produksi batch: bahan mentah berkurang dan bahan hasil bertambah secara atomik berdasarkan hasil aktual. Mode backflush atau pemakaian terukur, susut normal/abnormal, retry, koreksi, dan pembatalan terhubung tercatat dalam audit.
- Menu yang memakai bahan olahan hanya mengurangi stok bahan hasil. Contoh Cafe Latte mengurangi Espresso dan susu ketika mulai dibuat; biji kopi dan air sudah dikurangi saat batch Espresso diproduksi sehingga tidak dikurangi dua kali. Kekurangan Espresso tidak otomatis meledakkan resep ke bahan mentah.
- Tidak ada migrasi baru; ledger tetap 34. Acceptance bahan olahan 21/21 dan static/type check lulus. Full suite mencatat 1.335 pass, 71 expected skip, 1 TODO, serta satu timeout kiosk yang tidak terkait dan langsung lulus saat dijalankan terisolasi. Paket exact-source, backup/restore, rehearsal kandidat–current–kandidat, activation, health, monitor, dan HTTPS/aset lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; inventory reporting tetap OFF sesuai konfigurasi production, tetapi produksi batch tersedia. Offsite restore masih `UNVERIFIED`.

## 2026-09-16 — Simpan aturan roster dan rolling mingguan aktif di production

- `CONFIRMED`: exact source `1b632bc841b6c7db923e18fdab062f7de6801765` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `47dc4ae3a13d3c982ad9670e489a854334e40d75`.
- Panel Pengaturan Jadwal memiliki tombol **Simpan pengaturan jadwal**. Hari libur yang diizinkan, minimum/maksimum staf per shift, pola, dan blok rolling kini dapat disimpan untuk bulan terpilih tanpa harus Generate.
- Generator `schedule-rules-rolling-v2` menilai keragaman shift per minggu dan memakai hari libur sebagai batas perpindahan yang aman. Pada dua shift dan kapasitas yang memungkinkan, setiap staf mendapat kombinasi pagi dan sore dalam minggu penuh; role, izin, availability, jeda minimum, batas jam, hari berturut-turut, dan locked cell tetap menjadi guard keras.
- Minimum/maksimum tetap berarti kebutuhan jumlah orang per shift, bukan jaminan rotasi per orang. Jaminan pemerataan berasal dari aturan rolling mingguan baru; perpindahan sore ke pagi tidak dipaksakan bila melanggar jeda aman.
- Tidak ada migrasi database, perubahan credential, payment, atau provider. Focused 21/21, static/type check, dependency audit 0, dan test timeout kiosk yang tidak terkait lulus saat rerun terisolasi. Paket exact-source, backup/restore, recovery rehearsal, activation, health 34 migrasi, monitor, dan HTTPS lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; jadwal draf lama tidak diubah otomatis dan harus di-Generate ulang setelah aturan disimpan.

## 2026-09-16 — Aturan jadwal dan pola rolling shift aktif di production

- `CONFIRMED`: exact source `1e510299bcd8d7aedba79e7e030b86550562b623` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `537a9aef3363ac18cdef5f4dda518b5430dbb267`.
- Sebelum generate roster, Owner memilih pola `Tim aktual`, `Seimbang 4 staf`, `Seimbang 5 staf`, atau `Weekend ramai`, lalu dapat mengatur hari yang boleh dipakai untuk libur serta minimum/maksimum staf tiap shift untuk Senin–Minggu.
- Rolling shift dapat memakai blok 1, 2, atau 3 hari. Generator membagi target shift secara deterministik dan tetap memprioritaskan role, availability/izin, jeda, batas jam, hari berturut-turut, dan locked cell; seorang staf tidak dipertahankan terus pada shift pagi bila pilihan valid tersedia.
- Aturan tersimpan bersama periode roster dan dimuat kembali untuk revisi. Tidak ada perubahan schema, credential, payment, Member, atau data jadwal aktif sampai Owner menekan Generate lalu Publish.
- Focused 22/22; full 1.304 pass, 0 fail, 71 skip, 1 TODO dari 1.376; static check dan production dependency audit 0. Artifact immutable, backup/restore, rehearsal kandidat–rollback–kandidat, activation, exact-source health, 34 migrasi, monitor, dan HTTPS lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; offsite backup masih `UNVERIFIED`.

## 2026-09-16 — Laporan jam kerja dan payroll preview native aktif di SagaPOS

- `CONFIRMED`: source `537a9aef3363ac18cdef5f4dda518b5430dbb267` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback kompatibel `2d47ee3cfe4da90c1325df5923bf739d52a35598`.
- Area Tim & Shift kini native di SagaPOS: Owner dapat membuat akun karyawan dengan Employee ID/password sementara sekali tampil, mengelola template dan roster bulanan, memeriksa absensi/permohonan, lalu membuka tab Laporan payroll dengan filter bulan dan ekspor CSV.
- Laporan merangkum jadwal jatuh tempo, hadir, izin, absen, telat dan menit telat, absensi belum lengkap/tanpa jadwal, jam kerja, pulang awal, kandidat lembur, tingkat kehadiran, serta baris yang wajib direview. Nominal gaji, potongan otomatis, pembayaran payroll, dan skor kinerja tetap tidak dihitung atau diaktifkan.
- Runtime production memensiunkan `/hr` dan API bridge SagaWork dengan respons tertutup; portal staf native tersedia pada [staff.sagapos.site](https://staff.sagapos.site/). Data tetap tenant/outlet scoped pada PostgreSQL SagaPOS.
- Full suite 1.372 test: 1.300 pass, 0 fail, 71 skip, 1 TODO; focused 26/26 dan dependency audit 0. Artifact immutable, migration V3 aditif, backup/restore, rehearsal kandidat–rollback–kandidat, activation, exact-source health, file integrity, database, HTTPS dan negative auth lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; performance, payroll payout, kebijakan nominal/potongan, geofence/foto attendance, dan offsite recovery tetap gate terpisah.

## 2026-09-16 — Generator jadwal bulanan dengan aturan libur aktif di production

- `CONFIRMED`: source `2d47ee3cfe4da90c1325df5923bf739d52a35598` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `e9315a889f6d92c055076f108b2d32fa0fedf878`.
- Owner memilih bulan lalu membuat draf jadwal berbentuk matriks staf × tanggal, dapat melihat semua staf atau satu staf, mengubah sel sebelum review, dan baru menerbitkannya setelah pemeriksaan.
- Setiap staf mendapat satu hari libur per minggu: untuk empat staf ditempatkan Senin–Kamis, untuk lima staf atau lebih Senin–Jumat. Sabtu/Minggu tetap dijadwalkan kecuali ada izin yang disetujui; izin akhir pekan menggantikan libur weekday pada minggu yang sama.
- Publish menolak hari kerja kosong tanpa libur/izin sah. Generator tetap menjaga role, bentrok, jeda minimum, maksimum 48 jam/minggu, maksimum enam hari berturut-turut, locked cell, dan pembagian template shift.
- Focused 17/17; full suite 1.368 test: 1.296 pass, 0 fail, 71 skip, 1 TODO; dependency audit 0. Artifact immutable, backup/restore, rehearsal code-only, activation, health exact-source, 34 migrasi, database tanpa lock wait, HTTPS/aset, negative auth, dan monitor lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; offsite backup masih `UNVERIFIED`.

## 2026-09-16 — Simpan template shift pulih dari kegagalan jaringan

- `CONFIRMED`: source `e9315a889f6d92c055076f108b2d32fa0fedf878` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback kompatibel `dda8b00382280f97856815bc715ba72d8fe1a365`.
- Permintaan dashboard kini berhenti dengan pesan yang jelas setelah batas waktu delapan detik. Pembacaan aman dapat dicoba ulang sekali, sedangkan penyimpanan tidak dikirim ulang otomatis agar template shift tidak tercatat ganda.
- Bila jawaban penyimpanan template hilang, dashboard membaca ulang state dan mengenali template baru yang cocok. Owner diberi tahu bahwa data sebenarnya sudah tersimpan, atau mendapat kegagalan yang dapat dicoba ulang secara sadar.
- Full suite 1.362 test: 1.290 pass, 0 fail, 71 skip, 1 TODO; tes fokus 18/18. Paket immutable, backup/restore, rehearsal code-only, aktivasi, health exact-source, 34 migrasi, HTTPS/aset, negative auth, database tanpa lock wait, dan monitor lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`. Tidak ada perubahan schema, data HR, permission, payment, atau Member; offsite backup tetap belum diverifikasi.

## 2026-09-16 — SagaPOS HR roster manusiawi aktif di production

- `CONFIRMED`: exact source `dda8b00382280f97856815bc715ba72d8fe1a365` aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback kompatibel `a741cd091af08a6e01aa403a74146704fafd4bc9`.
- Owner mengelola Tim, template shift, availability, kalender/agenda jadwal, generate roster, review, publish, absensi, dan permohonan dari dashboard yang sama. Generator menjaga role, cuti/tidak tersedia, bentrok, jeda minimum, jam mingguan, hari berturut-turut, locked cell, serta mengurangi jumping shift; tukar shift memvalidasi ulang kedua penerima.
- Schema roster V2 bersifat aditif dan ledger utama tetap 34. Full suite 1.359 test: 1.287 pass, 0 fail, 71 skip, 1 TODO; acceptance V2 8/8, integrated HR 20/20, static/type check, mobile 390 px, immutable artifact, backup/restore, dua recovery rehearsal, HTTPS, negative auth, serta exact-source health lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`. Residual prototype: UI belum selalu mengirim expected version antartab dan ringkasan konflik generator belum dipersempit per periode; payment/Member tetap OFF.


## 2026-09-15 — Pop-up resep HPP aktif di production

- `CONFIRMED`: source `99f16d84583e0fa9c0c562f1888eef3e21ba2d1f` sudah pushed dan aktif pada [Owner Dashboard SagaPOS](https://dashboard.sagapos.site/dashboard); rollback `c7b1e31d9de58572b19932e7a622f761e3c4b009`.
- Atur HPP membuka pop-up pada daftar menu yang sama. Owner memilih bahan dari Database, mengisi takaran per porsi, dapat menambah beberapa baris dan melihat simulasi HPP/margin kotor langsung tanpa wizard dua tahap. Edit bahan lama dan pembatalan input belum tersimpan tetap tersedia.
- Simpan masuk draft; publish versi terpisah. Resep published, stok, schema/API, harga menu, payment, dan Member tidak diubah. Bahan tanpa biaya tidak dianggap Rp0 dan belum dapat dipublikasikan.
- Static check, empat tes browser desktop/mobile/keyboard/accessibility, serta production dependency audit 0 lulus. Paket exact-source, backup terenkripsi/restore sementara, rehearsal kandidat-rollback-kandidat, aktivasi atomik, health, 34 migrasi, HTTPS dashboard/asset, anonymous inventory 401, dan monitor production lulus. Full suite tidak hijau karena tes laporan memakai rute UI lama dan runner Linux perlu WSL distro; tes rute lama juga gagal pada source production sebelumnya.
- `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`. Retention rilis/paket lama yang terarsip dan bisa dipulihkan menurunkan disk target ke 88%; offsite backup dan uji Owner nyata belum dibuktikan.

## 2026-09-15 — Tambah stok masuk satu layar di dashboard production

- `CONFIRMED`: Owner Dashboard source `c7b1e31d9de58572b19932e7a622f761e3c4b009` aktif di production; rollback `c4ae7096defe64a63fdf22b1185556aad0bf9df9`.
- Tombol Tambah stok masuk membuka pop-up pada halaman Gudang yang sama, bukan wizard tiga tahap atau tab baru. Owner memilih bahan dan satuan pembelian tersimpan, mengisi jumlah, biaya aktual, serta supplier; batch/kedaluwarsa muncul sesuai kebutuhan bahan. Preview menunjukkan konversi ke satuan dasar, stok, dan biaya rata-rata sebelum satu tombol simpan.
- Perhitungan stok/HPP tetap diputuskan server; harga acuan tidak diam-diam menggantikan biaya pembelian aktual. Form mempertahankan isian bila server menolak perubahan, dan respons terputus tetap direkonsiliasi tanpa penerimaan kedua.
- Static check, tes fokus/browser desktop-mobile, recovery code-only dengan backup terenkripsi dan restore sementara, 34 migrasi, health exact-source, HTTPS/aset baru, serta penolakan API anonim 401 lulus. Full suite dan offsite backup belum diverifikasi.
- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; payment dan Member eksternal tetap OFF. Keputusan UI dari Andreas; pricing dan produk lain tidak berubah.

## 2026-09-15 — Enam celah operasional Bahan, Gudang, dan HPP ditutup di production

- `CONFIRMED`: Owner Dashboard source `c4ae7096defe64a63fdf22b1185556aad0bf9df9` aktif di production; rollback `9643a4f7cb5103fc2659111001aa5c82562e8cbc`.
- Wizard bahan menuntut pemeriksaan isi kemasan sebelum lanjut; angka contoh kategori bukan bukti fisik. Seluruh tampilan HPP menyebut margin kotor, bukan laba bersih. Laporan varians membedakan waktu menu mulai dibuat dan fallback transaksi lama, serta menampilkan penerimaan bersih setelah retur.
- Gudang sekarang membuka hitung stok fisik dari dashboard dan dari laporan. Draft hitungan tidak hilang saat refresh, tetapi versi lama ditahan setelah perubahan stok; sesi login baru tidak mewarisi draft lama. Penerimaan dengan respons terputus direkonsiliasi dari riwayat tanpa membuat stok masuk kedua.
- Static check dan 23 pengujian fokus lulus, termasuk simulasi satu hari bahan → penerimaan → HPP → penjualan → waste → hitung penutup → laporan. Artifact/recovery, health exact-source, PostgreSQL 34 migrasi, HTTPS 200, dan anonymous inventory 401 lulus. Full suite tidak dijalankan; offsite backup belum diverifikasi.
- `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`; payment tetap OFF. Konfirmasi pergerakan saat stock count adalah prosedur operator, bukan audit attestation server.

## 2026-09-15 — Riwayat stok masuk per transaksi aktif di production

- `CONFIRMED`: SagaPOS Owner Dashboard memakai source `72db215a8b17cafbf3047f54b1f893a625b2a5ed`; rollback `4e0608882a4c25742b01820f118e359ce2de83a9`.
- Satu kiriman berisi beberapa bahan kini dihitung dan ditampilkan sebagai satu penerimaan. Ringkasan menunjukkan supplier, waktu, lokasi tujuan, jumlah bahan, dan total nilai; rincian bahan/kuantitas/nilai/batch dibuka seperlunya. Pencarian bahan, supplier, lokasi, dan batch menghitung transaksi, bukan baris bahan.
- Perubahan hanya pada read model dan UI Gudang; stok, HPP, transaksi, schema, serta payment authority tidak berubah. Tes terkait Owner/Gudang/HPP 21/21 dan static check lulus; desktop/mobile, keyboard, axe serious/critical, dan overflow lulus. Full suite tidak dijalankan untuk rilis ini.
- Artifact exact-source, backup terenkripsi/disposable restore, service, PostgreSQL 34 migrasi, monitor, HTTPS/aset publik, dan negative auth 401 lulus. Payment tetap OFF, reporting OFF:OFF, offsite backup belum diverifikasi. `PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING / BUSINESS_READY=false`.

## 2026-09-15 — Database Bahan mobile cards aktif di production

- `CONFIRMED`: exact production source
  `d40e0536ab8dc01585148e33b0a166587f5cd685`, rollback
  `aee5ec08ef41c8b3a6b63ce2bbc6fd8183edaefb`.
- Pada layar maksimum 420 piksel, tabel Database Bahan berubah menjadi kartu
  bertumpuk yang tetap menampilkan nama/SKU/kategori, unit, biaya rata-rata,
  status, dan aksi Edit/Archive tanpa terpotong ke kanan. Target sentuh aksi
  minimum 44 piksel; desktop mempertahankan tabel semantik.
- Focused browser serta kontrak logic/RBAC/persistence lulus, `npm check`
  lulus, service dan PostgreSQL aktif, health production mengikat exact source,
  migration count 34, dashboard/aset 200, dan endpoint inventory tanpa auth
  menolak 401. Full suite menghasilkan 1.239 pass, 2 baseline environment
  failures, 71 skip, dan 1 todo dari 1.313; dua failure tidak diklaim lulus.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED /
  PRODUCTION_ACTIVATED / AUTHENTICATED_OWNER_UAT_PENDING /
  BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 26 session recovery hardening

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source `bfec2bbf436fd16c6a08451663fa5627735ae8ce`, Git tree `0bc26d6b0e4e0d1003481f3066edfeb9835e7c1c`.
- Generic eligible-session logout kini memakai database-owned revoke ledger. Terminal retry mengikat session, binding, receipt hash, canonical result, outlet, lokasi, revision, dan revoke time; error repository tetap bounded 403/409/503. Direct write role production diuji fail-closed.
- Migration regression membuktikan upgrade #40 gagal atomik pada eligible pre-key session dan #40/#41 clean-prefix tetap idempotent setelah reload/restart. Monitor memerlukan `alive=true` dan exact OFF/POSTGRES inventory-period health tanpa memutus output reporting lama.
- Evidence: seluruh Inventory Period 263/263, focused26/26, production-role3/3, keyring8/8, migration2/2, monitor9/9, check443/41, audit P0/P1/P2=0.
- B23 `PARTIAL` +0; kandidat101/198, readiness40/100. Fresh compatibility artifact/recovery, production dependency loader, target monitoring, hosted Quality, dan authenticated UAT tetap terbuka. Launcher `OFF`; `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 25 hardened session authority

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source `9aaa990db1ec4152afd61ab3ea89bb5add435ece`, Git tree `332170890ca14880483f26ea9d09710b05729e8b`.
- Source menambah versioned credential-key reference pada eligible session, bounded retained keyring untuk replay/restart, exact inventory-period scope pada repository dan launcher, serta database-owned issue/revoke session functions dengan authority recheck dan atomic receipt.
- Migration #41 menutup direct DML pada eligible session, binding, dan operation ledger. Runtime grant kini memakai allowlist tabel/sekuens/fungsi eksplisit; static test mencocokkan seluruh SQL call-site yang diperiksa. Launcher tetap fail-closed sebelum listen bila dependency server belum tersedia.
- Evidence lokal: focused Wave25 25/25, migration regression 33/33, inventory-period 265/265, check 442 modul/41 migrasi. Full repository awal 1347 pass/1 stale fixture/1 skip/1 TODO dari 1350; fixture diperbaiki dan file lengkap lulus 22/22, tanpa full-suite repeat. Vercel preview lulus; hosted Quality tidak memulai step karena billing.
- B23 `PARTIAL` +0; kandidat 101/198, audited 198/198, accepted 0/198, red-team 0/25, readiness 40/100; `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, launcher `OFF`, `BELUM DEPLOY`, `BUSINESS_READY=false`.
- Open: candidate-bound recovery/compatibility rehearsal untuk migration #41, real production identity/dependency loader bagi tiga manusia terpisah, target monitoring privilege, hosted Quality, dan authenticated three-human UAT.

## 2026-09-10 — Inventory/HPP Wave 24 trusted identity provisioning

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source `478b9a1e4a2236e3238db696534ed45c11761d8b`, Git tree `ea4f852fd1de540c55499b9e27fafbcce2f58caa`.
- Source menambah authority provisioning identitas periode inventory yang mengikat fingerprint dari trusted verifier, principal, role/capability grant, lokasi, dan device. Token/CSRF diterbitkan server; session eligible, binding, operation receipt, revocation, serta authority rotation memakai transaksi atomik dan replay-safe.
- Migration #39 menambah canonical identity dan operation ledger append-only dengan FORCE RLS, menahan adopsi session eligible lama, dan mempersempit direct write role production pada authority configuration. Readiness memakai canonical identity statis sehingga bootstrap tidak memerlukan session aktif.
- Evidence lokal: Wave24 10/10, focused affected82/82, inventory-period250 pass, full repository1333 pass/0 fail/1 Windows skip/1 B22 TODO dari1335, check439 modul/39 migrasi, dan audit P0 residual=0.
- Launcher tetap `OFF`. B23 `PARTIAL` +0; kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.
- Open: launcher dan shared-session RLS scope, direct session DML versus ledger boundary, credential-key rotation/replay, target recovery, verifier HRPOS Manager/Finance nyata, hosted Quality, dan authenticated three-human UAT.

## 2026-09-10 — Inventory/HPP Wave 23 guarded production HTTP composition

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source final `b1b9fdf27cf4d6b9cb752cfab0ecceaeb49affd9`, Git tree `b41ab6eed5f83ad9ae4eec8c491df4eca3b9678b`.
- Source kini memiliki composition production yang fail-closed untuk kontrol periode inventory. Kontrak HTTP mencakup delapan mutasi close/reopen/correction/restatement dan dua bounded read versi report; scope, actor, permission, correlation, serta authority provider selalu diturunkan server dan tidak dapat dibawa client.
- Mutasi mewajibkan session operator yang eligible, same-origin, CSRF, JSON dan batas body/rate; provider mengulang pemeriksaan authority di transaksi yang sama. Response memakai DTO publik tertutup, error aman, replay stabil, dan health/readiness memeriksa authority, multi-identitas, dependency, serta versi correlation key.
- Evidence lokal Wave 23: dedicated18/18, syntax/diff/OpenAPI validation lulus, dan audit final P0/P1/P2=0.
- Composition masih dormant: launcher production tetap `OFF` dan tidak mengaktifkan route terhadap target. B23 tetap `PARTIAL` +0; kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.
- Blocker ringkas: issuer dan provisioning session/device eligible serta principal Finance/Owner/Executor terpisah, dependency production dan correlation authority, target PostgreSQL/recovery/monitoring, hosted Quality, staging, dan authenticated business UAT belum dibuktikan.

## 2026-09-10 — Inventory/HPP Wave 22 atomic restatement

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source HEAD `c380ff3fe6dcf4a6ff2cf9c45e46161926aba05b`, Git tree `ff511f956e1691d9d0deefe09dc78a5a0503ccba`; implementation `cb37fbb535315602e1ada9e810d3cadc4345e98f`, hardening `81860082787c34a12aa84029a1e15245239008bc`, dan QA final `3b97cbea30741469027b4e25e9bb8fae4dfc2593`.
- PostgreSQL `restate` sekarang atomik dalam satu transaksi serializable. Provider mengonsumsi immutable reclassification overlay serta reversal/revaluation resolution, membangun ulang projection B20, menerbitkan versi report baru, lalu memindahkan current pointer melalui CAS bersama event, operation, aggregate, outbox, dan readiness.
- Report dan HPP lama tetap immutable. Versi baru mengikat exact cumulative correction set yang disortir, source/query/projection fingerprint, exact catalog/HPP authority, serta resolution append-only dari migration #38. Replay historis tetap valid setelah versi report dan HPP berikutnya maju.
- Outbox `INVENTORY_PERIOD_RESTATED_V1` hanya membawa identifier dan fingerprint operasional yang diperlukan; actor, session, device, authority snapshot, dan alasan bebas tidak dipublikasikan. Correction set dibatasi maksimum 100 dan prospective rows dihitung sebelum write pertama.
- Evidence: dedicated47/47, broader affected172/172, migration50/50, targeted stale manifest5/5, full1305 pass/0 fail/1 Windows skip/1 B22 TODO dari1307, check435/38, dependency audit0, independent P0/P1/P2=0.
- B23 tetap `PARTIAL` +0 karena production HTTP composition, target PostgreSQL multi-process/recovery/monitoring, hosted Quality, dan authenticated Finance/Owner/business UAT belum selesai. Kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; merge/release HOLD, `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 21 atomic record correction

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source HEAD `b10d0682a48c4f02bb7683cc3a4f8066f0c2fbaa`, Git tree `a4ec2d32864430585ca3ac4d18c1272197ee6629`; implementation `7b0b791566681308da30e34fcaa4e42951269a9b`, QA `3666b9220ba2301bdc07b6d11990b7e76c43895e`.
- PostgreSQL `recordCorrection` sekarang atomik dalam satu transaksi serializable. Reversal menambah satu fact pembalik dan mempertahankan state eksekusi HPP; reclassification menjaga HPP byte-identical dan menambah immutable classification overlay.
- Same-transaction authority, source/dependency fingerprint, bounded dependency analysis, event/operation/aggregate/outbox, replay/restart/concurrency/ACK-loss, dan fault rollback diverifikasi fail-closed. Migration #37 menambah capability backdate tanpa memberi grant kepada principal mana pun.
- Evidence: dedicated50/50, replay/tamper19/19, affected196/196, audit83/83, check434/37, dependency audit0, independent P0/P1/P2=0. Full regression1257 pass/1 stale manifest assertion/1 Windows skip/1 B22 TODO; assertion diperbaiki dan file lengkapnya lulus22/22, tanpa pengulangan full suite.
- B23 tetap `PARTIAL` +0 karena `restate`, production HTTP composition, target recovery, dan authenticated UAT belum selesai. Kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; merge/release HOLD, `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 20 atomic execute reopen

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source HEAD `c5f273f98f2459f09a9f2c0a9847abfada5ae42e`, Git tree `67d3c3341699620667417ca68378b38248b97703`; implementation `fac477a6654d826966407bd5d30dd8c343118847`, QA `fbdfb51776a064437f78a048c0a7cb178cca746e`.
- PostgreSQL `executeReopen` sekarang atomik dalam satu transaksi serializable: authority recheck, approval sekali pakai, event/operation/aggregate, exact B20 invalidation, outbox, readiness, replay/restart, concurrency, ACK-loss recovery, dan rollback pada delapan fault boundary.
- HPP tidak berubah. Replay mengikat exact historical master snapshot empat kolom, metadata version/state, current report/projection, invalidation lineage, outlet scope, dan hash chain approval/outbox.
- Evidence: dedicated24/24, combined39/39, affected153/153, check433/36, dependency audit0, independent P0/P1/P2=0. Full regression1207 pass/1 browser flake/1 Windows skip/1 B22 TODO dari1210; exact browser failure lulus1/1 saat rerun.
- B23 tetap `PARTIAL` +0 karena `recordCorrection`, `restate`, production HTTP, target recovery, dan authenticated UAT belum selesai. Kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; merge/release HOLD, `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 19 replay hardening dan reopen foundation

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source HEAD `a95600b1e12844391442f4ae8031ae16e95953ac`, Git tree `b5d0eb95de66cae5b8f66e2e927b7292d8dcd2b9`; tested implementation `f5269dee4549708551b6a8292da898d63b9b4737`.
- Dua P2 Wave 18 ditutup: conflict transition terpilih kembali sebagai exact 409/422 melalui allowlist code/status tanpa detail sensitif, dan replay close mengikat snapshot historis lewat outbox authority serta primary key empat kolom dengan satu kandidat.
- Fondasi stateless `executeReopen` mengikat scope/actor/capability, pemisahan maker-checker-executor, expiry, policy/candidate, HPP period, current B20 report document/query, serta immutable event/invalidation/outbox intent. HPP tetap byte-identical, tetapi provider PostgreSQL belum mengonsumsi kontrak ini.
- Evidence lokal: focused39/39, QA adversarial2/2 dengan 10.050 snapshot pengalih, pure reopen8/8, affected54/54, audit independen16/16, full1183 pass/0 fail/1 Windows skip/1 B22 TODO dari1185, check432/36, dependency audit0; P0/P1/P2=0.
- B23 tetap `PARTIAL` +0; `executeReopen`, `recordCorrection`, `restate`, dan production HTTP masih fail-closed. Kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100; merge/release HOLD, `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 18 atomic execute close

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) source HEAD `b90e8f68e4f682b3b5dc2e4cd01d8cb80815ba6c`, Git tree `a9a5552eaf72165cabd29d1b6785a9448e61ebc4`; implementation/QA cut `040e64e677c86216526c187e9cde99dc28e67354`.
- PostgreSQL `executeClose` kini mengikat authority recheck, authorization, HPP, B20 job/projection, B23 event/operation/aggregate/report, dan outbox dalam satu transaksi serializable. Exact replay bertahan setelah restart, ACK-loss, mutasi HPP berikutnya, dan restatement; cutoff report diambil sesudah trigger snapshot dengan ceiling milidetik PostgreSQL.
- Evidence lokal: root affected101/101, QA PostgreSQL23/23 + affected24/24, independent133/133, full efektif1172 pass/0 functional fail/1 platform skip/1 B22 TODO dari1174, check429/36, dependency audit0, P0=0/P1=0/P2=2.
- `executeReopen`, `recordCorrection`, dan `restate` tetap 503 zero-write; durable provider belum terhubung ke production HTTP. B23 `PARTIAL` +0, kandidat101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100. Merge/release HOLD; `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-10 — Inventory/HPP Wave 17 atomic foundation

- `CONFIRMED`; [draft PR #21](https://github.com/notyourgas/sagaops/pull/21) memuat source HEAD `752240095e5e005e5fbdd336677cdfdd346294e6` dengan Git tree `3a8bde91ebe227bdaa6d5a7b6ed3d00f402db574` untuk fondasi transaksi atomik B23.
- Domain close kini memiliki prepare/finalize/abort dengan token HMAC single-use. B20 dapat membaca dan menyimpan job, event, serta projection melalui transaksi caller yang sama. Migration #36 dan adapter PostgreSQL menambahkan durable session, principal, Finance grant, device/binding, location, serta retained correlation-key authority dengan replay lintas restart.
- Evidence lokal: full 1133 pass/0 fail/1 platform skip/1 B22 TODO dari 1135, affected71/71, manifest regression38/38, independent implementation82/82, check425/36, dependency audit0, P0/P1/P2=0.
- Empat mutasi `executeClose`, `executeReopen`, `recordCorrection`, dan `restate` tetap 503 zero-write. Adapter authority belum dikomposisikan ke server HTTP. Quality hosted berhenti sebelum step karena billing; Vercel hanya preview.
- B23 tetap `PARTIAL`, +0 requirement, kandidat 101/198, audited198/198, accepted0/198, red-team0/25, readiness40/100. Merge/release HOLD; `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 16 authority foundation

- `CONFIRMED`; [draft PR #20](https://github.com/notyourgas/sagaops/pull/20) memuat source HEAD `06063829e8b46d6915938d511bb21c6de5df0518` dengan Git tree `88c5cf21e99469b153cf8550d2550d0ecef5319e` untuk B23 HTTP/authorization foundation.
- Resolver hanya menerima server session reference dan memverifikasi active session/token hash, principal, location grant, registered device, session-device binding, serta role `owner`/`manager`/`finance` melalui authority provider. Finance dan device authority harus tersedia; close decision tetap Finance-only.
- Correlation ID dibuat server memakai versioned HMAC yang mengikat action, scope, principal, session, device, operation key, dan canonical command hash. Retained key version menjaga exact replay lintas restart/rotasi; missing version gagal tertutup. Provider mengulang authority check dalam transaksi yang sama dan meredaksi detail internal error.
- Evidence source: affected 135/135, independent 90/90, check 420 modul/35 migrasi, dependency/security audit 0 vulnerability, P0=0, P1=0, P2=1 untuk semantics allowlist SQLSTATE.
- Production HTTP tetap disabled dan empat mutasi `executeClose`, `executeReopen`, `recordCorrection`, serta `restate` tetap 503 `inventory_period_atomic_runtime_not_ready` dengan nol write. Hosted Quality zero-step `CI_BILLING_BLOCKED`; Vercel hanya preview.
- B23 tetap `PARTIAL`, +0 requirement, kandidat 101/198 dan readiness 40/100. Merge/release HOLD; status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`, production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 15 period-control phase one

- `CONFIRMED`; [draft PR #19](https://github.com/notyourgas/sagaops/pull/19) memuat candidate HEAD `c5cf5ebe4a05d449722f2035922ef134a367e940` dengan Git tree `7946093eddb915ff2c228b7eb902ba344838a7f9` untuk phase-one runtime B23.
- Facade API menyediakan delapan command dan dua read report-version yang dibatasi. Organization, outlet, location, user, role, session, device, correlation, dan capability berasal dari trusted server resolver; client override ditolak. Detail report menghitung ulang canonical SHA-256 terhadap dokumen immutable.
- Semantik periode B20/B23/migrasi #35 diselaraskan ke interval `[start,end)`. PostgreSQL phase-one mendukung request dan decision close/reopen dengan finance checker, maker/checker/executor berbeda, expiry, scope lokasi, policy/candidate/preview binding, optimistic revision, replay/collision guard, append-only hash chain, aggregate CAS, forced RLS, serta reconciliation saat startup. Domain state memakai HMAC-SHA-256 dan riwayat projection B20 yang `INVALIDATED` tetap immutable.
- Empat mutasi `executeClose`, `executeReopen`, `recordCorrection`, dan `restate` sengaja fail-closed dengan HTTP 503 `inventory_period_atomic_runtime_not_ready` dan nol write sampai transaksi atomik lintas authorization, operation, event/aggregate, HPP, report, correction/restatement, serta B20 invalidation/outbox tersedia.
- Evidence lokal: root focused 51/51, independent audit 28/28, check 418 modul/35 migrasi, dependency/security audit 0 vulnerability, P0=0, P1=0, P2=2. Hosted Quality menjalankan nol step karena billing (`CI_BILLING_BLOCKED`); Vercel hanya preview.
- B23 tetap `PARTIAL` dengan +0 requirement: kandidat 101/198 dan readiness 40/100. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; merge/release HOLD, production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 14 period close dan restatement candidate

- `CONFIRMED`; [draft PR #18](https://github.com/notyourgas/sagaops/pull/18) memuat final candidate HEAD `60928b893bc3bb27c241c44c190a3775d7d4f460` dengan Git tree `b21d4382d42db30430d2ef9dae3758fe53ee8cb3` untuk kandidat lokal B23 period close dan restatement.
- Close memakai maker, finance checker, dan executor yang berbeda. Reopen juga memakai request, approval, dan execution terpisah, terikat scope lokasi, expiry, candidate/dependency-preview hash, policy snapshot, actor/session context, optimistic revision, single-use authorization, serta replay/collision guard.
- Periode tertutup mempunyai immutable original report; koreksi yang didukung saat ini dibatasi pada exact reversal untuk duplicate posting dan append-only classification event dengan perubahan quantity/value nol. Restatement menghasilkan versi baru yang mereferensikan versi sebelumnya dan correction set; chronology, unresolved revaluation, dependency tidak lengkap, stale preview, serta state tamper gagal tertutup.
- Combined B23+HPP+B20+B21 104/104, static/type/OpenAPI check 413 modul/35 migrasi, dan audit final 0 finding lulus. B23 tetap `PARTIAL`: PostgreSQL repository/runtime coupling, lock guard pada seluruh writer, API/UI, revaluation resolution, correction replacement lengkap, target database/recovery, dan authenticated UAT belum selesai. Kandidat tetap 101/198 dan readiness 40/100. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 13 production loss dan compatibility guard

- `CONFIRMED`; [PR #17](https://github.com/notyourgas/sagaops/pull/17) memuat final source documentation `bb97c1a48988d879eb1ad37fc479870e53211f5b` dengan tested implementation `087e4148a68bf74c046558fc2a27f1a9192ae4e6`.
- Nilai abnormal loss dihitung server-side dengan proportional equivalent-output dan pembulatan half-up Rupiah. Kuantitas abnormal positif dapat sah bernilai Rp0 ketika hasil proporsinya di bawah setengah Rupiah; nilai yang dikirim caller tetap diverifikasi ulang. Jalur produksi mempertahankan kuantitas 4–6 desimal, memakai safe-micro guard, dan gagal sebelum mutasi bila delta tidak dapat direpresentasikan tepat.
- Startup memeriksa exact parity antara production reporting, valuation transformation, dan operation ledger. Rollback legacy read-write ditolak setelah transformation ada; hanya runtime yang memahami transformation atau compatibility runtime read-only yang memenuhi kontrak. Monitor mengikat source, migration ledger/fingerprint, health reporting, serta backup checksum dan freshness.
- Evidence lokal: full 1077 pass/0 fail/1 platform skip/1 B22 TODO dari 1079, focused 36/36, affected 81/81, dan independent audit 68/68 dengan P0=0/P1=0/P2=0. Source branch sudah dipush; hosted Quality menjalankan nol step karena billing (`CI_BILLING_BLOCKED`) dan Vercel hanya preview. Kandidat tetap 101/198 (51,0%) dan readiness 40/100. Target PostgreSQL, package/restore/rollback target, monitoring aktual, staging, serta authenticated Owner/business UAT masih harus dibuktikan. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 12 historical authority dan production valuation

- `CONFIRMED`; [PR #17](https://github.com/notyourgas/sagaops/pull/17) memuat implementation cut `ed549b32e630965938f78c234379de5e0c0af533` untuk authority kalender/lokasi historis dan valuasi transformasi produksi.
- Query bertanggal mengikat fakta kalender/lokasi append-only dan gagal tertutup bila sejarah hilang, ambigu, rusak, atau berubah di tengah periode. Production completion menulis movement, HPP, valuation, reporting, dan outbox atomik; normal loss diserap ke output dan abnormal loss memerlukan nilai eksplisit.
- Evidence lokal: full 1062 pass/0 fail/1 platform skip/1 B22 TODO dari 1064, focused authority/valuation/migration 9/9, check 405 modules/34 migrations, audit dependency 0 vulnerability, audit migration final P0=0/P1=0/P2=0.
- Kandidat tetap 101/198 (51,0%), accepted 0/198, red-team accepted 0/25, readiness 40/100. Backlog target, abnormal-loss authority, rollback compatibility, target database/recovery/worker/monitoring, hosted CI, dan authenticated UAT masih terbuka. Status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah, `BELUM DEPLOY`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 11 OUTLET/COMPANY source candidate

- `CONFIRMED`; [PR #17](https://github.com/notyourgas/sagaops/pull/17) memuat exact source implementation `56283a85034fdb259411effd5ba0fce34712e064` untuk kandidat laporan B20 dengan view `OUTLET` dan `COMPANY`.
- Scope laporan ditentukan server. `OUTLET` mempertahankan outlet aktif yang dipilih server; `COMPANY` hanya tersedia untuk Owner organisasi yang sah dan mengagregasi outlet aktif yang lolos batas, kalender, lokasi, serta isolation check. Scope atau kalender yang ambigu gagal tertutup.
- Kandidat tetap 101/198 (51,0%) dengan readiness 40/100. Target PostgreSQL/RLS dan performa multi-outlet, exact package, backup/disposable restore, rollback, credential serta worker/monitoring target, hosted CI, dan authenticated Owner/business UAT masih harus dibuktikan.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Wave 11 belum mengubah production, `BELUM DEPLOY`, `NOT_PRODUCTION_ACTIVATED`, dan `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 10 final source candidate

- `CONFIRMED`; [PR #17](https://github.com/notyourgas/sagaops/pull/17) memakai source head `7b5f2c7778766fe3df8f4734c10743f2c152cdd0`, dengan implementation final yang diuji `ee624217b062fd4c8f712f6b02075738cbb3d3b7`.
- Same-runtime recovery kini memuat ulang snapshot HPP dan state produksi kanonik setelah optimistic conflict atau hasil commit ambigu. Replay hanya diterima bila operation dan immutable B20 fact persis cocok, tanpa duplikasi ledger, fact, atau kenaikan revision.
- Migration historical authority #30 dibekukan kembali ke byte awal dengan SHA-256 `ae72538b1af5cea666affbe0b4cf855d40754a7fee47012557cfeea548153c86`; perbaikan legacy gap dipindahkan ke migration #31 yang aditif. Public integration outbox kini forced-RLS dan readiness provider memeriksa status forced-RLS itu sebelum menyatakan siap.
- Durable production composition tetap default OFF dan fail-closed. Source lokal lulus focused60/60, independent47/47, full1011 dengan 1009 pass, 0 fail, 1 skip, 1 todo, check396 modules/31 migrations, dependency audit 0 vulnerability, dan source audit P0=0/P1=0.
- Kandidat tetap 101/198 (51,0%), accepted 0/198, red-team accepted 0/25, dan readiness 40/100. Hosted CI, target PostgreSQL, backup/restore, rollback/recovery target, monitoring, COMPANY surface, serta authenticated UAT masih `UNVERIFIED`. Production tidak berubah, `BELUM DEPLOY`, dan `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 9 reporting integration

- `CONFIRMED`; source head `8b58c81c3bc6a0c76e303db151f4def077a0be9a`, branch `codex/sagapos-wave9-integrated`, draft PR #16 di atas Wave 8.
- B20 sekarang memiliki provider PostgreSQL read-only, sealed source/fingerprint adapter, rebuild job dengan retry/DLQ/lease fencing/invalidation, serta Owner-only API/UI untuk 11 family, bounded CSV, pagination dan source drill-down.
- Focused47/47 dan full937 pass/0 fail/1 platform skip/1 B22 TODO dari 939; check377/28 dan production dependency audit0 PASS. Quality run 34297838649 tidak memulai step karena billing (`CI_BILLING_BLOCKED`); Vercel hanya preview.
- B20 tetap 1 local-domain pass/5 partial dan kandidat tetap 101/198. Historical authority, production yield, valuation cost basis, durable job worker/persistence, COMPANY surface, target RLS/performance/recovery/monitoring dan authenticated UAT belum lulus.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED_PARTIAL / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Audited 198/198, red-team accepted 0/25, readiness 40/100. Production tidak berubah dan `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 8 evidence dan recovery hardening

- `CONFIRMED`; source review head `08076b60caa861dcd56028d4ab0f97385ca294b3`, tested implementation `dedb6de6e9a5ecf119a47eab9287b9fdb7966d42`, branch `codex/sagapos-wave8-integrated`, draft PR #15 di atas Wave 7.
- Lima retired route kini merekam metadata bounded setelah auth/role/CSRF dan sebelum body parsing, lalu tetap `410` tanpa mutasi bisnis. PostgreSQL memakai append-only audit provider; pembacaan dibatasi Owner dan server scope. Traffic eksternal tetap `UNVERIFIED`.
- B20 mempunyai domain projection rebuildable, lapisan HPP/COGS, quantity/value waterfall, keluarga laporan, metric dictionary dan drill-down reference. Statusnya 1 local-domain pass/5 partial; provider authority, runtime/API/persistence, permission/RLS, UI/export, direct ledger derivation dan UAT belum terhubung, sehingga kandidat tetap 101/198.
- Package planning diverifikasi terhadap exact Git tree; recovery evidence mengikat SHA candidate/package/backup/graft dan menolak bukti stale, future atau berubah. Backup PGlite terenkripsi hanya synthetic-disposable rehearsal, bukan bukti target PostgreSQL.
- Full 900 pass/0 fail/1 platform skip/1 B22 TODO dari 902; focused32/32; audit independen28/28 dengan P0=0/P1=0; check368/28 dan production dependency audit0 PASS. Quality run 34292997210 nol-step karena billing (`CI_BILLING_BLOCKED`); Vercel hanya preview.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Audited 198/198, red-team accepted 0/25, readiness 40/100. Production tidak berubah dan `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 7 runtime hardening

- `CONFIRMED`; exact source head `2e88a6c33d3c6011876597d81e829c98a7260677`, tested implementation cut `21de309ff5d05a3c4b474e1b18e3f97603844849`, branch `codex/sagapos-wave7-runtime-integrated`, draft PR #14 di atas Wave 6. Coverage tetap 101/198 kandidat; production tidak berubah.
- Planning availability/ATP/replenishment kini memiliki adapter PostgreSQL forced-RLS, server-owned scope, Owner policy API, CAS/HMAC state, serta existing-install credential lifecycle yang fail-closed. Source checker memutus seluruh caller aktif dari checkout v1 dan empat route inventory ESB lama.
- Retained source v21 dapat dibangun menjadi graft read-only minimal yang terikat exact candidate ledger v28, memagari writer/provisioning/seed/upgrade, dipublikasikan atomik, dan lulus rehearsal candidate-to-compat-read-to-candidate tanpa mutasi bisnis.
- Default suite 872 pass/0 fail/1 platform skip/1 B22 TODO dari 874; audit independen focused78/78 dengan P0=0/P1=0; check361/28 PASS dan production dependency audit0. Quality run 34288094401 nol-step karena billing (`CI_BILLING_BLOCKED`); Vercel hanya preview.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Audited 198/198, red-team accepted 0/25, readiness 40/100. Target PostgreSQL/recovery/package/runtime, external caller telemetry, monitoring, serta authenticated/physical UAT belum lulus; `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 6 source hardening

- `CONFIRMED`; exact review head `683c3d9bca88b380e54168eaa76c3f7f4d40f0f2`, branch `codex/sagapos-wave6-integrated`, draft PR #13 di atas Wave 5. Coverage tetap 101/198 kandidat; production tidak berubah.
- Checkout v1 dan empat endpoint inventory ESB lama sekarang `410` sebelum mutation. Availability/ATP/replenishment memakai server scope dan provider inventory authoritative; input stok/timestamp tidak valid ditolak. Exception cancel memvalidasi snapshot HPP kanonik sebelum perubahan order.
- Source kit rollback v21 ditambahkan sebagai reader read-only yang credential/fingerprint-bound, tetapi belum dipasang pada retained artifact atau direhearsal pada target PostgreSQL.
- Full serial 851 pass/0 fail/1 platform skip/1 B22 TODO dari 853; focused 86/86; QA final 25/25; check352/27 PASS. Quality run 34278060744 nol-step karena billing (`CI_BILLING_BLOCKED`); Vercel hanya preview.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Audited 198/198, red-team accepted 0/25, readiness 40/100. Draft tidak boleh merge/deploy; `PRODUCTION_ACTIVATED=false`, `PILOT_ACTIVE=false`, `BUSINESS_READY=false`.

## 2026-09-09 — Inventory/HPP Wave 5 candidate 101/198

- `CONFIRMED`; exact source `3c3d835cc0e0bb3d98ecde30f400dfe61c00cd18`, branch `codex/sagapos-inventory-hpp-wave5-integration`, draft PR #12, menaikkan implemented candidate menjadi 101/198 tanpa mengubah production.
- Kandidat mencakup item/UOM/location, immutable movement dan valuation, recipe/product configuration, production, sales consumption, waste/count, lot/expiry/FEFO, transfer/transit, availability/ATP, dan replenishment policy.
- Full serial 820 pass/0 fail/1 platform skip/1 legacy TODO dari 822 test; focused final 74/74 dan B18/B19 adversarial 27/27; static/type/OpenAPI PASS pada 345 modul dan 27 migrasi. Hosted Quality run 34268550652 tidak memulai step karena billing (`CI_BILLING_BLOCKED`).
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Audited 198/198, red-team accepted 0/25, readiness 24/100. Draft belum boleh merge; `PRODUCTION_ACTIVATED=false`, `PILOT_ACTIVE=false`, `BUSINESS_READY=false`.

## 2026-09-08 — W3 durable remake queue, offline authority, dan rollback v19

- `CONFIRMED`; exact W3 source `39ba12db6ea641dba870dd41a1f7b9c06c7dfc39`, branch `codex/sagapos-inventory-hpp-w3-integrated`, draft PR #9. Queue `order.remake` kini tersimpan atomik sebelum `order.remake.start`, bertahan setelah restart, dan menjaga replay/collision tanpa payment atau loyalty kedua.
- Offline ingestion memverifikasi device outlet aktif dan capability inventory di server, memakai snapshot persisted, serta menyimpan queue/audit/outbox atomik. Replay identik aman; event atau device-sequence dengan fakta berbeda membuat satu review operator tanpa mutasi stok.
- Exact rollback-compatibility source `e1602833f3778aca906f13895d51a88050318252`, draft PR #10 di atas runtime base `682456535a9dc0c930910dba3c9773ab44fcc84c`, dapat membaca dan mengekspor HPP v19 secara opaque. Mode ini fail-closed read-only, mengikat reader ke writer v19 `a5bcda3316cab16b8647c09592b2889e2730e4d8`, dan hanya menerima exact ledger 16 atau 24 migrasi.
- W3 focused 12/12, full 644 pass/0 fail/1 platform skip/2 legacy TODO, check309/24, serta audit replay/tamper/device/race PASS setelah dua P1 ditutup. Rollback compatibility 5/5, audit focused 58/58, check169/16, dan rehearsal v16→v19→rollback-read→v19 deep-equal PASS. Quality CI kedua PR gagal sebelum menjalankan step (`CI_BILLING_BLOCKED`).
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; Accepted 0/198, Implemented candidate 8/198, Audited 198/198, red-team accepted 0/25, readiness 21/100. Kedua PR masih draft; merge, hosted CI, packaging, target-DB rehearsal, encrypted backup/disposable restore, monitoring, staging activation, physical-device serta authenticated operator/finance/security/Owner UAT masih blocker. Production tidak berubah dan `BUSINESS_READY=false`.

## 2026-09-08 — Canonical v19 untuk remake dan offline consumption W2

- `CONFIRMED`; exact source `a5bcda3316cab16b8647c09592b2889e2730e4d8`, branch `codex/sagapos-inventory-hpp-w2-integrated`, draft PR #8. State v19 memperluas W1 dengan production-start identity untuk original, remake, dan offline physical sale.
- `order.remake.start` menghasilkan konsumsi fisik kedua untuk order yang sama tanpa payment atau loyalty commit baru. Replay/collision/restart dan refund-after-production mempertahankan fakta stok/COGS. Queue sebelum production start masih lokal dan belum menjadi durable work item.
- Offline event menyimpan exact event/device sequence, source fingerprint, shortage, provisional COGS, dan `requiresReview`; reuse event/sequence dengan payload berbeda gagal tertutup. Original identity memakai bounded `ORIGINAL:<sha256(orderId)>`; satu order dapat memiliki beberapa consumption dan COGS tetap terhubung lewat `consumptionId`.
- W2 6/6, focused63/0/2 TODO, full638/0/1 skip/2 TODO, check305/24, audit independen orderId80/replay/restart/tamper PASS. Quality CI `CI_BILLING_BLOCKED` pada zero-step run `34236544639`.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; program PRD Accepted 0/198, Implemented candidate 8/198, Audited 198/198, red-team accepted 0/25, readiness 21/100. Production tidak berubah dan `BUSINESS_READY=false`.

## 2026-09-08 — Inventory authority dan shortage costing W1 terintegrasi

- `CONFIRMED`; exact source `0df408243c08a54475fa3c3d43d13a973b12d68e`, branch `codex/sagapos-inventory-costing-w1-integrated`, draft PR #7. Confirmed order sekarang membuat reservation dari snapshot recipe; available turun tanpa mengubah on-hand dan PREPARING mengonversinya menjadi consumption tepat sekali.
- State v18 menggabungkan `inventoryReservations` dan `cogsAdjustments`; migrasi v17 mengisi kedua ledger secara eksplisit dan state v18 parsial ditolak. Shortage memakai provisional COGS, receipt berikutnya membuat FIFO revaluation immutable, silent Rp0 gagal atomik, dan state lama ditandai `COST_MISSING`.
- Cashier cash/zero-total, kiosk reward/complimentary zero-total, dan settled QRIS mempertahankan paid truth serta flagged shortage melalui keputusan server yang tidak dapat dikontrol client. PAYMENT_PENDING tetap tidak membuat reservation; cancel/refund sebelum PREPARING me-release reservation dan refund sesudah consumption tidak menambah stok.
- `npm run check` PASS, clean install audit 0 vulnerability, full suite 631 PASS/0 FAIL/1 platform skip/2 TODO, dan independent critical merged 93 PASS/0 FAIL/2 TODO. Hosted Quality CI nol-step karena billing/spending-limit (`CI_BILLING_BLOCKED`).
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production tidak berubah dan `BUSINESS_READY=false`. Program Inventory PRD: Accepted 0/198, Implemented candidate 5/198, Audited 198/198, red-team accepted 0/25, readiness 21/100. Remake consumption, genuine offline negative stock, target DB/recovery/rollback/security dan authenticated UAT tetap blocker.

## 2026-09-08 — Inventory dikonsumsi saat PREPARING pada kandidat W0

- `CONFIRMED`; source `3c4cbba3b9712c3f4837dc16dbe5483cbec73338` pada draft PR #4 mengubah jalur HPP agar pembayaran tetap stock-neutral dan deduction pertama terjadi ketika fulfillment masuk `PREPARING`.
- Fulfillment dan snapshot HPP commit/rollback atomik, replay worker memuat ulang state otoritatif, state v16 bermigrasi tanpa deduction kedua, cancel sebelum PREPARING tetap netral, dan refund setelah PREPARING tidak mengembalikan bahan secara otomatis.
- Full repository suite lokal dan static/type check lulus; tiga review independen lulus 74/74, 68/68, dan 91/91 focused tests. Hosted CI tidak memulai satu pun step karena billing/spending-limit, sehingga berstatus `CI_BILLING_BLOCKED`, bukan PASS.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`. Preview Vercel bukan aktivasi produk. Runtime production tidak berubah; `BUSINESS_READY=false`.
- `NEEDS CONFIRMATION`: single inventory authority lintas ESB/HPP, reservation available versus on-hand, cancel/refund release, remake consumption, shortage revaluation/COGS, restore rehearsal, dan authenticated UAT.

## 2026-09-08 — Owner-HR single-session UAT lulus di production

- `CONFIRMED`; [Owner Dashboard](https://dashboard.sagapos.site/) dan `/hr` lulus authenticated official-domain UAT: Owner login sekali, HR terbuka tanpa login kedua, read-only People berhasil dan logout mencabut sesi.
- Nginx production hanya membuka `/hr` dan API HR state/command pada host Dashboard; Basic Auth/anonymous containment dan deny jalur HR/Staff lama tetap berlaku. UAT tidak membuat order, payment intent atau payment.
- Runtime aktif tetap exact source `614be99927802e329705f5c7575dd6813a83bac6`. Source durability `e5f669d6c3e3416ee2ae53e78aa136c84d06eeec` menyimpan renderer ingress dan smoke Owner-HR, sudah dipush, serta lulus full394 dan dependency audit0; commit ini tidak diklaim sudah menjadi runtime release baru.
- Status feature `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / OWNER_UAT_PASS`; data workforce masih sintetis sehingga `BUSINESS_READY=false`. Real payroll/payout, payment/QRIS, messaging, hardware dan independent offsite recovery tetap OFF/belum selesai.

## 2026-09-07 — HR langsung dari sesi Owner SagaPOS production

- `CONFIRMED`; exact SagaPOS source `614be99927802e329705f5c7575dd6813a83bac6` pada branch `codex/sagapos-production-release-50b3` sudah dipush dan aktif di `dashboard.sagapos.site`.
- Owner cukup login sekali ke SagaPOS. Halaman `/hr` memakai sesi Owner yang sama dan membuat delegasi server-to-server berumur pendek ke SagaWork; tidak ada form atau login SagaWork kedua di browser.
- Integrasi memakai exact organization/owner binding, HMAC plus nonce, token terenkripsi server-side, per-command permission refresh, revocation, anonymous denial dan role grant `hr` least-privilege.
- PASS SagaPOS full394, SagaWork full1085, type/lint/build/OpenAPI, dependency audit high0, encrypted backup plus disposable restore pada kedua runtime, end-to-end delegated read, monitor dan rollback/reactivation drill. Pengujian tidak membuat order atau payment.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED`; browser Owner acceptance sudah lulus pada 2026-09-08. `BUSINESS_READY=false` karena sumber data workforce masih sintetis; payroll payout, payment/QRIS, messaging dan hardware tetap OFF.

## 2026-09-07 — Owner-only Saga POS production pilot aktif di sagapos.site

- `CONFIRMED`; exact SagaOPS/Saga POS source `60b3426e59698014639113070c89bfa195eb5100`, branch `codex/sagapos-production-release-50b3`, sudah dipush dan aktif pada Hostinger VPS untuk keluarga domain `sagapos.site`.
- Runtime production memakai PostgreSQL persistent single-writer, Owner hash authentication, Basic Auth containment di surface publik, HTTPS/Nginx valid, monitor systemd aktif, dan pilot expiry tujuh hari sampai 2026-09-14 14:29:17 UTC.
- Surface terverifikasi dengan Owner authentication: Dashboard, Admin, Cashier, KDS, dan Kiosk. Owner dapat membuka Cashier surface untuk pilot/operator review; public anonymous tetap ditahan `401`.
- PASS focused 12/12, full regression 393/393, dependency audit high 0, secret scan no-match, migration preflight 16, encrypted backup + disposable restore, health/monitor, browser smoke authenticated 5 surface, dan cleanup tar transport SagaPOS dari `/tmp`.
- Status `SOURCE_PUSHED / LOCAL_VALIDATED / PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED / OWNER_PILOT_ACTIVE`; `BUSINESS_READY=false`. Payment/QRIS eksternal, payroll/payout, messaging, NFC, printer, offsite backup, dan UAT perangkat nyata tetap belum diaktifkan.

## 2026-09-07 — Integrated release-lock handoff candidate

- `CONFIRMED`; exact integration source `5a90a18866e0d16bb1639a53f544024d961a04f5`, branch `codex/sagapos-release-lock`, built on integrated HRPOS/RLS base `682456535a9dc0c930910dba3c9773ab44fcc84c` and includes recovery guard v4 `227e0d66fe26b5805eb4328ada1fef7bcb8cad86`.
- Candidate combines fail-closed exact release/provision/rollback path guards with an OS release lock for monitoring installation and destructive storage pruning. Approved prune is serialized; monitor dry-run retention remains readable so operational monitoring does not create false failures.
- PASS focused release/monitor/storage 6/6, focused Admin+Kiosk browser 29/29, full regression 387/387, static/type/OpenAPI 191 module/16 migration, shell syntax via VPS, dependency audit0 and staged diff secret scan0.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; VPS staging current remains the prior integrated source until Release Lead completes credential, backup/restore, UAT, containment, rollback and deployment gates. `STAGING_READY=false`, `PRODUCTION_DEPLOYED=false`, `PRODUCTION_ACTIVATED=false`, `BUSINESS_READY=false`.

## 2026-09-07 — Protected HRPOS staging candidate v4 dan recovery guard

- `CONFIRMED`; exact source head `227e0d66fe26b5805eb4328ada1fef7bcb8cad86`, integrated HRPOS/RLS base `682456535a9dc0c930910dba3c9773ab44fcc84c`, branch `codex/hrpos-staging-release-v4-recovery-guards` pushed dan clean.
- Kandidat menghubungkan HR dan Staff saja melalui login provider, explicit role grant, exact POS/SagaWork source pair, tenant binding, server-side encrypted session, per-command re-introspection, bounded revocation retry, serta allowlist route staging. Kiosk, Cashier, KDS, Dashboard, Admin, fixture login dan payment tetap tidak diekspos oleh konfigurasi ini.
- Credential dibaca sebagai systemd service credentials dan konfigurasi fail-closed terhadap source/tenant/grant/HTTPS yang tidak cocok. Release/provision/rollback menolak nested/traversal alias, symlink, non-canonical atau non-root directory dan setengah pasangan credential; missing half tidak dibuat ulang atau dirotasi otomatis.
- PASS red-green contract, static/type/OpenAPI 166 module/16 migration, full387/387, focused release/security18/18, shell syntax, dependency audit0, diff/public-safety scan0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100 tidak dinaikkan.
- `STAGING_READY=false`, `PRODUCTION_DEPLOYED=false`, `PRODUCTION_ACTIVATED=false`, `BUSINESS_READY=false`. Fresh exact-pair provider credentials, encrypted backup/disposable restore, authenticated HR+Staff staging UAT, Nginx/rollback rehearsal, offsite recovery dan owner/device/finance acceptance masih wajib.

## 2026-09-07 — Official-domain release lane dan guarded storage retention

- `CONFIRMED`; exact application release `40b9a6cc962602aae0ab151f5fcfd7e80852ae1d` diterima pada private staging Hostinger dengan 13/13 migration. Dokumentasi acceptance berada pada source `ecd84fd96124c0cb7c98a62ffbe282a1a6a98ef1`.
- Pengembangan terintegrasi menggunakan `staging.sagapos.site` melalui akses privat. Kiosk, Cashier, KDS, Dashboard, Admin, Staff dan API memiliki hostname resmi terpisah untuk cutover berikutnya; public production tetap maintenance `503` dan external staging tetap `403`.
- Release memakai exact pushed commit, encrypted backup/disposable restore, atomic switch, exact-health check, current-plus-rollback pointer dan rollback/forward rehearsal. Retention bersifat dry-run-first dan hanya boleh menghapus release Saga POS selain current/rollback, transfer archive usang serta restore database disposable; backup tidak ikut dipangkas.
- Final full regression 380/380 PASS; browser synthetic Kiosk→KDS/Owner/Admin/Cashier, durable-session restart, Axe serious/critical0 dan overflow0 lulus tanpa transaksi nyata. Cleanup terkontrol mengembalikan sedikitnya 841.486.906 byte file release/upload.
- Status `PRIVATE_STAGING_EXACT_RELEASE_ACCEPTED / PRODUCTION_NOT_ACTIVATED / BUSINESS_READY=false`; readiness operasional tetap sekitar 60/100. Offsite backup, production identity/RLS, monitoring, physical-device UAT dan exact activation approval masih menjadi gate.

## 2026-09-07 — Hostinger domain containment, TLS, dan private staging

- `CONFIRMED`; owner memilih `sagapos.site` dan Hostinger VPS sebagai target hosting Saga POS. Exact source `b14179ac9fd9dcc6ca4d15b479ac64e3b0e44ff8`, core infrastructure `b25307cab685310d7af50d377446f7e5483d66e1`.
- Seluruh hostname Saga POS yang sudah diimpor kini dimiliki virtual host khusus sehingga tidak lagi jatuh ke produk lain. HTTP diarahkan ke HTTPS; hostname production-intended menampilkan halaman maintenance `no-store`, sedangkan staging sintetis menolak akses internet langsung dan hanya tersedia melalui jalur privat.
- Sertifikat TLS mencakup seluruh hostname yang dipilih dan renewal simulation lulus. Nginx, DNS, security headers, mobile/desktop visual, Axe serious/critical0, overflow0, dependency0, secret/public-safety scan serta regression374/374 lulus; produk Saga lain tetap sehat.
- Status: `DOMAIN_CONTAINED / TLS_ACTIVE / PRIVATE_STAGING_REACHABLE / PRODUCTION_NOT_ACTIVATED / BUSINESS_READY=false`. Readiness operasional tetap sekitar 60/100; tidak ada public operator/staff/API activation, transaksi nyata, payment canary, promo, atau perubahan hardware.
- Gate berikutnya: production identity/session, service dan database production terisolasi, encrypted offsite backup plus disposable restore, monitoring, rollback rehearsal, exact-release smoke, perangkat dan approval activation.

## 2026-09-07 — Reversal credit supplier terkontrol

- `CONFIRMED`; source head `37b518ca1d44353c0428e0280d91e447cc1fc4c7`, core `4ba5ee5f6b2334ee0136112779937c1f96ee550a`. Finance dapat meminta reversal untuk credit memo supplier yang sudah `POSTED`; Owner berbeda menyetujui atau menolak tanpa mengedit atau menghapus dokumen asal.
- Approval menandai credit `REVERSED`, memulihkan outstanding invoice, dan membuka kembali retur tertaut untuk credit koreksi. Rejection mempertahankan credit/payable aktif. Stok dan payment tidak berubah pada request maupun keputusan.
- History reversal versioned, bounded, exact-idempotent, fingerprint-validated dan tamper-detected. PostgreSQL commit failure rollback-safe; state v15 bermigrasi ke v16.
- PASS full374/check182/OpenAPI3.1/migrations12, domain/durable/browser390/1440, Axe0/contained-overflow/touch44/page-error0, dependency0 dan public-safety scan. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100.
- `NEEDS CONFIRMATION`: partial-credit/restocking-fee policy, supplier payment/bank settlement, tax/GL distribution, actual inputs, offsite restore, device UAT dan Wave 9.

## 2026-09-07 — Retur supplier tertaut credit memo

- `CONFIRMED`; source head `2f4d9d1d396b8e6f0583c2ff4086dce929b412a5`, core `f8add758aadd0fbf0ca9d0345c6a638141cd381d`. Finance dapat menautkan satu `CREDIT_EXPECTED` physical return ke satu supplier credit memo pada satu posted invoice yang tidak ambigu.
- Nominal credit dikunci ke nilai retur server. Supplier, PO, invoice dan return reference harus satu lineage; duplicate link, wrong amount/disposition dan multi-invoice ambiguity fail closed.
- Finance recording hanya menandai `CREDIT_RECEIVED_PENDING_POST`; payable, stock dan payment tidak berubah. Owner berbeda memposting sehingga payable berkurang dan retur menjadi `CREDIT_POSTED`, tanpa membuat supplier payment.
- State v15 migration/restore, PostgreSQL rollback/restart, browser Finance/Owner 390/1440, Axe0/overflow0/touch44/page-error0, focused24 dan full371 lulus. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100.
- `NEEDS CONFIRMATION`: partial financial credit/restocking fee, posted-credit correction/reversal, supplier settlement, tax distribution, actual inputs, offsite restore, device UAT dan Wave 9.

## 2026-09-07 — Retur fisik dan replacement supplier

- `CONFIRMED`; exact source head `8b422f32b4edf398b1cdbd80703fbddc0b711b8a`, core `fee5605ace3c7c3fd05326bd6776e7c58787a748`. Owner dapat mencatat partial return terhadap receipt yang berasal dari PO, dengan referensi, alasan/kondisi dan pilihan replacement atau credit.
- Pengiriman balik mengurangi quantity serta nilai inventory berdasarkan receipt snapshot. Replacement memulihkan quantity/nilai yang sama hanya setelah benar-benar diterima. Jalur credit tetap `SHIPPED_AWAITING_CREDIT` dan tidak otomatis mengubah AP atau membuat payment.
- State v14, exact idempotency, cumulative return cap, role/version guard, canonical fingerprint, inventory reconciliation, PostgreSQL rollback/restart dan return/replacement variance evidence tervalidasi. Owner Admin serta Dashboard menampilkan status dan nilai terbuka.
- PASS full368/368, check178/OpenAPI3.1/migrations12, browser390/1440 Axe0/overflow0/touch44/page-error0, dependency0 dan public-safety scan. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: link return-credit tanpa auto-post; maker-checker correction/reversal/resubmit; modifier/packaging/prep consumption. Data nyata, offsite restore, device UAT dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Supplier price credit memo

- `CONFIRMED`; exact source head `f539238dd1dcda0dfa7c150379d899ff96ee53ce`, core `9e4cd41d567ca95c69447532897bdbab1cffe260`. Finance dapat mencatat credit memo non-stok terhadap invoice supplier `POSTED_UNPAID`; nomor dokumen unik per supplier dan pending credit mereservasi outstanding.
- Owner berbeda memposting koreksi. Posting mengurangi open payable menjadi partial atau closed-by-credit tanpa mengubah stock, HPP pembelian, receipt, PO atau payment.
- State v13, exact idempotency, version guard, aggregate credit reconciliation, PostgreSQL rollback/restart dan Finance/Admin role isolation tervalidasi. Dashboard merangkum pending/posted credit dan outstanding tanpa mengklaim settlement bank.
- PASS focused49/49, full364/364, check177/OpenAPI3.1/migrations12, mobile390 Axe0/overflow0/touch44/page-error0, dependency0 dan public-safety scan0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: stock return/replacement; correction/reversal/resubmit; modifier/packaging/prep cost-consumption. Data nyata, offsite restore, device UAT dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Independent invoice approval dan AP posting

- `CONFIRMED`; exact source head `887095ef2d72b9de025112ff4bc76b985636828c`, core `e4b99a181956d14f9881c929b0f01fe7f8727582`. Invoice `READY_FOR_APPROVAL` kini ditinjau melalui surface Finance least-privilege; pembuat invoice yang sama tidak dapat menjadi reviewer.
- Approval menghasilkan `APPROVED_NOT_POSTED`; Owner berbeda dari reviewer Finance dapat memposting open payable `POSTED_UNPAID`. Posting tidak membuat supplier payment, bank transfer atau external mutation.
- Approval/posting history versioned, exact-idempotent dan tervalidasi saat PostgreSQL restart. Dashboard merangkum review queue, approved-not-posted, posted-unpaid dan outstanding AP.
- PASS full362/362, HPP26, Finance browser1, legacy match1, check176/OpenAPI3.1/migrations12, mobile390 Axe0/overflow0/touch44/page-error0, dependency0 dan changed-file secret scan0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: supplier credit/replacement; correction/reversal/resubmit; modifier/packaging/prep cost-consumption. Data nyata, offsite restore, device UAT dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Supplier invoice three-way matching

- `CONFIRMED`; exact source head `4e5203d3552eb883df6c0fa5aaf4f4b8d61e2ec4`, core `130581e6590aa7b7bc0c85297e720b1204d977ba`. Owner Admin dapat mencatat invoice supplier parsial dan membandingkan kuantitas, harga serta landed fee terhadap PO dan accepted receipt.
- Match menggunakan tolerance nol. Invoice cocok menjadi `READY_FOR_APPROVAL`, bukan dibayar; discrepancy menjadi `BLOCKED`. Rejected goods tidak dapat ditagih, nomor invoice unik per supplier, dan immutable receipt cutoff mempertahankan bukti historis setelah receipt berikutnya.
- Owner Dashboard menampilkan supplier, PO aktif, invoice cocok/diblokir dan nilai siap diajukan. HPP state v11, PostgreSQL rollback/restart dan exact replay tervalidasi.
- PASS full360/360, focused54/54, final domain/browser29/29, check175/OpenAPI3.1/migrations12, mobile390 Axe0/overflow0/touch44/page-error0, dependency0 dan high-confidence secret0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: maker-checker invoice approval/posting; supplier credit/replacement; audited correction/reversal. Data bisnis nyata, backup offsite, UAT perangkat dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Receiving discrepancy dan landed-fee allocation

- `CONFIRMED`; exact source head `6e1d7f7ddaeb813b918c4e3bf3e8c8afe5e7e1e1`, core `e3bc4e3dd2cfa650d2766a8b1e54010d0edb99f2`. Owner Admin dapat memisahkan kuantitas barang baik dan ditolak saat menerima PO, memilih alasan rusak/hilang/salah barang/kedaluwarsa, serta mencatat biaya shipping, handling atau other.
- Rejected quantity memproses pemenuhan supplier tetapi tidak pernah masuk stock/HPP; backorder tetap outstanding. Additional fee dialokasikan deterministik hanya ke item yang diterima dan masuk moving-average HPP. Reject-only receipt bernilai nol, durable dan exactly-once.
- PASS full357/357, focused51/51, static/check175/OpenAPI3.1/migrations12, Chromium390 Axe serious-critical0/overflow0/touch44/page-error0, dependency0 dan secret0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: invoice/AP dan three-way matching; supplier credit/replacement; maker-checker correction/reversal. Data bisnis nyata, backup offsite, UAT perangkat dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Admin purchase order multi-item

- `CONFIRMED`; exact source head `3393c1836043655925a6716a685e01b63a96fff3`, core `184bfdd729de99d865092d170774f5e5805477c7`. Owner Admin dapat membuat dan mengedit PO `OPEN` berisi beberapa bahan dari master yang sudah ada, menambah/menghapus line, serta melihat jumlah item dan total biaya secara langsung.
- UI membatasi 100 line sesuai guard backend, menolak bahan duplikat sebelum submit, mengunci form selama request, memulihkan fokus setelah line dihapus, dan mempertahankan lock perubahan setelah receipt pertama. Harga, version, idempotency dan supplier/ingredient authority tetap divalidasi server.
- PASS full353/353, focused Admin/HPP/durable42/42, static/type/OpenAPI175 modul/3.1/12 migrasi, browser390 Axe serious-critical0/overflow0/touch44/reduced-motion, dependency0 dan secret0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness sekitar 60/100.
- Next: damaged/lost receiving serta alokasi fee; invoice/AP dan three-way matching; maker-checker correction/reversal. Data bisnis nyata, backup offsite, UAT perangkat dan Wave 9 tetap `NEEDS CONFIRMATION`.

## 2026-09-07 — Kontrol revisi dan pembatalan purchase order

- `CONFIRMED`; exact source head `ef4077a1958be07d039b8c04bca4a488b1baf095`, core `23ed7da7fdb0214f975de454df94589907b54b0d`. Owner dapat merevisi supplier, expected date, kemasan, kuantitas, konversi dan biaya PO hanya sebelum receipt pertama.
- PO `PARTIALLY_RECEIVED` dapat dibatalkan untuk menutup sisa outstanding tanpa membalik receipt, stok, inventory value atau moving-average HPP yang sudah masuk. PO `RECEIVED` tidak dapat dibatalkan; PO `CANCELLED` tidak dapat diedit atau menerima stok baru.
- Creation/amend/cancel/receipt replay exactly-once dengan optimistic version, durable revision/fingerprint chain dan restart validation. Admin menampilkan revision, edit form, locked explanation dan destructive confirmation.
- PASS full352, final focused40, check175/OpenAPI3.1/migrations12, Admin390/1440 Axe0/overflow0/touch44, dependency/secret0. Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100. Multi-line Admin editor, damage/loss, fee/AP, maker-checker, data nyata, offsite recovery dan operational acceptance tetap terbuka.

## 2026-09-07 — Partial receiving tertaut purchase order

- `CONFIRMED`; exact source head `84cc6cad4d0a666dc4437b44757f7ba2b10c2125`, core implementation `8ae899b10a4052933c4b9472e479b255007d7f8a` dan documentation `6aa01dd967ec4f85fc386619da487009105dd44b` pushed. Owner Admin dapat menerima sebagian atau seluruh sisa line PO dengan progress `OPEN → PARTIALLY_RECEIVED → RECEIVED`.
- Biaya, supplier snapshot, kemasan dan konversi receipt berasal dari PO server; over-receipt, line/cost/conversion mismatch dan payload berbeda pada idempotency key sama ditolak. Linked receipt, stock, inventory value, moving-average HPP, PO progress dan audit commit atomik serta restart-reconciled.
- Aggregate PO total di luar safe-integer ditolak sebelum mutation. PASS focused47/final37/numeric20, full349, check175/OpenAPI3.1/migrations12, Admin390/1440 Axe0/overflow0/touch44, dependency/secret0. Run full awal mengalami satu Windows socket exhaustion; same test 3/3 dan rerun full concurrency2 lulus tanpa melemahkan assertion.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; multi-line Admin authoring, edit/cancel, damage/loss, fee, invoice/AP, maker-checker, real inputs, production/payment/business readiness tetap terbuka.

## 2026-09-07 — Supplier master dan PO internal

- `CONFIRMED`; implementation source `88e830ef02a3de3dfa2ceaad2bde7db8594e4f1b` dan documentation head `8febd89b801e2dd02f181b2ee8dae8aff9f23035` pushed. Owner Admin dapat menyimpan supplier reusable serta membuat purchase order internal berstatus `OPEN` sebelum barang diterima.
- PO menyimpan snapshot supplier, expected date, package/base-unit conversion, kuantitas, unit cost, total, alasan, aktor, versi dan idempotency. Supplier nonaktif, tanggal invalid, duplikasi bahan, payload berubah pada key sama dan state tampering ditolak. Rename supplier tidak menulis ulang snapshot PO.
- PO tidak mengirim pesan eksternal dan tidak mengubah stock/cost; receiving tetap mutation terpisah. PASS focused45/full346, check175/OpenAPI3.1/migrations12, Admin390/1440 Axe0/overflow0/touch44, dependency/secret0.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; multi-line Admin authoring, edit/cancel, PO-linked partial receiving, fee/AP, maker-checker, real business inputs, production/payment/business readiness tetap terbuka.

## 2026-09-07 — Technical inventory period close

- `CONFIRMED`; exact source `0a41686e8bca6d72b130f3b4be5011a3ee830fd5` dan documentation `0758959f9e27be6eb88533afa3cd28662b0f42f9` pushed. Owner Admin dapat menutup pasangan full count berurutan dengan reference/timestamp/version boundaries immutable.
- Server mewajibkan count completed, opening lebih lama, exact ingredient coverage dan chain dari closing count periode sebelumnya. Idempotency hanya dapat replay pasangan sama; overlap/reused closing dan state tampering fail closed saat restart.
- PASS focused44/full345, check175/OpenAPI3.1/migrations12, Admin390/1440 Axe0/overflow0/touch44, dependency dan secret scan nol. Status `SOURCE_PUSHED / LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; ini technical lock, bukan accounting close atau maker-checker acceptance. Production/payment/business readiness tidak berubah.

## 2026-09-07 — Konsumsi stok dari order paid

- `CONFIRMED`; source `eb3d60bfd169f0bd7161378156662aa4380e53c7` dan release record `4e7343ec1775a18cc9ce503f535fe0cb2bb1d3fc` sudah dipush. Transisi pembayaran authoritative kini mengurangi saldo bahan dari snapshot resep immutable secara exactly-once; order pending/failed tidak memengaruhi stok.
- Mutation `SALE_CONSUMPTION` hanya dibuat sistem. Shortage dicatat eksplisit untuk rekonsiliasi tanpa membatalkan pembayaran yang sudah captured; resep tidak lengkap tetap menjadi coverage gap, bukan pemakaian atau HPP nol palsu. Order/payment dan proyeksi HPP dipersistenkan dalam satu transaksi PostgreSQL dengan rollback runtime saat commit gagal.
- Admin membedakan penjualan terbayar dari waste dan menampilkan referensi order, saldo sebelum/sesudah serta shortage. PASS focused43/43, full344/344, check175/OpenAPI3.1/migrations12, browser390/1440 Axe0/overflow0, dependency dan secret scan nol.
- Delivery `SOURCE_PUSHED / LOCAL_VALIDATED / STAGING_BUILD_READY / IMPLEMENTED_NOT_DEPLOYED`; redeploy protected preview tertahan batas harian Vercel. Deployment preview sebelumnya tetap tersedia tetapi bukan exact source ini. Production/payment activation/business readiness tidak berubah; period close, modifier/packaging/prep, reversal maker-checker, PO/refund/settlement, data nyata, offsite restore dan Wave 9 tetap terbuka.

## 2026-09-07 — Owner Dashboard modular dan protected preview

- `CONFIRMED`; exact implementation source `96ca11a9006269fcafd906a2aa0b67d57789aa14` sudah dipush. Owner Dashboard berubah dari satu halaman editorial panjang menjadi application shell responsif dengan sidebar/drawer dan 12 deep-linked modules: overview, sales, orders, catalog, inventory/HPP, purchasing, finance, workforce, member, integrations, reports, dan settings.
- Modul yang memiliki fakta server menampilkan KPI, alert, queue, hourly sales, paid orders, payment, financial reconciliation, theoretical usage, full-count variance dan CSV. Purchasing/Workforce/Member menyebutkan gap backend/provider secara eksplisit dan tidak mengarang PO/AP, payroll, promo, atau customer analytics.
- Polling live hanya pada overview; module historis/form memakai refresh manual agar focus, disclosure, selected count dan scroll stabil. Dashboard tetap read-only dan Admin tetap mutation surface owner-only.
- PASS static/type 173 modules/OpenAPI3.1/12 migrations, focused browser, final serial regression340/340, seluruh 12 module pada 390/1440 Axe serious-critical0 dan page overflow0, dependency0 serta changed-file secret heuristic0. Protected operator Vercel preview refreshed dan anonymous access tetap ditantang Vercel Authentication.
- Delivery `LOCAL_VALIDATED / PROTECTED_OPERATOR_PREVIEW_DEPLOYED`; bukan production activation atau business readiness. Overall readiness tidak dinaikkan dari preview; PO/AP, expense/P&L, Customer Platform, HR production acceptance, durable production DB, offsite restore, hardware, domain, monitoring dan payment activation tetap terbuka.

## 2026-09-06 — Jejak bukti variance bahan

- `CONFIRMED`; exact source `b8fa7a700847033fa5fe6456d6c5b18c57e5b78d` sudah dipush. Delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100. Disclosure evidence bertahan saat polling, mendukung keyboard/touch, dan dibersihkan saat logout.
- Owner Dashboard kini menghubungkan setiap bahan pada laporan actual-versus-theoretical ke receipt pembelian dan waste/pengurangan bernama dalam pasangan full count yang dipilih. Disclosure ringkas mempertahankan scanability dan tetap terbuka saat background refresh.
- Projection owner-only/no-store menampilkan waktu, supplier/alasan, quantity, nilai dan referensi UI pendek; actor, idempotency/fingerprint, data customer/payment dan payload receipt mentah tidak diteruskan. Total bukti tetap lengkap, tampilan/CSV newest-first dibatasi global 200 dengan `shown/total/truncated` eksplisit dan formula-safe.
- Evidence: focused 6/6, full regression 339/339, static/type/OpenAPI 172 modul/12 migrasi, Chromium 390/1440 Axe serious/critical 0, touch target 48px, polling/overflow/reduced-motion, dependency0 dan secret scan0. Tidak ada dependency/migrasi/deploy; period approval lock, sale consumption, real inputs, offsite restore dan Wave 9 tetap terbuka.

## 2026-09-06 — Pemilihan periode inventory historis

- `CONFIRMED`; exact source `5099c9ef4c8efae4c9f94fae9f8c514478dcc763` sudah dipush. Delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100.
- Owner Dashboard dapat memilih pasangan full count pembuka dan penutup yang sudah `COMPLETED`, mempertahankan pasangan saat polling, mengekspor CSV untuk periode yang sama, dan kembali ke dua count terbaru.
- API mewajibkan kedua referensi bersama, membatasi format/ukuran, menolak unknown atau closing yang tidak lebih baru dengan safe `422`, serta tetap owner-only/no-store. Tidak ada free-form inventory date, mutation stok, perubahan payment, dependency atau migrasi.
- Evidence: focused 30/30, full regression 338/338, static/type/OpenAPI 172 modul/12 migrasi, Chromium 390/1440 Axe serious/critical 0, touch/keyboard/overflow/reduced-motion, dependency0 dan added-line secret scan0. Explicit period close/approval lock, modifier/packaging/prep, maker-checker, real data, offsite restore dan Wave 9 tetap terbuka.

## 2026-09-06 — Actual versus theoretical inventory variance

- Klasifikasi `CONFIRMED`; exact source `c99add2ca8fa53947823bc514f94c2531d6ee6a9` sudah dipush. Delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; readiness tetap sekitar 60/100.
- Owner Dashboard menghitung actual quantity/value dari full count pembuka + receipt setelah pembuka sampai penutup - full count penutup, lalu membandingkannya dengan theoretical recipe snapshot dari order `PAID/COMPLETED`. Recorded waste/damage/internal-use/loss disajikan sebagai penjelas dan tidak dikurangkan dua kali.
- Laporan membutuhkan dua completed full counts terbaru dan gagal tertutup pada coverage count berbeda, paid timestamp hilang, recipe/order coverage tidak lengkap, atau actual negatif. Total menjadi `null` saat partial. CSV owner-only memakai `no-store` dan netralisasi formula spreadsheet.
- Perbaikan durability menyimpan cash-order `paidAt` authoritative ketika payment object tidak memilikinya, sehingga restart tidak memindahkan penjualan ke waktu fallback repository.
- Evidence: slice 5/5, focused lintas-surface 28/28, full regression 338/338, static/type/OpenAPI 172 modul/12 migrasi, PostgreSQL restart, Chromium 390/1440 Axe serious/critical 0, keyboard/focus/overflow/touch/reduced-motion, dependency0 dan added-line secret heuristic0. Historical count selector, modifier/packaging/prep, maker-checker correction/reversal, data bisnis nyata, offsite restore dan Wave 9 tetap terbuka.

## 2026-09-06 — Full inventory count atomik

- Klasifikasi `CONFIRMED`; source final `87e878f06d383fc851684cdc171744d1abf691cb` pada branch Saga POS. Scope hanya Kopi Saga F&B; delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner Admin kini memiliki full-count terpisah dari cycle count: seluruh bahan dengan saldo terkelola wajib diisi dari hasil fisik yang sengaja tidak diprefill, lalu direview dan dikonfirmasi. Sesi selesai menyimpan coverage, before/after, delta nilai, actor, alasan, waktu, dan movement terhubung.
- Domain menolak bahan hilang/duplikat, payload berubah pada idempotency key yang sama, version conflict, orphan movement, urutan sesi rusak, dan state tampered. Satu kegagalan commit Postgres membatalkan memory dan database bersama; retry bersih menghasilkan satu sesi.
- Evidence exact source: focused domain/browser/durable 29/29, full regression 332/332 concurrency 2, static/type/OpenAPI 169 modul/12 migrasi, Admin 390/1440 reduced-motion dengan Axe serious/critical 0, touch target/keyboard/overflow dan visual review lulus; dependency production 0 dan added-line secret heuristic 0.
- Full count menjadi calon anchor pembuka/penutup, bukan laporan actual HPP. Actual-vs-theoretical, sale consumption, maker-checker correction/reversal, transfer gudang, data bisnis nyata, offsite restore dan Wave 9 tetap terbuka. Readiness sekitar 60/100; production, payment, promo, payroll, activation dan business readiness tidak berubah.

## 2026-09-06 — SagaOPS hosted operator link audit

`NEEDS CONFIRMATION`; read-only Vercel audit setelah source `916bac28dd994966b607d629aebbd6741524419f` dipush menemukan project operator masih memiliki deployment immutable berstatus `Ready` dan anonymous request ke deployment ditantang HTTP 302, tetapi alias project `/dashboard` memberi HTTP 404 `DEPLOYMENT_NOT_FOUND`. Fitur theoretical usage tetap `IMPLEMENTED_NOT_DEPLOYED`; tidak ada redeploy otomatis. Jangan membagikan alias sebagai usable Dashboard/KDS sampai exact-source release, protection, alias, rollback dan smoke diverifikasi melalui gate terpisah.

## 2026-09-06 — Pemakaian bahan teoretis dari menu paid

- Klasifikasi `CONFIRMED`; source `916bac28dd994966b607d629aebbd6741524419f` pushed pada branch Saga POS. Scope hanya Kopi Saga F&B; delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner Dashboard kini menghitung kuantitas bahan teoretis dari snapshot resep immutable × quantity menu `PAID/COMPLETED` per tanggal bisnis WIB, menampilkan sumber menu, cost snapshot, coverage tertimbang quantity, resep yang belum lengkap, dan CSV owner-only.
- Coverage parsial dipromosikan ke `Perlu ditindak`; verified subset tidak pernah disebut total seluruh penjualan. Actual usage tetap unavailable sampai ada stock count pembuka/penutup. Resep modifier, packaging dan stock-mutating sale consumption belum diimplementasikan.
- Validasi final: focused 30/30 lalu 19/19, full 330/330 concurrency 2, static/type/OpenAPI 169 modul/12 migrasi, restart PostgreSQL, 390/1440 browser, Axe serious/critical 0, no overflow, internal touch-scroll, dependency audit 0 dan added-line secret heuristic 0. Tidak ada dependency/migrasi/payment/HR/provider baru.
- Readiness tetap sekitar 60/100; Waves 1–8 PARTIAL, Wave 9 deferred. Production, real payment, promo, payroll, activation dan business readiness tidak berubah.

## 2026-09-06 — Cycle count, waste ledger, dan Dashboard stok

- Klasifikasi `CONFIRMED`; source final `17d57a281da53fe3be3882b37af9acd00316d09e` pada branch Saga POS. Scope hanya Kopi Saga F&B; delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner Admin kini dapat menyimpan saldo fisik absolut melalui cycle count atau mengurangi saldo dengan alasan basi/kedaluwarsa, waste produksi, rusak, pemakaian internal, sampel/promosi, dan hilang/pencurian. Mutasi owner-only, versioned, idempotent, beralasan dan menolak stok negatif.
- Ledger menampilkan kuantitas sebelum/sesudah, delta nilai HPP, actor dan waktu. HPP state v3 memutar ulang receipt serta movement menurut versi dan gagal tertutup bila fingerprint, delta, saldo atau ingredient cost tidak cocok. Count nol mempertahankan unit cost terakhir tanpa menyisakan nilai persediaan.
- Owner Dashboard menampilkan nilai bahan diterima dan waste/pengurangan pada tanggal bisnis WIB yang dipilih; selisih cycle count tidak diam-diam diklasifikasikan sebagai waste. Snapshot HPP transaksi lama tetap immutable.
- Validasi: focused final 27/27, full 324/324 dengan concurrency 2, static/type/OpenAPI 166 modul/12 migrasi; Admin 390/1440 dan Dashboard 1024/1440, Axe serious/critical 0, touch/overflow/reduced-motion serta visual review lulus. Dependency audit 0 dan scan signature secret pada baris tambahan 0. Unbounded run sempat OOM pada host; assertion dipertahankan dan seluruh suite lulus pada konfigurasi bounded.
- HPP aktual tetap belum tersedia: sale consumption, opening/closing period count, modifier/packaging recipe, full-count approval dan correction/reversal masih terbuka. Readiness tetap sekitar 60/100; Waves 1–8 PARTIAL, Wave 9 deferred, production tidak berubah.

## 2026-09-06 — Penerimaan pembelian dan moving-average HPP

- Klasifikasi `CONFIRMED`; source final `a742d5f98608c3729b7e80f523a450346499295d` pada branch Saga POS. Scope hanya Kopi Saga F&B dan status `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner/Admin kini dapat mencatat penerimaan supplier per bahan dengan kuantitas kemasan, konversi ke gram/ml/pcs dan total biaya. Server memperbarui saldo kuantitas/nilai serta moving-average biaya satuan secara idempotent; recipe HPP memakai biaya tersebut tanpa menulis ulang snapshot transaksi lama.
- Persistence HPP v2 pulih setelah restart dan memverifikasi ulang fingerprint kanonik, total, konversi, waktu serta alasan. Base unit dan biaya purchase-managed tidak dapat diedit diam-diam setelah receipt.
- Moving-average mempertahankan presisi sampai enam desimal per base unit; pembulatan Rupiah baru dilakukan pada total line resep. Batas quantity receipt dan saldo diselaraskan agar nilai maksimum yang diterima tetap restart-safe. Validasi: focused 31/31, full regression 320/320, static/type/OpenAPI 166 modul/12 migrasi, Admin 390/1440px dengan Axe serious/critical 0, touch minimal 44px, tanpa overflow, audit dependency 0 dan scan restricted-data 0.
- Ini masih HPP teoretis. Data bisnis nyata, sale consumption, stock count/waste/adjustment, modifier/packaging, PO/partial receiving dan actual-versus-theoretical belum selesai. Readiness tetap sekitar 60/100; Waves 1–8 tetap PARTIAL dan Wave 9 deferred.

## 2026-09-06 — Dashboard Owner dan KDS protected review

- Klasifikasi `CONFIRMED`; exact application source `c10167e4d54afd3977864fa9b9d43a78c4510066`, release record `fa712247cb57d456e2da5b1b5270becb58c09bfc`, dan Vercel deployment `dpl_9D2YNBVHsB8yEgXc2JArAS3nDRW9` berstatus Ready.
- Dashboard Owner dan KDS kini dapat direview lintas perangkat melalui URL deployment Vercel yang dilindungi Vercel Authentication. Request anonim ke kedua surface terverifikasi redirect `302` ke login Vercel; alias pendek yang tidak terlindungi dihapus dan merespons `404`.
- Scope hanya simulator operator ephemeral: role owner/bar sintetis, Kiosk API diblok, tanpa PostgreSQL production, data outlet/customer, payment nyata, atau perubahan project Kiosk publik. Header review `private, no-store` dan `noindex`.
- Validasi: static/type PASS, full regression 314/314, final guard 10/10, local/remote Vercel build PASS, dependency audit 0 vulnerability, dan changed-file secret review tidak menemukan credential. Delivery `PROTECTED_OPERATOR_PREVIEW_DEPLOYED`; product `PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. Readiness tidak naik; database durable production, backup/restore, device UAT, monitoring dan approval activation tetap terbuka.

## 2026-09-06 — SagaOPS owner recipe dan HPP authoring guard

- Klasifikasi `CONFIRMED`; source implementasi `ca945a539a36231066b0be7b3c4696d9f62b5ba3`, dokumentasi `f90f8f75a13e78e3bb2b8cef3de36ef6df89f32c`, pushed pada branch Saga POS. Scope hanya F&B Kopi Saga; bukti dari source, test dan laporan HPP kanonik.
- Before: snapshot biaya telah aman tetapi katalog aktif belum memiliki workflow untuk mengisi bahan/resep atau menahan minuman yang belum lengkap. After: Owner Admin memiliki empat tahap untuk master bahan dalam gram/ml/pcs, komponen resep, audit HPP/margin/harga saran per menu, dan gate completeness minuman yang diaktifkan terpisah. Biaya kosong tetap `INCOMPLETE`, bukan Rp0.
- Mutasi owner membutuhkan CSRF, reason dan expected version; state disimpan per organisasi/outlet dengan PostgreSQL CAS, RLS serta audit. Snapshot checkout tetap immutable. Gate hanya dapat aktif ketika semua minuman aktif lengkap dan setelah aktif menolak perubahan atau checkout yang merusak coverage. Tidak ada biaya supplier/resep bisnis yang dikarang.
- Validasi lokal: focused domain/durable/finance 25/25, browser terkait 5/5, full regression 312/312, static/type/OpenAPI 163 modul/12 migrasi, Owner 390/1440px dengan Axe serious/critical 0, touch target minimal 44px dan tanpa overflow; dependency audit serta scan credential/private-key 0. Regresi scroll keyboard ditemukan oleh full suite, diperbaiki, lalu assertion asli tetap hijau.
- Delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; production, payment dan gate operasional tidak diaktifkan. Readiness estimasi tetap sekitar 60/100; Waves 1–8 masih PARTIAL dan Wave 9 deferred. Next: data recipe/cost nyata, purchase receipt plus unit conversion/moving average, stock count/waste/adjustment dan actual-versus-theoretical. Modifier/packaging serta migrasi state ke tabel master ternormalisasi masih terbuka.


## 2026-09-06 — SagaOPS historical HPP snapshot truth

- Klasifikasi `CONFIRMED`; source implementasi `7fdbc158b010efd3db66d7303e2712224be2b0d2`, dokumentasi `abdc1132fd012ed7e2172f5424436ee5ec33aa88`, pushed pada branch Saga POS. Bukti utama: source/test dan `docs/SAGA_POS_HPP_SNAPSHOT_TRUTH_2026-09-06.md`. Scope hanya F&B Kopi Saga.
- Before: item order hanya memiliki angka biaya placeholder sehingga Rp0 tidak dapat dibedakan dari biaya yang hilang. After: checkout membekukan versi resep, kuantitas/unit/biaya bahan dan status `VERIFIED/INCOMPLETE`; produk resep yang belum lengkap diblokir kecuali eksplisit diizinkan sementara. Order lama/simulator tetap `UNVERIFIED`, bukan direkayasa sebagai biaya nol.
- Owner/Admin dan CSV menampilkan coverage, order terverifikasi/dikecualikan, subset penjualan/HPP dan produk yang perlu dilengkapi. Total HPP teoretis serta laba kotor hanya muncul pada coverage 100%. HPP aktual dan laba bersih tetap tidak tersedia sampai pembelian, stock count, waste/adjustment, fee dan biaya operasional mempunyai fakta otoritatif.
- PostgreSQL menyimpan snapshot JSON/version/status immutable dan mempertahankan RLS. Validasi lokal: static/type/OpenAPI 160 modul/11 migrasi PASS; focused 32/32 dan full 307/307 PASS; owner 390/1440px, Axe serious/critical 0, overflow/touch/keyboard serta visual review PASS; dependency audit 0 dan high-confidence secret scan 0.
- Delivery `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; tidak ada aktivasi payment, perubahan runtime operasional atau business-ready claim. Readiness estimasi operasional tetap sekitar 60/100; Waves 1–8 tetap PARTIAL dan Wave 9 deferred. Next: recipe/ingredient authoring, purchase/moving-average/unit conversion, lalu stock count/waste dan actual-versus-theoretical.



## 2026-09-06 — SagaOPS permohonan pribadi staf terintegrasi lokal

- CONFIRMED; source `f79a773259f6a1fd2c8ef893cab02d29bdd3e855`, pushed pada branch `codex/saga-pos-vs01-kiosk-kds-dashboard`. Bukti: source/tests dan `docs/HRPOS_STAFF_OWN_REQUEST_POS_2026-09-06.md`. Hanya F&B Kopi Saga.
- Before: portal POS hanya membaca jadwal. After: staf berizin dapat membaca permohonan pribadi, sembilan filter status, pagination manual 20 baris, detail inline, alasan/riwayat/tahap persetujuan. Tidak ada create/edit/approve/payroll action. Akses permohonan tidak mensyaratkan izin jadwal; role HR tidak menjadi jalan pintas.
- Integrasi: dua fixed own-read operations, strict input/output projection, active-role/CSRF/same-origin dan re-introspection. Cursor body-only, null menit disetujui bukan nol; konten privat dibersihkan saat hide/close/logout/revocation. POS mengenali 23 operasi, bukan seluruh 69 capability provider. Kontrak provider `c6cd3007c5f52cab33ac507d56ab93414033f73e` unchanged; increment portal provider berikutnya bukan dependency.
- Validasi lokal final: Chromium 304/304, WebKit 14/14, focused DTO/transport 5/5, static/type/diff, Axe 0 pada 390/1440px, overflow/touch/keyboard/recovery dan 20 baris panjang PASS; dependency audit 0 dan high-confidence staged secret signatures 0. Actual BFF memakai provider sintetis dan PGlite, bukan joint native MySQL/PostgreSQL.
- Delivery LOCAL_VALIDATED; BELUM DEPLOY/ACTIVATED operasional. Runtime POS tetap `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`, public Kiosk HTTP 200 dan staff HTTP 404. Tidak ada migrasi, tunnel/provisioning, payment/payroll activation, dependency baru atau grant baru. Knowledge sync terpisah dari source.
- Blocker/risiko: fresh exact-pair joint acceptance lewat transport yang diizinkan, Customer Platform, offsite encrypted backup/disposable restore dan release gates. Tidak ada bypass/retarget fixture lama. M2 dan Waves 1–8 PARTIAL; Wave 9 deferred. Readiness estimasi operasional tetap sekitar 60/100, tidak naik dari test lokal. Next: joint acceptance yang diizinkan, sisa acceptance staf, lalu ingredient/recipe HPP snapshots.



## 2026-09-06 — SagaOPS pemulihan portal staf lintas browser

- CONFIRMED; source `03d234468013724bee7e9a9c6cec186cda973f64` pushed, berdasarkan source/tests dan laporan `docs/HRPOS_STAFF_LIFECYCLE_RECOVERY_2026-09-06.md`. Before: jadwal dapat tertahan saat kembali ke halaman dan refresh bersaing dengan logout. After: baca lama dibatalkan, foreground membaca ulang, logout mengunci baca sampai konfirmasi, timeout body pulih dengan retry eksplisit, dan fokus keyboard menuju tindakan yang tepat. Tidak ada retry mutasi otomatis atau klaim logout sukses dari timeout.
- Validasi: Chromium full regression 298/298; WebKit focused 13/13 pada 390/1440px, termasuk real history return, streamed-body recovery dan logout ambigu; Axe/overflow/keyboard, static/type dan dependency audit zero PASS. Empat baseline race tests serta failure streaming WebKit direproduksi sebelum perbaikan. Binary WebKit dipakai untuk QA lokal, bukan Safari/iPhone fisik dan bukan dependency aplikasi baru.
- Delivery: LOCAL_VALIDATED, belum deployment/activation operasional atau native joint acceptance. POS operasional tetap aktif pada `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`; public Kiosk HTTP 200, private staff route HTTP 404. Tidak ada tunnel retry, fixture/runtime baru, perubahan provider/izin/allowlist/database, pembayaran atau payroll activation.
- Blocker/next: provider `staff.requests.list/get` masih contract-pending, bukan 69 operasi terintegrasi. Terima handoff implementasi/DTO/native evidence, baru kerjakan BFF/UI own-only; joint acceptance memerlukan jalur uji yang diizinkan dan pasangan baru. Customer Platform/offsite backup dan Wave 9 tetap terbuka/deferred. Tidak ada kenaikan readiness dari perbaikan lokal; historical native database evidence tetap terikat ke pasangan lamanya.



## 2026-09-06 — SagaOPS fresh M2 acceptance guard

- CONFIRMED; implementation candidate `3885c845a919d87ef7fc247d5472b446caf8c0b0`, evidence/docs closure `ba8d626b129a5437225f2ee1ca6e9ec9e465dcd5`, source pushed. Before: a fixed historical M2 test database/unit. After: explicit per-run isolation and immutable handoff binding; retained acceptance evidence cannot be silently retargeted. This closes test-infrastructure risk, not a new HR business feature.
- Validation: local 286/286 tests, focused 6/6, static/type, mobile/desktop Axe/overflow and dependency audit zero. Fresh native PostgreSQL guard passed concurrent binding, same-pair restart binding, changed-handoff denial and wrong-database denial. Native pair: candidate above plus workforce `f5a7e10f623181abb9d41461e02c87f25af068f7`; provider instrumentation `6b9133ddb2d4983c5771cd3eb41357ff5cd3840f`. Evidence: source `docs/HRPOS_M2_FRESH_DATABASE_GUARD_2026-09-06.md`.
- Complete joint browser acceptance NOT_RUN: execution policy rejected browser-transport launch before execution; no bypass attempted. This is not a provider authentication defect. Both disposable services stopped; evidence retained. Source LOCAL_VALIDATED plus native database guard only; M2 still PARTIAL, not JOINT_SYNTHETIC_VALIDATED or BUSINESS_READY.
- Production unchanged at POS `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`; no operational deployment, real payment or payroll activation. No readiness increase. Customer Platform/offsite backup and Wave 9 remain open/deferred. Next: permitted test transport, new immutable joint browser acceptance, then the next permission-scoped staff/operational slice. Prior historical pair evidence remains unchanged.



## 2026-09-06 — SagaOPS own-only staff portal, M2 partial

- CONFIRMED; final POS source `76b96c35b9a9d5836235c04263658ff0b1e5a98d` pushed. Before: staff had no native POS own-only role/landing page. After: explicitly granted staff can read their published upcoming schedules, assigned notes and permission-scoped notices through the existing encrypted SagaWork bridge. Staff access does not imply HR, owner, cashier or bar. Private assets are excluded from public Kiosk packaging.
- Reason and scope: close a concrete staff integration gap without giving HR privileges. Native page is read-only, not attendance/payroll evidence or a 67-command UI. Role/employee-query overrides are denied; output is plaintext; unavailable/revoked/hidden state clears private data. Final logout recovery treats an already-absent session as signed out while keeping retry for transport failures.
- Validation: final 282/282 local regression, focused client/staff/isolated-runner guards 6/6, static/type, mobile/desktop Axe and overflow/keyboard/touch pass; dependency audit reports zero vulnerabilities. Source evidence: `docs/HRPOS_STAFF_PORTAL_M2_2026-09-06.md`.
- Native evidence remains source-specific: POS `e5db3cb66de7fd12ecddbd06b48d16e72efbaff4` plus workforce `f5a7e10f623181abb9d41461e02c87f25af068f7` passed staff login/consent, own shift, access denials, restart and private-data clearing after actual browser parent logout. Overall joint M2 is PARTIAL: final POS logout UI correction needs a fresh immutable fixture/runtime binding. Do not retarget old evidence or label final source joint-validated. Earlier HTTP-helper logout behavior was a synthetic cookie-context testing issue, not a confirmed provider revocation defect.
- Delivery: final source LOCAL_VALIDATED; no operational production deployment/activation or real payments. Both disposable test services were stopped; synthetic data retained for audit, not an offsite backup. Operational POS remains unchanged at `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`. Prior SagaWork handoff chronology remains valid.
- Open/next: fresh native joint acceptance for final POS source; permission-scoped request detail; remaining HR/attendance/device and stock/HPP workflows. Customer Platform configuration and approved offsite backup still open; Waves 1–8 partial, Wave 9 deferred. No readiness increase from local source or tests.



## 2026-09-06 — SagaOPS owner financial clarity

- CONFIRMED; source `749f2448018e6a8bdf20a34e172a5ebdf6370ae5`, implementation and local acceptance. Before: total bills were labeled net sales and zero cost placeholders could imply profit. After: owner/Admin separate menu sales from charges and allocated payments, expose per-order discrepancies and owner-only CSV, and mark HPP/profit unverified. Stale date responses cannot overwrite the selected report.
- Reason: avoid misleading financial conclusions. Current PAID/COMPLETED business-date projection excludes refunded/pending orders explicitly; it is not a historical refund ledger, bank settlement or P&L. No new dependency, migration or external HR source change.
- Evidence: 279/279 regression and 9/9 focused tests pass; mobile/desktop browser, Axe serious/critical, overflow, keyboard/touch, local database reconstruction and 2,000-order arithmetic/CSV coverage pass. Dependency audit reports zero vulnerabilities. Source report: `docs/SAGA_POS_OWNER_FINANCIAL_RECONCILIATION_2026-09-06.md`; research map: `docs/SAGA_POS_OPERATIONS_RESEARCH_MAP_2026-09-06.md`.
- Delivery: LOCAL_VALIDATED, source pushed. Operational production remains unchanged at `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`; service checked active. No production activation, real payment or public operator deployment. Waves 1–8 remain partial; no readiness increase from local evidence.
- Open: authoritative recipe/HPP snapshots; refund/cash/settlement ledger; native POS staff own-only joint acceptance; Customer Platform configuration and approved offsite backup. WIS definition remains unconfirmed, not assumed to mean WMS. Wave 9 stays deferred. Next: cost snapshots, full financial ledger, native staff joint acceptance.



## SagaOPS — HR onboarding M1, 6 September 2026

- CONFIRMED; source `7d328ab839f1a848d0f9ad0f8201da052f542248`, joint workforce source `aab15ade5ee18856374d11387614df92d4cbec4d`; source implementation and synthetic native browser acceptance.
- Before: transport-only HR integration. After: durable encrypted login bridge, explicit consent, native Workspace/staff creation and initial staff credential issuance. HR authority does not imply cashier, bar or owner authority.
- Validation: 270 local regression tests pass; focused suite 6 pass; native PostgreSQL/MySQL joint browser M1 covers login, creation, restart/session recovery and parent revocation. Axe and mobile overflow pass; dependency audit reports zero vulnerabilities. These results are not whole-product operational acceptance.
- Status: LOCAL_VALIDATED plus JOINT_SYNTHETIC_M1_VALIDATED. Only disposable isolated test services changed; operational production deployment and activation unchanged. No live payments. Public Kiosk excludes private HR assets.
- Open: own-only staff UI, broader HR workflows/permission matrix, provider login early-submit hardening, approved deployment configuration and release recovery. Customer Platform configuration and approved offsite backup destination remain unavailable; Waves 1–8 remain partial and Wave 9 stays deferred. No readiness increase inferred from this batch.
- Next: verify provider login hardening, implement own-only staff acceptance, then complete outstanding operational/recovery gates. Source details: `docs/HRPOS_POS_ADAPTER_HANDOFF_V1.md`. Knowledge sync is separate from source and deployment.



## 2026-09-06 — SagaOPS master controls and counted cash closing

CONFIRMED source `e35ea2ce8e9f3f7988c3dbc1be9d276a0464194b`: Owner can configure existing-menu category, display rank, BAR/FOOD destination and reversible archive status. Archived menus cannot be ordered; historical snapshots remain intact. Persisted order-pause and opt-in same-day WIB hours gate new orders without blocking settlement of existing payments. New end-of-day availability deadlines use configured closing time.

Cashier must enter physical cash count; missing count no longer defaults to expected cash. Closing sales are isolated to the cash session across restart; large cashier variances require owner review. Native expandable count controls preserve the normal cashier first fold. API-design skill informed validated, compatible action contracts and error handling.

Validation: full local regression 265/265 PASS; final durable focused 12/12; Admin/browser, cashier count/first-fold, Axe/overflow checks PASS; dependency audit zero reported vulnerabilities. Status LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED. No private/public deployment or payment activation. Whole Waves 1–8 remain partial: full master CRUD/assets/modifiers, stock, historical cash/refund reconciliation and reports remain open; Customer Platform/offsite inputs unavailable. HR identity contract coordination is not an implemented BFF or unified login. Evidence: source `docs/SAGA_POS_MASTER_CONTROLS_CASH_CLOSE_2026-09-05.md`. No readiness uplift inferred.



## 2026-09-05 — SagaOPS session persistence and member hardening

CONFIRMED source `7e45411229f137d1f303595c6b7b9db38d84a8d4`: private/durable HTTP sessions now recover from PostgreSQL, preserve expiry/revocation across restart, isolate Kiosk/operator token types and avoid storing bearer tokens. The existing member helper now bounds requests, prevents redirects and distinguishes paid checkout success from ambiguous reward confirmation. It is not authoritative live member integration or a durable loyalty retry consumer.

Local evidence: 261/261 regression PASS, focused member 6/6, final session recovery/failure test PASS, static/type PASS, dependency audit zero reported vulnerabilities. Status LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED; no public/private deployment or payment activation. Wave 1–8 completion remains unaccepted. Owner confirmed Customer Platform configuration/vault reference and approved offsite destination are unavailable; external acceptance awaits those inputs. Internal catalog/inventory/cash/refund/report work remains unfinished separately. See source `docs/SAGA_POS_SESSION_AND_MEMBER_HARDENING_2026-09-05.md`. No readiness increase inferred.



## 2026-09-05 — SagaOPS durable catalog and owner menu editing

CONFIRMED from source `2f37021e834235be34d82efb7b7145c57ac86a92`: existing menu names/prices can be edited in Admin; server pricing consumes those overrides. Durable PostgreSQL runtime preserves catalog availability, timed restoration, edits and history after restart, with version conflict and failed-write recovery. Previously these controls were memory-only or source constants. Existing order snapshots are not rewritten.

Validation: full local regression 258/258 PASS; final focused durable rerun 9/9; Admin browser/Axe/touch/overflow PASS; dependency audit zero reported vulnerabilities. Status LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED. Neither public simulator nor private VPS was deployed by this batch; no live-payment activation. Waves 1–8 remain partially implemented, not completed. Identity/session durability, full catalog CRUD, inventory/cash/refund/member integration and native staging release acceptance remain next work. Source evidence: `docs/SAGA_POS_WAVES_1_8_EXECUTION_2026-09-05.md`. This supersedes no deployed-runtime claim.



## 2026-09-05 - SagaOPS safe idle warning dismissal

- CONFIRMED source `f388b5d949320e28ec6850511b7926bc88e7cee5`; public deployment `dpl_DWLq3PURNs4texwjimrS8MQV1vxU`; stable https://saga-pos-kiosk.vercel.app/kiosk .
- Before: Escape hid the idle warning but left its reset countdown running. After: native cancel requests use the existing continue-session path, retaining cart and rearming normal inactivity protection. Pending-payment exclusions and unattended reset remain unchanged.
- Evidence: Escape plus 31 seconds reproduced lost cart before the fix and passes after it. Full 254/254 and static/type PASS, existing portrait Axe/focus/touch/fold/overflow/reduced-motion/page-error checks preserved. Dependency audit zero vulnerabilities, heuristic secret scan zero matches. Candidate and same-artifact stable smoke PASS on three viewports with zero checkout requests and blocked operator surfaces.
- Research: MDN HTMLDialogElement cancel event https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/cancel_event reviewed 2026-09-05. No new dependency, styling, animation or backend change. Physical mobile Back and device UAT are not newly accepted.
- LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and providers unchanged. Owner-facing operational-readiness estimate was clarified to approximately 60/100; historical 84/100 is not PRD-completion or operational acceptance. This release does not raise either estimate. Broader finalization remains proposed, not silently activated by Kiosk-only automation.
- No founder/pricing change in this release; product/dossier/changelogs/master/sync updated, knowledge provenance main HEAD. Next: native mobile dismissal UAT, sleep/wake recovery, server-session durability.



## 2026-09-05 - SagaOPS elapsed-time privacy warning

- CONFIRMED source `b8da723ae91f487c5ea40f2bfb77053fc13ec76f`; public deployment `dpl_7naZ4ix2viFqSmCmJShbQPfvgUhj`; stable https://saga-pos-kiosk.vercel.app/kiosk .
- Before: delayed interval delivery could leave the privacy warning showing 29 seconds after thirty seconds elapsed. After: warning uses a wall-clock deadline and reaches zero on its first delivered callback after expiry. Existing continuation, fresh-session confirmation and pending-payment exclusions remain intact.
- Evidence: Chromium delayed-tick regression red -> green, normal portrait timing also passes. Full 254/254 and static/type PASS; existing portrait Axe/focus/touch/fold/overflow/reduced-motion/page-error coverage preserved. Dependency audit zero vulnerabilities and heuristic secret scan zero matches. Candidate and same-artifact stable smoke PASS, three viewports, zero checkout requests, operator surfaces blocked.
- Research: MDN Window.setTimeout https://developer.mozilla.org/en-US/docs/Web/API/Window/setTimeout reviewed 2026-09-05. Timers may be delayed; elapsed-time arithmetic is an engineering response, not a guarantee scripts run during sleep. No new dependency, layout, animation, backend or provider change.
- LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and historical readiness 84/100 unchanged. System-clock changes, pre-warning suspension, physical sleep/wake and reset failure remain gates. No founder/pricing change; product/dossier/changelogs/master/sync updated; knowledge provenance main HEAD.
- Next: pre-warning resume recovery, physical-device privacy UAT, server-session durability.



## 2026-09-05 - SagaOPS Help inactivity privacy protection

- CONFIRMED source `8b42016c382a01a27c2d89985f8b120304ec7271`; public deployment `dpl_6g5zatD4VYffjh3YmqSKo5Vpi4mU`; stable https://saga-pos-kiosk.vercel.app/kiosk .
- Before: an abandoned pre-payment Help dialog suspended the inactivity policy. After: Help participates in the existing three-minute inactivity warning plus thirty-second continuation window. One modal owns focus; explicit continuation retains cart; confirmed timeout reset clears the draft. Pending-payment Help remains excluded from automatic reset.
- Evidence: two portrait red regressions -> green; full 254/254 and static/type PASS. Axe serious/critical zero, focus, continuation target/fold, overflow, reduced-motion, page errors and visual review checked. No new dependency, CSS, animation, payment or backend change. Dependency audit zero vulnerabilities; heuristic secret scan zero matches; candidate and same-artifact stable smoke PASS on three viewports, no checkout requests and blocked operator surfaces.
- Research: W3C Timing Adjustable https://www.w3.org/WAI/WCAG22/Understanding/timing-adjustable.html reviewed 2026-09-05 informed preserving the warning and repeatable continuation, not immediate cancellation. No complete accessibility certification claim.
- LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and real providers unchanged. Historical readiness stays 84/100. Background timer suspension, reset failure and physical device UAT remain gates. No founder/pricing change; product/dossier/changelogs/master/sync updated, knowledge provenance main HEAD.
- Next: background/sleep recovery, device privacy UAT, server-owned session durability.



## 2026-09-05 - SagaOPS checkout storage-denial recovery

- CONFIRMED source `60137c9611fd23690d3fe29e2a61bc56ed39aa1e`; public deployment `dpl_Cch9jq88P7Z3NkdguZHM5U1iAFDW`; stable https://saga-pos-kiosk.vercel.app/kiosk .
- Before: unresolved-checkout reload continuity required sessionStorage. After: independent same-entry history fallback retains the exact same-session request when that storage is denied. No automatic checkout or URL change; unrelated record state preserved, non-record state not overwritten, saved request cleared after confirmed handoff. Existing server payment/price/idempotency truth remains unchanged.
- Evidence: denied-storage Chromium reload and unit reproduction red -> green. Full 252/252 tests plus static/type PASS; portrait Axe serious/critical zero, focus/fold/touch/overflow/page-error checks and visual review. Dependency audit zero vulnerabilities, heuristic secret scan zero matches. Candidate and same-artifact stable smoke PASS on three viewports with zero checkout requests and blocked operator surfaces.
- Research: MDN History.replaceState https://developer.mozilla.org/en-US/docs/Web/API/History/replaceState reviewed 2026-09-05. No new library, styling or animation. Browser history is best-effort local storage, not an encrypted vault; browser retention policy, both-mechanisms denial and server-session loss remain operational gates.
- LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and real providers unchanged. Historical readiness remains 84/100; no founder or pricing change. Product/dossier/changelogs/master/sync updated; knowledge commit is main HEAD.
- Next: browser/device privacy acceptance, server-owned session durability, full operational UAT.



## 2026-09-05 - SagaOPS unresolved checkout reload continuity

- CONFIRMED source `cf2ab8743fedac75b1e5f8fde16291f32ac600b3`, deployment `dpl_3e8MRJUEBpLYHy372z13sWSNbUM6`, stable https://saga-pos-kiosk.vercel.app/kiosk .
- Before: reload could return an unresolved checkout to an editable cart. After: same-session submitted request is restored with its original cart/quote/key and locked recovery screen; no automatic submission. Authoritative active-order recovery takes priority. Definitive expired-quote rejection retains the cart for renewed confirmation and a new key.
- Evidence: two portrait red tests -> green; full regression 250/250, static/type PASS; portrait Axe serious/critical zero, focus/fold/touch-target/overflow/page-error checks and visual review. Dependency audit zero vulnerabilities, heuristic secret scan zero matches, build output no environment files. Candidate and same-artifact promoted stable smoke PASS, three viewports, zero checkout requests, operator surfaces blocked.
- Research: MDN sessionStorage https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage reviewed 2026-09-05. Best-effort tab storage survives reload but can be denied; no new library or cosmetic change. Denied/corrupt storage and server-session loss remain residual recovery gates.
- LOCAL_VALIDATED and PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false, BUSINESS_READY=false. Private VPS/provider unchanged; historical readiness 84/100 unchanged. No founder/pricing change. Product/dossier/changelogs/master/sync updated.
- Next: storage-denial recovery, server-session durability, physical device/operator UAT. Source release is separate from knowledge main HEAD.



## 2026-09-05 - SagaOPS storage-denied reset recovery

- CONFIRMED source/runtime: `5e4f8f50106a9181cd22c70ca3c63a3fbf9262e2`; public deployment `dpl_49c7MHg8DAN5uZ1g1o3QUkTaqTsZ`; https://saga-pos-kiosk.vercel.app/kiosk .
- Completed-session reset now uses a namespaced current-history-entry fallback when sessionStorage is unavailable. Reload recovery remains bound to the matching completed order/session; no URL change or added navigation entry. Unrelated object keys are preserved; primitive/array history state is not overwritten. This strengthens the prior reset workflow without changing layout or payment logic.
- Evidence: new red fallback assertion -> green; focused 5/5 and full 246/246 plus static/type PASS. Actual Chromium reload with sessionStorage denied passes, with existing portrait Axe/fold/overflow/page-error checks. Dependency audit zero vulnerabilities; heuristic secret scan zero matches. Candidate then same-artifact stable smoke pass on three viewports, zero checkout requests and blocked operator surfaces.
- Research: MDN History.replaceState, reviewed 2026-09-05, https://developer.mozilla.org/en-US/docs/Web/API/History/replaceState . Best-effort fallback is an engineering inference verified in Chromium, not universal crash persistence. No new dependency.
- Delivery LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and provider unchanged, historical readiness 84/100 unchanged. Both browser mechanisms may still be unavailable; server-owned retirement/device UAT remains an operational gate. No founder/pricing change.
- Product/dossier/product-portfolio-root changelogs/master/sync status updated. Next: server-owned retirement, device failure matrix, private operational UAT.



## 2026-09-05 - SagaOPS completed-session reset recovery

- CONFIRMED from source and runtime: `418fd8ab454e165076ab37e382b1ad471238ee42`; public deployment `dpl_GH1n2BQ9SEozhJtncXsUM1KbGX87`; https://saga-pos-kiosk.vercel.app/kiosk .
- Completed-order finish now hides receipt while preparing the next session, prevents duplicate reset requests and retries session closure rather than resuming the previous receipt. A bound browser-local marker supports reload recovery when storage is available; another session/order or pending payment cannot match it. Pre-checkout failed cancellation retains the established recoverable-cart behavior.
- Validation: two initial red portrait regressions -> green; focused reset/marker 4/4; final full suite 245/245 plus static/type. A broad pre-checkout regression was corrected without weakening the old test. Portrait Axe serious/critical zero, retry touch/fold checks, visual review and no page errors; completed order/payment retained. Dependency audit zero vulnerabilities; changed-source heuristic secret scan zero recognized matches. Candidate/same-artifact stable smoke pass on three viewports with zero checkout requests and blocked operator surfaces.
- Status LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and live provider unchanged. Historical readiness remains 84/100. Browser persistence is best-effort; authoritative server-owned session retirement remains an operational gate. No pricing or founder-decision change.
- Product/dossier/product-portfolio-root changelogs/master/sync status updated. Next: durable session retirement, storage-denied device recovery, private operational UAT. No full manual P01-P12 or physical-device acceptance claim.



## 2026-09-05 - SagaOPS refresh choice integrity

- CONFIRMED from source and browser acceptance: `e639ba582cd01096fdc3fef46423537619dae9a0`; deployment `dpl_EavhDPcZFuL21afCsnPe29tCzb3r`; https://saga-pos-kiosk.vercel.app/kiosk .
- Before: a saved drink could restore without its disappeared modifier. After: affected lines are not silently changed; review explains why re-entry is needed, even if the cart is empty. Available lines still restore and the customer can reselect before requesting a new server quote. This is pre-checkout draft recovery, not payment restart recovery.
- Validation: red unit -> green; focused 3 unit + 2 portrait browser tests; full 241/241 with concurrency=2 and static/type checks. Axe serious/critical zero, no horizontal overflow or page errors, both screenshots reviewed. Dependency audit zero vulnerabilities; heuristic secret scan zero matches. Candidate and same-artifact stable smoke pass on three viewports, zero checkout requests and blocked operator routes.
- Delivery LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Only ephemeral public simulator updated; private VPS unchanged. Historical readiness remains 84/100. No pricing, founder decision, provider or operator changes.
- Product/dossier/product-portfolio-root changelogs/master/sync status updated. Residual: affected items require re-entry; complete required-group migration, durable sessions, authoritative gateway/member and hardware/offsite acceptance remain open. Next: required-choice migration, ambiguous checkout refresh recovery, private operational integration.



## 2026-09-05 - SagaOPS sent-choice recovery UI

- CONFIRMED from source and visual/runtime evidence: `992603e654800bd17c4f3081896f6b00bb493974`; public deployment `dpl_CxcQR9cqAU91qbMW2mho1L53SsN3`; https://saga-pos-kiosk.vercel.app/kiosk .
- Before: repeated drinks on locked checkout recovery were indistinguishable. After: sent modifiers, preparation notes and dine-in/takeaway context are visible. Customers and assisting staff can distinguish their choices while retry retains the original payload and one order/payment. No price, provider, storage or operator changes.
- Validation: two missing-detail assertions red -> green; focused 5/5, complete suite 238/238 with concurrency=2 plus static/type checks. Default-concurrency run encountered local socket resource exhaustion; no OS or unrelated processes changed. Portrait Axe/focus/touch/fold/overflow checks and visual review pass. Dependency audit zero vulnerabilities and heuristic secret scan zero matches. Same-artifact candidate/promotion/stable smoke pass on three viewports with zero checkout requests and blocked operator surfaces.
- Status LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS and operational integrations unchanged; public simulator remains ephemeral. Readiness historical 84/100 unchanged. No founder/pricing decision changed.
- Impacted knowledge: product, dossier, product/portfolio/root changelogs, master and sync status. Remaining: persistent session recovery, authoritative payment/member and hardware/offsite gates. Test-host concurrency sensitivity remains a limitation. Next: refresh recovery, payment state consistency, private operational acceptance.



## 2026-09-05 - SagaOPS receipt recovery guard

- CONFIRMED by source and runtime: `6255854bfc102464e5b3e40987cdbd189275268f`, public deployment `dpl_D8j7ZFdjo3HGDUGCrg4tGhCyQ7fS`, https://saga-pos-kiosk.vercel.app/kiosk .
- Before: incomplete receipt details could interrupt the payment screen. After: invalid receipt rows are rejected before checkout state is discarded; original-order recovery stays available without creating a duplicate payment. This extends the prior envelope guard, not a visual redesign or complete provider schema claim.
- Validation: five initial regressions red -> green; final full suite 236/236, API focused 28/28. Portrait malformed-receipt recovery and existing body-timeout paths pass with no page errors; Axe/focus/touch/fold checks pass. Dependency audit zero vulnerabilities; changed-source heuristic secret scan zero recognized matches. Candidate then same-artifact stable smoke pass on three viewports, no checkout requests, operator surfaces blocked.
- Status LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Simulator and ephemeral persistence only. Private VPS release unchanged; previous private integration acceptance is not superseded. Historical readiness remains 84/100. No pricing or founder-decision change.
- Impacted knowledge: product, dossier, product/portfolio/root changelogs, master and sync status. Remaining gates: production identity/session durability, provider/member integration and hardware/offsite recovery. Next: restart recovery, full payment state schema, private integration acceptance.



## 2026-09-05 - SagaOPS Kiosk response recovery public release

- CONFIRMED from source and runtime smoke: `adec9223d8e8926412bb9c7f68ca58a2c935bbae`, deployment `dpl_BUZdJg7fgpWmixjZqmro1AP2LTSs`, https://saga-pos-kiosk.vercel.app/kiosk .
- Before: incomplete service replies could leave checkout without usable payment details. After: Kiosk preserves the original attempt, displays sent choices, offers safe retry, and bounds response-body waiting. Synthetic retry produces one order/payment; no implied payment success from incomplete data.
- Validation: full suite 224/224; focused 19/19; portrait 720x1280 and 1080x1920 recovery, Axe serious/critical zero, internal touch-scroll/focus/fold checks. Candidate and promoted stable smoke PASS on three viewports with zero checkout requests and blocked operator surfaces. Dependency audit zero vulnerabilities; heuristic changed-source secret scan zero matches.
- Delivery: LOCAL_VALIDATED / PUBLIC_DEMO_PRODUCTION_DEPLOYED. Only QRIS simulator and ephemeral persistence; PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Private VPS remains on a9d500722f3451aaf6f792f247c3fe5328b3b7ce and is not updated by this release. Earlier private integration acceptance remains valid within its stated scope.
- Historical readiness 84/100 unchanged. Remaining: durable production identity/session and business data, authoritative gateway/member, hardware UAT and independent offsite recovery. No new founder decision or pricing change. Product, dossier, product/portfolio/root changelogs, master knowledge and sync status updated together.


## 2026-09-05 - Saga POS private VPS PostgreSQL integration

- CONFIRMED owner decision: use existing VPS with PostgreSQL; domain follows. MySQL proposal superseded. Scope is private synthetic staging, not operational launch.
- Source deployed: `a9d500722f3451aaf6f792f247c3fe5328b3b7ce`. Status: PRIVATE_STAGING_DEPLOYED / PRIVATE_INTEGRATION_VALIDATED / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false. Public Vercel demo unchanged.
- Before: durable evidence used embedded PostgreSQL locally. After: isolated native PostgreSQL cluster plus one shared private API serves Kiosk, Cashier, KDS, Owner and Admin. Dedicated identities, bounded resources and private-only networking; no production provider secrets.
- Validation: final full regression 205/205, focused adapter tests, native synthetic checkout replay/station recovery/owner aggregate, browser Kiosk-to-KDS-to-Owner flow, authenticated Admin/Cashier login, three-surface Axe serious/critical zero and no horizontal overflow.
- Encrypted same-host backup plus isolated restore passed with two synthetic orders/payments/tickets and matching counts. Independent offsite recovery remains unvalidated. This is not full business continuity acceptance.
- Neighbor services remained active. New resources are bounded; initial swap allocation and existing certificate-service warning require separate monitoring/remediation before launch. No changes to other product source or public proxy configuration.
- Remaining gates: actual staff/device identity, durable sessions, full catalog/stock/refund/shift parity, Customer Platform, gateway reconciliation, hardware, offsite recovery, TLS/domain and staff/finance UAT. Fixture identities and simulator payment remain private-only. Historical readiness score is not raised or treated as PRD completion.
- Evidence: source `docs/SAGA_POS_PRIVATE_ENVIRONMENT_2026-09-05.md`; S02 execution ledger updated. Backend Architect guided isolation and single-writer boundaries. Next: identity/session hardening, complete durable operational workflows, then external release/UAT gates.

## 2026-09-05 - SagaOPS ambiguous checkout recovery

- CONFIRMED: LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED; PRODUCT_PRODUCTION_ACTIVATED=false; BUSINESS_READY=false.
- Application source: `46d5e0691f4c33a9e1f9357ff9684999bafa51fa`; deployment: `dpl_BY8GtRNtJJLmqrDFmfUUbSCVc5Ew`.
- Before: an interrupted checkout response left editable cart contents while server replay retained the original order. After: unresolved checkout retains its exact payload, locks edits/reset, recovers the session active order or offers a same-payload retry. No new payment is inferred from network failure.
- Evidence: final full regression 202/202; local storage-denial/lost-response coverage at two portrait sizes, one order/payment, exact payload retry, Axe serious/critical and overflow checks. First full image fallback timeout passed targeted rerun and final regression.
- Both dependency audits zero vulnerabilities; heuristic changed-file secret scan clear. Build, candidate and stable three-viewport smoke passed, operator access denied, zero public checkout requests.
- Public simulator updated at https://saga-pos-kiosk.vercel.app/kiosk ; rollback deployment `dpl_G3egg9ExHgQooi1jUxAkuaHe86AY`. Real provider/operator production unchanged.
- S11 remains partial. API/DB target, staff identity, Customer Platform, hardware, and UAT gates remain. Historical 84/100 is unchanged, not a current PRD-completion percentage. Pending attempt recovery after reload still relies on the server session.
- Source evidence: `docs/SAGA_POS_CHECKOUT_AMBIGUITY_RECOVERY_2026-09-05.md`. Product/dossier/changelogs/master/sync updated together. Next: confirm operator runtime target, complete durable cross-surface acceptance, then external UAT/release gates.


## 2026-09-05 - SagaOPS storage-denial checkout recovery deployed

- `CONFIRMED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.
- Exact application source: `df56303e1b317a21df4462c179722ed1a80c9c2b`; deployment: `dpl_G3egg9ExHgQooi1jUxAkuaHe86AY`.
- Denied browser storage previously blocked checkout and could interrupt success/reset. A best-effort key store now retains one live-page attempt key in memory, preserves available-storage compatibility and safely clears stale values even when removal fails.
- Review warns when cart persistence is restricted. Pre-checkout cart reload is not promised without storage; existing active-order recovery still depends on the server session/cookies.
- Local simulator evidence covers a lost checkout response followed by same-key retry (one order/payment), active-payment reload, simulated success, safe reset and a fresh key for the next session. No new backend/provider contract or weaker key generation.
- Validation: 202/202 full regression; eight focused key/browser cases; two portrait Axe/overflow/page-error checks; dependency audits zero vulnerabilities and heuristic secret scan clear. No new dependency or data collection.
- Candidate and stable public smoke passed three viewports, including storage-denied review and quote recovery; zero public checkout requests, simulator health and operator denial. Payment lifecycle testing was local simulator-only.
- Stable: https://saga-pos-kiosk.vercel.app/kiosk . Rollback: `dpl_EDifvHY2eHF7C39uwrCAnCJJvpUJ`. No env files/operator static pages in public output; guarded server modules remain bundled.
- Historical readiness remains 84/100. Real API/DB, Customer Platform, NFC/printer and human UAT remain external gates; all 32 finalization sprints are not accepted.
- Impacted source: Kiosk key helper/controller, review warning, regression/smoke and release evidence. Product, dossier, changelogs, master and sync status updated together; no business-policy change.



## 2026-09-05 - SagaOPS in-place quote recovery deployed

- `CONFIRMED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.
- Exact application source: `64401fed4507332d90751fe5f4c506fd4a0125f0`; deployment: `dpl_EDifvHY2eHF7C39uwrCAnCJJvpUJ`.
- Quote failure now offers Hitung ulang total without leaving the cart or changing menu, note, quantity or member. Loading does not claim a confirmed total; repeated failures retain retry focus and success focuses the next step without submitting it.
- Removing the last item cancels loading ownership; stale responses are ignored and undo re-quotes. 5xx diagnostics use customer-safe copy. No backend, gateway, operator, dependency or business policy changes.
- Evidence: 194/194 full regression; two portrait guest/member browser scenarios with fault injection, delayed response, offline, focus, Axe serious/critical zero and overflow checks. Dependency audits zero vulnerabilities; heuristic secret scan clear.
- Authenticated candidate and anonymous stable smoke each passed three viewports with one browser-injected failure followed by explicit retry, zero checkout requests, simulator health and operator route denial.
- Stable: https://saga-pos-kiosk.vercel.app/kiosk . Rollback: `dpl_75K2g8q5t1PG9uk2xqmgjgSbvj98`. No env files/operator static pages in public build; guarded server modules remain bundled.
- Historical readiness stays 84/100. Real operator API/DB, Customer Platform, NFC/printer and staff UAT remain external gates; all 32 finalization sprints are not accepted.
- Impacted source: Kiosk quote handler/template, browser tests, smoke and release evidence. Product, dossier, changelogs, master and sync status updated together. Concurrent Saga Member knowledge was preserved by preparing this sync on a fresh current-main worktree; no force push or history replacement.



## 2026-09-05 - SagaOPS portrait modifier touch panel deployed

- `CONFIRMED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.
- Exact application source: `78ced4511290fce99f111147610e8e4e31cff244`; deployment: `dpl_75K2g8q5t1PG9uk2xqmgjgSbvj98`.
- Before: constrained 720x900 portrait scrolled the document. After: options scroll inside a named keyboard-accessible region; product identity and checkout stay in the viewport, without overlaying options. Standard 720x1280 and 1080x1920 already fitted before; no false baseline claim.
- Quantity changes and offline/reconnect rerenders preserve option position and keyboard focus. Phone/landscape retains prior responsive document flow. No new dependency, animation, backend pricing or operator contract.
- Evidence: 192/192 full regression; three local viewport scenarios with raw touch gestures, keyboard, note-to-cart, Axe serious/critical zero and overflow checks. Existing help measurement avoids stale DOM handles; pinned checkout is tested by geometry instead of a literal CSS position value.
- Candidate and stable smoke pass on three viewports with zero checkout requests, simulator health and operator route denial. Stable demo: https://saga-pos-kiosk.vercel.app/kiosk . Rollback: `dpl_MQHDLnVTVGiovRThk6sCNdQmupia`.
- Dependency audits zero vulnerabilities; heuristic secret scan clear. Public static output excludes operator pages and env files; server function still contains guarded operator modules.
- Historical readiness remains 84/100. Real API/DB target, Customer Platform, physical NFC/printer and human UAT remain external gates; all 32 sprints are not accepted. This release changes the public demo only.
- Impacted source: Kiosk modifier styles/render/template, regression/smoke and release evidence. Knowledge updated in product, dossier, changelogs, master and sync status. No new founder/business policy.



## 2026-09-05 - SagaOPS compact identical cart release

- Classification: `CONFIRMED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.
- Source: `1cf0562013a79bd8c49989119c89d6a8e7a7f775`; deployment: `dpl_MQHDLnVTVGiovRThk6sCNdQmupia`.
- Identical new menu additions share one row with increased quantity; different modifiers/notes remain distinct. Two identical additions use one row instead of two. Editing, undo, reload and quantity-limit overflow preserve quantities.
- Cart action labels previously clipped at 720px; action column widened from 98px to 126px without shrinking typography/touch controls. New browser regression reproduces the failure and passes after the fix.
- Evidence: 189/189 full regression; two portrait browser/Axe/overflow tests; nine guest/member/reward pricing parity checks; dependency audit zero vulnerabilities; heuristic secret scan clear. Candidate and stable public smoke pass on three viewports with zero checkout requests and operator routes blocked.
- Demo updated: https://saga-pos-kiosk.vercel.app/kiosk . Rollback: `dpl_14qLbUiVRzEgFUYXM9r8oiwC4Eu2`.
- No real payment, Customer Platform integration, physical NFC or operator activation. Historical readiness 84/100 unchanged; 32-sprint finalization remains incomplete. Real operator API/DB, hardware and staff UAT gates remain open.
- Impacted source: Kiosk cart/controller/styles, browser regression, public-demo smoke and release evidence. Public knowledge synchronized across product, dossier, changelogs, master and sync status. No new business policy or dependency.



## 2026-09-05 - Kiosk available-recommendation recovery deployed

- `CONFIRMED / LOCAL_VALIDATED / VERCEL_PUBLIC_DEMO_DEPLOYED / PRODUCT_PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.
- Exact deployed source: `0a87d18332ca60724e95ffc3a38afef017f0d785`; deployment `dpl_14qLbUiVRzEgFUYXM9r8oiwC4Eu2`.
- Member resume removes sold-out/unknown favorites; temporary restock restores eligible recommendations without identifying again. Empty state keeps membership and offers the main menu instead of claiming no history.
- Existing catalog snapshot is reused; no additional network request or runtime dependency.
- 187/187 regression tests; two portrait Axe/overflow tests; authenticated candidate and anonymous stable smoke on three viewports. No checkout requests in release smoke.
- Stable public demo: https://saga-pos-kiosk.vercel.app/kiosk . Rollback: `dpl_4SGbVJdjAJjGRTSnjZUE4kRqf7k4`.
- QRIS remains simulator and state ephemeral; operator surfaces remain blocked. Real gateway, NFC hardware, Customer Platform, activation and historical 84/100 readiness are unchanged. The separate 32-sprint finalization remains incomplete.


Updated: 5 September 2026
Latest material status: `PRIVATE_VPS_POSTGRES_INTEGRATION_VALIDATED / PUBLIC_KIOSK_SIMULATOR_UNCHANGED / PHYSICAL_NFC_NOT_ACTIVATED`
Evidence status: `CONFIRMED / SOURCE_PUSHED_BRANCH / PORTRAIT_KIOSK_LOCAL_VALIDATED / KIOSK_PERSISTENT_HELP_SAFE_CANCEL_PUBLIC_DEMO_DEPLOYED / KIOSK_SUCCESS_TIME_AND_SCROLL_PUBLIC_DEMO_DEPLOYED / KIOSK_MEMBER_DEGRADED_RECOVERY_PUBLIC_DEMO_DEPLOYED / KIOSK_CHECKOUT_QUOTE_GUARD_PUBLIC_DEMO_DEPLOYED / KIOSK_QRIS_EXPIRY_HANDOFF_PRODUCTION_DEPLOYED / KIOSK_CONTEXTUAL_HEADER_PRODUCTION_DEPLOYED / KIOSK_FIXED_TOUCH_CANVAS_LOCAL_VALIDATED / KIOSK_ATOMIC_BOOTSTRAP_LOCAL_VALIDATED / KIOSK_VERCEL_PUBLIC_DEMO_ACTIVE / KIOSK_BAGEL_CATEGORY_PHOTO_LOCAL_VALIDATED / KIOSK_SOLD_OUT_RACE_RECOVERY_LOCAL_VALIDATED / KIOSK_CART_SESSION_RECOVERY_LOCAL_VALIDATED / KIOSK_MEMBER_BENEFIT_CONFIRMATION_LOCAL_VALIDATED / KIOSK_FOUNDER_REVIEW_UI_LOCAL_VALIDATED / KIOSK_IMAGE_RECOVERY_LOCAL_VALIDATED / KIOSK_WELCOME_HERO_LOCAL_VALIDATED / KIOSK_UIUX_SPRINTS_LOCAL_VALIDATED / KIOSK_MODIFIER_CART_V2_LOCAL_VALIDATED / KIOSK_PAYMENT_CONFIDENCE_LOCAL_VALIDATED / CASHIER_PAYMENT_CONFIDENCE_LOCAL_VALIDATED / MENU_ASSETS_22_OF_22_LOCAL_VALIDATED / KDS_V2_LOCAL_VALIDATED / CASHIER_V2_LOCAL_VALIDATED / OWNER_DASHBOARD_V2_LOCAL_VALIDATED / ADMIN_CONTROL_ROOM_V2_LOCAL_VALIDATED / ADMIN_AVAILABILITY_HISTORY_LOCAL_VALIDATED / ADMIN_STALE_VERSION_GUARD_LOCAL_VALIDATED / ADMIN_SCHEDULED_AVAILABILITY_LOCAL_VALIDATED / SAGA_POS_M4_LOCAL_DURABLE_RUNTIME / SAGADEV_PLATFORM_PRODUCTION_ACTIVATED / PRIVATE_CANARY_PAID_AND_LOCKED / SETTLEMENT_PENDING_CLEARING / BUSINESS_READY=false`

## Tujuan dokumen


## 2026-09-05 - Saga POS integrated finalization batch

- `CONFIRMED / LOCAL_VALIDATED / SOURCE_PUSHED_BRANCH / NOT_DEPLOYED / BUSINESS_READY=false`.
- Source: `4cebfd1687f247be51e369d50844bf70e118d93e`.
- Durable order/member/staff and production-item snapshots now survive recovery; mixed BAR/FOOD tickets require all stations ready before pickup.
- Owner reports support business-date selection and paid-only item rankings; current production queue remains live independently.
- Validation: 182/182 regression tests, seven migrations, focused browser/Axe/overflow checks and zero dependency vulnerabilities. No live transaction or production activation.
- Finalization has 32 planned sprints and remains IN_PROGRESS, not fully accepted. Real operator hosting/auth, Customer Platform, hardware, staff UAT and business acceptance remain gates.
- Production/public demo unchanged by this batch. Continue durable integration and external gates; no readiness increase from local validation.


Menjadi ringkasan fakta kanonik SagaOPS. Detail product, experience, business,
technical, sales, dan content berada di [DOSSIER](DOSSIER.md). Keputusan
terbuka berada di [GAPS](../../GAPS.md#sagaops).

## Konteks

Source private kanonik, API/service, persistence/RLS lokal, dan operator browser
UAT tersedia sebagai local integrated internal alpha. Endpoint payment SagaOPS
kini aktif pada SagaDev Platform production dengan transaksi terkunci. Hardware,
outlet pilot, settlement acceptance, dan business readiness belum terverifikasi.
Kiosk customer portrait P01-P12 sudah aktif sebagai public demo pada Vercel.
Runtime ini hanya memakai QRIS simulator dan state serverless sementara; deploy
outlet dengan payment nyata tetap belum dilakukan.

## Ringkasan

SagaOPS adalah operating system coffeeshop. Produk dipisah menjadi SagaPOS untuk
kasir dan Back Office untuk owner/manager.

## Target pengguna

- Kasir/barista.
- Manager.
- Owner coffeeshop.
- Purchasing/inventory operator.

## Scope MVP pilot

- POS order, modifier, payment, receipt, history.
- Cash/non-cash manual/split payment.
- Shift dan closing.
- Menu management.
- Ingredient, recipe, HPP, margin.
- Inventory ledger.
- Stock guard dan manager override.
- Purchase order.
- Live dashboard.
- Audit dan approval.
- Operator console lokal untuk OWNER dan STAFF dengan role/outlet dari session
  server, CSRF, same-origin, dan session HttpOnly.
- Integrasi Member Code, Voyager quote, Points/XP/Quest/Reward event boundary,
  serta payment/recovery simulator.
- Saga POS local sprint lab dengan lima surface: self-service Kiosk, assisted
  Cashier fallback, nota checker/KDS, Owner Dashboard, dan POS Admin.
- Cashier V2 dengan server-owned quote, shortcut tender tunai, preview
  kurang/kembalian, CTA first-fold, dan retry checkout ber-idempotency stabil.
- Owner Dashboard V2 dengan hierarchy Sekarang/Hari ini/Verifikasi, alert
  antrean dan settlement, payment breakdown, serta integration boundary.
- Admin Control Room V2 dengan search/filter availability, status per menu,
  preview dampak, alasan wajib, konfirmasi, dan feedback catalog version.
- Availability History read-only dengan before/after, actor, alasan, waktu,
  catalog version, dan filter Sold out/Dipulihkan.
- Expected-version guard untuk availability: request tanpa versi ditolak 422,
  versi stale ditolak 409, UI memuat state terbaru, dan operator wajib
  mengonfirmasi ulang tanpa auto-retry.
- Scheduled sold-out dengan pilihan 30 menit, 60 menit, akhir hari 22.00 WIB,
  atau manual; waktu server terlihat pada kartu dan audit history.
- Kiosk portrait 1080×1920 dan 720×1280 dengan flow order type, katalog,
  modifier per-line, cart, member optional, QRIS pending/recovery, success,
  idle reset, serta out-of-service fallback.
- P03 memakai fixed touch canvas: dokumen tidak ikut scroll, panel kategori dan
  katalog produk memiliki scroll sentuh internal, serta semua kartu kategori
  pada breakpoint yang sama memiliki tinggi identik.
- Atomic session bootstrap menyatukan create/resume session dan snapshot dalam
  satu request same-origin. First load turun dari tiga request dan satu 401
  menjadi satu request tanpa 4xx; completion/idle reset turun dari dua request
  menjadi satu sekaligus mencabut session lama.
- Saga Payment Confidence pada P08–P09: panduan scan/bayar/tunggu, live status
  server, polling production ber-backoff dan terbatas, pemeriksaan manual,
  peringatan anti-double-payment, serta recovery spesifik per status.
- Checkout quote guard pada P05–P08: fingerprint HMAC server, versi katalog,
  total, dan expiry wajib cocok dengan quote terakhir sebelum order/payment
  dibuat; drift mengembalikan pelanggan ke review dengan total lama → baru.
- Cashier Payment Confidence: satu QRIS uncertain mengunci checkout pengganti,
  menampilkan status/order/total server dan membuka katalog kembali hanya
  setelah paid atau terminal state.
- Catalog 22 menu dalam 7 kategori, modifier fixture, cash/shift, QRIS simulator,
  Member/Reward fixture, sold-out versioning, refund/remake contract, report,
  export, device/print boundary, dan safe kiosk reset.

## Prinsip data

- Inventory ledger adalah source of truth stok.
- Recipe/HPP adalah source of truth cost menu.
- Stock change material harus menjadi movement.
- POS harus stabil sebelum HR/report lanjutan.

## Status saat ini

Status: `SAGADEV_PLATFORM_PRODUCTION_DEPLOYED / PRODUCTION_ACTIVATED /
SAGAOPS_TRANSACTIONS_LOCKED / TRIAL99_CANARY_PAID /
SETTLEMENT_PENDING_CLEARING / HARDWARE_AND_OUTLET_PILOT_PENDING /
BUSINESS_READY=false`.

- Kiosk public demo aktif di `https://saga-pos-kiosk.vercel.app/kiosk` melalui
  deployment Vercel `dpl_4SGbVJdjAJjGRTSnjZUE4kRqf7k4`, memakai exact deployed
  source `b42419cefad6b585123bb4816353e8d49f97f373`. Surface publik dibatasi ke
  Kiosk dan API simulator; gateway nyata, canary, dan promo nyata tidak
  diaktifkan. State session/order bersifat ephemeral dan bukan runtime outlet.
- Setelah pelanggan memilih Dine In atau Takeaway, Kiosk meminta identifikasi
  Saga Member sebelum katalog. Member Code yang valid membuka sapaan personal,
  tiga rekomendasi aktif dalam tabel ringkas, dan kategori `Untukmu`; guest tetap
  dapat lanjut tanpa akun. NFC nyata ditampilkan jujur sebagai belum tersedia.
- Public demo kini menyediakan touch card `Tap NFC · SIMULATOR` setelah pilihan
  order type. Satu tap membuka welcome dan tiga rekomendasi tanpa meminta kode,
  tanpa menerima credential browser, serta tanpa membuat order/payment. Fitur
  hanya aktif pada public demo; physical NFC dan Customer Platform tetap OFF.
  Saat offline, status NFC berubah menjadi `Offline`, aksinya terkunci, dan
  guest tetap dapat membuka katalog termuat tanpa request NFC.
- Identitas Member terverifikasi kini dimiliki session server. Refresh memulihkan
  welcome/rekomendasi atau cart beserta benefit tanpa menyimpan raw Member Code
  di browser atau mengirim ulang credential pada quote/checkout. Pilihan guest
  dan fresh reset menghapus konteks server. Rekomendasi kini benar-benar dapat
  membuka modifier tanpa dead-end state machine.
- Quote yang dilihat pelanggan kini terikat HMAC, versi katalog, total, dan
  expiry. Jika Member, menu, atau total berubah sebelum QRIS dibuat, checkout
  ditolak sebelum mutation lalu P05 menampilkan total lama → baru untuk
  konfirmasi ulang. Production-canary quote dan checkout memakai policy
  TRIAL99 yang sama.
- Outage Saga Member pada P02A kini menawarkan `Coba lagi` dan
  `Lanjut sebagai guest` dengan penjelasan bahwa belum ada akun, benefit,
  order, atau pembayaran yang dibuat. Guest dapat memakai katalog yang sudah
  termuat saat offline. Public quote tidak membawa identifier member internal;
  binding member terverifikasi tetap berada pada fingerprint dan order server.
- P10 memberi waktu awal 30 detik untuk membaca nomor antrean dan detail order.
  Pelanggan dapat menambah 20 detik lewat satu tap sampai sepuluh kali; timer
  tetap membersihkan session bersama dan extension tidak membuat order/payment.
- Detail order panjang memiliki region scroll fokus untuk touch dan keyboard;
  halaman Kiosk tetap terkunci dan CTA `Selesai` tetap terlihat di fold.
- Bantuan persisten tersedia pada P02-P07. Pelanggan dapat membatalkan sesi
  pre-checkout lewat konfirmasi aman dalam tiga tap; decline atau network gagal
  mempertahankan draft, sedangkan P08-P10 tidak menawarkan cancel.
- Full regression 176/176, browser dua viewport,
  dependency/secret scan, production health/static smoke, serta browser UAT
  P10 sampai extension timer dan struk tujuh item lulus.
- Source exact `410ad19b1641dc47e84c86dc0b8324082d01083b` menambahkan atomic
  bootstrap dan sudah tercakup dalam runtime public terbaru.

- SagaDev Platform exact `1d7146c2be514f8764e940ee96ba8ce55e310325`
  aktif pada release `20260903154948-1d7146c`. Backup terenkripsi, checksum,
  disposable restore database platform, migration contract, atomic switch,
  health, auth boundary, dan kill-switch/default-off gate lulus.
- Saga POS branch `codex/saga-pos-vs01-kiosk-kds-dashboard` exact `8cdffeb`
  menargetkan runtime platform, memakai credential DPAPI CurrentUser, signed
  HMAC, production host allowlist, server-side `TRIAL99`, dan lulus 116/116
  test, static/type check, serta dependency audit nol vulnerability.
- Setelah intent pertama ditolak aman pada cap Rp220, founder menyetujui cap
  provider-total Rp250. Intent kedua Americano memakai amount produk Rp130 dan
  provider total Rp231, menghasilkan QR production dan dibayar nyata. Provider,
  ledger pusat, local order, KDS, dan Owner Dashboard sudah konsisten `PAID`;
  provider net Rp130, fee Rp101, settlement `pending_clearing`. Canary kembali
  dikunci dengan kill switch setelah tepat satu pembayaran berhasil.
- Candidate parser/reconciliation fix SagaDev Platform exact
  `c07f5f38950f6b7ef7c83018043530492ff0a0ff` sudah dipush dan lulus
  1.372/1.372 test, tetapi belum dideploy karena fresh encrypted backup gate
  gagal dua kali. Runtime production tetap exact `1d7146c2`; satu ledger canary
  direkonsiliasi atomik dari provider `Success` dengan audit metadata.

- Saga POS current branch head
  `1c383ef861b706728a0d712a02c0a9bda7596d17` sudah dipush. P08 kini menutup
  visual QR saat countdown mencapai `00:00` dan memicu tepat satu status check
  authoritative. Client tidak menetapkan status terminal; hanya response server
  yang dapat memindahkan flow ke P09. Ini mencegah scan ulang saat status ambigu.
  P03 memakai header
  dua kolom selebar konten: judul `Pilih menu favoritmu` dan kartu konteks yang
  menampilkan kategori aktif, jumlah menu, serta panduan yang berubah mengikuti
  pilihan. Ruang kanan kosong pada viewport 1080 px turun dari 148 px menjadi
  0 px; tinggi header tetap 151 px pada 720 dan 181 px pada 1080 tanpa
  horizontal overflow. Rail kategori
  photo-led pada 720x1280 sekarang memiliki scroll viewport mandiri yang
  berhenti sebelum cart dock. Fokus keyboard, pemilihan kategori, render ulang,
  dan return dari modifier mempertahankan kategori aktif terlihat tanpa
  mengubah `window.scrollY` atau posisi grid produk. Katalog Kiosk kini
  memiliki kategori Bagel dengan Creamcheese, Strawberry, Ham & Fresh, dan
  Moka Bagel. Rail kategori memakai foto produk pertama pada tujuh kartu yang
  lebih tinggi tanpa ikon. Bagel tidak
  mewarisi suhu, gula, atau add-on minuman dan input modifier tersebut ditolak
  server. Area bawah P08 memiliki jarak antarkontrol minimal 10 px pada
  720x1280. Harga Bagel Rp18.000/Rp20.000/Rp25.000/Rp20.000 masih
  `NEEDS CONFIRMATION` sebelum activation. Full 163/163 dan focused Kiosk 31/31
  lulus; Axe serious/critical nol, overflow/fold/touch, transparansi aset,
  dependency audit, dan secret diff scan lulus. Jika menu menjadi
  sold out setelah masuk cart, Kiosk memuat ulang katalog server, melepas hanya
  item yang habis, mempertahankan item valid, dan meminta quote ulang. Bila cart
  kosong, pelanggan kembali ke katalog dengan arahan memilih pengganti; recovery
  membuat 0 payment intent. Cart belum dibayar juga pulih setelah reload untuk
  session server yang sama dan meminta quote
  ulang. Draft maksimal 15 menit hanya menyimpan identifier, quantity, order
  type, dan catatan; tidak menyimpan harga, member code, atau payment. Idle,
  new session, checkout, mismatch, expiry, serta produk tidak aktif diproses
  fail-closed. Jalur member kini
  mengikuti capability `memberMode=code`, mendukung input alfanumerik, dan
  menampilkan kode tersamarkan, tier, benefit, subtotal, serta total final
  sebelum QRIS dibuat. Verifikasi member menghasilkan nol payment intent;
  checkout terjadi tepat setelah CTA konfirmasi total. Revisi founder sebelumnya
  memperbesar tombol dan teks kategori P03; P05 kini memakai table-card ringkas
  yang tetap berada di atas ketika hanya ada satu item, dengan quantity dan
  line total yang mudah dipindai; P10 menampilkan detail item setelah pembayaran
  berhasil. Alignment ImageGen V2 tetap code-native pada modifier P04 serta cart
  P05. Density
  720x1280 dan 1080x1920 kini memakai spacing serta touch geometry yang
  proporsional tanpa whitespace fungsional berlebih. Suhu, tingkat manis,
  Extra Shot Rp5.000, dan Oat Milk Rp7.000 menjadi pilihan eksplisit; add-on
  multi-select divalidasi dan dihitung oleh server. Cart memisahkan edit,
  hapus, quantity, undo, serta perubahan order type yang selalu melakukan
  requote server. P01 welcome kini memakai aset ilustratif Es Kopi Saga yang
  sama dengan katalog, bukan cup generik CSS. Hero, katalog, modifier, dan cart
  kini memiliki recovery jujur ketika gambar gagal dimuat tanpa memblokir alur
  pesan. Full suite terkini 158/158 dan focused Kiosk 25/25 lulus;
  Axe serious/critical nol, no horizontal overflow, touch/density gap, secret
  diff scan nol temuan, dan OSV 31 package/0 vulnerability lulus.
  Endpoint npm audit resmi tidak memberi respons dalam batas waktu dan dicatat
  sebagai keterbatasan jaringan, bukan bukti pass.
- Cashier Payment Confidence exact `4a4ff91` menambah active QRIS status card,
  uncertain-state checkout lock, bounded server checks, accessible status, dan
  logout cleanup. Focused 4/4 dan full suite 141/141 lulus; dua viewport,
  Axe, overflow, target 56 px, exactly-once fulfillment, secret scan, serta OSV
  31 package/0 temuan lulus. `npm audit` resmi tetap timeout.
- Seluruh 22 kartu menu kini memiliki visual; 13 di antaranya illustrative dummy.
  Empat aset Bagel ImageGen disimpan sebagai source PNG transparan dan WebP
  640x640 berukuran 98-122 KB. Aset referensi aktif dioptimalkan menjadi 1,60 MB dalam WebP dengan
  source PNG tetap dipertahankan dan proses build yang dapat diulang.
  Placeholder kotak tulisan tidak lagi dipakai untuk katalog saat ini. Aset
  dummy tidak membuktikan resep/penampilan produk dan seluruh visual dummy tetap
  memerlukan owner review serta penggantian foto nyata sebelum activation.
- Perubahan ini `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`; runtime SagaDev
  Platform, lock transaksi, settlement, readiness 84/100, dan
  `BUSINESS_READY=false` tidak berubah.
- KDS V2 pada `973f81c` menambah server-clock ticket aging, summary
  Baru/Diproses/Siap, status filter, urutan tertua, modifier/note yang tetap
  terlihat, target aksi besar, dan visual Plus Jakarta Sans. Polling tidak lagi
  membuat seluruh queue sebagai live announcement. Browser 1280×800 dan
  768×1024, Axe, serta full suite 126/126 lulus; tidak ada dependency baru.
- Cashier V2 feature exact `2cfaf9e` dan current branch head `ba463a6`
  menambahkan quote server sebelum pembayaran, shortcut uang pas/pecahan,
  preview kurang/kembalian, CTA first-fold, dan safe retry. Validasi kurang
  bayar kini terjadi sebelum order/payment/fulfillment dibuat. Full suite
  130/130, browser 1440×900 dan 1024×768, Axe, serta audit dependency lulus.
  Status tetap `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.
- Owner Dashboard V2 exact `287b26d` menambah server-fact freshness, attention
  engine untuk umur antrean/unchecked settlement/ready pickup, queue stages,
  payment breakdown, accessible order table, dan status integrasi public-safe.
  Full suite 131/131, browser 1440×900 dan 1024×768, Axe, serta audit dependency
  lulus. Dashboard tetap read-only dan tidak mengubah status KDS/payment.
- Admin Control Room V2 exact `960a5e6` mengganti grid availability satu klik
  menjadi command desk yang searchable/filterable. Mutasi tetap per-menu dan
  server-owned, dengan dampak Kiosk/Cashier lokal, alasan wajib, cancel/focus
  recovery, serta catalog version setelah konfirmasi. Full suite 132/132,
  browser 1440×900 dan 1024×768, Axe, audit dependency, dan secret scan lulus.
- Availability History exact `e0df398` mengekspos maksimal 20 event audit
  server newest-first kepada Owner Admin. History menampilkan before/after,
  item, actor, reason, timestamp machine-readable, dan version dalam tabel
  semantik yang dapat difilter. Full suite 132/132 dan Axe lulus; dependency
  tidak berubah. Fresh audit production kemudian lulus dengan nol vulnerability.
- Stale-version conflict guard exact `54fda1a` mengharuskan `expectedVersion`
  pada mutasi availability. Versi hilang ditolak 422 dan versi stale ditolak
  409 sebelum state, catalog version, atau audit berubah. Admin menutup dialog
  stale, memuat fakta server terbaru, menampilkan alert persisten, dan meminta
  konfirmasi eksplisit baru tanpa auto-retry. Skenario browser dua tab, full
  suite 132/132, Axe nol serious/critical, no-overflow, audit dependency nol,
  dan secret scan lulus tanpa dependency baru.
- Scheduled availability exact `f5c446b` memberi owner pilihan pulih 30/60
  menit, akhir hari 22.00 WIB, atau manual. Server menghitung waktu, menolak
  reset mode invalid 422, memulihkan secara lazy pada akses pertama setelah
  expiry, menaikkan catalog version, dan menulis audit actor `SYSTEM`. Admin
  menampilkan waktu absolut pada kartu/history tanpa countdown live. Full suite
  133/133, browser 1440×900 dan 1024×768, Axe nol serious/critical, no-overflow,
  visual review, readiness evidence, dan secret scan lulus. Dependency tidak
  berubah; fresh registry audit timeout dua kali, sementara exact `54fda1a`
  sebelumnya memiliki audit nol vulnerability.

- Saga POS source branch `codex/saga-pos-vs01-kiosk-kds-dashboard` exact
  `d9598dd94200c8cd3e2fc1bbdf8245acec1f69cc` menyelesaikan local program
  24 wave/120 batch/480 micro-sprint. Disposition: 62 batch `PASS_LOCAL`, 28
  `LOCAL_SIMULATED`, 30 `BLOCKED_EXTERNAL`; readiness M4 84/100.
- 112/112 test, browser E2E lima surface, automated accessibility, dependency
  audit 0 vulnerability, 6 screenshot evidence, dan enam migration local
  PostgreSQL/RLS/cross-outlet deny
  lulus. Exact source sudah dipush ke branch tersebut tetapi belum merge.
- Readiness extension menambah 10 wave/40 batch/160 micro-sprint dari durable
  runtime sampai owner business-ready decision. Empat batch W25/16 micro-sprint
  lulus lokal dan membuka +4. Contract/preparation 36 batch lain telah
  dijalankan; external verify/accept masih menunggu input dan tidak membuka poin.
- Disk-backed local durable runtime menyediakan migration registry, atomic
  checkout/outbox, collision-safe order counter, signed-event replay guard,
  exactly-once fulfillment, manual-finance refund work item, dan restart
  recovery Kiosk/KDS/Dashboard. Ini bukan external Postgres atau staging proof.
- Founder mengunci SagaDev Gateway sebagai satu-satunya payment gateway Saga
  POS dengan product binding `sagaops`; PJP/acquirer tetap dikelola di belakang
  SagaDev dan tidak dikonfigurasi langsung oleh POS.
- Local contract mencakup readiness, product-scoped signed request, idempotent
  create, signed event/status recovery, amount/order/currency/replay guard,
  settlement facts, serta full-refund manual-finance yang tidak memalsukan
  status refunded. Owner kemudian mengizinkan route production-direct tanpa
  sandbox dengan promo private `TRIAL99`, maksimal lima transaksi, source push,
  dan uang nyata. Guard lokal membatasi satu item, private device, Rp130-Rp250
  per payment, total Rp1.100, window, host/callback/vault/settlement dan kill
  switch. Product, signed credential, stable callback, dan endpoint production
  sudah tersedia. Percobaan kedua menghasilkan satu pembayaran nyata Rp231;
  transaksi kini terkunci dan settlement masih menunggu clearing.
- Lima surface dapat memakai disk-backed local durable runtime dan restart
  recovery sudah terbukti lokal. Evidence ini bukan bukti external PostgreSQL,
  multi-instance runtime, staging, atau production recovery.

- Private canonical `main` `614fe7fdaffd7c739b0c7efed97f8a5e33297eea`
  memuat operator console, API v1, domain services, migration, local PostgreSQL
  semantics, RLS, recovery, dan automated browser acceptance.
- 76 test source, clean-room browser verification, local load, security control,
  serta artifact restore lulus untuk fixture internal.
- Founder telah menerima batas Goal 1 sebagai complete local internal alpha;
  penerimaan ini bukan izin staging atau production.
- Founder menerima Goal 2 hanya pada batas local validated. Dua belas kelompok
  gate lokal dan full regression SagaBook 1.339/1.339 lulus; scope staging dan
  pilot tetap ditunda serta tidak diklaim selesai.
- Goal 3 memetakan dan mengeksekusi 480 micro-sprint secara konservatif: 124
  `LOCAL_PASS`, 108 `PARTIAL_LOCAL`, 118 `EXTERNAL_GATE`, dan 130
  `WAITING_PREREQUISITE`. Exact ops provenance `e3a5431` dan CI commit tersebut
  lulus; source candidate tetap menunggu independent review dan tidak digabung
  sebagai bagian dari acceptance ini.
- Kebijakan incremental spend kini Rp0. Existing VPS/domain boleh dinilai untuk
  reuse, tetapi audit read-only menemukan disk root 83%, staging legacy yang
  bertabrakan, monitoring gagal, dan source durable runtime belum siap.
  Resource/billing/DNS/database tetap tidak berubah.
- Seluruh 432 micro-sprint Goal 4 sudah didisposisi: 40 `LOCAL_PASS`, 107
  `PARTIAL_LOCAL`, 88 `EXTERNAL_GATE`, dan 197 `WAITING_PREREQUISITE`.
  Preparation lokal/zero-cost yang sah telah dijalankan; route scale,
  external runtime/provider, outlet kedua, pilot dan production tetap `NO_GO`.
  Exact ops `b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3`; CI lulus.
- Strategi Goal 5 menempatkan SagaOPS pada outlet/device operating factory dan
  payment/finance operations dalam B066-B077. Pack total tervalidasi pada 20
  wave, 120 batch dan 480 micro-sprint. Ini masih planning zero-cost:
  onboarding outlet cluster, provider, payment nyata, hardware, deployment dan
  production route belum dimulai.
- Eksekusi preparation Goal 5 kini mendisposisi seluruh 480 unit: 59 local
  pass, 119 partial local, 106 external gate, dan 196 waiting prerequisite.
  SagaOPS tetap hanya memiliki bukti source/local; outlet cluster, provider,
  hardware, payment nyata, deployment dan production belum dijalankan.
- Strategi Goal 6 mencakup SagaOPS pada wave outlet network/device fleet dan
  payment/settlement/treasury, dalam pack total 22 wave, 132 batch dan 528
  micro-sprint. Ini hanya planning serta preparation lokal/Rp0; outlet network,
  device commissioning, provider, settlement nyata, deploy dan activation
  belum dimulai. Entry Goal 6 tetap `NO_GO` karena Goal 5/G519 belum diterima.
- SagaOPS operator UAT kini dapat dijalankan bersama Member dan Customer API
  melalui one-command local pilot hub. OWNER, STAFF-01 dan STAFF-02 memakai
  credential sintetis yang dibuat di memori proses; provider, NFC dan printer
  tetap simulator/OFF/fallback. Ini local technical UAT, bukan outlet pilot.
- QRIS dynamic, thermal printer, real offline conflict resolution, dan provider
  nyata belum termasuk bukti production.

## Belum boleh diklaim

- Dummy data bukan transaksi outlet.
- Offline simulation bukan offline production.
- Manual QRIS bukan payment gateway.
- Local PostgreSQL/PGlite bukan bukti kapasitas atau disaster recovery staging.
- Automated browser UAT bukan human business acceptance.
- Fixture Member/Reward/QRIS bukan Customer Platform/provider acceptance.

## Ide konten

- Kenapa stok harus berbasis movement.
- Recipe/HPP sebagai dasar harga.
- Closing shift dan cash variance.
- Dari stock warning menjadi purchase order.
