# Tutorial Backup Database PostgreSQL Secara Berkala Menggunakan Cron

## Prasyarat
- Sistem operasi Linux/Unix
- PostgreSQL telah terpasang
- Akses ke terminal/shell
- Pengguna harus memiliki hak akses untuk mengatur cron jobs

## Langkah-Langkah

### 1. Buat Skrip Backup
Buat skrip shell sederhana untuk melakukan backup database PostgreSQL. Misalnya, buat file bernama `backup_db.sh` di direktori `/home/username/backup/`:

```bash
#!/bin/bash

# Direktori tempat penyimpanan backup
BACKUP_DIR="/home/username/backup"

# Nama file backup dengan format timestamp
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql"

# Nama database yang akan di-backup
DB_NAME="nama_database"

# Backup menggunakan pg_dump
pg_dump -U postgres $DB_NAME > $BACKUP_FILE

# Jika ingin kompresi menggunakan gzip
# pg_dump -U postgres $DB_NAME | gzip > "$BACKUP_FILE.gz"

# Menampilkan pesan sukses
echo "Backup database $DB_NAME selesai dan disimpan di $BACKUP_FILE"

# Berikan izin eksekusi pada skrip tersebut:
chmod +x /home/username/backup/backup_db.sh

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
psql --host=localhost --port=5432 --username=postgres --dbname=postgres --file=/path/to/your/backup/backup_1.sql
```

# Tutorial Backup dan restore Database PostgreSQL Secara manual

### 1. Jalankan perintah backup dengan pg_dump
```bash
pg_dump --host=localhost --port=5432 --dbname=postgres --username=postgres --format=plain --file=C:\Users\LumoshiveAcademy\Documents\backup_1.sql
```


### 2. Jalankan perintah restore dengan psql
```bash
psql --host=localhost --port=5432 --username=postgres --dbname=postgres --file=C:\Users\LumoshiveAcademy\Documents\backup_1.sql
```