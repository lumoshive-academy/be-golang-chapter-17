# Tutorial Backup Database PostgreSQL Secara Berkala Menggunakan Cron

## Prasyarat
- Sistem operasi Linux/Unix
- PostgreSQL telah terpasang
- Akses ke terminal/shell
- Pengguna harus memiliki hak akses untuk mengatur cron jobs

## Langkah-Langkah

### 1. Buat Skrip Backup
Buat skrip shell sederhana untuk melakukan backup database PostgreSQL.

```bash
pg_dump --host=localhost --port=5432 --dbname=postgres --username=postgres --format=plain --file=C:\Users\LumoshiveAcademy\Documents\backup_1.sql

```

### 2. Uji Skrip Backup
Jalankan skrip untuk memastikan backup berjalan dengan benar:
``` bash
./home/username/backup/backup_db.sh

```
Periksa direktori backup untuk memastikan file backup telah dibuat.

### 3. Atur Cron Job
Untuk melakukan backup secara berkala, tambahkan cron job dengan perintah crontab -e. Tambahkan baris berikut di file crontab:
``` bash
# Backup setiap hari pada jam 2 pagi
0 2 * * * /home/username/backup/backup_db.sh >> /home/username/backup/backup.log 2>&1

```
### 4. Verifikasi Cron Job
Pastikan cron job berjalan dengan memeriksa file log backup.log:

``` bash
cat /home/username/backup/backup.log

```

### 5. Membersihkan Backup Lama (Opsional)
Anda bisa menambahkan skrip tambahan untuk menghapus backup yang lebih tua dari 7 hari:
Tambahkan baris berikut di dalam skrip backup:
``` bash
# Hapus backup yang lebih tua dari 7 hari
find $BACKUP_DIR -type f -name "*.sql" -mtime +7 -exec rm {} \;

```

### 6. Restore Database
Untuk melakukan restore database dari file backup, Anda dapat menggunakan perintah psql. Misalnya, jika Anda ingin merestore database dari file backup_1.sql, gunakan perintah berikut:

``` bash
psql --host=localhost --port=5432 --username=postgres --dbname=postgres --file=C:\Users\LumoshiveAcademy\Documents\backup_1.sql
```