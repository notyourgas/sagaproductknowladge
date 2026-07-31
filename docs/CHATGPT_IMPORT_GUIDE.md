# Panduan Memasukkan Knowledge ke ChatGPT

## Tujuan

Menjelaskan cara memberi knowledge repository kepada ChatGPT secara konsisten.

## Konteks

Repository bersifat public-safe; data restricted tidak boleh ikut diunggah.

## Cara paling sederhana

1. Unduh repository ini sebagai ZIP dari GitHub.
2. Ekstrak file.
3. Masukkan file berikut ke Knowledge GPT/Project:
   - `INDEX.md`;
   - `CHATGPT_MASTER_KNOWLEDGE.md`;
   - `DECISIONS.md`;
   - `SYNC_STATUS.md`;
   - `GAPS.md`;
   - `docs/SAGA_PRODUCT_PORTFOLIO.md`;
   - dokumen `products/<product>/PRODUCT.md` yang relevan;
   - dokumen `products/<product>/DOSSIER.md` yang relevan;
   - changelog produk bila ChatGPT perlu mengetahui perubahan terbaru.
4. Ganti file lama ketika repository mendapat update material.

## Prompt awal yang disarankan

```text
Gunakan file Saga Product Knowledge sebagai sumber kebenaran.
Gunakan CONFIRMED sebagai fakta kanonik. Bedakan ASSUMPTION, PROPOSAL,
NEEDS CONFIRMATION, dan DEPRECATED.
Jangan menganggap fitur planned atau implemented-not-deployed sudah live.
Jika memberi ide fitur atau konten, jaga positioning dan batas produk pada
dokumen terbaru. Jika ada konflik, prioritaskan tanggal update dan evidence yang
paling baru. Jangan mengisi NEEDS CONFIRMATION, ASSUMPTION, PROPOSAL, atau TODO
dengan tebakan.
```

## Untuk brainstorming konten

```text
Berdasarkan Saga Product Knowledge, buat ide konten yang:
1. fokus pada masalah nyata target user;
2. hanya mengklaim fitur yang sudah production atau diberi label demo;
3. memisahkan SagaBook dan SagaView;
4. menjelaskan before-after serta hasil bisnis;
5. tidak membocorkan detail internal atau data customer.
```

## Untuk brainstorming fitur

```text
Audit product knowledge dan changelog terbaru. Usulkan fitur yang menutup gap
terbesar menuju activation atau business-ready. Jangan menduplikasi fitur yang
sudah ada. Sertakan user problem, nilai bisnis, scope, acceptance criteria,
risiko, dan hubungan dengan produk SagaDev lain.
```

## Catatan

Repository ini publik. Dokumen restricted seperti credential, raw receipt,
database dump, atau bukti customer tidak boleh diunggah ke sini maupun ke
Knowledge ChatGPT.
