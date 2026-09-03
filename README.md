# Sistem Informasi Cutting Planning

**PT Yongjin Javasuka Garment**

Aplikasi web sederhana untuk membantu Operator Cutting Planning dalam:
- Mengelola data Style / Artikel
- Input Order + Size Ratio
- Membuat Cutting Plan
- Menghitung Fabric Utilization secara otomatis
- Monitoring status cutting
- Melihat laporan

## Fitur

- Login (Admin & Operator)
- Dashboard dengan statistik
- CRUD Data Style
- Input Order + Size Ratio
- Buat Cutting Plan + Hitung Fabric Utilization
- Update status Cutting Plan
- Laporan Cutting Plan (bisa dicetak)

## Teknologi

- PHP Native
- MySQL
- Bootstrap 5
- Bootstrap Icons

## Cara Install

1. Install XAMPP
2. Copy folder `cutting-planning` ke `C:\xampp\htdocs\`
3. Start Apache & MySQL di XAMPP
4. Buka `http://localhost/phpmyadmin`
5. Import file `database.sql`
6. Buka browser: `http://localhost/cutting-planning`

## Login Default

- Username: `admin`
- Password: `admin123`

atau

- Username: `operator`
- Password: `operator123`

## Struktur Folder

```
cutting-planning/
├── config/
│   └── database.php
├── pages/
│   ├── login.php
│   ├── dashboard.php
│   ├── style.php
│   ├── order.php
│   ├── cutting_plan.php
│   ├── laporan.php
│   ├── header.php
│   └── footer.php
├── proses/
│   └── login_proses.php
├── index.php
├── logout.php
├── database.sql
└── README.md
```

## Dibuat untuk

Project / Tugas Akhir / Sidang  
Mahasiswa yang magang di PT Yongjin Javasuka Garment  
Posisi: Operator Cutting Planning
