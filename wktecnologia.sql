# Host: localhost  (Version 5.5.5-10.4.17-MariaDB)
# Date: 2021-02-16 09:30:01
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_cliente"
#

DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE `tb_cliente` (
  `cd_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cliente` varchar(60) DEFAULT NULL,
  `nm_cidade` varchar(50) DEFAULT NULL,
  `sg_uf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cd_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_cliente"
#

INSERT INTO `tb_cliente` VALUES (1,'Leonardo Dias Pinto','Valenca','RJ'),(2,'Heloisa Helena','Valenca','RJ'),(3,'Theo Krejci','Valenca','RJ'),(4,'Ivan Pinto','Valenca','RJ');

#
# Structure for table "tb_dados_gerais_pedido"
#

DROP TABLE IF EXISTS `tb_dados_gerais_pedido`;
CREATE TABLE `tb_dados_gerais_pedido` (
  `nu_pedido` int(11) NOT NULL DEFAULT 0,
  `dt_emissao` date DEFAULT NULL,
  `cd_cliente` varchar(10) DEFAULT NULL,
  `vlr_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`nu_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_dados_gerais_pedido"
#


#
# Structure for table "tb_pedido_produto"
#

DROP TABLE IF EXISTS `tb_pedido_produto`;
CREATE TABLE `tb_pedido_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nu_pedido` int(11) NOT NULL,
  `cd_produto` varchar(15) DEFAULT NULL,
  `qtde` decimal(8,2) DEFAULT NULL,
  `vlr_unit_pedido` decimal(8,2) DEFAULT NULL,
  `vlt_total_pedido` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`nu_pedido`),
  KEY `FK_NU_PEDIDO` (`nu_pedido`),
  CONSTRAINT `FK_NU_PEDIDO` FOREIGN KEY (`nu_pedido`) REFERENCES `tb_dados_gerais_pedido` (`nu_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_pedido_produto"
#


#
# Structure for table "tb_produto"
#

DROP TABLE IF EXISTS `tb_produto`;
CREATE TABLE `tb_produto` (
  `cd_produto` int(11) NOT NULL AUTO_INCREMENT,
  `ds_produto` varchar(100) DEFAULT NULL,
  `vlr_venda_produto` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`cd_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_produto"
#

INSERT INTO `tb_produto` VALUES (1,'Blusas Basicas',29.90),(2,'Vestidos Curto',59.90),(3,'Vestidos Longos',89.90),(4,'Calcas Basicas',59.90),(5,'Casacos de Luxo',139.90),(6,'Bermudas Estilos',69.90),(7,'Saias Pregada',34.90),(8,'Blusas Moleton',72.90),(9,'Sapatos Extra Luxo',83.90),(10,'Relógio Feminino',129.90);
