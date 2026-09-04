# SagaOPS Dossier

## Tujuan dokumen

Mendefinisikan scope operating system coffeeshop, readiness, bisnis, teknis,
sales, dan konten SagaOPS.

## Konteks dan status bukti

- Updated: 4 September 2026
- Delivery: `SOURCE_PUSHED_BRANCH / PORTRAIT_KIOSK_LOCAL_VALIDATED / KIOSK_VERCEL_PUBLIC_DEMO_ACTIVE / KIOSK_BAGEL_CATEGORY_PHOTO_LOCAL_VALIDATED / KIOSK_SOLD_OUT_RACE_RECOVERY_LOCAL_VALIDATED / KIOSK_CART_SESSION_RECOVERY_LOCAL_VALIDATED / KIOSK_MEMBER_BENEFIT_CONFIRMATION_LOCAL_VALIDATED / KIOSK_FOUNDER_REVIEW_UI_LOCAL_VALIDATED / KIOSK_IMAGE_RECOVERY_LOCAL_VALIDATED / KIOSK_WELCOME_HERO_LOCAL_VALIDATED / KIOSK_UIUX_SPRINTS_LOCAL_VALIDATED / KIOSK_MODIFIER_CART_V2_LOCAL_VALIDATED / MENU_ASSETS_22_OF_22_LOCAL_VALIDATED / KDS_V2_LOCAL_VALIDATED / CASHIER_V2_LOCAL_VALIDATED / OWNER_DASHBOARD_V2_LOCAL_VALIDATED / ADMIN_CONTROL_ROOM_V2_LOCAL_VALIDATED / ADMIN_AVAILABILITY_HISTORY_LOCAL_VALIDATED / ADMIN_STALE_VERSION_GUARD_LOCAL_VALIDATED / ADMIN_SCHEDULED_AVAILABILITY_LOCAL_VALIDATED / SAGA_POS_M4_LOCAL_DURABLE_RUNTIME / SAGADEV_PLATFORM_PRODUCTION_DEPLOYED / TRIAL99_CANARY_PAID`
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
Kiosk exact runtime `7fc4ff483b053db904511f8ae2106ce34ef975e8`
aktif pada `https://saga-pos-kiosk.vercel.app/kiosk` melalui Vercel deployment
`dpl_66feChVVoBJnFbtMRZ5ofmuAVWK6`. Public surface hanya Kiosk dan API QRIS
simulator; tidak mengaktifkan gateway, promo, canary, atau transaksi nyata.
Full 162/162, focused deployment 6/6, production smoke, dan browser UAT order
sampai success lulus. State session/order serverless masih ephemeral dan ada
peringatan deprecation Node `DEP0169`; validasi fisik portrait, durable runtime,
owner visual/add-on sign-off, dan production outlet release gate tetap
diperlukan.
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
