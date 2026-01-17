# 📘 CHEATSHEET GIT PRAKTIK (PERTEMUAN 1–4)

Dokumen ini berisi **cheatsheet ringkas + teknis** seluruh perintah Git yang digunakan pada:

* Praktik 1 s.d 4 (Single Developer)
* Branch & Merge (Multi Developer)

Siap **copy–paste**, **di-embed ke PPT**, atau **dibagikan ke peserta**.

---

## 🧩 PRAKTIK 1 – Inisialisasi Repository & Revisi Dasar

### 1️⃣ Inisialisasi Repository

```bash
git init
```

**Fungsi:**

* Membuat repository Git lokal
* Folder `.git/` akan dibuat

---

### 2️⃣ Cek Status File

```bash
git status
```

**Menampilkan:**

* File baru (untracked)
* File yang berubah (modified)
* File siap commit (staged)

---

### 3️⃣ Menambahkan File ke Staging Area

```bash
git add main.py
git add .
```

**Catatan:**

* `git add .` → semua perubahan
* `git add <file>` → file tertentu

---

### 4️⃣ Menyimpan Revisi (Commit)

```bash
git commit -m "Initial project setup"
```

**Best Practice Commit Message:**

* Singkat
* Menjelaskan tujuan perubahan

---

## 🧩 PRAKTIK 2 – Commit Berbasis Fitur (Single Developer – Python)

### Contoh Struktur Proyek

```
pph-app/
├── app.py
├── calculator.py
├── database.py
└── rules.db
```

---

### Commit Berbasis Fitur

```bash
git commit -m "feat: add PPh calculation module"
```

📌 **Prefix Commit Umum:**

* `feat:` fitur baru
* `fix:` perbaikan bug
* `refactor:` perapihan kode
* `docs:` dokumentasi

---

## 🧩 PRAKTIK 3 – Perbandingan Revisi (git diff)

### Melihat Perubahan Belum di-Commit

```bash
git diff
```

### Melihat Perubahan Antar Commit

```bash
git diff HEAD~1 HEAD
```

### Melihat Perubahan File Tertentu

```bash
git diff app.py
```

📌 **Manfaat:**

* Review kode
* Audit perubahan logika
* Validasi sebelum commit

---

## 🧩 PRAKTIK 4 – Riwayat Revisi & Navigasi Commit

### Melihat Riwayat Commit

```bash
git log
```

### Riwayat Singkat

```bash
git log --oneline
```

### Riwayat dengan Grafik

```bash
git log --oneline --graph --all
```

---

### Kembali ke Commit Tertentu (Read-only)

```bash
git checkout <commit_id>
```

📌 **Catatan:**

* HEAD akan berada pada kondisi *detached*

---

## 🌿 CHEATSHEET GIT BRANCH & MERGE (MULTI DEVELOPER)

### 1️⃣ Melihat Branch

```bash
git branch
```

### 2️⃣ Membuat Branch Baru

```bash
git branch feature/kalkulator-pph
```

### 3️⃣ Pindah Branch

```bash
git checkout feature/kalkulator-pph
```

atau

```bash
git switch feature/kalkulator-pph
```

---

### 4️⃣ Membuat & Pindah Branch Sekaligus

```bash
git checkout -b feature/database-rule
```

---

### 5️⃣ Merge Branch

```bash
git checkout main
git merge feature/kalkulator-pph
```

📌 **Merge digunakan saat:**

* Fitur selesai
* Kode sudah diuji

---

### 6️⃣ Menangani Merge Conflict

#### Contoh Konflik

```python
<<<<<<< HEAD
result = calculate_pph_v1()
=======
result = calculate_pph_v2()
>>>>>>> feature/kalkulator-pph
```

#### Langkah Penyelesaian

1. Pilih kode yang benar
2. Hapus tanda konflik
3. Simpan file
4. Commit ulang

```bash
git add app.py
git commit -m "fix: resolve merge conflict on PPh calculation"
```

---

## 🌍 Kolaborasi dengan GitHub (Ringkas)

### Push ke Repository Remote

```bash
git push origin main
```

### Ambil Update dari Remote

```bash
git pull origin main
```

---

## 🎯 Rangkuman Skill yang Dilatih

✔ Manajemen revisi kode
✔ Commit terstruktur & profesional
✔ Audit perubahan kode
✔ Kolaborasi multi developer
✔ Penanganan konflik kode

---

📌 **Dokumen ini direkomendasikan sebagai:**

* Handout praktikum
* Lampiran PPT
* Referensi cepat saat ujian praktik

---

✍️ *Disusun untuk program pelatihan Git & GitHub – Versi Final*
