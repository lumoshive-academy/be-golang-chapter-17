-- string function
SELECT LENGTH('Lumoshive');  -- Menghasilkan 9
SELECT LOWER('Lumoshive');  -- Menghasilkan 'lumoshive'
SELECT UPPER('Lumoshive');  -- Menghasilkan 'LUMOSHIVE'
SELECT SUBSTRING('Lumoshive', 1, 4);  -- Menghasilkan 'Lumo'
SELECT TRIM(' Lumoshive ');  -- Menghasilkan 'Lumoshive'
SELECT CONCAT('Lumo', 'shive');  -- Menghasilkan 'Lumoshive'

-- Membuat tabel users (bahan praktik string function dan datetime function)
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    birth_date DATE,
    registration_date TIMESTAMP
);

-- Membuat tabel users (bahan praktik string function dan datetime function)
-- Menambahkan data ke dalam tabel users
INSERT INTO users (first_name, last_name, email, birth_date, registration_date) VALUES
('Budi', 'Santoso', 'budi.santoso@example.com', '1990-01-01', '2024-01-01 10:00:00'),
('Siti', 'Aminah', 'siti.aminah@example.com', '1985-05-15', '2024-02-15 14:30:00'),
('Ahmad', 'Fauzi', 'ahmad.fauzi@example.com', '1992-07-20', '2024-03-20 09:15:00'),
('Dewi', 'Lestari', 'dewi.lestari@example.com', '1988-10-10', '2024-04-10 11:45:00'),
('Rudi', 'Hartono', 'rudi.hartono@example.com', '1995-12-05', '2024-05-05 16:00:00'),
('Lina', 'Marlina', 'lina.marlina@example.com', '1993-03-25', '2024-06-25 13:20:00'),
('Yusuf', 'Hamka', 'yusuf.hamka@example.com', '1987-08-30', '2024-07-30 08:05:00'),
('Rina', 'Susanti', 'rina.susanti@example.com', '1991-11-22', '2024-08-22 17:55:00'),
('Fajar', 'Prasetyo', 'fajar.prasetyo@example.com', '1989-09-18', '2024-09-18 12:10:00'),
('Maya', 'Sari', 'maya.sari@example.com', '1994-04-08', '2024-10-08 15:35:00');

-- implementation string function
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;
SELECT UPPER(first_name) FROM users;
SELECT SUBSTRING(last_name, 1 , 4) AS last_name_part FROM users;

-- datetime function
SELECT NOW();  -- Menghasilkan, misalnya, '2024-07-12 14:35:29.123456+00'
SELECT TO_TIMESTAMP('2024-07-12 14:35:29', 'YYYY-MM-DD HH24:MI:SS');  -- Menghasilkan '2024-07-12 14:35:29'
SELECT TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS');  -- Menghasilkan, misalnya, '2024-07-12 14:35:29'
SELECT TO_DATE('2024-07-12', 'YYYY-MM-DD');  -- Menghasilkan '2024-07-12'
SELECT AGE('2024-07-12', '2020-07-12');  -- Menghasilkan '4 years'
SELECT DATE_TRUNC('month', NOW());  -- Menghasilkan, misalnya, '2024-07-01 00:00:00'
SELECT NOW() + INTERVAL '1 day';  -- Menghasilkan tanggal dan waktu satu hari dari sekarang
SELECT NOW() - INTERVAL '1 hour';  -- Menghasilkan tanggal dan waktu satu jam yang lalu


-- implement datetime function
SELECT first_name, last_name, AGE(birth_date) AS age FROM users;
SELECT TO_CHAR(registration_date, 'DD-MM-YYYY HH24:MI:SS') AS formatted_registration_date FROM users;
SELECT first_name, last_name, 
       registration_date, 
       registration_date + INTERVAL '1 month' AS one_month_later
FROM users;
