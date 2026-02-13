# 🏁 UJIAN PRAKTIK GIT – FINAL SERTIFIKASI

## Penilaian Akhir Program Git & GitHub

---

## 📌 INFORMASI UJIAN

* **Jenis** : Praktik (Hands-on Exam)
* **Durasi** : 100 Menit
* **Mode** : Mandiri (Time-Based)
* **Tools** : Git, GitHub, Terminal, Code Editor
* **Output** : Repository GitHub + Histori Commit Profesional

---

# 🎯 TUJUAN SERTIFIKASI

Peserta dinyatakan LULUS jika mampu:

1. Mengelola repository secara profesional
2. Menerapkan branching workflow sederhana dan efektif
3. Menangani kesalahan dengan teknik yang tepat
4. Menggunakan cherry-pick secara terkontrol
5. Membuat tag rilis stabil
6. Menjelaskan histori Git dengan runtut

---

# 🧪 STUDI KASUS FINAL

## 📦 "Inventory Management API"

Aplikasi sederhana untuk mengelola stok barang gudang.

Fitur minimum:

* GET /items → menampilkan daftar barang
* POST /items → menambah barang
* PUT /items/{id} → update stok
* DELETE /items/{id} → hapus barang

Bahasa & framework bebas (Python + FastAPI direkomendasikan).

---

# ⏱️ PEMBAGIAN WAKTU (100 MENIT)

| Tahap | Aktivitas                      | Waktu    |
| ----- | ------------------------------ | -------- |
| 1     | Setup repository & README      | 10 menit |
| 2     | Fitur List & Add (branch)      | 25 menit |
| 3     | Fitur Update & Delete (branch) | 25 menit |
| 4     | Simulasi kesalahan + perbaikan | 20 menit |
| 5     | Cherry-pick + Tag Release      | 20 menit |

Total: **100 Menit**

---

# 📋 TAHAPAN WAJIB

## 1️⃣ Setup

Commit wajib:

```
init: setup inventory api project
```

---

## 2️⃣ Branch Feature Pertama

Branch:

```
feature/add-item
```

Commit contoh:

```
feat: add list item endpoint
feat: add create item endpoint
```

Merge ke main.

---

## 3️⃣ Branch Feature Kedua

Branch:

```
feature/update-delete-item
```

Commit bertahap:

```
feat: add update item endpoint
feat: add delete item endpoint
```

---

## 4️⃣ Simulasi Kesalahan

1. Buat commit yang menyebabkan error
2. Perbaiki menggunakan teknik tepat (reset atau revert)
3. Jelaskan alasan di README

---

## 5️⃣ Cherry-pick & Tag

Branch:

```
feature/hotfix-stock
```

Cherry-pick commit ke main.

Buat tag:

```
v1.0.0
v1.1.0
```

---

# 🏅 RUBRIK PENILAIAN SERTIFIKAT (REVISI)

| Aspek Penilaian            | Indikator                           | Bobot |
| -------------------------- | ----------------------------------- | ----- |
| Struktur Repository        | Folder rapi & dapat dijalankan      | 15%   |
| Commit Quality             | Bertahap, jelas, konsisten          | 20%   |
| Branch Management          | Pemisahan fitur & merge benar       | 20%   |
| Error Handling             | Reset/Revert sesuai konteks         | 15%   |
| Cherry-pick Implementation | Tepat & tidak membingungkan histori | 15%   |
| Tag & Release              | Versi jelas & konsisten             | 10%   |
| Dokumentasi Singkat        | Penjelasan workflow di README       | 5%    |

Total: **100%**

---

# 📊 KRITERIA KELULUSAN

| Nilai Akhir | Predikat        | Status      |
| ----------- | --------------- | ----------- |
| ≥ 85        | Sangat Kompeten | LULUS       |
| 75 – 84     | Kompeten        | LULUS       |
| 60 – 74     | Cukup           | Remedial    |
| < 60        | Tidak Kompeten  | Tidak Lulus |

---

# ⚠️ ATURAN PENTING

* Tidak boleh force push ke main
* Tidak boleh 1 commit besar saja
* Commit message wajib profesional
* Histori harus dapat dijelaskan

---

# ✅ SELESAI – UJIAN PRAKTIK GIT FINAL (100 MENIT)
