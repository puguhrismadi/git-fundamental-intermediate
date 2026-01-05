# 📘 Panduan Praktik Detail Teknis

## Pertemuan 3 – Perbandingan Revisi Git (Single Developer – Python)

**Studi Kasus:** API Perhitungan PPh 21 Indonesia (FastAPI)

---

## 🎯 Tujuan Praktik

Peserta mampu:

* Membuat proyek FastAPI terstruktur
* Mengimplementasikan perhitungan PPh 21 modular
* Melakukan commit berbasis fitur
* Membandingkan perubahan kode menggunakan `git diff`

---

## 🛠️ Persiapan Lingkungan

```bash
python -m venv .venv
source .venv/bin/activate
pip install fastapi uvicorn
```

---

## 📁 Struktur Proyek Target

```text
pph21-api/
├── app/
│   ├── main.py
│   ├── api/
│   │   └── pph.py
│   ├── services/
│   │   └── calculator.py
│   └── schemas/
│       └── pph.py
├── README.md
└── .gitignore
```

---

## STEP 1 – Inisialisasi Git

```bash
git init
git status
```

Commit awal:

```bash
git add .
git commit -m "init: struktur awal proyek fastapi pph21"
```

---

## STEP 2 – FastAPI Baseline

### `app/main.py`

```python
from fastapi import FastAPI

app = FastAPI(title="API PPh21")

@app.get("/")
def health_check():
    return {"status": "ok"}
```

Jalankan server:

```bash
uvicorn app.main:app --reload
```

Commit:

```bash
git commit -am "feat: fastapi health check"
```

---

## STEP 3 – Schema Validasi Input

### `app/schemas/pph.py`

```python
from pydantic import BaseModel

class PPhRequest(BaseModel):
    gaji_pokok: int
    tunjangan: int
    bpjs: int
    status_ptkp: str
```

Commit:

```bash
git add .
git commit -m "feat: schema input pph21"
```

Gunakan diff:

```bash
git diff HEAD~1
```

---

## STEP 4 – Service Perhitungan Pajak

### `app/services/calculator.py`

```python
PTKP = {
    "TK/0": 54_000_000,
    "K/0": 58_500_000,
}


def hitung_bruto(gaji: int, tunjangan: int) -> int:
    return gaji + tunjangan


def hitung_netto(bruto: int, bpjs: int) -> int:
    biaya_jabatan = min(bruto * 0.05, 500_000)
    return bruto - biaya_jabatan - bpjs


def hitung_pph_tahunan(netto_bulanan: int, status: str) -> float:
    ptkp = PTKP.get(status, 54_000_000)
    pkp = max(0, netto_bulanan * 12 - ptkp)

    if pkp <= 60_000_000:
        return pkp * 0.05

    return 3_000_000 + (pkp - 60_000_000) * 0.15
```

Commit:

```bash
git commit -am "feat: service perhitungan pph21 modular"
```

---

## STEP 5 – API Endpoint Perhitungan

### `app/api/pph.py`

```python
from fastapi import APIRouter
from app.schemas.pph import PPhRequest
from app.services.calculator import (
    hitung_bruto,
    hitung_netto,
    hitung_pph_tahunan,
)

router = APIRouter(prefix="/pph", tags=["PPh21"])


@router.post("/hitung")
def hitung_pph(data: PPhRequest):
    bruto = hitung_bruto(data.gaji_pokok, data.tunjangan)
    netto = hitung_netto(bruto, data.bpjs)
    pajak = hitung_pph_tahunan(netto, data.status_ptkp)

    return {
        "bruto": bruto,
        "netto_bulanan": netto,
        "pph21_tahunan": pajak,
        "pph21_bulanan": pajak / 12,
    }
```

Integrasi router di `main.py`:

```python
from app.api.pph import router as pph_router

app.include_router(pph_router)
```

Commit:

```bash
git commit -am "feat: endpoint api perhitungan pph21"
```

---

## 🔍 Fokus Utama Git Diff

Bandingkan perubahan antar fitur:

```bash
git diff HEAD~2 HEAD
```

Diskusi:

* Perubahan apa yang terjadi?
* File mana yang bertambah?
* Apakah commit sudah fokus satu fitur?

---

## 📌 Refleksi Akhir

* Logika bisnis **tidak** dicampur dengan API
* Commit kecil = histori mudah dibaca
* `git diff` membantu memahami evolusi kode

---

## 🚀 Persiapan Pertemuan Selanjutnya

* Buat **bug tarif pajak**
* Commit kesalahan
* Latihan `git restore`, `reset`, dan `revert`
