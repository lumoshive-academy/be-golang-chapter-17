-- Membuat tabel customers
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- Membuat tabel orders
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    amount NUMERIC,
    order_datetime TIMESTAMP
);


-- Mengisi tabel customers dengan data
INSERT INTO customers (name, phone, email) VALUES
('Budi Santoso', '081234567890', 'budi@example.com'),
('Siti Aminah', '081234567891', 'siti@example.com'),
('Ahmad Surya', '081234567892', 'ahmad@example.com'),
('Dewi Lestari', '081234567893', 'dewi@example.com'),
('Rudi Hartono', '081234567894', 'rudi@example.com'),
('Eka Widodo', '081234567895', 'eka@example.com'); -- Pelanggan tanpa pesanan


-- Mengisi tabel orders dengan data
INSERT INTO orders (customer_id, amount, order_datetime) VALUES
(1, 500000, '2024-01-01 10:00:00'),
(1, 750000, '2024-01-02 14:30:00'),
(2, 200000, '2024-01-03 09:15:00'),
(3, 1000000, '2024-01-04 11:45:00'),
(4, 300000, '2024-01-05 16:00:00'),
(5, 450000, '2024-01-06 12:00:00'),
(5, 600000, '2024-01-07 10:00:00'),
(7, 700000, '2024-01-08 14:00:00'); -- Pesanan tanpa pelanggan
