CREATE DATABASE toko_online;

USE toko_online;

CREATE TABLE barang(
	id_barang int PRIMARY KEY AUTO_INCREMENT,
    nama_barang varchar(100) NOT NULL,
    harga varchar(100) NOT NULL,
    jml_stok varchar(100) NOT NULL    
)ENGINE=INNODB;

CREATE TABLE customer(
	id_customer int PRIMARY KEY AUTO_INCREMENT,
    nama varchar(100) NOT NULL,
    alamat varchar(100) NOT NULL,
    no_telp varchar(16) NOT NULL    
)ENGINE=INNODB;

CREATE TABLE pembelian(
	id_beli int PRIMARY KEY AUTO_INCREMENT,
    tgl_beli varchar(25) NOT NULL,
    id_barang int,
    id_customer int,
    CONSTRAINT fk_id_barang FOREIGN KEY (id_barang) REFERENCES barang(id_barang),
    CONSTRAINT fk_id_customer FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
)ENGINE=INNODB;

CREATE TABLE rekap_penjualan(
	id_rekap int PRIMARY KEY AUTO_INCREMENT,
    tgl_rekap varchar(25) NOT NULL,
    id_beli int,
    CONSTRAINT fk_id_beli FOREIGN KEY (id_beli) REFERENCES pembelian(id_beli)
)ENGINE=INNODB;

CREATE TABLE pegawai(
	id_pegawai int PRIMARY KEY AUTO_INCREMENT,
    nama varchar(100) NOT NULL,
    alamat varchar(100) NOT NULL,
    no_telp varchar(25) NOT NULL,
    id_rekap int,
    CONSTRAINT fk_id_rekap FOREIGN KEY (id_rekap) REFERENCES rekap_penjualan(id_rekap)
)ENGINE=INNODB;