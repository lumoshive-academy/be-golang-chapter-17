-- Membuat tabel sales (bahan parktik group by)
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(50),
    quantity INT,
    total_price NUMERIC,
    sale_date DATE
);

-- Membuat tabel sales (bahan parktik group by)
-- Menambahkan data ke dalam tabel sales
INSERT INTO sales (product, quantity, total_price, sale_date) VALUES
('Laptop', 10, 15000000, '2024-01-01'),
('Laptop', 5, 7500000, '2024-01-02'),
('Mouse', 25, 500000, '2024-01-01'),
('Mouse', 30, 600000, '2024-01-03'),
('Keyboard', 15, 1200000, '2024-01-02'),
('Keyboard', 10, 800000, '2024-01-05'),
('Monitor', 5, 5000000, '2024-01-04'),
('Monitor', 3, 3000000, '2024-01-04'),
('Printer', 8, 4000000, '2024-01-06'),
('Printer', 6, 3000000, '2024-01-06');

-- implementation group by
SELECT product, SUM(quantity) AS total_quantity, SUM(total_price) AS total_sales
FROM sales
GROUP BY product;

SELECT sale_date, SUM(quantity) AS total_quantity, SUM(total_price) AS total_sales
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

-- implementation constraint
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE,
    price NUMERIC CHECK (price > 0)
);


-- Membuat tabel dengan constraint UNIQUE dan CHECK
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE,
    price NUMERIC CHECK (price > 0)
);

-- Menambahkan data yang memenuhi constraint
INSERT INTO products (product_name, price) VALUES
('Laptop', 15000000),
('Mouse', 500000),
('Keyboard', 1200000);
-- Menguji constraint UNIQUE dengan menambahkan data duplikat
-- Query ini akan gagal
INSERT INTO products (product_name, price) VALUES
('Laptop', 14000000);

-- Menambahkan data yang memenuhi constraint CHECK
INSERT INTO products (product_name, price) VALUES
('Monitor', 5000000),
('Printer', 3000000);

-- Menguji constraint CHECK dengan menambahkan data dengan harga negatif
-- Query ini akan gagal
INSERT INTO products (product_name, price) VALUES
('Scanner', -1500000);


-- bahan praktik contraint
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC
);


-- add constraint
ALTER TABLE products
ADD CONSTRAINT unique_product_name UNIQUE (product_name);
ALTER TABLE products
ADD CONSTRAINT check_price_positive CHECK (price > 0);
