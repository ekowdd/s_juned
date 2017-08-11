/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : s_juned

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-08-11 21:44:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `m_pelanggan`;
CREATE TABLE `m_pelanggan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_pelanggan` varchar(12) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `alamat` text,
  `no_telp` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for m_produk
-- ----------------------------
DROP TABLE IF EXISTS `m_produk`;
CREATE TABLE `m_produk` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(12) DEFAULT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `harga` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_produk
-- ----------------------------

-- ----------------------------
-- Table structure for t_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `t_pembayaran`;
CREATE TABLE `t_pembayaran` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_pembayaran` varchar(12) DEFAULT NULL,
  `kode_transaksi` varchar(12) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pembayaran
-- ----------------------------

-- ----------------------------
-- Table structure for t_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `t_transaksi`;
CREATE TABLE `t_transaksi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(12) DEFAULT NULL,
  `kode_produk` varchar(12) DEFAULT NULL,
  `no_invoice` varchar(12) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nilai_projek_pokok` int(12) DEFAULT NULL,
  `diskon` int(12) DEFAULT NULL,
  `nilai_penjualan` int(12) DEFAULT NULL,
  `kode_pelanggan` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_transaksi
-- ----------------------------
