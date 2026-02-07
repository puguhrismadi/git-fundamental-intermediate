# LEMBAR KERJA PRAKTIK

## PERTEMUAN 8 (Preparation Before Exam)

### REVIEW MATERI & TUGAS AKHIR GIT + GITHUB

### STUDI KASUS: PRODUCT API

---

## 🧭 Informasi Umum

* **Metode** : Online (Live + Mandiri)
* **Durasi Total** : 1 sesi (± 2–3 Jam)
* **Bentuk Kegiatan** : Review, praktik terarah, tugas akhir, evaluasi
* **Output** : Nilai akhir + Sertifikat

---

## 🎯 Tujuan Pertemuan

Peserta mampu:

* Mereview seluruh konsep Git & GitHub yang telah dipelajari
* Menerapkan workflow Git end-to-end pada satu studi kasus API
* Menyelesaikan **tugas akhir mandiri** berbasis praktik industri
* Memahami indikator penilaian sertifikat

---

## 🔁 A. REVIEW MATERI (RANGKUMAN PRAKTIK)

### 1️⃣ Fundamental Git

Checklist pemahaman:

* [ ] Git vs VCS konvensional
* [ ] Repository, working tree, staging area
* [ ] Commit kecil, jelas, dan terstruktur

Perintah inti:

```bash
git init
git status
git add
git commit
git log --oneline
git diff
```

---

### 2️⃣ Branch, Merge & Kolaborasi

Checklist pemahaman:

* [ ] Branch main vs feature
* [ ] Merge & conflict resolution
* [ ] Pull sebelum push

Perintah inti:

```bash
git branch
git checkout -b feature/add-product
git merge feature/add-product
git pull
git push
```

---

### 3️⃣ Reset, Revert, Rollback & Cherry-pick

Checklist pemahaman:

* [ ] Reset untuk kesalahan lokal
* [ ] Revert untuk histori publik
* [ ] Cherry-pick commit spesifik

Perintah inti:

```bash
git reset --soft HEAD~1
git revert <commit_id>
git cherry-pick <commit_id>
```

---

### 4️⃣ Tag & Release

Checklist pemahaman:

* [ ] Tag versi aplikasi
* [ ] Rollback berbasis tag
* [ ] Release notes

Perintah inti:

```bash
git tag -a v1.0.0 -m "Release pertama"
git checkout v1.0.0
```

---

## 🧪 B. TUGAS AKHIR (FINAL PROJECT)

### 📌 Studi Kasus

Pengembangan **Product API Sederhana**

API digunakan untuk mengelola data produk dalam sebuah sistem toko.

---

## 📁 Spesifikasi Aplikasi

### Fitur Minimum

* List produk
* Tambah produk
* Update produk
* Hapus produk

Bahasa & framework bebas (**Python + FastAPI direkomendasikan**)

---

## 🧩 C. SKENARIO PRAKTIK GIT (WAJIB)

Peserta **WAJIB menunjukkan histori Git** dengan ketentuan berikut:

### 1️⃣ Commit Bertahap

Minimal commit:

1. init project
2. setup struktur aplikasi
3. fitur list product
4. fitur add product
5. fitur update product
6. perbaikan bug / refactor

---

### 2️⃣ Branching

Gunakan minimal branch:

* `main`
* `feature/add-product`
* `feature/update-product`

---

### 3️⃣ Cherry-pick

Skenario:

* Satu fitur selesai lebih dulu di branch berbeda
* Commit diambil ke `main` menggunakan cherry-pick

---

### 4️⃣ Tag Rilis

* `v1.0.0` → fitur CRUD produk stabil
* `v1.1.0` → setelah refactor / bugfix

---

## 📝 D. FORMAT PENGUMPULAN

Peserta mengumpulkan:

* Link repository GitHub
* Screenshot:

```bash
git log --oneline --graph --all
```

* Penjelasan singkat workflow Git yang digunakan

---

## 🏅 E. PENILAIAN AKHIR (SERTIFIKAT)

### 5 Skill Set yang Dinilai

| Skill Set            | Deskripsi            | Bobot |
| -------------------- | -------------------- | ----- |
| Git Fundamental      | init, commit, log    | 20%   |
| Branch & Merge       | workflow fitur       | 20%   |
| Reset & Revert       | penanganan kesalahan | 20%   |
| Cherry-pick & Tag    | manajemen rilis      | 20%   |
| Workflow Profesional | kerapian histori     | 20%   |

---

## 📊 F. REKAP NILAI AKHIR

| Nama Peserta | Git Dasar | Branch | Reset/Revert | Cherry-pick | Workflow | Nilai Akhir |
| ------------ | --------- | ------ | ------------ | ----------- | -------- | ----------- |
|              |           |        |              |             |          |             |

---

## 🧠 CATATAN PENUTUP

> Developer yang baik bisa menulis kode.
>
> Developer profesional bisa **menjelaskan histori Git-nya**.

---

✅ **SELESAI – LEMBAR KERJA PRAKTIK PERTEMUAN 8–9**
