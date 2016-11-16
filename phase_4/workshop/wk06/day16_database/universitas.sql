CREATE DATABASE universitas;

USE universitas;

CREATE TABLE mahasiswa(
	nim varchar(7) PRIMARY KEY,
    nama varchar(20) not null,
    jeniskelamin enum("Pria", "Wanita")
)ENGINE=INNODB;

SHOW TABLES;

CREATE TABLE mata_kuliah(
	id_matkul varchar(7) PRIMARY KEY,
    nama_matkul varchar(26) NOT null
)ENGINE=INNODB;

CREATE TABLE detail_nilai(
    id_nilai int PRIMARY KEY AUTO_INCREMENT,
    nim varchar(7),
    id_matkul varchar(7),
    CONSTRAINT fk_nim FOREIGN KEY detail_nilai(nim) REFERENCES mahasiswa(nim),
    CONSTRAINT fk_idmatkul FOREIGN KEY detail_nilai(id_matkul) REFERENCES mata_kuliah(id_matkul)  
)ENGINE=INNODB;


/* Change Field / Column */
ALTER TABLE mahasiswa CHANGE jeniskelamin jk enum("Pria", "Wanita") NOT NULL;

-- DESC mahasiswa;

-- Add new column
ALTER TABLE mahasiswa ADD COLUMN tanggal_lahir DATE AFTER nama;

-- Delete column
ALTER TABLE mahasiswa DROP COLUMN jk;

-- Rename TABLE
ALTER TABLE mahasiswa RENAME mhs;

-- Remove PRIMARY KEY
ALTER TABLE detail_nilai DROP PRIMARY KEY; -- can't
ALTER TABLE detail_nilai CHANGE id_nilai id_nilai int NOT NULL; -- This first, then above


ALTER TABLE mhs DROP PRIMARY KEY; -- ga bisa, karena ada FK
-- ALTER TABLE mhs CHANGE nim nim int NOT NULL; -- This first, then above
ALTER TABLE detail_nilai DROP FOREIGN KEY fk_nim; -- jadi, harus hapus FK

-- DROP TABLE
DROP TABLE mhs;

-- DROP DATABASE
DROP DATABASE universitas;