# 📘 LANGKAH DETAIL PRAKTIK

## PERTEMUAN 6 – Git Advanced Workflow, Release & Versioning

**Durasi:** 2 Jam
**Model:** Praktik Terbimbing + Mandiri
**Lanjutan dari:** Pertemuan 5 (GitHub Collaboration)

---

## ⏱️ Alur Waktu Pembelajaran

| Waktu    | Aktivitas                 |
| -------- | ------------------------- |
| 15 menit | Review kondisi repository |
| 20 menit | Konsep versioning & tag   |
| 35 menit | Praktik Git Tag & Release |
| 30 menit | Simulasi Hotfix           |
| 20 menit | Tugas mandiri & evaluasi  |

---

## 🧠 STEP 0 – Review Repository (WAJIB)

### Tujuan

Memastikan semua peserta bekerja di kondisi repo yang sama dan stabil.

### Langkah Teknis

```bash
git checkout main
git pull origin main
git status
```

### Validasi

* Branch aktif: `main`
* Status: `working tree clean`

---

## 🧩 STEP 1 – Memahami Versi Aplikasi

### Penjelasan Instruktur

Dalam dunia nyata:

* Setiap aplikasi **harus memiliki versi**
* Versi menandakan **snapshot kode**
* Versi digunakan untuk:

  * rollback
  * audit
  * troubleshooting

### Skema yang Digunakan

**Semantic Versioning**

```text
vMAJOR.MINOR.PATCH
```

---

## 🧪 STEP 2 – Menentukan Versi Rilis Pertama

### Studi Kasus

Aplikasi PPh sudah memiliki:

* Register karyawan
* Rule pajak SQLite
* Kalkulator PPh

➡️ Layak rilis sebagai **v1.0.0**

---

## 🧪 STEP 3 – Membuat Git Tag (Annotated)

### Kenapa Annotated Tag?

* Memiliki metadata
* Bisa diberi pesan
* Direkomendasikan untuk release

### Langkah Teknis

```bash
git tag -a v1.0.0 -m "Release v1.0.0 - PPh Calculator"
```

Cek tag:

```bash
git tag
git show v1.0.0
```

---

## 🧪 STEP 4 – Push Tag ke GitHub

```bash
git push origin v1.0.0
```

### Validasi

* Tag muncul di GitHub
* Tidak ada error push

---

## 🧪 STEP 5 – Membuat GitHub Release

### Langkah di GitHub UI

1. Masuk ke tab **Releases**
2. Klik **Draft new release**
3. Pilih tag: `v1.0.0`
4. Judul: `Release v1.0.0`
5. Isi release notes:

```text
Initial stable release:
- Employee registration API
- Tax rule management (SQLite)
- PPh calculation endpoint
```

6. Klik **Publish release**

---

## 🧪 STEP 6 – Simulasi Masalah Produksi

### Studi Kasus Bug

Jika income = 0:

* Sistem menghasilkan PPh negatif

➡️ **BUG PRODUKSI**

---

## 🧪 STEP 7 – Membuat Branch Hotfix

### Kenapa Hotfix?

* Tidak menunggu fitur baru
* Langsung perbaiki produksi

```bash
git checkout -b hotfix/pph-zero-income
```

---

## 🧪 STEP 8 – Perbaikan Kode (Hotfix)

### File: `tax_rule_service.py`

```python
def calculate_pph(db, income):
    if income <= 0:
        return 0
    # logic existing
```

---

## 🧪 STEP 9 – Commit Hotfix

```bash
git add services/tax_rule_service.py
git commit -m "fix: handle zero or negative income in pph calculation"
```

📌 Commit **kecil & fokus**

---

## 🧪 STEP 10 – Merge Hotfix ke Main

```bash
git checkout main
git merge hotfix/pph-zero-income
```

### Validasi

* Tidak ada conflict
* Kode berjalan normal

---

## 🧪 STEP 11 – Tag Versi Hotfix

### Versi Baru

```text
v1.0.1
```

```bash
git tag -a v1.0.1 -m "Hotfix: zero income handling"
git push origin v1.0.1
```

---

## 🧪 STEP 12 – Update GitHub Release

* Buat release baru `v1.0.1`
* Catat perubahan hotfix

---

## 📝 STEP 13 – TUGAS MANDIRI PESERTA

1. Tambahkan validasi input salary > 0
2. Commit dengan pesan tepat
3. Buat tag `v1.1.0`
4. Buat release note singkat

---

## 📊 STEP 14 – Evaluasi Instruktur

| Aspek   | Lulus Jika              |
| ------- | ----------------------- |
| Tag     | Annotated & benar versi |
| Release | Notes jelas             |
| Hotfix  | Branch terpisah         |
| Commit  | Tidak generik           |
| Alur    | Sesuai best practice    |

---

## 🏁 OUTPUT AKHIR PERTEMUAN 6

* Repository siap produksi
* Versi rilis terdokumentasi
* Peserta memahami:

  * kapan tag
  * kapan hotfix
  * kapan release

---

📌 **Catatan Instruktur:**
Materi ini adalah **standar industri** dan sangat menentukan kelulusan sertifikat.
