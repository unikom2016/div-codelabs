Basis Data
- Kumpulan entitas
- Serta memiliki relasi tiap entitas

Model Data
- E-R (Model E-R (ERD / Algoritma di Basis Data))
- Normalisasi

Definisi:
- Entitas: (Objek, serta Aktivitas)
E.g Objek: Buku, Mahasiswa, Petugas
E.g Aktivitas / Pekerjaan suatu kasus: Peminjaman, Pengembalian

Menulis ERD, selalu diwwakili hanya (Primary Key, Super Key, Candidate Key)
- Foreign Key, id dari entitas A yang ada di entitas B (1 to Many),
    data tipenya harus sama dengan sumbernya 
    CREATE TABLE rincian_penulis(
        id_rincian int,
        
        CONSTRAINT fk_id_buku FOREIGN KEY (id_buku) REFERENCES buku(id_buku),
        CONSTRAINT fk_id_penulis FOREIGN KEY (id_penulis) REFERENCES penulis(id_penulis)
    );


Bentuk Umum relasi
1. 1 to 1
2. Many to 1 or 1 to Many
3. Many to Many


ERD to Model Relational
- Seperti Tabel, mewakili satu entitas / objek

DBMS
- SQL
- PostgreSQL
- ORACLE

Secara Umum
- DDL (Data Definition Language - Membuat), membuat suatu objek
- DML (Data Manipulation Language - Nampilang, ngubah), select, update, insert
- DCL (Data C...)
- TRIGGER, bisa lebih otomatis, 


Mari membuat database, dan table XD
- ENUM, tipe data untuk yang ada batasannya atau sudah diketahui e.g: "Jenis Kelamin: Pria, Wanita"

Reverse Engineering (Method)
- Code to Design