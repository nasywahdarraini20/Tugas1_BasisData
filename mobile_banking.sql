CREATE TABLE `user` (
  `id_user` varchar(255) PRIMARY KEY,
  `nama` varchar(255),
  `jenis_bank` varchar(255),
  `no_rek` integer
);

CREATE TABLE `transfer` (
  `id_transfer` integer PRIMARY KEY,
  `id_user` varchar(255),
  `no_rek_tujuan` integer,
  `saldo` integer,
  `pin` integer
);

CREATE TABLE `transaksi` (
  `id_transaksi` integer PRIMARY KEY,
  `pembayaran` varchar(255),
  `admin_bank` integer,
  `total_bayar` integer
);

ALTER TABLE `transfer` ADD FOREIGN KEY (`id_transfer`) REFERENCES `transaksi` (`id_transaksi`);

ALTER TABLE `transfer` ADD FOREIGN KEY (`id_transfer`) REFERENCES `user` (`id_user`);
