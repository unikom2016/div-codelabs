ALTER
- Change field / column
- Add new column, sebelum atau sesudah


1. Buat database perpustakaan;

2. buat table penulis atribut
- id_penulis varchar(8) PK
- nama varchar(15) not null

3. buat table buku atribut
- id_buku varchar(8) PK
- nama_buku varchar(15) not null

4. buat tabel detailpenulis atribut
-id detail penulis int pk auto increment
- id_buku varchar(8) FK
- id_penulis varchar(8) FK

5. tambah field alamat varchar(31) di penulis;

6. tambah field kategori buku varchar(20) di buku;

7. hapus klom kategori buku

8. ganti nama detail penulis dengan detail buku

9. hapus semua foreign key

10. hapus semua primary key

11. hapus database perpustakaan

dikumpulkan file sql nya
