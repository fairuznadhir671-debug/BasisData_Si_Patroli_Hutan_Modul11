USE praktikum_modul11;


SELECT 
    nama_produk, 
    JSON_UNQUOTE(JSON_EXTRACT(spesifikasi, '$.baterai')) AS kapasitas_baterai 
FROM produk 
WHERE id_kategori = 1;

SELECT 
    nama_produk, 
    spesifikasi->> '$.resolusi' AS resolusi_kamera 
FROM produk 
WHERE id_kategori = 2;



UPDATE produk 
SET spesifikasi = JSON_SET(spesifikasi, '$.baterai', '4000mAh') 
WHERE nama_produk = 'GPS Tracker Pro Forest';

SELECT nama_produk, spesifikasi 
FROM produk 
WHERE nama_produk = 'GPS Tracker Pro Forest';



UPDATE produk 
SET spesifikasi = JSON_SET(spesifikasi, '$.garansi', '2 Tahun') 
WHERE nama_produk = 'Kamera Thermal Drone';

SELECT nama_produk, spesifikasi 
FROM produk 
WHERE nama_produk = 'Kamera Thermal Drone';



UPDATE produk 
SET spesifikasi = JSON_REMOVE(spesifikasi, '$.range') 
WHERE nama_produk = 'Kamera Thermal Drone';

SELECT nama_produk, spesifikasi 
FROM produk 
WHERE nama_produk = 'Kamera Thermal Drone';



SELECT 
    nama_produk, 
    harga, 
    spesifikasi 
FROM produk 
WHERE JSON_UNQUOTE(JSON_EXTRACT(spesifikasi, '$.baterai')) = '5000mAh';



SELECT JSON_OBJECT(
    'wilayah', 'Hutan Pinus Nongko Ijo', 
    'status_siaga', true, 
    'petugas_aktif', 5
) AS laporan_patroli_ringkas;

SELECT 
    nama_produk, 
    JSON_LENGTH(spesifikasi) AS jumlah_atribut_spesifikasi 
FROM produk;