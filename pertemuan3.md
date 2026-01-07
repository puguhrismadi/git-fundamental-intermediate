# 📘 Panduan Praktik Pertemuan 3

## Perbandingan Revisi Git (Single Developer – Python & FastAPI)

---

## 🎯 Tujuan Pembelajaran

Setelah menyelesaikan praktikum ini, peserta mampu:

* Memahami **alur kerja Git** pada proyek Python
* Menjelaskan **setiap perubahan kode** yang dibuat
* Membuat **commit berbasis fitur** secara disiplin
* Menggunakan `git diff` untuk membandingkan revisi

> Fokus utama pertemuan ini **bukan ke FastAPI**, tetapi bagaimana Git mencatat perubahan kode FastAPI.

---

## 🧠 Konsep Awal yang Perlu Dipahami

### Apa itu Revisi dalam Git?

Revisi adalah **setiap perubahan kondisi kode** yang dicatat Git dalam bentuk *commit*.

Setiap commit menyimpan:

* Snapshot file
* Pesan perubahan
* Waktu dan urutan perubahan

Git memungkinkan kita:

* Melihat perubahan
* Membandingkan perubahan
* Kembali ke kondisi sebelumnya

---

## 🗂️ Langkah 1 – Menyiapkan Struktur Proyek

### Tujuan Langkah Ini

Membuat struktur proyek yang rapi agar:

* Perubahan mudah dilacak
* `git diff` mudah dibaca

### Struktur Folder

```
pph21-app/
├── app/
│   ├── main.py      # Endpoint API
│   ├── tax.py       # Logika perhitungan pajak
│   └── schemas.py   # Validasi data
├── requirements.txt
└── README.md
```

> ⚠️ Jangan langsung menulis kode besar. Kita membangun **bertahap dan terukur**.

---

## 🔧 Langkah 2 – Inisialisasi Git Repository

### Perintah

```bash
git init
git status
```

### Penjelasan Teknis

* `git init` → Membuat repository Git lokal
* `git status` → Mengecek kondisi file (tracked/untracked)

Output awal biasanya:

```
Untracked files:
  app/
  requirements.txt
  README.md
```

Artinya Git **belum mencatat apa pun**.

---

## 📝 Langkah 3 – Commit Pertama (Baseline Proyek)

### Tujuan Commit

Menyimpan kondisi awal proyek sebagai **titik pembanding**.

### Perintah

```bash
git add .
git commit -m "init fastapi pph21 project structure"
```

### Kenapa Commit Ini Penting?

* Menjadi dasar perbandingan revisi
* Memudahkan rollback di masa depan

> ⚠️ Commit pertama **tidak berisi logika pajak**.

---

## 🧮 Langkah 4 – Menambahkan Fungsi Perhitungan Pajak

### File: `app/tax.py`

```python
def calculate_pph21(annual_income: float) -> float:
    """
    Menghitung PPh21 sederhana 5%
    """
    return annual_income * 0.05
```

### Penjelasan Kode

* `def` → keyword deklarasi fungsi
* `annual_income: float` → type hint
* `return` → hasil perhitungan

> Di tahap ini **belum ada API**, hanya logika bisnis.

---

## 🔍 Langkah 5 – Melihat Perubahan dengan git diff

### Perintah

```bash
git diff
```

### Apa yang Ditampilkan Git?

* Baris hijau (`+`) → kode baru
* Baris merah (`-`) → kode yang dihapus

Git menunjukkan **perbedaan dengan commit terakhir**.

> Biasakan selalu `git diff` sebelum commit.

---

## 💾 Langkah 6 – Commit Fitur Perhitungan Pajak

### Perintah

```bash
git add app/tax.py
git commit -m "add basic pph21 calculation function"
```

### Prinsip Commit yang Diterapkan

* 1 commit = 1 fitur
* Pesan commit jelas
* File yang di-commit spesifik

---

## 🌐 Langkah 7 – Menambahkan Endpoint API

### File: `app/main.py`

```python
from fastapi import FastAPI
from app.tax import calculate_pph21
from app.schemas import IncomeRequest

app = FastAPI()

@app.post("/pph21")
def calculate_pph(data: IncomeRequest):
    pph = calculate_pph21(data.annual_income)
    return {"pph21": pph}
```

### Penjelasan Teknis

* `@app.post` → decorator endpoint
* Pemanggilan fungsi pajak
* Response berbentuk JSON

---

## 🔄 Langkah 8 – Membandingkan Revisi Antar Commit

### Perintah

```bash
git diff HEAD~1
```

### Fungsi Perintah Ini

Menampilkan perbedaan antara:

* Commit sekarang
* Commit sebelumnya

Digunakan untuk:

* Review perubahan
* Evaluasi kualitas commit

---

## ⚠️ Kesalahan Umum yang Harus Dihindari

* Commit banyak perubahan sekaligus
* Tidak menggunakan `git diff`
* Pesan commit tidak deskriptif

---

## 🔗 Transisi ke Pertemuan 4

Pada pertemuan selanjutnya, kita akan:

* Membuat kesalahan tarif pajak
* Membatalkan perubahan
* Mempelajari `git restore`, `git reset`, dan `git revert`

> Git bukan untuk mencegah kesalahan, tetapi **mengelola kesalahan**.

---

## ✅ Ringkasan

Hari ini Anda belajar:

* Menulis kode bertahap
* Mencatat perubahan secara profesional
* Membandingkan revisi kode

📌 **Git adalah alat berpikir, bukan hanya alat simpan.**
