
Setting environment for using XAMPP for Windows.
rah16@LAPTOP-K21UVVQ6 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 145
Server version: 10.4.18-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use rahmathasibuan;
Database changed
MariaDB [rahmathasibuan]> create table dosen(
    -> nip varchar(12) primary key,
    -> nama_dosen varchar(25));
Query OK, 0 rows affected (18.355 sec)

MariaDB [rahmathasibuan]>
MariaDB [rahmathasibuan]> create table mahasiswa(
    -> nim varchar(9) primary key,
    -> nama_mhs varchar(25),
    -> tgl_lahir date,
    -> alamat varchar(50),
    -> jenis_kelamin enum('laki-laki','perempuan'));
Query OK, 0 rows affected (0.749 sec)

MariaDB [rahmathasibuan]> create table matakuliah(
    -> kode_mk varchar(6) primary key,
    -> nama_mk varchar(20),
    -> sks int(2));
Query OK, 0 rows affected (0.311 sec)

MariaDB [rahmathasibuan]> create table perkuliahan(
    -> nim varchar(9) primary key,
    -> kode_mk varchar(6),
    ->  nip varchar(12),
    -> nilai char(1),
    -> foreign key(nip) references dosen(nip),
    -> foreign key(nim) references mahasiswa(nim),
    -> foreign key(kode_mk) references matakuliah(kode_mk));
Query OK, 0 rows affected (0.428 sec)

MariaDB [rahmathasibuan]> INSERT INTO `dosen` (`nip`, `nama_dosen`) VALUES ('30001', ' Ermanto, M.Kom,'), ('30002', 'Muhammad Najamuddin s,kom'), ('30003', 'andi m.si'), ('30004', 'arjun s.pd'), ('30005', 'marta s.h');
Query OK, 5 rows affected (0.046 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [rahmathasibuan]> INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `tgl_lahir`, `alamat`, `jenis_kelamin`) VALUES ('11111', 'rahmat hasibuan', '2020-08-08', 'bekasi', 'laki-laki'), ('22222', 'andi', '2000-09-12', 'medan', 'laki-laki'), ('33333', 'tania', '1999-08-17', 'jakarta', 'perempuan'), ('44444', 'nadia', '1990-02-16', 'tangerang', 'perempuan'), ('55555', 'candra', '1998-03-15', 'depok', 'laki-laki');
Query OK, 5 rows affected (0.041 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [rahmathasibuan]> INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES ('upb001', 'sistem basis data', '3'), ('upb002', 'bahasa pemograman', '2'), ('upb003', 'komputer & masyarakat', '3'), ('upb004', 'bisnis elektronik', '2'), ('upb005', 'konsep sistem informasi', '3');
Query OK, 5 rows affected, 2 warnings (1.753 sec)
Records: 5  Duplicates: 0  Warnings: 2

MariaDB [rahmathasibuan]> INSERT INTO `perkuliahan` (`nim`, `kode_mk`, `nip`, `nilai`) VALUES ('11111', 'upb001', '30001', '9'), ('22222', 'upb002', '30002', '9'), ('33333', 'upb003', '30003', '8'), ('44444', 'upb004', '30004', '9'), ('55555', 'upb005', '30005', '9');
Query OK, 5 rows affected (0.058 sec)
Records: 5  Duplicates: 0  Warnings: 0