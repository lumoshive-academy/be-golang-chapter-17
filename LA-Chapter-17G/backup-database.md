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