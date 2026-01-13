# PERTEMUAN 4 – Studi Kasus Best Practice Git

## Aplikasi Perhitungan Pajak Penghasilan (PPh) Karyawan

### FastAPI + SQLite (Single Developer)

**Durasi:** 2 Jam
**Pendekatan:** Best Practice Industri + Git
**Fokus Tambahan:** Commit Bertahap & Audit Perubahan Rule Pajak

---

## A. GAMBARAN UMUM STUDI KASUS

Pada pertemuan ini peserta mengembangkan **API Perhitungan Pajak Penghasilan (PPh) Karyawan** menggunakan **FastAPI** dengan aturan pajak yang **disimpan di database SQLite**.

Studi kasus ini meniru kondisi nyata di Indonesia:

* Aturan PPh mengikuti **Undang-Undang Perpajakan**
* Tarif pajak dapat berubah tanpa mengubah kode utama
* Setiap perubahan **harus terdokumentasi melalui Git commit**

Git diposisikan sebagai:

* Alat audit perubahan regulasi
* Bukti histori perubahan logika bisnis
* Fondasi kolaborasi developer

---

## B. STRUKTUR PROYEK

```
pph_api_project/
├── app/
│   ├── main.py
│   ├── database.py
│   ├── models.py
│   └── crud.py
├── pph.db
├── requirements.txt
└── README.md
```

---

## C. PERSIAPAN ENVIRONMENT

### 1. Virtual Environment

```bash
python -m venv venv
source venv/bin/activate
```

### 2. Dependency

```txt
fastapi
uvicorn
sqlalchemy
```

```bash
pip install -r requirements.txt
```

---

## D. IMPLEMENTASI KODE (DENGAN SYNTAX COLORING)

### 1. Konfigurasi Database – `database.py`

```python
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

DATABASE_URL = "sqlite:///./pph.db"

engine = create_engine(
    DATABASE_URL,
    connect_args={"check_same_thread": False}
)

SessionLocal = sessionmaker(
    autocommit=False,
    autoflush=False,
    bind=engine
)

Base = declarative_base()
```

---

### 2. Model Database – `models.py`

```python
from sqlalchemy import Column, Integer, String, Float
from database import Base

class Employee(Base):
    __tablename__ = "employees"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False)
    npwp = Column(String, nullable=False)
    salary = Column(Float, nullable=False)

class TaxRule(Base):
    __tablename__ = "tax_rules"
    id = Column(Integer, primary_key=True, index=True)
    min_income = Column(Float)
    max_income = Column(Float)
    rate = Column(Float)
```

---

### 3. Logika Perhitungan Pajak – `crud.py`

```python
def calculate_pph(salary, rules):
    tax = 0
    for rule in rules:
        if salary > rule.min_income:
            taxable = min(salary, rule.max_income) - rule.min_income
            tax += taxable * rule.rate
    return tax
```

---

### 4. API Endpoint – `main.py`

```python
from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from database import SessionLocal, engine
import models
from crud import calculate_pph

models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="API Perhitungan PPh Karyawan")

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.post("/employee")
def register_employee(name: str, npwp: str, salary: float, db: Session = Depends(get_db)):
    emp = models.Employee(name=name, npwp=npwp, salary=salary)
    db.add(emp)
    db.commit()
    return {"status": "ok", "message": "Karyawan terdaftar"}

@app.get("/calculate/{employee_id}")
def calculate_tax(employee_id: int, db: Session = Depends(get_db)):
    emp = db.query(models.Employee).get(employee_id)
    rules = db.query(models.TaxRule).all()
    tax = calculate_pph(emp.salary, rules)
    return {"nama": emp.name, "pph": tax}
```

---

## E. PRAKTIK GIT BERTAHAP (INTI PEMBELAJARAN)

### Tahap 1 – Inisialisasi Proyek

```bash
git init
git add .
git commit -m "init: base fastapi project for pph calculation"
```

**Penjelasan Teknis:**

* Commit awal adalah **baseline sistem**
* Menjadi titik pembanding semua perubahan berikutnya

---

### Tahap 2 – Fitur Registrasi Karyawan

```bash
git diff
git commit -am "feat: employee registration endpoint"
```

**Penjelasan Teknis:**

* Commit fokus pada **1 fitur**
* Memudahkan rollback jika fitur bermasalah

---

### Tahap 3 – Implementasi Rule Pajak di Database

```bash
git commit -m "feat: tax rule based calculation from sqlite"
```

**Penjelasan Teknis:**

* Rule bisnis dipisahkan dari kode
* Perubahan UU ≠ perubahan algoritma

---

### Tahap 4 – Perubahan Undang-Undang Pajak (Simulasi)

Perubahan:

* Update data pada tabel `tax_rules`
* Tidak ada perubahan kode Python

```bash
git commit -m "chore: update tax rate based on new regulation"
```

**Penjelasan Teknis:**

* Commit `chore` menandakan perubahan non-fungsional
* Git berperan sebagai **audit regulasi**

---

## F. ANALISIS & DISKUSI KELAS

Pertanyaan:

* Mengapa rule pajak tidak di-hardcode?
* Bagaimana Git membantu audit hukum?
* Apa risiko jika commit digabungkan?

---

## G. OUTPUT AKHIR PEMBELAJARAN

* API FastAPI siap dikembangkan lebih lanjut
* Histori Git rapi dan profesional
* Peserta memahami Git sebagai alat kontrol perubahan bisnis

---

## H. TUGAS MANDIRI PESERTA

Tugas mandiri ini bertujuan untuk mengukur **pemahaman praktik Git, logika bisnis, dan best practice pengembangan aplikasi** secara individual.

---

### 🎯 Tujuan Tugas

Peserta mampu:

* Mengembangkan fitur baru secara terstruktur
* Menerapkan Git commit bertahap dan bermakna
* Mensimulasikan perubahan regulasi pajak
* Menunjukkan histori Git yang rapi dan profesional

---

### 📌 Deskripsi Tugas

Peserta diminta **mengembangkan lanjutan aplikasi PPh Karyawan** dengan ketentuan berikut:

#### 1. Fitur Baru (WAJIB)

* Tambahkan endpoint API:

  * `GET /employees` → menampilkan seluruh karyawan
* Tambahkan validasi:

  * gaji tidak boleh < 0

---

#### 2. Perubahan Rule Pajak (Simulasi UU Baru)

* Tambahkan **1 lapisan tarif pajak baru** ke tabel `tax_rules`
* Tidak diperbolehkan mengubah fungsi `calculate_pph`

---

### 🧩 Aturan Git (WAJIB)

Peserta **WAJIB** melakukan minimal **4 commit terpisah**:

1. `feat: add list employee endpoint`
2. `fix: validate negative salary input`
3. `chore: add new tax rule based on regulation`
4. `docs: update readme for new feature`

❗ Commit digabung atau tidak sesuai pesan **tidak dinilai**

---

### 📂 Output yang Dikumpulkan

Peserta mengumpulkan:

* Link repository Git (GitHub / GitLab)
* Screenshot `git log --oneline`
* File `README.md` yang menjelaskan:

  * fitur baru
  * simulasi perubahan pajak

---

### 📝 Kriteria Penilaian

| Aspek                | Bobot |
| -------------------- | ----- |
| Struktur commit Git  | 30%   |
| Kesesuaian fitur     | 25%   |
| Penerapan rule pajak | 20%   |
| Kerapian kode        | 15%   |
| Dokumentasi          | 10%   |

---

### 💡 Catatan untuk Peserta

> Fokus tugas ini **bukan hanya hasil akhir**, tetapi **bagaimana proses pengembangan dicatat oleh Git**.

---

**Status:** Final – Siap untuk Lab Praktik
