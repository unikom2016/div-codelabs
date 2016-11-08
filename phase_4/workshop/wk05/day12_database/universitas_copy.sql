CREATE DATABASE universitas;

CREATE TABLE dosen(
	kode_dos int PRIMARY KEY AUTO_INCREMENT,
    nm_dos varchar(50) NOT NULL,
    alamat varchar(100)
)ENGINE=INNODB;

CREATE TABLE jurusan(
	kode_jur int PRIMARY KEY AUTO_INCREMENT,
    kode_dos int, # FOREIGN KEY
    nm_jur varchar(50) NOT NULL,
    # Create new FOREIGN KEY
    CONSTRAINT fk_kode_dos
    FOREIGN KEY jurusan(kode_dos) 
    REFERENCES dosen(kode_dos)
    # End of FOREIGN KEY
)ENGINE=INNODB;