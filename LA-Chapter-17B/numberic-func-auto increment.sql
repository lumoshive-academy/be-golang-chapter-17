SELECT 10 + 5;  -- Menghasilkan 15

SELECT 10 - 5;  -- Menghasilkan 5

SELECT 10 * 5;  -- Menghasilkan 50

SELECT 10 / 5;  -- Menghasilkan 2


-- Membuat tabel orders (bahan praktik number function)
CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    customer_name VARCHAR(50),
    quantity INT,
    price NUMERIC(10, 2),
    order_date DATE
);

-- Menambahkan data ke dalam tabel orders
INSERT INTO orders (id, customer_name, quantity, price, order_date) VALUES
(1, 'Budi Santoso', 10, 15000.50, '2024-01-01'),
(2, 'Siti Aminah', 5, 12000.00, '2024-01-02'),
(3, 'Ahmad Fauzi', 8, 10000.75, '2024-01-03'),
(4, 'Dewi Lestari', 3, 5000.25, '2024-01-04'),
(5, 'Rudi Hartono', 7, 20000.00, '2024-01-05'),
(6, 'Lina Marlina', 4, 17500.50, '2024-01-06'),
(7, 'Yusuf Hamka', 9, 18000.75, '2024-01-07'),
(8, 'Rina Susanti', 6, 25000.00, '2024-01-08'),
(9, 'Fajar Prasetyo', 12, 30000.50, '2024-01-09'),
(10, 'Maya Sari', 11, 22000.00, '2024-01-10');

-- query mamtematika dasar
SELECT quantity, price, quantity * price AS total_price
FROM orders;

-- query matematika lanjutan
SELECT id, customer_name, quantity, price, CEIL(price) AS ceil_price, FLOOR(price) AS floor_price
FROM orders;

-- Membuat tabel orders (bahan praktik auto increment)
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    quantity INT,
    price NUMERIC(10, 2),
    order_date DATE
);

-- Menambahkan data ke dalam tabel orders
INSERT INTO orders (customer_name, quantity, price, order_date) VALUES
('Budi Santoso', 10, 15000.50, '2024-01-01'),
('Siti Aminah', 5, 12000.00, '2024-01-02'),
('Ahmad Fauzi', 8, 10000.75, '2024-01-03'),
('Dewi Lestari', 3, 5000.25, '2024-01-04'),
('Rudi Hartono', 7, 20000.00, '2024-01-05'),
('Lina Marlina', 4, 17500.50, '2024-01-06'),
('Yusuf Hamka', 9, 18000.75, '2024-01-07'),
('Rina Susanti', 6, 25000.00, '2024-01-08'),
('Fajar Prasetyo', 12, 30000.50, '2024-01-09'),
('Maya Sari', 11, 22000.00, '2024-01-10');
