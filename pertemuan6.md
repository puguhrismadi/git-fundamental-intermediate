# LAB PRAKTIK – PERTEMUAN 6

## Git Advanced Workflow, Release & Versioning (Lanjutan Pertemuan 5)

**Durasi:** 2 Jam
**Mode:** Praktik Tim (2 Developer – GitHub)
**Proyek:** FastAPI – Aplikasi Perhitungan PPh Indonesia

---

## 🎯 Tujuan Pembelajaran

Setelah menyelesaikan lab ini, peserta mampu:

1. Mengelola workflow Git tingkat lanjut
2. Menggunakan Git Tag untuk versi aplikasi
3. Membuat GitHub Release
4. Mengelola hotfix tanpa merusak branch utama
5. Mempersiapkan repository siap produksi

---

## 🧠 Prasyarat

* Lab Pertemuan 5 selesai
* Repository sudah memiliki:

  * Branch `main`
  * Minimal 2 feature branch
  * Pull Request & merge history

---

## 📌 Konsep Penting (Briefing Instruktur)

| Konsep     | Fungsi                   |
| ---------- | ------------------------ |
| Git Tag    | Penanda versi rilis      |
| Release    | Snapshot siap deploy     |
| Hotfix     | Perbaikan cepat produksi |
| Versioning | Kontrol perubahan        |

---

## 🧪 PRAKTIK 1 – Menyiapkan Versi Aplikasi

### Cek Kondisi Repository

```bash
git checkout main
git pull origin main
git log --oneline --decorate -5
```

Pastikan:

* Branch `main` stabil
* Tidak ada conflict

---

## 🧪 PRAKTIK 2 – Penomoran Versi (Semantic Versioning)

Gunakan format:

```text
vMAJOR.MINOR.PATCH
```

Contoh:

* `v1.0.0` → rilis pertama
* `v1.0.1` → bugfix
* `v1.1.0` → fitur baru

---

## 🧪 PRAKTIK 3 – Membuat Git Tag

### Tag Annotated (Disarankan)

```bash
git tag -a v1.0.0 -m "Release pertama aplikasi PPh"
```

Cek tag:

```bash
git tag
git show v1.0.0
```

Push tag ke GitHub:

```bash
git push origin v1.0.0
```

---

## 🧪 PRAKTIK 4 – Membuat GitHub Release

### Langkah (Web GitHub)

1. Buka tab **Releases**
2. Klik **Draft new release**
3. Pilih tag `v1.0.0`
4. Judul: `Release v1.0.0`
5. Deskripsi:

```text
- Fitur register karyawan
- Kalkulator PPh berbasis rule SQLite
- API FastAPI siap digunakan
```

6. Publish release

---

## 🧪 PRAKTIK 5 – Simulasi Hotfix Produksi

### Studi Kasus

Terdapat bug:

> Perhitungan PPh mengembalikan nilai negatif jika income = 0

---

### Langkah Hotfix

```bash
git checkout -b hotfix/pph-zero-bug
```

Perbaiki kode:

```python
if income <= 0:
    return 0
```

Commit:

```bash
git add .
git commit -m "fix: prevent negative pph when income is zero"
```

Merge ke main:

```bash
git checkout main
git merge hotfix/pph-zero-bug
```

---

## 🧪 PRAKTIK 6 – Tag Versi Hotfix

```bash
git tag -a v1.0.1 -m "Hotfix: PPh zero income"
git push origin v1.0.1
```

---

## 📊 Evaluasi Praktik

| Aspek    | Indikator                 |
| -------- | ------------------------- |
| Tag      | Menggunakan annotated tag |
| Release  | Deskripsi jelas           |
| Hotfix   | Branch terpisah           |
| Commit   | Deskriptif                |
| Workflow | Tidak langsung edit main  |

---

## 📝 TUGAS MANDIRI PESERTA

1. Tambahkan perubahan kecil (validasi input)
2. Buat tag versi `v1.1.0`
3. Buat release note singkat
4. Kirim link release ke instruktur

---

## 🏁 Output Akhir

* Repository dengan:

  * Tag versi
  * Release GitHub
  * Riwayat hotfix
* Siap dinilai untuk sertifikat

---

📌 **Catatan Instruktur:**
Pertemuan ini menilai **Skill Set: Git Versioning & Release Management**
