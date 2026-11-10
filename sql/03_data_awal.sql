USE praktikum_modul11;

INSERT INTO kategori (nama_kategori) VALUES 
('Perangkat Lapangan'),
('Peralatan Pemantauan'),
('Layanan / Sistem Digital');

INSERT INTO produk (id_kategori, nama_produk, harga, spesifikasi) VALUES (
    1,
    'GPS Tracker Pro Forest',
    3500000.00,
    '{
        "akurasi": "3m",
        "baterai": "3000mAh",
        "waterproof": true,
        "fitur_pendukung": ["Waypoint", "SOS Button"]
    }'
);

INSERT INTO produk (id_kategori, nama_produk, harga, spesifikasi) VALUES (
    2,
    'Kamera Thermal Drone',
    15000000.00,
    '{
        "resolusi": "4K",
        "baterai": "5000mAh",
        "range": "5km",
        "sensor": "Infrared"
    }'
);

INSERT INTO produk (id_kategori, nama_produk, harga, spesifikasi) VALUES (
    3,
    'Paket Server Patroli Cloud',
    150000.00,
    '{
        "durasi": "30 hari",
        "jumlah_pengguna": 5,
        "fitur": [
            "Cloud Storage",
            "Real-time Alert Telegram",
            "Multi Device"
        ]
    }'
);

-- 3. Verifikasi Data Awal
SELECT * FROM kategori;
SELECT * FROM produk;