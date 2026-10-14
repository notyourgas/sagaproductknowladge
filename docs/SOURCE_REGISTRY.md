# Source Registry

## Tujuan

Memetakan repo, surface dan immutable source yang benar untuk membaca atau mengembangkan produk Saga. Registry ini menyelesaikan ketidakjelasan URL source pada snapshot sebelumnya.

## Konteks

Diverifikasi 14 Oktober 2026. Repository aplikasi bersifat privat; tautan memerlukan akses yang diotorisasi. Knowledge portofolio tetap publik. Ref kanonik dapat berbeda dari main/default branch dan branch deployment. Source backup tidak menjadi izin deploy atau bukti BUSINESS_READY.

| Surface | Repository/ref kanonik | Exact source | Status |
|---|---|---|---|
| marketing | [Source](https://github.com/notyourgas/sagadevs-web/tree/main) | `cafb7ffa229c08040d58ef1f01cc283944177ca1` | `SOURCE_PUSHED` |
| marketing | [Source](https://github.com/notyourgas/sagatech/tree/main) | `f8759a08acc8c12dfd952a641d8da318ab35047c` | `SOURCE_PUSHED` |
| booking-candidate | [Source](https://github.com/notyourgas/sagabook/tree/source/current-book) | `c5a140075ead52fa11f045251fe87b9602582bce` | `SOURCE_PUSHED` |
| public-booking-identity | [Source](https://github.com/notyourgas/sagabook/tree/source/current-booking-site) | `fc6915c4ace7aa2805adc67b69fe793bc7683cd7` | `SOURCE_PUSHED` |
| operator-onboarding | [Source](https://github.com/notyourgas/sagabook/tree/source/current-platform) | `d1a1a3bb482fb48514ceaeae0fee2b0ffe13da20` | `SOURCE_PUSHED` |
| member-frontend | [Source](https://github.com/notyourgas/saga-member/tree/source/current) | `5291abaacde225c570ce89217781dcd49bb530e9` | `SOURCE_PUSHED` |
| customer-platform | [Source](https://github.com/notyourgas/saga-customer-platform/tree/source/current) | `162ee83d1ee1a29c37443dbaccad52f16ce635e4` | `SOURCE_PUSHED` |
| pos-application-and-operations | [Source](https://github.com/notyourgas/sagaops/tree/source/current) | `68ce583badfa371ee2093c415eb78d9f48f60c11` | `SOURCE_PUSHED` |
| pos-foundation-candidate | [Source](https://github.com/notyourgas/sagaops/tree/codex/sagapos-foundation-20261014) | `0e85bcb87f23bda4e33f76d9b97208d0cae11c9a` | `SOURCE_PUSHED / SCOPED_LOCAL_VALIDATED / NOT_DEPLOYED` |
| studio | [Source](https://github.com/notyourgas/sagaview2/tree/source/current-studio) | `6b99cf0780dbe499cbc91b40742c536add7ff786` | `SOURCE_PUSHED` |
| windows-and-control-plane | [Source](https://github.com/notyourgas/sagabooth/tree/source/current) | `0bdee15db0e0a9a6ebff55573655fe61cdec97ba` | `SOURCE_PUSHED` |
| application | [Source](https://github.com/notyourgas/sagabio/tree/source/current) | `80b25c15b5d59d3cf4c31cae02c2a8881fc3048b` | `SOURCE_PUSHED` |
| pilot-application-and-prototype | [Source](https://github.com/notyourgas/sagamenu/tree/main) | `2cd48139cea0f75d9a02b0a86d8f6ffe12ee2d58` | `SOURCE_PUSHED` |
| application | [Source](https://github.com/notyourgas/SAGAFIN/tree/source/current) | `e775b5a0dccbd5eac82d82975c26b87499170f02` | `SOURCE_PUSHED` |
| storefront-and-backend-candidate | [Source](https://github.com/notyourgas/coyabag/tree/source/current) | `24e65ee4b0977c59966eab9bc5ffc64c3e3cce8a` | `SOURCE_PUSHED` |
| archived-event-application | [Source](https://github.com/notyourgas/aogticvity/tree/source/archived) | `54fd00380e8001378accf19800e7bab4c1f80a0e` | `SOURCE_PUSHED` |
| hr-application | [Source](https://github.com/notyourgas/sagawork/tree/source/current) | `fda2cc753daef80ca673be6333e4d44f69d6e705` | `SOURCE_PUSHED` |
| scheduling-correction-candidate | [Source](https://github.com/notyourgas/sagawork/tree/source/scheduling-correction) | `f8bfaf85724f434bc032e8c3bc98e69f8bf209b3` | `SOURCE_PUSHED` |
| event-photo-prototype | [Source](https://github.com/notyourgas/snap-and-fit/tree/source/current) | `219079bbac1ab5637bd2eb1f171edaca56bbb25f` | `SOURCE_PUSHED` |
| planned-service | Belum ada implementasi independen terverifikasi | Tidak tersedia | `PLANNED` |
| credentialed-public-trust-candidate | [Source](https://github.com/notyourgas/coyabag/tree/source/credentialed-public-trust) | `983bdbeedc821189ae420b1695aa14e67f6a40bd` | `SOURCE_PUSHED` |
| dedicated-knowledge | [Knowledge](https://github.com/notyourgas/sagaview/tree/main) | `71ae784d59bb8ac2b3be5fbdb38d2295bd86227d` | `SOURCE_PUSHED` |


## Source machine-readable

[SOURCE_REGISTRY.json](SOURCE_REGISTRY.json) menyimpan pasangan product/surface, repo, branch dan SHA; validator memeriksa cakupan semua direktori produk dan format provenance. Verifikasi remote dilakukan saat milestone, bukan oleh validator offline.

## Surface pendamping

- Multi-outlet finance: repo privat tersendiri, bukan SagaFin atau source POS.
- Campaign QR: companion Book dengan release terpisah.
- Member contracts: kontrak integrasi bersama.
- saga-pos publik: snapshot historis; source aplikasi terkini adalah sagaops privat.
- SagaView backend: module terikat source/release Book; source Studio dan knowledge khusus berbeda repository.

## Kebijakan branch dan integrasi

Branch source/current dan source/current-* adalah pointer source untuk clonning/handoff. Branch lama dan histori tetap dipertahankan. Main/default branch yang lebih lama tidak dijadikan provenance runtime terkini. Kandidat Book, Platform, SagaWork dan COYABAG tidak digabung buta ketika perubahan atau ancestry berbeda. Integrasi aplikasi memerlukan review fungsi dan gate releasenya sendiri; milestone ini hanya menyimpan seluruh kandidat dan menetapkan cara menemukannya.

## Source priority

Keputusan Andreas terbaru, release/runtime evidence, kontrak produk, source/tests, histori dan proposal dibaca dengan prioritas UPDATE_PROTOCOL. Unknown tetap ditandai; Saga AI belum memiliki service independen terverifikasi.
