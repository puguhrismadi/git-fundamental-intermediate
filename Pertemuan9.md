# 🏁 UJIAN PRAKTIK GIT – FINAL SERTIFIKASI

## Penilaian Akhir Program Git & GitHub

---

## 📌 INFORMASI UJIAN

* **Jenis** : Praktik (Hands-on Exam)
* **Durasi** : 150 Menit
* **Mode** : Mandiri (Time-Based)
* **Tools** : Git, GitHub, Terminal, Code Editor
* **Output** : Repository GitHub + Histori Commit Profesional

---

# 🎯 TUJUAN SERTIFIKASI

Peserta dinyatakan LULUS jika mampu:

1. Mengelola repository secara profesional
2. Menerapkan branching workflow
3. Menangani kesalahan dengan reset / revert secara tepat
4. Menggunakan cherry-pick sesuai kebutuhan
5. Membuat tag rilis yang jelas
6. Menjelaskan histori Git dengan logis

---

# 🧪 STUDI KASUS FINAL

Anda ditugaskan membuat:

## 📦 "Inventory Management API"

Aplikasi sederhana untuk mengelola stok barang gudang.

Fitur minimum:

* GET /items → menampilkan daftar barang
* POST /items → menambah barang
* PUT /items/{id} → update stok
* DELETE /items/{id} → hapus barang

Bahasa & framework bebas (Python + FastAPI direkomendasikan).

---

# 📁 STRUKTUR MINIMAL PROJECT

```text
inventory-api/
├── app.py
├── models.py (opsional)
├── database.py (opsional)
├── README.md
└── requirements.txt
```

---

# ⏱️ TAHAPAN WAJIB UJIAN

---

## 1️⃣ Tahap Setup (15 Menit)

* Buat folder project
* Inisialisasi repository
* Buat README berisi deskripsi proyek

Commit wajib:

```
init: setup inventory api project
```

---

## 2️⃣ Tahap Fitur Dasar (30 Menit)

Buat fitur:

* List items
* Add item

Gunakan branch:

```
feature/add-item
```

Commit contoh:

```
feat: add list item endpoint
feat: add create item endpoint
```

Merge ke main setelah selesai.

---

## 3️⃣ Tahap Update & Delete (30 Menit)

Gunakan branch terpisah:

```
feature/update-delete-item
```

Commit bertahap:

```
feat: add update item endpoint
feat: add delete item endpoint
```

---

## 4️⃣ Simulasi Kesalahan Produksi (25 Menit)

Instruksi:

1. Buat perubahan yang menyebabkan error
2. Commit perubahan tersebut
3. Perbaiki menggunakan teknik yang tepat

Peserta bebas memilih:

* revert (jika sudah dianggap publik)
* reset (jika masih lokal)

Peserta WAJIB menuliskan alasan di README.

---

## 5️⃣ Cherry-pick Scenario (20 Menit)

Instruksi:

1. Buat branch baru: feature/hotfix-stock
2. Tambahkan perbaikan kecil (misal validasi stok tidak boleh minus)
3. Cherry-pick commit tersebut ke branch main

---

## 6️⃣ Tag & Release (10 Menit)

Buat 2 tag:

```
v1.0.0
v1.1.0
```

Keterangan:

* v1.0.0 → CRUD stabil
* v1.1.0 → hotfix & improvement

---

# 📤 FORMAT PENGUMPULAN

Peserta mengumpulkan:

1. Link repository GitHub
2. Screenshot hasil:

```
git log --oneline --graph --all
```

3. Penjelasan singkat workflow Git yang digunakan

---

# 🏅 RUBRIK PENILAIAN SERTIFIKAT

| Aspek                   | Kriteria                  | Bobot |
| ----------------------- | ------------------------- | ----- |
| Git Fundamental         | init, add, commit, log    | 15%   |
| Branching Strategy      | pemisahan fitur jelas     | 20%   |
| Merge & Conflict        | aman & bersih             | 15%   |
| Reset / Revert          | sesuai konteks            | 15%   |
| Cherry-pick             | tepat & terkontrol        | 15%   |
| Tag & Release           | versi jelas               | 10%   |
| Profesionalisme Histori | commit message & struktur | 10%   |

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
* Tidak boleh squash semua commit
* Tidak boleh 1 commit besar saja
* Commit message wajib profesional

---

# 🧠 CATATAN AKHIR SERTIFIKASI

Sertifikat diberikan bukan karena kode berjalan,

melainkan karena peserta menunjukkan:

✅ Workflow Git profesional
✅ Histori yang dapat diaudit
✅ Pemahaman konseptual & teknis

---

# ✅ SELESAI – UJIAN PRAKTIK GIT FINAL SERTIFIKASI
