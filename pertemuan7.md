# PERTEMUAN 7 – Git Reset, Revert & Cherry-pick (Studi Kasus FastAPI)

## 🎯 Tujuan Teknis

Peserta mampu:

* Memahami dampak **reset vs revert** pada kode Python FastAPI
* Melakukan rollback aman pada branch produksi
* Mengambil commit spesifik menggunakan **git cherry-pick**
* Memahami histori perubahan kode backend API

---

## 📦 Studi Kasus Teknis

Aplikasi **FastAPI – Kalkulator PPh**

Fitur utama:

* Registrasi karyawan
* Rule pajak dinamis dari SQLite
* Endpoint kalkulasi PPh

---

## 🗂️ Struktur Proyek

```text
pph-api/
├── app/
│   ├── main.py
│   ├── database.py
│   ├── models.py
│   ├── schemas.py
│   └── tax_service.py
├── requirements.txt
└── README.md
```

---

## 1️⃣ Kode Awal (STABLE – PRODUKSI)

### `app/main.py`

```python
from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from app.database import get_db
from app.tax_service import calculate_pph

app = FastAPI()

@app.post("/calculate")
def calculate(income: float, db: Session = Depends(get_db)):
    tax = calculate_pph(db, income)
    return {"income": income, "tax": tax}
```

Commit:

```bash
git add .
git commit -m "feat: endpoint kalkulasi PPh stabil"
```

Tag produksi:

```bash
git tag v1.0.0
git push origin v1.0.0
```

---

## 2️⃣ Commit BUG (SALAH LOGIKA PAJAK)

### `app/tax_service.py`

```python
# ❌ BUG: semua pajak dikali 2

def calculate_pph(db, income: float):
    tax = income * 0.05
    return tax * 2
```

Commit:

```bash
git commit -am "bug: salah perhitungan pajak"
```

🚨 Bug sudah terlanjur ke branch `main`

---

## 3️⃣ STUDI KASUS A – Git Reset (LOCAL ONLY)

❌ **JANGAN digunakan jika commit sudah di-push**

```bash
git reset --hard HEAD~1
```

Efek:

* Commit bug **hilang total**
* Aman hanya jika **belum push**

---

## 4️⃣ STUDI KASUS B – Git Revert (BEST PRACTICE PRODUKSI)

### Revert commit bug

```bash
git log --oneline
```

```bash
git revert <hash_commit_bug>
```

✔ Membuat commit baru
✔ Aman untuk branch publik

Commit message otomatis:

```text
Revert "bug: salah perhitungan pajak"
```

---

## 5️⃣ STUDI KASUS C – Rollback via TAG Produksi

```bash
git checkout v1.0.0
git checkout -b hotfix/v1
```

Deploy ulang versi stabil

---

## 6️⃣ STUDI KASUS D – Cherry-pick Fitur Aman

### Branch fitur lain

```bash
git checkout -b feature/logging
```

Tambahan logging:

```python
import logging
logging.basicConfig(level=logging.INFO)

logging.info("Hitung pajak")
```

Commit:

```bash
git commit -am "feat: logging kalkulasi pajak"
```

### Ambil commit ke main

```bash
git checkout main
git cherry-pick <hash_commit_logging>
```

✔ Hanya commit tertentu yang diambil

---

## 7️⃣ Cherry-pick Conflict (Simulasi)

```bash
git cherry-pick <hash>
```

Jika conflict:

```bash
git status
# edit file
git add .
git cherry-pick --continue
```

---

## 🧪 LAB PRAKTIK PESERTA

1. Simulasikan bug perhitungan pajak
2. Lakukan revert commit
3. Buat branch fitur baru
4. Cherry-pick commit ke main
5. Bandingkan `git log`

---

## 📝 TUGAS MANDIRI

* Buat endpoint `/employee/register`
* Commit terpisah per fitur
* Simulasikan bug
* Terapkan revert & cherry-pick

---

## ✅ CHECKLIST PENILAIAN

* [ ] Reset vs revert dipahami
* [ ] Cherry-pick berhasil
* [ ] Commit message rapi
* [ ] Tidak merusak histori

---

📌 **Kesimpulan Teknis:**

> Reset untuk lokal, revert untuk produksi, cherry-pick untuk seleksi fitur.
