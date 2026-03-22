# 🐑 GoSheep Mobile

Aplikasi mobile untuk sistem **GoSheep AI-Based Smart Breeding** — membantu peternak mengelola domba, mencatat data ternak, dan mendapatkan rekomendasi perkawinan berbasis AI.

---

## Tech Stack

`Flutter` · `Dart` · `Google ML Kit (OCR)`

---

## Setup

```bash
flutter pub get
flutter run
```

Pastikan backend Laravel sudah berjalan dan sesuaikan base URL di konfigurasi API.

---

## Fitur Utama

- Manajemen domba, kandang, dan ras
- Pencatatan berat & kondisi kesehatan
- Rekomendasi perkawinan dari AI service
- Pencatatan perkawinan & kelahiran
- Scan eartag via OCR (Google ML Kit)
- Monitor berat real-time dari IoT (ESP32)

---

## Dependencies Utama

| Package                  | Fungsi                     |
| ------------------------ | -------------------------- |
| `dio`                    | HTTP client ke backend API |
| `provider`               | State management           |
| `flutter_secure_storage` | Simpan token autentikasi   |
| `image_picker`           | Ambil foto untuk OCR       |
| `cached_network_image`   | Cache gambar               |
| `intl`                   | Format tanggal & angka     |

---

## Struktur `lib/`

```
lib/
├── models/        # Data class (Sheep, WeightRecord, dll)
├── services/      # API calls ke backend
├── providers/     # State management
├── screens/       # Halaman UI
└── widgets/       # Komponen reusable
```
