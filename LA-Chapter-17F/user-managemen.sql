-- Membuat pengguna dengan perintah CREATE USER
CREATE USER adminlevel1 WITH PASSWORD 'password';

-- Membuat pengguna dengan perintah CREATE ROLE
CREATE ROLE adminlevel2 WITH LOGIN PASSWORD 'password';

-- add access 
GRANT ALL PRIVILEGES ON DATABASE postgres TO adminlevel1;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE users TO adminlevel2;

-- mengubah user
ALTER USER adminlevel1 WITH PASSWORD 'pas1234';

-- Mencabut semua hak akses dari pengguna
REVOKE ALL PRIVILEGES ON DATABASE postgres FROM adminlevel1;

-- Memberikan hak akses koneksi ke database
GRANT CONNECT ON DATABASE postgres TO adminlevel1;

-- Memberikan hak akses SELECT dan INSERT pada semua tabel yang ada
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA public TO adminlevel1;
-- Mencabut hak akses tabel dari pengguna REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM adminlevel1;

-- Menghapus pengguna dengan perintah DROP USER
DROP USER username;

-- Menghapus pengguna dengan perintah DROP ROLE
DROP ROLE username;

