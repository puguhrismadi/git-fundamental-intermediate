# MATERI PRAKTIK GIT

## PERTEMUAN 1 & PERTEMUAN 2

---

# 🧩 PERTEMUAN 1 – Pengenalan Git & Setup Tools

**Durasi:** 2 Jam

## 🎯 Tujuan Praktik

Peserta mampu:

* Memahami peran Git dalam pengembangan software
* Menginstall dan melakukan konfigurasi Git
* Memahami workflow dasar Git
* Menggunakan perintah Linux dasar untuk kerja Git

---

## 1️⃣ Konsep Dasar Git (Praktik Kontekstual)

### Studi Kasus

> Seorang developer Python ingin mengembangkan aplikasi tanpa kehilangan histori perubahan kode.

**Tanpa Git:**

* File: `app_v1.py`, `app_fix.py`, `app_final_fix.py`

**Dengan Git:**

* 1 file → histori tersimpan rapi di repository

---

## 2️⃣ Instalasi Git

### Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install git -y
```

### MacOS

```bash
brew install git
```

### Windows

* Download dari [https://git-scm.com](https://git-scm.com)

Cek instalasi:

```bash
git --version
```

---

## 3️⃣ Konfigurasi Awal Git

```bash
git config --global user.name "Nama Anda"
git config --global user.email "email@domain.com"

git config --list
```

---

## 4️⃣ Perintah Linux Dasar (Wajib Git)

```bash
pwd     # cek direktori
ls      # list file
mkdir   # buat folder
cd      # pindah folder
touch   # buat file
nano    # edit file
cat     # tampilkan isi file
```

---

## 5️⃣ Praktik Awal

```bash
mkdir git-project
cd git-project
touch README.md
```

---

# 🧩 PERTEMUAN 2 – Repository & Revisi Dasar Git

**Durasi:** 2 Jam

## 🎯 Tujuan Praktik

Peserta mampu:

* Membuat repository Git
* Memahami working tree & staging area
* Melakukan commit dengan benar
* Melihat histori revisi

---

## 1️⃣ Membuat Repository Git

```bash
git init
```

Struktur tersembunyi:

```bash
ls -a
# .git
```

---

## 2️⃣ Membuat Studi Kasus Proyek Python

### Struktur Proyek

```text
git-project/
├── app.py
└── README.md
```

Isi `app.py`:

```python
print("Aplikasi Git Pertamaku")
```

---

## 3️⃣ Cek Status File

```bash
git status
```

Status umum:

* untracked
* modified
* staged

---

## 4️⃣ Menyimpan Revisi (Commit)

### Tambahkan ke staging

```bash
git add app.py README.md
```

### Commit

```bash
git commit -m "Initial commit: setup project"
```

---

## 5️⃣ Revisi Fitur (Simulasi Perubahan)

Edit `app.py`:

```python
print("Aplikasi Git Pertamaku")
print("Versi 1.1")
```

Cek perubahan:

```bash
git status
git diff
```

Simpan revisi:

```bash
git add app.py
git commit -m "feat: tambah informasi versi"
```

---

## 6️⃣ Melihat Histori Revisi

```bash
git log
```

Versi ringkas:

```bash
git log --oneline
```

---

## 7️⃣ Studi Analisis

| Aktivitas            | Git Command |
| -------------------- | ----------- |
| Cek status           | git status  |
| Simpan revisi        | git commit  |
| Lihat histori        | git log     |
| Bandingkan perubahan | git diff    |

---

## 🧪 Latihan Mandiri Peserta

1. Tambahkan file `config.py`
2. Commit perubahan dengan pesan jelas
3. Ubah isi `README.md`
4. Lihat histori commit

---

## ✅ Checklist Penilaian Instruktur

* [ ] Git terinstall & terkonfigurasi
* [ ] Repository berhasil dibuat
* [ ] Peserta memahami staging & commit
* [ ] Peserta mampu membaca histori Git

---

## 🧠 Insight Industri

> Commit kecil, jelas, dan sering = profesional developer

---

📌 Materi ini menjadi fondasi untuk:

* Branching
* Kolaborasi GitHub
* CI/CD
* Workflow tim developer
