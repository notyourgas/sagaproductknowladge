# SagaOPS Product Knowledge

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
