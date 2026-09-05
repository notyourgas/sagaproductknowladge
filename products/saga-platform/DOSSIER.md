# Saga Platform Dossier


## 2026-09-06 — Saga Member Home carousel continuity and text resilience

- Classification: CONFIRMED. Scope: Saga Member public dummy UI/UX demo only. No backend, database, account, payment, device or provider activation; no added service cost.
- Home starts its four-story carousel at the natural origin without resolving slide geometry or creating a no-op settle animation. Later slide moves retain measured offsets and the existing gap.
- Grabbing a moving banner now continues from its visible transform, not the destination offset. A controlled390px replay measured takeover jumps365/229/116/0px before,0px after, at1/45/90/179ms. This closes a user-visible interruption defect.
- Home grid tracks may shrink and section headings wrap for enlarged text. At320px with200% text, previous document width366px overflowed; candidate passes all five canonical widths without clipping or smaller44px targets. Default photos, copy, palette, typography and hierarchy remain unchanged.
- Source PR #76 and corrective PR #77 merged. Final application `5c1a68e53e06a4dc75ebbf2469c64fd0efbcb31d`, canonical main `8182d0851fadf05afb1445e6a867f1033e528188`; exact corrective PR CI33990189385 passed. Earlier PR76 CI33989202911 passed; initial CI33988580286 failed a screenshot/autoplay test setup and was superseded. Final full local suite passed265 unit tests and all acceptance. Canonical CI33990598345 is tracked separately from local validation.
- Focused acceptance passed80 cases including20 timed interruptions, five widths, resize/remount/reduced motion,200% text/44px controls; four emulated native-touch cases verify geometry/inert. A later true-touch Play replay exposed sticky compatibility mouseenter; corrective source5c1a68e53e06a4dc75ebbf2469c64fd0efbcb31d / PR77 uses pointer hover excluding touch. Existing4000ms autoplay interval is unchanged; corrected pause observations last4250ms and native touch Play/Pause is verified separately. Physical iOS and native screen readers remain unverified.
- CPU4x loopback ABBA6 samples/cohort on intermediate d6 source measured initial-show145.6/143.4ms baseline versus0.45/0.55ms candidate, with inconclusive total startup benefit. Final5c1 measurement showed substantial baseline cohort drift (LCP1662 versus562ms), so no overall speedup ratio is claimed. Initial long tasks remain; no field INP or mobile-network LCP claim. CLS0 in these lab samples.
- Existing Motion13.2.0 MIT plus platform DOMMatrixReadOnly; no new library, unchanged Motion bundle. Normalized gzip deltas: app+387bytes, CSS+22bytes. Dependency audit0 and staged secret-pattern scan0 findings. Cache versionv67-carousel-initial supports the upgrade.
- Delivery verified: canonical main CI33990598345 passed. Preview `dpl_2hALcaR92CRWHofrrgQaK4jza1mm` Ready with carousel, lifecycle and navigation UAT passing; promoted production `dpl_7BXJZjDVD1zE95EGy8duiCHtVcej` Ready at the existing stable Saga Member URL. Static PWA production build6.642seconds;16-file final-source public parity and all three public UAT suites passed. Error-level runtime log query returned no entries in its15-minute observation window; this is not comprehensive monitoring certification, drains unverified. Rollback `dpl_BuNCzTVEGJfbfNBpTWQJpJGXWVH3`. Status PUBLIC_DUMMY_DEMO_VALIDATED, not real-service activation or business readiness.
- Source: official web.dev layout guidance, MDN DOMMatrixReadOnly documentation, exact source/CI and browser acceptance. Other Saga products are unaffected. Residual: initial long tasks and real-device/field verification.

## 2026-09-06 — Saga Member navigation keyframe read batching

- Final verification: test-only PR CI 33986894177 and canonical main CI 33987457269 passed; reused Preview passed all three suites, final public lifecycle and final-source artifact parity passed. No duplicate deployment was required.
- Classification: CONFIRMED. Scope: Saga Member PUBLIC_DUMMY_DEMO; production runtime changed, no real backend, account, database, payment or provider activation.
- Navigation captures the actual in-flight indicator transform before route DOM writes, then supplies explicit Motion keyframes. Instrumented indicator style reads after writes decreased from 2 to 0. Visual dimensions and interaction contract are unchanged.
- Runtime application `e5609078d983c67a37b3febdf1becb9eaf37e720`, PR #74, canonical runtime `c57789a287bb3504402d2fa45fdffefe9f3cb185`; exact PR CI 33985408632 and canonical CI 33985760194 passed.
- Production `dpl_BuNCzTVEGJfbfNBpTWQJpJGXWVH3` Ready at the existing stable Saga Member Vercel URL; preview `dpl_C7T6PpEKVYBau4uvfFXbjhGwm89p`. Static PWA build 6.882 seconds; 16-file public artifact parity passed. Rollback remains `dpl_CvegfXP37dCzjXxbg4xw7EvN6UUP`.
- Test-only PR #75 settles route focus and finite motion before accessibility assertions. Earlier focus setup and mid-fade contrast checks failed; corrected steady-state checks pass without weakening thresholds. This is not an intermediate-frame accessibility certification. Final test source `89f24ae9a5df744d15e3f5d1aef492f8eb980883` has identical runtime inputs.
- Final local suite passed, including 256 unit tests. Focused browser coverage includes 20 viewport/route read cases, 10 timed interruptions and 5 DPR3 emulated-touch destinations; public navigation passed 38 checks and corrected lifecycle passed. Physical iOS and native screen readers remain unverified.
- CPU4x loopback ABBA lab synchronous-handler medians: baseline 32.55/33.15 ms versus candidate 14.20/13.30 ms. Overall frame-speed improvement is inconclusive; no field INP or network-throttled LCP claim. Initial long tasks remain.
- Existing Motion 13.2.0, MIT; no added dependency or service cost, bundle gzip +48 bytes, dependency audit 0 findings. Error-log scan returned 0 records; external log drains not checked.
- Source: Saga Member runtime, acceptance tests, exact-commit CI and deployment verification. Next scoped investigation: Home carousel initial offsetLeft measurement; preserve swipe, resize, keyboard and offline behavior. Other Saga products are unaffected.

## 2026-09-06 — Saga Member motion lifecycle and live preferences

- CONFIRMED: finished/cancelled animation controls are released, held buttons restore their original transform, stale route callbacks cannot restart motion, and live reduced-motion changes finish nonessential animations. Resize cancels the old navigation endpoint. Deferred visibility cleanup prevents an old dialog-close callback from closing a freshly reopened Pass, Points or Reward dialog. Existing visual design and membership data are unchanged.
- Source PR #73; application commits `a5de6c735953a4e4120e4f776cb9557bf139cc3b` and `5e93ffdd06cfcc0e8e77c3b1e9763564c2589e4d`; canonical main `78b5a8f372d96b9d34ff505e7c5362173ce49a38`. Exact final PR CI `33983447084` and main CI `33983779158` PASS. Source contract: `docs/MOTION_LIFECYCLE.md`.
- Validation: 254 unit tests and full final local regression PASS. Fourteen grouped motion checks across five mobile widths, 100 presses, three dialog families, live preference changes, keyboard, text 200%, warm offline and synthetic visibility transitions PASS locally, in Preview and publicly. Baseline retained 8 captured animations after reduced-motion change; candidate retained 0. This is not a heap-byte or field-performance measurement.
- Delivery: PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO. Validated Preview `dpl_9MXvJoKBnrATUv4BCWKAPmmegZQ1`; production `dpl_CvegfXP37dCzjXxbg4xw7EvN6UUP` Ready at https://saga-member-platform.vercel.app . Public parity PASS for 16 files; post-deploy error-log scan returned zero records. Rollback target: `dpl_7Bdtp3EurLJVhmvgLuR8YwJavtLz`. Promotion created a new deployment and its output was independently verified.
- Scope: Motion 13.2.0 MIT retained, no new dependencies or spend, +565 bytes gzip for the Motion bundle, cache v65-motion-lifecycle. Live payments, database and external providers remain OFF; no BUSINESS_READY claim.
- Residual: one initial local compound reward-recovery assertion failed without an established product cause; per-condition diagnostics were added and focused/full reruns passed. Native screen readers, physical iOS, full forced-colors visual audit, field INP and heap savings remain unverified. Follow-up: measure initial route rendering separately. W3C animation-from-interactions is an AAA criterion, not whole-site certification.

## 2026-09-06 — Saga Member navigation layout ordering

- CONFIRMED source: PR #72, application `adb1b5753ae9f5bac471ad9a710a56998f5eaf35`, canonical main `6ae36be04bbc5f91d8b602a7fd430fb37fae9774`. Navigation geometry is read before route DOM writes; compact icons, floating labels, parent-route selection and resize behavior remain unchanged. No feature or provider activation.
- Validation: 240 unit tests and full local regression PASS; 38 dedicated navigation checks across five mobile widths, keyboard, rapid transitions, reduced motion and resize PASS locally, in Preview and publicly. Dependency audit zero findings. Exact PR CI `33979688755` and canonical main CI `33980023032` PASS.
- Delivery: PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO. Preview `dpl_Em7mnV3qkSRxUeHXp5ZHQigG9iVP` passed UAT; production `dpl_7Bdtp3EurLJVhmvgLuR8YwJavtLz` Ready at https://saga-member-platform.vercel.app . Public parity PASS for 16 files including Motion bundle. Rollback: `dpl_7NnDqjma6986HfMP73VSAtcGxeCd`. Vercel promotion created a new deployment, so parity was checked after Ready rather than assuming identical build output.
- Performance: initial instrumented results looked faster, but two uninstrumented before/after pairs did not establish consistent total latency improvement. No percentage speedup, field INP improvement, or all-long-tasks-fixed claim. Follow-up: isolate remaining route style and motion initialization cost.
- Scope: PUBLIC_DUMMY_DEMO only; no new dependency or spend. Offline cache v64-navigation-layout; raw generated originals and local diagnostic evidence excluded from Vercel upload. Customer Platform, live payments, database, auth and providers remain OFF.

## 2026-09-05 — Saga Member photo recovery and enlarged-text reflow

- CONFIRMED: editorial photos on Quest/Reward now retain geometry on failure and expose an explicit keyboard-safe retry, without automatic request loops or cache-busting URLs. Quest progress and Reward summary reflow for text enlarged to 200%. Photo browser QA is included in test:all. Member-card state, balances and provider boundaries are unchanged.
- Source PR #70, application `6f9e2545f2be77022fa62ffcfebe32eaa829839e`; test-only PR #71, `b178f9a900d78bd5c0ac386a1ca96177c24354c4`; canonical main `e856dba0d92c99576cfead06c60bcb274982cae3`. Exact PR/main CI runs `33976400964`, `33976718147`, `33977254145`, `33977589426` PASS. The previously pending editorial-assets main CI `33974937030` is also confirmed PASS.
- Production changed to Vercel `dpl_7NnDqjma6986HfMP73VSAtcGxeCd`, Ready, https://saga-member-platform.vercel.app . Validated Preview `dpl_33LRdZmUBYSNSwgkUwXETueaZwbu` reused because the test follow-up did not change public assets. Public parity: 15 files PASS. Rollback: `dpl_Dq8V3vea2vz3i26kryY1hCWuPmBp`.
- Local isolated full regression and 237 unit tests PASS. Local/Preview/public focused UAT covers four routes and five canonical mobile viewports, text 200% at 320/430, image decode, keyboard recovery, delayed/rapid retry, first offline Quest/Reward after Home warm-up, and zero serious/critical axe findings on the normal matrix. Forced colors and rapid navigation checked locally. Scope is not WCAG certification or physical iOS/VoiceOver UAT.
- No dependency added; Motion 13.2.0 MIT retained, native HTML/CSS recovery, related runtime +893 bytes gzip. Dependency audit zero vulnerabilities; targeted credential scan PASS, not exhaustive. Lab CLS0 and twelve CPU4x post-render motion windows without long tasks; initial route-render long tasks remain a future optimization item, not claimed resolved. No field-performance or user-survey claim.
- Sources informing error capture and decorative-image semantics: https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/error_event and https://www.w3.org/WAI/tutorials/images/decorative/ . PUBLIC_DUMMY_DEMO only; no real data/provider activation, no paid service, not BUSINESS_READY. Next single slice: investigate initial Reward render performance.



## 2026-09-05 — Saga Member editorial page photography v2

- CONFIRMED, requested by Andreas: replace generic artwork with generated editorial photography. Quest and Reward use new coffee banners; Studio and Member Moments use prepared synthetic photographs. Eight responsive WebP derivatives total 191,478 bytes; original assets retained. Native text, controls, member-card preferences and loyalty behavior unchanged.
- Source PR #69, commit `ce79251db00c1f0a8ae6512d31b61c5296d89fd4`; canonical main `b936a0de47a81c2a05d977ecb083c32ad8dd404e`. PR quality run `33974643875` PASS. Local full regression and focused local/Preview/public browser checks PASS: four routes, five mobile widths, decoded images, no overflow, zero serious/critical axe findings. Public 12-file parity PASS. Main post-merge CI `33974937030` pending at this snapshot, not claimed green.
- Production changed: Vercel `dpl_Dq8V3vea2vz3i26kryY1hCWuPmBp`, Ready at stable https://saga-member-platform.vercel.app . PUBLIC_DUMMY_DEMO only; generated imagery is not actual outlet/product/customer photography. No paid service, backend/provider activation or real transaction. Not BUSINESS_READY. Rollback deployment `dpl_7jNe5QeJz89pb8aCg5sSgcNuA8eM`.
- No new dependency. Production dependency audit and targeted credential-pattern scan PASS; not an exhaustive security audit. Next: observe post-merge CI and continue page-specific improvements.


## 2026-09-05 - Saga Member: Jelajah dengan foto editorial

- CONFIRMED: PR #67 mengintegrasikan foto editorial sintetis pada Jelajah; source `9563ddcee00559aab8f31c1b0adf1a20b3775c43`, main artefak `5aa7d1765dfa08b307d72666225a95731f92c7ab`. Coffee menjadi kartu utama, Studio/Quest tetap ringkas; teks dan CTA terpisah dari foto. Foto diberi disclaimer AI, bukan foto outlet/produk asli. Label proximity tanpa geolokasi dihapus.
- Kartu melebar untuk teks 200% melalui container query; loading tidak mengubah geometri, error tetap menyisakan CTA, enam WebP diprecache. Search/filter/reset, query kembali dari detail, navigasi Coffee-Studio, dan kartu member tersimpan tetap terjaga. Tidak ada perubahan fitur/provider produk lain.
- Local check/build, 234 unit tests dan full browser regression PASS. Focused Preview UAT: lima viewport 320-430px, keyboard, target 44px, axe serious/critical 0, teks 200%, forced colors, delayed/error images, warm offline PASS. Lab CPU4x 24 pergantian filter: CLS 0, tanpa long task pada window interaksi. DPR2/3 local: pertama membuka Jelajah saat offline sesudah hanya Beranda dibuka tetap berhasil; desktop tetap satu canvas 430px. Bukan physical iOS/VoiceOver, sertifikasi WCAG, survei atau field LCP.
- Library baru: tidak ada. Motion 13.2.0 MIT tetap; picture/srcset dan CSS native. Enam aset total 97.650 byte, delta runtime +777 byte gzip terhadap baseline ternormalisasi; dependency audit 0 vulnerability. Riset: https://www.w3.org/WAI/tutorials/images/decorative/ , https://web.dev/articles/optimize-lcp , https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Containment/Container_queries .
- Preview `dpl_3DaZ9i88iEKUka3Kehvkx8fXDJA5` Ready, exact 14-file parity dan remote Jelajah UAT PASS. Koreksi instrumentasi audit CSP ada pada PR #68; aplikasi tidak melonggarkan CSP. Folder public identik, tree `45f85d2f30a62db8cf67637cc719bd0c8baba678`.
- SUDAH DEPLOY: Production `dpl_7jNe5QeJz89pb8aCg5sSgcNuA8eM` Ready pada https://saga-member-platform.vercel.app ; promosi Preview yang sama. Artefak source `5aa7d1765dfa08b307d72666225a95731f92c7ab`, canonical QA main `379225a0b375ea5db7c8074dc7704443c2b0edd1` memiliki public tree identik. PR #68 source `8d5261274219e48d2e5e66293491302d44967730`, exact CI `33970579494` dan main CI `33970922092` PASS. Public exact 14-file parity, full Jelajah UAT dan smoke lima viewport PASS; console/error backend/eksternal 0. Rollback tersedia ke `dpl_4uY3SuLduGAc6HcoVP6NBFEJD1ib`. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`; backend/auth/provider/data nyata OFF, PRODUCTION_ACTIVATED=false, BUSINESS_READY=false. Next slice: Quest editorial.

## 2026-09-05 - Saga Member: identitas kartu tanpa panel teks

- CONFIRMED source `fbb70797026acc55f123f5fe28d2144bd005d5d4`, PR #66 MERGED ke main `f06044444934433d1aad71a429f51b8dcb056ae0`; exact PR Quality CI `33963076236` PASS.
- Teks pada artwork mendapat halo kontras tipis tanpa kotak, simbol contactless mendapat garis luar dekoratif, dan label Member ID pada PNG tidak lagi transparan. Mode kontras tinggi menggunakan warna sistem tanpa artwork. Kartu atas tetap memakai desain tersimpan; kategori/geser hanya preview sampai Apply eksplisit.
- Local: 231 unit tests, browser regression, 35 desain x 5 viewport (320-430px) termasuk teks 200%, dan 35 ekspor PNG 1712x1080 PASS. Ekspor identik secara piksel pada mode normal versus forced-colors + teks 200%. Lima Polos DOM identik; raster berubah pada identitas. Axe serious/critical 0 dalam cakupan uji; bukan sertifikasi WCAG atau uji perangkat fisik iOS/VoiceOver.
- CPU4x local comparative soak: 900 pergantian desain, kartu aktif/fokus tetap, satu gambar preview, CLS 0, tanpa long task pada window interaksi; p95 waktu siap 42-49ms sebelum dan 46-50ms sesudah. Bukan jaminan field/slow-network. Upgrade cache v58/v59 ke v60 menjaga desain tersimpan dan Apply offline; exact module hashes diperiksa.
- Native CSS/SVG/Canvas; Motion 13.2.0 MIT tidak berubah. Tidak ada library/aset/provider baru pada rilis kartu; delta runtime +266 byte gzip, dependency audit 0 vulnerability. Riset heuristic: https://www.w3.org/WAI/WCAG21/Techniques/general/G18 dan https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-shadow .
- SUDAH DEPLOY: canonical main CI `33963396798` PASS. Preview `dpl_31HZh1bcer6S1JQNoWberAY7nC8t` lolos exact seven-file source parity dan remote card UAT sebelum promotion. Production `dpl_4uY3SuLduGAc6HcoVP6NBFEJD1ib` Ready pada https://saga-member-platform.vercel.app ; source parity, smoke lima viewport dan full public card UAT PASS. Diagnostik Chromium public: CLS 0, LCP 440ms unthrottled, tanpa long task pada window interaksi, request backend/external 0. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`.
- PUBLIC_DUMMY_DEMO; backend, auth/provider dan data nyata OFF. PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Rollback `dpl_AVcUTWmJaCdgd62LV9RmQhdtsK5w`, schema preference v2 tetap. Berikutnya: halaman Jelajah, integrasi aset editorial baru beserta crop mobile dan fallback/offline. Tiga aset yang baru digenerate belum dipasang pada rilis ini.


## 2026-09-05 - Saga Member: validasi ulang pemulihan gambar kartu

- CONFIRMED: source `573bd46af092c953ae7b0f6c401221e0d247c8df`, PR #65 MERGED ke main `ef7e4dd4542450543b66821c4dda15bf3a55ad06`. Exact PR CI `33957691208` PASS. Dua hold sebelumnya terisolasi pada timing simulasi sentuh dan penantian lifecycle worker di harness; bukan alasan menonaktifkan assertion atau menambah workaround klik pada aplikasi.
- Kartu aktif tetap ketika kategori/preview digeser. Loading/error/retry artwork, Apply setelah decode, penanganan unduhan macet tanpa PNG kosong, dan preference lokal tetap dipertahankan. Regresi upgrade exact baseline v58 ke v59 kini wajib di CI: kartu tersimpan bertahan, browse offline tidak mengganti kartu, dan Apply eksplisit bertahan setelah reload.
- Local check/build, 226 unit tests dan seluruh browser regression PASS. Lima viewport 320–430px; keyboard, reduced motion, zoom teks 200%, forced colors, retry/timeout/export/offline; Axe serious/critical 0. Window interaksi raster CPU4x: CLS 0 dan tanpa long task >50ms. Review normal 35 desain mempertahankan komposisi; raster memiliki perbedaan resampling kecil dari background ke decoded img, bukan pixel-identical.
- SUDAH DEPLOY: main CI `33958073124` PASS; Preview `dpl_35vhyg1u6qUwJTqCmJdy5RiQvHFo` lolos remote card UAT dan exact source parity sebelum promotion. Production `dpl_AVcUTWmJaCdgd62LV9RmQhdtsK5w` Ready, source main `ef7e4dd4542450543b66821c4dda15bf3a55ad06`, pada https://saga-member-platform.vercel.app . Stable source parity, lima viewport smoke dan full remote card UAT PASS; Axe serious/critical 0, request backend/external 0, offline browse/apply PASS. Diagnostik Chromium stable: CLS 0, LCP 612ms unthrottled, tanpa long task pada window interaksi. Status maksimum `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`.
- Native Image/decode dan CSS; Motion 13.2.0 MIT tetap. Tanpa dependency/aset/provider/biaya baru; delta runtime gzip sekitar 2.1KB; audit dependency 0 vulnerability. Uji Chromium mobile synthetic, bukan survei, perangkat fisik iOS/VoiceOver atau field performance. Riset: https://web.dev/articles/service-worker-lifecycle dan https://github.com/microsoft/playwright/blob/v1.61.1/packages/playwright-core/src/server/frames.ts .
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Rollback ke deployment sebelumnya dengan schema preference v2 yang sama.


## 2026-09-05 - Saga Member artwork recovery: belum deploy

- Follow-up CONFIRMED: source terbaru `2ea81c0011802a39f5075c51bb4ae16df6133b7c`, draft PR #65 yang sama; 226 unit tests PASS. CI kandidat awal `33953135884` FAILED pada uji sentuh tambahan. Rehearsal upgrade PWA juga belum lolos saat reload offline; pemeriksaan controller/module-cache masih diperlukan. Perubahan fallback cache belum boleh disebut integration-validated. Release tetap HOLD; Production tidak berubah.

- CONFIRMED: source `0078b0f40cb7da34d6abb254211152c507539a1b`, draft PR #65 di repository saga-member, mengimplementasikan loading/error/retry gambar kartu, decode sebelum tampil, Apply menunggu gambar siap, bantuan yang mengikuti pembesaran teks, serta batas waktu unduhan tanpa menghasilkan kartu kosong. Browsing tetap hanya preview; kartu aktif tidak berubah tanpa Apply.
- Local: 224 unit tests PASS; regresi penuh dan uji artwork lima viewport/error/retry/timeout/export/zoom/offline lulus sebelum perluasan uji sentuh. Uji tambahan swipe lalu tap kategori masih RED dalam simulasi Chromium CPU4x. Gejala sama direproduksi pada Production lama; belum dipastikan apakah akar penyebab berada pada harness input atau aplikasi. Jangan menyebut semua UAT atau CI PASS.
- Status `IMPLEMENTED_NOT_DEPLOYED`; PR masih draft, belum merge dan belum Preview UAT. Production sehat sebelumnya tetap `dpl_62S5sGbHV3moHCyx51JH24ESQvGk` / source `92c93da151a149260e9ae258727002910a1acd6d` pada https://saga-member-platform.vercel.app . Next: selesaikan satu regresi sentuh ini pada branch yang sama, lalu ulangi seluruh gate sebelum release.
- Tanpa dependency atau biaya baru. Riset heuristic memakai MDN image.decode https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decode ; bukan survei/perangkat fisik. PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false.

## 2026-09-05 - Saga Member: simpan kartu dan kembali ke desain sebelumnya

- CONFIRMED dari reproduksi browser: sebelumnya kegagalan storage dapat terlihat sebagai Apply berhasil. Kini kartu aktif berubah hanya setelah penyimpanan dan pembacaan balik cocok; gagal simpan mempertahankan kartu aktif dan preview, dengan satu tombol Coba simpan lagi.
- Satu langkah kembali ke desain sebelumnya tersedia setelah Apply sukses, menampilkan nama tujuan. Undo juga harus berhasil disimpan; kegagalan bisa dicoba ulang. Undo berlaku untuk sesi berjalan, bukan riwayat akun permanen. Reset demo menghapus state undo.
- Live region tetap terpasang, fokus status terarah, pesan tidak hanya dibedakan lewat warna. Browsing kategori tetap preview-only; unduhan dan spotlight selalu memakai kartu aktif. CSS tap-grid lama yang tidak dipakai dihapus.
- Source `bb52209a392610fdada48c14c4e77748c5a98036`, PR #63. Local: 211 unit test; lima viewport; retry/undo/route/reload; keyboard; forced colors; zoom 200%; target 44px; failed-preview export exclusion; offline save/undo/reload. Axe serious/critical 0. CPU4x diagnostic: enam siklus touch apply/undo, CLS 0, tanpa long task >50ms atau animasi tersisa. Bukan uji perangkat fisik atau field metrics.
- Release main `92c93da151a149260e9ae258727002910a1acd6d`; PR #63 CI `33947277368` PASS. Test-only follow-up PR #64 (`d7cf47bf7c54b9834a6dfbce466ba30de8d87fe9`) menunggu final animation state sebelum full-page Axe; CI `33947676581` dan canonical main CI `33947882872` PASS. Run main sebelumnya `33947490867` gagal audit Reward Pocket dan tidak dipakai untuk deploy. Runtime Reward tidak berubah. Upgrade PWA lokal v57->v58 menjaga desain tersimpan dan tetap bekerja offline.
- Library tetap Motion 13.2.0 MIT dan platform storage API; tanpa dependency baru. Delta gzip empat file runtime +1529 bytes terhadap baseline, audit dependency 0 vulnerability. Review riset bersifat heuristic, bukan survei: MDN localStorage https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage dan W3C status messages https://www.w3.org/WAI/WCAG21/Understanding/status-messages .
- SUDAH DEPLOY: protected Preview `dpl_4dvXGjg1N2qyd9kgKQGcrjzF7EBm` lolos UAT sebelum promotion. Production `dpl_62S5sGbHV3moHCyx51JH24ESQvGk` Ready di https://saga-member-platform.vercel.app ; stable UAT PASS, HTTP200, app.js cocok dengan exact source dan cache v58. CPU4x stable diagnostic: LCP796ms, CLS0, long tasks0 pada window interaksi (bukan field/slow-network guarantee). Global storage denial lalu pemulihan juga lulus. Rollback tersedia ke `dpl_922msoyByZgWaSUeZak7USPNpusm` / source `630e9880f4ab6ee4c801fe89138447c5b91d6237`.
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF. PRODUCTION_ACTIVATED=false; BUSINESS_READY=false.

## 2026-09-05 - Saga Member: gesture continuity kartu

- CONFIRMED: preview kartu kini memperbarui isi picker saja. Kartu aktif, route, carousel, tombol panah, posisi scroll dan fokus tetap terjaga; Apply tetap satu-satunya tindakan yang mengganti kartu aktif.
- Native touch mendapat gerakan horizontal terbatas, pembatalan aman, vertical scroll, pinch zoom dan reduced motion. Kontras Apply pada forced colors diperbaiki; palet Polos C/E serta PNG export memakai teks lebih terbaca (base contrast 4.78:1 dan 4.96:1).
- Source `4ae8dbc10782ca4431235583e4645269af11a1e9`, PR #61; release main `630e9880f4ab6ee4c801fe89138447c5b91d6237`. Exact PR CI `33944604109` dan canonical main CI `33944780752` PASS, termasuk 208 unit tests dan full browser suite.
- SUDAH DEPLOY sebagai public dummy pada https://saga-member-platform.vercel.app . Preview `dpl_DbYkPjk9hqd1DMP5voJGzphe4N8m` lolos browser UAT sebelum promotion ke production `dpl_922msoyByZgWaSUeZak7USPNpusm`; stable URL UAT juga PASS: lima viewport, native touch/cancel/rapid wrap, zoom 200%, forced colors, offline artwork/browse/apply, Axe serious/critical 0, request backend/external 0. Tidak ada dependency baru.
- Audit harness `fc0af0e56f825fb0e3d051a8fd1c88ead17c1925` (PR #62) memperbaiki injection Axe agar cocok dengan CSP Preview; CSP aplikasi tidak dilonggarkan. Pengukuran Chromium unthrottled stable: CLS 0, LCP 476ms, tanpa long task pada window interaksi; bukan field performance atau uji perangkat fisik. Rollback tersedia ke release sebelumnya `28ede587ff63bfe92f20d79d964b2892379cd3f3`.
- Riset: W3C carousel pattern https://www.w3.org/WAI/ARIA/apg/patterns/carousel/ dan MDN pointer cancellation https://developer.mozilla.org/en-US/docs/Web/API/Element/pointercancel_event . Review bersifat heuristic, bukan survei pengguna.
- PUBLIC_DUMMY_DEMO; backend/provider/data nyata tetap OFF. PRODUCTION_ACTIVATED=false dan BUSINESS_READY=false.


## 2026-09-05 - Saga Member: carousel preview kartu

- CONFIRMED, keputusan Andreas: tema menampilkan desain A langsung di bawahnya. Geser horizontal menampilkan B, C, D, E, lalu kembali ke A; navigasi keyboard dan tombol panah tersedia.
- Kartu aktif di atas tetap memakai desain tersimpan ketika tema atau preview berubah. Hanya tombol Ganti ke desain ini menerapkan pilihan; spotlight dan unduhan memakai kartu aktif.
- Source: `ded8459`, PR #60. Local validation: 208 unit test, tujuh tema, lima viewport mobile, drag, wrap, apply, reload, export, dan Axe serious/critical 0.
- Delivery: VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE. Canonical source `28ede587ff63bfe92f20d79d964b2892379cd3f3`; PR CI `33939894009` lulus. Production `dpl_2UELwMdmUswZXNPDmHAjtUxk6Gs7` Ready pada https://saga-member-platform.vercel.app. Remote card UAT lulus pada tujuh tema dan lima viewport, termasuk drag, wrap, apply, reload, spotlight, unduhan, dan Axe serious/critical 0.
- Backend/provider/data nyata tetap OFF; PRODUCTION_ACTIVATED=false; BUSINESS_READY=false. Tidak ada dependency baru.


## Tujuan dokumen

Menjelaskan control-plane boundary, pengguna, strategi, teknis, risiko, dan
status Saga Platform.

## Konteks dan status bukti

- Updated: 5 September 2026
- Delivery: `PRODUCTION_DEPLOYED` untuk fondasi tertentu
- Activation: `PRODUCTION_ACTIVATED` untuk fondasi yang dipakai;
  `NOT_PRODUCTION_ACTIVATED` untuk adapter/roadmap lain
- Business readiness: `NEEDS CONFIRMATION`; konteks saat ini internal-only

## Overview produk

Control plane SagaDev untuk product registry, identity, product account,
subscription, entitlement, audit, readiness, launcher, dan integration
contract.

Riwayat frontend public dummy V42 Rute Hari Saga berasal dari Saga Member main
`12e578e4cf7ca02326c5cf3bcc7ee65a9c2ed551` (PR #59), Preview
`dpl_F4aovXzG5KxrFic4TthNbeo3vbUk`, dan production deployment
`dpl_CduvhAn3kkzC9M3JJzmSJ7qkfn3a` pada stable URL
`https://saga-member-platform.vercel.app`. Planner progresif di Jelajah memberi
pilihan Coffee ke Studio atau Studio ke Coffee. Pilihan radio hanya mengubah
preview sampai dikonfirmasi; sesudahnya timeline dua langkah menghubungkan
Rencana Mampir V38 dan Brief Pocket V39, lalu meneruskan CTA ke langkah yang
belum selesai.

Full 208 test, PR CI `33938863948`, main CI `33939064126`, lima viewport,
invalid-input recovery, reload memory, 200% zoom, forced colors, reduced motion,
offline, hash lima artifact, dan production UAT lulus tanpa Axe
serious/critical atau backend request. Motion memakai bundle `motion@13.2.0`
yang sudah ada; tidak ada dependency baru. Rute tetap memory-only, hilang saat
reload/reset, dan tidak membuat booking, transaksi, atau perubahan Points.
Emoji Akses cepat tetap glyph natural tanpa kotak internal.
Backend/auth/provider/data nyata tetap OFF, `PRODUCTION_ACTIVATED=false`, dan
`BUSINESS_READY=false`.

## Masalah yang diselesaikan

Portfolio multi-produk memerlukan registry, entitlement, operator tooling, dan
integration contract tanpa menggabungkan seluruh operational data.

## Target pengguna

SagaDev super admin, support, finance, release, product operations, dan product
owner.

## Persona pengguna

- Platform operator: provisioning/suspend/recovery.
- Support: melihat context dan readiness tanpa membuka data berlebihan.
- Finance: subscription/reconciliation.
- Product service: adapter/event contract.

## Value proposition

Satu control plane untuk akses dan operasi portofolio dengan bounded context per
produk.

## Use case

Product registry/launcher, organization/membership, product account, trial,
subscription, entitlement, audit, readiness, provisioning, integration event.

## Fitur utama

Capability tercatat di [PRODUCT](PRODUCT.md); implementasi per capability
bervariasi dan tidak boleh digeneralisasi.

Saga Member merupakan bounded context/customer experience dengan kontrak dan
authority terpisah. Release `20260902T1526Z-f763fc1-2eaa353` kini terpasang
pada private VPS sebagai `SAGA_MEMBER_PRODUCTION_DEPLOYED_INTERNAL_ALPHA` ring
D0. Customer `f763fc19d8463cf2120387b0d06a57ffa5c868f7` dan Member
`2eaa35334e59dc2656b98816db6bdc020c478a8f` lulus CI canonical-main, remote
Chrome UAT, forced-RLS audit, backup/restore dan rollback rehearsal.

Frontend public dummy terkini adalah V40 Reward Target dari Saga Member main
`14dba0de07fcafe0d6e08aa4a4c1b02f81005a5f` (PR #57), Preview
`dpl_8pqpU61SvCcPvQAVoCLe5zt1kwRU`, dan production deployment
`dpl_EFcJdeE7pLCxuZGR8u7hrynGYMjv` pada stable URL
`https://saga-member-platform.vercel.app`. Reward dengan Points belum cukup
dapat dijadikan satu target memory-only dengan saldo, gap, meter aksesibel,
handoff Quest, hapus target, dan pemulihan fokus. Target hilang saat reload dan
tidak menambah saldo atau membuka reward nyata.

Full 201 test, PR CI `33932567681`, main CI `33932761922`, lima viewport,
keyboard, rapid action, invalid-ID recovery, 200% zoom, forced colors, reduced
motion, offline, artifact hash, dan remote UAT lulus; backend/auth/provider/data
nyata tetap OFF. Emoji Akses cepat tetap glyph natural tanpa kotak internal,
`PRODUCTION_ACTIVATED=false`, dan `BUSINESS_READY=false`.

Frontend public dummy V39 Studio Brief Pocket sebelumnya berasal dari Saga Member
main `8019eaf550bb6eb1c8e620e5372f2cf1ab782cd5` (PR #56), Preview
`dpl_4jEJu9Q74fvhCN4NbdjVYK8Un5ZY`, dan production deployment
`dpl_296rvEny9sGj3DfoeJejRqFMLmuV` pada stable URL
`https://saga-member-platform.vercel.app`. Entry Studio membuka halaman foto
nyata dengan formulir radio native untuk personal, produk, atau bareng; hasil
menampilkan tiga arahan foto, status konfirmasi, edit, dan handoff checklist.

Brief Pocket hanya menggunakan memori tab dan tidak membuat booking, transaksi,
storage write, atau request backend. Reload mengembalikan fixture. Jadwal,
ketersediaan, harga, serta operasional nyata tidak diklaim. Emoji Akses cepat
tetap glyph natural tanpa fixed box. Full 197 test, PR/main CI, lima viewport,
keyboard, invalid-value recovery, 200% zoom, forced colors, reduced motion,
offline, artifact hash, dan remote UAT lulus; backend/auth/provider/data nyata
tetap OFF, `PRODUCTION_ACTIVATED=false`, dan `BUSINESS_READY=false`.

Frontend public dummy V38 Coffee Detail + Rencana Mampir berasal dari
Saga Member main `1791e0319b1dc36d6b40f61e2e4a3b78cfd5c7a5` (PR #55), Preview
`dpl_BfSV2b8jTf1bs38HHhhksSzzM4d5`, dan production deployment
`dpl_wT3spJ7gRBymCnANKwR4MuvFXweQ` pada stable URL
`https://saga-member-platform.vercel.app`. Entry Coffee pada banner Beranda,
Akses cepat, dan kartu Jelajah kini menyatu ke detail outlet dengan foto nyata,
menu demo, radio waktu native, konfirmasi memory-only, edit, serta CTA Quest.

Rencana Mampir tidak membuat reservasi atau transaksi, tidak menulis storage,
dan kembali ke fixture saat reload. UI tidak mengklaim jam buka, jarak, stok,
harga transaksi, atau ketersediaan outlet nyata. Full 193 test, PR CI
`33925578250`, canonical-main CI `33925766363`, lima viewport, keyboard,
rapid tap, 200% zoom, forced colors, reduced motion, offline shell, Preview dan
production artifact hash, serta remote production UAT lulus. Axe
serious/critical, overflow, broken image, storage write, dan backend/provider
request tetap nol. Cache offline `v51-coffee-visit-plan`.

Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`; backend, auth, transaksi,
data pelanggan, QRIS, Push, NFC, printer, dan provider nyata tetap OFF.

V37 Bare Quick Emoji sebelumnya berasal dari Saga Member main
`cd5bd4bcc5ce0bf836aad72f3a4dd02ae6c97842` (PR #54) dan production
deployment `dpl_GXQ4dDBK7YxehDZ3WoRDu8KN3V5f` pada stable URL
`https://saga-member-platform.vercel.app`. Empat emoji Akses cepat kini memakai
ukuran glyph natural tanpa fixed width/height, padding, background, border,
radius, atau shadow. Kartu induk tetap menjadi target sentuh yang aksesibel.

Full 190 test, PR CI `33919122407`, canonical-main CI `33919344362`, UAT lokal
lima viewport, dan remote production UAT lulus. Axe serious/critical, overflow,
broken image, console error, dan backend request tetap nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data pelanggan, QRIS, Push, NFC,
printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V36 Home Install Nudge sebelumnya berasal dari Saga Member main
`9a5393d73bdc7b459d5522991da94a955b6f692d` (PR #53), Preview
`dpl_2nKEoPK4DiTX7hEFD1uNFZhK63E8`, dan production deployment
`dpl_AnBsZh4DKwh26ejsZdT5zMixHwqb` pada stable URL
`https://saga-member-platform.vercel.app`. Beranda menampilkan satu ajakan
install inline setelah dua perpindahan route, hanya ketika prompt Chromium
tersedia atau iPhone Safari dapat memakai panduan manual. Capability yang hadir
sebelum engagement tidak merender ulang Beranda atau menggeser fokus. Dismiss
bersifat memory-only dan prompt tetap one-use serta gesture-only.

Full 190 test, PR CI `33916490835`, canonical-main CI `33916725768`, UAT lima
viewport plus text resize 200%, arrival stability, rapid tap, iOS Safari,
offline, Preview artifact hash, dan remote production UAT lulus dengan Axe
serious/critical 0, overflow 0, cookie/storage write 0, serta backend request 0.
Cache offline `v50-home-install-nudge`. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan provider
nyata tetap OFF. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V35 Install Concierge sebelumnya berasal dari Saga Member
main `bb7ed733e4481bf7b0c9391c507a2c2d30bd4ede` (PR #51 dan #52), Preview
`dpl_69aXzYoqu6zC2yjt9ywJkYrLhTdV`, dan production deployment
`dpl_BwnL5PA2QqsosvMTbdpZVcLNuBog` pada stable URL
`https://saga-member-platform.vercel.app`. Profil membuka Pusat Instalasi yang
membedakan status terpasang, prompt-ready, dismissed, unavailable, serta
panduan iPhone Safari empat langkah. Prompt Chromium hanya dipanggil setelah
gesture pengguna dan tidak ditampilkan bila capability belum tersedia.

Manifest PWA, icon 180/192/512, Apple metadata, standalone detection, offline
cache `v49-install-contrast`, focus safety, target 44 px, reduced motion,
forced colors, dan contrast hardening diverifikasi. Full 188 test,
canonical-main CI `33912518901`, UAT lima viewport plus text resize 200%,
synthetic install lifecycle, iOS Safari, Preview artifact, dan remote
production UAT lulus dengan Axe serious/critical 0, overflow 0, dan backend
request 0. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V34 Pusat Data Demo sebelumnya berasal dari Saga Member main
`bb8307c1ee359a2c340ccbf3b4f9af388798b35d` (PR #50), Preview
`dpl_D9njs8ouSsEggD1mxHiWeF3aqZ31`, dan production deployment
`dpl_2HGvjcGmgAAp14CZvQAcYZtAFvjy` pada stable URL
`https://saga-member-platform.vercel.app`. Profil sekarang membuka route
Privasi & data dengan disclosure dummy, inventaris data contoh, penjelasan
fixture/browser/server, export JSON browser-only yang mengecualikan identitas,
session, provider, credential, dan token, serta reset perubahan demo.

Reset memakai native alert dialog dengan fokus awal pada Batal, Escape dan
focus return. Perubahan kartu serta checklist Studio dibersihkan secara lokal;
tidak ada akun atau data server yang dihapus. Full 184 test, PR CI
`33904736090`, canonical-main CI `33904955721`, UAT lokal lima viewport plus
text resize 200%, Preview artifact UAT, dan remote production UAT 390 px lulus
tanpa overflow, request backend, response gagal, atau temuan Axe
serious/critical. Cache offline `v47-demo-data-center`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, transaksi, data pelanggan, QRIS, Push, NFC,
printer, dan provider nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V33 Notification Rhythm sebelumnya berasal dari Saga Member
main `cda26b0aa5291cd00003f56d3377a9de4219b441` (PR #49), Preview
`dpl_J27d9AiWjLGwJ4iaZF9AtyebH7Nq`, dan production deployment
`dpl_7kv65g8maCeT8mEq2t6HnWNQwKi3` pada stable URL
`https://saga-member-platform.vercel.app`. Profil sekarang membuka route
Notifikasi dengan tiga kategori kabar dan tiga opsi jam tenang. Preview Inbox
merangkum pilihan aktif; kondisi semua-off menjelaskan bahwa Inbox tetap dapat
dibuka manual dan menyediakan satu pemulihan default.

Perubahan berlaku langsung hanya dalam memori tab dan reset saat reload;
tidak ada storage write, permission prompt, API, atau provider call. Native
checkbox switch/radio, live region, focus recovery, target 44 px, reduced
motion, dan cache offline `v46-notification-rhythm` diverifikasi. Full 179
test, PR CI `33898631243`, canonical-main CI `33898836214`, local UAT lima
viewport plus text resize 200%, Preview artifact UAT melalui jalur terlindungi,
serta remote production UAT 390 px lulus tanpa overflow, request backend,
response gagal, atau temuan Axe serious/critical. Runtime tetap
`PUBLIC_DUMMY_DEMO`; Push provider, backend, auth, transaksi, data pelanggan,
QRIS, NFC, printer, dan pilot nyata tetap OFF. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V32 Reward Passbook Recovery Lab sebelumnya berasal dari Saga Member main
`e1c54a6a6ea4bc2a3766af516fc17911e3ff9c37` (PR #48), Preview
`dpl_8BiwmoLjfu3Xi4L6C5rEQm8Z5HS9`, dan production deployment
`dpl_5837edXEQ5NRDfTpuPcGv318f6aB` pada stable URL
`https://saga-member-platform.vercel.app`. Disclosure public dummy menyediakan
kondisi `Aktif`, `Kosong`, dan `Gangguan` tanpa mengubah fixture atau data.
Empty state memiliki jalan ke katalog; gangguan memakai alert dan retry yang
memberi loading struktural lalu memulihkan reward aktif.

State hanya berada di memori tab. Native button, `aria-expanded`,
`aria-pressed`, live region, target 44 px, dan motion transform/opacity 160 ms
menjaga aksesibilitas. Navigasi saat retry membatalkan timer dan mengembalikan
state ke gangguan yang dapat dicoba ulang sehingga tidak ada stale update.
Full 175 test, PR CI `33893637829`, canonical-main CI `33893844012`, local UAT
lima viewport plus text resize 200%, serta remote production UAT
320/360/375/390/430 px lulus tanpa overflow, request backend,
page/console/request failure, atau temuan Axe serious/critical. Saldo tetap
128 dan cache offline berubah ke `v45-reward-recovery`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V31 Reward Passbook sebelumnya berasal dari Saga Member main
`1ce0242239cef53234bee58b73c2f99e97ea03c3` (PR #47), Preview
`dpl_LoZuWuXrwKwi4GmKkSRaY7gUHzyp`, dan production deployment
`dpl_BPs9noWMA1cZUVirdDPmNP5nvgcu` pada stable URL
`https://saga-member-platform.vercel.app`. Reward milik pengguna kini disusun
sebagai passbook: pass aktif dominan memuat status, expiry, referensi demo
tersamarkan, progres tiga tahap, serta CTA dialog, sedangkan riwayat terminal
dipisahkan di bawah dengan alasan penyelesaian dan tanpa CTA.

Presenter mengklasifikasikan status unknown/expired secara fail-closed ke
riwayat. Dialog native menandai reward sebagai demo yang tidak berlaku untuk
transaksi, menjaga focus trap, dan mengembalikan fokus ke pemicu. Saldo tetap
128 dan tidak ada request backend. Full 170 test, PR CI `33888107426`,
canonical-main CI `33888310677`, local UAT lima viewport dan text resize 200%,
serta remote production UAT 320/360/375/390/430 px lulus tanpa overflow,
request backend, page/console error, atau temuan Axe serious/critical. Cache
offline berubah ke `v44-reward-passbook`. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V30 Reward Pocket sebelumnya berasal dari Saga Member main
`64da605fe707b44f6ebf781e7c17250f10a8026e` (PR #46), Preview
`dpl_71xjbvjUpWHfvpj7HUqkaqRHqpqN`, dan production deployment
`dpl_3q6jh5d7apx4NgiBgYmJFVHqQMEL` pada stable URL
`https://saga-member-platform.vercel.app`. Penukaran Reward eligible kini
membuat pocket persisten selama tab aktif, bukan feedback sementara. Pocket
menjelaskan reward, biaya Points, referensi demo tersamarkan, serta tiga
langkah handoff ke crew. Dialog native `Tampilkan ke crew` menandai artefak
sebagai demo yang tidak berlaku untuk transaksi; pengguna dapat membatalkan
simulasi dan fokus kembali ke kontrol pemicu.

State hanya berada di memori tab, refresh menghapusnya, saldo tetap 128, dan
tidak ada request backend. Dialog ditutup ketika halaman tersembunyi, melalui
Escape, backdrop, atau tombol; focus trap/recovery dan target sentuh minimal
44 px diverifikasi. Full 165 test, PR CI `33881639119`, canonical-main CI
`33881866552`, local UAT 320/360/375/390/430 px, dan remote production UAT
lima viewport lulus tanpa overflow, request backend, page error, atau temuan
Axe serious/critical. Cache offline berubah ke `v43-reward-pocket`. Runtime
tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V29 Quest Trail sebelumnya berasal dari Saga Member main
`8fadccbf96665701b2ecf1fb98a98a762ccdde65` (PR #45), Preview
`dpl_64f8r2QuYCgRUh2k8Zm5m8yCMf7S`, dan production deployment
`dpl_57MXHh67m11Pr6twjpyMRTGcDD4V` pada stable URL
`https://saga-member-platform.vercel.app`. Halaman Quest mengganti detail
sederhana menjadi journey tiga milestone, progressbar determinate, syarat
kunjungan eksplisit, dan tindakan kontekstual. Pengguna demo dapat mencoba
progres `1/3` sampai `3/3`, membuka CTA Reward demo, lalu mengulang simulasi.

State hanya berada di memori tab dan tidak ditulis ke storage atau backend.
Presenter menjepit target maksimal 12, count 0-target, nama 64 karakter, dan
fallback aman untuk input rusak. Motion hanya transform/opacity serta mati
pada reduced motion; status perubahan memakai live region sopan. Full 160
test, PR CI `33876021566`, canonical-main CI `33876311688`, local UAT
320/360/375/390/430 px, dan remote production UAT 320/390/430 px lulus tanpa
overflow, request backend, console error, atau temuan Axe serious/critical.
Cache offline berubah ke `v42-quest-trail`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

V28 Borderless Quick Emoji sebelumnya berasal dari Saga
Member main `7c72ebdbbb3088820dcbb56fcc1df3f9b90fd477` (PR #44), Preview
deployment `dpl_3Rz3pgJQPQK8Uk5ts1FmZWhJz2nk`, dan Vercel production deployment
`dpl_HzgJW5FataWqGqL6qsJuyJio8AeX` pada stable URL
`https://saga-member-platform.vercel.app`. Coffee `☕`, Studio `📸`, Reward
`🎁`, dan Quest `🎯` kini tampil langsung tanpa background, border, radius,
shadow, atau warna wadah per-kategori. Ruang alignment 42 px atau 38 px pada
layar kompak tetap dipertahankan tanpa permukaan visual; target sentuh tetap
berada pada kartu utama dan minimal 44 px.

Full 157 test, PR CI `33872331545`, canonical-main CI `33872492134`, local UAT
320/360/375/390/430 px, serta remote production UAT 320/390/430 px lulus tanpa
overflow, console error, broken image, atau temuan Axe serious/critical. Cache
offline berubah ke `v41-borderless-quick-emoji`. Tidak ada dependency, aset,
request jaringan, atau animasi baru. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V27 Home Next Step sebelumnya berasal dari Saga Member main
`71b12cbdbbb9248f75fbce1a0ea3c0c486561f69` (PR #43), Preview deployment
`dpl_Cqwyq7CYcTuZWHXvhEuK6158BNiT`, dan Vercel production deployment
`dpl_9f8jfjtWT91is9F1Rqbfh6VztSgz` pada stable URL
`https://saga-member-platform.vercel.app`. Setelah Akses cepat, Beranda kini
menampilkan satu kartu keputusan `Lanjutkan dari sini`. Fixture demo memilih
quest Coffee aktif, memperlihatkan rute Coffee -> Quest -> Reward, status
`1 dari 3 selesai`, dan CTA langsung ke detail quest.

Presenter deterministik memprioritaskan quest aktif, booking terkonfirmasi,
reward eligible, lalu fallback Jelajah. Nama quest/tenant/reward dibatasi 64
karakter dan biaya reward non-finite ditolak. Progressbar menyediakan
`aria-valuenow` serta `aria-valuetext`; CTA minimal 44 px dan label `Data
contoh` mencegah klaim data nyata. Full 157 test, PR CI `33870609104`,
canonical-main CI `33870891068`, local UAT lima viewport, serta remote
production UAT 320/390/430 px lulus tanpa overflow, console error, atau temuan
Axe serious/critical. Cache offline berubah ke `v40-home-next-step`.

V26 Quick Access Emoji tetap menjadi fondasi Akses cepat. Empat kartu memakai
Coffee `☕`, Studio `📸`, Reward `🎁`, dan Quest `🎯`; font stack
memprioritaskan `Apple Color Emoji`, dengan fallback `Segoe UI Emoji` dan
`Noto Color Emoji`; bentuk glyph akhir mengikuti sistem operasi pengguna.

Emoji ditandai dekoratif (`aria-hidden`) sehingga label teks tetap menjadi
accessible name. Kotak ikon berukuran 42 px dan 38 px pada breakpoint kompak,
sementara target sentuh kartu tetap minimal 44 px. Ikon fungsi, sistem, dan
bottom navigation tetap memakai Feather. Full 154 test, PR CI `33868554807`,
canonical-main CI `33868783645`, local UAT 320/360/375/390/430 px, serta remote
production UAT 320/390/430 px lulus tanpa overflow, console error, broken
image, atau temuan Axe serious/critical. Cache offline berubah ke
`v39-quick-access-emoji`. Tidak ada dependency, aset eksternal, atau request
jaringan baru. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

V25 Compact Navigation + Floating Label sebelumnya berasal dari Saga Member
main `9a3661781158723b43da2bcb6e1960b4edad607a` dan tetap menjadi fondasi bottom
navigation pada V26.

V24 Icon-only Bottom Navigation sebelumnya memakai source main
`f19bf3e2f0cd77d0a94af1021668aa342dc05feb`; presentasi label di dalam tinggi
navbar telah digantikan oleh kontrak V25 berdasarkan koreksi langsung Andreas.

Frontend public dummy V23 sebelumnya adalah Member Card Preview & Apply dari Saga
Member main `81e89e6b361277fda5370e51749e3bcc62f8cf3d` (PR #39), Preview
deployment `dpl_2hcsR9LCdEi45WaQmfySuSmtuwRU`, dan Vercel production
deployment `dpl_BgEheE2Ue2fnGp8WJj9S9zv8roWp` pada stable URL
`https://saga-member-platform.vercel.app`. UI memisahkan dua state: kartu
aktif yang tersimpan dan desain yang sedang dipreview. Stepper tema serta
pilihan varian tidak lagi langsung mengubah preference. Perubahan baru berlaku
setelah pengguna menekan `Ganti ke desain ini`; `Tampilkan Pass` dan ekspor
PNG tetap memakai kartu aktif sampai aksi tersebut dilakukan.

Full 150 test, PR CI `33860460618`, canonical-main CI `33861023848` attempt
2, local UAT 320/360/375/390/430 px, dan remote production behavior UAT lulus
tanpa overflow atau console error. Attempt pertama main CI timeout pada
download Chromium sebelum test berjalan; rerun exact commit lulus. Cache
offline berubah ke `v36-member-card-preview-apply`. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`.

Frontend public dummy V22 sebelumnya adalah Jelajah Hero Typography dari Saga
Member main `7c82148e599fea9cd42eac1f8cb7f5bf617f310e` (PR #38), Preview
deployment `dpl_FeLM9U2xEoSs6SKTrDE9FcBfyANX`, dan Vercel production
deployment `dpl_9qWcZtJ52cpwoRPgMXEVapJgpHhL` pada stable URL
`https://saga-member-platform.vercel.app`. Hero Jelajah yang sebelumnya
terbungkus otomatis menjadi tiga baris kini memakai dua baris yang disengaja,
rata tengah, dengan ukuran responsif 28-32 px dan line-height 1.12. Eyebrow,
judul, dan deskripsi memiliki jarak vertikal yang lebih tenang; deskripsi tetap
dibatasi agar nyaman dibaca pada mobile.

Full 148 test, PR CI `33858203877`, canonical-main CI `33858782863`, local UAT
320/360/375/390/430 px, serta remote production UAT 320/390/430 px lulus tanpa
overflow atau console error. Cache offline berubah ke
`v35-explore-typography`. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth,
provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata
tidak aktif. Status `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED /
VERCEL_PRODUCTION_DEPLOYED / PUBLIC_DUMMY_DEMO_ACTIVE /
PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V21 sebelumnya adalah Member Card readability refinement
dari Saga Member main `a788cce43fda9f12d12c4fbb9db9f69bf492f841`
(PR #37), Preview deployment `dpl_5p56eUtwhA8xw1keEskXkntcPEVi`, dan
Vercel production deployment `dpl_APiyaJGgW9v4BecMyGEHWT3TkELz` pada stable URL
`https://saga-member-platform.vercel.app`. Saga Pass memakai satu renderer
CR80 untuk halaman utama dan dialog crew, dengan tujuh tema dan lima varian
per tema. Polos dibangun dari CSS primitives; enam tema lain memakai total 30
background WebP lokal. Nama, tier, Member ID, NFC label, dan ikon contactless
tetap menjadi overlay dinamis, bukan bagian dari artwork.

V21 menghapus panel rectangle dari seluruh overlay pada preview dan PNG, lalu
menjaga keterbacaan memakai stroke adaptif. Pemilih tema kini menampilkan satu
tema per baris dengan tombol sebelumnya/berikutnya yang siklik dan target sentuh
44 px; lima varian tema aktif tetap terlihat di bawahnya. Cache offline berubah
ke `v34-member-card-stepper`.

Pilihan theme/variant disimpan lokal dengan fallback Polos A. Pengguna dapat
mengunduh PNG demo 1712×1080 secara lokal di browser tanpa upload data. Points,
XP, dan disclaimer tetap di luar muka kartu; tidak ada chip pembayaran, QR,
barcode, magnetic stripe, atau klaim transaksi.

147/147 test, PR CI `33856318571`, canonical-main CI `33856691901`, local UAT
320/360/375/390/430 px, remote production UAT seluruh tujuh tema, persistence,
dialog parity, export, Axe, overflow, broken-image, dan console checks lulus.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V19 sebelumnya adalah Studio Session Planner dari Saga
Member main `2858d5aea39008386387cf58668808386247edfd` (PR #35), Preview
deployment `dpl_2veZGPbrgdxPxZrEtPHsv6irbnxa`, dan Vercel production
deployment `dpl_GDMmw3ZZPUiAEgWfcthzdbiNniHw` pada stable URL
`https://saga-member-platform.vercel.app`. Halaman Booking yang sebelumnya
pasif kini memiliki ringkasan sesi, progress native, serta tiga checklist
persiapan: mood foto, outfit utama, dan datang lebih awal. Setiap baris memakai
checkbox HTML native dengan label penuh sebagai target sentuh, status live,
serta Feather icon.

State checklist hanya memakai `sessionStorage`, memfilter ID yang dikenal, dan
berakhir bersama tab demo. Handoff Saga Book tetap simulasi, diberi copy yang
jelas, dan tidak mengubah booking. Tidak ada dependency, endpoint, atau data
produksi baru.

140/140 test, PR CI `33842387433`, canonical-main CI `33842819870`, local UAT,
public UAT 320/360/375/390/430 px, keyboard, session persistence, Axe,
touch-target, offline shell, image fallback, serta Vercel inspection lulus.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy terkini adalah V18 Editorial Story Banner dari Saga
Member main `1e8d64783cebdd21213c5c661d93a3dfd3235e41` (PR #34), Preview
deployment `dpl_Fe54oYSjCaUGohBxUKp3gFaDm1Vd`, dan Vercel production
deployment `dpl_3AG6DEUdFz12SrPfTq3twcAqEzw7` pada stable URL
`https://saga-member-platform.vercel.app`. Empat slide Beranda memakai foto
penuh dengan solid scrim, tinggi 160–168 px, radius 24 px, hierarki copy
eyebrow/judul/body/CTA, serta Feather `arrow-up-right`. Panel kaca inset yang
sebelumnya menutup foto sudah dihapus.

Kontrol pause, previous/next, swipe, autoplay empat detik, off-screen pause,
dan reduced-motion tetap aktif. CTA serta kontrol minimal 44 px. 136/136 test,
PR CI `33840636398`, canonical-main CI `33840964968`, local UAT, public UAT
320/360/375/390/430 px, Axe, geometry banner, offline shell, dan Vercel
inspection lulus. Protected Preview tidak dapat digunakan sebagai anonymous
browser evidence karena Deployment Protection; artefak yang sama dipromosikan
setelah exact-main CI hijau lalu diverifikasi pada stable public alias.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V17 sebelumnya adalah Inbox Center dari Saga Member main
`537efb165da794fdebb881f74748fa1dcf60b8e9` (PR #32/#33), Preview deployment
`dpl_4RpC7DeFjPGhf1gQZ1QZmdZYV1yn`, dan Vercel production deployment
`dpl_5b4D5EseVase3sVv3pbVx6sruzUd` pada stable URL
`https://saga-member-platform.vercel.app`. Inbox memakai overview espresso
dengan unread count, empat filter, kelompok Hari ini/Minggu ini/Sebelumnya,
baris kategori, waktu, body ringkas, dan deep-link ke route Saga terkait.

Membuka kabar menandainya sudah dibaca untuk sesi dummy. Aksi bulk memperbarui
overview, empty state, dan badge Profil; status diumumkan melalui polite live
region. Semua target sentuh minimal 44 px, motion hanya opacity/transform
100–180 ms, reduced-motion/forced-colors didukung, dan tidak ada dependency
baru. Push tetap OFF dan UI menyatakannya secara eksplisit.

133/133 test, PR CI `33838157171`/`33839130337`, canonical-main CI
`33838557658`/`33839466275`, local dan public UAT 320/360/375/390/430 px,
Axe nol serious/critical, offline shell, serta Vercel Preview/production
inspection lulus. Remote UAT pertama menemukan overflow 4 px pada 320 px;
hotfix PR #33 menutupnya dan test kini mengukur layout setelah Inbox dibuka.
Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data
pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Status
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
PUBLIC_DUMMY_DEMO_ACTIVE / PRODUCTION_ACTIVATED=false / BUSINESS_READY=false`.

Frontend public dummy V16 sebelumnya adalah Points Ledger dari Saga Member main
`373742e361a7e702f25c71c7f2ec9edcfb9e6540` (PR #31), Preview deployment
`dpl_F8zpHNeYjh1Nt415Jv6Huk4DTmW8`, dan Vercel production deployment
`dpl_FttVUMWWb8JhwyCNFZxXHA2KY6eL` pada stable URL
`https://saga-member-platform.vercel.app`. Aktivitas kini memakai pola ledger
mobile: saldo menjadi anchor utama, diikuti agregat masuk/dipakai/diproses,
filter empat keadaan, kelompok tanggal, baris dengan arah Points, serta detail
native bottom sheet berisi sumber, status, waktu, dan referensi bertopeng.

Pola informasi mengambil prinsip daftar yang mudah dipindai dan detail on
demand; tidak memakai grafik karena fixture sederhana belum memerlukan analisis
tren. Seluruh nilai tetap berasal dari presentation model dan dummy fixture,
bukan kalkulasi ledger produksi. Motion dialog hanya opacity/transform
140–160 ms, menghormati reduced-motion, dan tidak menambah dependency baru.

129/129 test, PR CI `33834451555`, canonical-main CI `33834835680`, audit
dependency nol vulnerability, exact Preview artifact verification, local UAT,
dan public UAT 320/360/375/390/430 px lulus tanpa overflow, console, page,
atau runtime error. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

Frontend public dummy V15 sebelumnya adalah Human Copy & Moments dari Saga Member
main `d6efc0394f0c991d64dd657c4614b7fdc9dee048` (PR #30), Preview deployment
`dpl_4FBadqpkqVD4qmRfFTcJHHwxPupy`, dan Vercel production deployment
`dpl_DEZprmybhdvs1MZrE1ShFfUpAXNA` pada stable URL
`https://saga-member-platform.vercel.app`. Carousel Beranda memuat empat cerita
yang ringkas: Kopi Saga Salak, Member Moments, Quest minggu ini, dan Saga
Studio. Member Moments serta Quest memakai photographic-style dummy asset
responsif 480/960 WebP, solid scrim berkontras tinggi, CTA minimal 44 px, dan
fallback yang tetap aman saat gambar gagal dimuat.

Copy aktif pada Beranda, Jelajah, Pass, Reward, Profil, Aktivitas, Inbox,
Quest, Detail Reward, Booking, serta feedback/error diubah dari istilah internal
dan frasa generik menjadi bahasa Indonesia yang singkat, kontekstual, dan
berorientasi tindakan. Runtime disclosure kini berbunyi `Mode demo · semua data
hanya contoh`. Tidak ada endpoint, provider, auth, backend, atau dependency
runtime baru; Motion tetap 13.2.0.

124/124 test, PR CI `33831396702`, canonical-main CI `33831772203`, audit
dependency nol vulnerability, exact Preview asset verification, local UAT,
dan public UAT pada 320/360/375/390/430 px lulus. Axe serious/critical,
overflow, broken image, undersized target, unexpected HTTP, console, dan page
error semuanya nol. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

Frontend public dummy V14 sebelumnya adalah Reward Route dari Saga Member main
`8221b86893b0a9bde620fb156ed3ee7f89b0a9ed` (PR #29), Preview deployment
`dpl_GMQd4Je32A7BwD6gL33eEvx7XX4p`, dan Vercel production deployment
`dpl_7tL3XVMo1NcFbEgEi3BhJzFdEgt4` pada stable URL
`https://saga-member-platform.vercel.app`. `Saga Match` memberi satu scan
tentang reward yang cocok, recoverable, atau terminal. Reward Store sekarang
mendahului Quest dan tiap card menampilkan status, alasan, biaya, saldo dummy,
serta next step bila aman.

State kurang Points menampilkan selisih 22 Points dan CTA `Jelajahi Coffee`;
syarat booking memakai next-step fixture ke Studio. Final stock dan expired
tidak memakai disabled button. Adaptor Motion juga mengubah array keyframe
Web Animations menjadi property-indexed keyframes sehingga filter, feedback,
dan empty state tidak lagi memicu exception browser. Tidak ada dependency baru;
Motion tetap 13.2.0 dan Base UI Collapsible hanya dievaluasi.

121/121 test, PR CI `33828131461`, canonical-main CI `33828444039`, audit
dependency nol vulnerability, Preview artifact verification melalui akses
bypass resmi Vercel, local UAT, dan public UAT pada 320/360/375/390/430 px
lulus. Axe serious/critical, overflow, undersized target, unexpected HTTP, dan
page error semuanya nol. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth,
provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata
tidak aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. Belum ada survei
pengguna nyata untuk hipotesis penurunan waktu memahami locked state.

V13 Pass Spotlight sebelumnya berasal dari Saga Member main
`18f86bc02cd2c69344f813a7b99e60484bcfc015` (PR #27 dan koreksi kontras
PR #28) pada Vercel production deployment `dpl_76ASTFPsosi3nvvCMgfJWdm5rCGX`
dan stable URL `https://saga-member-platform.vercel.app`. Halaman Pass kini
memiliki satu aksi dominan untuk membuka presentasi fokus yang hanya menampilkan
nama dummy, tier, dan kode bertopeng. Label `Mode presentasi · simulasi` serta
`SCAN LIVE OFF` membedakannya dari credential atau proses transaksi nyata.

Implementasi memakai native dialog: fokus awal berada pada judul, Tab tetap di
dalam modal, Escape/tombol tutup mengembalikan fokus ke pemicu, dan
`visibilitychange` menutup modal saat page hidden. Motion 13.2.0 yang sudah ada
hanya menggerakkan opacity/transform 140-180 ms. WAI-ARIA Dialog Pattern, W3C
H102, MDN dialog, dan Motion menjadi rujukan; Base UI Dialog dievaluasi tetapi
tidak ditambah karena aplikasi framework-free tidak memerlukan primitive React
kedua. QR, barcode, NFC, timer, provider, dan network request baru tidak ada.

116/116 test, PR CI `33823904568` dan `33824453936`, canonical-main CI
`33823999634` dan `33824599731`, dependency audit nol vulnerability, Preview
artifact verification, local UAT, dan public remote UAT pada
320/360/375/390/430 px lulus. Remote UAT awal menemukan kontras label pada
430 px dan koreksi PR #28 menutupnya; Axe modal kini nol critical/serious pada
seluruh matriks. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Status tertinggi `SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED`;
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V12 Saga Compass sebelumnya berasal dari Saga Member main
`b9fc1bf0eec01badccce0c59fd930cd840891421` (PR #26) pada Vercel production
deployment `dpl_83UwTsmrPTbWA9xYaAjDX3xV1tXT` dan stable URL
`https://saga-member-platform.vercel.app`. Saga Compass memperbaiki continuity
Jelajah: query, filter, scroll, dan fokus kembali utuh setelah member membuka
Booking atau Quest. Quest memakai parent context untuk tombol Back dan active
bottom nav, sementara CTA berikutnya dapat membuka Coffee langsung.

Riset mengikuti WCAG 4.1.3 Status Messages, WAI-ARIA Button Pattern, MDN
history-entry state, dan evaluasi Base UI Toggle Group 1.7.0. Filter kini native
toggle buttons dengan `aria-pressed`; result count memakai polite atomic status.
Zero-result mengganti daftar kosong dengan satu Saga Compass recovery action,
dynamic copy aman, dan fokus tetap pada search selama mengetik. Base UI tidak
diadopsi karena aplikasi framework-free tidak memerlukan React untuk empat
button; Motion 13.2.0 yang sudah ada hanya menggerakkan transform/opacity selama
120-180 ms dan reduced-motion tetap dihormati.

113/113 test, PR CI `33820024498`, canonical-main CI `33820205830`, dependency
audit nol vulnerability, Preview artifact verification, local UAT, dan public
remote UAT pada 320/360/375/390/430 px lulus tanpa overflow, request eksternal,
atau kegagalan network; Axe critical/serious nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V12_SAGA_COMPASS_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V11 Saga Signal berasal dari Saga Member main
`f46903ee4d9a9ee1f976b8fe6b9176dd7f3db8df` (PR #25) pada Vercel production
deployment `dpl_7bnYiDDqTNhuki5TyDRM8yjzcvvZ` dan stable URL
`https://saga-member-platform.vercel.app`. Saga Signal mengganti placeholder
feedback yang terpisah dengan satu komponen outcome untuk menu, Pass, Reward,
privasi, profil, perangkat, support, refresh, sesi, dan handoff Saga Book.
Pesan tetap terlihat sampai ditutup, tidak bertumpuk, dan menjelaskan dampak
dummy secara eksplisit.

Riset mengikuti WCAG 4.1.3 Status Messages, teknik ARIA22, WAI-ARIA Alert
Pattern, dan evaluasi Base UI Toast. Base UI tidak diadopsi karena aplikasi
framework-free ini hanya memerlukan satu feedback aktif dan sudah memiliki
Motion 13.2.0 yang dibundle lokal. Live region dipisahkan dari tombol tutup;
hasil memakai polite `status`, kegagalan memakai `alert`, fokus tidak direbut,
fokus trigger dipulihkan, target tutup 44 px, dan motion hanya
transform/opacity 120-180 ms.

109/109 test, PR CI `33815212641`, canonical-main CI `33815469786`, audit
dependency nol vulnerability, Preview artifact verification, local UAT, dan
public remote UAT pada 320/360/375/390/430 px lulus tanpa overflow, request
eksternal, atau kegagalan network; Axe critical/serious nol. Runtime tetap
`PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan, QRIS,
Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V11_SAGA_SIGNAL_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V10 Journey Memory berasal dari Saga Member main
`a9f41ac0c348cd168b3d65e1cade5f5271c196bd` (PR #24) pada Vercel production
deployment `dpl_TNCG8F7mQRAjx9RXBqHp3MfamChE` dan stable URL
`https://saga-member-platform.vercel.app`. V10 menghubungkan route aplikasi
dengan native History API. Browser Back/Forward dan tombol Back sekunder kini
memulihkan route, posisi scroll, serta fokus tepat ke kontrol asal tanpa
mengubah URL publik.

Riset mengikuti dokumentasi MDN untuk History API serta panduan WCAG 2.4.3
Focus Order dan 2.4.11 Focus Not Obscured. Route aktif memperbarui document
title dan satu polite live region; `main` tidak lagi menjadi live region penuh.
Implementasi tidak menambah dependency: Motion 13.2.0 tetap dipakai hanya untuk
transisi singkat yang sudah ada.

106/106 test, PR CI `33810230630`, canonical-main CI `33810432264`, dependency
audit nol vulnerability, Preview artifact verification, local UAT, dan public
remote UAT pada 320/360/375/390/430 px lulus. Explicit Back, browser
Back/Forward, scroll/focus restoration, Axe, reduced-motion, offline shell,
layout, dan network boundary terverifikasi. Runtime tetap `PUBLIC_DUMMY_DEMO`;
backend, auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer,
dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V10_JOURNEY_MEMORY_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V9 Story Rail berasal dari Saga Member main
`cf702551b2b8d4cba5922938a3fb15f1919760cc` (PR #23) pada Vercel production
deployment `dpl_7tgMDC4unM5URo5Amxr92GQGUJDq` dan stable URL
`https://saga-member-platform.vercel.app`. V9 mengubah carousel Beranda dari
perpindahan endpoint menjadi gesture kontinu dengan pointer capture, resistance
0,72, threshold 36 px atau 0,38 px/ms, dan settle 180 ms menggunakan runtime
Motion yang sudah ada.

Riset mengikuti W3C WAI
[Carousel Pattern](https://www.w3.org/WAI/ARIA/apg/patterns/carousel/), WCAG
[Dragging Movements](https://www.w3.org/WAI/WCAG22/Understanding/dragging-movements.html),
[Pointer Events](https://developer.mozilla.org/en-US/docs/Web/API/Pointer_events),
dan panduan [Motion performance](https://motion.dev/docs/performance). Gesture
bukan satu-satunya kontrol: tombol sebelumnya/berikutnya 44 px memberi
alternatif pointer tunggal dan keyboard. Rotation control tetap berada sebelum
konten berputar, perubahan manual diumumkan secara polite, dan segmented rail
mengurangi tab stop dibanding empat picker kecil.

103/103 test, canonical-main CI `33804897926`, dependency audit nol
vulnerability, local UAT, dan public remote UAT pada 320/360/375/390/430 px
lulus. Drag, previous/next, rapid tap, autoplay, pause, reduced-motion, Axe,
offline shell, layout, console, serta network boundary terverifikasi. Runtime
tetap `PUBLIC_DUMMY_DEMO`; backend, auth, provider, transaksi, data pelanggan,
QRIS, Push, NFC, printer, dan pilot nyata tidak aktif. Delivery adalah
`SAGA_MEMBER_V9_STORY_RAIL_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V8 Motion Foundation dari Saga Member
main `e676b860afd15279d6cf98b23595b246ff0780c3` (PR #22) pada Vercel
production deployment `dpl_7eXtKWzCtizRd4wKEZuZBPUj2UiC` dan stable URL
`https://saga-member-platform.vercel.app`. V8 mempertahankan information
architecture V7, lalu menambahkan hierarchy gerak yang konsisten pada lima
primary route dan route sekundernya: direction-aware route reveal, reveal
section berbasis viewport, feedback tekan, serta indikator aktif bottom nav.

Runtime memakai `motion@13.2.0` berlisensi MIT, dibundle lokal dan disajikan
sendiri tanpa CDN. Pilihan implementasi mengikuti dokumentasi Motion tentang
[`inView`](https://motion.dev/docs/inview) dan
[performance](https://motion.dev/docs/performance), serta panduan WCAG untuk
[motion dari interaksi](https://www.w3.org/WAI/WCAG22/Understanding/animation-from-interactions.html).
Durasi dibatasi 90-260 ms dan property runtime dibatasi pada `transform` serta
`opacity`; tidak ada infinite loop. Seluruh animation handle dan observer
dibersihkan saat route berganti. Preferensi reduced-motion menghasilkan nol
animasi aktif. Bundle motion berukuran 5,8 KB gzip, di bawah budget 20 KB.

100/100 test, PR CI, canonical-main CI `33798937517`, dependency audit nol
vulnerability, local UAT, dan public remote UAT pada 320/360/375/390/430 px
lulus. Remote UAT juga memastikan indikator nav bergerak, tidak ada overflow,
login, console error, respons gagal, request eksternal, request auth, backend,
atau provider. Runtime tetap `PUBLIC_DUMMY_DEMO`: backend, auth, provider,
transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot nyata tidak
aktif. Delivery adalah `SAGA_MEMBER_V8_MOTION_PRODUCTION_DEPLOYED`, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. V8 sekarang menjadi
provenance historis dan rollback motion foundation sebelum V9.

V7 Home Editorial Final dari Saga Member
main `83b969d7c77a2ce8015fb087074d3d59e7acea39` (PR #21) pada Vercel
production deployment `dpl_7ZMPhGXxmfFG4SyUkXFZe2zWjGym` dan stable URL
`https://saga-member-platform.vercel.app`. V7 memadatkan first fold serta
member wallet, membentuk shortcut dua kolom, mengutamakan agenda Studio,
memisahkan status Points, dan mengubah tier serta activity menjadi cerita
editorial yang lebih mudah dipindai.

Carousel tetap empat cerita dan berinterval empat detik, kini memiliki progress
waktu serta state loading/fallback foto. Coffee dan Studio memakai placeholder
foto sintetis WebP 480/960; foto tersebut bukan dokumentasi outlet nyata.
Motion UI memakai transform/opacity maksimal 180 ms, dihentikan ketika tidak
terlihat atau reduced-motion aktif. Plus Jakarta Sans dan Feather icon tetap
menjadi bahasa visual fungsional.

Preview `dpl_48tqDHGcZMVnGm36GUo9dCd12hd4` berstatus READY dan artifact penting
merespons 200. 97/97 test, PR CI, canonical-main CI `33790573528`, local UAT
serta public remote UAT pada 320/360/390/412/430 px lulus tanpa overflow,
broken image, atau console error. Runtime tetap `PUBLIC_DUMMY_DEMO`; backend,
auth, provider, transaksi, data pelanggan, QRIS, Push, NFC, printer, dan pilot
nyata tidak aktif. Delivery adalah `SAGA_MEMBER_V7_HOME_FINAL_PRODUCTION_DEPLOYED`,
sedangkan `PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`. V7 sekarang
menjadi provenance historis dan rollback visual sebelum V8.

V6 Daily Lobby dari Saga Member main
`85a6f8bc4151e414bb0ca7235922162d0d914190` (PR #20) pada Vercel deployment
`dpl_CqeoVBX1Q11ZKc4C4p2tVRkXkMLv` dan stable URL
`https://saga-member-platform.vercel.app` adalah release sebelumnya. Sepuluh batch khusus Beranda
memperbaiki sapaan, hierarchy typography, wallet, shortcut, konteks harian,
tier, activity, warna, tekstur, serta carousel empat cerita.

Carousel Coffee/Studio/Quest/Reward memakai interval empat detik, transisi
180 ms, slide peek, indikator, pause/play, dan swipe. Autoplay berhenti setelah
interaksi serta saat carousel tidak terlihat, tab tidak aktif, atau preferensi
reduced-motion aktif. Seluruh teks, angka, CTA, dan status tetap code-native;
ilustrasi fungsional memakai Feather icon dan bentuk CSS. Canonical-main CI
`33786940481`, 93/93 test, browser UAT 320–430 px, axe nol critical/serious,
44 px touch target, offline shell, serta public remote UAT lulus. Runtime tetap
`PUBLIC_DUMMY_DEMO`: backend, auth, provider, transaksi, data pelanggan, QRIS,
NFC, printer, dan pilot nyata tidak aktif. Karena itu delivery adalah
`SAGA_MEMBER_V6_DAILY_LOBBY_PRODUCTION_DEPLOYED` pada riwayat release, sedangkan
`PRODUCTION_ACTIVATED=false` dan `BUSINESS_READY=false`.

V5 Urban Coffee Club dari main
`f11172a8540263c4394666fb4f722e15546f9bba` (PR #19) adalah release
sebelumnya dan menjadi provenance historis, bukan state runtime terbaru.

V4 Editorial Coffee Utility dari main
`99ca02a06bb85d52570d35454cd5c3c0a0d4087d` (PR #18) adalah release
sebelumnya dan menjadi rollback/provenance historis, bukan state runtime
terbaru.

V3 Contemporary Coffee Club dari main
`fd2d50c10ecbeafb5bf99525687da5a06f123013` (PR #17) adalah release
sebelumnya dan tetap menjadi provenance historis, bukan state runtime terbaru.

Frontend dummy publik terbaru memakai Saga Member canonical main
`0612165bf24d7ee767a287b09c5319a617de6f4a` setelah PR #15 dan hotfix kontras
PR #16. Exact deployment `dpl_EfS6TXf6b7p2CmrzzfX5zGPnNMXz` berstatus READY
dan alias pengguna tetap `https://saga-member-platform.vercel.app`.

Seluruh 10 macro phase, 34 batch, dan 136 micro-sprint integrasi UI sudah
dijalankan. Runtime memilih 28 dari 82 aset Wave A-E melalui registry surface,
menyediakan 56 derivative WebP 320/640 dan legacy fallback, lalu merender nilai
Points, XP, tier, harga, status, stock, eligibility, dan CTA sebagai HTML/JS.
Bottom navigation final adalah Beranda, Jelajah, Pass, Reward, dan Profil;
Aktivitas, Inbox, Quest, detail Reward, serta Booking adalah secondary route.

CI canonical main `33773061967` lulus. Production browser UAT pada 320x568,
360x800, 390x844, 412x915, dan 430x932 lulus tanpa horizontal overflow,
broken image, console error, atau request auth/backend/provider. Touch target
minimum 44 px, axe primary route nol critical/serious, navigation sekunder,
offline restart, dan broken-image fallback lulus. Deployment production sehat
sebelumnya tetap READY sebagai rollback target.

State saat ini `SAGA_MEMBER_GENZ_UI_PRODUCTION_VALIDATED /
PUBLIC_DUMMY_DEMO_ACTIVE / VERCEL_PRODUCTION_DEPLOYED / REAL_BACKEND_OFF /
REAL_PROVIDER_OFF / REAL_DATA_OFF / PRODUCTION_ACTIVATED=false /
BUSINESS_READY=false`. Status ini tidak mengubah private VPS D0, Customer
Platform, provider, tenant, member account, transaksi, atau pilot nyata.

Mode frontend aktif yang ditujukan untuk iterasi fitur/UI/UX sekarang adalah
`PUBLIC_DUMMY_DEMO` dari Saga Member main
`9a914d148bb6773e03afd0c2b45efa39683afdb4` (PR #14) pada satu URL stabil
`https://saga-member-platform.vercel.app`. Runtime statis langsung membuka
Beranda dan menyediakan Home, Reward, Jelajah Saga, Aktivitas, serta Profil
dummy tanpa login, password, OTP, cookie sesi, backend, atau provider. Auth
Functions/helpers dan empat environment variable auth lama sudah dikeluarkan
dari runtime aktif.

PR CI `33690103124`, canonical main CI `33690188252`, 40/40 unit test, browser
acceptance, Vercel acceptance, dependency audit nol vulnerability, serta remote
UAT mobile 390x844 dan desktop 1440x900 lulus. Tidak ada request auth,
`/v1`, synthetic endpoint, atau connector eksternal. Statusnya
`SAGA_MEMBER_PUBLIC_DUMMY_DEMO_VALIDATED / VERCEL_PRODUCTION_DEPLOYED /
REAL_BACKEND_OFF / REAL_PROVIDER_OFF / REAL_DATA_OFF / BUSINESS_READY=false`.
Demo ini sengaja menyederhanakan akses untuk finalisasi pengalaman produk;
status tersebut tidak mengaktifkan production member account, transaksi,
Customer Platform, private VPS ring, QRIS, Resend, Push, NFC, atau printer.

Arah ilustrasi baru Saga Member dikunci sebagai contemporary Indonesian Gen Z
coffee-and-creator, bukan vintage tradisional, 3D, atau photoreal. Gaya
semi-editorial flat/vector-like memakai palet espresso, kakao, karamel,
cement, off-white, dan muted sage; objek serta busana harus terasa seperti
coffee shop dan creator culture masa kini. Exact local source `6be4ced`
menambahkan 76 aset Wave B-E dan mempertahankan enam aset Wave A, sehingga
total library candidate menjadi 82 aset.

Wave B mencakup Home hero dan Jelajah; Wave C Member Pass dan Profil; Wave D
Quest, Reward, empty/system states; Wave E tekstur. Ilustrasi dipisahkan dari
UI fungsional: CTA, navigation, status, points, XP, tier, dan nilai bisnis
tetap dirender oleh kode dengan Feather icon serta Plus Jakarta Sans. Manifest,
review page mobile, dan strategi integrasi route-by-route tersedia di source.
Test 76/76 serta browser review 390x844 lulus dengan 76/76 image load, nol
broken image, nol horizontal overflow, dan axe WCAG A/AA nol violation. Gate
generation ini telah digantikan oleh integration release `0612165...`; 28
aset digunakan aktif dan sisanya tetap candidate/fallback.

Strategy integrasi V2 tersedia pada exact local source `0f8fc5d`. Proposal
memecah pekerjaan menjadi 10 macro phase, 34 batch, dan 136 micro-sprint dari
baseline/rollback contract, shell/navigation, Beranda, Jelajah, Pass,
Reward/Quest, Aktivitas/Profil, state/performance/offline, local UAT, hingga
Vercel Preview dan stable-link release. IA target memakai Beranda, Jelajah,
Pass, Reward, dan Profil; Aktivitas menjadi layar sekunder. Aplikasi tetap
mobile-only 320–430 CSS px, dan layar lebih lebar hanya memusatkan kanvas
mobile maksimal 430 px.

Rencana memakai registry aset serta feature flag, menargetkan hanya 20–28 dari
82 aset untuk initial runtime, membatasi initial image per route, dan
mempertahankan legacy fallback. Label `PROPOSAL /
STRATEGY_READY_FOR_APPROVAL / IMPLEMENTATION_NOT_STARTED` dipertahankan sebagai
histori sebelum eksekusi; implementation aktif sekarang dicatat pada release
di atas.

Home dashboard finalization memakai Saga Member main
`c2754dcf5fe5cccc10993b0eb50a10003949c32e` (PR #10) dan authority Customer
Platform main `7b58d2ae62c564312d4a6adfc696c1a4f1a243eb` (PR #8). Customer Platform
menghasilkan `tierProgress` dan daftar Points lot publik yang sudah dibatasi;
raw lot ID, source ledger entry ID, dan referensi transaksi tidak masuk
response member. Beranda menggunakan proyeksi itu untuk progress tier dan
Points terdekat berakhir, lalu menampilkan shortcut Coffee/Studio/Reward/Quest,
booking berikutnya, aktivitas terbaru, Member Code bertopeng, dan freshness
disclosure tanpa menduplikasi kalkulasi bisnis di client.

Customer PR/main CI `33679625555`/`33679725411` dan Member PR/main CI
`33679617437`/`33679750600` lulus. Member full 40 test, browser 390x844 dan
1440x900, zoom 200%, reduced motion, offline shell, WCAG 2.1 AA otomatis nol
Critical/Serious, dependency audit, security headers, serta exact-asset
protected Preview verification lulus. Status
`SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; Preview tetap terlindungi,
Customer Platform baru belum dideploy, dan provider/API bisnis/ring/NFC tidak
berubah.

Satu URL pengguna kini dikunci pada
`https://saga-member-platform.vercel.app`. Alias stabil itu diarahkan ke exact
Preview tervalidasi tanpa `vercel --prod` atau promote. Endpoint publik memberi
HTTP 200, tetapi runtime tetap D0 fail-closed: login, fixture interaktif, data
member, provider, dan backend production tetap OFF. Setiap Preview berikutnya
harus lulus seluruh gate sebelum alias yang sama dipindahkan; kegagalan tidak
boleh mengubah target sehat terakhir.

Consent akun dan pemulihan sesi sekarang memiliki source authority pada
Customer Platform main `fa3502c5f022305293f0c4142315bfe60cc455a7` (PR #7).
Endpoint authenticated menyajikan onboarding state, menyimpan consent policy
`v1` dengan CSRF dan optimistic version, menyajikan metadata sesi aman,
mencabut sesi lain milik member yang sama, serta logout-all. Token, cookie,
CSRF token, consent ID, IP dan raw user-agent tidak masuk response member.

Saga Member main `70e857393201ec212f832dd17681d1d20f96e821` (PR #9)
menyelesaikan UI recovery onboarding, consent server-owned, inventory sesi,
revoke perangkat lain dan dialog konfirmasi keyboard-accessible. PR/main CI
dua repo lulus; Member full 34 test, browser 390x844 dan 1440x900, WCAG 2.1 AA
otomatis nol Critical/Serious, 200% zoom, reduced motion, offline shell,
dependency audit dan D0 Preview acceptance lulus. Implementasi baru hanya
tervalidasi source/local/synthetic dan protected Vercel Preview; Customer
Platform belum dideploy dan stable production D0 tetap tidak berubah.

Auth-entry slice exact main source
`f778a301a5e638f658a3bdce9e26c052e242bccd` (PR #8) menghapus OTP uji reusable
dan placeholder token dari artefak publik. Private simulation kini menerbitkan
challenge synthetic acak yang sementara, single-active, attempt-limited,
single-use, replay-denied, dan tidak tersedia pada Vercel. UI email/OTP
responsive memiliki label, helper, inline error, busy state, recovery ke email,
serta Google disabled yang jujur. PR CI `33667354949`, canonical main CI
`33667470527`, 31 test, browser mobile/desktop, WCAG otomatis nol
Critical/Serious, dependency audit, dan protected-preview exact-asset checks
lulus. Status `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; real consent
persistence pada auth-entry slice tersebut kemudian ditutup oleh Customer
Platform `fa3502c5...` dan Member `70e8573...`, tetapi belum dideploy ke runtime
Customer Platform.

Finalization slice pertama pada exact main source
`346869577c5a2cfeb4d3bd9431f167f18cd10f99` (PR #7) mengunci fondasi UI:
Plus Jakarta Sans self-hosted, Feather-compatible icon system, token espresso,
karamel, abu-semen dan putih, tekstur semen/kayu rendah kontras, safe-area,
focus state, reduced-motion, forced-colors, serta shell mobile/desktop. PR CI
`33660604668` dan canonical main CI `33660963291` lulus bersama 26 test,
browser acceptance, WCAG otomatis nol Critical/Serious, zoom 200%, keyboard,
offline, audit dependency, dan remote protected-preview verification. Status
slice `SAGA_MEMBER_FINALIZATION_PREVIEW_VALIDATED`; ini bukan aktivasi login,
backend, provider, alias production, production app, atau business readiness.

Frontend exact `c8c776407160c1af7692a068f6a3930ac6ea5b16` juga telah
dipasang pada production target Vercel
`dpl_6QdcYS8XUTTjV7v7tfQ4SL211Q73`. Alias stabil
`saga-member-platform.vercel.app` dilindungi Vercel Authentication dan hanya
menyajikan shell D0 fail-closed. Remote build contract, security headers,
exact-asset hash, serta browser UAT mobile/desktop lulus; tidak ada form login,
navigasi member, console error, atau request API bisnis. Backend VPS tetap
private dan tidak dihubungkan dari target ini.

D0 sengaja tidak dapat dipakai login atau menjalankan flow bisnis. Seluruh
feature/provider, public registration dan public app activation OFF. R0 masih
menunggu exact domain, DNS/TLS, Resend, hashed internal allowlist, expiring
activation passport dan UAT ulang. Snapshot bridge hanya diterima untuk
internal alpha, bukan scale. Goal 1/Goal 2 tetap menjadi provenance historis;
production activation dan business readiness belum dibuktikan.

Goal 3 telah menjalankan seluruh pekerjaan yang sah pada boundary lokal dan
kanonik. Dari 480 micro-sprint, 124 lulus lokal, 108 selesai sebagian secara
lokal, 118 menunggu external gate, dan 130 menunggu prerequisite. Status ini
bukan acceptance Goal 3 penuh: `G3E0` tetap tertutup. Kebijakan aktif sekarang
adalah nol biaya baru; hanya domain/VPS yang sudah aktif boleh digunakan.
Audit read-only menemukan disk root 83%, collision dengan staging legacy,
monitoring staging gagal, dan Customer Platform masih local-alpha tanpa
durable PostgreSQL serving integration. Tidak ada provider, pilot, deployment,
activation, billing, DNS/database, atau perubahan production. Owner self-review
tercatat tetapi bukan independent review.

Goal 4 telah menjalankan seluruh preparation yang sah pada boundary lokal dan
zero-cost. Semua 432 micro-sprint memiliki disposition: 40 local pass, 107
partial local, 88 external gate, dan 197 waiting prerequisite. Baseline Goal 3
terbaru lulus 17/17 local gate dan lima source candidate tetap clean/canonical.
Status ini bukan Goal 4 complete. Public cohort, multi-outlet, commercial
tenant, external runtime/provider, deployment dan production route tetap
`NO_GO`; incremental spend dan production change sama-sama nol. Exact ops
`b1ec6022e2cb3b0ceb6def9a9c73ce42ac0d8bd3`, CI lulus.

Goal 5 dirancang sebagai fase sustainable portfolio expansion, bukan mass
launch otomatis. Pack tervalidasi mencakup 20 wave, 120 batch, 40 macro-sprint,
480 micro-sprint, 60 risiko, 20 automatic safety checkpoint dan 108 trace row
Goal 4. Ia mencakup federated authority, self-service provisioning, commercial
lifecycle, SRE, trust, data governance, loyalty economics, outlet/tenant
factory, partner API, support, governance dan ringed expansion. Preparation
aman boleh berjalan unattended dengan Rp0, tetapi Goal 5 execution belum
dimulai: G417 Goal 4, exact route/scope dan independent evidence belum ada;
seluruh external/production mutation serta NFC tetap `NO_GO`/OFF.

Semua 480 micro-sprint Goal 5 kemudian didisposisi: 59 local pass, 119 partial
local, 106 external gate, dan 196 waiting prerequisite. Dua belas kategori
preparation lokal/Rp0 memiliki evidence; source baseline terbaru lulus 17/17
dan lima canonical candidate tetap clean. Angka partial, external, dan waiting
bukan pass. Status `GOAL_5_ZERO_COST_PREPARATION_EXECUTED /
ROUTE_EXECUTION_NO_GO / PRODUCTION_UNCHANGED / BUSINESS_READY=false`; Goal 4
G417, route/scope, independent review, runtime/provider, 180-day proof dan
business acceptance tetap terbuka.

Goal 6 dirancang sebagai durable portfolio institution dan strategic ecosystem
expansion, bukan izin mass expansion. Strategy pack mencakup 22 wave, 132
batch, 44 macro-sprint, 528 micro-sprint, 66 risiko, 22 automatic safety
checkpoint, dan 120 trace row Goal 5. Cakupannya meliputi institutional
governance, enterprise federation, FinOps, reliability, zero trust, privacy,
data governance, Member/loyalty, SagaOPS, settlement, SagaBook network,
developer platform, support, legal/audit dan bounded network expansion.
Preparation aman boleh unattended pada boundary lokal/read-only/synthetic dan
Rp0. Entry tetap `NO_GO`: Goal 5/G519, exact scope, reviewer independen,
runtime/provider, serta bukti operasi 365 hari belum diterima. Tidak ada
external mutation atau production activation; NFC tetap OFF.

Eksekusi lintas Goal 0–6 telah dibuka hanya pada boundary lokal/Rp0. Ops kini
menyediakan satu launcher dan hub loopback untuk mencoba Member PWA, Customer
API dan SagaOPS OWNER/STAFF secara bersamaan. Credential operator dibuat hanya
di memori proses; Member memakai OTP fixture; seluruh provider tetap simulator.
Ini mempermudah technical UAT tetapi tidak menutup durable PostgreSQL, staging,
provider, pilot, production atau business acceptance.

## Fitur MVP

Product-scoped account, subscription/entitlement, provisioning, audit, dan
adapter untuk SagaBook/SagaView.

## Roadmap

1. Pisahkan control-plane boundary bertahap tanpa rewrite.
2. Multi-operator identity/permission.
3. Adapter per produk.
4. Unified observability public-safe.
5. Saga AI grounded retrieval.

## User journey

Operator register product/org → provision account → activate entitlement →
monitor readiness → support/suspend/resume → audit/offboard.

## User flow

Semua action material permissioned, idempotent, product-scoped, dan auditable.

## Business model

`NEEDS CONFIRMATION`: internal infrastructure atau product eksternal. Saat ini
diposisikan sebagai internal control plane.

## Pricing

Tidak ada pricing eksternal yang disetujui.

## Kompetitor

`NEEDS CONFIRMATION`: internal admin platform, SaaS control plane, entitlement
management, identity/organization platform.

## Diferensiasi produk

Product registry dan commercial control terhubung ke workflow Saga tanpa
menjadi shared operational database.

## Brand positioning

Control plane internal Saga product family.

## Messaging

“Shared identity bukan shared permission.”
“Satu registry, bounded context tetap terpisah.”

## FAQ

**Apakah semua data masuk Platform?** Tidak.
**Apakah satu akun otomatis mengakses semua produk?** Tidak.
**Apakah dijual publik?** Belum diputuskan.

## Technical overview

Control-plane services/schema dengan product_code, signed/versioned integration
events, idempotency, retry, audit, dan fail-closed outage behavior.

## Integrasi

SagaBook pilot, SagaView adapter, lalu produk lain berdasarkan readiness.

## Data yang digunakan

Product registry, organization/membership, product account, subscription,
entitlement, readiness, audit, provisioning state, dan integration metadata.

## Risiko dan asumsi

Coupling dengan operational module, privilege escalation, shared identity
confusion, event replay, observability data leakage, dan migration risk.

## KPI dan success metrics

`PROPOSAL`: provisioning success/time, entitlement incident, adapter
failure, support resolution, audit coverage, release gate accuracy. Target
`NEEDS CONFIRMATION`.

## Ide konten pemasaran

Control plane vs monolith; shared identity vs permission; integration contract.

## Contoh caption

`PROPOSAL`: “Satu akun tidak berarti satu izin. Saga Platform menjaga
identity tetap nyaman tanpa mencampur hak akses antarproduk.”

## Ide campaign

`ASSUMPTION`: engineering/build-in-public series; bukan public sales campaign.

## Sales talking points

Untuk internal stakeholders: bounded context, operability, audit, dan gradual
migration. External sales belum relevan.

## Objection handling

- “Kenapa tidak satu database?”: operational ownership, blast radius, privacy,
  dan independent release.
- “Kenapa tidak rewrite?”: gradual adapter/migration mengurangi risiko.

## Keputusan dan gap

Lihat [GAPS](../../GAPS.md#saga-platform).
