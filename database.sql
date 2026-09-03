-- Database untuk Sistem Informasi Cutting Planning
-- PT Yongjin Javasuka Garment

CREATE DATABASE IF NOT EXISTS db_cutting;
USE db_cutting;

-- Tabel User
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    level ENUM('admin','operator') DEFAULT 'operator',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Style / Artikel
CREATE TABLE style (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kode_style VARCHAR(50) NOT NULL,
    nama_style VARCHAR(100) NOT NULL,
    deskripsi TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Order
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    no_order VARCHAR(50) NOT NULL,
    id_style INT NOT NULL,
    warna VARCHAR(50) NOT NULL,
    total_qty INT NOT NULL DEFAULT 0,
    tanggal DATE NOT NULL,
    status ENUM('pending','proses','selesai') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_style) REFERENCES style(id) ON DELETE CASCADE
);

-- Tabel Detail Size Order
CREATE TABLE order_detail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_order INT NOT NULL,
    size VARCHAR(10) NOT NULL,
    qty INT NOT NULL DEFAULT 0,
    FOREIGN KEY (id_order) REFERENCES orders(id) ON DELETE CASCADE
);

-- Tabel Cutting Plan
CREATE TABLE cutting_plan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_order INT NOT NULL,
    marker_length DECIMAL(10,2) NOT NULL,
    jumlah_lay INT NOT NULL,
    lebar_kain DECIMAL(10,2) NOT NULL,
    fabric_used DECIMAL(10,2) NOT NULL,
    fabric_utilization DECIMAL(5,2) NOT NULL DEFAULT 0,
    tanggal_plan DATE NOT NULL,
    status ENUM('belum','proses','selesai') DEFAULT 'belum',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_order) REFERENCES orders(id) ON DELETE CASCADE
);

-- Data awal User (password: admin123)
INSERT INTO users (username, password, nama, level) VALUES 
('admin', MD5('admin123'), 'Administrator', 'admin'),
('operator', MD5('operator123'), 'Operator Cutting', 'operator');

-- Data contoh Style
INSERT INTO style (kode_style, nama_style, deskripsi) VALUES 
('TNF-JKT-01', 'The North Face Jacket', 'Technical Outerwear Jacket'),
('UA-HOOD-02', 'Under Armour Hoodie', 'Sportswear Hoodie'),
('LL-PANT-03', 'Lululemon Pants', 'Activewear Pants');
