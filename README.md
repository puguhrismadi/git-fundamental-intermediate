# SILABUS RESMI FINAL  
## Kursus Git, GitHub & CI/CD untuk Pengembangan Software

**Durasi Total:** 18 Jam  
**Jumlah Pertemuan:** 9  
**Durasi / Pertemuan:** 2 Jam  
**Level:** Beginner – Intermediate  
**Metode:** Teori (30%) – Praktik (70%)  
**Output:** Sertifikat Kompetensi  

---

## CAPAIAN PEMBELAJARAN
Peserta mampu:
1. Menggunakan Git sebagai Version Control System
2. Mengelola revisi source code secara profesional
3. Bekerja dengan GitHub untuk kolaborasi tim
4. Mengelola branch, merge, dan conflict
5. Menggunakan GitHub Actions untuk Continuous Integration
6. Menerapkan containerization menggunakan Docker
7. Memahami alur CI/CD modern (GitHub Actions & Komodo CI/CD)
8. Menghasilkan repository GitHub siap standar industri

---

## PERTEMUAN 1 – Pengenalan Git, GitHub & Setup Tools
**Durasi:** 2 Jam  

### Materi:
- Permasalahan pengelolaan source code tanpa VCS
- Konsep Version Control System
- Git vs VCS terpusat
- Git sebagai Distributed VCS
- Peran Git & GitHub di industri software
- Overview DevOps & CI/CD pipeline

### Instalasi & Setup:
- Instal Git (Windows / Linux / macOS)
- Konfigurasi Git:
  - `user.name`
  - `user.email`
- Pengenalan Git Bash / Terminal
- Pembuatan akun GitHub
- Setup SSH Key ke GitHub

### Praktik:
- `git --version`
- `git config --list`
- Test koneksi SSH GitHub

📌 Tutorial Git: 01

---

## PERTEMUAN 2 – Repository & Revisi Dasar Git
**Durasi:** 2 Jam  

### Materi:
- Konsep repository & working tree
- Membuat repository:
  - `git init`
- Status file:
  - `git status`
- Menyimpan revisi:
  - `git add`
  - `git commit`
- Melihat histori revisi:
  - `git log`
  - `git log --oneline`

### Praktik:
- Membuat repository lokal
- Commit bertahap

📌 Tutorial Git: 02, 03, 04

---

## PERTEMUAN 3 – Perbandingan Revisi Git (Single Developer – Python)
**Durasi:** 2 Jam  

### Studi Kasus:
**Aplikasi Python CLI – Task Manager**

### Materi:
- Struktur proyek Python
- Commit berbasis fitur
- Melihat perbedaan revisi:
  - `git diff`
  - Perbandingan working tree vs staging
  - Perbandingan antar commit

### Praktik:
- Implementasi fitur Python
- Analisis perubahan kode

📌 Tutorial Git: 05

---

## PERTEMUAN 4 – Membatalkan Revisi & Kontrol Versi
**Durasi:** 2 Jam  

### Materi:
- Membatalkan perubahan file:
  - `git restore`
- Reset commit:
  - `git reset --soft`
  - `git reset --mixed`
  - `git reset --hard`
- Revert commit:
  - `git revert`
- Perbedaan reset vs revert
- Best practice undo dalam tim

### Praktik:
- Simulasi kesalahan commit
- Pemulihan source code

📌 Tutorial Git: 06, 08

---

## PERTEMUAN 5 – Percabangan & Workflow Pengembangan
**Durasi:** 2 Jam  

### Materi:
- Konsep percabangan (branch)
- Perintah branch:
  - `git branch`
  - `git checkout`
  - `git switch`
- Menggabungkan branch:
  - `git merge`
- Feature-based workflow

### Praktik:
- Membuat feature branch
- Merge ke branch utama

📌 Tutorial Git: 07

---

## PERTEMUAN 6 – Remote Repository & Kolaborasi GitHub
**Durasi:** 2 Jam  

### Materi:
- GitHub sebagai remote repository
- Remote command:
  - `git remote`
  - `git push`
  - `git pull`
  - `git fetch`
- Perbedaan `git fetch` vs `git pull`
- Pull Request & Code Review

### Praktik:
- Studi kasus 2 developer
- Pull Request & review
- Merge branch ke `main`

📌 Tutorial Git: 09, 10

---

## PERTEMUAN 7 – Conflict Resolution & GitHub Issues
**Durasi:** 2 Jam  

### Materi:
- Penyebab merge conflict
- Teknik penyelesaian conflict
- GitHub Issues
- Workflow:
  - Issue → Branch → Pull Request

### Praktik:
- Simulasi merge conflict
- Penyelesaian conflict manual
- Implementasi issue berbasis task

---

## PERTEMUAN 8 – CI/CD: GitHub Actions, Docker & Komodo
**Durasi:** 2 Jam  

### Materi GitHub Actions:
- Konsep Continuous Integration & Continuous Deployment
- Workflow YAML
- Trigger:
  - `push`
  - `pull_request`
- Automated testing Python

### Materi Docker:
- Konsep container & image
- Dockerfile untuk aplikasi Python
- Build & run container

### Materi Komodo CI/CD:
- Konsep Komodo CI/CD
- Integrasi GitHub dengan Komodo
- Alur build, test, dan deploy

### Praktik:
- Membuat GitHub Actions sederhana
- Build image Docker Python
- Simulasi pipeline CI/CD

---

## PERTEMUAN 9 – Release Management, Git Tag & Sertifikasi
**Durasi:** 2 Jam  

### Materi:
- Git Tag:
  - Lightweight tag
  - Annotated tag
- Versioning release:
  - `v1.0`
- Dokumentasi final proyek

### Ujian Praktik:
- Membuat repository baru
- Commit & branching
- Pull Request & merge
- Conflict resolution
- CI pipeline berjalan sukses
- Tag release

### Ujian Teori:
- Konsep Git & GitHub
- Workflow kolaborasi
- CI/CD & Docker

📌 Tutorial Git: 11

---

## SISTEM PENILAIAN
| Komponen | Bobot |
|--------|------|
| Praktik Git & GitHub | 50% |
| CI/CD & Docker | 30% |
| Teori | 20% |

**Nilai Kelulusan Minimum:** 70

---

## SERTIFIKAT
**Judul Sertifikat:**  
**Git, GitHub & CI/CD for Software Development**

**Keterangan Sertifikat:**
- Menyelesaikan pelatihan selama 18 jam
- Menguasai Git & GitHub level industri
- Memahami CI/CD berbasis Docker

---
