# 🧪 SKENARIO REPOSITORY DEVELOPER YANG SALAH

## Beserta Cara Koreksi (Panduan Instruktur & Peserta)

Dokumen ini berisi **contoh kesalahan umum repository Git peserta** saat ujian / praktik,
dilengkapi **analisis teknis** dan **langkah koreksi yang BENAR** sesuai praktik industri.

---

## ❌ SKENARIO 1 – Semua Perubahan dalam 1 Commit

### 🔍 Kondisi Repository

```text
commit a1b2c3d
Author: peserta
Message: "final project selesai"
```

Ciri-ciri:

* Banyak file berubah sekaligus
* Tidak jelas urutan pengerjaan
* Sulit diaudit

### ❗ Kesalahan

* Tidak menerapkan commit bertahap
* Histori Git tidak bermakna

### ✅ Cara Koreksi (Edukasi)

**Solusi Ideal (jika belum push):**

```bash
git reset --soft HEAD~1
# lakukan commit ulang per fitur
```

**Solusi Jika Sudah Push (disarankan):**

* Nilai tetap dikurangi
* Jelaskan bahwa di dunia kerja ini ❌

📌 *Catatan instruktur:* nilai histori turun, tapi kode masih bisa dinilai.

---

## ❌ SKENARIO 2 – Kerja Langsung di Branch `main`

### 🔍 Kondisi Repository

```text
main
 ├── commit feat add product
 ├── commit fix bug
 ├── commit coba-coba
```

### ❗ Kesalahan

* Tidak menggunakan branch fitur
* Risiko tinggi di produksi

### ✅ Cara Koreksi

Edukasi workflow yang benar:

```bash
git checkout -b feature/add-product
# kerjakan fitur

git checkout main
git merge feature/add-product
```

📌 *Catatan:* di perusahaan, commit langsung ke `main` biasanya diblok.

---

## ❌ SKENARIO 3 – Salah Pakai `git reset --hard` di Repo Publik

### 🔍 Kondisi

* Commit hilang
* Histori berubah

### ❗ Kesalahan Fatal

* Menghapus histori publik
* Berpotensi merusak kerja tim

### ✅ Cara Koreksi

**Penanganan darurat:**

```bash
git reflog
git checkout <commit_id>
```

**Best practice seharusnya:**

```bash
git revert <commit_id>
```

📌 *Aturan emas:* `reset --hard` ❌ untuk repo bersama.

---

## ❌ SKENARIO 4 – Merge Conflict Diabaikan

### 🔍 Kondisi

* Conflict diselesaikan asal
* Kode rusak

### ❗ Kesalahan

* Tidak memahami conflict marker

### ✅ Cara Koreksi

Langkah benar:

```text
<<<<<<< HEAD
kode lama
=======
kode baru
>>>>>>> feature-x
```

Langkah:

1. Pilih kode yang benar
2. Hapus marker
3. Test aplikasi
4. Commit hasil merge

---

## ❌ SKENARIO 5 – Cherry-pick Tanpa Alasan

### 🔍 Kondisi

* Banyak cherry-pick acak
* Histori membingungkan

### ❗ Kesalahan

* Cherry-pick digunakan sembarangan

### ✅ Cara Koreksi

Edukasi aturan:

* Cherry-pick hanya untuk:

  * hotfix
  * ambil 1 commit siap rilis

Contoh benar:

```bash
git cherry-pick <commit_fix>
```

---

## ❌ SKENARIO 6 – Tidak Ada Tag Rilis

### 🔍 Kondisi

* Tidak jelas versi stabil

### ❗ Kesalahan

* Tidak siap produksi

### ✅ Cara Koreksi

Tambahkan tag:

```bash
git tag -a v1.0.0 -m "Initial stable release"
```

---

## 📊 RINGKASAN PENILAIAN CEPAT

| Skenario         | Dampak Nilai | Catatan          |
| ---------------- | ------------ | ---------------- |
| 1 commit besar   | -20%         | Histori buruk    |
| Tanpa branch     | -15%         | Workflow salah   |
| Reset publik     | -30%         | Fatal            |
| Conflict salah   | -20%         | Risiko bug       |
| Cherry-pick acak | -10%         | Tidak terkontrol |
| Tanpa tag        | -10%         | Tidak siap rilis |

---

## 🧠 PESAN PENTING UNTUK PESERTA

> Git bukan hanya alat menyimpan kode.
>
> Git adalah **alat komunikasi profesional antar developer**.

---

✅ **SELESAI – SKENARIO REPO SALAH & CARA KOREKSI**
