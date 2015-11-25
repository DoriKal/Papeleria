/*
Navicat MySQL Data Transfer

Source Server         : Conexión Apache Alternativa
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : db_tienda

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-11-25 15:07:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articulo
-- ----------------------------
DROP TABLE IF EXISTS `articulo`;
CREATE TABLE `articulo` (
  `codigo` varchar(13) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `departamento_idDepartamento` int(11) NOT NULL,
  `unidad_idUnidad` int(11) NOT NULL,
  `ubicacion_idUbicacion` int(11) NOT NULL,
  `defecto` varchar(20) NOT NULL,
  `iva_ivacompra` int(11) NOT NULL,
  `iva_ivaventa` int(11) NOT NULL,
  `costo_prov` varchar(20) NOT NULL,
  `ocosto_prov` varchar(20) NOT NULL,
  `a_venta` varchar(20) NOT NULL,
  `b_venta` varchar(20) NOT NULL,
  `c_venta` varchar(20) NOT NULL,
  `d_venta` varchar(20) NOT NULL,
  `a_costo` varchar(20) NOT NULL,
  `b_costo` varchar(20) NOT NULL,
  `c_costo` varchar(20) NOT NULL,
  `d_costo` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `unidad_idUnidad_idx` (`unidad_idUnidad`),
  KEY `iva_ivacompra_idx` (`iva_ivacompra`),
  KEY `iva_ivaVenta_idx` (`iva_ivaventa`),
  KEY `departamento_idDepartamento` (`departamento_idDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of articulo
-- ----------------------------
INSERT INTO `articulo` VALUES ('LALA001', 'Lala Semidescremada', '1', '1', '1', 'A', '1', '1', '13.56', '0', '16', '15.5', '', '', '13.5', '13', '', '');
INSERT INTO `articulo` VALUES ('COCA001', 'Refresco de Cola 2 L', '2', '1', '1', 'A', '1', '1', '18', '17', '15', '14', '', '', '12', '13', '', '');
INSERT INTO `articulo` VALUES ('LALA002', 'Leche Deslactosada 1', '1', '1', '1', 'A', '1', '1', '0', '0', '17', '16.5', '', '', '15', '14', '', '');

-- ----------------------------
-- Table structure for cajero
-- ----------------------------
DROP TABLE IF EXISTS `cajero`;
CREATE TABLE `cajero` (
  `usuario_idUsuario3` int(11) NOT NULL,
  `deposito_idDeposito3` int(11) NOT NULL,
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario3`),
  KEY `deposito_idDeposito_idx` (`deposito_idDeposito3`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cajero
-- ----------------------------
INSERT INTO `cajero` VALUES ('1', '1');
INSERT INTO `cajero` VALUES ('2', '1');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `correo` varchar(45) DEFAULT NULL,
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(20) NOT NULL,
  `cupo` varchar(20) NOT NULL,
  `puntos` varchar(20) DEFAULT NULL,
  `persona_idPersona2` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `persona_idPersona2` (`persona_idPersona2`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (null, '1', 'C001', '500', '', '3');

-- ----------------------------
-- Table structure for departamento
-- ----------------------------
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDepartamento` varchar(30) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `empresa_idEmpresa1` int(11) NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  KEY `empresa_idEmpresa_idx` (`empresa_idEmpresa1`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of departamento
-- ----------------------------
INSERT INTO `departamento` VALUES ('1', 'Lacteos', 's', '1');
INSERT INTO `departamento` VALUES ('2', 'Refrescos', 's', '1');

-- ----------------------------
-- Table structure for detalle
-- ----------------------------
DROP TABLE IF EXISTS `detalle`;
CREATE TABLE `detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo_codigo1` varchar(13) NOT NULL,
  `ref` varchar(45) NOT NULL,
  `cant` int(11) NOT NULL,
  `usuario_idUsuario1` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articulo_codigo_idx` (`articulo_codigo1`),
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario1`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalle
-- ----------------------------
INSERT INTO `detalle` VALUES ('1', '', '', '0', '0');

-- ----------------------------
-- Table structure for detalleprov
-- ----------------------------
DROP TABLE IF EXISTS `detalleprov`;
CREATE TABLE `detalleprov` (
  `idDetalleProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `producto_codigo` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`idDetalleProveedor`),
  KEY `proveedor_id` (`proveedor_id`),
  KEY `producto_codigo_idx` (`producto_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalleprov
-- ----------------------------

-- ----------------------------
-- Table structure for detalleventa
-- ----------------------------
DROP TABLE IF EXISTS `detalleventa`;
CREATE TABLE `detalleventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` varchar(45) NOT NULL,
  `articulo_codigo2` int(13) NOT NULL,
  `cant` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `usuario_idUsuario2` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articulo_codigo_idx` (`articulo_codigo2`),
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detalleventa
-- ----------------------------

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usu` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `con` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `correo` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('c','a') COLLATE utf8_swedish_ci NOT NULL,
  `persona_idPersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `persona_idPersona_idx` (`persona_idPersona`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES ('1', 'administrador', '12345', 'madrid@gmail.com', '2014-11-05', 'a', '1');
INSERT INTO `empleado` VALUES ('2', 'E001', '12345', 'evi_skorpion@hotmail', '2015-05-01', 'c', '2');

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `moneda` varchar(22) COLLATE utf8_spanish_ci NOT NULL,
  `anno` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('1', 'La Tiendita', 'XAXX010101000', 'Av. Encanto #71 Col. El mirador CP ', 'México', 'Xalapa', '2225655', '91170', 'www.tiendita-encanto.com', 'encanto@gmail.com', '2015-10-26', 'Pesos', '');

-- ----------------------------
-- Table structure for factura
-- ----------------------------
DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario_idx` (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of factura
-- ----------------------------

-- ----------------------------
-- Table structure for iva
-- ----------------------------
DROP TABLE IF EXISTS `iva`;
CREATE TABLE `iva` (
  `idIva` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIva` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idIva`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of iva
-- ----------------------------
INSERT INTO `iva` VALUES ('1', 'Tasa 0', '0', 's');
INSERT INTO `iva` VALUES ('2', 'IVA 16%', '16', 's');
INSERT INTO `iva` VALUES ('3', 'IEPS', '23', 's');

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposito_idDeposito` int(11) NOT NULL,
  `articulo_codigo` varchar(13) NOT NULL,
  `cant` varchar(255) NOT NULL,
  `minima` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deposito_idDeposito_idx` (`deposito_idDeposito`),
  KEY `articulo_codigo_idx` (`articulo_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pedido
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `nom` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `ape` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tel` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `cel` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `sexo` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `dir` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `nota` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `fechar` date NOT NULL,
  `estado` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `empresa_idEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `empresa_idEmpresa` (`empresa_idEmpresa`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1', 'administrador', 'Joaquin', 'Madrid', '2014-11-05', '2281813637', '823610444', 'm', 'Av. Principal #  71', 'mmmm', '2014-11-02', 's', '1');
INSERT INTO `persona` VALUES ('2', 'E001', 'Público General', '     ', '2015-05-01', '', '', 'm', '    ', '', '2015-05-13', 's', '1');
INSERT INTO `persona` VALUES ('3', 'C001', 'Eleazar', 'Fernandez Ramirez', '1990-01-01', '2288462124', '2288462124', 'm', 'Diana Laura', '', '2015-10-27', 's', '1');

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES ('1', 'Grupo Lala', 'Las Trancas', '2288968574', 'nestle.xal@gmail.com', 'Cada 3 días', 'Julian');

-- ----------------------------
-- Table structure for resumen
-- ----------------------------
DROP TABLE IF EXISTS `resumen`;
CREATE TABLE `resumen` (
  `idResumen` int(11) NOT NULL AUTO_INCREMENT,
  `corte` varchar(10) DEFAULT NULL,
  `concepto` varchar(150) DEFAULT NULL,
  `valor` varchar(15) DEFAULT NULL,
  `tipo` enum('Pendiente','Salida','Entrada') DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `user_idUsuario` int(11) DEFAULT NULL,
  `estado` char(4) DEFAULT NULL,
  PRIMARY KEY (`idResumen`),
  KEY `user_idUsuario` (`user_idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resumen
-- ----------------------------

-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal` (
  `idDeposito` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idDeposito`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES ('1', 'Sucursal Uno', 'Encanto No. 12, Sumidero', '2288462124', 'Francisco', 's');

-- ----------------------------
-- Table structure for ubicacion
-- ----------------------------
DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE `ubicacion` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUbicacion` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ubicacion
-- ----------------------------
INSERT INTO `ubicacion` VALUES ('1', 'Almacen Uno', 's');
INSERT INTO `ubicacion` VALUES ('2', 'Almacen Dos', 's');

-- ----------------------------
-- Table structure for unidad
-- ----------------------------
DROP TABLE IF EXISTS `unidad`;
CREATE TABLE `unidad` (
  `idUnidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUnidad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idUnidad`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unidad
-- ----------------------------
INSERT INTO `unidad` VALUES ('1', 'Pieza', 's');
INSERT INTO `unidad` VALUES ('2', 'N/A', 's');
INSERT INTO `unidad` VALUES ('3', 'Kilogramo', 's');
