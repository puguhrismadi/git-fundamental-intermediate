# LAB PRAKTIK – PERTEMUAN 5

## GitHub Workflow & Kolaborasi (FastAPI – PPh Indonesia)

**Durasi:** 2 Jam
**Mode:** Praktik Berbasis Proyek (2 Developer – 1 Tim)
**Proyek Lanjutan:** Aplikasi FastAPI Perhitungan PPh (lanjutan Pertemuan 4)

---

## 🎯 Tujuan Pembelajaran

Setelah lab ini, peserta mampu:

1. Mengelola repository GitHub secara kolaboratif
2. Menggunakan branch workflow (feature / bugfix)
3. Melakukan commit terstruktur dan Pull Request (PR)
4. Melakukan code review sederhana
5. Menyelesaikan konflik ringan (merge conflict)

---

## 🧠 Studi Kasus

Tim terdiri dari **2 developer**:

* **Developer A**: Fokus fitur *Register Karyawan*
* **Developer B**: Fokus fitur *Kalkulator PPh berdasarkan Rule SQLite*

Keduanya bekerja pada **1 repository GitHub yang sama**.

---

## 📁 Struktur Proyek (Awal)

```text
pph-fastapi/
├── app/
│   ├── main.py
│   ├── database.py
│   ├── models.py
│   ├── schemas.py
│   └── services/
│       ├── employee_service.py
│       └── tax_rule_service.py
├── README.md
└── requirements.txt
```

---

## 🧪 PRAKTIK 1 – Inisialisasi Repository GitHub

### Langkah (Developer A)

```bash
git init
git add .
git commit -m "init: fastapi pph base project"
git branch -M main
git remote add origin https://github.com/<org-or-user>/pph-fastapi.git
git push -u origin main
```

### Validasi

* Repository muncul di GitHub
* Branch default = `main`

---

## 🧪 PRAKTIK 2 – Clone & Branch Workflow

### Developer B (Clone Repo)

```bash
git clone https://github.com/<org-or-user>/pph-fastapi.git
cd pph-fastapi
git checkout -b feature/pph-calculator
```

### Developer A (Branch Fitur Lain)

```bash
git checkout -b feature/register-employee
```

📌 **Best Practice**

* `main` → branch stabil
* `feature/*` → pengembangan

---

## 🧪 PRAKTIK 3 – Implementasi Fitur (Terpisah)

### A. Developer A – Register Karyawan

**File:** `services/employee_service.py`

```python
from sqlalchemy.orm import Session
from models import Employee


def create_employee(db: Session, name: str, salary: float):
    employee = Employee(name=name, salary=salary)
    db.add(employee)
    db.commit()
    db.refresh(employee)
    return employee
```

**Commit:**

```bash
git add .
git commit -m "feat: add employee registration service"
```

---

### B. Developer B – Kalkulator PPh

**File:** `services/tax_rule_service.py`

```python
def calculate_pph(db: Session, income: float):
    rules = db.execute(
        "SELECT * FROM tax_rules WHERE :income BETWEEN min_income AND max_income",
        {"income": income}
    ).fetchone()

    if not rules:
        return 0

    return income * rules.rate
```

**Commit:**

```bash
git add .
git commit -m "feat: add pph calculation based on tax rules"
```

---

## 🧪 PRAKTIK 4 – Push & Pull Request

### Push ke GitHub

```bash
git push origin feature/register-employee
# atau
git push origin feature/pph-calculator
```

### Buat Pull Request (PR)

* Base: `main`
* Compare: `feature/...`
* Tambahkan deskripsi:

```text
Menambahkan fitur kalkulator PPh berdasarkan rule SQLite
```

---

## 🧪 PRAKTIK 5 – Code Review & Merge

### Checklist Review

* [ ] Kode jalan (tidak error)
* [ ] Penamaan function jelas
* [ ] Tidak hardcode rule pajak
* [ ] Commit message sesuai

### Merge

* Gunakan **Squash & Merge**

---

## ⚠️ PRAKTIK 6 – Simulasi Konflik (Opsional)

1. Kedua developer mengubah `README.md`
2. Push branch masing-masing
3. PR kedua akan conflict

### Penyelesaian

```bash
git pull origin main
# resolve conflict
git add README.md
git commit -m "fix: resolve readme conflict"
```

---

## 📌 Best Practice GitHub yang Dinilai

| Aspek  | Indikator                |
| ------ | ------------------------ |
| Branch | Feature branch digunakan |
| Commit | Pesan jelas & kecil      |
| PR     | Ada deskripsi            |
| Review | Checklist dijalankan     |
| Merge  | Tidak langsung ke main   |

---

## 📝 TUGAS MANDIRI PESERTA

1. Tambahkan endpoint `GET /employees`
2. Tambahkan endpoint `POST /calculate-pph`
3. Buat branch baru `feature/api-endpoint`
4. Buat PR dan minta review instruktur

---

## 🏁 Output Akhir

* Repository GitHub kolaboratif
* History commit rapi
* PR terdokumentasi
* Siap untuk penilaian sertifikat

---

📌 **Catatan Instruktur:**
Lab ini menjadi dasar penilaian **Skill Set: GitHub Collaboration & Workflow**
