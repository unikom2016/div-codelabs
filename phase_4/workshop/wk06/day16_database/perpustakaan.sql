CREATE DATABASE perpustakaan;

USE perpustakaan;

CREATE TABLE penulis(
	id_penulis varchar(8) PRIMARY KEY,
    nama varchar(15) not null
)ENGINE=INNODB;

CREATE TABLE buku(
	id_buku varchar(8) PRIMARY KEY,
    nama_buku varchar(15) NOT null
)ENGINE=INNODB;

CREATE TABLE detailpenulis(
    id_detail_penulis int PRIMARY KEY AUTO_INCREMENT,
    id_penulis varchar(8),
    id_buku varchar(8),
    CONSTRAINT fk_id_penulis FOREIGN KEY detailpenulis(id_penulis) REFERENCES penulis(id_penulis),
    CONSTRAINT fk_id_buku FOREIGN KEY detailpenulis(id_buku) REFERENCES buku(id_buku)  
)ENGINE=INNODB;

/* Change Field / Column */

-- Add new column
ALTER TABLE penulis ADD COLUMN alamat varchar(31);
ALTER TABLE buku ADD COLUMN kategori varchar(20);

-- Drop column
ALTER TABLE buku DROP COLUMN kategori;

-- Rename TABLE
ALTER TABLE detailpenulis RENAME detailbuku;

-- FK
ALTER TABLE detailbuku DROP FOREIGN KEY fk_id_buku; -- jadi, harus hapus FK
ALTER TABLE detailbuku DROP FOREIGN KEY fk_id_penulis; -- jadi, harus hapus FK

-- Remove PRIMARY KEY
ALTER TABLE buku DROP PRIMARY KEY;
ALTER TABLE penulis DROP PRIMARY KEY;

ALTER TABLE detailbuku CHANGE id_detail_penulis id_detail_penulis int NOT NULL; -- This first, then above
ALTER TABLE detailbuku DROP PRIMARY KEY;

ALTER TABLE detail_nilai DROP PRIMARY KEY; -- can't
ALTER TABLE detail_nilai CHANGE id_nilai id_nilai int NOT NULL; -- This first, then above

-- DROP DATABASE
DROP DATABASE perpustakaan;