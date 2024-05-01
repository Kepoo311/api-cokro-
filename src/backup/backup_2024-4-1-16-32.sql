/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pembayaran
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_pembelian` date NOT NULL,
  `tunai` decimal(10, 0) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `faktur` varchar(255) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 76 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: product
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_brg` varchar(255) DEFAULT NULL,
  `nama_brg` varchar(255) DEFAULT NULL,
  `stok_awal` int(11) DEFAULT NULL,
  `masuk` int(11) DEFAULT 0,
  `keluar` int(11) DEFAULT 0,
  `stok_akhir` int(11) DEFAULT 0,
  `suplier` varchar(255) NOT NULL DEFAULT '-',
  `beli` decimal(10, 2) DEFAULT NULL,
  `jual` decimal(10, 2) DEFAULT NULL,
  `mark_up` decimal(10, 2) DEFAULT NULL,
  `pendapatan` decimal(10, 2) DEFAULT NULL,
  `laba` decimal(10, 2) DEFAULT NULL,
  `harta` decimal(10, 2) DEFAULT NULL,
  `persentase` varchar(50) DEFAULT NULL,
  `cl` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 809 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: staff
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `md` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `mbm` int(11) NOT NULL,
  `mbk` int(11) NOT NULL,
  `mk` int(11) NOT NULL,
  `lbm` int(11) NOT NULL,
  `lbk` int(11) NOT NULL,
  `lh` int(11) NOT NULL,
  `lp` int(11) NOT NULL,
  `llss` int(11) NOT NULL,
  `cl` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: tablename
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tablename` (
  `id` int(11) NOT NULL,
  `kode_brg` varchar(255) DEFAULT NULL,
  `nama_brg` varchar(512) DEFAULT NULL,
  `stok_akhir` int(11) DEFAULT NULL,
  `beli` decimal(10, 2) DEFAULT NULL,
  `jual` decimal(10, 2) DEFAULT NULL,
  `mark_up` decimal(10, 2) DEFAULT NULL,
  `harta` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: transaction
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_faktur` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_pelunasan` datetime NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` decimal(10, 2) NOT NULL,
  `subtotal` decimal(10, 2) NOT NULL,
  `mark_up` decimal(10, 2) NOT NULL,
  `laba` decimal(10, 2) NOT NULL,
  `payment` varchar(100) NOT NULL DEFAULT 'tunai',
  `namaPelanggan` varchar(255) NOT NULL DEFAULT '-',
  `Tunai` decimal(10, 0) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT '-',
  `retur` int(11) NOT NULL,
  `debug` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1136 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: transaction_in
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `transaction_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `no_faktur` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `suplier` varchar(255) NOT NULL,
  `payment` varchar(40) NOT NULL,
  `harga` decimal(10, 0) NOT NULL,
  `subtotal` decimal(10, 0) NOT NULL,
  `retur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pembayaran
# ------------------------------------------------------------

INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (1, '2023-11-10', 9000, '2023-11-11', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (2, '2023-11-10', 2000, '2023-11-11', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (3, '2023-11-10', 120000, '2023-11-11', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (4, '2023-11-11', 10000, '2023-11-11', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (5, '2023-11-11', 3348, '2023-11-11', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (6, '2023-11-12', 10000, '2023-11-12', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (7, '2023-11-12', 2000, '2023-11-12', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (8, '2023-11-12', 10000, '2023-11-12', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (9, '2023-11-12', 50000, '2023-11-12', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (10, '2023-11-12', 2000, '2023-11-12', '4', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (11, '2023-11-12', 5000, '2023-11-12', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (12, '2023-11-12', 25500, '2023-11-12', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (13, '2023-11-12', 20000, '2023-11-12', '2', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (14, '2023-11-12', 30000, '2023-11-12', '2', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (15, '2023-11-12', 1500, '2023-11-12', '5', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (16, '2023-11-10', 25000, '2023-11-13', '7', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (17, '2023-11-13', 121000, '2023-11-13', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (18, '2023-11-13', 200, '2023-11-13', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (19, '2023-11-12', 120000, '2023-11-14', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (20, '2023-11-14', 10000, '2023-11-14', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (21, '2023-11-14', 27000, '2023-11-14', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (22, '2023-11-14', 1, '2023-11-14', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (23, '2023-11-14', 90, '2023-11-14', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (24, '2023-11-12', 13000, '2023-11-16', '4', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (25, '2023-11-16', 20000, '2023-11-16', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (26, '2023-11-16', 1000, '2023-11-16', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (27, '2023-11-16', 2, '2023-11-16', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (28, '2023-11-16', 1498, '2023-11-16', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (29, '2023-11-16', 1000, '2023-11-16', '4', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (30, '2023-11-16', 1000, '2023-11-16', '5', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (31, '2023-11-16', 1000, '2023-11-16', '6', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (32, '2023-11-16', 100, '2023-11-16', '7', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (33, '2023-11-16', 1000, '2023-11-16', '8', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (34, '2023-11-16', 1000, '2023-11-16', '9', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (35, '2023-11-16', 1000, '2023-11-16', '10', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (36, '2023-11-16', 1000, '2023-11-16', '11', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (37, '2023-11-16', 500, '2023-11-16', '12', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (38, '2023-11-16', 1000, '2023-11-16', '13', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (39, '2023-11-16', 500, '2023-11-16', '14', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    40,
    '2023-11-16',
    40000,
    '2023-11-16',
    '15',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (41, '2023-11-16', 3000, '2023-11-16', '16', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (42, '2023-11-17', 1000, '2023-11-17', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (43, '2023-11-17', 0, '2023-11-17', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (44, '2023-11-17', 14000, '2023-11-18', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (45, '2023-11-30', 1000, '2023-11-30', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (46, '2023-11-06', 67000, '2023-12-01', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (47, '2023-11-06', 500, '2023-12-01', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (48, '2023-11-06', 47000, '2023-12-01', '4', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (49, '2023-11-06', 14500, '2023-12-01', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (50, '2023-11-06', 6500, '2023-12-01', '6', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    51,
    '2023-12-01',
    140000,
    '2023-12-01',
    '1',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (52, '2023-12-26', 1500, '2023-12-26', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    53,
    '2023-12-26',
    1500000,
    '2023-12-26',
    '2',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (54, '2023-12-28', 15756, '2023-12-28', '1', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (55, '2023-12-28', 5000, '2023-12-28', '3', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (56, '2023-12-28', 7120, '2023-12-28', '3', 'hutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (57, '2024-01-20', 2000, '2024-01-20', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (58, '2024-01-20', 2000, '2024-01-20', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (59, '2024-01-20', 4000, '2024-01-20', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (60, '2024-01-20', 2000, '2024-01-20', '4', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (61, '2024-01-21', 2000, '2024-01-21', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (62, '2024-01-21', 2000, '2024-01-21', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (63, '2024-01-22', 2000, '2024-01-22', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (64, '2024-01-22', 16000, '2024-01-22', '2', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (65, '2024-01-22', 2000, '2024-01-22', '3', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    66,
    '2024-01-22',
    200000,
    '2024-01-22',
    '4',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (67, '2024-01-22', 10000, '2024-01-22', '5', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (68, '2024-01-22', 10000, '2024-01-22', '6', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (69, '2024-01-22', 12000, '2024-01-22', '7', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (70, '2024-01-22', 2000, '2024-01-22', '8', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (71, '2024-01-23', 10000, '2024-01-23', '1', 'piutang');
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    72,
    '2024-01-24',
    110000,
    '2024-01-24',
    '1',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    73,
    '2024-04-30',
    90000,
    '2024-05-01',
    'INV-20240430-001',
    'piutang'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    74,
    '2024-04-30',
    90000,
    '2024-05-01',
    'INV-20240430-001',
    'undefined'
  );
INSERT INTO
  `pembayaran` (
    `id`,
    `tgl_pembelian`,
    `tunai`,
    `tgl_pembayaran`,
    `faktur`,
    `jenis`
  )
VALUES
  (
    75,
    '0000-00-00',
    2022,
    '2022-05-15',
    'Produk ABC',
    '10'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: product
# ------------------------------------------------------------

INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    1,
    '8992727004541',
    'LAURIER FLEXI PROTECT LONG WING 14',
    3,
    5,
    1002,
    -994,
    '-',
    12401.00,
    13501.00,
    1100.00,
    13528002.00,
    1102200.00,
    -12326594.00,
    '8.87',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    2,
    '8992727004480',
    'LAURIER MAXI RCG 10',
    61,
    5,
    30,
    36,
    '-',
    675.00,
    1000.00,
    325.00,
    30000.00,
    9750.00,
    24300.00,
    '48.15',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    3,
    '8851818936805',
    'LAURIER S.CARE RLX NIGHT 30CM 8',
    3,
    2,
    2,
    3,
    '-',
    8700.00,
    9502.00,
    802.00,
    19004.00,
    1604.00,
    26100.00,
    '9.22',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    4,
    '8992727002714',
    'LAURIER SC SUPER MAXI 30 ',
    2,
    2,
    1,
    3,
    '-',
    14875.00,
    16500.00,
    1625.00,
    16500.00,
    1625.00,
    44625.00,
    '10.92%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    5,
    '8851818537309',
    'LAURIER SUPER SLIM GUARD 25CM 16\'S',
    1,
    0,
    0,
    1,
    '-',
    26500.00,
    28800.00,
    2300.00,
    0.00,
    0.00,
    26500.00,
    '8.68',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    6,
    '6908594414019',
    'LAURIER SUPER SLIM GUARD DAY 10\'S',
    3,
    1,
    3,
    1,
    '-',
    14400.00,
    15500.00,
    1100.00,
    46500.00,
    3300.00,
    14400.00,
    '7.64%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    7,
    '8992759244069',
    'JOLLY POTONG 2 1000GR',
    2,
    0,
    0,
    2,
    '-',
    46100.00,
    49000.00,
    2900.00,
    0.00,
    0.00,
    92200.00,
    '6.29%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    8,
    '8851019000343',
    'POCKY ALMOND 36 GR',
    6,
    0,
    0,
    6,
    '-',
    7336.00,
    8500.00,
    1164.00,
    0.00,
    0.00,
    44016.00,
    '15.87%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    9,
    '8851019210193',
    'POCKY CHOCO BANANA 42GR',
    2,
    14,
    3,
    13,
    '-',
    8614.00,
    10000.00,
    1386.00,
    30000.00,
    4158.00,
    111982.00,
    '16.09',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    10,
    '8990044000062',
    'POCKY CHOCOLATE HALF STICK 22GR',
    4,
    0,
    2,
    2,
    '-',
    3330.00,
    4500.00,
    1170.00,
    9000.00,
    2340.00,
    6660.00,
    '35.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    11,
    '8990044000116',
    'POCKY CHO SINGLE 12 GR',
    90,
    0,
    6,
    84,
    '-',
    1923.00,
    2500.00,
    577.00,
    15000.00,
    3462.00,
    161532.00,
    '30.01%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    12,
    '8990044000086',
    'POCKY COOKIES &amp; CREAM 20 GR ',
    16,
    0,
    1,
    15,
    '-',
    3330.00,
    5000.00,
    1670.00,
    5000.00,
    1670.00,
    49950.00,
    '50.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    13,
    '8990044000024',
    'POCKY COOKIES &amp; CREAM 40 GR',
    5,
    0,
    0,
    5,
    '-',
    6609.00,
    8000.00,
    1391.00,
    0.00,
    0.00,
    33045.00,
    '21.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    14,
    '8990044000031',
    'POCKY DOUBLE CHOCO STICK 47GR',
    10,
    0,
    1,
    9,
    '-',
    6608.00,
    8000.00,
    1392.00,
    8000.00,
    1392.00,
    59472.00,
    '21.07%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    15,
    '8990044000017',
    'POCKY STRAWBERRY STICK 45GR',
    7,
    0,
    3,
    4,
    '-',
    6608.00,
    8000.00,
    1392.00,
    24000.00,
    4176.00,
    26432.00,
    '21.07%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    16,
    '8990044000123',
    'POCKY STRAW SINGLE 12 GR',
    55,
    0,
    3,
    52,
    '-',
    1924.00,
    2500.00,
    576.00,
    7500.00,
    1728.00,
    100048.00,
    '29.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    17,
    '8851019210223',
    'POCKY macha 33 gr',
    17,
    0,
    0,
    17,
    '-',
    6219.00,
    7500.00,
    1281.00,
    0.00,
    0.00,
    105723.00,
    '20.60%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    18,
    '8996196226800',
    'Cloud 9 Crucy ',
    1,
    0,
    0,
    1,
    '-',
    4400.00,
    5000.00,
    600.00,
    0.00,
    0.00,
    4400.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    19,
    '8997025914332',
    'HATARI CREAM CRACKERS 260 G',
    2,
    0,
    1,
    1,
    '-',
    7600.00,
    8200.00,
    600.00,
    8200.00,
    600.00,
    7600.00,
    '7.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    20,
    '8997025911706',
    'HATARI SEE HONG PUFF MARGARIN 245G',
    1,
    0,
    1,
    0,
    '-',
    7100.00,
    8200.00,
    1100.00,
    8200.00,
    1100.00,
    0.00,
    '15.49%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    21,
    '8997025914059',
    'HATARI SEE HONG PUFF PAK 260G',
    1,
    0,
    0,
    1,
    '-',
    7000.00,
    8000.00,
    1000.00,
    0.00,
    0.00,
    7000.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    22,
    '8997025911058',
    'HATARI SEE HONG PUF MALKIST KELAPA 260G',
    1,
    0,
    0,
    1,
    '-',
    7000.00,
    7700.00,
    700.00,
    0.00,
    0.00,
    7000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    23,
    '8996001301142',
    'ROMA KELAPA BISCUIT  300 GR',
    1,
    0,
    1,
    0,
    '-',
    7850.00,
    8500.00,
    650.00,
    8500.00,
    650.00,
    0.00,
    '8.28%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    24,
    '8996001355046',
    'ROMA SUPERSTAR CKLT 16G',
    12,
    0,
    9,
    3,
    '-',
    867.00,
    1000.00,
    133.00,
    9000.00,
    1197.00,
    2601.00,
    '15.34%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    25,
    '8991001243195',
    'Delfi Bar Bar',
    21,
    0,
    4,
    17,
    '-',
    2275.00,
    3000.00,
    725.00,
    12000.00,
    2900.00,
    38675.00,
    '31.87%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    26,
    '8996001375372',
    'CHOKI CHOKI CHOCOCASHEW  11G',
    84,
    0,
    15,
    69,
    '-',
    848.00,
    1000.00,
    152.00,
    15000.00,
    2280.00,
    58512.00,
    '17.92%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    27,
    '8992761145033',
    'FANTA STRAWBERRY PET 250 ML',
    35,
    0,
    0,
    35,
    '-',
    2750.00,
    3500.00,
    750.00,
    0.00,
    0.00,
    96250.00,
    '27.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    28,
    '89927600000000',
    'FANTA STRAWBERRY PET 390 ML',
    31,
    0,
    1,
    30,
    '-',
    4375.00,
    5500.00,
    1125.00,
    5500.00,
    1125.00,
    131250.00,
    '25.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    29,
    '8992761111533',
    'CAN 250 ML PET SPRITE',
    56,
    0,
    0,
    56,
    '-',
    4571.00,
    5500.00,
    929.00,
    0.00,
    0.00,
    255976.00,
    '20.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    30,
    '8992761145026',
    'Sprite 250 ML ',
    18,
    0,
    3,
    15,
    '-',
    2750.00,
    3500.00,
    750.00,
    10500.00,
    2250.00,
    41250.00,
    '27.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    31,
    '8992761145019',
    'CAN 250 ML PET COCA COLA',
    18,
    0,
    5,
    13,
    '-',
    2750.00,
    3000.00,
    250.00,
    15000.00,
    1250.00,
    35750.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    32,
    '8992761002039',
    'CAN 390 ML PET COCA COLA',
    24,
    0,
    1,
    23,
    '-',
    4375.00,
    5500.00,
    1125.00,
    5500.00,
    1125.00,
    100625.00,
    '25.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    33,
    '8991001242013',
    'DELFI TOP CHOCOLATE 9G',
    37,
    0,
    22,
    15,
    '-',
    887.00,
    1000.00,
    113.00,
    22000.00,
    2486.00,
    13305.00,
    '12.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    34,
    '8991001243034',
    'DELFI TOP TRIPLE CHOC 9G',
    64,
    0,
    3,
    61,
    '-',
    904.00,
    1000.00,
    96.00,
    3000.00,
    288.00,
    55144.00,
    '10.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    35,
    '8991001242570',
    'DELFI TOP straw CHOC 9G',
    56,
    0,
    1,
    55,
    '-',
    904.00,
    1000.00,
    96.00,
    1000.00,
    96.00,
    49720.00,
    '10.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    36,
    '8991102380706',
    'MIO FULLO CHOCOLAT 9G',
    80,
    0,
    57,
    23,
    '-',
    463.00,
    500.00,
    37.00,
    28500.00,
    2109.00,
    10649.00,
    '7.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    37,
    '8992775311608',
    'GERY CHOCOLATOS 8.5G',
    44,
    96,
    48,
    92,
    '-',
    400.00,
    500.00,
    100.00,
    24000.00,
    4800.00,
    36800.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    38,
    '8996001354001',
    'KALPA WAFER COKLAT 24 GRM+A85',
    13,
    0,
    4,
    9,
    '-',
    1825.00,
    2000.00,
    175.00,
    8000.00,
    700.00,
    16425.00,
    '9.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    39,
    '8996001354124',
    'BENG-BENG  20G',
    25,
    0,
    25,
    0,
    '-',
    1739.00,
    2000.00,
    261.00,
    50000.00,
    6525.00,
    0.00,
    '15.01%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    40,
    '8996001355756',
    'BENG-BENG MAXX 32',
    49,
    0,
    10,
    39,
    '-',
    3475.00,
    4000.00,
    525.00,
    40000.00,
    5250.00,
    135525.00,
    '15.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    41,
    '\'95502485',
    'KIT KAT 17 gr',
    39,
    0,
    0,
    39,
    '-',
    2590.00,
    4000.00,
    1410.00,
    0.00,
    0.00,
    101010.00,
    '54.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    42,
    '7622300335809',
    '0REO SFTCK 12X16',
    15,
    0,
    9,
    6,
    '-',
    2192.00,
    2800.00,
    608.00,
    25200.00,
    5472.00,
    13152.00,
    '27.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    43,
    '8990044000048',
    'POCKY MILK MATCHA 33G',
    12,
    0,
    1,
    11,
    '-',
    6608.00,
    8000.00,
    1392.00,
    8000.00,
    1392.00,
    72688.00,
    '21.07%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    44,
    '8993163402137',
    'MONTISS 1000',
    0,
    0,
    0,
    0,
    '-',
    33000.00,
    35000.00,
    2000.00,
    0.00,
    0.00,
    0.00,
    '6.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    45,
    '8992959117590',
    'SOFTEX DAUN SIRIH WINGS PADS 20',
    1,
    0,
    0,
    1,
    '-',
    15050.00,
    16000.00,
    950.00,
    0.00,
    0.00,
    15050.00,
    '6.31%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    46,
    '8992761002015',
    'COCA COLA 390 ML',
    36,
    0,
    0,
    36,
    '-',
    4375.00,
    5500.00,
    1125.00,
    0.00,
    0.00,
    157500.00,
    '25.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    47,
    '8995154104013',
    'RAISA FACIAL TISSUE 200 S BANDED',
    2,
    0,
    1,
    1,
    '-',
    19900.00,
    22000.00,
    2100.00,
    22000.00,
    2100.00,
    19900.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    48,
    '8992931005235',
    'TESSA FACIAL TISSUE 2X200\'S (B1G1)',
    0,
    0,
    0,
    0,
    '-',
    19000.00,
    20500.00,
    1500.00,
    0.00,
    0.00,
    0.00,
    '7.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    49,
    '8993053121407',
    'PASEO SMART ',
    0,
    0,
    0,
    0,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    50,
    '8992745540823',
    'MITU BABY SC WIPES GANTI POPOK BLUE 50S+50S',
    5,
    0,
    0,
    5,
    '-',
    21900.00,
    23500.00,
    1600.00,
    0.00,
    0.00,
    109500.00,
    '7.31%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    51,
    '8992745550525',
    'MITU BABY WIPES SOFT CARE BLUE 40\'S BOGOF',
    2,
    0,
    1,
    1,
    '-',
    14750.00,
    16500.00,
    1750.00,
    16500.00,
    1750.00,
    14750.00,
    '11.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    52,
    '8992745550396',
    'MITU SC WIPES GANTI POPOK WHITE 50+50\'S',
    2,
    0,
    0,
    2,
    '-',
    21000.00,
    22500.00,
    1500.00,
    0.00,
    0.00,
    42000.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    53,
    '\'8992745550532',
    'MITU BABY',
    4,
    0,
    0,
    4,
    '-',
    15500.00,
    17000.00,
    1500.00,
    0.00,
    0.00,
    62000.00,
    '9.68%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    54,
    '8992745550396',
    'MITU LILY VANILA BOY',
    2,
    0,
    0,
    2,
    '-',
    21000.00,
    22500.00,
    1500.00,
    0.00,
    0.00,
    42000.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    55,
    '8992745550518',
    'MITU BLUE MING CERRY',
    3,
    0,
    0,
    3,
    '-',
    14750.00,
    16000.00,
    1250.00,
    0.00,
    0.00,
    44250.00,
    '8.47%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    56,
    '8992696404441',
    'BEAR BRAND STM 189 ML',
    23,
    0,
    10,
    13,
    '-',
    8830.00,
    10000.00,
    1170.00,
    100000.00,
    11700.00,
    114790.00,
    '13.25%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    57,
    '8995227500230',
    'LARUTAN CAP KAKI3 ANGGUR 320 ML',
    0,
    0,
    0,
    0,
    '-',
    5676.00,
    6200.00,
    524.00,
    0.00,
    0.00,
    0.00,
    '9.23%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    58,
    '8995227500247',
    'LARUTAN CAP KAKI 3 JAMBU 320 ML',
    0,
    0,
    0,
    0,
    '-',
    6228.00,
    7000.00,
    772.00,
    0.00,
    0.00,
    0.00,
    '12.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    59,
    '8995227500308',
    'LARUTAN CAP KAKI 3 JERUK 320ML',
    0,
    0,
    0,
    0,
    '-',
    5814.00,
    6300.00,
    486.00,
    0.00,
    0.00,
    0.00,
    '8.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    60,
    '8995227500124',
    'LARUTAN CAP KAKI 3 PET 200ML',
    3,
    0,
    0,
    3,
    '-',
    3323.00,
    4000.00,
    677.00,
    0.00,
    0.00,
    9969.00,
    '20.37%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    61,
    '8995227500254',
    'LARUTAN CAP KAKI 3 STRAW 320ML',
    3,
    0,
    3,
    0,
    '-',
    5687.00,
    6200.00,
    513.00,
    18600.00,
    1539.00,
    0.00,
    '9.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    62,
    '8992696525399',
    'NESTLE GOODNES KURMA ROYALE',
    24,
    0,
    1,
    23,
    '-',
    8500.00,
    10000.00,
    1500.00,
    10000.00,
    1500.00,
    195500.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    63,
    '8998866201841',
    'GOLDA DOLCE LATTE RTD 200 ML',
    6,
    0,
    3,
    3,
    '-',
    2775.00,
    3500.00,
    725.00,
    10500.00,
    2175.00,
    8325.00,
    '26.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    64,
    '8991002121065',
    'GOOD DAY AVOCADO DELIGHT 250ML',
    24,
    0,
    0,
    24,
    '-',
    4975.00,
    5500.00,
    525.00,
    0.00,
    0.00,
    119400.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    65,
    '8991002121089',
    'GOOD DAY CAPPUCINO BOTOL 250ML',
    1,
    0,
    1,
    0,
    '-',
    4975.00,
    5500.00,
    525.00,
    5500.00,
    525.00,
    0.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    66,
    '8991002121010',
    'GOOD DAY MOCACINO COFFEE 250ML',
    0,
    0,
    1,
    -1,
    '-',
    5025.00,
    5500.00,
    475.00,
    5500.00,
    475.00,
    -5025.00,
    '9.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    67,
    '8991002121003',
    'GOOD DAY TIRAMISU BLISS COFFEE 250 ML',
    0,
    0,
    1,
    -1,
    '-',
    5025.00,
    5500.00,
    475.00,
    5500.00,
    475.00,
    -5025.00,
    '9.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    68,
    '8991002122017',
    'ABC RTD MILK COFFEE 200 ML ',
    7,
    0,
    0,
    7,
    '-',
    2507.00,
    3500.00,
    993.00,
    0.00,
    0.00,
    17549.00,
    '39.61%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    69,
    '8991002125018',
    'KAPAL API WHITE COFFE 200ML',
    11,
    0,
    1,
    10,
    '-',
    4125.00,
    5000.00,
    875.00,
    5000.00,
    875.00,
    41250.00,
    '21.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    70,
    '8992761111519',
    'CAN 250 ML PET COCA COLA',
    78,
    0,
    2,
    76,
    '-',
    4584.00,
    5500.00,
    916.00,
    11000.00,
    1832.00,
    348384.00,
    '19.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    71,
    '8992761111540',
    'CAN 250 ML PET FANTA',
    67,
    0,
    1,
    66,
    '-',
    4560.00,
    5500.00,
    940.00,
    5500.00,
    940.00,
    300960.00,
    '20.61%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    72,
    '8992761111533',
    'CAN 250 ML PET SPRITE',
    56,
    0,
    0,
    56,
    '-',
    4571.00,
    5500.00,
    929.00,
    0.00,
    0.00,
    255976.00,
    '20.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    73,
    '9556001288547',
    'NESCAFE CAPPUCINO RTD CAN 220ML',
    6,
    0,
    2,
    4,
    '-',
    5316.00,
    6500.00,
    1184.00,
    13000.00,
    2368.00,
    21264.00,
    '22.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    74,
    '9556001288561',
    'NESCAFE CARAMEL MACCHIATO 24x220 ML N2 ID',
    33,
    0,
    1,
    32,
    '-',
    5316.00,
    6500.00,
    1184.00,
    6500.00,
    1184.00,
    170112.00,
    '22.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    75,
    '9556001288592',
    'NESCAFE LATTE RTD CAN 220ML',
    2,
    0,
    1,
    1,
    '-',
    5316.00,
    6500.00,
    1184.00,
    6500.00,
    1184.00,
    5316.00,
    '22.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    76,
    '9556001295248',
    'NESCAFE ICE BLACK 220 ML',
    11,
    0,
    1,
    10,
    '-',
    5316.00,
    6500.00,
    1184.00,
    6500.00,
    1184.00,
    53160.00,
    '22.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    77,
    '8996006861986',
    'TEBS Sparkling 300ml',
    0,
    0,
    0,
    0,
    '-',
    3500.00,
    4500.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    78,
    '8997009510017',
    'YOU C 1000 LEMON 140ML',
    28,
    0,
    3,
    25,
    '-',
    6000.00,
    7000.00,
    1000.00,
    21000.00,
    3000.00,
    150000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    79,
    '8997009510055',
    'YOU C 1000 ORANGE 140ML',
    13,
    0,
    2,
    11,
    '-',
    6000.00,
    7000.00,
    1000.00,
    14000.00,
    2000.00,
    66000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    80,
    '8997009510123',
    'YOU C 1000 ORANGE WATER 500 ML',
    22,
    0,
    2,
    20,
    '-',
    8225.00,
    9000.00,
    775.00,
    18000.00,
    1550.00,
    164500.00,
    '9.42%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    81,
    '8997035563544',
    'POCARI SWEAT PET 350ML',
    3,
    0,
    1,
    2,
    '-',
    6316.00,
    7000.00,
    684.00,
    7000.00,
    684.00,
    12632.00,
    '10.83%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    82,
    '8992761164546',
    'NOTRIBOST PET 300 ML',
    13,
    0,
    4,
    9,
    '-',
    5500.00,
    6500.00,
    1000.00,
    26000.00,
    4000.00,
    49500.00,
    '18.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    83,
    '8992761164539',
    'NUTRIBOOST ORANGE 300 ML',
    1,
    0,
    1,
    0,
    '-',
    5700.00,
    6500.00,
    800.00,
    6500.00,
    800.00,
    0.00,
    '14.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    84,
    '8992761166038',
    'MINUTE MAID PULPY ORANGE 300 ML',
    2,
    0,
    1,
    1,
    '-',
    4166.00,
    5000.00,
    834.00,
    5000.00,
    834.00,
    4166.00,
    '20.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    85,
    '8886008101336',
    'AQUA AIR MNM BOTOL 330 ML',
    3,
    0,
    1,
    2,
    '-',
    1875.00,
    2000.00,
    125.00,
    2000.00,
    125.00,
    3750.00,
    '6.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    86,
    '8886008101053',
    'AQUA AIR MNM BOTOL 600ML',
    118,
    120,
    36,
    202,
    '-',
    2158.00,
    3000.00,
    842.00,
    108000.00,
    30312.00,
    435916.00,
    '39.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    87,
    '8886008101091',
    'AQUA AIR MNM  BTL 1500 ML',
    56,
    60,
    4,
    112,
    '-',
    5100.00,
    6000.00,
    900.00,
    24000.00,
    3600.00,
    571200.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    88,
    '8996001600399',
    'LE MINERALE 1500ML',
    57,
    0,
    18,
    39,
    '-',
    4417.00,
    5000.00,
    583.00,
    90000.00,
    10494.00,
    172263.00,
    '13.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    89,
    '8996001600269',
    'LE MINERALE 600ML',
    29,
    0,
    79,
    -50,
    '-',
    1959.00,
    2500.00,
    541.00,
    197500.00,
    42739.00,
    -97950.00,
    '27.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    90,
    '8995227500377',
    'PANDA LIANG TEH 310 ML',
    6,
    0,
    0,
    6,
    '-',
    4330.00,
    5500.00,
    1170.00,
    0.00,
    0.00,
    25980.00,
    '27.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    91,
    '8998008151058',
    'MI-WON 250 G',
    7,
    0,
    0,
    7,
    '-',
    8600.00,
    10000.00,
    1400.00,
    0.00,
    0.00,
    60200.00,
    '16.28%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    92,
    '711844120310',
    'ABC SAMBAL ASLI 176 G',
    6,
    0,
    0,
    6,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    51000.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    93,
    '711844120341',
    'SAMBAL SASET EXTRA PEDAS 176 G',
    1,
    0,
    0,
    1,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    8500.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    94,
    '711844120358',
    'ABC SAMBAL ASLI 1KG',
    1,
    0,
    0,
    1,
    '-',
    32200.00,
    34000.00,
    1800.00,
    0.00,
    0.00,
    32200.00,
    '5.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    95,
    '711844130050',
    'ABC SAOS TOMAT 1 KG',
    1,
    0,
    0,
    1,
    '-',
    13530.00,
    16000.00,
    2470.00,
    0.00,
    0.00,
    13530.00,
    '18.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    96,
    '711844101378',
    'ABC KECAP MANIS POUCH 520 ml',
    2,
    0,
    1,
    1,
    '-',
    6900.00,
    8000.00,
    1100.00,
    8000.00,
    1100.00,
    6900.00,
    '15.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    97,
    '8998888710192',
    'DELMONTE KETCHUP TOMAT 200 G',
    6,
    0,
    0,
    6,
    '-',
    8800.00,
    10000.00,
    1200.00,
    0.00,
    0.00,
    52800.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    98,
    '8998888710598',
    'DELMONTE EXTRA HOT 200 G',
    5,
    0,
    0,
    5,
    '-',
    8800.00,
    10000.00,
    1200.00,
    0.00,
    0.00,
    44000.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    99,
    '711844120549',
    'ABC SAMBAL ASLI 75 G',
    1,
    0,
    0,
    1,
    '-',
    6000.00,
    7500.00,
    1500.00,
    0.00,
    0.00,
    6000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    100,
    '711844120556',
    'ABC SAMBAL EXTRA PEDAS 75 GR PCH',
    5,
    0,
    0,
    5,
    '-',
    2500.00,
    3500.00,
    1000.00,
    0.00,
    0.00,
    12500.00,
    '40.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    101,
    '711844110182',
    'ABC KECAP MANIS 65ML',
    3,
    0,
    0,
    3,
    '-',
    1650.00,
    2200.00,
    550.00,
    0.00,
    0.00,
    4950.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    102,
    '711844110113',
    'ABC KECAP MANIS KCL PLST 135ML',
    7,
    0,
    0,
    7,
    '-',
    6900.00,
    7500.00,
    600.00,
    0.00,
    0.00,
    48300.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    103,
    '711844120037',
    'ABC SAMBAL ASLI 135ML',
    2,
    0,
    1,
    1,
    '-',
    7025.00,
    7800.00,
    775.00,
    7800.00,
    775.00,
    7025.00,
    '11.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    104,
    '8994907001401',
    'ABC SAMBAL BAWANG PEDAS PET 275ML',
    3,
    0,
    0,
    3,
    '-',
    12800.00,
    14000.00,
    1200.00,
    0.00,
    0.00,
    38400.00,
    '9.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    105,
    '711844120440',
    'ABC SAMBAL EKSTRA PDS PET 275ML',
    3,
    0,
    0,
    3,
    '-',
    12600.00,
    13500.00,
    900.00,
    0.00,
    0.00,
    37800.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    106,
    '711844120082',
    'ABC SAMBAL EXTRA PEDAS BOTOL 135 ML',
    2,
    0,
    0,
    2,
    '-',
    13000.00,
    14000.00,
    1000.00,
    0.00,
    0.00,
    26000.00,
    '7.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    107,
    '711844120105',
    'ABC SAMBAL MANIS PEDAS 135ML',
    5,
    0,
    0,
    5,
    '-',
    6600.00,
    7200.00,
    600.00,
    0.00,
    0.00,
    33000.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    108,
    '711844330108',
    'ABC SARDINE CHILLI 155GR',
    14,
    0,
    1,
    13,
    '-',
    9250.00,
    11000.00,
    1750.00,
    11000.00,
    1750.00,
    120250.00,
    '18.92%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    109,
    '711844330146',
    'ABC SARDINE EXTRA HOT 155GR',
    9,
    0,
    0,
    9,
    '-',
    9250.00,
    11000.00,
    1750.00,
    0.00,
    0.00,
    83250.00,
    '18.92%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    110,
    '711844330009',
    'ABC SARDINE TOMAT 155GR',
    11,
    0,
    1,
    10,
    '-',
    9250.00,
    11000.00,
    1750.00,
    11000.00,
    1750.00,
    92500.00,
    '18.92%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    111,
    '711844140059',
    'ABC SAUS TIRAM 135ML',
    2,
    0,
    0,
    2,
    '-',
    7500.00,
    8000.00,
    500.00,
    0.00,
    0.00,
    15000.00,
    '6.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    112,
    '711844130128',
    'ABC SAUS TOMAT BOTOL 275 ML',
    4,
    0,
    0,
    4,
    '-',
    14550.00,
    15500.00,
    950.00,
    0.00,
    0.00,
    58200.00,
    '6.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    113,
    '8992388111145',
    'ABC MIE SUP TOMAT PEDAS REBUS',
    20,
    0,
    0,
    20,
    '-',
    1835.00,
    2300.00,
    465.00,
    0.00,
    0.00,
    36700.00,
    '25.34%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    114,
    '8994907001456',
    'ABC KECAP MANIS 105 GR',
    2,
    0,
    0,
    2,
    '-',
    4890.00,
    5500.00,
    610.00,
    0.00,
    0.00,
    9780.00,
    '12.47%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    115,
    '711844120419',
    'ABC SAOS SAMBAL 275 ML',
    4,
    0,
    0,
    4,
    '-',
    24200.00,
    25500.00,
    1300.00,
    0.00,
    0.00,
    96800.00,
    '5.37%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    116,
    '711844130111',
    'ABC SAOS TOMAT 135 ML ',
    4,
    0,
    0,
    4,
    '-',
    6600.00,
    7500.00,
    900.00,
    0.00,
    0.00,
    26400.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    117,
    '899888870161',
    'DELMONTE KETCHUP CUP 135 ML ',
    4,
    0,
    0,
    4,
    '-',
    6600.00,
    7500.00,
    900.00,
    0.00,
    0.00,
    26400.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    118,
    '89686401011',
    'INDOFOODS SAMBALBANGKOK135ML',
    1,
    0,
    0,
    1,
    '-',
    7000.00,
    8000.00,
    1000.00,
    0.00,
    0.00,
    7000.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    119,
    '711844115057',
    'ABC  Kecap asin (133 ml) ',
    4,
    0,
    3,
    1,
    '-',
    6770.00,
    7500.00,
    730.00,
    22500.00,
    2190.00,
    6770.00,
    '10.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    120,
    '711844110083',
    'ABC KCP MANIS BTL PLSTIK 275ML',
    4,
    0,
    0,
    4,
    '-',
    14400.00,
    16000.00,
    1600.00,
    0.00,
    0.00,
    57600.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    121,
    '8992984911026',
    'DUA BELIBIS SAMBAL TOMAT 135ML',
    1,
    0,
    0,
    1,
    '-',
    3700.00,
    4500.00,
    800.00,
    0.00,
    0.00,
    3700.00,
    '21.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    122,
    '8998866608015',
    'SEDAAP KECAP MANIS 275 ML',
    2,
    0,
    0,
    2,
    '-',
    12000.00,
    13000.00,
    1000.00,
    0.00,
    0.00,
    24000.00,
    '8.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    123,
    '8998866608008',
    'SEDAAP KECAP MANIS 135ML',
    1,
    0,
    0,
    1,
    '-',
    6350.00,
    7500.00,
    1150.00,
    0.00,
    0.00,
    6350.00,
    '18.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    124,
    '8992770096135',
    'SAORI SAUS TIRAM 270 ML',
    1,
    0,
    0,
    1,
    '-',
    18417.00,
    20000.00,
    1583.00,
    0.00,
    0.00,
    18417.00,
    '8.60%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    125,
    '89686420036',
    'INDOFOOD KECAP MANIS PLS 135ML',
    1,
    0,
    0,
    1,
    '-',
    6050.00,
    7000.00,
    950.00,
    0.00,
    0.00,
    6050.00,
    '15.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    126,
    '8986386066',
    'INDOFOOD RACIK AYAM GRG 26G',
    9,
    0,
    4,
    5,
    '-',
    1490.00,
    2000.00,
    510.00,
    8000.00,
    2040.00,
    7450.00,
    '34.23%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    127,
    '89686386417',
    'INDOFOOD RACIK TEMPE GORENG 20G',
    10,
    0,
    0,
    10,
    '-',
    1580.00,
    2000.00,
    420.00,
    0.00,
    0.00,
    15800.00,
    '26.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    128,
    '8997010321725',
    'SAOS BULGOGI 300 GR',
    1,
    0,
    0,
    1,
    '-',
    21475.00,
    23000.00,
    1525.00,
    0.00,
    0.00,
    21475.00,
    '7.10%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    129,
    '711844330115',
    'ABC Sardines dalam saus cabai (425 GR)',
    2,
    0,
    2,
    0,
    '-',
    22000.00,
    23500.00,
    1500.00,
    47000.00,
    3000.00,
    0.00,
    '6.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    130,
    '711844330016',
    'ABC Sardines dalam saus TOMAT (425 GR)',
    1,
    0,
    0,
    1,
    '-',
    19577.00,
    21000.00,
    1423.00,
    0.00,
    0.00,
    19577.00,
    '7.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    131,
    '8992987001014',
    'MAYA SARDINE TOMAT 155GR',
    5,
    0,
    0,
    5,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    42500.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    132,
    '8992820115519',
    'PRONAS SARDINE PREMIUM TOMAT 155GR',
    4,
    0,
    0,
    4,
    '-',
    8700.00,
    8700.00,
    0.00,
    0.00,
    0.00,
    34800.00,
    '0.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    133,
    '8992770084064',
    'SAJIKU TEPUNG BUMBU 220 GR',
    7,
    0,
    2,
    5,
    '-',
    4131.00,
    5000.00,
    869.00,
    10000.00,
    1738.00,
    20655.00,
    '21.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    134,
    '8992736025162',
    'SASA TP GRNG PISANG 210 GR',
    1,
    0,
    0,
    1,
    '-',
    5400.00,
    6400.00,
    1000.00,
    0.00,
    0.00,
    5400.00,
    '18.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    135,
    '8992736925134',
    'SASA TP 210 GR',
    1,
    0,
    0,
    1,
    '-',
    5400.00,
    6400.00,
    1000.00,
    0.00,
    0.00,
    5400.00,
    '18.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    136,
    '8999999035976',
    'ROYCO KUAH BAKSO 100G',
    5,
    0,
    0,
    5,
    '-',
    9275.00,
    10300.00,
    1025.00,
    0.00,
    0.00,
    46375.00,
    '11.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    137,
    '8992770034151',
    'MASAKO AYAM 250GR',
    2,
    0,
    2,
    0,
    '-',
    8500.00,
    9500.00,
    1000.00,
    19000.00,
    2000.00,
    0.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    138,
    '8992770034168',
    'MASAKOSAPI 250GR',
    2,
    0,
    0,
    2,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    17000.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    139,
    '8992761122331',
    'FRESTEA APEL 500 ML',
    43,
    0,
    6,
    37,
    '-',
    4250.00,
    5500.00,
    1250.00,
    33000.00,
    7500.00,
    157250.00,
    '29.41%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    140,
    '8992761166205',
    'FRESTEA GREEN TEA HONEY 350 ML',
    27,
    0,
    4,
    23,
    '-',
    3086.00,
    4000.00,
    914.00,
    16000.00,
    3656.00,
    70978.00,
    '29.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    141,
    '8992761122430',
    'FRESTEA GREEN TEA HONEY 500 ML',
    47,
    0,
    0,
    47,
    '-',
    4900.00,
    5500.00,
    600.00,
    0.00,
    0.00,
    230300.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    142,
    '8992761122324',
    'FRESTEA JASMINE 500 ML',
    48,
    0,
    1,
    47,
    '-',
    5382.00,
    6000.00,
    618.00,
    6000.00,
    618.00,
    252954.00,
    '11.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    143,
    '8992761166243',
    'FRESTEA NUSANTARA 350 ML',
    34,
    0,
    1,
    33,
    '-',
    3129.00,
    4000.00,
    871.00,
    4000.00,
    871.00,
    103257.00,
    '27.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    144,
    '8996006858276',
    'FRUIT PASSION FRUIT 350 ML ',
    10,
    0,
    0,
    10,
    '-',
    3500.00,
    4500.00,
    1000.00,
    0.00,
    0.00,
    35000.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    145,
    '8996006858085',
    'FRUIT TEA APEL BTL 330 ML',
    30,
    0,
    1,
    29,
    '-',
    3334.00,
    4000.00,
    666.00,
    4000.00,
    666.00,
    96686.00,
    '19.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    146,
    '8996006858160',
    'FRUIT TEA  BLACK BTL 330 ML ',
    4,
    0,
    0,
    4,
    '-',
    3500.00,
    4500.00,
    1000.00,
    0.00,
    0.00,
    14000.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    147,
    '8996006858115',
    'FRUIT TEA  FREEZE STRAW &amp; GRAPE 350 ML ',
    8,
    0,
    1,
    7,
    '-',
    3500.00,
    4500.00,
    1000.00,
    4500.00,
    1000.00,
    24500.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    148,
    '8996006858320',
    'FRUIT TEA LEMON 350 ML ',
    12,
    0,
    0,
    12,
    '-',
    3500.00,
    4500.00,
    1000.00,
    0.00,
    0.00,
    42000.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    149,
    '8996006858108',
    'FRUIT TEA  STRAW 350 ML A',
    6,
    0,
    0,
    6,
    '-',
    3500.00,
    4500.00,
    1000.00,
    0.00,
    0.00,
    21000.00,
    '28.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    150,
    '8996001600146',
    'TEH PUCUK HARUM 350 ML',
    2,
    0,
    1,
    1,
    '-',
    2458.00,
    3500.00,
    1042.00,
    3500.00,
    1042.00,
    2458.00,
    '42.39%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    151,
    '8996006858016',
    'TEH BOTOL SOSRO 350 ML ',
    5,
    0,
    2,
    3,
    '-',
    3334.00,
    4000.00,
    666.00,
    8000.00,
    1332.00,
    10002.00,
    '19.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    152,
    '8992388145324',
    'NU CHO HAZELTEA',
    14,
    0,
    0,
    14,
    '-',
    6338.00,
    7500.00,
    1162.00,
    0.00,
    0.00,
    88732.00,
    '18.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    153,
    '8992388101085',
    'NU GREENTEA GREEN TEA 330 ml',
    22,
    0,
    1,
    21,
    '-',
    3405.00,
    4500.00,
    1095.00,
    4500.00,
    1095.00,
    71505.00,
    '32.16%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    154,
    '8992388134106',
    'NU GREENTEA GREEN TEA JASMINE 330 ML',
    23,
    0,
    0,
    23,
    '-',
    3404.00,
    4500.00,
    1096.00,
    0.00,
    0.00,
    78292.00,
    '32.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    155,
    '8992388101092',
    'NU GREENTEA HONEY 330 ml',
    8,
    0,
    0,
    8,
    '-',
    3405.00,
    4500.00,
    1095.00,
    0.00,
    0.00,
    27240.00,
    '32.16%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    156,
    '8992388101023',
    'NU GREENTEA HONEY 450 ML',
    24,
    0,
    1,
    23,
    '-',
    4880.00,
    5500.00,
    620.00,
    5500.00,
    620.00,
    112240.00,
    '12.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    157,
    '8992388101016',
    'NU GREENTEA ORIGINAL 450 ML',
    1,
    0,
    1,
    0,
    '-',
    5259.00,
    5500.00,
    241.00,
    5500.00,
    241.00,
    0.00,
    '4.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    158,
    '8992388133277',
    'NU GREENTEAGULA BATU 450 ML',
    19,
    0,
    2,
    17,
    '-',
    4889.00,
    5500.00,
    611.00,
    11000.00,
    1222.00,
    83113.00,
    '12.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    159,
    '8992388145027',
    'NU GREENTEA YOGURT 450 ML',
    22,
    0,
    2,
    20,
    '-',
    4875.00,
    5500.00,
    625.00,
    11000.00,
    1250.00,
    97500.00,
    '12.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    160,
    '8992388133017',
    'NU MILKTEA  330ML',
    12,
    0,
    4,
    8,
    '-',
    6338.00,
    7500.00,
    1162.00,
    30000.00,
    4648.00,
    50704.00,
    '18.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    161,
    '8992388133345',
    'NU TEH TARIK',
    22,
    0,
    2,
    20,
    '-',
    6338.00,
    7000.00,
    662.00,
    14000.00,
    1324.00,
    126760.00,
    '10.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    162,
    '8997204306590',
    'BONTEH MELATI 330 ML',
    6,
    0,
    2,
    4,
    '-',
    2334.00,
    3000.00,
    666.00,
    6000.00,
    1332.00,
    9336.00,
    '28.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    163,
    '8992741902618',
    'YUPI MILLY MOOS STARLITE 50 G',
    2,
    0,
    0,
    2,
    '-',
    4750.00,
    5000.00,
    250.00,
    0.00,
    0.00,
    9500.00,
    '5.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    164,
    '8995108509550',
    'RE-BO KUACI ORIGINAL PACK 70GR',
    4,
    0,
    0,
    4,
    '-',
    7700.00,
    8500.00,
    800.00,
    0.00,
    0.00,
    30800.00,
    '10.39%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    165,
    '8995108509574',
    'KUACI REBO GREEN TEA 70G',
    3,
    0,
    1,
    2,
    '-',
    13000.00,
    14000.00,
    1000.00,
    14000.00,
    1000.00,
    26000.00,
    '7.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    166,
    '8995108509857',
    'RE-BO KUACI SALTED CARAMEL PACK 70GR',
    4,
    0,
    0,
    4,
    '-',
    7700.00,
    8500.00,
    800.00,
    0.00,
    0.00,
    30800.00,
    '10.39%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    167,
    '08968606012',
    'POPMIE MN BS SAPI 38 GR EA',
    32,
    0,
    0,
    32,
    '-',
    2900.00,
    3500.00,
    600.00,
    0.00,
    0.00,
    92800.00,
    '20.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    168,
    '089686060961',
    'POP MIE KARI AYAM ',
    6,
    0,
    0,
    6,
    '-',
    4175.00,
    5000.00,
    825.00,
    0.00,
    0.00,
    25050.00,
    '19.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    169,
    '008966060362',
    'POP MIE SOTO AYAM ',
    29,
    0,
    0,
    29,
    '-',
    4175.00,
    5000.00,
    825.00,
    0.00,
    0.00,
    121075.00,
    '19.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    170,
    '0089686060027',
    'POP MIE RASA AYAM ',
    28,
    0,
    1,
    27,
    '-',
    4175.00,
    5000.00,
    825.00,
    5000.00,
    825.00,
    112725.00,
    '19.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    171,
    '0089686010190',
    'INDOMIE KARI AYAM (S)72 G',
    25,
    0,
    3,
    22,
    '-',
    3100.00,
    3500.00,
    400.00,
    10500.00,
    1200.00,
    68200.00,
    '12.90%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    172,
    '0089686043495',
    'INDOMIE HYPABS SBLK JLT 75 G ',
    7,
    0,
    0,
    7,
    '-',
    2630.00,
    3000.00,
    370.00,
    0.00,
    0.00,
    18410.00,
    '14.07%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    173,
    '8992931001589',
    'TESSA NATURE FACIAL TP 60 S ',
    25,
    0,
    0,
    25,
    '-',
    6875.00,
    8000.00,
    1125.00,
    0.00,
    0.00,
    171875.00,
    '16.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    174,
    '0089686010343',
    'INDOMIE SOTO MIE 70 GR',
    32,
    0,
    18,
    14,
    '-',
    2840.00,
    3300.00,
    460.00,
    59400.00,
    8280.00,
    39760.00,
    '16.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    175,
    '0896860190015',
    'SUPERMI REBUS AYAM BAWANG ',
    25,
    0,
    0,
    25,
    '-',
    2450.00,
    3000.00,
    550.00,
    0.00,
    0.00,
    61250.00,
    '22.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    176,
    '8996001526163',
    'MIE OVEN ',
    3,
    0,
    0,
    3,
    '-',
    3500.00,
    4000.00,
    500.00,
    0.00,
    0.00,
    10500.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    177,
    '8998866200301',
    'SEDAP GORENG',
    33,
    0,
    0,
    33,
    '-',
    3800.00,
    4200.00,
    400.00,
    0.00,
    0.00,
    125400.00,
    '10.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    178,
    '8998866202343',
    'Sedap Korean Spicy chicken',
    2,
    0,
    0,
    2,
    '-',
    3800.00,
    4200.00,
    400.00,
    0.00,
    0.00,
    7600.00,
    '10.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    179,
    '089686043204',
    'INDOMIE GORENG ACEH',
    2,
    0,
    0,
    2,
    '-',
    2870.00,
    3300.00,
    430.00,
    0.00,
    0.00,
    5740.00,
    '14.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    180,
    '0089686041705',
    'INDOMIE MI GORENG JUMBO PACK 129G',
    19,
    0,
    4,
    15,
    '-',
    3750.00,
    4200.00,
    450.00,
    16800.00,
    1800.00,
    56250.00,
    '12.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    181,
    '0089686010824',
    'INDOMIE GORENG 85GR',
    20,
    0,
    0,
    20,
    '-',
    2840.00,
    3500.00,
    660.00,
    0.00,
    0.00,
    56800.00,
    '23.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    182,
    '8885013131680',
    'AICE BRON SUGAR BOBA ',
    5,
    0,
    3,
    2,
    '-',
    4800.00,
    5500.00,
    700.00,
    16500.00,
    2100.00,
    9600.00,
    '14.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    183,
    '8885013130058',
    'AICE CHOCO CRISPY',
    8,
    0,
    2,
    6,
    '-',
    4000.00,
    4500.00,
    500.00,
    9000.00,
    1000.00,
    24000.00,
    '12.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    184,
    '8885013130393',
    'AICE MIKI - MIKI',
    0,
    0,
    0,
    0,
    '-',
    1559.00,
    2000.00,
    441.00,
    0.00,
    0.00,
    0.00,
    '28.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    185,
    '8885013131710',
    'AICE MIKI MIKI DOUBLE CHOCO',
    1,
    0,
    0,
    1,
    '-',
    1901.00,
    2500.00,
    599.00,
    0.00,
    0.00,
    1901.00,
    '31.51%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    186,
    '8885013132014',
    'AICE MILK CEREAL RISPY ',
    0,
    0,
    0,
    0,
    '-',
    3000.00,
    4000.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    187,
    '8885013130249',
    'AICE MILK MELON STICK',
    0,
    0,
    0,
    0,
    '-',
    1912.00,
    2000.00,
    88.00,
    0.00,
    0.00,
    0.00,
    '4.60%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    188,
    '8885013130652',
    'AICE MOCHI DURIAN',
    32,
    0,
    9,
    23,
    '-',
    2313.00,
    3000.00,
    687.00,
    27000.00,
    6183.00,
    53199.00,
    '29.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    189,
    '8885013131529',
    'AICE MOCHI KLEPON',
    0,
    0,
    0,
    0,
    '-',
    2363.00,
    3000.00,
    637.00,
    0.00,
    0.00,
    0.00,
    '26.96%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    190,
    '8885013130201',
    'AICE MOCHI VANILA',
    3,
    0,
    6,
    -3,
    '-',
    2299.00,
    3000.00,
    701.00,
    18000.00,
    4206.00,
    -6897.00,
    '30.49%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    191,
    '8885013130546',
    'AICE NANAS',
    1,
    0,
    0,
    1,
    '-',
    1540.00,
    2000.00,
    460.00,
    0.00,
    0.00,
    1540.00,
    '29.87%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    192,
    '8885013130485',
    'ICE COFFE CRISPY',
    0,
    0,
    0,
    0,
    '-',
    2750.00,
    3300.00,
    550.00,
    0.00,
    0.00,
    0.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    193,
    '8885013131123',
    'AICE TARO CRISPY',
    0,
    0,
    0,
    0,
    '-',
    2413.00,
    3000.00,
    587.00,
    0.00,
    0.00,
    0.00,
    '24.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    194,
    '8885013130645',
    'MOCHI CHOCO ',
    0,
    0,
    0,
    0,
    '-',
    2313.00,
    3000.00,
    687.00,
    0.00,
    0.00,
    0.00,
    '29.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    195,
    '640034',
    'SOSIS SALAM 1 KG ',
    2,
    0,
    0,
    2,
    '-',
    35000.00,
    37000.00,
    2000.00,
    0.00,
    0.00,
    70000.00,
    '5.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    196,
    '6907992823874',
    'CRUNCHY CHOCOLATE BLUEBERRY 75 GR',
    1,
    0,
    0,
    1,
    '-',
    4000.00,
    5000.00,
    1000.00,
    0.00,
    0.00,
    4000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    197,
    '6907992823867',
    'CRUNCHY CHOCOLATE MALT 75 GR',
    21,
    0,
    20,
    1,
    '-',
    4000.00,
    4500.00,
    500.00,
    90000.00,
    10000.00,
    4000.00,
    '12.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    198,
    '6907992826066',
    'CRUNCHY DOUBLE CHOCOLATE ',
    1,
    0,
    1,
    0,
    '-',
    4250.00,
    4800.00,
    550.00,
    4800.00,
    550.00,
    0.00,
    '12.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    199,
    '6907992825069',
    'FRUTTI FRIZZ ',
    0,
    0,
    0,
    0,
    '-',
    3400.00,
    4200.00,
    800.00,
    0.00,
    0.00,
    0.00,
    '23.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    200,
    '8991728000033',
    'JOYDAY MOCHI CHO',
    0,
    0,
    0,
    0,
    '-',
    2925.00,
    3000.00,
    75.00,
    0.00,
    0.00,
    0.00,
    '2.56%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    201,
    '6907992823676',
    'COOL PEACH',
    13,
    0,
    16,
    -3,
    '-',
    1680.00,
    2500.00,
    820.00,
    40000.00,
    13120.00,
    -5040.00,
    '48.81%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    202,
    '6907992823966',
    'COOL BLUEBERRY 70 GR ',
    18,
    0,
    17,
    1,
    '-',
    2512.00,
    3000.00,
    488.00,
    51000.00,
    8296.00,
    2512.00,
    '19.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    203,
    '6907992823799',
    'JOYDAY VANILLA MILK SAKE CUP',
    19,
    0,
    8,
    11,
    '-',
    4209.00,
    5000.00,
    791.00,
    40000.00,
    6328.00,
    46299.00,
    '18.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    204,
    '8991728000453',
    'JOYDAY CHAMPION BALL',
    34,
    0,
    1,
    33,
    '-',
    2675.00,
    3000.00,
    325.00,
    3000.00,
    325.00,
    88275.00,
    '12.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    205,
    '8991728000361',
    'JOYDAY CHOCO CRUNCH',
    9,
    0,
    6,
    3,
    '-',
    2650.00,
    3000.00,
    350.00,
    18000.00,
    2100.00,
    7950.00,
    '13.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    206,
    '991728000064',
    'JOYDAY CHOCO BERRY',
    12,
    0,
    13,
    -1,
    '-',
    1800.00,
    2300.00,
    500.00,
    29900.00,
    6500.00,
    -1800.00,
    '27.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    207,
    '6907992823829',
    'JOYDAY MILKY MILK',
    0,
    0,
    0,
    0,
    '-',
    2100.00,
    2600.00,
    500.00,
    0.00,
    0.00,
    0.00,
    '23.81%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    208,
    '6907992825076',
    'JOYDAY COOL WATER MELON',
    24,
    0,
    16,
    8,
    '-',
    1680.00,
    2000.00,
    320.00,
    32000.00,
    5120.00,
    13440.00,
    '19.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    209,
    '6907992823935',
    'JOYDAY SWEET CORN',
    0,
    0,
    0,
    0,
    '-',
    2600.00,
    3000.00,
    400.00,
    0.00,
    0.00,
    0.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    210,
    '8998009010620',
    'ULTRA MILK CHOCOLATE 1 L',
    11,
    0,
    0,
    11,
    '-',
    15900.00,
    17500.00,
    1600.00,
    0.00,
    0.00,
    174900.00,
    '10.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    211,
    '8998009010613',
    'ULTRA MILK PLAIN 1 L',
    9,
    0,
    0,
    9,
    '-',
    16000.00,
    17500.00,
    1500.00,
    0.00,
    0.00,
    144000.00,
    '9.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    212,
    '8993351124018',
    'GREENFIELDS FULL CREAM MILK 200 ML',
    41,
    0,
    0,
    41,
    '-',
    7637.00,
    8500.00,
    863.00,
    0.00,
    0.00,
    313117.00,
    '11.30%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    213,
    '8993351124124',
    'GREENFIELDS UHT CHOC 125 ML ',
    10,
    0,
    1,
    9,
    '-',
    3250.00,
    4000.00,
    750.00,
    4000.00,
    750.00,
    29250.00,
    '23.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    214,
    '8993351122410',
    'GREENFIELDS UHT EXTRA LOW FAT STRAW  200 ML ',
    10,
    0,
    0,
    10,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    60000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    215,
    '8997240350267',
    'OPAO ORIGINAL 125 ML ',
    29,
    0,
    1,
    28,
    '-',
    2300.00,
    3000.00,
    700.00,
    3000.00,
    700.00,
    64400.00,
    '30.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    216,
    '8993351124025',
    'GREENFIELDS UHT FULL CREAM  125 ML ',
    45,
    0,
    3,
    42,
    '-',
    3250.00,
    4000.00,
    750.00,
    12000.00,
    2250.00,
    136500.00,
    '23.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    217,
    '8998009010590',
    'ULTRA MILK COKLAT 125 ML',
    46,
    0,
    5,
    41,
    '-',
    2634.00,
    3500.00,
    866.00,
    17500.00,
    4330.00,
    107994.00,
    '32.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    218,
    '8993351124223',
    'GREENFIELDS UHT STAW 125 ML',
    74,
    0,
    1,
    73,
    '-',
    3250.00,
    3500.00,
    250.00,
    3500.00,
    250.00,
    237250.00,
    '7.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    219,
    '8998009010606',
    'ULTRA MILK STRAWBERRY 125 ML',
    103,
    0,
    1,
    102,
    '-',
    3000.00,
    3500.00,
    500.00,
    3500.00,
    500.00,
    306000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    220,
    '8993351122946',
    'GREENFIELDS UHT CHOC 105  ML',
    38,
    0,
    0,
    38,
    '-',
    2920.00,
    3500.00,
    580.00,
    0.00,
    0.00,
    110960.00,
    '19.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    221,
    '899335112427',
    'GREENFIELDS UHT EXTRA LOW FAT VANILA  200 ML ',
    8,
    0,
    0,
    8,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    48000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    222,
    '8993351124216',
    'GREENFIELDS STRW MILK 200ML',
    40,
    0,
    2,
    38,
    '-',
    4741.00,
    5500.00,
    759.00,
    11000.00,
    1518.00,
    180158.00,
    '16.01%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    223,
    '8998009010576',
    'ULTRA SUSU SLIM STRAW 200 ML',
    17,
    0,
    4,
    13,
    '-',
    4430.00,
    5500.00,
    1070.00,
    22000.00,
    4280.00,
    57590.00,
    '24.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    224,
    '8998009010248',
    'ULTRA SUSU SLIM STRAW 250 ML',
    25,
    0,
    20,
    5,
    '-',
    4855.00,
    5500.00,
    645.00,
    110000.00,
    12900.00,
    24275.00,
    '13.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    225,
    '8998009010569',
    'ULTRA SUSU SLIM CHOCO 200 ML',
    7,
    0,
    2,
    5,
    '-',
    3822.00,
    4500.00,
    678.00,
    9000.00,
    1356.00,
    19110.00,
    '17.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    226,
    '8998866202725',
    'MILKU COKLAT PREMIUM 200 ML',
    0,
    0,
    0,
    0,
    '-',
    2650.00,
    3000.00,
    350.00,
    0.00,
    0.00,
    0.00,
    '13.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    227,
    '8998866202732',
    'MILKU STROBERI 200 ML ',
    3,
    0,
    1,
    2,
    '-',
    2500.00,
    3000.00,
    500.00,
    3000.00,
    500.00,
    5000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    228,
    '8998009010569',
    'ULTRA SUSU SLIM CHOCO 200 ML',
    7,
    0,
    2,
    5,
    '-',
    3822.00,
    4500.00,
    678.00,
    9000.00,
    1356.00,
    19110.00,
    '17.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    229,
    '8998009010231',
    'ULTRA SUSU SLIM CHOCO  250 ML',
    19,
    0,
    15,
    4,
    '-',
    5243.00,
    6000.00,
    757.00,
    90000.00,
    11355.00,
    20972.00,
    '14.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    230,
    '8993351122625',
    'GREENFIELDS CHO MILK 200ML',
    38,
    0,
    1,
    37,
    '-',
    6000.00,
    7000.00,
    1000.00,
    7000.00,
    1000.00,
    222000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    231,
    '8992696523067',
    'MILO ACTIV-GO UHT 180ML',
    13,
    0,
    3,
    10,
    '-',
    3900.00,
    4500.00,
    600.00,
    13500.00,
    1800.00,
    39000.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    232,
    '8992727008006',
    'ATTACK JAZ1 DETERGEL PESONA SEGAR 750GR',
    1,
    0,
    0,
    1,
    '-',
    17100.00,
    18500.00,
    1400.00,
    0.00,
    0.00,
    17100.00,
    '8.19%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    233,
    '0400007986169',
    'VITACIMIN 2\'S',
    0,
    0,
    0,
    0,
    '-',
    1680.00,
    2000.00,
    320.00,
    0.00,
    0.00,
    0.00,
    '19.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    234,
    '8992727007986',
    'ATTACK JAZ1 DETERGEL SMRBK CINTA 750GR',
    2,
    0,
    0,
    2,
    '-',
    17100.00,
    18500.00,
    1400.00,
    0.00,
    0.00,
    34200.00,
    '8.19%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    235,
    '8998866608879',
    'RAPIKA BIANG LAVENDER 250 M',
    5,
    0,
    0,
    5,
    '-',
    3175.00,
    5000.00,
    1825.00,
    0.00,
    0.00,
    15875.00,
    '57.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    236,
    '8998866603409',
    'Rapika Lavender 425ml',
    1,
    0,
    0,
    1,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    5000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    237,
    '8998866605649',
    'So Klin RAPIKA 400 ML',
    2,
    0,
    0,
    2,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    10000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    238,
    '8998866612258',
    'Rapika Sakura 400ml',
    3,
    0,
    0,
    3,
    '-',
    4800.00,
    6000.00,
    1200.00,
    0.00,
    0.00,
    14400.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    239,
    '8998866603416',
    'Son Klin RAPIKA Blossom',
    1,
    0,
    0,
    1,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    5000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    240,
    '8992772198011',
    'Kispray Amoris 300/280ml',
    2,
    0,
    0,
    2,
    '-',
    4750.00,
    6000.00,
    1250.00,
    0.00,
    0.00,
    9500.00,
    '26.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    241,
    '8992772198035',
    'Kispray Bluis 300ml/280ml',
    2,
    0,
    0,
    2,
    '-',
    4750.00,
    6000.00,
    1250.00,
    0.00,
    0.00,
    9500.00,
    '26.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    242,
    '8992772198028',
    'Kispray Segeris 300/280ml',
    3,
    0,
    0,
    3,
    '-',
    4950.00,
    6000.00,
    1050.00,
    0.00,
    0.00,
    14850.00,
    '21.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    243,
    '8992772198042',
    'Kispray Violet 300ml/280ml',
    1,
    0,
    0,
    1,
    '-',
    4950.00,
    6000.00,
    1050.00,
    0.00,
    0.00,
    4950.00,
    '21.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    244,
    '8992779454905',
    'GLADE CAR WILD OCEAN ESCAPE 70+5GR',
    2,
    0,
    0,
    2,
    '-',
    11000.00,
    12500.00,
    1500.00,
    0.00,
    0.00,
    22000.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    245,
    '8992779070303',
    'GLADE CAR WILD VANILA 70+5GR',
    2,
    0,
    0,
    2,
    '-',
    11000.00,
    12500.00,
    1500.00,
    0.00,
    0.00,
    22000.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    246,
    '8992779160905',
    'GLADE CAR WILD PEONY AND BERRY 70+5GR',
    3,
    0,
    0,
    3,
    '-',
    11000.00,
    12500.00,
    1500.00,
    0.00,
    0.00,
    33000.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    247,
    '8992779154904',
    'GLADE CAR WILD BERRIES 70+5GR',
    2,
    0,
    0,
    2,
    '-',
    11000.00,
    12500.00,
    1500.00,
    0.00,
    0.00,
    22000.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    248,
    '8998899002002',
    'BYFR  AE ROSE 225',
    3,
    0,
    0,
    3,
    '-',
    15263.00,
    17000.00,
    1737.00,
    0.00,
    0.00,
    45789.00,
    '11.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    249,
    '8998899002033',
    'BYFR AE LEMON YUZU 225 GR',
    3,
    0,
    0,
    3,
    '-',
    15263.00,
    17000.00,
    1737.00,
    0.00,
    0.00,
    45789.00,
    '11.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    250,
    '8998899940069',
    'BYRF AE STRAW BUB GUM  320 ML ',
    2,
    0,
    0,
    2,
    '-',
    20036.00,
    22000.00,
    1964.00,
    0.00,
    0.00,
    40072.00,
    '9.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    251,
    '8998899002170',
    'BYRF AEORANGE VERBENA 320 ML ',
    3,
    0,
    0,
    3,
    '-',
    20036.00,
    22000.00,
    1964.00,
    0.00,
    0.00,
    60108.00,
    '9.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    252,
    '8998899002101',
    'BYRF AE ROSE 320 ML ',
    3,
    0,
    0,
    3,
    '-',
    20036.00,
    22000.00,
    1964.00,
    0.00,
    0.00,
    60108.00,
    '9.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    253,
    '8998899940083',
    'BYRF AE MORNING COFFE 320 320 ML ',
    2,
    0,
    1,
    1,
    '-',
    20036.00,
    22000.00,
    1964.00,
    22000.00,
    1964.00,
    20036.00,
    '9.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    254,
    '8998899002132',
    'BYRF AE LEMON YUZU 320 ML ',
    3,
    0,
    0,
    3,
    '-',
    20036.00,
    22000.00,
    1964.00,
    0.00,
    0.00,
    60108.00,
    '9.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    255,
    '8992745940128',
    'STELLA BATH POCKET ORANGE 10 GR ',
    4,
    0,
    0,
    4,
    '-',
    10900.00,
    12500.00,
    1600.00,
    0.00,
    0.00,
    43600.00,
    '14.68%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    256,
    '8990090200423',
    'SARI AYU HIJAB SHAMPOO 180ML',
    1,
    0,
    0,
    1,
    '-',
    21200.00,
    23000.00,
    1800.00,
    0.00,
    0.00,
    21200.00,
    '8.49%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    257,
    '8999999536244',
    'SUNSILK SHAMPOO THICK&LONG 170ML',
    2,
    0,
    0,
    2,
    '-',
    21500.00,
    23000.00,
    1500.00,
    0.00,
    0.00,
    43000.00,
    '6.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    258,
    '8998866100632',
    'EMERON SHP SOFT&SMOOTH BTL 80ML',
    1,
    0,
    0,
    1,
    '-',
    8850.00,
    10000.00,
    1150.00,
    0.00,
    0.00,
    8850.00,
    '12.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    259,
    '8998866100557',
    'EMERON SHP BLACK & SHINE BTL 80ML',
    4,
    0,
    0,
    4,
    '-',
    8850.00,
    10000.00,
    1150.00,
    0.00,
    0.00,
    35400.00,
    '12.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    260,
    '8998866100595',
    'EMERON SHP HAIR FALL CONTROL BTL 80ML',
    4,
    0,
    0,
    4,
    '-',
    8850.00,
    10000.00,
    1150.00,
    0.00,
    0.00,
    35400.00,
    '12.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    261,
    '8998866103114',
    'EMERON SHP DANDRUFF CONTROL BTL 80ML',
    4,
    0,
    0,
    4,
    '-',
    8850.00,
    10000.00,
    1150.00,
    0.00,
    0.00,
    35400.00,
    '12.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    262,
    '8998866103121',
    'EMERON SHP DANDRUFF CONTROL BTL 170ML',
    2,
    0,
    0,
    2,
    '-',
    20000.00,
    22000.00,
    2000.00,
    0.00,
    0.00,
    40000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    263,
    '8998866100564',
    'EMERON SHP BLACK&SHINE BTL 170ML',
    2,
    0,
    0,
    2,
    '-',
    19400.00,
    22000.00,
    2600.00,
    0.00,
    0.00,
    38800.00,
    '13.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    264,
    '8998866100601',
    'EMERON SHP HAIR FALL CONTROL BTL 170ML',
    2,
    0,
    0,
    2,
    '-',
    20000.00,
    22000.00,
    2000.00,
    0.00,
    0.00,
    40000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    265,
    '8998866100649',
    'EMERON SHP SOFT & SMOOTH BTL 170ML',
    2,
    0,
    0,
    2,
    '-',
    20000.00,
    22000.00,
    2000.00,
    0.00,
    0.00,
    40000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    266,
    '4902430429399',
    'REJOICE SHP 3IN1 BTL 70ML',
    2,
    0,
    0,
    2,
    '-',
    10600.00,
    11700.00,
    1100.00,
    0.00,
    0.00,
    21200.00,
    '10.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    267,
    '8998866202671',
    'SEDAP KOR SPCY SUP CUP 75G',
    6,
    0,
    0,
    6,
    '-',
    4400.00,
    5000.00,
    600.00,
    0.00,
    0.00,
    26400.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    268,
    '8998866202930',
    'SEDAP MIE CUP RAWIT AYAM 75 G ',
    1,
    0,
    0,
    1,
    '-',
    4250.00,
    4800.00,
    550.00,
    0.00,
    0.00,
    4250.00,
    '12.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    269,
    '8992388121090',
    'ABC CUP BAKSO SAPI ',
    12,
    0,
    0,
    12,
    '-',
    4509.00,
    5200.00,
    691.00,
    0.00,
    0.00,
    54108.00,
    '15.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    270,
    '8992388121267',
    'ABC CUP GULAI AYAM PEDAS',
    10,
    0,
    0,
    10,
    '-',
    5017.00,
    5800.00,
    783.00,
    0.00,
    0.00,
    50170.00,
    '15.61%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    271,
    '8998866200813',
    'SEDAAP MIE CUP GORENG',
    6,
    0,
    5,
    1,
    '-',
    4300.00,
    5000.00,
    700.00,
    25000.00,
    3500.00,
    4300.00,
    '16.28%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    272,
    '8992388134922',
    'ABC CUP NAMPOL 12',
    9,
    0,
    0,
    9,
    '-',
    5609.00,
    6200.00,
    591.00,
    0.00,
    0.00,
    50481.00,
    '10.54%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    273,
    '8998866203258',
    'SEDAP MIE CUP BAKSO BLEDUK 7',
    3,
    0,
    1,
    2,
    '-',
    4100.00,
    5000.00,
    900.00,
    5000.00,
    900.00,
    8200.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    274,
    '8992388121021',
    'ABC KARI AYAM CUP ',
    12,
    0,
    0,
    12,
    '-',
    4509.00,
    5200.00,
    691.00,
    0.00,
    0.00,
    54108.00,
    '15.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    275,
    '8998866200837',
    'SEDAP MIE CUP SOTO 81 GR',
    14,
    0,
    0,
    14,
    '-',
    4100.00,
    5000.00,
    900.00,
    0.00,
    0.00,
    57400.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    276,
    '8998866200844',
    'SEDAP MIE CUP KARI SPC 81 GR',
    11,
    0,
    2,
    9,
    '-',
    4100.00,
    5000.00,
    900.00,
    10000.00,
    1800.00,
    36900.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    277,
    '8998127310275',
    'MAMAYA BIHUN JAGUNG 150 GR',
    5,
    0,
    0,
    5,
    '-',
    2725.00,
    3500.00,
    775.00,
    0.00,
    0.00,
    13625.00,
    '28.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    278,
    '0089686000016',
    '3 AYAM MIE TELOR MERAH 200GR',
    5,
    0,
    1,
    4,
    '-',
    4400.00,
    5000.00,
    600.00,
    5000.00,
    600.00,
    17600.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    279,
    '8992388111237',
    'ABC AYAM BAWANG REBUS',
    13,
    0,
    0,
    13,
    '-',
    1608.00,
    2200.00,
    592.00,
    0.00,
    0.00,
    20904.00,
    '36.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    280,
    '2992388112401',
    'ABC SELERA PEDAS GORENG AYAM PEDAS LIMAU',
    14,
    0,
    0,
    14,
    '-',
    2182.00,
    2500.00,
    318.00,
    0.00,
    0.00,
    30548.00,
    '14.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    281,
    '8998866202930',
    'SEDAP MIE CUP RAWIT AYAM 75 G ',
    1,
    0,
    0,
    1,
    '-',
    4250.00,
    5000.00,
    750.00,
    0.00,
    0.00,
    4250.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    282,
    '8993189270680',
    'CHARM SAFENIGHT W29CM',
    1,
    0,
    0,
    1,
    '-',
    2375.00,
    3000.00,
    625.00,
    0.00,
    0.00,
    2375.00,
    '26.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    283,
    '8992388134939',
    'Mi goreng fried noodel',
    23,
    0,
    1,
    22,
    '-',
    2800.00,
    3300.00,
    500.00,
    3300.00,
    500.00,
    61600.00,
    '17.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    284,
    '8992388111145',
    'ABC SUP TOMAT PEDAS REBUS',
    27,
    0,
    0,
    27,
    '-',
    1835.00,
    2200.00,
    365.00,
    0.00,
    0.00,
    49545.00,
    '19.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    285,
    '8998866202404',
    'SEDAP KRN SPCYCKNCUP 81 G',
    2,
    0,
    1,
    1,
    '-',
    4400.00,
    5000.00,
    600.00,
    5000.00,
    600.00,
    4400.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    286,
    '8992388111138',
    'ABC SEMUR AYAM PEDAS',
    48,
    0,
    0,
    48,
    '-',
    1835.00,
    2200.00,
    365.00,
    0.00,
    0.00,
    88080.00,
    '19.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    287,
    '8997213770382',
    'ULALA JAGUNG MANIS',
    6,
    0,
    0,
    6,
    '-',
    775.00,
    1000.00,
    225.00,
    0.00,
    0.00,
    4650.00,
    '29.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    288,
    '8991001781000',
    'Twister cho 15 Gr',
    0,
    0,
    0,
    0,
    '-',
    1871.00,
    2000.00,
    129.00,
    0.00,
    0.00,
    0.00,
    '6.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    289,
    '8991001790200',
    'TWISTER THIN STRAWBERY 20 G',
    31,
    0,
    2,
    29,
    '-',
    1786.00,
    2000.00,
    214.00,
    4000.00,
    428.00,
    51794.00,
    '11.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    290,
    '8991001790071',
    'TWISTER THIN Vanila  20 G',
    9,
    0,
    1,
    8,
    '-',
    1590.00,
    2000.00,
    410.00,
    2000.00,
    410.00,
    12720.00,
    '25.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    291,
    '8993039242522',
    'REGAL RENCENG 1 PCS ',
    0,
    0,
    0,
    0,
    '-',
    880.00,
    1000.00,
    120.00,
    0.00,
    0.00,
    0.00,
    '13.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    292,
    '8993004788758',
    'CORNTOZ JAGUNG BAKAR ',
    4,
    0,
    1,
    3,
    '-',
    4945.00,
    5500.00,
    555.00,
    5500.00,
    555.00,
    14835.00,
    '11.22%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    293,
    '8993004788734',
    'CORNTOZ KEJU CHEDDAR SMALL ',
    25,
    0,
    8,
    17,
    '-',
    858.00,
    1000.00,
    142.00,
    8000.00,
    1136.00,
    14586.00,
    '16.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    294,
    '8993004788765',
    'CORNTOZ SAPI PANGGANG',
    0,
    0,
    0,
    0,
    '-',
    4945.00,
    6000.00,
    1055.00,
    0.00,
    0.00,
    0.00,
    '21.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    295,
    '8993004788727',
    'CORNTOZ SAPI PANGGANG SMALL',
    29,
    0,
    4,
    25,
    '-',
    858.00,
    1000.00,
    142.00,
    4000.00,
    568.00,
    21450.00,
    '16.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    296,
    '8993118937110',
    'Kremes Mie 15 gr',
    63,
    0,
    2,
    61,
    '-',
    828.00,
    1000.00,
    172.00,
    2000.00,
    344.00,
    50508.00,
    '20.77%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    297,
    '8997240350014',
    'WANT WANT RICEPOP 15 ',
    41,
    0,
    4,
    37,
    '-',
    1750.00,
    2000.00,
    250.00,
    8000.00,
    1000.00,
    64750.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    298,
    '8997032680947',
    'TARO NET BARBEQUE 17 GR',
    12,
    0,
    3,
    9,
    '-',
    1714.00,
    2000.00,
    286.00,
    6000.00,
    858.00,
    15426.00,
    '16.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    299,
    '8997032680930',
    'TARO NET SEAWEED 17 GR',
    0,
    0,
    0,
    0,
    '-',
    1709.00,
    2000.00,
    291.00,
    0.00,
    0.00,
    0.00,
    '17.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    300,
    '89686611908',
    'QTELA KERIPIK TEMPE ORIG 55 G',
    6,
    0,
    1,
    5,
    '-',
    5300.00,
    6000.00,
    700.00,
    6000.00,
    700.00,
    26500.00,
    '13.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    301,
    '89686611854',
    'QTELA TEMPE CABE RAWIT 55GR',
    14,
    0,
    3,
    11,
    '-',
    6600.00,
    7000.00,
    400.00,
    21000.00,
    1200.00,
    72600.00,
    '6.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    302,
    '8997018170011',
    'JAHE MERAH AMANAH 20 GR',
    11,
    0,
    0,
    11,
    '-',
    8000.00,
    10000.00,
    2000.00,
    0.00,
    0.00,
    88000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    303,
    '8997878003122',
    'Cola Candy 125 Gr',
    1,
    0,
    1,
    0,
    '-',
    9900.00,
    11000.00,
    1100.00,
    11000.00,
    1100.00,
    0.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    304,
    '8991002304017',
    'RELAXA BARLEY MINT 50 PCS',
    0,
    0,
    0,
    0,
    '-',
    5200.00,
    6500.00,
    1300.00,
    0.00,
    0.00,
    0.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    305,
    '8991002304802',
    'RELAXA CHERRY BAG',
    0,
    0,
    0,
    0,
    '-',
    6400.00,
    7500.00,
    1100.00,
    0.00,
    0.00,
    0.00,
    '17.19%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    306,
    '8991002304413',
    'RELAXA GRAPE MINT 50 PCS',
    0,
    0,
    0,
    0,
    '-',
    4700.00,
    6000.00,
    1300.00,
    0.00,
    0.00,
    0.00,
    '27.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    307,
    '8991002303829',
    'RELAXA LEMON MINT FLAVOR',
    1,
    0,
    0,
    1,
    '-',
    4730.00,
    6000.00,
    1270.00,
    0.00,
    0.00,
    4730.00,
    '26.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    308,
    '8991002337619',
    'RELAXA LITTLE PONY GUMMY CANDY',
    2,
    0,
    0,
    2,
    '-',
    9189.00,
    11000.00,
    1811.00,
    0.00,
    0.00,
    18378.00,
    '19.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    309,
    '8991002330504',
    'RELAXA MANGO MINT FLAVOR',
    1,
    0,
    1,
    0,
    '-',
    4730.00,
    6000.00,
    1270.00,
    6000.00,
    1270.00,
    0.00,
    '26.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    310,
    '8991002337718',
    'RELAXA TRANSFORMERS GUMMY CANDY',
    1,
    0,
    1,
    0,
    '-',
    918.00,
    1000.00,
    82.00,
    1000.00,
    82.00,
    0.00,
    '8.93%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    311,
    '8996001328224',
    'TAMARIN CANDY BAG 135 GR ',
    1,
    0,
    0,
    1,
    '-',
    6200.00,
    7500.00,
    1300.00,
    0.00,
    0.00,
    6200.00,
    '20.97%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    312,
    '8991102281430',
    'SC MINTZ DOUBLEMINT 115G',
    2,
    0,
    0,
    2,
    '-',
    6200.00,
    7500.00,
    1300.00,
    0.00,
    0.00,
    12400.00,
    '20.97%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    313,
    '\'8992003785874',
    'PERMEN ZIPLONG BAG 100G (50\'S)',
    5,
    0,
    0,
    5,
    '-',
    6556.00,
    7000.00,
    444.00,
    0.00,
    0.00,
    32780.00,
    '6.77%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    314,
    '8991001502926',
    'DELFI CHACHA PEANUT RENCENG 7GR',
    1,
    0,
    0,
    1,
    '-',
    860.00,
    1000.00,
    140.00,
    0.00,
    0.00,
    860.00,
    '16.28%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    315,
    '8992727002981',
    'LAURIER ACT DAY EXTRA WING 20',
    1,
    0,
    0,
    1,
    '-',
    15075.00,
    17000.00,
    1925.00,
    0.00,
    0.00,
    15075.00,
    '12.77%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    316,
    '8992727002974',
    'LAURIER ACT DAY X-TRAWING 30 S',
    3,
    0,
    0,
    3,
    '-',
    20925.00,
    23000.00,
    2075.00,
    0.00,
    0.00,
    62775.00,
    '9.92%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    317,
    '8993189381423',
    'CHARM HERBAL SEPW 23 CM 18S',
    3,
    0,
    0,
    3,
    '-',
    14700.00,
    16500.00,
    1800.00,
    0.00,
    0.00,
    44100.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    318,
    '8993189381416',
    'CHARM HERBAL SEPW 23 CM 16S',
    2,
    0,
    0,
    2,
    '-',
    14700.00,
    16500.00,
    1800.00,
    0.00,
    0.00,
    29400.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    319,
    '8993189381430',
    'CHARM HERBAL SEPW2 26 CM 14S',
    1,
    0,
    0,
    1,
    '-',
    14700.00,
    16500.00,
    1800.00,
    0.00,
    0.00,
    14700.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    320,
    '8993189270673',
    'CHARM EXTRA MAXI 10 X 2',
    0,
    0,
    0,
    0,
    '-',
    1140.00,
    1500.00,
    360.00,
    0.00,
    0.00,
    0.00,
    '31.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    321,
    '8998866106450',
    'ZINC SHAMPOO BLACK SHINE BTL 340ML',
    2,
    0,
    0,
    2,
    '-',
    34900.00,
    36500.00,
    1600.00,
    0.00,
    0.00,
    69800.00,
    '4.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    322,
    '8998866106443',
    'ZINC SHAMPOO SOFT CARE BTL 340ML',
    2,
    0,
    0,
    2,
    '-',
    34900.00,
    36500.00,
    1600.00,
    0.00,
    0.00,
    69800.00,
    '4.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    323,
    '8992931028521',
    'TISSU MULTI TOILET',
    7,
    0,
    1,
    6,
    '-',
    3000.00,
    4000.00,
    1000.00,
    4000.00,
    1000.00,
    18000.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    324,
    '0711844340008',
    'ABC TERASI UDANG 20X4.5G',
    7,
    0,
    2,
    5,
    '-',
    6350.00,
    7000.00,
    650.00,
    14000.00,
    1300.00,
    31750.00,
    '10.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    325,
    '8997011931732',
    'DESAKU MARINASI',
    406,
    0,
    1,
    405,
    '-',
    709.00,
    1000.00,
    291.00,
    1000.00,
    291.00,
    287145.00,
    '41.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    326,
    '8997011931107',
    'Ketumbar Bubuk',
    11,
    0,
    0,
    11,
    '-',
    1000.00,
    1500.00,
    500.00,
    0.00,
    0.00,
    11000.00,
    '50.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    327,
    '8997012321228',
    'BUMBU KALDU JAMUR WANGS 40 GR',
    2,
    0,
    0,
    2,
    '-',
    4188.00,
    4500.00,
    312.00,
    0.00,
    0.00,
    8376.00,
    '7.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    328,
    '8995899250235',
    'BONCABE SAMBAL TABUR EBI KRIUK',
    6,
    0,
    0,
    6,
    '-',
    6800.00,
    7500.00,
    700.00,
    0.00,
    0.00,
    40800.00,
    '10.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    329,
    '8995899250211',
    'BONCABE SMBL TBR ORI 22.5/45',
    1,
    0,
    0,
    1,
    '-',
    6800.00,
    7500.00,
    700.00,
    0.00,
    0.00,
    6800.00,
    '10.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    330,
    '8994907001302',
    'ABC SAMBEL NUSANTARA TERASI',
    40,
    0,
    0,
    40,
    '-',
    1550.00,
    2000.00,
    450.00,
    0.00,
    0.00,
    62000.00,
    '29.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    331,
    '8993351120430',
    'GREENFIELDS YOUGHR RTD LYCHEE ML',
    1,
    0,
    0,
    1,
    '-',
    6640.00,
    7500.00,
    860.00,
    0.00,
    0.00,
    6640.00,
    '12.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    332,
    '8993351120416',
    'GREENFIELDS YOUGHR RTD STRAW 250 ML',
    2,
    0,
    0,
    2,
    '-',
    7759.00,
    8500.00,
    741.00,
    0.00,
    0.00,
    15518.00,
    '9.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    333,
    '8993351120454',
    'GREENFIELDS YOUGHR RTD PEACH 250 ML',
    3,
    0,
    0,
    3,
    '-',
    7759.00,
    8500.00,
    741.00,
    0.00,
    0.00,
    23277.00,
    '9.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    334,
    '8993351120409',
    'GREENFIELDS YOUGHR RTD BLUEBERRY 250 ML',
    0,
    0,
    0,
    0,
    '-',
    7759.00,
    8500.00,
    741.00,
    0.00,
    0.00,
    0.00,
    '9.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    335,
    '8993351120485',
    'GREENFIELDS YOUGHR RTD ORIGINAL 250 ML',
    3,
    0,
    0,
    3,
    '-',
    7759.00,
    8500.00,
    741.00,
    0.00,
    0.00,
    23277.00,
    '9.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    336,
    '8993351120492',
    'GREENFIELDS YOUGHR RTD MERBERRY 250 ML',
    0,
    0,
    0,
    0,
    '-',
    7759.00,
    8500.00,
    741.00,
    0.00,
    0.00,
    0.00,
    '9.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    337,
    '8993351120263',
    'GREENFIELDS YOUGHR POUCH MANGGO 80 GR',
    6,
    0,
    0,
    6,
    '-',
    6938.00,
    7500.00,
    562.00,
    0.00,
    0.00,
    41628.00,
    '8.10%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    338,
    '8993351120867',
    'GREENFIELDS YOUGHR POUCH MIXED BERRY 80 GR',
    8,
    0,
    0,
    8,
    '-',
    6938.00,
    7500.00,
    562.00,
    0.00,
    0.00,
    55504.00,
    '8.10%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    339,
    '8993351120362',
    'GREENFIELDS YOUGHR POUCH STRAW 80 GR',
    6,
    0,
    0,
    6,
    '-',
    6938.00,
    7500.00,
    562.00,
    0.00,
    0.00,
    41628.00,
    '8.10%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    340,
    '8996006862105',
    'FRUIT TEA KOTAK BLACK CURRENT ',
    1,
    0,
    0,
    1,
    '-',
    2417.00,
    3500.00,
    1083.00,
    0.00,
    0.00,
    2417.00,
    '44.81%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    341,
    '8996006862099',
    'FRUIT TEA KOTAK  APEL 250 ML ',
    3,
    0,
    2,
    1,
    '-',
    2355.00,
    3500.00,
    1145.00,
    7000.00,
    2290.00,
    2355.00,
    '48.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    342,
    '8996006862112',
    'FRUIT TEA  KOTAK LEMON 250 ML',
    17,
    0,
    0,
    17,
    '-',
    2355.00,
    3500.00,
    1145.00,
    0.00,
    0.00,
    40035.00,
    '48.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    343,
    '8998009050053',
    'ULTRA SR KCG IJO 250 ML ',
    0,
    0,
    0,
    0,
    '-',
    3467.00,
    4500.00,
    1033.00,
    0.00,
    0.00,
    0.00,
    '29.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    344,
    '711844162419',
    'ABC SARI KACANG HIJAU 250 ML ',
    21,
    0,
    2,
    19,
    '-',
    3875.00,
    5000.00,
    1125.00,
    10000.00,
    2250.00,
    73625.00,
    '29.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    345,
    '0711844162402',
    'ABC SARI KACANG HIJAU 200 ML',
    33,
    0,
    0,
    33,
    '-',
    3200.00,
    4000.00,
    800.00,
    0.00,
    0.00,
    105600.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    346,
    '8998009050022',
    'SARI KACANG HIJAU 150 ML',
    8,
    0,
    1,
    7,
    '-',
    2445.00,
    3200.00,
    755.00,
    3200.00,
    755.00,
    17115.00,
    '30.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    347,
    '8996006320117',
    'TEH BOTOL SOSRO  KOTAK 200 ML',
    4,
    0,
    2,
    2,
    '-',
    2400.00,
    3500.00,
    1100.00,
    7000.00,
    2200.00,
    4800.00,
    '45.83%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    348,
    '8991001111883',
    'SQ CHUNKY JAR CASHEW 30 GR',
    8,
    0,
    3,
    5,
    '-',
    7975.00,
    9000.00,
    1025.00,
    27000.00,
    3075.00,
    39875.00,
    '12.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    349,
    '8991001661739',
    'DF TREASURE ALMOND 36GR',
    45,
    0,
    5,
    40,
    '-',
    6403.00,
    7500.00,
    1097.00,
    37500.00,
    5485.00,
    256120.00,
    '17.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    350,
    '8991001502933',
    'DF CHACHA MINIS HATS 30 GR ',
    2,
    0,
    1,
    1,
    '-',
    7069.00,
    7200.00,
    131.00,
    7200.00,
    131.00,
    7069.00,
    '1.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    351,
    '8997240350274',
    'OPAO STAWBERRY 125 ML',
    15,
    0,
    0,
    15,
    '-',
    2300.00,
    3000.00,
    700.00,
    0.00,
    0.00,
    34500.00,
    '30.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    352,
    '8999908208101',
    'MY BABY POWDER ORIGINAL 100GR',
    1,
    0,
    0,
    1,
    '-',
    6050.00,
    7000.00,
    950.00,
    0.00,
    0.00,
    6050.00,
    '15.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    353,
    '055500130238',
    'SOS LANTAI FLORA',
    5,
    0,
    0,
    5,
    '-',
    9200.00,
    10500.00,
    1300.00,
    0.00,
    0.00,
    46000.00,
    '14.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    354,
    '8998866679572',
    'SOKLIN LANTAI ROSE 780 ML',
    6,
    0,
    0,
    6,
    '-',
    9200.00,
    10500.00,
    1300.00,
    0.00,
    0.00,
    55200.00,
    '14.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    355,
    '8992946533365',
    'DISHWASH WOSHI LEMON BASIL 100 ML',
    2,
    0,
    0,
    2,
    '-',
    1650.00,
    2000.00,
    350.00,
    0.00,
    0.00,
    3300.00,
    '21.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    356,
    '8993560033040',
    'HARPIC PP ORI 200 ML',
    5,
    0,
    0,
    5,
    '-',
    11800.00,
    13000.00,
    1200.00,
    0.00,
    0.00,
    59000.00,
    '10.17%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    357,
    '8998899013091',
    'BAYCLIN FRESH 500ML',
    3,
    0,
    0,
    3,
    '-',
    8300.00,
    10000.00,
    1700.00,
    0.00,
    0.00,
    24900.00,
    '20.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    358,
    '8998899013077',
    'BAYCLIN REGULER 500ML',
    1,
    0,
    0,
    1,
    '-',
    8300.00,
    10000.00,
    1700.00,
    0.00,
    0.00,
    8300.00,
    '20.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    359,
    '8992765101011',
    'GILLETTE GOAL KLIK ',
    1,
    0,
    0,
    1,
    '-',
    6533.00,
    7500.00,
    967.00,
    0.00,
    0.00,
    6533.00,
    '14.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    360,
    '4801234014315',
    'KIWI EXPRESS SHINE SPONGE BLACK 7 ML',
    3,
    0,
    0,
    3,
    '-',
    39000.00,
    41000.00,
    2000.00,
    0.00,
    0.00,
    117000.00,
    '5.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    361,
    '8997016221319',
    'MORRIS POMADE WB STRONG HOLD 80GR',
    1,
    0,
    0,
    1,
    '-',
    23500.00,
    25000.00,
    1500.00,
    0.00,
    0.00,
    23500.00,
    '6.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    362,
    '8997016221296',
    'MORRIS POMADE WB SUPREME HOLD 80GR',
    1,
    0,
    0,
    1,
    '-',
    23500.00,
    25000.00,
    1500.00,
    0.00,
    0.00,
    23500.00,
    '6.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    363,
    '8992832605756',
    'BELLAGIO POMADE SHINE & EXTREME 82GR',
    2,
    0,
    0,
    2,
    '-',
    24100.00,
    26000.00,
    1900.00,
    0.00,
    0.00,
    48200.00,
    '7.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    364,
    '8992832604667',
    'BELLAGIO POMADE SHINE & STRONG RED 80GR',
    2,
    0,
    0,
    2,
    '-',
    24100.00,
    26000.00,
    1900.00,
    0.00,
    0.00,
    48200.00,
    '7.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    365,
    '8992832606029',
    'BELLAGIO HOMME CLAY DYNAMIC RED 90GR',
    1,
    0,
    0,
    1,
    '-',
    24800.00,
    26500.00,
    1700.00,
    0.00,
    0.00,
    24800.00,
    '6.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    366,
    '8993099132979',
    'PAGODA PASTILES MINT 20 GR',
    1,
    0,
    0,
    1,
    '-',
    5217.00,
    6200.00,
    983.00,
    0.00,
    0.00,
    5217.00,
    '18.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    367,
    '8999801410106',
    'AERO ALKALIN ',
    1,
    0,
    0,
    1,
    '-',
    11900.00,
    13000.00,
    1100.00,
    0.00,
    0.00,
    11900.00,
    '9.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    368,
    '8999801310215',
    'BATU BATERAI UM 3 BIRU SINGLE',
    43,
    0,
    3,
    40,
    '-',
    2109.00,
    3000.00,
    891.00,
    9000.00,
    2673.00,
    84360.00,
    '42.25%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    369,
    '8999801310550',
    'BATU BATERAI UM 3 BIRU RENCENG',
    0,
    0,
    0,
    0,
    '-',
    4333.00,
    4800.00,
    467.00,
    0.00,
    0.00,
    0.00,
    '10.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    370,
    '886022941208',
    'BATU BATERAI  +  BLISTER 4 BUTIR',
    6,
    0,
    0,
    6,
    '-',
    8334.00,
    9000.00,
    666.00,
    0.00,
    0.00,
    50004.00,
    '7.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    371,
    '8886020033431',
    'W-3343 BGS KAPUR AJAIB',
    49,
    0,
    0,
    49,
    '-',
    2709.00,
    3500.00,
    791.00,
    0.00,
    0.00,
    132741.00,
    '29.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    372,
    '8993351120065',
    'GREENFIELDS YOUGHR POUCH ORIGINAL  80 GR',
    1,
    0,
    0,
    1,
    '-',
    6938.00,
    8000.00,
    1062.00,
    0.00,
    0.00,
    6938.00,
    '15.31%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    373,
    '8992832606012',
    'BELLAGIO HOMME CLAY MEGA BLACK 90GR',
    1,
    0,
    0,
    1,
    '-',
    24800.00,
    26000.00,
    1200.00,
    0.00,
    0.00,
    24800.00,
    '4.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    374,
    '8993200345717',
    'SOSIS KENZELER  HOT',
    4,
    0,
    4,
    0,
    '-',
    8500.00,
    9000.00,
    500.00,
    36000.00,
    2000.00,
    0.00,
    '5.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    375,
    '8997207580027',
    'GULA GUNUNG MADU BKS 1 KG',
    157,
    0,
    3,
    154,
    '-',
    14100.00,
    15000.00,
    900.00,
    45000.00,
    2700.00,
    2171400.00,
    '6.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    376,
    '8993093105009',
    'TEPUNG TAPIOKA 1 KG',
    10,
    0,
    0,
    10,
    '-',
    7200.00,
    8000.00,
    800.00,
    0.00,
    0.00,
    72000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    377,
    '8997209390341',
    'TEPUNG KETAN BOLA DELI 500 G',
    12,
    0,
    0,
    12,
    '-',
    11300.00,
    12000.00,
    700.00,
    0.00,
    0.00,
    135600.00,
    '6.19%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    378,
    '8997209390303',
    ' TEPUNG BERAS BOLA DELI 500 G',
    1,
    0,
    0,
    1,
    '-',
    6700.00,
    7500.00,
    800.00,
    0.00,
    0.00,
    6700.00,
    '11.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    379,
    '8992696426528',
    'SUSU NESTLE CARMATION 448 G',
    10,
    0,
    0,
    10,
    '-',
    13500.00,
    14500.00,
    1000.00,
    0.00,
    0.00,
    135000.00,
    '7.41%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    380,
    '8999801200030',
    'FOYU 500 GR',
    1,
    0,
    0,
    1,
    '-',
    12813.00,
    14000.00,
    1187.00,
    0.00,
    0.00,
    12813.00,
    '9.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    381,
    '8719200170995',
    'BLUE BAND 200 GR',
    1,
    0,
    0,
    1,
    '-',
    8367.00,
    9500.00,
    1133.00,
    0.00,
    0.00,
    8367.00,
    '13.54%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    382,
    '8997215750030',
    'WINCHEEZ 250 GR',
    2,
    0,
    0,
    2,
    '-',
    15000.00,
    16000.00,
    1000.00,
    0.00,
    0.00,
    30000.00,
    '6.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    383,
    '8998888110114',
    'MARJAN SIRUP COCOPANDAN',
    7,
    0,
    0,
    7,
    '-',
    17750.00,
    18500.00,
    750.00,
    0.00,
    0.00,
    124250.00,
    '4.23%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    384,
    '8991001400024',
    'VAN HTN CC PWDR 90 G',
    1,
    0,
    0,
    1,
    '-',
    20235.00,
    21500.00,
    1265.00,
    0.00,
    0.00,
    20235.00,
    '6.25%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    385,
    '8992933217117',
    'NUTRIGEL RASA JAMBU BIJI 15 GR ',
    4,
    0,
    2,
    2,
    '-',
    5250.00,
    6000.00,
    750.00,
    12000.00,
    1500.00,
    10500.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    386,
    '8992933211115',
    'NUTRIGEL RASA STRAW BIJI 15 GR ',
    8,
    0,
    0,
    8,
    '-',
    5250.00,
    6000.00,
    750.00,
    0.00,
    0.00,
    42000.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    387,
    '992855888228',
    'AGAR AGAR BOLA DUNIA',
    40,
    0,
    2,
    38,
    '-',
    4194.00,
    5000.00,
    806.00,
    10000.00,
    1612.00,
    159372.00,
    '19.22%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    388,
    '8992717102509',
    'SUN KARA SANTAN 200ML',
    5,
    0,
    0,
    5,
    '-',
    8900.00,
    9500.00,
    600.00,
    0.00,
    0.00,
    44500.00,
    '6.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    389,
    '8997024910052',
    'VANILI CAPUNG',
    28,
    0,
    0,
    28,
    '-',
    433.00,
    600.00,
    167.00,
    0.00,
    0.00,
    12124.00,
    '38.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    390,
    '8992984821127',
    'KOEPOE OVALETT B 75 GR',
    1,
    0,
    0,
    1,
    '-',
    14200.00,
    15500.00,
    1300.00,
    0.00,
    0.00,
    14200.00,
    '9.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    391,
    '8992984821110',
    'KOEPOE OVALETT K 30GR',
    5,
    0,
    0,
    5,
    '-',
    8000.00,
    9500.00,
    1500.00,
    0.00,
    0.00,
    40000.00,
    '18.75%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    392,
    '8992984820717',
    'KOEPOE SODA KUE 81GR',
    2,
    0,
    0,
    2,
    '-',
    4900.00,
    6000.00,
    1100.00,
    0.00,
    0.00,
    9800.00,
    '22.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    393,
    '3516663740001',
    'PERNIPAN 11 GR',
    16,
    0,
    0,
    16,
    '-',
    4500.00,
    5500.00,
    1000.00,
    0.00,
    0.00,
    72000.00,
    '22.22%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    394,
    '8992984821325',
    'KOEPOE SP PENGEMULSI 70 GR',
    1,
    0,
    0,
    1,
    '-',
    14400.00,
    15500.00,
    1100.00,
    0.00,
    0.00,
    14400.00,
    '7.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    395,
    '8995757019776',
    'PENA KIKY EXL',
    24,
    0,
    0,
    24,
    '-',
    1343.00,
    2500.00,
    1157.00,
    0.00,
    0.00,
    32232.00,
    '86.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    396,
    '8995757026941',
    'BISNIS FILE ',
    11,
    0,
    1,
    10,
    '-',
    3000.00,
    4000.00,
    1000.00,
    4000.00,
    1000.00,
    30000.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    397,
    '8998888710574',
    'DELMONTE EXTRA HOT PC 1 KG CHILI ',
    4,
    0,
    0,
    4,
    '-',
    19010.00,
    21000.00,
    1990.00,
    0.00,
    0.00,
    76040.00,
    '10.47%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    398,
    '8993200666607',
    'GOURMED EXTRA PEDAS 1 KG',
    8,
    0,
    0,
    8,
    '-',
    16000.00,
    18000.00,
    2000.00,
    0.00,
    0.00,
    128000.00,
    '12.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    399,
    '8998888710178',
    'DELMONTE KETCHUP 1 KG ',
    3,
    0,
    0,
    3,
    '-',
    13530.00,
    15000.00,
    1470.00,
    0.00,
    0.00,
    40590.00,
    '10.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    400,
    '711844120525',
    'ABC SAOS SAMBAL ASLI 380',
    5,
    0,
    0,
    5,
    '-',
    16000.00,
    17500.00,
    1500.00,
    0.00,
    0.00,
    80000.00,
    '9.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    401,
    '8992774875002',
    'ROYAL GOLD KECAP IKAN 725 ML',
    9,
    0,
    0,
    9,
    '-',
    32924.00,
    36000.00,
    3076.00,
    0.00,
    0.00,
    296316.00,
    '9.34%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    402,
    '8992946532009',
    'MINYAK GORENG FITRI',
    4,
    0,
    2,
    2,
    '-',
    15750.00,
    16500.00,
    750.00,
    33000.00,
    1500.00,
    31500.00,
    '4.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    403,
    '8992946532764',
    'MINYAK GORENG FITRI 450 GR',
    4,
    0,
    0,
    4,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    34000.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    404,
    '8992946532795',
    'MINYAK GORENG RIZKY 1000 ML ',
    21,
    0,
    3,
    18,
    '-',
    14417.00,
    15500.00,
    1083.00,
    46500.00,
    3249.00,
    259506.00,
    '7.51%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    405,
    '8992946531262',
    'Minyak goreng INL (900 ml)',
    8,
    0,
    0,
    8,
    '-',
    14900.00,
    15500.00,
    600.00,
    0.00,
    0.00,
    119200.00,
    '4.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    406,
    '8997226150010',
    'Minyak goreng sawit salvaco (1 liter)',
    5,
    0,
    0,
    5,
    '-',
    16440.00,
    17500.00,
    1060.00,
    0.00,
    0.00,
    82200.00,
    '6.45%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    407,
    '8997226150249',
    'Minyak goreng Sawit nusa kita ( 2 liter)',
    1,
    0,
    1,
    0,
    '-',
    33000.00,
    34500.00,
    1500.00,
    34500.00,
    1500.00,
    0.00,
    '4.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    408,
    '8992946122002',
    'TROPICAL MINYAK GORENG BOTOL 2 L',
    32,
    0,
    2,
    30,
    '-',
    35953.00,
    38000.00,
    2047.00,
    76000.00,
    4094.00,
    1078590.00,
    '5.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    409,
    '8992696521797',
    'MILO ACTIV-GO SICH 22 GR',
    17,
    0,
    2,
    15,
    '-',
    18627.00,
    20000.00,
    1373.00,
    40000.00,
    2746.00,
    279405.00,
    '7.37%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    410,
    '8992696421585',
    'NESCAFE CLASSIC 100 GR ',
    1,
    0,
    0,
    1,
    '-',
    30275.00,
    32000.00,
    1725.00,
    0.00,
    0.00,
    30275.00,
    '5.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    411,
    '8992936115045',
    'TONG TJI ORIGINAL BLACK TEA   25S',
    14,
    0,
    1,
    13,
    '-',
    6546.00,
    7500.00,
    954.00,
    7500.00,
    954.00,
    85098.00,
    '14.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    412,
    '894171101289',
    'white coffe 20 gr ',
    9,
    0,
    0,
    9,
    '-',
    1055.00,
    1500.00,
    445.00,
    0.00,
    0.00,
    9495.00,
    '42.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    413,
    '8995899203095',
    'bon cabe 35 gr',
    2,
    0,
    0,
    2,
    '-',
    8200.00,
    9000.00,
    800.00,
    0.00,
    0.00,
    16400.00,
    '9.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    414,
    '8997011930612',
    'LADAKU',
    551,
    0,
    12,
    539,
    '-',
    1000.00,
    1300.00,
    300.00,
    15600.00,
    3600.00,
    539000.00,
    '30.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    415,
    '8995757501004',
    'KERTAS KADO',
    48,
    0,
    0,
    48,
    '-',
    737.00,
    1500.00,
    763.00,
    0.00,
    0.00,
    35376.00,
    '103.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    416,
    '8995757812896',
    'BUKU KIKY 58',
    161,
    0,
    1,
    160,
    '-',
    4750.00,
    5500.00,
    750.00,
    5500.00,
    750.00,
    760000.00,
    '15.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    417,
    '8995757218308',
    'BUKU FOLIO KIKY 100',
    3,
    0,
    0,
    3,
    '-',
    18000.00,
    20000.00,
    2000.00,
    0.00,
    0.00,
    54000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    418,
    '8995757043078',
    'PAPER BAG UKURAN KECIL ',
    9,
    0,
    0,
    9,
    '-',
    987.00,
    2000.00,
    1013.00,
    0.00,
    0.00,
    8883.00,
    '102.63%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    419,
    '8995757025012',
    'PAPER BAG UKURAN BESAR',
    18,
    0,
    0,
    18,
    '-',
    3229.00,
    5000.00,
    1771.00,
    0.00,
    0.00,
    58122.00,
    '54.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    420,
    '8995757639707',
    'PEPER BAG KIKY',
    9,
    0,
    0,
    9,
    '-',
    5365.00,
    7000.00,
    1635.00,
    0.00,
    0.00,
    48285.00,
    '30.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    421,
    '8995757037961',
    'KIKY F4 7565',
    2000,
    0,
    0,
    2000,
    '-',
    250.00,
    350.00,
    100.00,
    0.00,
    0.00,
    500000.00,
    '40.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    422,
    '8995757041630',
    'ORIGAMI 14 X 14',
    25,
    0,
    0,
    25,
    '-',
    2029.00,
    3500.00,
    1471.00,
    0.00,
    0.00,
    50725.00,
    '72.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    423,
    '8995757827050',
    'AMPLOP MERPATI ',
    48,
    0,
    0,
    48,
    '-',
    250.00,
    1000.00,
    750.00,
    0.00,
    0.00,
    12000.00,
    '300.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    424,
    '8992911011240',
    'IDEAL CUTTUN BUDS ',
    1,
    0,
    0,
    1,
    '-',
    5100.00,
    6000.00,
    900.00,
    0.00,
    0.00,
    5100.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    425,
    '8992911012116',
    'CUTTON BUDS WING',
    5,
    0,
    0,
    5,
    '-',
    5100.00,
    6000.00,
    900.00,
    0.00,
    0.00,
    25500.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    426,
    '8992911041215',
    'CUTTON BUDS ADULT',
    6,
    0,
    0,
    6,
    '-',
    11700.00,
    12500.00,
    800.00,
    0.00,
    0.00,
    70200.00,
    '6.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    427,
    '8992911051337',
    'SAUDDI CHOIS CUTTON BUDS 133',
    4,
    0,
    0,
    4,
    '-',
    4600.00,
    5500.00,
    900.00,
    0.00,
    0.00,
    18400.00,
    '19.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    428,
    '8992911010488',
    'SAUDDI CHOIS CUTTON BUDS 132',
    4,
    0,
    0,
    4,
    '-',
    4600.00,
    5500.00,
    900.00,
    0.00,
    0.00,
    18400.00,
    '19.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    429,
    '8994171101289',
    'LUWAK WHITE COF RNCNG 20 GR ',
    16,
    0,
    0,
    16,
    '-',
    1055.00,
    1500.00,
    445.00,
    0.00,
    0.00,
    16880.00,
    '42.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    430,
    '8993274538015',
    'CUCU RICE CRISPIES',
    142,
    0,
    18,
    124,
    '-',
    887.00,
    1000.00,
    113.00,
    18000.00,
    2034.00,
    109988.00,
    '12.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    431,
    '8992696403413',
    'NESCAFE CLASSIC 50GR',
    1,
    0,
    0,
    1,
    '-',
    16500.00,
    18000.00,
    1500.00,
    0.00,
    0.00,
    16500.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    432,
    '8999999195649',
    'SARIWANGI TEH ASLI 25\'SX1.85G',
    34,
    0,
    0,
    34,
    '-',
    4950.00,
    6500.00,
    1550.00,
    0.00,
    0.00,
    168300.00,
    '31.31%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    433,
    '8999999027032',
    'LIFEBUOYSHP STRO 7 SH 12 X 9 ML',
    37,
    0,
    2,
    35,
    '-',
    4200.00,
    5000.00,
    800.00,
    10000.00,
    1600.00,
    147000.00,
    '19.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    434,
    '8999999571818',
    'MOLTO',
    1,
    0,
    0,
    1,
    '-',
    9650.00,
    10500.00,
    850.00,
    0.00,
    0.00,
    9650.00,
    '8.81%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    435,
    '8998866108317',
    'SHAMPO EMORON HIJAB  10 ML',
    1,
    0,
    0,
    1,
    '-',
    4681.00,
    5500.00,
    819.00,
    0.00,
    0.00,
    4681.00,
    '17.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    436,
    '8998866107578',
    'SHAMPO EMORON AVOCADO  10 ML',
    2,
    0,
    0,
    2,
    '-',
    4681.00,
    5500.00,
    819.00,
    0.00,
    0.00,
    9362.00,
    '17.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    437,
    '4902430697965',
    'REJOICE 10 ML',
    3,
    0,
    0,
    3,
    '-',
    8525.00,
    9500.00,
    975.00,
    0.00,
    0.00,
    25575.00,
    '11.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    438,
    '8999999048167',
    'SUNSILK 9 ML',
    1,
    0,
    0,
    1,
    '-',
    8525.00,
    9500.00,
    975.00,
    0.00,
    0.00,
    8525.00,
    '11.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    439,
    '8993560022020',
    'DETTOL LIQUID 95 ML ',
    2,
    0,
    0,
    2,
    '-',
    20546.00,
    22000.00,
    1454.00,
    0.00,
    0.00,
    41092.00,
    '7.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    440,
    '0388852007201',
    'SPON SUNLIKE ',
    15,
    0,
    0,
    15,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    75000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    441,
    '8999999044213',
    'ZWITSAL BABAY SHAME ',
    1,
    0,
    0,
    1,
    '-',
    17300.00,
    18500.00,
    1200.00,
    0.00,
    0.00,
    17300.00,
    '6.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    442,
    '8999999032128',
    'ZWITSAL HAIR AND BODY',
    1,
    0,
    0,
    1,
    '-',
    17300.00,
    18300.00,
    1000.00,
    0.00,
    0.00,
    17300.00,
    '5.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    443,
    '8999999559540',
    'LIFEBUOY BW LEMON FRESH PCH 90ML',
    7,
    0,
    0,
    7,
    '-',
    3850.00,
    4500.00,
    650.00,
    0.00,
    0.00,
    26950.00,
    '16.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    444,
    '8999999559533',
    'LIFEBUOY BW TOTAL 10 LD PCH 90ML',
    9,
    0,
    0,
    9,
    '-',
    3850.00,
    4500.00,
    650.00,
    0.00,
    0.00,
    34650.00,
    '16.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    445,
    '8000700000005',
    'DOVE BEAUTY CREAM 100 GR',
    1,
    0,
    0,
    1,
    '-',
    8900.00,
    9500.00,
    600.00,
    0.00,
    0.00,
    8900.00,
    '6.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    446,
    '8999999036607',
    'LUX BAR SOAP ROSE FRESH 75GR',
    8,
    0,
    0,
    8,
    '-',
    3900.00,
    4500.00,
    600.00,
    0.00,
    0.00,
    31200.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    447,
    '8999999500399',
    'LUX BAR SOAP CAMELLIA WHITE 75GR',
    3,
    0,
    0,
    3,
    '-',
    3900.00,
    4500.00,
    600.00,
    0.00,
    0.00,
    11700.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    448,
    '8999999533731',
    'CITRA BENGKOANG 70 GR',
    1,
    0,
    0,
    1,
    '-',
    7300.00,
    8300.00,
    1000.00,
    0.00,
    0.00,
    7300.00,
    '13.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    449,
    '8999999059309',
    'LIFEBOY ACTIVE SILVER 70 GR',
    3,
    0,
    0,
    3,
    '-',
    3350.00,
    4000.00,
    650.00,
    0.00,
    0.00,
    10050.00,
    '19.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    450,
    '8999999059323',
    'LIFEBUOY BAR SOAP LEMON FRESH 85GR/75GR',
    13,
    0,
    2,
    11,
    '-',
    3350.00,
    4000.00,
    650.00,
    8000.00,
    1300.00,
    36850.00,
    '19.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    451,
    '8999999059347',
    'LIFEBUOY BAR SOAP COOL FRESH 85GR/75GR',
    3,
    0,
    0,
    3,
    '-',
    3200.00,
    4000.00,
    800.00,
    0.00,
    0.00,
    9600.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    452,
    '8999999059316',
    'LIFEBUOY BAR SOAP WHITE MILD CARE 85/75GR',
    12,
    0,
    0,
    12,
    '-',
    3200.00,
    4000.00,
    800.00,
    0.00,
    0.00,
    38400.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    453,
    '4801010560500',
    'JOHNSON BABY SOAP',
    6,
    0,
    0,
    6,
    '-',
    4850.00,
    5500.00,
    650.00,
    0.00,
    0.00,
    29100.00,
    '13.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    454,
    '8992694247163',
    'ZWITSAL HONEY 70 GR',
    2,
    0,
    0,
    2,
    '-',
    25700.00,
    26700.00,
    1000.00,
    0.00,
    0.00,
    51400.00,
    '3.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    455,
    '8998866603669',
    'FRES & NATURAL BAR SOAP APPLE KIWI 70GR/65GR',
    4,
    0,
    0,
    4,
    '-',
    1600.00,
    2000.00,
    400.00,
    0.00,
    0.00,
    6400.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    456,
    '8998866603676',
    'FRES & NATURAL BAR SOAP CUCUMBER MELON 70GR/65GR',
    6,
    0,
    0,
    6,
    '-',
    1600.00,
    2000.00,
    400.00,
    0.00,
    0.00,
    9600.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    457,
    '8999999045913',
    'LIFEBUOY M.CARE BLUE 110G',
    1,
    0,
    0,
    1,
    '-',
    4275.00,
    5000.00,
    725.00,
    0.00,
    0.00,
    4275.00,
    '16.96%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    458,
    '8998866800204',
    'LUX BAR ORANGE AND MAYO 75GR',
    2,
    0,
    0,
    2,
    '-',
    1600.00,
    2000.00,
    400.00,
    0.00,
    0.00,
    3200.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    459,
    '8993189322563',
    'CHARM EXTRA COMFORT MAXI 16S',
    2,
    0,
    1,
    1,
    '-',
    14700.00,
    15500.00,
    800.00,
    15500.00,
    800.00,
    14700.00,
    '5.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    460,
    '8993189270307',
    'CHARM BODY FIT EXTRA MAXI  20\'S',
    1,
    0,
    0,
    1,
    '-',
    8700.00,
    9500.00,
    800.00,
    0.00,
    0.00,
    8700.00,
    '9.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    461,
    '8993189270420',
    'CHARM BODY FIT NIGHT WING 35CM 12\'s',
    2,
    0,
    0,
    2,
    '-',
    19000.00,
    20000.00,
    1000.00,
    0.00,
    0.00,
    38000.00,
    '5.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    462,
    '8996196005252',
    'PIATTOS BBQ 20 GR',
    24,
    0,
    3,
    21,
    '-',
    1600.00,
    2000.00,
    400.00,
    6000.00,
    1200.00,
    33600.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    463,
    '8996196005153',
    'PIATTOS  SAPI PANGGANG 20  GR',
    0,
    0,
    0,
    0,
    '-',
    1615.00,
    2000.00,
    385.00,
    0.00,
    0.00,
    0.00,
    '23.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    464,
    '8998866201377',
    'KRISBEE FRENCH FRIES 68G',
    0,
    0,
    0,
    0,
    '-',
    5250.00,
    5800.00,
    550.00,
    0.00,
    0.00,
    0.00,
    '10.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    465,
    '8993004788512',
    'SMAX BALLS COKLAT SMALL',
    20,
    0,
    3,
    17,
    '-',
    858.00,
    1000.00,
    142.00,
    3000.00,
    426.00,
    14586.00,
    '16.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    466,
    '8991002502093',
    'MAYASI PAW ROASTED CORN FLAVOR 20GR',
    21,
    0,
    0,
    21,
    '-',
    1560.00,
    2000.00,
    440.00,
    0.00,
    0.00,
    32760.00,
    '28.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    467,
    '8991002502086',
    'MAYASI PAW COKLAT FLAVOR 20 GR',
    21,
    0,
    0,
    21,
    '-',
    1560.00,
    2000.00,
    440.00,
    0.00,
    0.00,
    32760.00,
    '28.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    468,
    '8997004302457',
    'OISHI SUKI SUKI 60GRM',
    21,
    0,
    2,
    19,
    '-',
    6300.00,
    7000.00,
    700.00,
    14000.00,
    1400.00,
    119700.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    469,
    '8991001663344',
    'BAR-BAR 80G(10X8G)',
    8,
    0,
    2,
    6,
    '-',
    12280.00,
    13000.00,
    720.00,
    26000.00,
    1440.00,
    73680.00,
    '5.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    470,
    '8996196005801',
    'PIATTOS MYSTERY 68GR',
    2,
    0,
    1,
    1,
    '-',
    8275.00,
    9000.00,
    725.00,
    9000.00,
    725.00,
    8275.00,
    '8.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    471,
    '899507760562',
    'TIC TAC ORIGINAL ',
    57,
    0,
    0,
    57,
    '-',
    843.00,
    1000.00,
    157.00,
    0.00,
    0.00,
    48051.00,
    '18.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    472,
    '8995077601057',
    'SUKRO OVEN 12G',
    3,
    0,
    0,
    3,
    '-',
    843.00,
    1000.00,
    157.00,
    0.00,
    0.00,
    2529.00,
    '18.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    473,
    '8995077600579',
    'DUA KELINCI TIC TAC PDS 18 G',
    6,
    0,
    6,
    0,
    '-',
    830.00,
    1000.00,
    170.00,
    6000.00,
    1020.00,
    0.00,
    '20.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    474,
    '8993274538374',
    'CUCU CHOCO MALLOW 20 GR',
    44,
    0,
    1,
    43,
    '-',
    1875.00,
    2000.00,
    125.00,
    2000.00,
    125.00,
    80625.00,
    '6.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    475,
    '8992003786857',
    'ANTANGIN GOOD NIGHT TABLET 4\'S',
    6,
    0,
    0,
    6,
    '-',
    5800.00,
    6500.00,
    700.00,
    0.00,
    0.00,
    34800.00,
    '12.07%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    476,
    '8993365160019',
    'TJ MADU JAHE MERAH 140 ML ',
    1,
    0,
    0,
    1,
    '-',
    10000.00,
    12000.00,
    2000.00,
    0.00,
    0.00,
    10000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    477,
    '8992843103050',
    'BETADINE 5 ML ',
    6,
    0,
    0,
    6,
    '-',
    5450.00,
    7000.00,
    1550.00,
    0.00,
    0.00,
    32700.00,
    '28.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    478,
    '8996200900092',
    'HEROCYN 85 GR',
    3,
    0,
    0,
    3,
    '-',
    13696.00,
    14500.00,
    804.00,
    0.00,
    0.00,
    41088.00,
    '5.87%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    479,
    '8934868015024',
    'REXSONA DEO 10/9 GR',
    0,
    0,
    0,
    0,
    '-',
    1875.00,
    2500.00,
    625.00,
    0.00,
    0.00,
    0.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    480,
    '8999908392800',
    'MY BABY MINYAK TELON PLUS 150ML/145ML',
    1,
    0,
    0,
    1,
    '-',
    30400.00,
    31500.00,
    1100.00,
    0.00,
    0.00,
    30400.00,
    '3.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    481,
    '0000088820309',
    'CUSSON BABY PWD MILD&GENTLE 100GR',
    1,
    0,
    0,
    1,
    '-',
    6650.00,
    7500.00,
    850.00,
    0.00,
    0.00,
    6650.00,
    '12.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    482,
    '8998103000589',
    'CUSSON BABY PWD SOFT&amp;SMOOTH 100GR',
    1,
    0,
    0,
    1,
    '-',
    6650.00,
    7500.00,
    850.00,
    0.00,
    0.00,
    6650.00,
    '12.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    483,
    '8998866107464',
    'POSH BODY SPRAY FRESH SPIRIT 150ML',
    1,
    0,
    0,
    1,
    '-',
    20600.00,
    21600.00,
    1000.00,
    0.00,
    0.00,
    20600.00,
    '4.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    484,
    '8999999719418',
    'VASELINE HBL HEALTY WHITE 200 ML',
    3,
    0,
    0,
    3,
    '-',
    28200.00,
    30000.00,
    1800.00,
    0.00,
    0.00,
    84600.00,
    '6.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    485,
    '8999999052959',
    'POND\'S FACIAL FOAM WB LIGHTG 50ML',
    1,
    0,
    0,
    1,
    '-',
    18400.00,
    19500.00,
    1100.00,
    0.00,
    0.00,
    18400.00,
    '5.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    486,
    '8999999719395',
    'VASELINE UVXTRA BRIGT 100 ML',
    2,
    0,
    0,
    2,
    '-',
    29700.00,
    31000.00,
    1300.00,
    0.00,
    0.00,
    59400.00,
    '4.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    487,
    '8992856892507',
    'VITALIS BODY CAM BOOSSOM\'',
    1,
    0,
    0,
    1,
    '-',
    10600.00,
    12000.00,
    1400.00,
    0.00,
    0.00,
    10600.00,
    '13.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    488,
    '8993379284268',
    'LERVIA LOTION MILK BOTOL 200ML',
    2,
    0,
    0,
    2,
    '-',
    20350.00,
    22000.00,
    1650.00,
    0.00,
    0.00,
    40700.00,
    '8.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    489,
    '8992727003537',
    'BIORE FACIAL MEN B/W SCRUB 100ML',
    2,
    0,
    0,
    2,
    '-',
    29800.00,
    31000.00,
    1200.00,
    0.00,
    0.00,
    59600.00,
    '4.03%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    490,
    '8992727005159',
    'BIORE MEN FF ACNE ACTION 100GR',
    1,
    0,
    0,
    1,
    '-',
    30700.00,
    32000.00,
    1300.00,
    0.00,
    0.00,
    30700.00,
    '4.23%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    491,
    '8992727006330',
    'BIORE MENS BRIGHT ACT 100GR',
    1,
    0,
    0,
    1,
    '-',
    30700.00,
    32000.00,
    1300.00,
    0.00,
    0.00,
    30700.00,
    '4.23%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    492,
    '8992832601628',
    'CASABLANCA ROLL ON MEN BLACK 50ML',
    1,
    0,
    0,
    1,
    '-',
    12600.00,
    14000.00,
    1400.00,
    0.00,
    0.00,
    12600.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    493,
    '8992832602861',
    'CASABLANCA ROLL ON WMN WHITE 50ML',
    1,
    0,
    0,
    1,
    '-',
    15700.00,
    17000.00,
    1300.00,
    0.00,
    0.00,
    15700.00,
    '8.28%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    494,
    '8992832602991',
    'BELLAGIO ROLL ON STAMINA 50 ML',
    1,
    0,
    0,
    1,
    '-',
    23200.00,
    25000.00,
    1800.00,
    0.00,
    0.00,
    23200.00,
    '7.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    495,
    '8993417001260',
    'OVALE FACE LOTION ANTI ANCE 100ML',
    1,
    0,
    0,
    1,
    '-',
    16800.00,
    18000.00,
    1200.00,
    0.00,
    0.00,
    16800.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    496,
    '8993417010033',
    'OVALE FACE LOTION LEMON 100 ML',
    2,
    0,
    0,
    2,
    '-',
    16800.00,
    18000.00,
    1200.00,
    0.00,
    0.00,
    33600.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    497,
    '8993417001277',
    'OVALE FACE LOTION WHITENING 100ML',
    0,
    0,
    0,
    0,
    '-',
    16800.00,
    18000.00,
    1200.00,
    0.00,
    0.00,
    0.00,
    '7.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    498,
    '8993005212023',
    'CALADINE BABY POWDER 55 GR',
    2,
    0,
    0,
    2,
    '-',
    9334.00,
    11000.00,
    1666.00,
    0.00,
    0.00,
    18668.00,
    '17.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    499,
    '8993005123015',
    'CALADINE LOTION 60 ML',
    1,
    0,
    0,
    1,
    '-',
    15180.00,
    17000.00,
    1820.00,
    0.00,
    0.00,
    15180.00,
    '11.99%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    500,
    '8993005202208',
    'CALADINE POWDER ADULT 60 GR',
    3,
    0,
    0,
    3,
    '-',
    11665.00,
    13000.00,
    1335.00,
    0.00,
    0.00,
    34995.00,
    '11.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    501,
    '8993176111293',
    'CAP LANG K.PUTIH A.THERAPY 210ML',
    1,
    0,
    0,
    1,
    '-',
    65800.00,
    67800.00,
    2000.00,
    0.00,
    0.00,
    65800.00,
    '3.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    502,
    '8998667400931',
    'KONICARE MINYAK TELON PLUS 60ML',
    2,
    0,
    0,
    2,
    '-',
    25900.00,
    27500.00,
    1600.00,
    0.00,
    0.00,
    51800.00,
    '6.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    503,
    '8998667401068',
    'KONICARE MINYAK KAYU PUTIH PLUS 125ML',
    1,
    0,
    0,
    1,
    '-',
    49500.00,
    52000.00,
    2500.00,
    0.00,
    0.00,
    49500.00,
    '5.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    504,
    '8998667400696',
    'KONICARE MINYAK TELON 125ML',
    3,
    0,
    0,
    3,
    '-',
    43000.00,
    45000.00,
    2000.00,
    0.00,
    0.00,
    129000.00,
    '4.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    505,
    '8998667400283',
    'KONICARE MINYAK TELON BTL 60 ML',
    3,
    0,
    0,
    3,
    '-',
    21700.00,
    23500.00,
    1800.00,
    0.00,
    0.00,
    65100.00,
    '8.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    506,
    '8998667400948',
    'KONICARE MINYAK TELON PLUS 125ML',
    3,
    0,
    0,
    3,
    '-',
    50100.00,
    52000.00,
    1900.00,
    0.00,
    0.00,
    150300.00,
    '3.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    507,
    '8993366101417',
    'MINYAK KAYU PUTIH SIDOLA 100 ML',
    10,
    0,
    0,
    10,
    '-',
    49797.00,
    52000.00,
    2203.00,
    0.00,
    0.00,
    497970.00,
    '4.42%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    508,
    '8993366101219',
    'MINYAK KAYU PUTIH SIDOLA 30 ML',
    2,
    0,
    0,
    2,
    '-',
    15893.00,
    18000.00,
    2107.00,
    0.00,
    0.00,
    31786.00,
    '13.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    509,
    '8993366101318',
    'SIDOLA MINYAK KAYU PUTIH 60 ML ',
    8,
    0,
    0,
    8,
    '-',
    31664.00,
    35000.00,
    3336.00,
    0.00,
    0.00,
    253312.00,
    '10.54%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    510,
    '8997021870137',
    'FRESHCARE SPLASH FRUITY 10 ML ',
    1,
    0,
    0,
    1,
    '-',
    12831.00,
    14000.00,
    1169.00,
    0.00,
    0.00,
    12831.00,
    '9.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    511,
    '8997021871097',
    'FRESHCARE MINYAK KAYU PUTIH 10 ML',
    1,
    0,
    1,
    0,
    '-',
    12831.00,
    14000.00,
    1169.00,
    14000.00,
    1169.00,
    0.00,
    '9.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    512,
    '8997021872735',
    'CREAM HOT IN GO 100 GR',
    1,
    0,
    0,
    1,
    '-',
    22986.00,
    25000.00,
    2014.00,
    0.00,
    0.00,
    22986.00,
    '8.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    513,
    '8997021872742',
    'CREAM HOT IN STRONG GO',
    2,
    0,
    0,
    2,
    '-',
    22986.00,
    25000.00,
    2014.00,
    0.00,
    0.00,
    45972.00,
    '8.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    514,
    '8993176120066',
    'CAP LANG BALSEM AKTIF 20GR',
    2,
    0,
    0,
    2,
    '-',
    7500.00,
    9000.00,
    1500.00,
    0.00,
    0.00,
    15000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    515,
    '8992772265164',
    'ANTIS SPRAY 55 ML ',
    1,
    0,
    0,
    1,
    '-',
    11590.00,
    14000.00,
    2410.00,
    0.00,
    0.00,
    11590.00,
    '20.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    516,
    '8997021871653',
    'SANITIZER GEL MY WELL 100 ML ',
    3,
    0,
    0,
    3,
    '-',
    10041.00,
    12000.00,
    1959.00,
    0.00,
    0.00,
    30123.00,
    '19.51%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    517,
    '8994591010031',
    'CDR FRUITPUNCH 10TAB/TUBE',
    1,
    0,
    0,
    1,
    '-',
    47400.00,
    50000.00,
    2600.00,
    0.00,
    0.00,
    47400.00,
    '5.49%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    518,
    '8998667100312',
    'PROTECAL SOLID TUBE 4.5 G X 10\'S',
    1,
    0,
    0,
    1,
    '-',
    34700.00,
    37000.00,
    2300.00,
    0.00,
    0.00,
    34700.00,
    '6.63%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    519,
    '8994591070011',
    'REDOXON DOUBLE ACTION 10TAB/TUBE',
    1,
    0,
    0,
    1,
    '-',
    44200.00,
    47000.00,
    2800.00,
    0.00,
    0.00,
    44200.00,
    '6.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    520,
    '8997239630103',
    'ADEM SARI ',
    0,
    0,
    0,
    0,
    '-',
    2176.00,
    3000.00,
    824.00,
    0.00,
    0.00,
    0.00,
    '37.87%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    521,
    '8993365131538',
    'MADU TJ MURNI 150 GR ',
    2,
    0,
    0,
    2,
    '-',
    18334.00,
    20000.00,
    1666.00,
    0.00,
    0.00,
    36668.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    522,
    '8992727003803',
    'ATTACK EASY ROMANTIC FLOWER 700GR',
    3,
    0,
    0,
    3,
    '-',
    17200.00,
    18500.00,
    1300.00,
    0.00,
    0.00,
    51600.00,
    '7.56%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    523,
    '8999999518998',
    'RINSO MOLTO PURPLE 770 GR',
    1,
    0,
    0,
    1,
    '-',
    26500.00,
    28000.00,
    1500.00,
    0.00,
    0.00,
    26500.00,
    '5.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    524,
    '8999999526887',
    'RINSO MOLTO GOLD 770 GR',
    1,
    0,
    0,
    1,
    '-',
    26500.00,
    28000.00,
    1500.00,
    0.00,
    0.00,
    26500.00,
    '5.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    525,
    '8999999401238',
    'RINSO DETERGENT ANTI NODA 770 GR',
    2,
    0,
    0,
    2,
    '-',
    26500.00,
    28000.00,
    1500.00,
    0.00,
    0.00,
    53000.00,
    '5.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    526,
    '8999999570804',
    'RINSO MOLTO ROSE FRESH 460G',
    0,
    0,
    0,
    0,
    '-',
    9100.00,
    10000.00,
    900.00,
    0.00,
    0.00,
    0.00,
    '9.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    527,
    '8998866609494',
    'SOKLIN SOFTERGENT BIRU 265/260 GR',
    4,
    0,
    0,
    4,
    '-',
    4450.00,
    5000.00,
    550.00,
    0.00,
    0.00,
    17800.00,
    '12.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    528,
    '8998866609487',
    'SOKLIN SOFTERGENT PINK 265/260GR',
    2,
    0,
    0,
    2,
    '-',
    4450.00,
    5000.00,
    550.00,
    0.00,
    0.00,
    8900.00,
    '12.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    529,
    '8998866604963',
    'DAIA DETERGENT LEMON 290/280GR',
    12,
    0,
    0,
    12,
    '-',
    4500.00,
    5000.00,
    500.00,
    0.00,
    0.00,
    54000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    530,
    '8998866608459',
    'DAIA DETERGENT PUTIH 290/280GR',
    6,
    0,
    0,
    6,
    '-',
    4500.00,
    5000.00,
    500.00,
    0.00,
    0.00,
    27000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    531,
    '8998866608718',
    'DAIA SOFTENER 263 GR',
    2,
    0,
    0,
    2,
    '-',
    4500.00,
    5000.00,
    500.00,
    0.00,
    0.00,
    9000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    532,
    '8998866610261',
    'DAIA DETERGENT VIOLET 290/280GR',
    1,
    0,
    0,
    1,
    '-',
    4500.00,
    5000.00,
    500.00,
    0.00,
    0.00,
    4500.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    533,
    '8993335519397',
    'BUKRIM SUPERKLIN SENSASIPUTIHLEMBUT300GR',
    8,
    0,
    0,
    8,
    '-',
    3400.00,
    4000.00,
    600.00,
    0.00,
    0.00,
    27200.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    534,
    '8993335517881',
    'BUKRIM SUPERKLIN SENSASI BUNGA 300GR',
    7,
    0,
    0,
    7,
    '-',
    3400.00,
    4000.00,
    600.00,
    0.00,
    0.00,
    23800.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    535,
    '8998866605809',
    'SO KLIN DET SMART CLEAN WHITE 800 GR',
    4,
    0,
    0,
    4,
    '-',
    15900.00,
    17500.00,
    1600.00,
    0.00,
    0.00,
    63600.00,
    '10.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    536,
    '8998866609029',
    'DAIA DETERGENT PUTIH 555GR',
    3,
    0,
    0,
    3,
    '-',
    9300.00,
    10000.00,
    700.00,
    0.00,
    0.00,
    27900.00,
    '7.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    537,
    '8998866610278',
    'DAIA DETERGENT VIOLET 555 GR',
    1,
    0,
    0,
    1,
    '-',
    9100.00,
    10000.00,
    900.00,
    0.00,
    0.00,
    9100.00,
    '9.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    538,
    '8993335521543',
    'BUKRIM SUPERKLIN SENSASI VIOLET 300GR',
    4,
    0,
    0,
    4,
    '-',
    3400.00,
    4000.00,
    600.00,
    0.00,
    0.00,
    13600.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    539,
    '8993335521260',
    'TOTAL SOFTENER VIOLET 650 GR',
    1,
    0,
    0,
    1,
    '-',
    14400.00,
    15500.00,
    1100.00,
    0.00,
    0.00,
    14400.00,
    '7.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    540,
    '8998866607346\'',
    'DIAA PUTIH 1.7 GR',
    2,
    0,
    0,
    2,
    '-',
    38300.00,
    40000.00,
    1700.00,
    0.00,
    0.00,
    76600.00,
    '4.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    541,
    '8998866603898',
    'DAIA FLOW 1,6 KG',
    1,
    0,
    0,
    1,
    '-',
    38300.00,
    40000.00,
    1700.00,
    0.00,
    0.00,
    38300.00,
    '4.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    542,
    '8992727003803',
    'ATTACK EASY ROMANTIC FLOWER 700GR',
    3,
    0,
    0,
    3,
    '-',
    17200.00,
    18500.00,
    1300.00,
    0.00,
    0.00,
    51600.00,
    '7.56%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    543,
    '8992727002479',
    'ATTACK DET PLUS SOFTENER 800 G',
    2,
    0,
    0,
    2,
    '-',
    23000.00,
    24500.00,
    1500.00,
    0.00,
    0.00,
    46000.00,
    '6.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    544,
    '8992727001489',
    'ATTACK DETERGENT COLOR/VIOLET 800 G',
    2,
    0,
    0,
    2,
    '-',
    23000.00,
    24500.00,
    1500.00,
    0.00,
    0.00,
    46000.00,
    '6.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    545,
    '8998866612524',
    'SO KLIN SOFTERGENT WHITE & BRIGHT 1.8 KG',
    1,
    0,
    1,
    0,
    '-',
    38300.00,
    40000.00,
    1700.00,
    40000.00,
    1700.00,
    0.00,
    '4.44%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    546,
    '8998866612517',
    'SO KLIN SOFTERGENT WHITE & BRIGHT 770 GR',
    3,
    0,
    0,
    3,
    '-',
    21200.00,
    22500.00,
    1300.00,
    0.00,
    0.00,
    63600.00,
    '6.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    547,
    '8998866619271',
    'SOKLIN DET ANTISEP FRESH SCENT PCH 700GR',
    4,
    0,
    0,
    4,
    '-',
    17000.00,
    19000.00,
    2000.00,
    0.00,
    0.00,
    68000.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    548,
    '8992727005975',
    'ATTACK JAZ1 SEMERBAK CINTA 1.7 KG',
    6,
    0,
    0,
    6,
    '-',
    32000.00,
    35000.00,
    3000.00,
    0.00,
    0.00,
    192000.00,
    '9.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    549,
    '8998866803878',
    'SO KLIN DET ALL IN 1 FLORAL 900 GR',
    3,
    0,
    0,
    3,
    '-',
    14150.00,
    15500.00,
    1350.00,
    0.00,
    0.00,
    42450.00,
    '9.54%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    550,
    '8993335514293',
    'BUKRIM DET OXY KLIN HYGIENE 800G',
    4,
    0,
    0,
    4,
    '-',
    23900.00,
    26000.00,
    2100.00,
    0.00,
    0.00,
    95600.00,
    '8.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    551,
    '8999999569853',
    'SAHAJA DETERGEN BUBUK POUCH 770G',
    2,
    0,
    0,
    2,
    '-',
    15300.00,
    17000.00,
    1700.00,
    0.00,
    0.00,
    30600.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    552,
    '8992727004381',
    'ATTACK EASY ROMANTIC FLOWER 1.2KG',
    2,
    0,
    0,
    2,
    '-',
    25000.00,
    27000.00,
    2000.00,
    0.00,
    0.00,
    50000.00,
    '8.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    553,
    '8992727003681',
    'ATTACK EASY PURPLE BLOSSOM 1.2 KG',
    3,
    0,
    0,
    3,
    '-',
    25000.00,
    27000.00,
    2000.00,
    0.00,
    0.00,
    75000.00,
    '8.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    554,
    '8999999571962',
    'MOLTO SOFTENER EDP ENCHANTING PCH 720ML',
    1,
    0,
    0,
    1,
    '-',
    26000.00,
    28000.00,
    2000.00,
    0.00,
    0.00,
    26000.00,
    '7.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    555,
    '8999999571993',
    'MOLTO ULTRA PURE POUCH 720ML',
    1,
    0,
    0,
    1,
    '-',
    33000.00,
    35000.00,
    2000.00,
    0.00,
    0.00,
    33000.00,
    '6.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    556,
    '8998866618991',
    'SO KLIN ROYALE SOFT SUNNY DAY PCH 800ML',
    1,
    0,
    0,
    1,
    '-',
    24400.00,
    26500.00,
    2100.00,
    0.00,
    0.00,
    24400.00,
    '8.61%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    557,
    '8992727001687',
    'BIORE  BODY F. MEN COOL ENERGY P 250 ML',
    1,
    0,
    0,
    1,
    '-',
    13900.00,
    16000.00,
    2100.00,
    0.00,
    0.00,
    13900.00,
    '15.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    558,
    '8999999571948',
    'MOLTO ALLIN1 PINK POUCH 720 ML',
    1,
    0,
    0,
    1,
    '-',
    30500.00,
    32500.00,
    2000.00,
    0.00,
    0.00,
    30500.00,
    '6.56%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    559,
    '8998866605779',
    'RAPIKA BIANG BLUE BOTOL250ML',
    1,
    0,
    0,
    1,
    '-',
    8200.00,
    10000.00,
    1800.00,
    0.00,
    0.00,
    8200.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    560,
    '8998866604703',
    'RAPIKA BIANG PINK BOTOL250ML',
    1,
    0,
    0,
    1,
    '-',
    8200.00,
    10000.00,
    1800.00,
    0.00,
    0.00,
    8200.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    561,
    '8998866605113',
    'CLING GLAS CLEAN KUNING BTL 425ml',
    1,
    0,
    0,
    1,
    '-',
    8200.00,
    10000.00,
    1800.00,
    0.00,
    0.00,
    8200.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    562,
    '8999999570385',
    'MOLTO PEWANGI PINK POUCH 280ML',
    4,
    0,
    0,
    4,
    '-',
    4700.00,
    5500.00,
    800.00,
    0.00,
    0.00,
    18800.00,
    '17.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    563,
    '8998866609777',
    'GIV BODY WASH BENGKOANG PCH 450ML',
    1,
    0,
    0,
    1,
    '-',
    21900.00,
    24000.00,
    2100.00,
    0.00,
    0.00,
    21900.00,
    '9.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    564,
    '8998866605144',
    'CLING GLAS CLEAN LEMON BTL 425ml',
    5,
    0,
    0,
    5,
    '-',
    8200.00,
    9500.00,
    1300.00,
    0.00,
    0.00,
    41000.00,
    '15.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    565,
    '8998866806022',
    'GIV BODY WASH PINK 450ML',
    1,
    0,
    0,
    1,
    '-',
    21900.00,
    23500.00,
    1600.00,
    0.00,
    0.00,
    21900.00,
    '7.31%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    566,
    '8998866608862',
    'RAPIKA BIANG SWEET PNK 250 ML',
    1,
    0,
    0,
    1,
    '-',
    8200.00,
    9500.00,
    1300.00,
    0.00,
    0.00,
    8200.00,
    '15.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    567,
    '8998866806015',
    'GIV BODY WASH UNGU 450ML',
    1,
    0,
    0,
    1,
    '-',
    21900.00,
    24000.00,
    2100.00,
    0.00,
    0.00,
    21900.00,
    '9.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    568,
    '8998866611114',
    'Rapika B.LUXURY',
    1,
    0,
    0,
    1,
    '-',
    3200.00,
    5000.00,
    1800.00,
    0.00,
    0.00,
    3200.00,
    '56.25%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    569,
    '8993560033293',
    'VANISH PINK POUCH 150 ML ',
    2,
    0,
    0,
    2,
    '-',
    9300.00,
    10500.00,
    1200.00,
    0.00,
    0.00,
    18600.00,
    '12.90%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    570,
    '8999999570811',
    'RINSO MOLTO PURPLE 400 GR',
    4,
    0,
    0,
    4,
    '-',
    9100.00,
    10000.00,
    900.00,
    0.00,
    0.00,
    36400.00,
    '9.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    571,
    '8991102024525',
    'SIKAT GIGI FORMULA RIPPLE',
    2,
    0,
    0,
    2,
    '-',
    9100.00,
    10000.00,
    900.00,
    0.00,
    0.00,
    18200.00,
    '9.89%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    572,
    '8999999706173',
    'PEPSODENT PG WHITE 120 G',
    4,
    0,
    0,
    4,
    '-',
    7750.00,
    8500.00,
    750.00,
    0.00,
    0.00,
    31000.00,
    '9.68%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    573,
    '4902430403856',
    'ORAL B AR 123 CLEAN 40 ',
    1,
    0,
    0,
    1,
    '-',
    12950.00,
    15000.00,
    2050.00,
    0.00,
    0.00,
    12950.00,
    '15.83%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    574,
    '8991102100823',
    'FORMULA PG ACTION 190 GR',
    10,
    0,
    1,
    9,
    '-',
    9800.00,
    11000.00,
    1200.00,
    11000.00,
    1200.00,
    88200.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    575,
    '8886030422843',
    'DEE - DEE TOOTHPASTE STRAW 50 GR',
    1,
    0,
    0,
    1,
    '-',
    5945.00,
    7000.00,
    1055.00,
    0.00,
    0.00,
    5945.00,
    '17.75%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    576,
    '8886030422836',
    'DEE - DEE TOOTHPASTE ORANGE 50 GR',
    2,
    0,
    0,
    2,
    '-',
    5945.00,
    7000.00,
    1055.00,
    0.00,
    0.00,
    11890.00,
    '17.75%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    577,
    '8991111153148',
    'LISTERINE MOUNTHWASH SIWAK 250ML',
    3,
    0,
    0,
    3,
    '-',
    22500.00,
    25000.00,
    2500.00,
    0.00,
    0.00,
    67500.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    578,
    '8991991161332',
    'SENSODYNE PG FRESHMINT 100 GR',
    2,
    0,
    0,
    2,
    '-',
    30000.00,
    34000.00,
    4000.00,
    0.00,
    0.00,
    60000.00,
    '13.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    579,
    '8992695744067',
    'SENSODYNE PG MULTI ACTION 100GR',
    4,
    0,
    0,
    4,
    '-',
    32450.00,
    35000.00,
    2550.00,
    0.00,
    0.00,
    129800.00,
    '7.86%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    580,
    '8992695724069',
    'SENSODYNE PG WHITENING 100GR',
    3,
    0,
    0,
    3,
    '-',
    33850.00,
    36000.00,
    2150.00,
    0.00,
    0.00,
    101550.00,
    '6.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    581,
    '8999999706081',
    'PEPSODENT PG WHITE EKONOMIS 75GR',
    12,
    0,
    2,
    10,
    '-',
    4100.00,
    5000.00,
    900.00,
    10000.00,
    1800.00,
    41000.00,
    '21.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    582,
    '8992695554062',
    'SENSODYNE PG HERBAL 100GR',
    4,
    0,
    0,
    4,
    '-',
    31400.00,
    33500.00,
    2100.00,
    0.00,
    0.00,
    125600.00,
    '6.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    583,
    '8992695754066',
    'SENSODYNE PASTA GIGI REPAIR&PROTECT100GR',
    4,
    0,
    0,
    4,
    '-',
    40500.00,
    43000.00,
    2500.00,
    0.00,
    0.00,
    162000.00,
    '6.17%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    584,
    '8998866100168',
    'CIPTADENT PG X.COOL 190 GR',
    1,
    0,
    1,
    0,
    '-',
    9575.00,
    10500.00,
    925.00,
    10500.00,
    925.00,
    0.00,
    '9.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    585,
    '8998866105071',
    'CIPTADENT PG ICE MINT 190 GR',
    2,
    0,
    0,
    2,
    '-',
    9575.00,
    10500.00,
    925.00,
    0.00,
    0.00,
    19150.00,
    '9.66%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    586,
    '8991102100823',
    'FORMULA PG ACTION 190 GR',
    11,
    0,
    1,
    10,
    '-',
    9800.00,
    11000.00,
    1200.00,
    11000.00,
    1200.00,
    98000.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    587,
    '9310042627501',
    'SENSODYNE PG ORIGINAL 100 GR',
    4,
    0,
    0,
    4,
    '-',
    30000.00,
    33000.00,
    3000.00,
    0.00,
    0.00,
    120000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    588,
    '4800318407739',
    'SENSODYNE PG COOL GEL 100 GR',
    4,
    0,
    0,
    4,
    '-',
    30000.00,
    33000.00,
    3000.00,
    0.00,
    0.00,
    120000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    589,
    '8999999706111',
    'PEPSODENT PG WHITE 25GR',
    21,
    0,
    0,
    21,
    '-',
    1650.00,
    3000.00,
    1350.00,
    0.00,
    0.00,
    34650.00,
    '81.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    590,
    '8992779402203',
    'BYFR HNG FROZEN LIME',
    2,
    0,
    0,
    2,
    '-',
    10989.00,
    13000.00,
    2011.00,
    0.00,
    0.00,
    21978.00,
    '18.30%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    591,
    '8886020001294',
    'S-108 SWL TOILET CLR B3P',
    3,
    0,
    0,
    3,
    '-',
    13008.00,
    16000.00,
    2992.00,
    0.00,
    0.00,
    39024.00,
    '23.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    592,
    '49678',
    'SPON JARING',
    2,
    0,
    1,
    1,
    '-',
    4537.00,
    5000.00,
    463.00,
    5000.00,
    463.00,
    4537.00,
    '10.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    593,
    '8991102021081',
    'FORMULA SIKAT GIGI TRIPLE ACTION',
    3,
    0,
    0,
    3,
    '-',
    12500.00,
    13500.00,
    1000.00,
    0.00,
    0.00,
    37500.00,
    '8.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    594,
    '899279403200',
    'BYFR HNG STRAW GUM 2 GR',
    3,
    0,
    0,
    3,
    '-',
    10898.00,
    13000.00,
    2102.00,
    0.00,
    0.00,
    32694.00,
    '19.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    595,
    '8992779407307',
    'BYFR HNG C VANILA COFFE 2 GR',
    2,
    0,
    0,
    2,
    '-',
    10898.00,
    13000.00,
    2102.00,
    0.00,
    0.00,
    21796.00,
    '19.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    596,
    '8998866106979',
    'CIPTADENT SG PROTECT CHARCOAL 1PC',
    2,
    0,
    1,
    1,
    '-',
    7300.00,
    8300.00,
    1000.00,
    8300.00,
    1000.00,
    7300.00,
    '13.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    597,
    '8998866107136',
    'SYSTEMA SG BIG HD CHARCOAL 1PC',
    1,
    0,
    0,
    1,
    '-',
    13300.00,
    15000.00,
    1700.00,
    0.00,
    0.00,
    13300.00,
    '12.78%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    598,
    '8991102022347',
    'FORMULA SG RIPPLE SOFT ',
    0,
    0,
    0,
    0,
    '-',
    2717.00,
    3500.00,
    783.00,
    0.00,
    0.00,
    0.00,
    '28.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    599,
    '8991111152080',
    'LISTERINE MOUTHWASH GREEN TEA 250ML',
    3,
    0,
    0,
    3,
    '-',
    24000.00,
    27000.00,
    3000.00,
    0.00,
    0.00,
    72000.00,
    '12.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    600,
    '007201',
    'SPON SUNLIKE ',
    15,
    0,
    0,
    15,
    '-',
    4500.00,
    5000.00,
    500.00,
    0.00,
    0.00,
    67500.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    601,
    '8999908302502',
    'TOTALCARE MOUTHWASH ORI HERBS250M',
    2,
    0,
    0,
    2,
    '-',
    11500.00,
    14000.00,
    2500.00,
    0.00,
    0.00,
    23000.00,
    '21.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    602,
    '8991102020152',
    'FORMULA SG DBL ACTION SFT ',
    8,
    0,
    0,
    8,
    '-',
    2842.00,
    3500.00,
    658.00,
    0.00,
    0.00,
    22736.00,
    '23.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    603,
    '8992779405303',
    'BYFR HNG ORANGE PULPY 2 GR',
    1,
    0,
    0,
    1,
    '-',
    10898.00,
    13000.00,
    2102.00,
    0.00,
    0.00,
    10898.00,
    '19.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    604,
    '8992745120476',
    'HIT AEROSOL ORANGE 600 ML ',
    1,
    0,
    0,
    1,
    '-',
    32400.00,
    35000.00,
    2600.00,
    0.00,
    0.00,
    32400.00,
    '8.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    605,
    '8999999406929',
    'SUPER PELL P.LT GREEN PCH 770 ML',
    6,
    0,
    0,
    6,
    '-',
    13800.00,
    15500.00,
    1700.00,
    0.00,
    0.00,
    82800.00,
    '12.32%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    606,
    '0055500130207',
    'SOS P.LANTAI APPLE PCH 750 ML',
    5,
    0,
    0,
    5,
    '-',
    9200.00,
    10000.00,
    800.00,
    0.00,
    0.00,
    46000.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    607,
    '055500130245',
    'SOS P. LANTAI VIOLET 750 ML',
    6,
    0,
    0,
    6,
    '-',
    9200.00,
    10500.00,
    1300.00,
    0.00,
    0.00,
    55200.00,
    '14.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    608,
    '8999999406912',
    'SUPER PELL P.LT RED PCH 770 ML',
    5,
    0,
    0,
    5,
    '-',
    13800.00,
    15000.00,
    1200.00,
    0.00,
    0.00,
    69000.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    609,
    '8998866603539',
    'SOKLIN LANTAI FLOREL LEVENDER 780 ML ',
    6,
    0,
    0,
    6,
    '-',
    9200.00,
    10500.00,
    1300.00,
    0.00,
    0.00,
    55200.00,
    '14.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    610,
    '8999999407919',
    'WIPOL CLASSIC PINE POUCH 780 ML',
    4,
    0,
    0,
    4,
    '-',
    18800.00,
    21000.00,
    2200.00,
    0.00,
    0.00,
    75200.00,
    '11.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    611,
    '8998866679602',
    'SOKLIN LANTAI APLE DAN VIONI 780 ML ',
    5,
    0,
    0,
    5,
    '-',
    9200.00,
    10500.00,
    1300.00,
    0.00,
    0.00,
    46000.00,
    '14.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    612,
    '8992946533372',
    'DISHWASH WOSHI LEMON BASIL 200 ML',
    6,
    0,
    0,
    6,
    '-',
    4200.00,
    5000.00,
    800.00,
    0.00,
    0.00,
    25200.00,
    '19.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    613,
    '8993560033477',
    'VANISH PINK SCT 60 ML VB',
    54,
    0,
    0,
    54,
    '-',
    3400.00,
    4000.00,
    600.00,
    0.00,
    0.00,
    183600.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    614,
    '8993560033583',
    'VANISH WHITE 60ML SCT VB ',
    24,
    0,
    0,
    24,
    '-',
    3500.00,
    4000.00,
    500.00,
    0.00,
    0.00,
    84000.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    615,
    '8998866603645',
    'WINGS PORCELAIN HIJAU BTL 780 ML',
    1,
    0,
    0,
    1,
    '-',
    13800.00,
    15000.00,
    1200.00,
    0.00,
    0.00,
    13800.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    616,
    '8993560033095',
    'HARFIX 450 ML',
    5,
    0,
    0,
    5,
    '-',
    18950.00,
    21000.00,
    2050.00,
    0.00,
    0.00,
    94750.00,
    '10.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    617,
    '8998899013114',
    'bayclin 100 LEMONml ',
    1,
    0,
    0,
    1,
    '-',
    21000.00,
    23000.00,
    2000.00,
    0.00,
    0.00,
    21000.00,
    '9.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    618,
    '8992745120407',
    'HIT AEROSOL ORANGE 200 ML ',
    2,
    0,
    0,
    2,
    '-',
    15500.00,
    17000.00,
    1500.00,
    0.00,
    0.00,
    31000.00,
    '9.68%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    619,
    '8992747180126',
    'VIXAL PORSELEN BIRU BTL470ML',
    1,
    0,
    0,
    1,
    '-',
    16500.00,
    18500.00,
    2000.00,
    0.00,
    0.00,
    16500.00,
    '12.12%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    620,
    '8999999042646',
    'RINSO MOLTO DET LIQ SACHET 6X40 ML',
    8,
    0,
    0,
    8,
    '-',
    4875.00,
    5500.00,
    625.00,
    0.00,
    0.00,
    39000.00,
    '12.82%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    621,
    '8999999514495',
    'RINSO MOLTO LIQ ROSE FRESH 215ML',
    3,
    0,
    0,
    3,
    '-',
    4350.00,
    5000.00,
    650.00,
    0.00,
    0.00,
    13050.00,
    '14.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    622,
    '8998899013015',
    'BACKIN 100 ML REGULAR\'',
    6,
    0,
    0,
    6,
    '-',
    23000.00,
    26000.00,
    3000.00,
    0.00,
    0.00,
    138000.00,
    '13.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    623,
    '8998899013084',
    'BAYCLIN LEMON 500ML',
    2,
    0,
    0,
    2,
    '-',
    8300.00,
    10000.00,
    1700.00,
    0.00,
    0.00,
    16600.00,
    '20.48%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    624,
    '8998899013121',
    'BAYCLIN FRESS 1000ML',
    1,
    0,
    0,
    1,
    '-',
    21000.00,
    23000.00,
    2000.00,
    0.00,
    0.00,
    21000.00,
    '9.52%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    625,
    '8998866100717',
    'MAMA LEMON POUCH 780 ML',
    3,
    0,
    1,
    2,
    '-',
    16500.00,
    17500.00,
    1000.00,
    17500.00,
    1000.00,
    33000.00,
    '6.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    626,
    '8992727005296',
    'ATTACK JAZ1 SEMERBAK SEGAR 6X50GR',
    10,
    0,
    0,
    10,
    '-',
    4900.00,
    5500.00,
    600.00,
    0.00,
    0.00,
    49000.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    627,
    '8999999558079',
    'RINSO MOLTO ULTRA SACHET 6X44/42GR',
    2,
    0,
    0,
    2,
    '-',
    4900.00,
    5500.00,
    600.00,
    0.00,
    0.00,
    9800.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    628,
    '8999999571818',
    'MOLTO ALLIN1 BLUE SCH12X20ML',
    1,
    0,
    0,
    1,
    '-',
    9650.00,
    12000.00,
    2350.00,
    0.00,
    0.00,
    9650.00,
    '24.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    629,
    '8992946533389',
    'DISHWASH WOSHI LEMON BASIL 390 ML',
    1,
    0,
    0,
    1,
    '-',
    7200.00,
    8000.00,
    800.00,
    0.00,
    0.00,
    7200.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    630,
    '8999999558062',
    'RINSO ANTI NODA SACHET 6X44/42GR',
    4,
    0,
    0,
    4,
    '-',
    4900.00,
    5500.00,
    600.00,
    0.00,
    0.00,
    19600.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    631,
    '8998866601146',
    'DANGDUT S.CREAM 400K JERUK 128GR',
    1,
    0,
    0,
    1,
    '-',
    925.00,
    1500.00,
    575.00,
    0.00,
    0.00,
    925.00,
    '62.16%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    632,
    '8998866612999',
    'EKONOMI CREAM PINK FLOWER 500K 174/168 GR',
    12,
    0,
    0,
    12,
    '-',
    1725.00,
    2000.00,
    275.00,
    0.00,
    0.00,
    20700.00,
    '15.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    633,
    '8998866611138',
    'EKONOMI CREAM  VIOLET 350K 80/77GR',
    0,
    0,
    0,
    0,
    '-',
    850.00,
    1000.00,
    150.00,
    0.00,
    0.00,
    0.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    634,
    '8999999059781',
    'SUNLIGHT LIQ LIME PCH 210ML',
    6,
    0,
    1,
    5,
    '-',
    4475.00,
    5000.00,
    525.00,
    5000.00,
    525.00,
    22375.00,
    '11.73%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    635,
    '8999999050009',
    'SUNLIGHT LIQUID LIME PCH 95/105 ML',
    44,
    0,
    3,
    41,
    '-',
    1725.00,
    2000.00,
    275.00,
    6000.00,
    825.00,
    70725.00,
    '15.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    636,
    '8992946533303',
    'DISHWASH WOSHI GREEN TEA 100 ML',
    2,
    0,
    0,
    2,
    '-',
    1650.00,
    2000.00,
    350.00,
    0.00,
    0.00,
    3300.00,
    '21.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    637,
    '8998866105781',
    'ZINC SHP BLACK & SHINE BTL 170ML',
    1,
    0,
    0,
    1,
    '-',
    12600.00,
    14000.00,
    1400.00,
    0.00,
    0.00,
    12600.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    638,
    '8998866105750',
    'ZINC SHP CLEAN & ACTIVE BTL 170ML',
    3,
    0,
    0,
    3,
    '-',
    19900.00,
    22000.00,
    2100.00,
    0.00,
    0.00,
    59700.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    639,
    '8998866105767',
    'ZINC SHP SOFT SHINE BTL 170M',
    3,
    0,
    0,
    3,
    '-',
    19900.00,
    22000.00,
    2100.00,
    0.00,
    0.00,
    59700.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    640,
    '8998866105743',
    'ZINC SHP REFRESHING COOL BTL 170ML',
    1,
    0,
    0,
    1,
    '-',
    19900.00,
    22000.00,
    2100.00,
    0.00,
    0.00,
    19900.00,
    '10.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    641,
    '8999999036638',
    'LUX BAR SOAP VELVET JASMINE  75GR',
    10,
    0,
    0,
    10,
    '-',
    3800.00,
    4500.00,
    700.00,
    0.00,
    0.00,
    38000.00,
    '18.42%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    642,
    '8992745470151',
    'SANITER BARSOAPCOOLFRESSBLUE',
    1,
    0,
    0,
    1,
    '-',
    5500.00,
    6500.00,
    1000.00,
    0.00,
    0.00,
    5500.00,
    '18.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    643,
    '8888103200013',
    'CUSSEN BABY 75 GR',
    1,
    0,
    0,
    1,
    '-',
    11300.00,
    13000.00,
    1700.00,
    0.00,
    0.00,
    11300.00,
    '15.04%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    644,
    '8999999031107',
    'LUX BAR SOAP LILY FRESH 75GR',
    8,
    0,
    0,
    8,
    '-',
    3900.00,
    4500.00,
    600.00,
    0.00,
    0.00,
    31200.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    645,
    'A1',
    'RAJA UDANG 5 KG',
    9,
    2,
    11,
    0,
    '-',
    71375.00,
    75000.00,
    3625.00,
    825000.00,
    39875.00,
    0.00,
    '5.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    646,
    'A2',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    11,
    0,
    8,
    3,
    '-',
    3280.00,
    4500.00,
    1220.00,
    36000.00,
    9760.00,
    9840.00,
    '37.20%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    647,
    'A3',
    'MARGARIN AMANDA POLOS 500 GR ',
    0,
    12,
    7,
    5,
    '-',
    10000.00,
    11500.00,
    1500.00,
    80500.00,
    10500.00,
    50000.00,
    '15.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    648,
    'A4',
    'KOPI JEMPOL 225 G',
    10,
    0,
    4,
    6,
    '-',
    16750.00,
    20000.00,
    3250.00,
    80000.00,
    13000.00,
    100500.00,
    '19.40%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    649,
    'A5',
    'PANIR',
    8,
    0,
    1,
    7,
    '-',
    10000.00,
    12000.00,
    2000.00,
    12000.00,
    2000.00,
    70000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    650,
    'A6',
    'CAKRA KEMBAR CURAH',
    12,
    1,
    1,
    12,
    '-',
    11500.00,
    12500.00,
    1000.00,
    12500.00,
    1000.00,
    138000.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    651,
    'A7',
    'SUSU KUE',
    2,
    3,
    1,
    4,
    '-',
    12500.00,
    14000.00,
    1500.00,
    14000.00,
    1500.00,
    50000.00,
    '12.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    652,
    'A8',
    'COKLAT BATANG DUNIA ',
    2,
    7,
    2,
    7,
    '-',
    28000.00,
    31000.00,
    3000.00,
    62000.00,
    6000.00,
    196000.00,
    '10.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    653,
    'A9',
    'SENDOK BEBEK BUTEK',
    12,
    9,
    5,
    16,
    '-',
    7000.00,
    8500.00,
    1500.00,
    42500.00,
    7500.00,
    112000.00,
    '21.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    654,
    'A10',
    'PIPET DRINKING ',
    3,
    0,
    0,
    3,
    '-',
    7000.00,
    8500.00,
    1500.00,
    0.00,
    0.00,
    21000.00,
    '21.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    655,
    'A11',
    'KOTAK ',
    4,
    0,
    0,
    4,
    '-',
    28000.00,
    31000.00,
    3000.00,
    0.00,
    0.00,
    112000.00,
    '10.71%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    656,
    'A12',
    'MANGKOK PLASTIK ',
    22,
    0,
    2,
    20,
    '-',
    22900.00,
    25000.00,
    2100.00,
    50000.00,
    4200.00,
    458000.00,
    '9.17%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    657,
    'A13',
    'SANDAL SWALOW',
    5,
    0,
    0,
    5,
    '-',
    12659.00,
    14000.00,
    1341.00,
    0.00,
    0.00,
    63295.00,
    '10.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    658,
    'A14',
    'MAP ZET AIR MAIL Z 310 ',
    50,
    0,
    0,
    50,
    '-',
    629.00,
    1000.00,
    371.00,
    0.00,
    0.00,
    31450.00,
    '58.98%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    659,
    'A15',
    'KERTAS FOLIO PER LEMBAR',
    96,
    0,
    0,
    96,
    '-',
    204.00,
    300.00,
    96.00,
    0.00,
    0.00,
    19584.00,
    '47.06%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    660,
    'A16',
    'MATERAI ',
    14,
    0,
    3,
    11,
    '-',
    10000.00,
    12000.00,
    2000.00,
    36000.00,
    6000.00,
    110000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    661,
    'A17',
    'MASKER DUCKPILL 5 PCS',
    30,
    0,
    2,
    28,
    '-',
    4500.00,
    5000.00,
    500.00,
    10000.00,
    1000.00,
    126000.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    662,
    'A18',
    'MINYAK KAYU PUTIH SIDOLA 15 ML ',
    10,
    0,
    1,
    9,
    '-',
    9047.00,
    12000.00,
    2953.00,
    12000.00,
    2953.00,
    81423.00,
    '32.64%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    663,
    'A19',
    'SPON KAWAT ',
    9,
    0,
    1,
    8,
    '-',
    5000.00,
    5500.00,
    500.00,
    5500.00,
    500.00,
    40000.00,
    '10.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    664,
    '8994365205557',
    'TRIPANCA 1.5LT',
    84,
    0,
    14,
    70,
    '-',
    2500.00,
    4500.00,
    2000.00,
    63000.00,
    28000.00,
    175000.00,
    '80.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    665,
    '8995077600562',
    'TICTAC ORI',
    1,
    0,
    3,
    -2,
    '-',
    810.00,
    1000.00,
    190.00,
    3000.00,
    570.00,
    -1620.00,
    '23.46%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    666,
    '8996001356753',
    'ASTOR SINGLES',
    4,
    0,
    4,
    0,
    '-',
    934.00,
    1500.00,
    566.00,
    6000.00,
    2264.00,
    0.00,
    '60.60%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    667,
    '8992761166212',
    'FRESTEA APLE 350ML',
    7,
    0,
    1,
    6,
    '-',
    3086.00,
    4000.00,
    914.00,
    4000.00,
    914.00,
    18516.00,
    '29.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    668,
    '8993351124001',
    'GREENFIELDS FULL CREAM 250ML',
    1,
    0,
    0,
    1,
    '-',
    6127.00,
    7000.00,
    873.00,
    0.00,
    0.00,
    6127.00,
    '14.25%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    669,
    '8991001503336',
    'CHACHA',
    0,
    0,
    0,
    0,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    670,
    '8993200668243',
    'SOSIS GOCHUJANG',
    1,
    0,
    1,
    0,
    '-',
    8500.00,
    9000.00,
    500.00,
    9000.00,
    500.00,
    0.00,
    '5.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    671,
    '8993200668496',
    'BAKSO ORIGINAL ',
    1,
    0,
    0,
    1,
    '-',
    8500.00,
    9000.00,
    500.00,
    0.00,
    0.00,
    8500.00,
    '5.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    672,
    '8993200347315',
    'SOSIS MINI',
    0,
    0,
    0,
    0,
    '-',
    8500.00,
    9000.00,
    500.00,
    0.00,
    0.00,
    0.00,
    '5.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    673,
    '8994365405551',
    'TRIPANCA GELAS DUS',
    9,
    0,
    2,
    7,
    '-',
    18000.00,
    21000.00,
    3000.00,
    42000.00,
    6000.00,
    126000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    674,
    '8997207990055',
    'TRIPANCA 600ML',
    225,
    0,
    146,
    79,
    '-',
    1250.00,
    2000.00,
    750.00,
    292000.00,
    109500.00,
    98750.00,
    '60.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    675,
    '8993351124209',
    'GREENFIELDS UHT STRAWBERRY 250ML',
    6,
    0,
    1,
    5,
    '-',
    5999.00,
    7000.00,
    1001.00,
    7000.00,
    1001.00,
    29995.00,
    '16.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    676,
    '899118937073',
    'MIE KREMEZZ SHORR S.BALADO 16 GR',
    27,
    0,
    0,
    27,
    '-',
    1500.00,
    2000.00,
    500.00,
    0.00,
    0.00,
    40500.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    677,
    '-',
    'GREENFIELDS CHOCOMALT MILK 200ML',
    0,
    0,
    0,
    0,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    678,
    '8993351122403',
    'GREENFIELDS EXTRA CHOCHOMALT MILK 200ML',
    6,
    0,
    0,
    6,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    36000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    679,
    '\'8993351122427',
    'GREENFILEDS EXTRA VANILLA CHAMOMILE MILK 200ML',
    7,
    0,
    0,
    7,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    42000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    680,
    '8993351122434',
    'GREENFIELDS HONEY EARL GREY 200ML',
    7,
    0,
    0,
    7,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    42000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    681,
    '8993351122618',
    'GREENFIELDS CHOCOLATE 250ML',
    21,
    0,
    0,
    21,
    '-',
    5999.00,
    7000.00,
    1001.00,
    0.00,
    0.00,
    125979.00,
    '16.69%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    682,
    '8993351124117',
    'GREENFIELDS CHOCOMALT MILK 200ML',
    4,
    0,
    0,
    4,
    '-',
    6000.00,
    6500.00,
    500.00,
    0.00,
    0.00,
    24000.00,
    '8.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    683,
    '95502489',
    'KIT KAT 17GR',
    0,
    0,
    0,
    0,
    '-',
    2590.00,
    3500.00,
    910.00,
    0.00,
    0.00,
    0.00,
    '35.14%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    684,
    '8991115012106',
    'BIG BABOL STRAWBERRY 20GR',
    6,
    8,
    1,
    13,
    '-',
    2000.00,
    2500.00,
    500.00,
    2500.00,
    500.00,
    26000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    685,
    '8991115011109',
    'BIG BABOL BLUEBERRY 20GR',
    2,
    6,
    1,
    7,
    '-',
    2000.00,
    2500.00,
    500.00,
    2500.00,
    500.00,
    14000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    686,
    '8991115010102',
    'BIG BABOL TUTTIFRUTTI 20GR',
    5,
    10,
    2,
    13,
    '-',
    2000.00,
    2500.00,
    500.00,
    5000.00,
    1000.00,
    26000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    687,
    '8990800022550',
    'MENTOS FRUIT 29GR',
    4,
    0,
    2,
    2,
    '-',
    2358.00,
    2500.00,
    142.00,
    5000.00,
    284.00,
    4716.00,
    '6.02%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    688,
    '8990800024844',
    'CHUPA CHUPS 9GR',
    27,
    0,
    6,
    21,
    '-',
    834.00,
    1000.00,
    166.00,
    6000.00,
    996.00,
    17514.00,
    '19.90%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    689,
    '8990800024059',
    'CHUPACHUPS BABOL STOBERI 12GR',
    0,
    0,
    0,
    0,
    '-',
    1459.00,
    2000.00,
    541.00,
    0.00,
    0.00,
    0.00,
    '37.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    690,
    '8990800024042',
    'CHUPACHUPS BABOL COLA 12GR',
    3,
    0,
    3,
    0,
    '-',
    1459.00,
    2000.00,
    541.00,
    6000.00,
    1623.00,
    0.00,
    '37.08%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    691,
    'A20',
    'BERAS RAJA UDANG 10 KG',
    3,
    0,
    3,
    0,
    '-',
    142750.00,
    145000.00,
    2250.00,
    435000.00,
    6750.00,
    0.00,
    '1.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    692,
    '8998009010552',
    'ULTRAMILK FULL CREAM 200ML',
    10,
    0,
    6,
    4,
    '-',
    4430.00,
    5500.00,
    1070.00,
    33000.00,
    6420.00,
    17720.00,
    '24.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    693,
    '8998009010224',
    'ULTRAMILK FULL CREAM 250ML',
    0,
    0,
    0,
    0,
    '-',
    4855.00,
    6000.00,
    1145.00,
    0.00,
    0.00,
    0.00,
    '23.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    694,
    'A21',
    'SEBLAK',
    20,
    0,
    7,
    13,
    '-',
    4500.00,
    5000.00,
    500.00,
    35000.00,
    3500.00,
    58500.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    695,
    'A22',
    'BASRENG ORI',
    0,
    0,
    0,
    0,
    '-',
    9500.00,
    10000.00,
    500.00,
    0.00,
    0.00,
    0.00,
    '5.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    696,
    'A23',
    'BASRENG PEDAS',
    0,
    0,
    0,
    0,
    '-',
    9500.00,
    10000.00,
    500.00,
    0.00,
    0.00,
    0.00,
    '5.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    697,
    'A24',
    'USUS',
    1,
    0,
    0,
    1,
    '-',
    12500.00,
    13000.00,
    500.00,
    0.00,
    0.00,
    12500.00,
    '4.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    698,
    'A25',
    'SUSU KEDELAI',
    11,
    20,
    31,
    0,
    '-',
    1600.00,
    2000.00,
    400.00,
    62000.00,
    12400.00,
    0.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    699,
    'A26',
    'ROTI MANIS WANDA',
    0,
    0,
    0,
    0,
    '-',
    3500.00,
    4000.00,
    500.00,
    0.00,
    0.00,
    0.00,
    '14.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    700,
    '8997004302600',
    'OISHI POPPY POP JAGUNG BAKAR',
    0,
    0,
    0,
    0,
    '-',
    6300.00,
    7000.00,
    700.00,
    0.00,
    0.00,
    0.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    701,
    'A27',
    'BAR-BAR KECIL 80GR',
    10,
    0,
    2,
    8,
    '-',
    1150.00,
    1500.00,
    350.00,
    3000.00,
    700.00,
    9200.00,
    '30.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    702,
    '8993351173047',
    'GREENFIELDS STR 105ML DUS',
    1,
    0,
    0,
    1,
    '-',
    116817.00,
    121000.00,
    4183.00,
    0.00,
    0.00,
    116817.00,
    '3.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    703,
    '8992761166052',
    'FRESTEA MELATI 350 ML',
    78,
    0,
    4,
    74,
    '-',
    3086.00,
    4000.00,
    914.00,
    16000.00,
    3656.00,
    228364.00,
    '29.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    704,
    'A28',
    'PERUNCING JOYKO',
    3,
    0,
    0,
    3,
    '-',
    1500.00,
    2500.00,
    1000.00,
    0.00,
    0.00,
    4500.00,
    '66.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    705,
    '8993988690047',
    'PENGHAPUS JOYKO',
    10,
    0,
    0,
    10,
    '-',
    950.00,
    2000.00,
    1050.00,
    0.00,
    0.00,
    9500.00,
    '110.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    706,
    '1100120010473',
    'PULPEN STANDART AE7',
    12,
    0,
    0,
    12,
    '-',
    1565.00,
    2500.00,
    935.00,
    0.00,
    0.00,
    18780.00,
    '59.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    707,
    '8993988282044',
    'PULPEN GEL JOYKO',
    11,
    0,
    8,
    3,
    '-',
    1491.00,
    3000.00,
    1509.00,
    24000.00,
    12072.00,
    4473.00,
    '101.21%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    708,
    '8992761002022',
    'SPRITE 390ML',
    38,
    0,
    5,
    33,
    '-',
    4616.00,
    5500.00,
    884.00,
    27500.00,
    4420.00,
    152328.00,
    '19.15%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    709,
    '8992907420017',
    'SARI ROTI KRIM COKLAT 66GR',
    0,
    0,
    0,
    0,
    '-',
    5400.00,
    6000.00,
    600.00,
    0.00,
    0.00,
    0.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    710,
    '8992907952143',
    'SARI ROTI KRIM KEJU CHEES 66GR',
    0,
    0,
    0,
    0,
    '-',
    5400.00,
    6000.00,
    600.00,
    0.00,
    0.00,
    0.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    711,
    '8992907230012',
    'SARI ROTI CHOCO BUN 55GR',
    0,
    0,
    1,
    -1,
    '-',
    3150.00,
    3500.00,
    350.00,
    3500.00,
    350.00,
    -3150.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    712,
    '8992907952037',
    'SARI ROTI CHOCO CHEESE BUN 55GR',
    1,
    0,
    2,
    -1,
    '-',
    3600.00,
    4000.00,
    400.00,
    8000.00,
    800.00,
    -3600.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    713,
    '8992907952334',
    'SARI ROTI SANDWICH KRIM KEJU 46GR',
    0,
    0,
    1,
    -1,
    '-',
    5400.00,
    6000.00,
    600.00,
    6000.00,
    600.00,
    -5400.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    714,
    '8992907952327',
    'SARI ROTI SANDWICH COKLAT 46GR',
    0,
    0,
    1,
    -1,
    '-',
    5400.00,
    6000.00,
    600.00,
    6000.00,
    600.00,
    -5400.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    715,
    '8993988065029',
    'PAPER CLIP 100PC',
    2,
    0,
    0,
    2,
    '-',
    2900.00,
    4000.00,
    1100.00,
    0.00,
    0.00,
    5800.00,
    '37.93%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    716,
    '8993988280842',
    'ISI GEL PEN JOYKO',
    5,
    0,
    0,
    5,
    '-',
    680.00,
    1500.00,
    820.00,
    0.00,
    0.00,
    3400.00,
    '120.59%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    717,
    '8993988111078',
    'GLUE  LEM CAIR JOYKO',
    4,
    0,
    0,
    4,
    '-',
    1520.00,
    2500.00,
    980.00,
    0.00,
    0.00,
    6080.00,
    '64.47%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    718,
    '8993988052791',
    'TIPE X JOYKO',
    5,
    0,
    0,
    5,
    '-',
    1550.00,
    2500.00,
    950.00,
    0.00,
    0.00,
    7750.00,
    '61.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    719,
    '8993988130123',
    'STABILO JOYKO BIRU PASTEL',
    1,
    0,
    0,
    1,
    '-',
    3400.00,
    4500.00,
    1100.00,
    0.00,
    0.00,
    3400.00,
    '32.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    720,
    '8993988130130',
    'STABILO JOYKO HIJAU PASTEL',
    1,
    0,
    0,
    1,
    '-',
    3400.00,
    4500.00,
    1100.00,
    0.00,
    0.00,
    3400.00,
    '32.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    721,
    '8993988130086',
    'STABILO JOYKO KUNING PASTEL',
    1,
    0,
    0,
    1,
    '-',
    3400.00,
    4500.00,
    1100.00,
    0.00,
    0.00,
    3400.00,
    '32.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    722,
    '8993988130116',
    'STABILO JOYKO UNGU PASTEL',
    1,
    0,
    0,
    1,
    '-',
    3400.00,
    4500.00,
    1100.00,
    0.00,
    0.00,
    3400.00,
    '32.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    723,
    '8993988130109',
    'STABILO JOYKO ORENS PASTEL',
    1,
    0,
    0,
    1,
    '-',
    3400.00,
    4500.00,
    1100.00,
    0.00,
    0.00,
    3400.00,
    '32.35%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    724,
    '8993988286059',
    'PENSIL 2B JOYKO',
    11,
    0,
    0,
    11,
    '-',
    671.00,
    1500.00,
    829.00,
    0.00,
    0.00,
    7381.00,
    '123.55%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    725,
    'A29',
    'ISOLASI KECIL BENING',
    12,
    0,
    3,
    9,
    '-',
    437.00,
    1000.00,
    563.00,
    3000.00,
    1689.00,
    3933.00,
    '128.83%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    726,
    '8993189270277',
    'CHARM EXTRA MAXI 1PCS SACHET',
    3,
    0,
    2,
    1,
    '-',
    430.00,
    1000.00,
    570.00,
    2000.00,
    1140.00,
    430.00,
    '132.56%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    727,
    '8993200668984',
    'BAKSO KANZLER HOT',
    2,
    0,
    10,
    -8,
    '-',
    8500.00,
    9000.00,
    500.00,
    90000.00,
    5000.00,
    -68000.00,
    '5.88%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    728,
    '8996001600849',
    'NIPIS MADU 330ML',
    2,
    0,
    2,
    0,
    '-',
    2834.00,
    3500.00,
    666.00,
    7000.00,
    1332.00,
    0.00,
    '23.50%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    729,
    '8999999589189',
    'SUNLIGHT 650ML',
    4,
    0,
    1,
    3,
    '-',
    13600.00,
    15000.00,
    1400.00,
    15000.00,
    1400.00,
    40800.00,
    '10.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    730,
    '8999999572303',
    'SUNLIGHT 420ML',
    1,
    0,
    1,
    0,
    '-',
    9000.00,
    10000.00,
    1000.00,
    10000.00,
    1000.00,
    0.00,
    '11.11%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    731,
    '\'8992761111687',
    'A&W SARSAPARILA 250ML',
    10,
    0,
    2,
    8,
    '-',
    5000.00,
    6500.00,
    1500.00,
    13000.00,
    3000.00,
    40000.00,
    '30.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    732,
    '\'8996006853127',
    'TEBS SPARKLING KALENG 330ML',
    9,
    0,
    1,
    8,
    '-',
    3800.00,
    5500.00,
    1700.00,
    5500.00,
    1700.00,
    30400.00,
    '44.74%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    733,
    '8991001661746',
    'DELFI TREASURE COOKIES N CREam 36gr',
    5,
    0,
    3,
    2,
    '-',
    6403.00,
    7500.00,
    1097.00,
    22500.00,
    3291.00,
    12806.00,
    '17.13%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    734,
    'A30',
    'KAOS KAKI COKLAT L',
    2,
    0,
    1,
    1,
    '-',
    5022.00,
    8000.00,
    2978.00,
    8000.00,
    2978.00,
    5022.00,
    '59.30%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    735,
    'A31',
    'KAOS KAKI COKLAT M',
    2,
    0,
    2,
    0,
    '-',
    4940.00,
    7000.00,
    2060.00,
    14000.00,
    4120.00,
    0.00,
    '41.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    736,
    'A32',
    'KAOS KAKI PUTIH SMA',
    11,
    0,
    2,
    9,
    '-',
    2623.00,
    5000.00,
    2377.00,
    10000.00,
    4754.00,
    23607.00,
    '90.62%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    737,
    'A33',
    'KAOS KAKI HITAM SMA',
    6,
    0,
    -2,
    8,
    '-',
    2800.00,
    5000.00,
    2200.00,
    -10000.00,
    -4400.00,
    22400.00,
    '78.57%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    738,
    '8885013131864',
    'AICE SWEET CORN',
    3,
    0,
    0,
    3,
    '-',
    2400.00,
    3000.00,
    600.00,
    0.00,
    0.00,
    7200.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    739,
    '\'8885013131680',
    'AICE MILK TEA BOBA',
    22,
    0,
    1,
    21,
    '-',
    4800.00,
    5500.00,
    700.00,
    5500.00,
    700.00,
    100800.00,
    '14.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    740,
    '\'8885013131925',
    'AICE BLUEBERRY COOKIES',
    18,
    0,
    14,
    4,
    '-',
    4800.00,
    5500.00,
    700.00,
    77000.00,
    9800.00,
    19200.00,
    '14.58%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    741,
    '8885013132083',
    'AICE CHOCO MALT',
    5,
    0,
    -4,
    9,
    '-',
    1600.00,
    2000.00,
    400.00,
    -8000.00,
    -1600.00,
    14400.00,
    '25.00%%%%%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    742,
    '8999510785465',
    'PRISTINE 600ML',
    14,
    0,
    5,
    9,
    '-',
    3805.00,
    4500.00,
    695.00,
    22500.00,
    3475.00,
    34245.00,
    '18.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    743,
    '8999999100506',
    'KECAP BANGO 520ML',
    0,
    0,
    0,
    0,
    '-',
    24400.00,
    25500.00,
    1100.00,
    0.00,
    0.00,
    0.00,
    '4.51%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    744,
    '8991771200329',
    'VITACIMIN 1PCS',
    17,
    4,
    1,
    20,
    '-',
    935.00,
    1500.00,
    565.00,
    1500.00,
    565.00,
    18700.00,
    '60.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    745,
    '8998898101409',
    'TOLAK ANGIN 15ML',
    12,
    0,
    2,
    10,
    '-',
    3333.00,
    4000.00,
    667.00,
    8000.00,
    1334.00,
    33330.00,
    '20.01%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    746,
    '\'711844110144',
    'ABC KECAP MANIS 300GR',
    1,
    0,
    0,
    1,
    '-',
    10500.00,
    11000.00,
    500.00,
    0.00,
    0.00,
    10500.00,
    '4.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    747,
    'A34',
    'RAJA UDANG KUNING 10KG',
    2,
    3,
    2,
    3,
    '-',
    136400.00,
    143000.00,
    6600.00,
    286000.00,
    13200.00,
    409200.00,
    '4.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    748,
    'A35',
    'TESSA 50S',
    5,
    0,
    2,
    3,
    '-',
    2000.00,
    3000.00,
    1000.00,
    6000.00,
    2000.00,
    6000.00,
    '50.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    749,
    '8993163502066',
    'MONTIS 150S',
    4,
    0,
    0,
    4,
    '-',
    5000.00,
    6000.00,
    1000.00,
    0.00,
    0.00,
    20000.00,
    '20.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    750,
    '8993163502097',
    'MONTIS 185S',
    4,
    0,
    0,
    4,
    '-',
    6000.00,
    7000.00,
    1000.00,
    0.00,
    0.00,
    24000.00,
    '16.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    751,
    '-',
    'MONTIS 50\'S',
    0,
    0,
    0,
    0,
    '-',
    2000.00,
    3000.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '50.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    752,
    'A41',
    'PULPEN LILIN',
    18,
    0,
    1,
    17,
    '-',
    600.00,
    1000.00,
    400.00,
    1000.00,
    400.00,
    10200.00,
    '66.67%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    753,
    '8994705052452',
    'KONA GLUE STICK',
    5,
    0,
    5,
    0,
    '-',
    1500.00,
    2000.00,
    500.00,
    10000.00,
    2500.00,
    0.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    754,
    'A36',
    'PASEO 12S',
    20,
    0,
    2,
    18,
    '-',
    1300.00,
    2000.00,
    700.00,
    4000.00,
    1400.00,
    23400.00,
    '53.85%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    755,
    'A40',
    'KAOS KAKI CITRA HITAM/PUTIH',
    10,
    0,
    0,
    10,
    '-',
    9500.00,
    11000.00,
    1500.00,
    0.00,
    0.00,
    95000.00,
    '15.79%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    756,
    '8991102283380',
    'MINTZ CHERRYMINT MERAH',
    2,
    0,
    2,
    0,
    '-',
    5500.00,
    6500.00,
    1000.00,
    13000.00,
    2000.00,
    0.00,
    '18.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    757,
    '8991102281430',
    'MINTZ DUOMINT HIJAU',
    1,
    0,
    0,
    1,
    '-',
    5500.00,
    6500.00,
    1000.00,
    0.00,
    0.00,
    5500.00,
    '18.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    758,
    '8991102281416',
    'MINTZ PEPPERMINT',
    2,
    0,
    2,
    0,
    '-',
    5500.00,
    6500.00,
    1000.00,
    13000.00,
    2000.00,
    0.00,
    '18.18%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    759,
    'A37',
    'TANGO COKLAT 10S',
    0,
    0,
    0,
    0,
    '-',
    8500.00,
    9500.00,
    1000.00,
    0.00,
    0.00,
    0.00,
    '11.76%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    760,
    '8991102989428',
    'TANGO COKLAT 16GR',
    13,
    0,
    4,
    9,
    '-',
    850.00,
    1000.00,
    150.00,
    4000.00,
    600.00,
    7650.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    761,
    '8991102300827',
    'TANGO MILKY CHOCOLATE 16GR',
    9,
    0,
    2,
    7,
    '-',
    850.00,
    1000.00,
    150.00,
    2000.00,
    300.00,
    5950.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    762,
    '8991102998635',
    'BLASTER POP GRAPE ',
    0,
    0,
    0,
    0,
    '-',
    414.00,
    500.00,
    86.00,
    0.00,
    0.00,
    0.00,
    '20.77%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    763,
    '8991102998642',
    'BLASTER POP MANGO',
    10,
    0,
    3,
    7,
    '-',
    414.00,
    500.00,
    86.00,
    1500.00,
    258.00,
    2898.00,
    '20.77%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    764,
    '8991102998628',
    'BLASTER POP ORANGE',
    0,
    0,
    0,
    0,
    '-',
    4964.00,
    5500.00,
    536.00,
    0.00,
    0.00,
    0.00,
    '10.80%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    765,
    '8991102789110',
    'OOPS ROASTED SWEET CORN',
    10,
    0,
    1,
    9,
    '-',
    890.00,
    1000.00,
    110.00,
    1000.00,
    110.00,
    8010.00,
    '12.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    766,
    'A38',
    'OREK MANTANG',
    14,
    0,
    0,
    14,
    '-',
    4000.00,
    5000.00,
    1000.00,
    0.00,
    0.00,
    56000.00,
    '25.00%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    767,
    '8991002125001',
    'KAPAL API ORI BLACK COFFE',
    5,
    0,
    2,
    3,
    '-',
    4125.00,
    5500.00,
    1375.00,
    11000.00,
    2750.00,
    12375.00,
    '33.33%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    768,
    '8999999529710',
    'CLEAR MEN MENTOL 160ML',
    2,
    0,
    0,
    2,
    '-',
    28600.00,
    30000.00,
    1400.00,
    0.00,
    0.00,
    57200.00,
    '4.90%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    769,
    '8998866106382',
    'ZINC MEN ANTI HAIR FALL 170ML',
    3,
    0,
    0,
    3,
    '-',
    19900.00,
    21000.00,
    1100.00,
    0.00,
    0.00,
    59700.00,
    '5.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    770,
    '\'4902430429375',
    'REJOICE HIJAB ANTI KETOMBE  150ML',
    2,
    0,
    0,
    2,
    '-',
    20400.00,
    22000.00,
    1600.00,
    0.00,
    0.00,
    40800.00,
    '7.84%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    771,
    '\'8998866104920',
    'ZINC BLACK SHINE 70ML',
    2,
    0,
    0,
    2,
    '-',
    10200.00,
    12000.00,
    1800.00,
    0.00,
    0.00,
    20400.00,
    '17.65%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    772,
    '\'8999999033217',
    'LIFEBUOY SAMPO ANTI KETOMBE 170ML',
    2,
    0,
    0,
    2,
    '-',
    22333.00,
    25000.00,
    2667.00,
    0.00,
    0.00,
    44666.00,
    '11.94%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    773,
    '\'8999999033200',
    'LIFEBUOY SAMPO ANTI KETOMBE 70+21ML',
    2,
    0,
    0,
    2,
    '-',
    10500.00,
    12500.00,
    2000.00,
    0.00,
    0.00,
    21000.00,
    '19.05%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    774,
    '\'8999999033132',
    'LIFEBUOY SAMPO RAMBUT RONTOK',
    2,
    0,
    0,
    2,
    '-',
    22400.00,
    25000.00,
    2600.00,
    0.00,
    0.00,
    44800.00,
    '11.61%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    775,
    '\'8999999033163',
    'LIFEBUOY SAMPO HABATUSAUDA',
    2,
    0,
    0,
    2,
    '-',
    10300.00,
    12500.00,
    2200.00,
    0.00,
    0.00,
    20600.00,
    '21.36%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    776,
    '\'8999999033125',
    'LIFEBUOY RAMBUT RONTOK 70+21ML',
    4,
    0,
    1,
    3,
    '-',
    10900.00,
    13000.00,
    2100.00,
    13000.00,
    2100.00,
    32700.00,
    '19.27%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    777,
    '\'4902430419017',
    'PANTENE SAMPO LONG BLACK 70ML',
    1,
    0,
    1,
    0,
    '-',
    13900.00,
    15000.00,
    1100.00,
    15000.00,
    1100.00,
    0.00,
    '7.91%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    778,
    'A39',
    'MEET JELLY ALL VARIAN',
    15,
    0,
    26,
    -11,
    '-',
    11000.00,
    12000.00,
    1000.00,
    312000.00,
    26000.00,
    -121000.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    779,
    '6907992824963',
    'JOYDAY MILKY CHOCOLATE 43GR',
    46,
    0,
    19,
    27,
    '-',
    2440.00,
    3000.00,
    560.00,
    57000.00,
    10640.00,
    65880.00,
    '22.95%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    780,
    '8991728000460',
    'JOYDAY SUNDAE CHOCOLATE',
    14,
    0,
    6,
    8,
    '-',
    5209.00,
    6000.00,
    791.00,
    36000.00,
    4746.00,
    41672.00,
    '15.19%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    781,
    '8999999502393',
    'ROYCO AYAM 8GR 12S ',
    5,
    0,
    0,
    5,
    '-',
    4900.00,
    5500.00,
    600.00,
    0.00,
    0.00,
    24500.00,
    '12.24%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    782,
    '8999999514617',
    'KECAP BANGO 400ML',
    3,
    0,
    1,
    2,
    '-',
    18800.00,
    20000.00,
    1200.00,
    20000.00,
    1200.00,
    37600.00,
    '6.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    783,
    '8998866612241',
    'SOKLIN LIQUID RENCENG SAKURA  22ML 12S',
    10,
    0,
    0,
    10,
    '-',
    4720.00,
    5500.00,
    780.00,
    0.00,
    0.00,
    47200.00,
    '16.53%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    784,
    '8992770011084',
    'MICIN AJINOMOTO 100GR',
    10,
    0,
    0,
    10,
    '-',
    4600.00,
    5000.00,
    400.00,
    0.00,
    0.00,
    46000.00,
    '8.70%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    785,
    '8992870310100',
    'SALONPAS SACHET ',
    8,
    0,
    0,
    8,
    '-',
    6500.00,
    7500.00,
    1000.00,
    0.00,
    0.00,
    52000.00,
    '15.38%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    786,
    '8999777017804',
    'HANSAPLAST',
    100,
    0,
    1,
    99,
    '-',
    318.00,
    1000.00,
    682.00,
    1000.00,
    682.00,
    31482.00,
    '214.47%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    787,
    'A44',
    'MAKARONI',
    6,
    0,
    3,
    3,
    '-',
    5500.00,
    6000.00,
    500.00,
    18000.00,
    1500.00,
    16500.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    788,
    'A42',
    'BASRENG 6RB',
    7,
    0,
    6,
    1,
    '-',
    5500.00,
    6000.00,
    500.00,
    36000.00,
    3000.00,
    5500.00,
    '9.09%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    789,
    'A43',
    'KERIPIK KACA',
    10,
    0,
    2,
    8,
    '-',
    9500.00,
    10000.00,
    500.00,
    20000.00,
    1000.00,
    76000.00,
    '5.26%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    790,
    '8999999529703',
    'CLEAR MEN ',
    1,
    0,
    1,
    0,
    '-',
    14500.00,
    15800.00,
    1300.00,
    15800.00,
    1300.00,
    0.00,
    '8.97%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    791,
    '8993226112508',
    'REFINA GARAM HALUS 250GR',
    40,
    0,
    0,
    40,
    '-',
    3025.00,
    5000.00,
    1975.00,
    0.00,
    0.00,
    121000.00,
    '65.29%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    792,
    '\'0697476744705',
    'GARAM KASAR SEGITIGA 500GR',
    0,
    10,
    1,
    9,
    '-',
    1750.00,
    3000.00,
    1250.00,
    3000.00,
    1250.00,
    15750.00,
    '71.43%',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    793,
    '\'8990800022543',
    'MENTOS MINT 29GR',
    0,
    14,
    0,
    14,
    '-',
    2357.00,
    3000.00,
    643.00,
    0.00,
    0.00,
    32998.00,
    '0',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    796,
    '8991389230008',
    'BUKU TULIS 42 LEMBAR',
    10,
    17,
    17,
    10,
    'SINARJAYA',
    5650.00,
    6000.00,
    350.00,
    102000.00,
    5950.00,
    56500.00,
    '6.19',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    797,
    '123',
    '123',
    6,
    142,
    147,
    1,
    '123',
    1212.00,
    1500.00,
    288.00,
    220500.00,
    42336.00,
    1212.00,
    '23.76',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    798,
    '2870',
    'testss',
    0,
    2,
    1,
    1,
    'test',
    1000.00,
    1000.00,
    0.00,
    1000.00,
    0.00,
    1000.00,
    '0.00',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    800,
    'testt',
    'testee',
    0,
    0,
    0,
    0,
    'teesstt',
    1200.00,
    2000.00,
    800.00,
    0.00,
    0.00,
    0.00,
    '66.67',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    801,
    '321',
    '321',
    5,
    0,
    3,
    2,
    '211',
    3333.00,
    4444.00,
    1111.00,
    13332.00,
    3333.00,
    6666.00,
    '33.33',
    0
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    802,
    '0880080',
    'coklat selay',
    11,
    12,
    11,
    22,
    '-',
    10.00,
    10.00,
    10.00,
    1000000.00,
    11111.00,
    1111.00,
    '1111%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    803,
    '088003280',
    'coklat selay f',
    11,
    12,
    11,
    22,
    '-',
    10.00,
    10.00,
    10.00,
    1000000.00,
    11111.00,
    1111.00,
    '1111%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    804,
    '0880032820',
    'coklat selay f',
    11,
    12,
    11,
    22,
    '-',
    10.00,
    10.00,
    10.00,
    1000000.00,
    11111.00,
    1111.00,
    '1111%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    805,
    '0880032820',
    'coklat selay f',
    11,
    12,
    11,
    22,
    '-',
    10.00,
    10.00,
    10.00,
    10.00,
    11111.00,
    1111.00,
    '1111%',
    1
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    807,
    '0880032820',
    'coklat selay f',
    11,
    12,
    11,
    22,
    '-',
    10.00,
    10.00,
    10.00,
    1000000.00,
    11111.00,
    1111.00,
    '1111%',
    127
  );
INSERT INTO
  `product` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_awal`,
    `masuk`,
    `keluar`,
    `stok_akhir`,
    `suplier`,
    `beli`,
    `jual`,
    `mark_up`,
    `pendapatan`,
    `laba`,
    `harta`,
    `persentase`,
    `cl`
  )
VALUES
  (
    808,
    '98998889',
    'Superman',
    11,
    12,
    10,
    13,
    '-',
    11.00,
    11.00,
    1111111.00,
    110.00,
    11111110.00,
    165.00,
    '212%',
    1
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: staff
# ------------------------------------------------------------

INSERT INTO
  `staff` (
    `id`,
    `User`,
    `Password`,
    `jabatan`,
    `md`,
    `mp`,
    `mbm`,
    `mbk`,
    `mk`,
    `lbm`,
    `lbk`,
    `lh`,
    `lp`,
    `llss`,
    `cl`
  )
VALUES
  (1, 'admin', 'admin', 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO
  `staff` (
    `id`,
    `User`,
    `Password`,
    `jabatan`,
    `md`,
    `mp`,
    `mbm`,
    `mbk`,
    `mk`,
    `lbm`,
    `lbk`,
    `lh`,
    `lp`,
    `llss`,
    `cl`
  )
VALUES
  (
    2,
    'manager',
    '12345678',
    'manager',
    1,
    1,
    0,
    0,
    1,
    0,
    0,
    1,
    1,
    1,
    0
  );
INSERT INTO
  `staff` (
    `id`,
    `User`,
    `Password`,
    `jabatan`,
    `md`,
    `mp`,
    `mbm`,
    `mbk`,
    `mk`,
    `lbm`,
    `lbk`,
    `lh`,
    `lp`,
    `llss`,
    `cl`
  )
VALUES
  (3, 'test', 'test', 'kasir', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: tablename
# ------------------------------------------------------------

INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    1,
    '8992727004541',
    'LAURIER FLEXI PROTECT LONG WING 14',
    3,
    12400.00,
    13.50,
    1100.00,
    37200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    2,
    '8992727004480',
    'LAURIER MAXI RCG 10',
    2,
    675.00,
    1.00,
    325.00,
    1350.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    3,
    '8992727002714',
    'LAURIER SC SUPER MAXI 30 ',
    1,
    14.88,
    16.50,
    1625.00,
    14875.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    4,
    '8851818537309',
    'LAURIER SUPER SLIM GUARD 25CM 16\'S',
    1,
    26.50,
    28.50,
    2000.00,
    26500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    5,
    '6908594414019',
    'LAURIER SUPER SLIM GUARD DAY 10\'S',
    3,
    14.40,
    15.50,
    1100.00,
    43200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    6,
    '8851019000343',
    'POCKY ALMOND 36 GR',
    6,
    7.34,
    8.50,
    1164.00,
    44016.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    7,
    '8851019210193',
    'POCKY CHOCO BANANA 42GR',
    2,
    8.61,
    10.00,
    1386.00,
    17228.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    8,
    '8990044000116',
    'POCKY CHO SINGLE 12 GR',
    57,
    1.92,
    2.50,
    577.00,
    109611.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    9,
    '8990044000086',
    'POCKY COOKIES & CREAM 20 GR ',
    12,
    3.33,
    5.00,
    1670.00,
    39960.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    10,
    '8990044000024',
    'POCKY COOKIES &CREAM 40 GR',
    1,
    6.61,
    8.00,
    1391.00,
    6609.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    11,
    '8990044000031',
    'POCKY DOUBLE CHOCO STICK 47GR',
    0,
    6.61,
    8.00,
    1392.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    12,
    '8990044000017',
    'POCKY STRAWBERRY STICK 45GR',
    0,
    6.61,
    8.00,
    1392.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    13,
    '8990044000123',
    'POCKY STRAW SINGLE 12 GR',
    4,
    1.92,
    2.50,
    576.00,
    7696.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    14,
    '8997025914332',
    'HATARI CREAM CRACKERS 260 G',
    1,
    7.60,
    8.20,
    600.00,
    7600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    15,
    '8996001355046',
    'ROMA SUPERSTAR CKLT 16G',
    0,
    867.00,
    1.00,
    133.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    16,
    '8991001243195',
    'Delfi Bar Bar',
    2,
    2.28,
    3.00,
    725.00,
    4550.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    17,
    '8992761145033',
    'FANTA STRAWBERRY PET 250 ML',
    36,
    2.75,
    3.50,
    750.00,
    99000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    18,
    '8992761002039',
    'FANTA STRAWBERRY PET 390 ML',
    22,
    4.38,
    5.50,
    1125.00,
    96250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    19,
    '8992761145026',
    'Sprite 250 ML ',
    0,
    2.75,
    3.50,
    750.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    20,
    '8992761145019',
    'CAN 250 ML PET COCA COLA',
    1,
    2.75,
    3.00,
    250.00,
    2750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    21,
    '8991001242013',
    'DELFI TOP CHOCOLATE 9G',
    40,
    887.00,
    1.00,
    113.00,
    35480.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    22,
    '8991001243034',
    'DELFI TOP TRIPLE CHOC 9G',
    30,
    904.00,
    1.00,
    96.00,
    27120.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    23,
    '8991001242570',
    'DELFI TOP straw CHOC 9G',
    28,
    904.00,
    1.00,
    96.00,
    25312.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    24,
    '8991102380706',
    'MIO FULLO CHOCOLAT 9G',
    0,
    463.00,
    500.00,
    37.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    25,
    '8992775311608',
    'GERY CHOCOLATOS 8.5G',
    73,
    400.00,
    500.00,
    100.00,
    29200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    26,
    '8996001354001',
    'KALPA WAFER COKLAT 24 GRM+A85',
    4,
    1.67,
    2.00,
    326.00,
    6696.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    27,
    '8990044000048',
    'POCKY MILK MATCHA 33G',
    6,
    6.61,
    8.00,
    1392.00,
    39648.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    28,
    '8992761002015',
    'COCA COLA 390 ML',
    34,
    4.38,
    5.50,
    1125.00,
    148750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    29,
    '8995154104013',
    'RAISA FACIAL TISSUE 200 S BANDED',
    0,
    19.90,
    22.00,
    2100.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    30,
    '8992745540823',
    'MITU BABY SC WIPES GANTI POPOK BLUE 50S+50S',
    5,
    21.90,
    23.50,
    1600.00,
    109500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    31,
    '8992745550396',
    'MITU SC WIPES GANTI POPOK WHITE 50+50\'S',
    2,
    21.00,
    22.50,
    1500.00,
    42000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    32,
    '8992745550532',
    'MITU BABY',
    3,
    15.50,
    17.00,
    1500.00,
    46500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    33,
    '8992745550518',
    'MITU BLUE MING CERRY',
    2,
    14.75,
    16.00,
    1250.00,
    29500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    34,
    '8992696404441',
    'BEAR BRAND STM 189 ML',
    12,
    8.83,
    10.50,
    1670.00,
    105960.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    35,
    '8995227500230',
    'LARUTAN CAP KAKI3 ANGGUR 320 ML',
    0,
    5.68,
    6.20,
    524.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    36,
    '8995227500247',
    'LARUTAN CAP KAKI 3 JAMBU 320 ML',
    0,
    6.23,
    7.00,
    772.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    37,
    '8995227500308',
    'LARUTAN CAP KAKI 3 JERUK 320ML',
    9,
    5.44,
    6.50,
    1058.00,
    48978.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    38,
    '8995227500124',
    'LARUTAN CAP KAKI 3 PET 200ML',
    0,
    3.32,
    4.00,
    677.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    39,
    '8995227500254',
    'LARUTAN CAP KAKI 3 STRAW 320ML',
    0,
    5.69,
    6.20,
    513.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    40,
    '8992696525399',
    'NESTLE GOODNES KURMA ROYALE',
    22,
    8.50,
    10.00,
    1500.00,
    187000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    41,
    '8998866201841',
    'GOLDA DOLCE LATTE RTD 200 ML',
    0,
    2.78,
    3.50,
    725.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    42,
    '8991002121065',
    'GOOD DAY AVOCADO DELIGHT 250ML',
    19,
    4.98,
    5.50,
    525.00,
    94525.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    43,
    '8991002121089',
    'GOOD DAY CAPPUCINO BOTOL 250ML',
    6,
    5.08,
    6.50,
    1416.00,
    30504.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    44,
    '8991002121010',
    'GOOD DAY MOCACINO COFFEE 250ML',
    10,
    5.08,
    6.50,
    1416.00,
    50840.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    45,
    '8991002121003',
    'GOOD DAY TIRAMISU BLISS COFFEE 250 ML',
    0,
    5.03,
    5.50,
    475.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    46,
    '8991002122017',
    'ABC RTD MILK COFFEE 200 ML ',
    0,
    2.51,
    3.50,
    993.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    47,
    '8991002125018',
    'KAPAL API WHITE COFFE 200ML',
    7,
    4.13,
    5.00,
    875.00,
    28875.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    48,
    '8992761111519',
    'CAN 250 ML PET COCA COLA',
    68,
    4.58,
    5.50,
    916.00,
    311712.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    49,
    '8992761111540',
    'CAN 250 ML PET FANTA',
    64,
    4.56,
    5.50,
    940.00,
    291840.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    50,
    '8992761111533',
    'CAN 250 ML PET SPRITE',
    48,
    4.57,
    5.50,
    929.00,
    219408.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    51,
    '9556001288547',
    'NESCAFE CAPPUCINO RTD CAN 220ML',
    20,
    5.32,
    6.50,
    1184.00,
    106320.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    52,
    '9556001288561',
    'NESCAFE CARAMEL MACCHIATO 24x220 ML N2 ID',
    0,
    5.32,
    6.50,
    1184.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    53,
    '9556001288592',
    'NESCAFE LATTE RTD CAN 220ML',
    22,
    5.32,
    6.50,
    1184.00,
    116952.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    54,
    '9556001295248',
    'NESCAFE ICE BLACK 220 ML',
    5,
    5.32,
    6.50,
    1184.00,
    26580.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    55,
    '8997009510017',
    'YOU C 1000 LEMON 140ML',
    14,
    6.00,
    7.00,
    1000.00,
    84000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    56,
    '8997009510055',
    'YOU C 1000 ORANGE 140ML',
    31,
    5.97,
    7.00,
    1029.00,
    185101.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    57,
    '8997009510123',
    'YOU C 1000 ORANGE WATER 500 ML',
    12,
    8.23,
    9.00,
    775.00,
    98700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    58,
    '8997035563544',
    'POCARI SWEAT PET 350ML',
    0,
    6.32,
    7.00,
    684.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    59,
    '8992761164546',
    'NOTRIBOST straw 300 ML',
    9,
    5.70,
    6.50,
    800.00,
    51300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    60,
    '8992761164539',
    'NUTRIBOOST ORANGE 300 ML',
    11,
    5.70,
    6.50,
    800.00,
    62700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    61,
    '8992761166038',
    'MINUTE MAID PULPY ORANGE 300 ML',
    8,
    4.13,
    5.50,
    1375.00,
    33000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    62,
    '8886008101336',
    'AQUA AIR MNM BOTOL 330 ML',
    0,
    1.88,
    2.00,
    125.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    63,
    '8886008101053',
    'AQUA AIR MNM BOTOL 600ML',
    33,
    2.16,
    3.00,
    842.00,
    71214.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    64,
    '8886008101091',
    'AQUA AIR MNM  BTL 1500 ML',
    104,
    5.10,
    6.00,
    900.00,
    530400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    65,
    '8996001600269',
    'LE MINERALE 600ML',
    0,
    1.96,
    2.50,
    541.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    66,
    '8998008151058',
    'MI-WON 250 G',
    6,
    8.60,
    10.00,
    1400.00,
    51600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    67,
    '711844120310',
    'ABC SAMBAL ASLI 176 G',
    6,
    8.50,
    9.50,
    1000.00,
    51000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    68,
    '711844120358',
    'ABC SAMBAL ASLI 1KG',
    1,
    32.20,
    34.00,
    1800.00,
    32200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    69,
    '711844130050',
    'ABC SAOS TOMAT 1 KG',
    1,
    13.53,
    16.00,
    2470.00,
    13530.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    70,
    '711844101378',
    'ABC KECAP MANIS POUCH 520 ml',
    1,
    6.90,
    8.00,
    1100.00,
    6900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    71,
    '8998888710192',
    'DELMONTE KETCHUP TOMAT 200 G',
    6,
    8.80,
    10.00,
    1200.00,
    52800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    72,
    '8998888710598',
    'DELMONTE EXTRA HOT 200 G',
    5,
    8.80,
    10.00,
    1200.00,
    44000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    73,
    '711844120549',
    'ABC SAMBAL ASLI 75 G',
    1,
    6.00,
    7.50,
    1500.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    74,
    '711844120556',
    'ABC SAMBAL EXTRA PEDAS 75 GR PCH',
    5,
    2.50,
    3.50,
    1000.00,
    12500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    75,
    '711844110182',
    'ABC KECAP MANIS 65ML',
    3,
    1.65,
    2.20,
    550.00,
    4950.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    76,
    '711844110113',
    'ABC KECAP MANIS KCL PLST 135ML',
    7,
    6.90,
    7.50,
    600.00,
    48300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    77,
    '711844120037',
    'ABC SAMBAL ASLI 135ML',
    4,
    7.04,
    7.80,
    759.00,
    28164.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    78,
    '8994907001401',
    'ABC SAMBAL BAWANG PEDAS PET 275ML',
    3,
    12.80,
    14.00,
    1200.00,
    38400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    79,
    '711844120105',
    'ABC SAMBAL MANIS PEDAS 135ML',
    5,
    6.60,
    7.20,
    600.00,
    33000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    80,
    '711844330108',
    'ABC SARDINE CHILLI 155GR',
    12,
    9.25,
    11.00,
    1750.00,
    111000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    81,
    '711844330146',
    'ABC SARDINE EXTRA HOT 155GR',
    6,
    9.25,
    10.50,
    1250.00,
    55500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    82,
    '711844330009',
    'ABC SARDINE TOMAT 155GR',
    10,
    9.25,
    11.00,
    1750.00,
    92500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    83,
    '711844140059',
    'ABC SAUS TIRAM 135ML',
    2,
    7.50,
    8.00,
    500.00,
    15000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    84,
    '711844130128',
    'ABC SAUS TOMAT BOTOL 275 ML',
    3,
    14.55,
    15.50,
    950.00,
    43650.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    85,
    '8994907001456',
    'ABC KECAP MANIS 105 GR',
    1,
    4.89,
    5.50,
    610.00,
    4890.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    86,
    '711844120419',
    'ABC SAOS SAMBAL 275 ML',
    3,
    24.20,
    25.50,
    1300.00,
    72600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    87,
    '711844130111',
    'ABC SAOS TOMAT 135 ML ',
    4,
    6.60,
    7.50,
    900.00,
    26400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    88,
    '899888870161',
    'DELMONTE KETCHUP CUP 135 ML ',
    3,
    6.60,
    7.50,
    900.00,
    19800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    89,
    '89686401011',
    'INDOFOODS SAMBALBANGKOK135ML',
    1,
    7.00,
    8.00,
    1000.00,
    7000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    90,
    '711844115057',
    'ABC  Kecap asin (133 ml) ',
    4,
    6.77,
    7.50,
    730.00,
    27080.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    91,
    '711844110083',
    'ABC KCP MANIS BTL PLSTIK 275ML',
    4,
    14.40,
    16.00,
    1600.00,
    57600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    92,
    '8992770096135',
    'SAORI SAUS TIRAM 270 ML',
    0,
    18.42,
    20.00,
    1583.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    93,
    '89686420036',
    'INDOFOOD KECAP MANIS PLS 135ML',
    1,
    6.05,
    7.00,
    950.00,
    6050.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    94,
    '8986386066',
    'INDOFOOD RACIK AYAM GRG 26G',
    0,
    1.49,
    2.00,
    510.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    95,
    '89686386417',
    'INDOFOOD RACIK TEMPE GORENG 20G',
    10,
    1.58,
    2.00,
    420.00,
    15800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    96,
    '8997010321725',
    'SAOS BULGOGI 300 GR',
    1,
    21.48,
    23.00,
    1525.00,
    21475.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    97,
    '711844330115',
    'ABC Sardines dalam saus cabai (425 GR)',
    0,
    22.00,
    23.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    98,
    '711844330016',
    'ABC Sardines dalam saus TOMAT (425 GR)',
    1,
    19.58,
    21.00,
    1423.00,
    19577.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    99,
    '8992736025162',
    'SASA TP GRNG PISANG 210 GR',
    1,
    5.40,
    6.40,
    1000.00,
    5400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    100,
    '8992736925134',
    'SASA TP 210 GR',
    0,
    5.40,
    6.40,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    101,
    '8999999035976',
    'ROYCO KUAH BAKSO 100G',
    5,
    9.28,
    10.30,
    1025.00,
    46375.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    102,
    '8992770034151',
    'MASAKO AYAM 250GR',
    0,
    8.50,
    9.50,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    103,
    '8992770034168',
    'MASAKOSAPI 250GR',
    0,
    8.50,
    9.50,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    104,
    '8992761122331',
    'FRESTEA APEL 500 ML',
    14,
    4.25,
    5.50,
    1250.00,
    59500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    105,
    '8992761166205',
    'FRESTEA GREEN TEA HONEY 350 ML',
    58,
    3.09,
    4.00,
    914.00,
    178988.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    106,
    '8992761122430',
    'FRESTEA GREEN TEA HONEY 500 ML',
    30,
    4.90,
    5.50,
    600.00,
    147000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    107,
    '8992761122324',
    'FRESTEA JASMINE 500 ML',
    39,
    5.38,
    6.00,
    618.00,
    209898.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    108,
    '8992761166243',
    'FRESTEA NUSANTARA 350 ML',
    33,
    3.13,
    4.00,
    871.00,
    103257.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    109,
    '8996006858276',
    'FRUIT PASSION FRUIT 350 ML ',
    5,
    3.50,
    4.50,
    1000.00,
    17500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    110,
    '8996006858085',
    'FRUIT TEA APEL BTL 330 ML',
    6,
    3.33,
    4.00,
    666.00,
    20004.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    111,
    '8996006858160',
    'FRUIT TEA  BLACK BTL 330 ML ',
    3,
    3.50,
    4.50,
    1000.00,
    10500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    112,
    '8996006858115',
    'FRUIT TEA  FREEZE STRAW &amp; GRAPE 350 ML ',
    4,
    3.50,
    4.50,
    1000.00,
    14000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    113,
    '8996006858320',
    'FRUIT TEA LEMON 350 ML ',
    10,
    3.50,
    4.50,
    1000.00,
    35000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    114,
    '8996006858108',
    'FRUIT TEA  STRAW 350 ML A',
    4,
    3.50,
    4.50,
    1000.00,
    14000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    115,
    '8996001600146',
    'TEH PUCUK HARUM 350 ML',
    0,
    2.46,
    3.50,
    1042.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    116,
    '8996006858016',
    'TEH BOTOL SOSRO 350 ML ',
    0,
    3.33,
    4.00,
    666.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    117,
    '8992388145324',
    'NU CHO HAZELTEA',
    5,
    6.34,
    7.50,
    1162.00,
    31690.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    118,
    '8992388101085',
    'NU GREENTEA GREEN TEA 330 ml',
    19,
    3.41,
    4.50,
    1095.00,
    64695.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    119,
    '8992388134106',
    'NU GREENTEA GREEN TEA JASMINE 330 ML',
    19,
    3.40,
    4.50,
    1096.00,
    64676.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    120,
    '8992388101092',
    'NU GREENTEA HONEY 330 ml',
    3,
    3.41,
    4.50,
    1095.00,
    10215.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    121,
    '8992388101023',
    'NU GREENTEA HONEY 450 ML',
    17,
    4.88,
    5.50,
    620.00,
    82960.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    122,
    '8992388101016',
    'NU GREENTEA ORIGINAL 450 ML',
    2,
    5.26,
    5.50,
    241.00,
    10518.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    123,
    '8992388133277',
    'NU GREENTEAGULA BATU 450 ML',
    15,
    4.89,
    5.50,
    611.00,
    73335.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    124,
    '8992388145027',
    'NU GREENTEA YOGURT 450 ML',
    15,
    4.88,
    5.50,
    625.00,
    73125.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    125,
    '8992388133017',
    'NU MILKTEA  330ML',
    22,
    6.34,
    7.50,
    1162.00,
    139436.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    126,
    '8992388133345',
    'NU TEH TARIK',
    22,
    6.34,
    7.50,
    1162.00,
    139436.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    127,
    '8992741902618',
    'YUPI MILLY MOOS STARLITE 50 G',
    2,
    4.75,
    5.00,
    250.00,
    9500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    128,
    '8995108509857',
    'RE-BO KUACI SALTED CARAMEL PACK 70GR',
    1,
    7.70,
    8.50,
    800.00,
    7700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    129,
    '0089686010190',
    'INDOMIE KARI AYAM (S)72 G',
    3,
    3.10,
    3.50,
    400.00,
    9300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    130,
    '0089686010824',
    'INDOMIE GORENG 85GR',
    4,
    2.84,
    3.50,
    660.00,
    11360.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    131,
    '8885013130058',
    'AICE CHOCO CRISPY',
    6,
    4.00,
    4.50,
    500.00,
    24000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    132,
    '8885013130393',
    'AICE MIKI - MIKI',
    0,
    1.56,
    2.00,
    441.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    133,
    '8885013131710',
    'AICE MIKI MIKI DOUBLE CHOCO',
    3,
    1.90,
    2.50,
    599.00,
    5703.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    134,
    '8885013132014',
    'AICE MILK CEREAL RISPY ',
    0,
    3.00,
    4.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    135,
    '8885013130249',
    'AICE MILK MELON STICK',
    0,
    1.91,
    2.50,
    588.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    136,
    '8885013130652',
    'AICE MOCHI DURIAN',
    0,
    2.31,
    3.00,
    687.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    137,
    '8885013131529',
    'AICE MOCHI KLEPON',
    0,
    2.36,
    3.00,
    637.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    138,
    '8885013130201',
    'AICE MOCHI VANILA',
    0,
    2.30,
    3.00,
    701.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    139,
    '8885013130546',
    'AICE NANAS',
    0,
    1.54,
    2.00,
    460.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    140,
    '8885013130485',
    'ICE COFFE CRISPY',
    0,
    2.75,
    3.30,
    550.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    141,
    '8885013131123',
    'AICE TARO CRISPY',
    1,
    2.41,
    3.00,
    587.00,
    2413.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    142,
    '8885013130645',
    'MOCHI CHOCO ',
    0,
    2.31,
    3.00,
    687.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    143,
    '640034',
    'SOSIS SALAM 1 KG ',
    2,
    35.00,
    37.00,
    2000.00,
    70000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    144,
    '6907992823874',
    'CRUNCHY CHOCOLATE BLUEBERRY 75 GR',
    0,
    4.00,
    5.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    145,
    '6907992823867',
    'CRUNCHY CHOCOLATE MALT 75 GR',
    0,
    4.00,
    4.50,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    146,
    '6907992826066',
    'CRUNCHY DOUBLE CHOCOLATE ',
    0,
    4.25,
    4.80,
    550.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    147,
    '6907992825069',
    'FRUTTI FRIZZ ',
    3,
    3.40,
    4.50,
    1100.00,
    10200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    148,
    '8991728000033',
    'JOYDAY MOCHI CHO',
    0,
    2.93,
    3.00,
    75.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    149,
    '6907992823676',
    'COOL PEACH',
    0,
    1.68,
    2.50,
    820.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    150,
    '8991728000453',
    'JOYDAY CHAMPION BALL',
    26,
    2.68,
    3.00,
    325.00,
    69550.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    151,
    '8991728000361',
    'JOYDAY CHOCO CRUNCH',
    23,
    2.65,
    3.00,
    350.00,
    60950.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    152,
    '6907992823829',
    'JOYDAY MILKY MILK',
    0,
    2.10,
    2.60,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    153,
    '6907992825076',
    'JOYDAY COOL WATER MELON',
    20,
    1.68,
    2.00,
    320.00,
    33600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    154,
    '6907992823935',
    'JOYDAY SWEET CORN',
    0,
    2.60,
    3.00,
    400.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    155,
    '8998009010620',
    'ULTRA MILK CHOCOLATE 1 L',
    6,
    15.90,
    17.50,
    1600.00,
    95400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    156,
    '8998009010613',
    'ULTRA MILK PLAIN 1 L',
    8,
    16.00,
    17.50,
    1500.00,
    128000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    157,
    '8993351124018',
    'GREENFIELDS FULL CREAM MILK 200 ML',
    30,
    7.64,
    8.50,
    863.00,
    229110.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    158,
    '8993351124124',
    'GREENFIELDS UHT CHOC 125 ML ',
    9,
    3.25,
    4.00,
    750.00,
    29250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    159,
    '8993351122410',
    'GREENFIELDS UHT EXTRA LOW FAT STRAW  200 ML ',
    3,
    6.00,
    7.00,
    1000.00,
    18000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    160,
    '8997240350267',
    'OPAO ORIGINAL 125 ML ',
    25,
    2.30,
    3.00,
    700.00,
    57500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    161,
    '8993351124025',
    'GREENFIELDS UHT FULL CREAM  125 ML ',
    40,
    3.25,
    4.00,
    750.00,
    130000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    162,
    '8998009010590',
    'ULTRA MILK COKLAT 125 ML',
    5,
    2.63,
    3.50,
    866.00,
    13170.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    163,
    '8993351124223',
    'GREENFIELDS UHT STAW 125 ML',
    71,
    3.25,
    3.50,
    250.00,
    230750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    164,
    '8998009010606',
    'ULTRA MILK STRAWBERRY 125 ML',
    74,
    3.00,
    3.50,
    500.00,
    222000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    165,
    '8993351122946',
    'GREENFIELDS UHT CHOC 105  ML',
    24,
    2.92,
    3.50,
    580.00,
    70080.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    166,
    '899335112427',
    'GREENFIELDS UHT EXTRA LOW FAT VANILA  200 ML ',
    5,
    6.00,
    7.00,
    1000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    167,
    '8993351124216',
    'GREENFIELDS STRW MILK 200ML',
    27,
    4.74,
    5.50,
    759.00,
    128007.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    168,
    '8998009010576',
    'ULTRA SUSU SLIM STRAW 200 ML',
    2,
    4.43,
    5.50,
    1070.00,
    8860.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    169,
    '8993351122625',
    'GREENFIELDS CHO MILK 200ML',
    22,
    6.00,
    7.00,
    1000.00,
    132000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    170,
    '8992727008006',
    'ATTACK JAZ1 DETERGEL PESONA SEGAR 750GR',
    1,
    17.10,
    18.50,
    1400.00,
    17100.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    171,
    '8992727007986',
    'ATTACK JAZ1 DETERGEL SMRBK CINTA 750GR',
    2,
    17.10,
    18.50,
    1400.00,
    34200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    172,
    '8998866608879',
    'RAPIKA BIANG LAVENDER 250 M',
    5,
    3.18,
    5.00,
    1825.00,
    15875.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    173,
    '8998866603409',
    'Rapika Lavender 425ml',
    1,
    5.00,
    6.00,
    1000.00,
    5000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    174,
    '8998866605649',
    'So Klin RAPIKA 400 ML',
    2,
    5.00,
    6.00,
    1000.00,
    10000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    175,
    '8998866612258',
    'Rapika Sakura 400ml',
    3,
    4.80,
    6.00,
    1200.00,
    14400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    176,
    '8998866603416',
    'Son Klin RAPIKA Blossom',
    1,
    5.00,
    6.00,
    1000.00,
    5000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    177,
    '8992772198011',
    'Kispray Amoris 300/280ml',
    2,
    4.75,
    6.00,
    1250.00,
    9500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    178,
    '8992772198035',
    'Kispray Bluis 300ml/280ml',
    2,
    4.75,
    6.00,
    1250.00,
    9500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    179,
    '8992772198028',
    'Kispray Segeris 300/280ml',
    3,
    4.95,
    6.00,
    1050.00,
    14850.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    180,
    '8992779454905',
    'GLADE CAR WILD OCEAN ESCAPE 70+5GR',
    2,
    11.00,
    12.50,
    1500.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    181,
    '8992779070303',
    'GLADE CAR WILD VANILA 70+5GR',
    2,
    11.00,
    12.50,
    1500.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    182,
    '8992779160905',
    'GLADE CAR WILD PEONY AND BERRY 70+5GR',
    2,
    11.00,
    12.50,
    1500.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    183,
    '8992779154904',
    'GLADE CAR WILD BERRIES 70+5GR',
    2,
    11.00,
    12.50,
    1500.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    184,
    '8998899002002',
    'BYFR  AE ROSE 225',
    3,
    15.26,
    17.00,
    1737.00,
    45789.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    185,
    '8998899002033',
    'BYFR AE LEMON YUZU 225 GR',
    2,
    15.26,
    17.00,
    1737.00,
    30526.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    186,
    '8998899940069',
    'BYRF AE STRAW BUB GUM  320 ML ',
    1,
    20.04,
    22.00,
    1964.00,
    20036.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    187,
    '8998899002170',
    'BYRF AEORANGE VERBENA 320 ML ',
    3,
    20.04,
    22.00,
    1964.00,
    60108.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    188,
    '8998899002101',
    'BYRF AE ROSE 320 ML ',
    2,
    20.04,
    22.00,
    1964.00,
    40072.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    189,
    '8998899940083',
    'BYRF AE MORNING COFFE 320 320 ML ',
    1,
    20.04,
    22.00,
    1964.00,
    20036.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    190,
    '8992745940128',
    'STELLA BATH POCKET ORANGE 10 GR ',
    2,
    10.90,
    12.50,
    1600.00,
    21800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    191,
    '8990090200423',
    'SARI AYU HIJAB SHAMPOO 180ML',
    1,
    21.20,
    23.00,
    1800.00,
    21200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    192,
    '8998866100632',
    'EMERON SHP SOFT&SMOOTH BTL 80ML',
    1,
    8.85,
    10.00,
    1150.00,
    8850.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    193,
    '8998866100557',
    'EMERON SHP BLACK & SHINE BTL 80ML',
    3,
    8.85,
    10.00,
    1150.00,
    26550.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    194,
    '8998866100595',
    'EMERON SHP HAIR FALL CONTROL BTL 80ML',
    4,
    8.85,
    10.00,
    1150.00,
    35400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    195,
    '8998866103114',
    'EMERON SHP DANDRUFF CONTROL BTL 80ML',
    4,
    8.85,
    10.00,
    1150.00,
    35400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    196,
    '8998866103121',
    'EMERON SHP DANDRUFF CONTROL BTL 170ML',
    2,
    20.00,
    22.00,
    2000.00,
    40000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    197,
    '8998866100564',
    'EMERON SHP BLACK&SHINE BTL 170ML',
    2,
    19.40,
    22.00,
    2600.00,
    38800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    198,
    '8998866100601',
    'EMERON SHP HAIR FALL CONTROL BTL 170ML',
    2,
    20.00,
    22.00,
    2000.00,
    40000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    199,
    '8998866100649',
    'EMERON SHP SOFT & SMOOTH BTL 170ML',
    2,
    20.00,
    22.00,
    2000.00,
    40000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    200,
    '4902430429399',
    'REJOICE SHP 3IN1 BTL 70ML',
    2,
    10.60,
    11.70,
    1100.00,
    21200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    201,
    '8998866202671',
    'SEDAP KOR SPCY SUP CUP 75G',
    1,
    4.40,
    5.00,
    600.00,
    4400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    202,
    '8998866202930',
    'SEDAP MIE CUP RAWIT AYAM 75 G ',
    1,
    4.25,
    4.80,
    550.00,
    4250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    203,
    '8992388121090',
    'ABC CUP BAKSO SAPI ',
    12,
    4.51,
    5.20,
    691.00,
    54108.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    204,
    '8992388121267',
    'ABC CUP GULAI AYAM PEDAS',
    14,
    5.02,
    5.80,
    783.00,
    70238.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    205,
    '8992388121021',
    'ABC KARI AYAM CUP ',
    12,
    4.51,
    5.20,
    691.00,
    54108.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    206,
    '8998866200837',
    'SEDAP MIE CUP SOTO 81 GR',
    14,
    4.10,
    5.00,
    900.00,
    57400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    207,
    '8998866200844',
    'SEDAP MIE CUP KARI SPC 81 GR',
    4,
    4.10,
    5.00,
    900.00,
    16400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    208,
    '8998127310275',
    'MAMAYA BIHUN JAGUNG 150 GR',
    3,
    2.73,
    3.50,
    775.00,
    8175.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    209,
    '8992388111237',
    'ABC AYAM BAWANG REBUS',
    13,
    1.61,
    2.20,
    592.00,
    20904.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    210,
    '8992388111138',
    'ABC SEMUR AYAM PEDAS',
    25,
    1.84,
    2.20,
    365.00,
    45875.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    211,
    '8991001790200',
    'TWISTER THIN STRAWBERY 20 G',
    22,
    1.79,
    2.00,
    214.00,
    39292.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    212,
    '8991001790071',
    'TWISTER THIN Vanila  20 G',
    1,
    1.59,
    2.00,
    410.00,
    1590.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    213,
    '8993118937110',
    'Kremes Mie 15 gr',
    46,
    828.00,
    1.00,
    172.00,
    38088.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    214,
    '8997240350014',
    'WANT WANT RICEPOP 15 ',
    25,
    1.75,
    2.00,
    250.00,
    43750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    215,
    '89686611854',
    'QTELA TEMPE CABE RAWIT 55GR',
    1,
    6.60,
    7.00,
    400.00,
    6600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    216,
    '8997018170011',
    'JAHE MERAH AMANAH 20 GR',
    6,
    8.00,
    10.00,
    2000.00,
    48000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    217,
    '8991002304017',
    'RELAXA BARLEY MINT 50 PCS',
    1,
    5.30,
    6.50,
    1200.00,
    5300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    218,
    '8991002337619',
    'RELAXA LITTLE PONY GUMMY CANDY',
    1,
    9.19,
    11.00,
    1811.00,
    9189.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    219,
    '8996001328224',
    'TAMARIN CANDY BAG 135 GR ',
    3,
    6.20,
    7.50,
    1300.00,
    18600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    220,
    '8991102281430',
    'SC MINTZ DOUBLEMINT 115G',
    1,
    6.20,
    7.00,
    800.00,
    6200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    221,
    '8992003785874',
    'PERMEN ZIPLONG BAG 100G (50\'S)',
    5,
    6.56,
    7.00,
    444.00,
    32780.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    222,
    '8992727002974',
    'LAURIER ACT DAY X-TRAWING 30 S',
    3,
    20.93,
    23.00,
    2075.00,
    62775.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    223,
    '8993189381423',
    'CHARM HERBAL SEPW 23 CM 18S',
    2,
    14.70,
    16.50,
    1800.00,
    29400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    224,
    '8993189381416',
    'CHARM HERBAL SEPW 23 CM 16S',
    2,
    14.70,
    16.50,
    1800.00,
    29400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    225,
    '8993189381430',
    'CHARM HERBAL SEPW2 26 CM 14S',
    1,
    14.70,
    16.50,
    1800.00,
    14700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    226,
    '8998866106450',
    'ZINC SHAMPOO BLACK SHINE BTL 340ML',
    1,
    34.90,
    36.50,
    1600.00,
    34900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    227,
    '8998866106443',
    'ZINC SHAMPOO SOFT CARE BTL 340ML',
    2,
    34.90,
    36.50,
    1600.00,
    69800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    228,
    '0711844340008',
    'ABC TERASI UDANG 20X4.5G',
    3,
    6.35,
    7.00,
    650.00,
    19050.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    229,
    '8997011931732',
    'DESAKU MARINASI',
    308,
    709.00,
    1.00,
    291.00,
    218372.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    230,
    '8997011931107',
    'Ketumbar Bubuk',
    11,
    1.00,
    1.50,
    500.00,
    11000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    231,
    '8995899250235',
    'BONCABE SAMBAL TABUR EBI KRIUK',
    6,
    6.80,
    7.50,
    700.00,
    40800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    232,
    '8995899250211',
    'BONCABE SMBL TBR ORI 22.5/45',
    2,
    6.80,
    7.50,
    700.00,
    13600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    233,
    '8994907001302',
    'ABC SAMBEL NUSANTARA TERASI',
    37,
    1.55,
    2.00,
    450.00,
    57350.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    234,
    '8993351120485',
    'GREENFIELDS YOUGHR RTD ORIGINAL 250 ML',
    3,
    7.76,
    8.50,
    741.00,
    23277.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    235,
    '8993351120263',
    'GREENFIELDS YOUGHR POUCH MANGGO 80 GR',
    6,
    6.94,
    7.50,
    562.00,
    41628.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    236,
    '8993351120867',
    'GREENFIELDS YOUGHR POUCH MIXED BERRY 80 GR',
    7,
    6.94,
    7.50,
    562.00,
    48566.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    237,
    '8993351120362',
    'GREENFIELDS YOUGHR POUCH STRAW 80 GR',
    4,
    6.94,
    7.50,
    562.00,
    27752.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    238,
    '8996006862112',
    'FRUIT TEA  KOTAK LEMON 250 ML',
    9,
    2.36,
    3.50,
    1145.00,
    21195.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    239,
    '711844162419',
    'ABC SARI KACANG HIJAU 250 ML ',
    15,
    3.88,
    5.00,
    1125.00,
    58125.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    240,
    '0711844162402',
    'ABC SARI KACANG HIJAU 200 ML',
    28,
    3.20,
    4.00,
    800.00,
    89600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    241,
    '8998009050022',
    'SARI KACANG HIJAU 150 ML',
    5,
    2.45,
    3.20,
    755.00,
    12225.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    242,
    '8991001661739',
    'DF TREASURE ALMOND 36GR',
    0,
    6.40,
    7.50,
    1097.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    243,
    '8997240350274',
    'OPAO STAWBERRY 125 ML',
    10,
    2.30,
    3.00,
    700.00,
    23000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    244,
    '8999908208101',
    'MY BABY POWDER ORIGINAL 100GR',
    1,
    6.05,
    7.00,
    950.00,
    6050.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    245,
    '055500130238',
    'SOS LANTAI FLORA',
    4,
    9.20,
    10.50,
    1300.00,
    36800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    246,
    '8998866679572',
    'SOKLIN LANTAI ROSE 780 ML',
    6,
    9.20,
    10.50,
    1300.00,
    55200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    247,
    '8993560033040',
    'HARPIC PP ORI 200 ML',
    5,
    11.80,
    13.00,
    1200.00,
    59000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    248,
    '8998899013091',
    'BAYCLIN FRESH 500ML',
    1,
    8.30,
    10.00,
    1700.00,
    8300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    249,
    '8998899013077',
    'BAYCLIN REGULER 500ML',
    1,
    8.30,
    10.00,
    1700.00,
    8300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    250,
    '8992765101011',
    'GILLETTE GOAL KLIK ',
    1,
    6.53,
    7.50,
    967.00,
    6533.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    251,
    '4801234014315',
    'KIWI EXPRESS SHINE SPONGE BLACK 7 ML',
    2,
    39.00,
    41.00,
    2000.00,
    78000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    252,
    '8997016221319',
    'MORRIS POMADE WB STRONG HOLD 80GR',
    1,
    23.50,
    25.00,
    1500.00,
    23500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    253,
    '8997016221296',
    'MORRIS POMADE WB SUPREME HOLD 80GR',
    1,
    23.50,
    25.00,
    1500.00,
    23500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    254,
    '8992832605756',
    'BELLAGIO POMADE SHINE & EXTREME 82GR',
    2,
    24.10,
    26.00,
    1900.00,
    48200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    255,
    '8992832604667',
    'BELLAGIO POMADE SHINE & STRONG RED 80GR',
    2,
    24.10,
    26.00,
    1900.00,
    48200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    256,
    '8992832606029',
    'BELLAGIO HOMME CLAY DYNAMIC RED 90GR',
    1,
    24.80,
    26.50,
    1700.00,
    24800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    257,
    '8993099132979',
    'PAGODA PASTILES MINT 20 GR',
    1,
    5.22,
    6.20,
    983.00,
    5217.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    258,
    '8999801410106',
    'AERO ALKALIN ',
    1,
    11.90,
    13.00,
    1100.00,
    11900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    259,
    '8999801310215',
    'BATU BATERAI UM 3 BIRU SINGLE',
    33,
    2.11,
    3.00,
    891.00,
    69597.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    260,
    '886022941208',
    'BATU BATERAI  +  BLISTER 4 BUTIR',
    7,
    8.33,
    9.00,
    666.00,
    58338.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    261,
    '8886020033431',
    'W-3343 BGS KAPUR AJAIB',
    49,
    2.71,
    3.50,
    791.00,
    132741.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    262,
    '8993351120065',
    'GREENFIELDS YOUGHR POUCH ORIGINAL  80 GR',
    1,
    6.94,
    8.00,
    1062.00,
    6938.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    263,
    '8992832606012',
    'BELLAGIO HOMME CLAY MEGA BLACK 90GR',
    1,
    24.80,
    26.00,
    1200.00,
    24800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    264,
    '8993200345717',
    'SOSIS KENZELER  HOT',
    0,
    8.50,
    9.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    265,
    '8997207580027',
    'GULA GUNUNG MADU BKS 1 KG',
    11,
    14.10,
    17.00,
    2900.00,
    155100.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    266,
    '8997209390341',
    'TEPUNG KETAN BOLA DELI 500 G',
    8,
    11.30,
    12.00,
    700.00,
    90400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    267,
    '8999801200030',
    'FOYU 500 GR',
    1,
    12.81,
    14.00,
    1187.00,
    12813.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    268,
    '8997215750030',
    'WINCHEEZ 250 GR',
    2,
    15.00,
    16.00,
    1000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    269,
    '8998888110114',
    'MARJAN SIRUP COCOPANDAN',
    7,
    17.75,
    18.50,
    750.00,
    124250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    270,
    '8991001400024',
    'VAN HTN CC PWDR 90 G',
    1,
    20.24,
    21.50,
    1265.00,
    20235.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    271,
    '8992933217117',
    'NUTRIGEL RASA JAMBU BIJI 15 GR ',
    1,
    5.25,
    6.00,
    750.00,
    5250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    272,
    '8992933211115',
    'NUTRIGEL RASA STRAW BIJI 15 GR ',
    6,
    5.25,
    6.00,
    750.00,
    31500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    273,
    '992855888228',
    'AGAR AGAR BOLA DUNIA',
    38,
    4.19,
    5.00,
    806.00,
    159372.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    274,
    '8992717102509',
    'SUN KARA SANTAN 200ML',
    3,
    8.90,
    9.50,
    600.00,
    26700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    275,
    '8997024910052',
    'VANILI CAPUNG',
    27,
    433.00,
    600.00,
    167.00,
    11691.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    276,
    '3516663740001',
    'PERNIPAN 11 GR',
    19,
    4.50,
    5.50,
    1000.00,
    85500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    277,
    '8992984821325',
    'KOEPOE SP PENGEMULSI 70 GR',
    1,
    14.40,
    15.50,
    1100.00,
    14400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    278,
    '8995757019776',
    'PENA KIKY EXL',
    24,
    1.34,
    2.50,
    1157.00,
    32232.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    279,
    '8995757026941',
    'BISNIS FILE ',
    10,
    3.00,
    4.00,
    1000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    280,
    '8998888710574',
    'DELMONTE EXTRA HOT PC 1 KG CHILI ',
    4,
    19.01,
    21.00,
    1990.00,
    76040.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    281,
    '8993200666607',
    'GOURMED EXTRA PEDAS 1 KG',
    8,
    16.00,
    18.00,
    2000.00,
    128000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    282,
    '8998888710178',
    'DELMONTE KETCHUP 1 KG ',
    3,
    13.53,
    15.00,
    1470.00,
    40590.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    283,
    '8992774875002',
    'ROYAL GOLD KECAP IKAN 725 ML',
    9,
    32.92,
    36.00,
    3076.00,
    296316.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    284,
    '8992946532764',
    'MINYAK GORENG FITRI 450 GR',
    4,
    8.50,
    9.50,
    1000.00,
    34000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    285,
    '8992946532795',
    'MINYAK GORENG RIZKY 1000 ML ',
    8,
    14.42,
    15.50,
    1083.00,
    115336.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    286,
    '8992946122002',
    'TROPICAL MINYAK GORENG BOTOL 2 L',
    11,
    35.95,
    38.00,
    2047.00,
    395483.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    287,
    '8992696421585',
    'NESCAFE CLASSIC 100 GR ',
    1,
    30.28,
    32.00,
    1725.00,
    30275.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    288,
    '8992936115045',
    'TONG TJI ORIGINAL BLACK TEA   25S',
    13,
    6.55,
    7.50,
    954.00,
    85098.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    289,
    '894171101289',
    'white coffe 20 gr ',
    9,
    1.06,
    1.50,
    445.00,
    9495.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    290,
    '8995899203095',
    'bon cabe 35 gr',
    2,
    8.20,
    9.00,
    800.00,
    16400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    291,
    '8997011930612',
    'LADAKU',
    505,
    1.00,
    1.30,
    300.00,
    505000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    292,
    '8995757501004',
    'KERTAS KADO',
    46,
    737.00,
    1.50,
    763.00,
    33902.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    293,
    '8995757218308',
    'BUKU FOLIO KIKY 100',
    3,
    18.00,
    20.00,
    2000.00,
    54000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    294,
    '8995757043078',
    'PAPER BAG UKURAN KECIL ',
    8,
    987.00,
    2.00,
    1013.00,
    7896.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    295,
    '8995757025012',
    'PAPER BAG UKURAN BESAR',
    8,
    3.23,
    5.00,
    1771.00,
    25832.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    296,
    '8995757639707',
    'PEPER BAG KIKY',
    9,
    5.37,
    7.00,
    1635.00,
    48285.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    297,
    '8995757037961',
    'KIKY F4 7565',
    2000,
    250.00,
    350.00,
    100.00,
    500000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    298,
    '8995757041630',
    'ORIGAMI 14 X 14',
    24,
    2.03,
    3.50,
    1471.00,
    48696.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    299,
    '8995757827050',
    'AMPLOP MERPATI ',
    32,
    250.00,
    1.00,
    750.00,
    8000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    300,
    '8992911012116',
    'CUTTON BUDS WING',
    5,
    5.10,
    6.00,
    900.00,
    25500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    301,
    '8992911041215',
    'CUTTON BUDS ADULT',
    6,
    11.70,
    12.50,
    800.00,
    70200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    302,
    '8992911051337',
    'SAUDDI CHOIS CUTTON BUDS 133',
    3,
    4.60,
    5.50,
    900.00,
    13800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    303,
    '8992911010488',
    'SAUDDI CHOIS CUTTON BUDS 132',
    1,
    4.60,
    5.00,
    400.00,
    4600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    304,
    '8994171101289',
    'LUWAK WHITE COF RNCNG 20 GR ',
    9,
    1.06,
    1.50,
    445.00,
    9495.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    305,
    '8993274538015',
    'CUCU RICE CRISPIES',
    48,
    887.00,
    1.00,
    113.00,
    42576.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    306,
    '8992696403413',
    'NESCAFE CLASSIC 50GR',
    1,
    16.50,
    18.00,
    1500.00,
    16500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    307,
    '8999999195649',
    'SARIWANGI TEH ASLI 25\'SX1.85G',
    31,
    4.95,
    6.50,
    1550.00,
    153450.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    308,
    '8999999027032',
    'LIFEBUOYSHP STRO 7 SH 12 X 9 ML',
    32,
    4.20,
    5.00,
    800.00,
    134400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    309,
    '8999999048167',
    'SUNSILK 9 ML',
    1,
    8.53,
    9.50,
    975.00,
    8525.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    310,
    '8993560022020',
    'DETTOL LIQUID 95 ML ',
    1,
    20.55,
    22.00,
    1454.00,
    20546.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    311,
    '0388852007201',
    'SPON SUNLIKE ',
    12,
    5.00,
    5.50,
    500.00,
    60000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    312,
    '8999999044213',
    'ZWITSAL BABAY SHAME ',
    1,
    17.30,
    18.50,
    1200.00,
    17300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    313,
    '8999999559540',
    'LIFEBUOY BW LEMON FRESH PCH 90ML',
    7,
    3.85,
    4.50,
    650.00,
    26950.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    314,
    '8999999559533',
    'LIFEBUOY BW TOTAL 10 LD PCH 90ML',
    8,
    3.85,
    4.50,
    650.00,
    30800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    315,
    '8000700000005',
    'DOVE BEAUTY CREAM 100 GR',
    1,
    8.90,
    9.50,
    600.00,
    8900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    316,
    '8999999036607',
    'LUX BAR SOAP ROSE FRESH 75GR',
    2,
    3.90,
    4.50,
    600.00,
    7800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    317,
    '8999999533731',
    'CITRA BENGKOANG 70 GR',
    1,
    7.30,
    8.30,
    1000.00,
    7300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    318,
    '8999999059309',
    'LIFEBOY ACTIVE SILVER 70 GR',
    3,
    3.35,
    4.00,
    650.00,
    10050.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    319,
    '8999999059323',
    'LIFEBUOY BAR SOAP LEMON FRESH 85GR/75GR',
    7,
    3.35,
    4.00,
    650.00,
    23450.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    320,
    '8999999059316',
    'LIFEBUOY BAR SOAP WHITE MILD CARE 85/75GR',
    10,
    3.20,
    4.00,
    800.00,
    32000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    321,
    '8998866603669',
    'FRES & NATURAL BAR SOAP APPLE KIWI 70GR/65GR',
    3,
    1.60,
    2.00,
    400.00,
    4800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    322,
    '8998866603676',
    'FRES & NATURAL BAR SOAP CUCUMBER MELON 70GR/65GR',
    4,
    1.60,
    2.00,
    400.00,
    6400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    323,
    '8993189270307',
    'CHARM BODY FIT EXTRA MAXI  20\'S',
    1,
    8.70,
    9.50,
    800.00,
    8700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    324,
    '8993189270420',
    'CHARM BODY FIT NIGHT WING 35CM 12\'s',
    2,
    19.00,
    20.00,
    1000.00,
    38000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    325,
    '8996196005252',
    'PIATTOS BBQ 20 GR',
    7,
    1.60,
    2.00,
    400.00,
    11200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    326,
    '8991002502093',
    'MAYASI PAW ROASTED CORN FLAVOR 20GR',
    9,
    1.56,
    2.00,
    440.00,
    14040.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    327,
    '8991002502086',
    'MAYASI PAW COKLAT FLAVOR 20 GR',
    16,
    1.56,
    2.00,
    440.00,
    24960.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    328,
    '8997004302457',
    'OISHI SUKI SUKI 60GRM',
    6,
    6.30,
    7.00,
    700.00,
    37800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    329,
    '8991001663344',
    'BAR-BAR 80G(10X8G)',
    2,
    12.28,
    13.00,
    720.00,
    24560.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    330,
    '8993274538374',
    'CUCU CHOCO MALLOW 20 GR',
    39,
    1.88,
    2.00,
    125.00,
    73125.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    331,
    '8992003786857',
    'ANTANGIN GOOD NIGHT TABLET 4\'S',
    6,
    5.80,
    6.50,
    700.00,
    34800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    332,
    '8993365160019',
    'TJ MADU JAHE MERAH 140 ML ',
    3,
    10.00,
    12.00,
    2000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    333,
    '8992843103050',
    'BETADINE 5 ML ',
    6,
    5.45,
    7.00,
    1550.00,
    32700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    334,
    '8996200900092',
    'HEROCYN 85 GR',
    3,
    13.70,
    14.50,
    804.00,
    41088.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    335,
    '8998103000589',
    'CUSSON BABY PWD SOFT&amp;SMOOTH 100GR',
    1,
    6.65,
    7.50,
    850.00,
    6650.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    336,
    '8998866107464',
    'POSH BODY SPRAY FRESH SPIRIT 150ML',
    1,
    20.60,
    21.60,
    1000.00,
    20600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    337,
    '8999999719418',
    'VASELINE HBL HEALTY WHITE 200 ML',
    3,
    28.20,
    30.00,
    1800.00,
    84600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    338,
    '8999999052959',
    'POND\'S FACIAL FOAM WB LIGHTG 50ML',
    1,
    18.40,
    19.50,
    1100.00,
    18400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    339,
    '8999999719395',
    'VASELINE UVXTRA BRIGT 100 ML',
    2,
    29.70,
    31.00,
    1300.00,
    59400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    340,
    '8993379284268',
    'LERVIA LOTION MILK BOTOL 200ML',
    2,
    20.35,
    22.00,
    1650.00,
    40700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    341,
    '8992727003537',
    'BIORE FACIAL MEN B/W SCRUB 100ML',
    2,
    29.80,
    31.00,
    1200.00,
    59600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    342,
    '8992727005159',
    'BIORE MEN FF ACNE ACTION 100GR',
    1,
    30.70,
    32.00,
    1300.00,
    30700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    343,
    '8992727006330',
    'BIORE MENS BRIGHT ACT 100GR',
    1,
    30.70,
    32.00,
    1300.00,
    30700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    344,
    '8992832601628',
    'CASABLANCA ROLL ON MEN BLACK 50ML',
    1,
    12.60,
    14.00,
    1400.00,
    12600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    345,
    '8992832602861',
    'CASABLANCA ROLL ON WMN WHITE 50ML',
    1,
    15.70,
    17.00,
    1300.00,
    15700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    346,
    '8992832602991',
    'BELLAGIO ROLL ON STAMINA 50 ML',
    1,
    23.20,
    25.00,
    1800.00,
    23200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    347,
    '8993417001260',
    'OVALE FACE LOTION ANTI ANCE 100ML',
    1,
    16.80,
    18.00,
    1200.00,
    16800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    348,
    '8993417010033',
    'OVALE FACE LOTION LEMON 100 ML',
    2,
    16.80,
    18.00,
    1200.00,
    33600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    349,
    '8993005212023',
    'CALADINE BABY POWDER 55 GR',
    2,
    9.33,
    11.00,
    1666.00,
    18668.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    350,
    '8993005123015',
    'CALADINE LOTION 60 ML',
    1,
    15.18,
    17.00,
    1820.00,
    15180.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    351,
    '8993176111293',
    'CAP LANG K.PUTIH A.THERAPY 210ML',
    1,
    65.80,
    67.80,
    2000.00,
    65800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    352,
    '8998667400931',
    'KONICARE MINYAK TELON PLUS 60ML',
    1,
    25.90,
    27.50,
    1600.00,
    25900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    353,
    '8998667401068',
    'KONICARE MINYAK KAYU PUTIH PLUS 125ML',
    1,
    49.50,
    52.00,
    2500.00,
    49500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    354,
    '8998667400696',
    'KONICARE MINYAK TELON 125ML',
    3,
    43.00,
    45.00,
    2000.00,
    129000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    355,
    '8998667400283',
    'KONICARE MINYAK TELON BTL 60 ML',
    3,
    21.70,
    23.50,
    1800.00,
    65100.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    356,
    '8998667400948',
    'KONICARE MINYAK TELON PLUS 125ML',
    3,
    50.10,
    52.00,
    1900.00,
    150300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    357,
    '8993366101417',
    'MINYAK KAYU PUTIH SIDOLA 100 ML',
    9,
    49.80,
    52.00,
    2203.00,
    448173.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    358,
    '8993366101219',
    'MINYAK KAYU PUTIH SIDOLA 30 ML',
    1,
    15.89,
    18.00,
    2107.00,
    15893.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    359,
    '8993366101318',
    'SIDOLA MINYAK KAYU PUTIH 60 ML ',
    7,
    31.66,
    35.00,
    3336.00,
    221648.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    360,
    '8997021872735',
    'CREAM HOT IN GO 100 GR',
    1,
    22.99,
    25.00,
    2014.00,
    22986.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    361,
    '8997021872742',
    'CREAM HOT IN STRONG GO',
    2,
    22.99,
    25.00,
    2014.00,
    45972.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    362,
    '8993176120066',
    'CAP LANG BALSEM AKTIF 20GR',
    2,
    7.50,
    9.00,
    1500.00,
    15000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    363,
    '8994591010031',
    'CDR FRUITPUNCH 10TAB/TUBE',
    1,
    47.40,
    50.00,
    2600.00,
    47400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    364,
    '8998667100312',
    'PROTECAL SOLID TUBE 4.5 G X 10\'S',
    1,
    34.70,
    37.00,
    2300.00,
    34700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    365,
    '8994591070011',
    'REDOXON DOUBLE ACTION 10TAB/TUBE',
    1,
    44.20,
    47.00,
    2800.00,
    44200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    366,
    '8999999518998',
    'RINSO MOLTO PURPLE 770 GR',
    1,
    26.50,
    28.00,
    1500.00,
    26500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    367,
    '8999999526887',
    'RINSO MOLTO GOLD 770 GR',
    1,
    26.50,
    28.00,
    1500.00,
    26500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    368,
    '8998866609494',
    'SOKLIN SOFTERGENT BIRU 265/260 GR',
    4,
    4.45,
    5.00,
    550.00,
    17800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    369,
    '8998866604963',
    'DAIA DETERGENT LEMON 290/280GR',
    12,
    4.50,
    5.00,
    500.00,
    54000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    370,
    '8998866608459',
    'DAIA DETERGENT PUTIH 290/280GR',
    6,
    4.50,
    5.00,
    500.00,
    27000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    371,
    '8998866608718',
    'DAIA SOFTENER 263 GR',
    2,
    4.50,
    5.00,
    500.00,
    9000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    372,
    '8998866610261',
    'DAIA DETERGENT VIOLET 290/280GR',
    1,
    4.50,
    5.00,
    500.00,
    4500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    373,
    '8993335519397',
    'BUKRIM SUPERKLIN SENSASIPUTIHLEMBUT300GR',
    7,
    3.40,
    4.00,
    600.00,
    23800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    374,
    '8993335517881',
    'BUKRIM SUPERKLIN SENSASI BUNGA 300GR',
    7,
    3.40,
    4.00,
    600.00,
    23800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    375,
    '8998866605809',
    'SO KLIN DET SMART CLEAN WHITE 800 GR',
    4,
    15.90,
    17.50,
    1600.00,
    63600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    376,
    '8998866609029',
    'DAIA DETERGENT PUTIH 555GR',
    2,
    9.30,
    10.00,
    700.00,
    18600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    377,
    '8993335521543',
    'BUKRIM SUPERKLIN SENSASI VIOLET 300GR',
    5,
    3.40,
    4.00,
    600.00,
    17000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    378,
    '8993335521260',
    'TOTAL SOFTENER VIOLET 650 GR',
    1,
    14.40,
    15.50,
    1100.00,
    14400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    379,
    '8998866607346',
    'DIAA PUTIH 1.7 GR',
    1,
    38.30,
    40.00,
    1700.00,
    38300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    380,
    '8992727003803',
    'ATTACK EASY ROMANTIC FLOWER 700GR',
    2,
    17.20,
    18.50,
    1300.00,
    34400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    381,
    '8992727002479',
    'ATTACK DET PLUS SOFTENER 800 G',
    2,
    23.00,
    24.50,
    1500.00,
    46000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    382,
    '8992727001489',
    'ATTACK DETERGENT COLOR/VIOLET 800 G',
    2,
    23.00,
    24.50,
    1500.00,
    46000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    383,
    '8998866612517',
    'SO KLIN SOFTERGENT WHITE & BRIGHT 770 GR',
    2,
    21.20,
    22.50,
    1300.00,
    42400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    384,
    '8998866619271',
    'SOKLIN DET ANTISEP FRESH SCENT PCH 700GR',
    2,
    17.00,
    19.00,
    2000.00,
    34000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    385,
    '8992727005975',
    'ATTACK JAZ1 SEMERBAK CINTA 1.7 KG',
    1,
    32.00,
    35.00,
    3000.00,
    32000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    386,
    '8998866803878',
    'SO KLIN DET ALL IN 1 FLORAL 900 GR',
    3,
    14.15,
    15.50,
    1350.00,
    42450.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    387,
    '8993335514293',
    'BUKRIM DET OXY KLIN HYGIENE 800G',
    4,
    23.90,
    26.00,
    2100.00,
    95600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    388,
    '8999999569853',
    'SAHAJA DETERGEN BUBUK POUCH 770G',
    2,
    15.30,
    17.00,
    1700.00,
    30600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    389,
    '8992727004381',
    'ATTACK EASY ROMANTIC FLOWER 1.2KG',
    2,
    25.00,
    27.00,
    2000.00,
    50000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    390,
    '8992727003681',
    'ATTACK EASY PURPLE BLOSSOM 1.2 KG',
    2,
    25.00,
    27.00,
    2000.00,
    50000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    391,
    '8999999571962',
    'MOLTO SOFTENER EDP ENCHANTING PCH 720ML',
    1,
    26.00,
    28.00,
    2000.00,
    26000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    392,
    '8999999571993',
    'MOLTO ULTRA PURE POUCH 720ML',
    1,
    33.00,
    35.00,
    2000.00,
    33000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    393,
    '8992727001687',
    'BIORE  BODY F. MEN COOL ENERGY P 250 ML',
    1,
    13.90,
    16.00,
    2100.00,
    13900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    394,
    '8999999571948',
    'MOLTO ALLIN1 PINK POUCH 720 ML',
    1,
    30.50,
    32.50,
    2000.00,
    30500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    395,
    '8998866605113',
    'CLING GLAS CLEAN KUNING BTL 425ml',
    1,
    8.20,
    11.00,
    2800.00,
    8200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    396,
    '8999999570385',
    'MOLTO PEWANGI PINK POUCH 280ML',
    4,
    4.70,
    5.50,
    800.00,
    18800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    397,
    '8998866605144',
    'CLING GLAS CLEAN LEMON BTL 425ml',
    5,
    8.20,
    9.50,
    1300.00,
    41000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    398,
    '8998866608862',
    'RAPIKA BIANG SWEET PNK 250 ML',
    1,
    8.20,
    9.50,
    1300.00,
    8200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    399,
    '8998866611114',
    'Rapika B.LUXURY',
    1,
    3.20,
    5.00,
    1800.00,
    3200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    400,
    '8993560033293',
    'VANISH PINK POUCH 150 ML ',
    2,
    9.30,
    10.50,
    1200.00,
    18600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    401,
    '8999999570811',
    'RINSO MOLTO PURPLE 400 GR',
    4,
    9.10,
    10.00,
    900.00,
    36400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    402,
    '8999999706173',
    'PEPSODENT PG WHITE 120 G',
    1,
    7.75,
    8.50,
    750.00,
    7750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    403,
    '4902430403856',
    'ORAL B AR 123 CLEAN 40 ',
    1,
    12.95,
    15.00,
    2050.00,
    12950.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    404,
    '8991102100823',
    'FORMULA PG ACTION 190 GR',
    8,
    9.80,
    11.00,
    1200.00,
    78400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    405,
    '8886030422843',
    'DEE - DEE TOOTHPASTE STRAW 50 GR',
    1,
    5.95,
    7.00,
    1055.00,
    5945.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    406,
    '8886030422836',
    'DEE - DEE TOOTHPASTE ORANGE 50 GR',
    2,
    5.95,
    7.00,
    1055.00,
    11890.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    407,
    '8991111153148',
    'LISTERINE MOUNTHWASH SIWAK 250ML',
    3,
    22.50,
    25.00,
    2500.00,
    67500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    408,
    '8991991161332',
    'SENSODYNE PG FRESHMINT 100 GR',
    2,
    30.00,
    34.00,
    4000.00,
    60000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    409,
    '8992695744067',
    'SENSODYNE PG MULTI ACTION 100GR',
    4,
    32.45,
    35.00,
    2550.00,
    129800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    410,
    '8992695724069',
    'SENSODYNE PG WHITENING 100GR',
    3,
    33.85,
    36.00,
    2150.00,
    101550.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    411,
    '8999999706081',
    'PEPSODENT PG WHITE EKONOMIS 75GR',
    10,
    4.10,
    5.00,
    900.00,
    41000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    412,
    '8992695554062',
    'SENSODYNE PG HERBAL 100GR',
    4,
    31.40,
    33.50,
    2100.00,
    125600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    413,
    '8998866105071',
    'CIPTADENT PG ICE MINT 190 GR',
    2,
    9.58,
    10.50,
    925.00,
    19150.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    414,
    '9310042627501',
    'SENSODYNE PG ORIGINAL 100 GR',
    4,
    30.00,
    33.00,
    3000.00,
    120000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    415,
    '4800318407739',
    'SENSODYNE PG COOL GEL 100 GR',
    4,
    30.00,
    33.00,
    3000.00,
    120000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    416,
    '8999999706111',
    'PEPSODENT PG WHITE 25GR',
    18,
    1.65,
    3.00,
    1350.00,
    29700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    417,
    '8886020001294',
    'S-108 SWL TOILET CLR B3P',
    3,
    13.01,
    16.00,
    2992.00,
    39024.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    418,
    '49678',
    'SPON JARING',
    1,
    4.54,
    5.00,
    463.00,
    4537.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    419,
    '8991102022347',
    'FORMULA SG RIPPLE SOFT ',
    1,
    2.72,
    3.50,
    783.00,
    2717.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    420,
    '8991111152080',
    'LISTERINE MOUTHWASH GREEN TEA 250ML',
    1,
    24.00,
    27.00,
    3000.00,
    24000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    421,
    '8999908302502',
    'TOTALCARE MOUTHWASH ORI HERBS250M',
    2,
    11.50,
    14.00,
    2500.00,
    23000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    422,
    '8991102020152',
    'FORMULA SG DBL ACTION SFT ',
    5,
    2.84,
    3.50,
    658.00,
    14210.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    423,
    '8999999406929',
    'SUPER PELL P.LT GREEN PCH 770 ML',
    3,
    13.80,
    15.50,
    1700.00,
    41400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    424,
    '0055500130207',
    'SOS P.LANTAI APPLE PCH 750 ML',
    3,
    9.20,
    10.00,
    800.00,
    27600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    425,
    '055500130245',
    'SOS P. LANTAI VIOLET 750 ML',
    4,
    9.20,
    10.50,
    1300.00,
    36800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    426,
    '8999999406912',
    'SUPER PELL P.LT RED PCH 770 ML',
    4,
    13.80,
    15.00,
    1200.00,
    55200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    427,
    '8998866603539',
    'SOKLIN LANTAI FLOREL LEVENDER 780 ML ',
    4,
    9.20,
    10.50,
    1300.00,
    36800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    428,
    '8999999407919',
    'WIPOL CLASSIC PINE POUCH 780 ML',
    2,
    18.80,
    21.00,
    2200.00,
    37600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    429,
    '8998866679602',
    'SOKLIN LANTAI APLE DAN VIONI 780 ML ',
    5,
    9.20,
    10.50,
    1300.00,
    46000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    430,
    '8993560033477',
    'VANISH PINK SCT 60 ML VB',
    47,
    3.40,
    4.00,
    600.00,
    159800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    431,
    '8993560033583',
    'VANISH WHITE 60ML SCT VB ',
    14,
    3.50,
    4.00,
    500.00,
    49000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    432,
    '8998866603645',
    'WINGS PORCELAIN HIJAU BTL 780 ML',
    1,
    13.80,
    15.00,
    1200.00,
    13800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    433,
    '8993560033095',
    'HARFIX 450 ML',
    1,
    18.95,
    21.00,
    2050.00,
    18950.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    434,
    '8998899013114',
    'bayclin 100 LEMONml ',
    1,
    21.00,
    23.00,
    2000.00,
    21000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    435,
    '8992745120407',
    'HIT AEROSOL ORANGE 200 ML ',
    2,
    15.50,
    17.00,
    1500.00,
    31000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    436,
    '8999999042646',
    'RINSO MOLTO DET LIQ SACHET 6X40 ML',
    17,
    4.96,
    5.50,
    545.00,
    84235.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    437,
    '8999999514495',
    'RINSO MOLTO LIQ ROSE FRESH 215ML',
    1,
    4.35,
    5.00,
    650.00,
    4350.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    438,
    '8998899013015',
    'BACKIN 100 ML REGULAR\'',
    6,
    23.00,
    26.00,
    3000.00,
    138000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    439,
    '8998899013084',
    'BAYCLIN LEMON 500ML',
    2,
    8.30,
    10.00,
    1700.00,
    16600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    440,
    '8998899013121',
    'BAYCLIN FRESS 1000ML',
    1,
    21.00,
    23.00,
    2000.00,
    21000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    441,
    '8998866100717',
    'MAMA LEMON POUCH 780 ML',
    3,
    16.50,
    17.50,
    1000.00,
    49500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    442,
    '8999999558079',
    'RINSO MOLTO ULTRA SACHET 6X44/42GR',
    3,
    4.90,
    5.50,
    600.00,
    14700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    443,
    '8999999558062',
    'RINSO ANTI NODA SACHET 6X44/42GR',
    1,
    4.90,
    5.50,
    600.00,
    4900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    444,
    '8998866612999',
    'EKONOMI CREAM PINK FLOWER 500K 174/168 GR',
    9,
    1.73,
    2.00,
    275.00,
    15525.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    445,
    '8999999059781',
    'SUNLIGHT LIQ LIME PCH 210ML',
    0,
    4.48,
    5.00,
    525.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    446,
    '8999999050009',
    'SUNLIGHT LIQUID LIME PCH 95/105 ML',
    27,
    1.73,
    2.00,
    275.00,
    46575.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    447,
    '8992946533303',
    'DISHWASH WOSHI GREEN TEA 100 ML',
    1,
    1.65,
    2.00,
    350.00,
    1650.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    448,
    '8998866105750',
    'ZINC SHP CLEAN & ACTIVE BTL 170ML',
    3,
    19.90,
    22.00,
    2100.00,
    59700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    449,
    '8998866105767',
    'ZINC SHP SOFT SHINE BTL 170M',
    3,
    19.90,
    22.00,
    2100.00,
    59700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    450,
    '8998866105743',
    'ZINC SHP REFRESHING COOL BTL 170ML',
    1,
    19.90,
    22.00,
    2100.00,
    19900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    451,
    '8999999036638',
    'LUX BAR SOAP VELVET JASMINE  75GR',
    2,
    3.80,
    4.50,
    700.00,
    7600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    452,
    '8992745470151',
    'SANITER BARSOAPCOOLFRESSBLUE',
    1,
    5.50,
    6.50,
    1000.00,
    5500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    453,
    '8999999031107',
    'LUX BAR SOAP LILY FRESH 75GR',
    1,
    3.90,
    4.50,
    600.00,
    3900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    454,
    'A1',
    'RAJA UDANG 5 KG',
    0,
    71.38,
    75.00,
    3625.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    455,
    'A2',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    11,
    3.28,
    4.50,
    1220.00,
    36080.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (456, 'A5', 'PANIR', 6, 10.00, 12.00, 2000.00, 60000.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    457,
    'A7',
    'SUSU KUE',
    2,
    12.50,
    14.00,
    1500.00,
    25000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    458,
    'A8',
    'COKLAT BATANG DUNIA ',
    1,
    28.00,
    31.00,
    3000.00,
    28000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    459,
    'A9',
    'SENDOK BEBEK BUTEK',
    11,
    7.00,
    8.50,
    1500.00,
    77000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    460,
    'A10',
    'PIPET DRINKING ',
    3,
    7.00,
    8.50,
    1500.00,
    21000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    461,
    'A11',
    'KOTAK ',
    4,
    28.00,
    31.00,
    3000.00,
    112000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    462,
    'A12',
    'MANGKOK PLASTIK ',
    21,
    22.90,
    25.00,
    2100.00,
    480900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    463,
    'A13',
    'SANDAL SWALOW',
    5,
    12.66,
    14.00,
    1341.00,
    63295.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    464,
    'A14',
    'MAP ZET AIR MAIL Z 310 ',
    47,
    629.00,
    1.00,
    371.00,
    29563.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    465,
    'A15',
    'KERTAS FOLIO PER LEMBAR',
    81,
    204.00,
    300.00,
    96.00,
    16524.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    466,
    'A17',
    'MASKER DUCKPILL 5 PCS',
    12,
    4.50,
    5.00,
    500.00,
    54000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    467,
    'A18',
    'MINYAK KAYU PUTIH SIDOLA 15 ML ',
    9,
    9.05,
    12.00,
    2953.00,
    81423.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    468,
    'A19',
    'SPON KAWAT ',
    4,
    5.00,
    5.50,
    500.00,
    20000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    469,
    '8993200668243',
    'SOSIS GOCHUJANG',
    0,
    8.50,
    9.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    470,
    '8993200668496',
    'BAKSO ORIGINAL ',
    0,
    8.50,
    9.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    471,
    '8993200347315',
    'SOSIS MINI',
    0,
    8.50,
    9.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    472,
    '8994365405551',
    'TRIPANCA GELAS DUS',
    0,
    18.00,
    21.00,
    3000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    473,
    '8997207990055',
    'TRIPANCA 600ML',
    96,
    1.25,
    2.00,
    750.00,
    120000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    474,
    '8993351124209',
    'GREENFIELDS UHT STRAWBERRY 250ML',
    3,
    6.00,
    7.00,
    1001.00,
    17997.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    475,
    '899118937073',
    'MIE KREMEZZ SHORR S.BALADO 16 GR',
    10,
    1.50,
    2.00,
    500.00,
    15000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    476,
    '8993351122403',
    'GREENFIELDS EXTRA CHOCHOMALT MILK 200ML',
    5,
    6.00,
    7.00,
    1000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    477,
    '8993351122427',
    'GREENFILEDS EXTRA VANILLA CHAMOMILE MILK 200ML',
    5,
    6.00,
    7.00,
    1000.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    478,
    '8993351122434',
    'GREENFIELDS HONEY EARL GREY 200ML',
    3,
    6.00,
    7.00,
    1000.00,
    18000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    479,
    '8993351122618',
    'GREENFIELDS CHOCOLATE 250ML',
    20,
    6.00,
    7.00,
    1001.00,
    119980.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    480,
    '8993351124117',
    'GREENFIELDS CHOCOMALT MILK 200ML',
    1,
    6.00,
    6.50,
    500.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    481,
    '8991115012106',
    'BIG BABOL STRAWBERRY 20GR',
    9,
    2.00,
    2.50,
    500.00,
    18000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    482,
    '8991115011109',
    'BIG BABOL BLUEBERRY 20GR',
    3,
    2.00,
    2.50,
    500.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    483,
    '8991115010102',
    'BIG BABOL TUTTIFRUTTI 20GR',
    6,
    2.00,
    2.50,
    500.00,
    12000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    484,
    '8990800022550',
    'MENTOS FRUIT 29GR',
    0,
    2.36,
    2.50,
    142.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    485,
    '8990800024844',
    'CHUPA CHUPS 9GR',
    45,
    834.00,
    1.00,
    166.00,
    37530.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    486,
    'A20',
    'BERAS RAJA UDANG 10 KG',
    0,
    142.75,
    145.00,
    2250.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    487,
    '8998009010552',
    'ULTRAMILK FULL CREAM 200ML',
    7,
    4.59,
    5.50,
    912.00,
    32116.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (488, 'A21', 'SEBLAK AYU', 0, 4.50, 5.00, 500.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    489,
    'A22',
    'BASRENG ORI dan PEDAS AYU',
    0,
    9.50,
    10.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (490, 'A24', 'USUS', 0, 9.50, 10.00, 500.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (491, 'A25', 'SUSU KEDELAI', 0, 1.60, 2.00, 400.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    492,
    'A27',
    'BAR-BAR KECIL 80GR',
    2,
    1.15,
    1.50,
    350.00,
    2300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    493,
    '8992761166052',
    'FRESTEA MELATI 350 ML',
    56,
    3.09,
    4.00,
    914.00,
    172816.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    494,
    'A28',
    'PERUNCING JOYKO',
    3,
    2.00,
    2.50,
    500.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    495,
    '8993988690047',
    'PENGHAPUS JOYKO',
    9,
    1.20,
    2.00,
    800.00,
    10800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    496,
    '1100120010473',
    'PULPEN STANDART AE7',
    64,
    1.80,
    2.50,
    700.00,
    115200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    497,
    '8993988282044',
    'PULPEN GEL JOYKO',
    10,
    2.00,
    3.00,
    1000.00,
    20000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    498,
    '8992761002022',
    'SPRITE 390ML',
    26,
    4.62,
    5.50,
    884.00,
    120016.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    499,
    '8992907420017',
    'SARI ROTI KRIM COKLAT 66GR',
    0,
    5.40,
    6.00,
    600.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    500,
    '8992907952143',
    'SARI ROTI KRIM KEJU CHEES 66GR',
    0,
    5.40,
    6.00,
    600.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    501,
    '8992907230012',
    'SARI ROTI CHOCO BUN 55GR',
    0,
    3.15,
    3.50,
    350.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    502,
    '8992907952037',
    'SARI ROTI CHOCO CHEESE BUN 55GR',
    0,
    3.60,
    4.00,
    400.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    503,
    '8992907952334',
    'SARI ROTI SANDWICH KRIM KEJU 46GR',
    0,
    5.40,
    6.00,
    600.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    504,
    '8992907952327',
    'SARI ROTI SANDWICH COKLAT 46GR',
    0,
    5.40,
    6.00,
    600.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    505,
    '8993988065029',
    'PAPER CLIP 100PC',
    2,
    3.00,
    4.00,
    1000.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    506,
    '8993988280842',
    'ISI GEL PEN JOYKO',
    28,
    1.00,
    1.50,
    500.00,
    28000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    507,
    '8993988111078',
    'GLUE  LEM CAIR JOYKO',
    3,
    2.00,
    3.00,
    1000.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    508,
    '8993988052791',
    'TIPE X JOYKO',
    5,
    2.00,
    2.50,
    500.00,
    10000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    509,
    '8993988130123',
    'STABILO JOYKO BIRU PASTEL',
    1,
    3.50,
    4.50,
    1000.00,
    3500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    510,
    '8993988130130',
    'STABILO JOYKO HIJAU PASTEL',
    1,
    3.50,
    4.50,
    1000.00,
    3500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    511,
    '8993988130086',
    'STABILO JOYKO KUNING PASTEL',
    1,
    3.50,
    4.50,
    1000.00,
    3500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    512,
    '8993988130116',
    'STABILO JOYKO UNGU PASTEL',
    1,
    3.50,
    4.50,
    1000.00,
    3500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    513,
    '8993988130109',
    'STABILO JOYKO ORENS PASTEL',
    1,
    3.50,
    4.50,
    1000.00,
    3500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    514,
    'A29',
    'ISOLASI KECIL BENING',
    9,
    500.00,
    1.00,
    500.00,
    4500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    515,
    '8993189270277',
    'CHARM EXTRA MAXI 1PCS SACHET',
    118,
    620.00,
    1.00,
    380.00,
    73160.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    516,
    '8993200668984',
    'BAKSO KANZLER HOT',
    0,
    8.50,
    9.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    517,
    '8996001600849',
    'NIPIS MADU 330ML',
    0,
    2.83,
    3.50,
    666.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    518,
    '8999999589189',
    'SUNLIGHT 650ML',
    0,
    13.60,
    15.00,
    1400.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    519,
    '8999999572303',
    'SUNLIGHT 420ML',
    0,
    9.00,
    10.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    520,
    '8992761111687',
    'A&W SARSAPARILA 250ML',
    0,
    5.00,
    6.50,
    1500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    521,
    '8996006853127',
    'TEBS SPARKLING KALENG 330ML',
    1,
    3.80,
    5.50,
    1700.00,
    3800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    522,
    '8991001661746',
    'DELFI TREASURE COOKIES N CREam 36gr',
    0,
    6.40,
    7.50,
    1097.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    523,
    'A30',
    'KAOS KAKI COKLAT L',
    1,
    6.50,
    8.00,
    1500.00,
    6500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    524,
    'A31',
    'KAOS KAKI COKLAT M',
    2,
    6.00,
    7.00,
    1000.00,
    12000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    525,
    'A32',
    'KAOS KAKI PUTIH SMA',
    8,
    4.00,
    5.00,
    1000.00,
    32000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    526,
    'A33',
    'KAOS KAKI HITAM SMA',
    14,
    4.00,
    5.00,
    1000.00,
    56000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    527,
    '8885013131864',
    'AICE SWEET CORN',
    0,
    2.40,
    3.00,
    600.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    528,
    '8885013131680',
    'AICE BRON SUGAR BOBA ',
    8,
    4.80,
    5.50,
    700.00,
    38400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    529,
    '8885013131925',
    'AICE BLUEBERRY COOKIES',
    0,
    4.80,
    5.50,
    700.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    530,
    '8885013132083',
    'AICE CHOCO MALT',
    0,
    1.60,
    2.00,
    400.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    531,
    '8999510785465',
    'PRISTINE 600ML',
    22,
    3.81,
    4.50,
    695.00,
    83710.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    532,
    '8991771200329',
    'VITACIMIN 1PCS',
    23,
    935.00,
    1.50,
    565.00,
    21505.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    533,
    '8998898101409',
    'TOLAK ANGIN 15ML',
    9,
    3.33,
    4.00,
    667.00,
    29997.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    534,
    '711844110144',
    'ABC KECAP MANIS 300GR',
    9,
    10.50,
    11.00,
    500.00,
    94500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    535,
    'A34',
    'BERAS UDANG 2 KOKI 10KG',
    0,
    137.00,
    143.00,
    6000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    536,
    'A35',
    'TESSA 50S',
    10,
    2.50,
    3.50,
    1000.00,
    25000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    537,
    '8993163502066',
    'MONTIS 150S',
    0,
    5.00,
    6.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    538,
    '8993163502097',
    'MONTIS 185S',
    0,
    6.00,
    7.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    539,
    '8993163502134',
    'MONTIS 50\'S',
    3,
    2.00,
    3.00,
    1000.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    540,
    'A41',
    'PULPEN LILIN',
    12,
    600.00,
    1.00,
    400.00,
    7200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    541,
    '8994705052452',
    'KONA GLUE STICK',
    0,
    1.50,
    2.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    542,
    'A36',
    'PASEO 12S',
    15,
    1.50,
    2.00,
    500.00,
    22500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    543,
    'A40',
    'KAOS KAKI CITRA HITAM/PUTIH',
    5,
    10.00,
    11.00,
    1000.00,
    50000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    544,
    '8991102283380',
    'MINTZ CHERRYMINT MERAH',
    2,
    5.50,
    6.50,
    1000.00,
    11000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    545,
    '8991102281430',
    'MINTZ DUOMINT HIJAU',
    0,
    5.50,
    6.50,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    546,
    '8991102281416',
    'MINTZ PEPPERMINT',
    0,
    5.40,
    6.50,
    1100.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    547,
    '8999999529710',
    'CLEAR MEN MENTOL 160ML',
    3,
    28.60,
    30.00,
    1400.00,
    85800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    548,
    '8998866106382',
    'ZINC MEN ANTI HAIR FALL 170ML',
    2,
    19.90,
    21.00,
    1100.00,
    39800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    549,
    '4902430429375',
    'REJOICE HIJAB ANTI KETOMBE  150ML',
    2,
    20.40,
    22.00,
    1600.00,
    40800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    550,
    '8998866104920',
    'ZINC BLACK SHINE 70ML',
    2,
    10.20,
    12.00,
    1800.00,
    20400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    551,
    '8999999033217',
    'LIFEBUOY SAMPO ANTI KETOMBE 170ML',
    2,
    22.33,
    25.00,
    2667.00,
    44666.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    552,
    '8999999033200',
    'LIFEBUOY SAMPO ANTI KETOMBE 70+21ML',
    2,
    10.50,
    12.50,
    2000.00,
    21000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    553,
    '8999999033132',
    'LIFEBUOY SAMPO RAMBUT RONTOK',
    2,
    22.40,
    25.00,
    2600.00,
    44800.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    554,
    '8999999033163',
    'LIFEBUOY SAMPO HABATUSAUDA',
    2,
    10.30,
    12.50,
    2200.00,
    20600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    555,
    '8999999033125',
    'LIFEBUOY RAMBUT RONTOK 70+21ML',
    4,
    10.90,
    13.00,
    2100.00,
    43600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    556,
    'A39',
    'MEET JELLY ALL VARIAN',
    0,
    11.00,
    12.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    557,
    '6907992824963',
    'JOYDAY MILKY CHOCOLATE 43GR',
    8,
    2.44,
    3.00,
    560.00,
    19520.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    558,
    '8991728000460',
    'JOYDAY SUNDAE CHOCOLATE',
    0,
    5.21,
    6.00,
    791.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    559,
    '8999999502393',
    'ROYCO AYAM 8GR 12S ',
    3,
    4.90,
    5.50,
    600.00,
    14700.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    560,
    '8999999514617',
    'KECAP BANGO 400ML',
    0,
    18.80,
    20.00,
    1200.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    561,
    '8998866612241',
    'SOKLIN LIQUID RENCENG SAKURA  22ML 12S',
    5,
    4.72,
    5.50,
    780.00,
    23600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    562,
    '8992770011084',
    'MICIN AJINOMOTO 100GR',
    10,
    4.60,
    5.00,
    400.00,
    46000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    563,
    '8992870310100',
    'SALONPAS SACHET ',
    4,
    6.50,
    7.50,
    1000.00,
    26000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    564,
    '8999777017804',
    'HANSAPLAST',
    96,
    318.00,
    1.00,
    682.00,
    30528.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    565,
    'A44',
    'MAKARONI DK 6RB AULIA',
    0,
    5.50,
    6.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    566,
    'A42',
    'BASRENG DK 6RB',
    0,
    5.50,
    6.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    567,
    'A43',
    'KERIPIK KACA',
    0,
    9.50,
    10.00,
    500.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    568,
    '8993226112508',
    'REFINA GARAM HALUS 250GR',
    30,
    3.03,
    5.00,
    1975.00,
    90750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    569,
    '0697476744705',
    'GARAM KASAR SEGITIGA 500GR',
    6,
    1.75,
    3.00,
    1250.00,
    10500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    570,
    '8990800022543',
    'MENTOS MINT 29GR',
    10,
    2.36,
    3.00,
    643.00,
    23570.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    571,
    '8992727000048',
    'LAURIER ACTIVE DAY 8\'S',
    2,
    4.00,
    5.00,
    1000.00,
    8000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (572, 'A45', 'MAKARONI AYU', 0, 5.50, 6.00, 500.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (573, 'A46', 'MIE NOVITA', 0, 4.00, 5.00, 1000.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    574,
    'A47',
    'PILUS NOPITA',
    0,
    4.00,
    5.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    575,
    '8885013131727',
    'AICE CHOXOLATE MAX CONE',
    0,
    4.06,
    5.00,
    937.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    576,
    '8999510785472',
    'PRISTINE 1500ML',
    6,
    7.19,
    9.00,
    1808.00,
    43152.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    577,
    '8992931005228',
    'TESSA 250\'S',
    1,
    10.50,
    11.50,
    1000.00,
    10500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    578,
    '8993053121452',
    'PASEO 200\'S',
    3,
    9.50,
    10.50,
    1000.00,
    28500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    579,
    '6922130108057',
    'TOTOLE 40gr',
    11,
    5.53,
    6.80,
    1275.00,
    60775.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    580,
    '6938291880787',
    'GLUE STICK ESCO 10G',
    23,
    2.00,
    3.00,
    1000.00,
    46000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (581, 'A48', 'PENA STARK', 12, 0.00, 0.00, 0.00, 0.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    582,
    'A49',
    'PENGGARIS BESI',
    10,
    3.00,
    4.50,
    1500.00,
    30000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (583, 'A50', 'KANEBO', 3, 7.50, 9.00, 1500.00, 22500.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    584,
    '8995077604515',
    'SUKRO ORI 115GR',
    2,
    816.00,
    1.00,
    184.00,
    1632.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    585,
    '711844120501',
    'ABC SAMBAL EXTRA PEDAS 950GR',
    1,
    0.00,
    0.00,
    0.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    586,
    '6907992823652',
    'JOYDAY CHOCOLATE MILKSHAKE 100ML',
    0,
    4.88,
    5.50,
    625.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    587,
    '8991728000064',
    'JOYDAY CHOCO BERRY 40G5',
    28,
    1.80,
    2.50,
    700.00,
    50400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    588,
    '8999988888989',
    'LARUTAN BADAK 200ML',
    46,
    3.47,
    4.00,
    530.00,
    159620.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    589,
    '8990800022437',
    'ALPENLIEBE KARAMEL BAG 125GR',
    2,
    7.00,
    8.00,
    1000.00,
    14000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    590,
    '8990800020013',
    'MENTOS BAG MINT 135GR',
    2,
    7.00,
    8.00,
    1000.00,
    14000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    591,
    '8990800021362',
    'ALPENLIEBE LOLIPOP KARAMEL',
    17,
    792.00,
    1.00,
    208.00,
    13464.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    592,
    '8993988150084',
    'JOYKO PEMBATAS KERTAS',
    10,
    5.00,
    6.00,
    1000.00,
    50000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    593,
    '8885013131437',
    'AICE STRAWBERRY CRISPY 90ML',
    0,
    2.75,
    3.50,
    750.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    594,
    'A51',
    'SPIDOL JOYKO ',
    25,
    1.50,
    2.50,
    1000.00,
    37500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    595,
    'A52',
    'DOUBLE TIP JOYKO',
    5,
    2.00,
    3.00,
    1000.00,
    10000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    596,
    'A53',
    'ZIPPER BAG MAP PLASTIK',
    6,
    8.50,
    10.00,
    1500.00,
    51000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    597,
    '8993988310044',
    'PUSH PIN JOYKO',
    5,
    4.00,
    5.00,
    1000.00,
    20000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    598,
    '8998838080122',
    'TRIGONAL CLIPS KENKO',
    5,
    2.50,
    3.50,
    1000.00,
    12500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    599,
    '8993093662038',
    'KOMPAS SABUN BATANG',
    23,
    1.04,
    1.50,
    462.00,
    23874.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    600,
    '8991728000477',
    'JOYDAY SUNDAE COOKIES & CREAM',
    0,
    5.21,
    6.00,
    792.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    601,
    '8995757060006',
    'BUKU KIKI 58',
    155,
    4.75,
    5.50,
    750.00,
    736250.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    602,
    '089686060461',
    'POP MIE KARI AYAM 75G',
    0,
    4.18,
    5.00,
    825.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    603,
    '089686060362',
    'POP MIE SOTO AYAM 77G',
    23,
    4.18,
    5.00,
    825.00,
    96025.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    604,
    '8997035111110',
    'POCARI SWEAT 330ML',
    20,
    4.90,
    6.00,
    1100.00,
    98000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    605,
    '089686010015',
    'INDOMIE REBUS AYAM BAWANG 69G',
    15,
    2.45,
    3.20,
    750.00,
    36750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    606,
    '8998009040283',
    'TEH KOTAK LESS SUGAR',
    21,
    3.20,
    4.50,
    1300.00,
    67200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    607,
    '8998866106160',
    'MAMA LIME 680ML',
    2,
    11.00,
    12.00,
    1000.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    608,
    '8998866107587',
    'EMERON DAMAGE CARE SACHET 12\'',
    1,
    5.00,
    5.50,
    500.00,
    5000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    609,
    '8993189270680',
    'CHARM SAFE NIGHT 29CM ISI 2',
    7,
    3.00,
    3.50,
    500.00,
    21000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (610, 'A55', 'LEM LILIN', 8, 1.20, 2.00, 800.00, 9600.00);
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    611,
    'A16',
    'MATERAI',
    18,
    10.00,
    12.00,
    2000.00,
    180000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    612,
    'A4',
    'KOPI JEMPOL',
    0,
    17.00,
    20.00,
    3000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    613,
    '8996001600399',
    'LE MINERAL',
    15,
    4.42,
    5.00,
    583.00,
    66255.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    614,
    '8992772586030',
    'ADEM SARI SPARKLING 320ML',
    18,
    7.08,
    8.00,
    920.00,
    127440.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    615,
    '8990800004563',
    'MENTOS FRUIT BAG',
    0,
    7.00,
    8.00,
    1000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    616,
    '8991115012021',
    'BIG BABOL BAG STRO',
    1,
    8.50,
    9.50,
    1000.00,
    8500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    617,
    '089686732139',
    'CHITATO LITE 18,5G',
    35,
    2.68,
    3.00,
    325.00,
    93625.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    618,
    '089686734034',
    'CHITATO SAPI PANGGANG 19,5G',
    32,
    2.67,
    3.00,
    333.00,
    85344.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    619,
    '8996001321515',
    'KIS MINT CHERRY 125G',
    2,
    5.70,
    7.00,
    1300.00,
    11400.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    620,
    '8996001321508',
    'KIS MINT BARLEY 125GR',
    0,
    5.70,
    7.00,
    1300.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    621,
    '8995108509536',
    'KUACI REBO GREEN TEA 13GR',
    12,
    830.00,
    1.00,
    170.00,
    9960.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    622,
    '8991115040093',
    'HAPPYDENT COOL WHITE 14GR',
    14,
    3.30,
    4.50,
    1200.00,
    46200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    623,
    '8992770096128',
    'SAORI SAUS TIRAM 133ML',
    1,
    11.30,
    12.50,
    1200.00,
    11300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    624,
    '8995108509529',
    'KUACI REBO MILK 13GR',
    2,
    830.00,
    1.00,
    170.00,
    1660.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    625,
    '8994793014233',
    'NOTA KONTAN 50LEMBAR',
    4,
    3.00,
    4.00,
    1000.00,
    12000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    626,
    '8997023380948',
    'LABELS ',
    1,
    6.00,
    7.00,
    1000.00,
    6000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    627,
    '8993988240921',
    'SPIDOL JOYKO WHITEBOARD ',
    10,
    3.50,
    5.00,
    1500.00,
    35000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    628,
    '9003303309901',
    'SAMUL PLASTIK',
    40,
    400.00,
    500.00,
    100.00,
    16000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    629,
    'A54',
    'SAMPUL BUKU COKLAT',
    40,
    400.00,
    600.00,
    200.00,
    16000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    630,
    '8993988345008',
    'GUNTING JOYKO SC-838',
    5,
    7.50,
    10.00,
    2500.00,
    37500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    631,
    '8993988345183',
    'GUNTING JOYKO SC-828',
    5,
    5.50,
    7.00,
    1500.00,
    27500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    632,
    '8993988286066',
    'PENSIL JOYKO',
    22,
    1.00,
    2.00,
    1000.00,
    22000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    633,
    '8992759244069',
    'JOLLY POTONG 1OOO\'S',
    2,
    46.10,
    48.50,
    2400.00,
    92200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    634,
    'A56',
    'JOLLY ROLL BATHROOM TISSU',
    10,
    2.50,
    3.50,
    1000.00,
    25000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    635,
    '8888103200013',
    'CUSSONS BABY SOAL  MILD 75G',
    1,
    4.50,
    5.50,
    1000.00,
    4500.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    636,
    '8994365205557',
    'TRIPANCA 1,5L',
    82,
    2.50,
    4.00,
    1500.00,
    205000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    637,
    '8993110071508',
    'SO NICE SAPI 21GR',
    0,
    762.00,
    1.00,
    238.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    638,
    '8994449080032',
    'SUNKIST ORANGE WATER 330ML',
    1,
    3.91,
    5.00,
    1093.00,
    3907.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    639,
    '8994449080025',
    'SUNKIST LEMON WATER 330ML',
    3,
    3.91,
    5.00,
    1093.00,
    11721.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    640,
    'A57',
    'LAP MEJA DAPUR',
    9,
    1.67,
    2.50,
    833.00,
    15003.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    641,
    '089686611601',
    'QTELA SINGKONG BARBEQUE 23G',
    37,
    1.90,
    2.50,
    600.00,
    70300.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    642,
    '089686611519',
    'QTELA SINGKONG ORI 60G',
    5,
    6.40,
    7.00,
    600.00,
    32000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    643,
    '4987176052865',
    'DOWNY ADORABLE BOUQUET 12\'S',
    4,
    4.80,
    5.50,
    700.00,
    19200.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    644,
    '4902430745703',
    'DOWNY SUNRISE FRESH 12\'S',
    0,
    4.80,
    5.50,
    700.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    645,
    'A58',
    'BERAS UDANG 2 KOKI 5KG',
    0,
    69.00,
    74.00,
    5000.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    646,
    '8990044000062',
    'POCKY CHOCOLATE 22G',
    5,
    3.20,
    4.00,
    800.00,
    16000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    647,
    '8990044000079',
    'POCKY STRAWBERRY',
    18,
    3.20,
    4.00,
    800.00,
    57600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    648,
    '8993560003210',
    'DETTOL FRESH POUCH  410G 1 GRATIS 1',
    1,
    25.13,
    28.00,
    2867.00,
    25133.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    649,
    '8993560003302',
    'VANISH 425ML 1 GRATIS 1',
    0,
    24.74,
    27.00,
    2258.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    650,
    '8993004785160',
    'SMAX RING 40G',
    0,
    4.00,
    5.00,
    1005.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    651,
    '8996001355756',
    'BENG-BENG MAXX',
    0,
    3.48,
    4.00,
    525.00,
    0.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    652,
    'A59',
    'ISOLASI BENING',
    12,
    1.50,
    3.00,
    1500.00,
    18000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    653,
    'A60',
    'CUTTER YAHAA L500',
    12,
    2.00,
    4.00,
    2000.00,
    24000.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    654,
    '8996001354124',
    'BENG-BENG 25G',
    100,
    1.81,
    2.00,
    191.00,
    180900.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    655,
    '8996001375372',
    'CHOKI CHOCOCASHEW 180G',
    66,
    875.00,
    1.00,
    125.00,
    57750.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    656,
    '8998866183215',
    'MAMA LIME 430ML',
    4,
    7.90,
    9.00,
    1100.00,
    31600.00
  );
INSERT INTO
  `tablename` (
    `id`,
    `kode_brg`,
    `nama_brg`,
    `stok_akhir`,
    `beli`,
    `jual`,
    `mark_up`,
    `harta`
  )
VALUES
  (
    657,
    '8992775001653',
    'GERY SALUT WAFER TABUR KELAPA 17,5G',
    66,
    1.58,
    2.00,
    416.00,
    104544.00
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: transaction
# ------------------------------------------------------------

INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    1,
    1,
    '8851019210193',
    '2023-11-06 10:57:04',
    '2023-11-06 10:57:04',
    'POCKY CHOCO BANANA 42GR',
    6,
    10000.00,
    60000.00,
    1386.00,
    8316.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    2,
    2,
    '8992727004541',
    '2023-11-06 11:53:05',
    '2023-12-01 18:19:07',
    'LAURIER FLEXI PROTECT LONG WING 14',
    5,
    13500.00,
    67500.00,
    1100.00,
    5500.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    3,
    3,
    '8885013132083',
    '2023-11-06 13:00:47',
    '2023-12-01 18:19:40',
    'AICE CHOCO MALT',
    5,
    2000.00,
    10000.00,
    400.00,
    2000.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    4,
    3,
    '8999510785465',
    '2023-11-06 13:00:47',
    '2023-12-01 18:19:40',
    'PRISTINE 600ML',
    1,
    4500.00,
    4500.00,
    695.00,
    695.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    5,
    4,
    '8999510785465',
    '2023-11-06 13:02:16',
    '2023-12-01 18:19:23',
    'PRISTINE 600ML',
    10,
    4500.00,
    45000.00,
    695.00,
    6950.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    6,
    4,
    '8885013132083',
    '2023-11-06 13:02:16',
    '2023-12-01 18:19:23',
    'AICE CHOCO MALT',
    1,
    2000.00,
    2000.00,
    400.00,
    400.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    7,
    5,
    '8885013132083',
    '2023-11-06 13:04:12',
    '2023-11-06 13:04:12',
    'AICE CHOCO MALT',
    7,
    2000.00,
    14000.00,
    400.00,
    2800.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    8,
    5,
    '8999510785465',
    '2023-11-06 13:04:12',
    '2023-11-06 13:04:12',
    'PRISTINE 600ML',
    1,
    4500.00,
    4500.00,
    695.00,
    695.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    9,
    6,
    '8885013132083',
    '2023-11-06 13:05:02',
    '2023-12-01 18:19:54',
    'AICE CHOCO MALT',
    1,
    2000.00,
    2000.00,
    400.00,
    400.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    10,
    6,
    '8999510785465',
    '2023-11-06 13:05:02',
    '2023-12-01 18:19:54',
    'PRISTINE 600ML',
    1,
    4500.00,
    4500.00,
    695.00,
    695.00,
    'tunai',
    '',
    0,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    12,
    7,
    '8999510785465',
    '2023-11-06 13:09:22',
    '2023-11-06 13:09:22',
    'PRISTINE 600ML',
    1,
    4500.00,
    4500.00,
    695.00,
    695.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    13,
    8,
    '8885013132083',
    '2023-11-07 10:35:05',
    '2023-11-07 10:35:05',
    'AICE CHOCO MALT',
    18,
    2000.00,
    36000.00,
    400.00,
    7200.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    14,
    9,
    '8991389230008',
    '2023-11-07 11:02:46',
    '2023-11-07 11:02:46',
    'BUKU TULIS 42 LEMBAR',
    15,
    5500.00,
    82500.00,
    940.00,
    14100.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    15,
    9,
    '8885013132083',
    '2023-11-07 11:02:46',
    '2023-11-07 11:02:46',
    'AICE CHOCO MALT',
    5,
    2000.00,
    10000.00,
    400.00,
    2000.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    16,
    10,
    '8991389230008',
    '2023-11-07 12:31:17',
    '2023-11-07 12:31:17',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    17,
    1,
    '8991389230008',
    '2023-11-09 07:58:39',
    '2023-11-09 07:58:39',
    'BUKU TULIS 42 LEMBAR',
    5,
    6000.00,
    30000.00,
    350.00,
    1750.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    18,
    1,
    '8991389230008',
    '2023-11-09 08:36:05',
    '2023-11-09 08:36:05',
    'BUKU TULIS 42 LEMBAR',
    2,
    6000.00,
    12000.00,
    350.00,
    700.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    19,
    1,
    '8991389230008',
    '2023-11-09 08:39:16',
    '2023-11-09 08:39:16',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    20,
    1,
    '8992727004541',
    '2023-11-09 08:53:36',
    '2023-11-09 08:53:36',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13500.00,
    13500.00,
    1100.00,
    1100.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    21,
    1,
    '8885013132083',
    '2023-11-09 08:59:29',
    '2023-11-09 08:59:29',
    'AICE CHOCO MALT',
    2,
    2000.00,
    4000.00,
    400.00,
    800.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    22,
    1,
    '8991389230008',
    '2023-11-09 10:02:05',
    '2023-11-09 10:02:05',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'tunai',
    '',
    0,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    24,
    3,
    '8991389230008',
    '2023-11-09 10:17:57',
    '2023-11-09 10:17:57',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'kredit',
    'test',
    7000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    25,
    4,
    '8991389230008',
    '2023-11-09 13:36:55',
    '2023-11-09 13:36:55',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'tunai',
    '-',
    10000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    26,
    1,
    '123',
    '2023-11-10 13:53:31',
    '2023-11-10 13:53:31',
    '123',
    2,
    1212.00,
    2424.00,
    0.00,
    0.00,
    'kredit',
    'Noo',
    3000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    27,
    2,
    '8991389230008',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'BUKU TULIS 42 LEMBAR',
    1,
    6000.00,
    6000.00,
    350.00,
    350.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    28,
    2,
    '8885013132083',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'AICE CHOCO MALT',
    1,
    2000.00,
    2000.00,
    400.00,
    400.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    29,
    2,
    '8991102989428',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'TANGO COKLAT 16GR',
    1,
    1000.00,
    1000.00,
    150.00,
    150.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    30,
    2,
    '8991102998642',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'BLASTER POP MANGO',
    1,
    500.00,
    500.00,
    86.00,
    86.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    31,
    2,
    '8991002125001',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KAPAL API ORI BLACK COFFE',
    1,
    5500.00,
    5500.00,
    1375.00,
    1375.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    32,
    2,
    '8999999589189',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'SUNLIGHT 650ML',
    1,
    15000.00,
    15000.00,
    1400.00,
    1400.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    33,
    2,
    '8999999572303',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'SUNLIGHT 420ML',
    1,
    10000.00,
    10000.00,
    1000.00,
    1000.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    34,
    2,
    '8991001661746',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'DELFI TREASURE COOKIES N CREam 36gr',
    1,
    7500.00,
    7500.00,
    1097.00,
    1097.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    35,
    2,
    'A30',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KAOS KAKI COKLAT L',
    1,
    8000.00,
    8000.00,
    2978.00,
    2978.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    36,
    2,
    'A31',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KAOS KAKI COKLAT M',
    1,
    7000.00,
    7000.00,
    2060.00,
    2060.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    37,
    2,
    'A32',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KAOS KAKI PUTIH SMA',
    1,
    5000.00,
    5000.00,
    2377.00,
    2377.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    38,
    2,
    'A33',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KAOS KAKI HITAM SMA',
    2,
    5000.00,
    10000.00,
    2200.00,
    4400.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    39,
    2,
    'A34',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'RAJA UDANG KUNING 10KG',
    1,
    143000.00,
    143000.00,
    6600.00,
    6600.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    40,
    2,
    'A35',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'TESSA 50S',
    1,
    3000.00,
    3000.00,
    1000.00,
    1000.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    41,
    2,
    'A36',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'PASEO 12S',
    1,
    2000.00,
    2000.00,
    700.00,
    700.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    42,
    2,
    'A1',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'RAJA UDANG 5 KG',
    1,
    75000.00,
    75000.00,
    3625.00,
    3625.00,
    'kredit',
    'HAN',
    306,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    43,
    2,
    'A2',
    '2023-11-10 14:08:37',
    '2023-11-10 14:08:37',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    1,
    4500.00,
    4500.00,
    1220.00,
    1220.00,
    'kredit',
    'HAN',
    306,
    'Tidak Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    44,
    3,
    '123',
    '2023-11-10 14:39:10',
    '2023-11-10 14:39:10',
    '123',
    1,
    1212.00,
    1212.00,
    0.00,
    0.00,
    'tunai',
    '-',
    2000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    45,
    4,
    'A1',
    '2023-11-10 15:22:26',
    '2023-11-10 15:22:26',
    'RAJA UDANG 5 KG',
    1,
    75000.00,
    75000.00,
    3625.00,
    3625.00,
    'tunai',
    '-',
    90000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    46,
    4,
    'A2',
    '2023-11-10 15:22:26',
    '2023-11-10 15:22:26',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    1,
    4500.00,
    4500.00,
    1220.00,
    1220.00,
    'tunai',
    '-',
    90000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    47,
    4,
    '8996001354124',
    '2023-11-10 15:22:26',
    '2023-11-10 15:22:26',
    'BENG-BENG  20G',
    3,
    2000.00,
    6000.00,
    261.00,
    783.00,
    'tunai',
    '-',
    90000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    48,
    5,
    '8991771200329',
    '2023-11-10 15:29:55',
    '2023-11-10 15:29:55',
    'VITACIMIN 1PCS',
    1,
    1500.00,
    1500.00,
    565.00,
    565.00,
    'tunai',
    '-',
    10000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    49,
    5,
    'A2',
    '2023-11-10 15:29:55',
    '2023-11-10 15:29:55',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    1,
    4500.00,
    4500.00,
    1220.00,
    1220.00,
    'tunai',
    '-',
    10000,
    '',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    50,
    6,
    '123',
    '2023-11-10 21:20:25',
    '2023-11-10 21:20:25',
    '123',
    2,
    1212.00,
    2424.00,
    0.00,
    0.00,
    'kredit',
    'udin',
    105000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    51,
    6,
    'A1',
    '2023-11-10 21:20:25',
    '2023-11-10 21:20:25',
    'RAJA UDANG 5 KG',
    1,
    75000.00,
    75000.00,
    3625.00,
    3625.00,
    'kredit',
    'udin',
    105000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    52,
    6,
    'A2',
    '2023-11-10 21:20:25',
    '2023-11-10 21:20:25',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    1,
    4500.00,
    4500.00,
    1220.00,
    1220.00,
    'kredit',
    'udin',
    105000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    53,
    6,
    'A4',
    '2023-11-10 21:20:25',
    '2023-11-10 21:20:25',
    'KOPI JEMPOL 225 G',
    1,
    20000.00,
    20000.00,
    3250.00,
    3250.00,
    'kredit',
    'udin',
    105000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    55,
    1,
    'A2',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'KERUPUK LOMBOK IJO WARNA WARNI ',
    1,
    4500.00,
    4500.00,
    1220.00,
    1220.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    56,
    1,
    'A4',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'KOPI JEMPOL 225 G',
    1,
    20000.00,
    20000.00,
    3250.00,
    3250.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    57,
    1,
    'A1',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'RAJA UDANG 5 KG',
    1,
    75000.00,
    75000.00,
    3625.00,
    3625.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    58,
    1,
    'A5',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'PANIR',
    1,
    12000.00,
    12000.00,
    2000.00,
    2000.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    60,
    1,
    'A8',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'COKLAT BATANG DUNIA ',
    1,
    31000.00,
    31000.00,
    3000.00,
    3000.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    61,
    1,
    'A9',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'SENDOK BEBEK BUTEK',
    1,
    8500.00,
    8500.00,
    1500.00,
    1500.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    62,
    1,
    'A9',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'SENDOK BEBEK BUTEK',
    1,
    8500.00,
    8500.00,
    1500.00,
    1500.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    63,
    1,
    'A1',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'RAJA UDANG 5 KG',
    1,
    75000.00,
    75000.00,
    3625.00,
    3625.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    64,
    1,
    'A31',
    '2023-11-11 18:51:42',
    '2023-11-11 18:51:42',
    'KAOS KAKI COKLAT M',
    1,
    7000.00,
    7000.00,
    2060.00,
    2060.00,
    'kredit',
    'rusli',
    256000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    65,
    2,
    '123',
    '2023-11-11 19:02:47',
    '2023-11-11 19:02:47',
    '123',
    4,
    1212.00,
    4848.00,
    0.00,
    0.00,
    'tunai',
    'ytta',
    1,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    66,
    2,
    'A9',
    '2023-11-11 19:02:47',
    '2023-11-11 19:02:47',
    'SENDOK BEBEK BUTEK',
    1,
    8500.00,
    8500.00,
    1500.00,
    1500.00,
    'tunai',
    'ytta',
    1,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    70,
    1,
    'A12',
    '2023-11-12 08:38:29',
    '2023-11-12 08:38:29',
    'MANGKOK PLASTIK ',
    -2,
    25000.00,
    -50000.00,
    2100.00,
    6300.00,
    'tunai',
    'doni',
    0,
    'Lunas',
    2,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    74,
    2,
    'A9',
    '2023-11-12 14:22:20',
    '2023-11-12 14:22:20',
    'SENDOK BEBEK BUTEK',
    -6,
    8500.00,
    -51000.00,
    1500.00,
    7500.00,
    'tunai',
    'rawr',
    0,
    'Lunas',
    4,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    75,
    3,
    'A3',
    '2023-11-12 14:39:30',
    '2023-11-12 14:39:30',
    'MARGARIN AMANDA POLOS 500 GR ',
    7,
    11500.00,
    80500.00,
    1500.00,
    18000.00,
    'tunai',
    'test',
    0,
    'Lunas',
    5,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    76,
    4,
    '123',
    '2023-11-12 15:53:23',
    '2023-11-12 15:53:23',
    '123',
    12,
    1212.00,
    14544.00,
    0.00,
    0.00,
    'tunai',
    'UDIN',
    0,
    'Lunas',
    3,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    77,
    5,
    '123',
    '2023-11-12 22:40:57',
    '2023-11-12 22:40:57',
    '123',
    1,
    1500.00,
    1500.00,
    288.00,
    288.00,
    'tunai',
    '-',
    1500,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    78,
    1,
    '123',
    '2023-11-14 12:59:37',
    '2023-11-14 12:59:37',
    '123',
    1,
    1500.00,
    1500.00,
    288.00,
    288.00,
    'tunai',
    '-',
    90,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    79,
    1,
    '123',
    '2023-11-16 19:25:19',
    '2023-11-16 19:25:19',
    '123',
    10,
    1500.00,
    15000.00,
    288.00,
    2880.00,
    'tunai',
    '-',
    20000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    80,
    2,
    '123',
    '2023-11-16 19:25:57',
    '2023-11-16 19:25:57',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'kredit',
    'udin',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    81,
    3,
    '123',
    '2023-11-16 19:32:32',
    '2023-11-16 19:32:32',
    '123',
    1,
    1500.00,
    1500.00,
    288.00,
    288.00,
    'tunai',
    't',
    2,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    82,
    4,
    '123',
    '2023-11-16 19:38:02',
    '2023-11-16 19:38:02',
    '123',
    2,
    1500.00,
    3000.00,
    288.00,
    576.00,
    'kredit',
    '',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    83,
    5,
    '123',
    '2023-11-16 19:41:45',
    '2023-11-16 19:41:45',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'tunai',
    '-',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    84,
    6,
    '123',
    '2023-11-16 19:42:17',
    '2023-11-16 19:42:17',
    '123',
    10,
    1500.00,
    15000.00,
    288.00,
    2880.00,
    'kredit',
    'test',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    85,
    7,
    '123',
    '2023-11-16 19:51:18',
    '2023-11-16 19:51:18',
    '123',
    2,
    1500.00,
    3000.00,
    288.00,
    576.00,
    'kredit',
    'test',
    100,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    86,
    8,
    '123',
    '2023-11-16 19:56:40',
    '2023-11-16 19:56:40',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'kredit',
    'test',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    87,
    9,
    '123',
    '2023-11-16 20:00:30',
    '2023-11-16 20:00:30',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'kredit',
    'test',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    88,
    10,
    '123',
    '2023-11-16 20:02:32',
    '2023-11-16 20:02:32',
    '123',
    4,
    1500.00,
    6000.00,
    288.00,
    1152.00,
    'kredit',
    '',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    89,
    11,
    '123',
    '2023-11-16 20:04:06',
    '2023-11-16 20:04:06',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'kredit',
    '',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    90,
    12,
    '123',
    '2023-11-16 20:05:26',
    '2023-11-16 20:05:26',
    '123',
    3,
    1500.00,
    4500.00,
    288.00,
    864.00,
    'kredit',
    'rawr',
    500,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    91,
    13,
    '123',
    '2023-11-16 20:08:05',
    '2023-11-16 20:08:05',
    '123',
    2,
    1500.00,
    3000.00,
    288.00,
    576.00,
    'kredit',
    '',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    92,
    14,
    '123',
    '2023-11-16 20:36:43',
    '2023-11-16 20:36:43',
    '123',
    5,
    1500.00,
    7500.00,
    288.00,
    1440.00,
    'kredit',
    '',
    500,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    93,
    15,
    '6908594414019',
    '2023-11-16 21:03:20',
    '2023-11-16 21:03:20',
    'LAURIER SUPER SLIM GUARD DAY 10\'S',
    2,
    15500.00,
    31000.00,
    1100.00,
    2200.00,
    'tunai',
    '-',
    40000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    94,
    15,
    '8992727004480',
    '2023-11-16 21:03:20',
    '2023-11-16 21:03:20',
    'LAURIER MAXI RCG 10',
    1,
    1000.00,
    1000.00,
    325.00,
    325.00,
    'tunai',
    '-',
    40000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    95,
    16,
    '8992727004480',
    '2023-11-16 21:20:51',
    '2023-11-16 21:20:51',
    'LAURIER MAXI RCG 10',
    2,
    1000.00,
    2000.00,
    325.00,
    650.00,
    'tunai',
    '-',
    3000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    96,
    1,
    '123',
    '2023-11-17 14:01:07',
    '2023-11-18 16:15:10',
    '123',
    10,
    1500.00,
    15000.00,
    288.00,
    2880.00,
    'tunai',
    'test',
    1000,
    'Lunas',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    97,
    2,
    '8992727004480',
    '2023-11-17 14:07:00',
    '2023-11-17 14:07:00',
    'LAURIER MAXI RCG 10',
    5,
    1000.00,
    5000.00,
    325.00,
    1950.00,
    'kredit',
    '',
    0,
    '-',
    1,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    98,
    1,
    '287',
    '2023-11-30 10:44:09',
    '2023-11-30 10:44:09',
    'test',
    1,
    1000.00,
    1000.00,
    0.00,
    0.00,
    'tunai',
    '-',
    1000,
    '-',
    0,
    1
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    99,
    1,
    '123',
    '2023-12-01 18:23:51',
    '2023-12-01 18:23:51',
    '123',
    2,
    1500.00,
    3000.00,
    288.00,
    576.00,
    'tunai',
    '-',
    140000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    100,
    1,
    'A39',
    '2023-12-01 18:23:51',
    '2023-12-01 18:23:51',
    'MEET JELLY ALL VARIAN',
    11,
    12000.00,
    132000.00,
    1000.00,
    11000.00,
    'tunai',
    '-',
    140000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    101,
    1,
    '123',
    '2023-12-26 08:25:46',
    '2023-12-26 08:25:46',
    '123',
    1,
    1500.00,
    1500.00,
    288.00,
    288.00,
    'tunai',
    '-',
    1500,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    102,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    103,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    104,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    105,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    106,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    107,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    108,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    109,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    110,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    111,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    112,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    113,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    114,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    115,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    116,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    117,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    118,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    119,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    120,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    121,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    122,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    123,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    124,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    125,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    126,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    127,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    128,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    129,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    130,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    131,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    132,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    133,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    134,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    135,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    136,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    137,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    138,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    139,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    140,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    141,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    142,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    143,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    144,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    145,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    146,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    147,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    148,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    149,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    150,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    151,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    152,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    153,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    154,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    155,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    156,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    157,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    158,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    159,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    160,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    161,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    162,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    163,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    164,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    165,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    166,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    167,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    168,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    169,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    170,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    171,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    172,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    173,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    174,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    175,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    176,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    177,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    178,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    179,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    180,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    181,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    182,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    183,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    184,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    185,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    186,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    187,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    188,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    189,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    190,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    191,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    192,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    193,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    194,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    195,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    196,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    197,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    198,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    199,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    200,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    201,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    202,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    203,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    204,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    205,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    206,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    207,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    208,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    209,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    210,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    211,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    212,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    213,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    214,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    215,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    216,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    217,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    218,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    219,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    220,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    221,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    222,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    223,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    224,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    225,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    226,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    227,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    228,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    229,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    230,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    231,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    232,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    233,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    234,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    235,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    236,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    237,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    238,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    239,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    240,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    241,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    242,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    243,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    244,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    245,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    246,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    247,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    248,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    249,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    250,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    251,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    252,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    253,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    254,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    255,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    256,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    257,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    258,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    259,
    2,
    '8992727004541',
    '2023-12-26 08:33:05',
    '2023-12-26 08:33:05',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    260,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    261,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    262,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    263,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    264,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    265,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    266,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    267,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    268,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    269,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    270,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    271,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    272,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    273,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    274,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    275,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    276,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    277,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    278,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    279,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    280,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    281,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    282,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    283,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    284,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    285,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    286,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    287,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    288,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    289,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    290,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    291,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    292,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    293,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    294,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    295,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    296,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    297,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    298,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    299,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    300,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    301,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    302,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    303,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    304,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    305,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    306,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    307,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    308,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    309,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    310,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    311,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    312,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    313,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    314,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    315,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    316,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    317,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    318,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    319,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    320,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    321,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    322,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    323,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    324,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    325,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    326,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    327,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    328,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    329,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    330,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    331,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    332,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    333,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    334,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    335,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    336,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    337,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    338,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    339,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    340,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    341,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    342,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    343,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    344,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    345,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    346,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    347,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    348,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    349,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    350,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    351,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    352,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    353,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    354,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    355,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    356,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    357,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    358,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    359,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    360,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    361,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    362,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    363,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    364,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    365,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    366,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    367,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    368,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    369,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    370,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    371,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    372,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    373,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    374,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    375,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    376,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    377,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    378,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    379,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    380,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    381,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    382,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    383,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    384,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    385,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    386,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    387,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    388,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    389,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    390,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    391,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    392,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    393,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    394,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    395,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    396,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    397,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    398,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    399,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    400,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    401,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    402,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    403,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    404,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    405,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    406,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    407,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    408,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    409,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    410,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    411,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    412,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    413,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    414,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    415,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    416,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    417,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    418,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    419,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    420,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    421,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    422,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    423,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    424,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    425,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    426,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    427,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    428,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    429,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    430,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    431,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    432,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    433,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    434,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    435,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    436,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    437,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    438,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    439,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    440,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    441,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    442,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    443,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    444,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    445,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    446,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    447,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    448,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    449,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    450,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    451,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    452,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    453,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    454,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    455,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    456,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    457,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    458,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    459,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    460,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    461,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    462,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    463,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    464,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    465,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    466,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    467,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    468,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    469,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    470,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    471,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    472,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    473,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    474,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    475,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    476,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    477,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    478,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    479,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    480,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    481,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    482,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    483,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    484,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    485,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    486,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    487,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    488,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    489,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    490,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    491,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    492,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    493,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    494,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    495,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    496,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    497,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    498,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    499,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    500,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    501,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    502,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    503,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    504,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    505,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    506,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    507,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    508,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    509,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    510,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    511,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    512,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    513,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    514,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    515,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    516,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    517,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    518,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    519,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    520,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    521,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    522,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    523,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    524,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    525,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    526,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    527,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    528,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    529,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    530,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    531,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    532,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    533,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    534,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    535,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    536,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    537,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    538,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    539,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    540,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    541,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    542,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    543,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    544,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    545,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    546,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    547,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    548,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    549,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    550,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    551,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    552,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    553,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    554,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    555,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    556,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    557,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    558,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    559,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    560,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    561,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    562,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    563,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    564,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    565,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    566,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    567,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    568,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    569,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    570,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    571,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    572,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    573,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    574,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    575,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    576,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    577,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    578,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    579,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    580,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    581,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    582,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    583,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    584,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    585,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    586,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    587,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    588,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    589,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    590,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    591,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    592,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    593,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    594,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    595,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    596,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    597,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    598,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    599,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    600,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    601,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    602,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    603,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    604,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    605,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    606,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    607,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    608,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    609,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    610,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    611,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    612,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    613,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    614,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    615,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    616,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    617,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    618,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    619,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    620,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    621,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    622,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    623,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    624,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    625,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    626,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    627,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    628,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    629,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    630,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    631,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    632,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    633,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    634,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    635,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    636,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    637,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    638,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    639,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    640,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    641,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    642,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    643,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    644,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    645,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    646,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    647,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    648,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    649,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    650,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    651,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    652,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    653,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    654,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    655,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    656,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    657,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    658,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    659,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    660,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    661,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    662,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    663,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    664,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    665,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    666,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    667,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    668,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    669,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    670,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    671,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    672,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    673,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    674,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    675,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    676,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    677,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    678,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    679,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    680,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    681,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    682,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    683,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    684,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    685,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    686,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    687,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    688,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    689,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    690,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    691,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    692,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    693,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    694,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    695,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    696,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    697,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    698,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    699,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    700,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    701,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    702,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    703,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    704,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    705,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    706,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    707,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    708,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    709,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    710,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    711,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    712,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    713,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    714,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    715,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    716,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    717,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    718,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    719,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    720,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    721,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    722,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    723,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    724,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    725,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    726,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    727,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    728,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    729,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    730,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    731,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    732,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    733,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    734,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    735,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    736,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    737,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    738,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    739,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    740,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    741,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    742,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    743,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    744,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    745,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    746,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    'LAURIER FLEXI PROTECT LONG WING 14',
    1,
    13501.00,
    13501.00,
    1100.00,
    1100.00,
    'tunai',
    '-',
    1500000,
    '-',
    0,
    NULL
  );
INSERT INTO
  `transaction` (
    `id`,
    `no_faktur`,
    `kode`,
    `tgl`,
    `tgl_pelunasan`,
    `nama`,
    `qty`,
    `harga`,
    `subtotal`,
    `mark_up`,
    `laba`,
    `payment`,
    `namaPelanggan`,
    `Tunai`,
    `status`,
    `retur`,
    `debug`
  )
VALUES
  (
    747,
    2,
    '8992727004541',
    '2023-12-26 08:33:06',
    '2023-12-26 08:33:06',
    1,
    13501.00,
