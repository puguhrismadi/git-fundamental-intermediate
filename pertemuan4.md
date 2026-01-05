# 📘 Panduan Praktik Detail Teknis

## Pertemuan 4 – Membatalkan Revisi & Kontrol Versi Git

**Studi Kasus Lanjutan:** API Perhitungan PPh 21 Indonesia (FastAPI)

---

## ⏱️ Durasi

**2 Jam (Hands-on Praktik)**

---

## 🎯 Tujuan Pembelajaran

Setelah pertemuan ini, peserta mampu:

* Membatalkan perubahan file menggunakan `git restore`
* Memahami dan menggunakan `git reset --soft / --mixed / --hard`
* Mengembalikan perubahan menggunakan `git revert`
* Menjelaskan perbedaan **Reset vs Revert** secara konseptual dan teknis

---

## 📦 Kondisi Awal Proyek

Gunakan **repository hasil Pertemuan 3** dengan struktur:

```text
pph21-api/
├── app/
│   ├── main.py
│   ├── api/pph.py
│   ├── services/calculator.py
│   └── schemas/pph.py
└── .git/
```

Pastikan status bersih:

```bash
git status
```

---

## 🧨 Skenario Kesalahan (Disengaja)

Kita akan **sengaja membuat kesalahan logika pajak** untuk latihan rollback.

### Kesalahan Tarif Pajak

Edit file:

### `app/services/calculator.py`

```python
# ❌ SALAH: tarif pajak 50%
def hitung_pph_tahunan(netto_bulanan: int, status: str) -> float:
    ptkp = PTKP.get(status, 54_000_000)
    pkp = max(0, netto_bulanan * 12 - ptkp)

    return pkp * 0.5
```

Commit kesalahan:

```bash
git commit -am "feat: ubah tarif pajak (SALAH)"
```

---

## 🧪 MATERI 1 – Membatalkan Perubahan File (`git restore`)

### Kasus

Peserta **menyadari kesalahan sebelum commit**.

### Simulasi

Ubah kembali file (tanpa commit), lalu jalankan:

```bash
git restore app/services/calculator.py
```

### Penjelasan

* Mengembalikan file ke kondisi commit terakhir
* Tidak mengubah histori Git
* Aman untuk kesalahan lokal

---

## 🧪 MATERI 2 – Reset Commit (`git reset`)

### Cek Histori

```bash
git log --oneline --decorate
```

Misal:

```text
abc1234 feat: ubah tarif pajak (SALAH)
xyz5678 feat: service perhitungan pph21 modular
```

---

### 🔹 `git reset --soft HEAD~1`

```bash
git reset --soft HEAD~1
git status
```

**Efek:**

* Commit dibatalkan
* Perubahan **masih ada di staging area**
* Cocok untuk revisi pesan commit

---

### 🔹 `git reset --mixed HEAD~1`

```bash
git reset --mixed HEAD~1
git status
```

**Efek:**

* Commit dibatalkan
* Perubahan kembali ke working directory
* Default mode reset

---

### 🔹 `git reset --hard HEAD~1`

```bash
git reset --hard HEAD~1
```

⚠️ **PERINGATAN**

* Commit dan perubahan **hilang permanen**
* Jangan gunakan jika tidak yakin

---

## 🧪 MATERI 3 – Revert Commit (`git revert`)

### Kasus Produksi (Best Practice)

Kesalahan **sudah terlanjur di-commit** dan histori tidak boleh diubah.

### Jalankan

```bash
git revert HEAD
```

Git akan:

* Membuat commit baru
* Membalikkan perubahan commit sebelumnya

---

### Contoh Histori

```text
123aaaa revert: feat: ubah tarif pajak (SALAH)
abc1234 feat: ubah tarif pajak (SALAH)
xyz5678 feat: service perhitungan pph21 modular
```

---

## ⚖️ Reset vs Revert

| Aspek                  | git reset  | git revert |
| ---------------------- | ---------- | ---------- |
| Mengubah histori       | ✅ Ya       | ❌ Tidak    |
| Aman untuk shared repo | ❌ Tidak    | ✅ Ya       |
| Menghapus commit       | Ya         | Tidak      |
| Cocok untuk            | Eksperimen | Produksi   |

📌 **Kesimpulan:**

> Reset untuk lokal, Revert untuk publik

---

## 🧠 Refleksi Teknis

Diskusikan:

1. Mengapa reset berbahaya di repository tim?
2. Kenapa revert menambah commit baru?
3. Tool mana yang paling aman untuk sistem pajak?

---

## 📝 Tugas Praktik Mandiri

1. Buat kesalahan logika lain (misal PTKP salah)
2. Commit perubahan
3. Perbaiki menggunakan **reset**
4. Ulangi menggunakan **revert**

---

## 🚀 Persiapan Pertemuan 5

* Branching (`git branch`, `git switch`)
* Feature-based workflow
* Merge & conflict sederhana
