# SagaOPS Dossier


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



## 2026-09-05 - Saga POS integrated finalization batch

- `CONFIRMED / LOCAL_VALIDATED / SOURCE_PUSHED_BRANCH / NOT_DEPLOYED / BUSINESS_READY=false`.
- Source: `4cebfd1687f247be51e369d50844bf70e118d93e`.
- Durable order/member/staff and production-item snapshots now survive recovery; mixed BAR/FOOD tickets require all stations ready before pickup.
- Owner reports support business-date selection and paid-only item rankings; current production queue remains live independently.
- Validation: 182/182 regression tests, seven migrations, focused browser/Axe/overflow checks and zero dependency vulnerabilities. No live transaction or production activation.
- Finalization has 32 planned sprints and remains IN_PROGRESS, not fully accepted. Real operator hosting/auth, Customer Platform, hardware, staff UAT and business acceptance remain gates.
- Production/public demo unchanged by this batch. Continue durable integration and external gates; no readiness increase from local validation.


## Tujuan dokumen

Mendefinisikan scope operating system coffeeshop, readiness, bisnis, teknis,
sales, dan konten SagaOPS.

## Konteks dan status bukti

- Updated: 5 September 2026
- Latest material delivery: `KIOSK_EARLY_NFC_MEMBER_DEMO_DEPLOYED /
  PHYSICAL_NFC_NOT_ACTIVATED`
- Delivery: `SOURCE_PUSHED_BRANCH / PORTRAIT_KIOSK_LOCAL_VALIDATED / KIOSK_PERSISTENT_HELP_SAFE_CANCEL_PUBLIC_DEMO_DEPLOYED / KIOSK_SUCCESS_TIME_AND_SCROLL_PUBLIC_DEMO_DEPLOYED / KIOSK_QRIS_EXPIRY_HANDOFF_PRODUCTION_DEPLOYED / KIOSK_CONTEXTUAL_HEADER_PRODUCTION_DEPLOYED / KIOSK_ATOMIC_BOOTSTRAP_LOCAL_VALIDATED / KIOSK_VERCEL_PUBLIC_DEMO_ACTIVE / KIOSK_BAGEL_CATEGORY_PHOTO_LOCAL_VALIDATED / KIOSK_SOLD_OUT_RACE_RECOVERY_LOCAL_VALIDATED / KIOSK_CART_SESSION_RECOVERY_LOCAL_VALIDATED / KIOSK_MEMBER_BENEFIT_CONFIRMATION_LOCAL_VALIDATED / KIOSK_FOUNDER_REVIEW_UI_LOCAL_VALIDATED / KIOSK_IMAGE_RECOVERY_LOCAL_VALIDATED / KIOSK_WELCOME_HERO_LOCAL_VALIDATED / KIOSK_UIUX_SPRINTS_LOCAL_VALIDATED / KIOSK_MODIFIER_CART_V2_LOCAL_VALIDATED / KIOSK_PAYMENT_CONFIDENCE_LOCAL_VALIDATED / MENU_ASSETS_22_OF_22_LOCAL_VALIDATED / KDS_V2_LOCAL_VALIDATED / CASHIER_V2_LOCAL_VALIDATED / OWNER_DASHBOARD_V2_LOCAL_VALIDATED / ADMIN_CONTROL_ROOM_V2_LOCAL_VALIDATED / ADMIN_AVAILABILITY_HISTORY_LOCAL_VALIDATED / ADMIN_STALE_VERSION_GUARD_LOCAL_VALIDATED / ADMIN_SCHEDULED_AVAILABILITY_LOCAL_VALIDATED / SAGA_POS_M4_LOCAL_DURABLE_RUNTIME / SAGADEV_PLATFORM_PRODUCTION_DEPLOYED / TRIAL99_CANARY_PAID`
- Activation: `KIOSK_PUBLIC_DEMO_ACTIVE / SAGADEV_PLATFORM_ACTIVATED / TRANSACTIONS_LOCKED`
- Business readiness: `BLOCKED`

## Overview produk

Operating system coffeeshop yang memisahkan SagaPOS untuk kasir dan Back Office
untuk owner/manager.

## Masalah yang diselesaikan

Order, shift, cost, inventory, purchase, approval, dan report sering tidak
memiliki source of truth serta audit yang sama.

## Target pengguna

Kasir/barista, manager, owner, purchasing, dan inventory operator.

## Persona pengguna

- Kasir: order/payment cepat.
- Manager: shift, override, variance, dan approval.
- Owner: HPP, margin, stock, dan performance.
- Purchasing: low-stock sampai purchase order.

## Value proposition

POS dan back office terhubung oleh inventory movement, recipe/HPP, dan audit.

## Use case

Order/modifier/payment/receipt, shift/closing, menu/recipe/HPP, inventory
ledger, stock guard, override, purchase order, dashboard, dan approval.

## Fitur utama

Workflow lokal mencakup POS/back office, operator console OWNER/STAFF,
session-derived role/outlet, checkout, recovery, closing, approval, reporting,
Member Code/Voyager/Reward integration boundary, dan fallback tanpa printer.

Public demo Kiosk exact deployed source
`b42419cefad6b585123bb4816353e8d49f97f373` menambahkan Tap NFC simulator
setelah Dine-in/Takeaway. Aksi besar 144 px mengikat Member fixture pada session
server dan membuka welcome, tiga rekomendasi, modifier, serta kategori
`Untukmu` tanpa browser credential dan tanpa membuat order/payment. Endpoint
memerlukan same-origin, HttpOnly session, CSRF, rate limit, serta order-type
policy; runtime non-public-demo tidak memproyeksikannya. Stable deployment
`dpl_4SGbVJdjAJjGRTSnjZUE4kRqf7k4` lulus full 176/176 dan browser smoke dua
viewport dengan Axe serious/critical 0, overflow 0, serta application error 0.
Physical NFC, Customer Platform production, gateway nyata, dan business
readiness tidak berubah.
Saat koneksi terputus, status NFC menjadi `Offline`, aksinya terkunci, dan
guest tetap masuk katalog termuat tanpa request NFC.

Saga POS local sprint lab menambah self-service Kiosk, assisted Cashier
fallback, nota checker/KDS, Owner Dashboard, POS Admin, menu Kopi Saga Salak,
modifier, cash/shift, QRIS simulator, Member/Reward fixture, availability,
refund/remake, report/export, device health dan print spooler boundary.
Kiosk portrait P01-P12 pada source exact
`5568c2f26da6668a60c0c2120740395b4a542ec6` kini memiliki hierarchy kategori
dan modifier yang lebih jelas, cart dengan harga per item dan undo, jalur QRIS
tunggal yang lebih singkat, QR stabil saat polling, bantuan kontekstual,
recovery offline/outage/idle, serta focus dan status announcement yang lebih
tepat. Katalog berisi 22 produk dalam 7 kategori. Kategori Bagel memuat empat
aset ImageGen transparan; rail kategori memakai foto produk pertama pada kartu
lebih tinggi tanpa ikon. Bagel tidak menerima modifier suhu/gula/add-on
minuman, dan P08 menjaga jarak antarkontrol bawah minimal 10 px di 720x1280.
Harga empat Bagel masih `NEEDS CONFIRMATION`: Rp18.000, Rp20.000, Rp25.000,
dan Rp20.000. Pada 720x1280, rail kategori menjadi scroll viewport mandiri yang
clear terhadap cart dock; fokus keyboard, render ulang, serta return dari
modifier mempertahankan kategori aktif tanpa memindahkan halaman/grid. P03
sekarang mengunci seluruh canvas ke viewport fisik dan memberi scroll sentuh
internal hanya kepada rail kategori serta product grid. Tinggi kartu kategori
identik per breakpoint: 132 px desktop, 124 px portrait 720, dan 118 px layar
sempit; gambar boleh mengecil di dalam frame tanpa mengubah ukuran kartu.
P04-P05 mengikuti density reference ImageGen V2 secara code-native:
pilihan suhu/manis dan dua add-on berharga dihitung server, total menyatu dengan
CTA, edit/hapus quantity dipisah, order type dapat diubah dengan requote, dan
jarak antarkelompok action dibatasi. P01 memakai aset ilustratif Es Kopi Saga
yang sama dengan katalog menggantikan cup CSS generik. Jika aset gagal dimuat,
hero, katalog, modifier, dan cart menampilkan fallback jujur tanpa mengganti
identitas produk atau memblokir order flow. Dua puluh dua aset aktif memakai
WebP total 1,60 MB; empat aset Bagel berukuran 98-122 KB per file. Full suite 160/160 dan
focused Kiosk 31/31 lulus; Axe serious/critical nol, no horizontal overflow,
touch/density gap, secret diff scan nol temuan, dan OSV 31 package/0
vulnerability lulus. Revisi founder berikutnya memperbesar kontrol kategori,
mengubah P05 menjadi table-card ringkas tanpa vertical stretch untuk satu item,
dan menambahkan rincian quantity, modifier/catatan, serta line total pada P10.
Jalur member mengikuti capability code-only, memakai input alfanumerik, dan
memperlihatkan benefit serta total server sebelum checkout. Verifikasi member
tidak membuat payment intent; CTA konfirmasi membuat tepat satu checkout.
Cart session recovery memulihkan pesanan setelah reload lalu meminta quote ulang
dari server. Draft tidak menyimpan harga/member/payment, terikat session, dan
dibersihkan pada idle/new session/checkout/expiry. Sold-out race recovery
menyegarkan katalog ketika quote menolak item stale, melepas hanya item habis,
mempertahankan item valid, dan mengarahkan pelanggan memilih pengganti bila cart
kosong. Recovery membuat 0 payment intent. Focused Kiosk terkini 24/24 dan full
suite 160/160 lulus.
Kiosk exact runtime `1c383ef861b706728a0d712a02c0a9bda7596d17`
aktif pada `https://saga-pos-kiosk.vercel.app/kiosk` melalui Vercel deployment
`dpl_CF5mvsKEMD7QsYhNhTDxLPvy65aN`. Public surface hanya Kiosk dan API QRIS
simulator; tidak mengaktifkan gateway, promo, canary, atau transaksi nyata.
Full 162/162, focused deployment 6/6, production smoke, dan browser UAT order
sampai success lulus. State session/order serverless masih ephemeral dan ada
peringatan deprecation Node `DEP0169`; validasi fisik portrait, durable runtime,
owner visual/add-on sign-off, dan production outlet release gate tetap
diperlukan.
Source exact `410ad19b1641dc47e84c86dc0b8324082d01083b` mengubah bootstrap
session menjadi satu POST same-origin atomik. First load turun 3→1 request dan
expected 401 turun 1→0; completion/idle reset turun 2→1 request sambil mencabut
session lama. Browser acceptance pada 720×1280 dan 1080×1920 membuktikan nol
console/page/request error, Axe serious/critical nol, outage retry tetap aman,
dan full regression 163/163 lulus. Atomic bootstrap kini tercakup dalam
runtime public terbaru.
Source exact `16ae7940be06dee154df5ef8ecd0ff04118d4b78` menutup ruang kanan
kosong P03 dengan header dua kolom selebar konten. Kartu kanan memuat kategori
aktif, jumlah menu, dan copy panduan kontekstual; bukan ornamen dekoratif.
Pada 720×1280 tinggi header 151 px dengan kartu 243 px, sedangkan pada
1080×1920 tinggi 181 px dengan kartu 353 px; right gap dan horizontal overflow
keduanya nol. Fokus heading tetap tersedia secara programatik tanpa outline
yang menyerupai kontrol. Focused Kiosk 31/31 dan full 163/163 lulus termasuk
Axe serious/critical nol, dependency audit, dan secret scan. Exact artifact
dipromosikan ke stable Vercel; public health/static smoke dan browser journey
welcome→order type→katalog membuktikan header kontekstual aktif.
P08 kini melakukan expiry handoff ketika countdown mencapai `00:00`: QR
ditutup overlay agar tidak dipindai ulang dan tepat satu status check dikirim ke
server. Client tidak pernah menetapkan `EXPIRED`; response provider/server tetap
menjadi authority untuk P09 atau success. Browser clock pada 720×1280 dan
1080×1920 membuktikan overlay tanpa overflow, Axe serious/critical nol, satu
request, serta tidak ada false success. Focused Kiosk 32/32 dan full 164/164
lulus. Exact artifact dipromosikan setelah candidate health/static/asset smoke.
Kiosk early-member exact source `ddb16339578e8696ff154260a027d04c162a9676`
memindahkan identifikasi Member dari setelah cart menjadi sesudah pilihan Dine
In/Takeaway. Member Code tervalidasi server sebelum katalog, raw code tidak
dipersistenkan ke draft, dan respons public-safe hanya memuat nama tampilan,
kode tersamarkan, tier, serta rekomendasi dari produk aktif. Member mendapat
screen sapaan, tiga rekomendasi tabel ringkas, serta kategori `Untukmu`; guest
tetap memiliki jalur eksplisit. Region NFC hadir sebagai capability tetapi
jujur `NOT_RUN` karena hardware belum tersedia. Full regression 165/165,
focused unit/API 14/14, browser 21/21 pada 720×1280 dan 1080×1920, Axe
serious/critical nol, no-overflow, target sentuh, dependency audit, secret scan,
candidate/stable smoke, dan browser public journey lulus. Runtime code aktif
pada stable URL melalui deployment `dpl_H8kP3NdyzdufLJ2xhMABC5AmXGNo`.
Customer Platform external UAT, NFC fisik, durable outlet runtime, dan owner
business acceptance tetap pending; readiness formal tetap 84/100.
Kiosk Member recovery exact runtime source
`172c56a1435196e2edf46d6348884b33094c1ac9` aktif melalui deployment
`dpl_H4Pqewf4wL46PZWTqEbpwUgKD8Mb`. Ownership identitas terverifikasi berada
pada session server; browser tidak lagi menyimpan atau mengirim ulang raw Member
Code pada quote/checkout. Bootstrap memulihkan P02B atau P05 beserta benefit,
guest/fresh reset membersihkan konteks server, dan rekomendasi dapat membuka P04
tanpa transisi ilegal. Baseline refresh yang membutuhkan identifikasi ulang
turun menjadi nol langkah tambahan dan total member tetap Rp11.700 untuk fixture
Americano, lalu kembali Rp13.000 setelah guest dipilih. Full 167/167, focused
Kiosk 28/28, Axe serious/critical nol, dua viewport, overflow, reduced-motion,
dependency/secret scan, candidate/stable smoke, dan remote browser journey
lulus. Runtime tetap public simulator ephemeral; NFC dan Customer Platform
external UAT belum dijalankan.
Kiosk checkout quote guard exact runtime source
`7217bf2dd4b5ff54cd06c765501b5b9ba882127e` aktif melalui deployment
`dpl_9HVQW4Mafg26ZHf1QxVpXHP8jsZB`. Quote P05/P07 kini membawa fingerprint
HMAC server, catalog version, total, dan expiry. Tepat sebelum mutation,
runtime menghitung ulang cart, modifier, order type, Member/reward/promo, dan
seluruh komponen total; mismatch atau expiry menolak checkout sebelum order
dan payment dibuat. Browser kemudian memuat state server, kembali ke P05,
menampilkan total lama → baru, dan meminta konfirmasi ulang. Skenario Member
Rp11.700 berubah menjadi guest Rp13.000 menghasilkan nol order/payment intent.
Production-direct canary quote dan checkout memakai policy TRIAL99 yang sama.
Full 169/169, dua viewport portrait, Axe serious/critical nol, overflow nol,
dependency/secret scan, preview/stable smoke, serta browser public journey
lulus. Public runtime tetap simulator ephemeral; readiness formal 84/100,
NFC fisik, Customer Platform external UAT, outlet activation, dan
`BUSINESS_READY` tidak berubah.
Kiosk Member degraded recovery exact runtime source
`4f2986c8b51d14312cce81d4b0b7ecc820a1988a` aktif melalui deployment
`dpl_9sMc9pvvdDqSCi8AK6QGXyPxQHyA`. Ketika layanan Member gagal, P02A
menampilkan error tekstual dan tindakan eksplisit `Coba lagi` atau
`Lanjut sebagai guest`; jalur guest tetap dapat membuka katalog termuat saat
offline dan failure injection membuktikan nol order/payment intent. Public
quote hanya membawa nama tampilan, kode tersamarkan, dan tier; identifier
internal tetap berada pada trusted server context untuk fingerprint serta
binding order. Full 170/170, dua viewport portrait, Axe serious/critical nol,
overflow nol, target sentuh minimal 56 px, dependency/secret scan, stable
health, serta remote member journey lulus. Runtime tetap public simulator
ephemeral; readiness formal 84/100 dan gate external tidak berubah.
Kiosk P10 success time dan receipt-scroll control exact runtime source
`60200026b4372cf122855f69c5baaa2ddc2640a8` aktif melalui deployment
`dpl_GUmDu6skaFMCU7UgL3dcctav93vG`. Hard reset 12 detik berubah menjadi
default 30 detik dengan extension 20 detik melalui satu target sentuh, maksimal
sepuluh kali atau total 230 detik. Countdown terlihat sejak awal, extension
tidak membuat order/payment, dan setelah waktu habis session tetap dibersihkan
ke P01. Struk tujuh item memiliki region scroll fokus; drag touch dan keyboard
menggerakkan detail tanpa menggeser halaman, sementara CTA tetap di fold. Full
172/172, browser clock 30→230→P01, dua viewport, keyboard, touch, reduced
motion, Axe serious/critical nol, overflow nol, dependency/secret scan, stable
health, serta public smoke tanpa console/page/request error lulus. Runtime tetap
public simulator ephemeral; readiness formal 84/100 dan gate external tidak
berubah.
Kiosk persistent help dan safe cancel exact runtime source
`85d9ed18ea37fa922d6ee9b6ef4a9f0d571a7da3` aktif melalui deployment
`dpl_CvrRuXWou6wfQR15TKb9frdumyLD`. P02-P07 kini mempertahankan Bantuan ketika
progress tampil. Pembatalan pre-checkout memerlukan konfirmasi dengan fokus
pada `Lanjutkan pesanan`, lalu fresh session membersihkan cart dan konteks
Member tanpa membuat order/payment. Decline atau reset offline mempertahankan
draft untuk recovery; P08-P10 tidak menawarkan cancel. Full 173/173, dua
viewport, target 56-80 px, focus return, fold, reduced motion, Axe/overflow,
dependency/secret scan, health, dan public smoke tanpa console/page/request
error lulus. Runtime tetap simulator ephemeral; readiness formal 84/100 dan
gate external tidak berubah.
Disk-backed local durable runtime kini mengikat checkout/outbox atomik,
idempotency, collision-safe order counter, signed-event replay guard,
exactly-once fulfillment, refund work item, dan restart recovery untuk
Kiosk/KDS/Dashboard. Ini belum external PostgreSQL atau staging evidence.

## Fitur MVP

Stable POS, shift, menu/recipe/HPP, inventory movement, purchase, audit, dan
manager override. Provider/hardware real belum termasuk evidence.

## Roadmap

1. Provision external PostgreSQL/queue/cache dan buktikan kapasitas, isolation,
   backup/restore, serta disaster recovery.
2. SagaDev Gateway product `sagaops`, scoped credential, stable callback,
   signed endpoint, dan kill switch sudah aktif. Satu controlled canary berhasil
   dibayar pada provider total Rp231 di bawah cap Rp250. Selanjutnya verifikasi
   clearing/settlement dan deploy parser fix hanya setelah fresh backup gate
   kembali lulus.
3. Signed SBOM, SAST/DAST dan independent release review.
4. Manual assistive-technology serta external operator/pilot validation.
5. Staging approval, controlled outlet pilot, lalu activation review terpisah.

## User journey

Setup menu/recipe/stock → open shift → order/payment → stock movement →
close/variance → purchase/replenish → owner report.

## User flow

Stock material berubah melalui ledger movement; override memiliki permission
dan reason; closing merekonsiliasi cash/non-cash.

## Business model

`NEEDS CONFIRMATION`: subscription per outlet/device, setup fee, hardware, support,
dan payment fee.

## Pricing

`NEEDS CONFIRMATION`: belum tersedia.

## Kompetitor

`NEEDS CONFIRMATION`: POS F&B, inventory/HPP tools, spreadsheet, dan integrated
restaurant operations.

## Diferensiasi produk

`PROPOSAL`: operator-first Indonesian coffeeshop workflow, ledger-based
stock, recipe/HPP, and shift variance.

## Brand positioning

Operating system coffeeshop dari kasir sampai back office.

## Messaging

- “Order cepat, stok tetap dapat ditelusuri.”
- “Recipe dan HPP menjadi dasar margin.”

## FAQ

**Apakah QRIS aktif?** Endpoint production aktif tetapi transaksi sedang
dikunci. Satu private canary telah dibayar nyata: amount produk Rp130, provider
total Rp231, provider net Rp130, fee Rp101. Settlement masih
`pending_clearing`; ini bukan izin transaksi publik.
**Apakah bisa offline?** Simulation bukan production acceptance.
**Apakah sudah siap outlet?** Belum; Goal 2 diterima hanya sebagai local
validated. Staging dilewati untuk scope saat ini, sedangkan provider,
independent review, commissioning, pilot, production, dan business gates masih
terbuka.

**Apakah semua sprint Goal 3 sudah dikerjakan?** Seluruh sprint yang sah pada
boundary lokal/kanonik sudah dijalankan dan diklasifikasikan. Dari 480 sprint,
124 lulus lokal, 108 partial lokal, 118 membutuhkan external gate, dan 130
menunggu prerequisite. Angka external/waiting bukan pass dan Goal 3 belum
complete.

Kebijakan aktif kini incremental spend Rp0; hanya existing domain/VPS boleh
dipakai setelah gate fail-closed. Audit read-only menemukan disk root 83%,
collision dengan staging legacy, monitor staging gagal, PostgreSQL belum
tersedia, dan Customer Platform masih local-alpha tanpa durable serving
integration. Owner self-review diterima sebagai owner review, bukan independent
review. Tidak ada resource, billing, DNS, database, provider, pilot, atau
production mutation.

Seluruh 432 micro-sprint Goal 4 kini memiliki disposition: 40 local pass, 107
partial local, 88 external gate, dan 197 waiting prerequisite. Preparation
read-only/local dan synthetic pada incremental budget Rp0 sudah dijalankan;
angka partial, external, dan waiting bukan pass. Public cohort, outlet kedua,
commercial tenant, provider nyata, deployment dan production route belum
dimulai. Statusnya `GOAL_4_ZERO_COST_PREPARATION_EXECUTED /
ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED`, bukan Goal 4 complete.

Goal 5 strategy menempatkan SagaOPS pada dua wave khusus: outlet/device
operating factory (B066-B071) dan gateway/settlement/finance operations
(B072-B077), lalu ringed outlet-cluster expansion pada B115. Seluruh pack
berisi 20 wave, 120 batch dan 480 micro-sprint; preparation hanya lokal,
read-only, synthetic dan Rp0. Tidak ada outlet baru, merchant/provider call,
hardware qualification, deployment atau production activation yang dimulai.

Execution ledger Goal 5 mencatat 480 unit sebagai 59 local pass, 119 partial
local, 106 external gate dan 196 waiting prerequisite. Fresh local source
baseline lulus 17/17, tetapi bukti ini tidak menggantikan outlet/device field
UAT, provider certification, settlement, deployment atau operating-cycle
evidence. SagaOPS tetap `IMPLEMENTED_NOT_DEPLOYED / PRODUCTION_UNCHANGED` untuk
scope Saga Member ini.

Goal 6 strategy menempatkan SagaOPS pada operating model jaringan outlet,
device fleet, payment/settlement/treasury, support dan bounded network
expansion. Pack keseluruhan berisi 22 wave, 132 batch dan 528 micro-sprint.
Seluruh artifact saat ini tetap planning/local/synthetic dengan incremental
spend Rp0. Goal 5/G519, exact scope, device field evidence, provider
certification, reconciliation dan operating proof belum tersedia, sehingga
route SagaOPS tetap `NO_GO` dan NFC OFF.

One-command local pilot launcher kini menyatukan akses uji SagaOPS
OWNER/STAFF dengan Member PWA dan Customer API pada loopback. Credential
operator dihasilkan runtime-only dan tidak disimpan. Fresh SagaOPS suite
76/76 lulus. Bukti ini menutup usability teknis launcher lokal saja; QRIS,
printer, NFC, device field UAT, durable runtime dan outlet operation tetap
belum terbukti.

Saga POS program khusus Kopi Saga Salak telah menjalankan 24 wave, 120 batch,
dan 480 micro-sprint pada boundary lokal. Disposition batch adalah 62
`PASS_LOCAL`, 28 `LOCAL_SIMULATED`, dan 30 `BLOCKED_EXTERNAL`; 334 micro-sprint
memiliki local pass evidence dan 118 tetap external pending/NOT_RUN. Source
exact `d9598dd94200c8cd3e2fc1bbdf8245acec1f69cc` lulus 112/112 test, browser
E2E/accessibility, dependency audit, screenshot evidence, serta local
PostgreSQL enam migration/RLS/cross-outlet deny.

Source implementation `9a43a89`, current branch head `795cc33`, mengganti
customer kiosk menjadi pengalaman portrait
P01-P12 pada 1080×1920 dan 720×1280. Alur mencakup order type, katalog dua
kolom, modifier per-line, cart/server quote, member optional, QRIS-only,
pending, recovery, server-confirmed success, idle reset, dan out-of-service.
Visual memakai Plus Jakarta Sans lokal berlisensi, paper/espresso/lime dan
icon Feather-style dari pedoman Saga Member V5; typography, spacing, dan touch
geometry tetap code-native. Sembilan aset menu konvensional adalah kandidat;
sembilan menu khas kini memakai illustrative dummy PNG transparan 512×768
hasil ImageGen, bukan lagi fallback kotak tulisan. Semua 18 kartu memiliki
visual dan tidak ada code-drawn fallback pada katalog saat ini. Full suite
133/133, focused asset/browser 8/8, Axe tanpa serious atau critical issue, dua
viewport portrait, QR allowlist, reload recovery, serta KDS exactly-once lulus.
Aset dummy belum membuktikan resep atau appearance final dan seluruh visual
menunggu owner review/foto nyata. Ini `LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED` dan tidak membuka external gate atau transaksi baru.

Saga Payment Confidence exact `795cc3327249aeee7575deb66bdda9e2be09d1f3`
menutup gap P08 Payment Pending dan P09 Payment Recovery. Customer melihat urutan
scan, bayar, lalu tunggu konfirmasi; status server diumumkan melalui live region;
production polling memakai backoff 2,5/4/6/10/15/20 detik lalu berhenti; manual
status check tetap tersedia tanpa membuat intent baru. Unknown, expired, failed,
dan cancelled memiliki risiko dan tindakan berbeda, sementara warning melarang
pembayaran ulang sebelum status dipastikan. Full suite 138/138, focused 13/13,
dua viewport portrait, Axe, overflow, touch target, secret scan, dan OSV 31
package/0 temuan lulus. `npm audit` resmi timeout dua kali. Ini hanya source/local
validation; gateway runtime, canary lock, settlement, dan readiness 84/100 tidak
berubah.

Cashier Payment Confidence exact `4a4ff91acdc9c2117efc268d525317971e4de2ff`
memperluas kepastian QRIS ke assisted checkout. Selama payment `PENDING` atau
`UNKNOWN`, katalog dan checkout pengganti dikunci; card menampilkan order,
total, status server, dampak ke antrean, serta warning pembayaran ganda. Status
check production memakai bounded backoff, simulator tetap manual, dan paid
membuka katalog hanya setelah fulfillment server tercatat. Focused 4/4, full
suite 141/141, dua viewport, Axe, overflow, touch target, exactly-once, secret
scan, dan OSV 31 package/0 temuan lulus. Status tetap local validated/not
deployed; readiness 84/100 dan production tidak berubah.

KDS V2 exact `973f81c` menutup pain point scanability bar: ticket aging memakai
server clock, queue summary dan filter status terlihat di first fold, modifier
serta catatan pelanggan ikut dalam fulfillment payload, dan CTA aksi tetap
terlihat tanpa scroll pada 1280×800 maupun 768×1024. Threshold UX lokal adalah
steady di bawah 5 menit, attention 5–9 menit, dan urgent mulai 10 menit; angka
ini masih perlu dikalibrasi dari prep-time outlet. Full suite 126/126, Axe nol
serious/critical, dan audit dependency production nol vulnerability lulus.
Payment truth, CSRF, role boundary, server-owned price, serta exactly-once
fulfillment tetap dipertahankan.

Cashier V2 feature exact `2cfaf9e` dan current head `ba463a6` menutup gap
checkout tunai: total berasal dari endpoint quote server yang role/CSRF/rate
limited, shortcut tender menampilkan uang pas dan kembalian, nominal kurang
mengunci konfirmasi, dan request retry mempertahankan idempotency key selama
payload tidak berubah. Server juga menolak kurang bayar sebelum membuat fakta
order/payment/fulfillment parsial. CTA tetap first-fold pada 1440×900 dan
1024×768. Full suite 130/130, Axe nol serious/critical, dan audit dependency
nol vulnerability lulus tanpa dependency baru. Statusnya
`LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.

Owner Dashboard V2 exact `287b26d` mengubah angka statis menjadi decision board
read-only dengan hierarchy `Sekarang / Hari ini / Verifikasi`. Alert berasal
dari server snapshot untuk tiket 5/10 menit, unchecked settlement, dan ready
pickup; ringkasan antrean, payment breakdown, freshness, top menu, serta status
integrasi public-safe berada dalam satu scan. Tabel order memakai caption dan
scope header. Full suite 131/131, Axe nol serious/critical, dua viewport, dan
dependency audit lulus. Threshold antrean masih perlu kalibrasi outlet dan
status tetap `LOCAL_VALIDATED / IMPLEMENTED_NOT_DEPLOYED`.

Admin Control Room V2 exact `960a5e6` mengubah availability grid satu klik
menjadi command desk dengan server time/version, available/sold-out metrics,
search, status/category filter, badge, preview dampak Kiosk/Cashier lokal,
alasan terstruktur wajib, dan explicit confirm/cancel. Status dinamis diumumkan
melalui atomic status region, cancel mengembalikan fokus, dan kode integrasi
mentah diganti label operasional public-safe. Mutasi tetap per-menu, CSRF dan
owner role tetap berlaku, serta versioned catalog menjadi source of truth lokal.
Full suite 132/132, Axe nol serious/critical, browser 1440×900 dan 1024×768,
audit dependency nol vulnerability, dan secret scan lulus tanpa dependency
baru. Multi-terminal deployed cache, reset otomatis, audit-log review, dan
operator UAT nyata masih pending; status `LOCAL_VALIDATED /
IMPLEMENTED_NOT_DEPLOYED`.

Availability History exact `e0df398` menutup gap review alasan pada Admin.
Domain audit menyimpan `previousAvailable`, status akhir, item, actor, reason,
timestamp, dan version; reader mengembalikan structured clone newest-first
dengan limit 1-100, sementara Admin state membatasi 20 event. UI memakai filter
Semua/Sold out/Dipulihkan, honest empty state, caption, scope header/row, dan
elemen `time` machine-readable. Full suite 132/132, dua viewport, Axe nol
serious/critical, static/type check, dan secret scan lulus. Dependency/lockfile
tidak berubah; fresh npm audit kini lulus dengan nol production vulnerability.
History masih
in-memory local lab; persistence, retention, multi-instance, dan outlet UAT
belum terbukti.

Stale-version conflict guard exact `54fda1a` menutup lost-update lokal ketika
dua tab atau device mengubah availability dari catalog version yang sama.
Mutasi wajib mengirim `expectedVersion`; server menolak versi hilang dengan 422
dan versi stale dengan 409 sebelum state, version, atau audit berubah. UI tidak
melakukan auto-retry: dialog stale ditutup, state server terbaru dimuat, alert
persisten tampil, dan operator wajib mengonfirmasi ulang. Skenario browser dua
tab membuktikan request stale menghasilkan nol mutasi, full suite 132/132,
Axe nol serious/critical, no-overflow, audit dependency nol, dan secret scan
lulus. Boundary ini masih runtime lokal bersama; transaksi/row lock database,
cache convergence deployed, dan multi-device outlet UAT tetap belum terbukti.

Scheduled availability exact `f5c446b` menutup risiko menu terlupakan dalam
status sold-out antar-shift. Owner memilih 30 menit, 60 menit, akhir hari 22.00
WIB, atau manual; server menghitung absolute restore time dan menolak mode
invalid 422. Akses pertama setelah expiry memulihkan menu, menaikkan catalog
version, dan menulis audit event actor `SYSTEM`, sehingga expected-version guard
tetap mencegah intent lama. UI menampilkan waktu absolut tanpa countdown live.
Full suite 133/133, dua viewport, Axe nol serious/critical, no-overflow, visual
review, readiness evidence, dan secret scan lulus. Dependency/lockfile tidak
berubah; fresh npm registry audit timeout dua kali, sementara exact `54fda1a`
sebelumnya nol vulnerability. Pemulihan masih lazy, bukan background worker,
dan belum durable database/multi-instance/deployed cache evidence.

Readiness program mencapai M4 84/100 setelah W25 durable runtime lulus lokal.
Founder menyetujui harga customer-final,
service 0%, PBJT configurable tetapi 0% sampai konfirmasi daerah, cash rounding
Rp100, jam pilot 07:00-22:00/last order 21:30, benefit eksklusif, serta full
refund pilot. SagaDev Gateway dikunci sebagai payment gateway dengan product
binding `sagaops`; PJP pusat tidak diekspos ke Saga POS.

SagaDev local contract mempunyai readiness gate, signed request/event,
idempotency, bounded status recovery, replay/state/amount/order/currency guard,
settlement gross/fee/net, dan full-refund manual-finance work item. Refund API
tidak direka. Lima surface dapat memakai disk-backed local durable runtime;
external PostgreSQL dan multi-instance recovery belum terbukti. Provider QRIS,
Customer Platform,
printer, NFC, installed runtime, isolated staging, staff commissioning,
controlled pilot dan production tetap `NOT_RUN`; source commit juga belum
dipush/merge saat knowledge ini ditulis.

Readiness extension yang diminta Andreas membagi gap 80 ke 100 menjadi 10 wave,
40 batch, dan 160 micro-sprint. W25 durable runtime berbobot +4 dan mempunyai
empat batch `PASS_LOCAL`, sehingga readiness menjadi 84/100. Migration registry,
atomic checkout/outbox, collision/replay guard, disk restart, Kiosk/KDS/
Dashboard recovery, dan manual-finance refund telah lulus lokal. W26 kini
memakai owner-authorized SagaDev production-direct controlled canary dengan
promo private `TRIAL99`, maksimal lima transaksi, per-payment Rp130-Rp220 dan
total cap Rp1.100. Guard lokal lulus, tetapi product registration, stable
callback, vault refs, host allowlist, kill switch, settlement, dan live request
belum tersedia. W27-W34 mencakup Customer Platform, hardware/network, signed runtime, staging/security/recovery, staff
UAT, controlled pilot, guarded production activation, dan explicit owner
business-ready decision. Contract/preparation lokal untuk 36 batch telah
dijalankan, tetapi external verify/accept tetap blocked/not run. Deployment,
activation, dan business state tidak berubah.

## Technical overview

Private canonical source menyediakan versioned API, domain service, operator
browser UI, migration, local PostgreSQL semantics/RLS, idempotency, recovery,
security controls, dan content-addressed clean-room artifact. Bukti ini lokal;
external database, real provider, signed release, staging, dan production belum
terverifikasi.

## Integrasi

Payment/QRIS, thermal printer, inventory/purchasing, notification, dan future
accounting/export.

## Data yang digunakan

Outlet, staff/role, shift, menu/modifier, recipe, ingredient, inventory
movement, order/payment, receipt, purchase order, override, approval, dan audit.

## Risiko dan asumsi

Stock correctness, concurrent order, printer failure, payment mismatch, offline
conflict, cash variance, tenant isolation, dan outlet recovery.

## KPI dan success metrics

`PROPOSAL`: order time, payment success, stock variance, waste,
override rate, close variance, PO cycle, uptime, dan support incident. Target
`NEEDS CONFIRMATION`.

## Ide konten pemasaran

Stock movement; recipe/HPP; closing variance; low-stock to purchase order.

## Contoh caption

`PROPOSAL`: “Stok bukan angka yang boleh berubah tanpa jejak. Setiap
penjualan, waste, dan pembelian harus menjadi movement yang bisa diaudit.”

## Ide campaign

`ASSUMPTION`: “Audit HPP 10 Menu” untuk pilot coffeeshop.

## Sales talking points

Mulai dari pain outlet dan accuracy, bukan dashboard. Jelaskan prototype status
dan hardware/provider gaps.

## Objection handling

- “POS lain lebih lengkap”: bandingkan workflow spesifik setelah competitor
  research.
- “Bisa langsung dipasang?”: belum; memerlukan pilot dan production gate.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#sagaops).
