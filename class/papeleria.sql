-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2015 a las 00:32:43
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `papeleria`
--
CREATE DATABASE IF NOT EXISTS `papeleria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `papeleria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `departamento_idDepartamento` int(11) NOT NULL,
  `unidad_idUnidad` int(11) NOT NULL,
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
  `d_costo` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`codigo`, `nombre`, `departamento_idDepartamento`, `unidad_idUnidad`, `defecto`, `iva_ivacompra`, `iva_ivaventa`, `costo_prov`, `ocosto_prov`, `a_venta`, `b_venta`, `c_venta`, `d_venta`, `a_costo`, `b_costo`, `c_costo`, `d_costo`) VALUES
(1, 'Lala Semidescremada', 1, 1, 'A', 1, 1, '13.56', '0', '16', '15.5', '', '', '0', '0', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE IF NOT EXISTS `cajero` (
  `usuario_idUsuario3` int(11) NOT NULL,
  `deposito_idDeposito3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`usuario_idUsuario3`, `deposito_idDeposito3`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `correo` varchar(45) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `doc` varchar(20) NOT NULL,
  `cupo` varchar(20) NOT NULL,
  `puntos` varchar(20) DEFAULT NULL,
  `persona_idPersona2` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`correo`, `idCliente`, `doc`, `cupo`, `puntos`, `persona_idPersona2`) VALUES
(NULL, 1, 'C001', '500', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(30) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `empresa_idEmpresa1` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `nombreDepartamento`, `estado`, `empresa_idEmpresa1`) VALUES
(1, 'Lacteos', 's', 1),
(2, 'Refrescos', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
  `id` int(11) NOT NULL,
  `articulo_codigo1` int(11) NOT NULL,
  `ref` varchar(45) NOT NULL,
  `cant` int(11) NOT NULL,
  `usuario_idUsuario1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleprov`
--

CREATE TABLE IF NOT EXISTS `detalleprov` (
  `idDetalleProveedor` int(11) NOT NULL,
  `producto_codigo` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleprov`
--

INSERT INTO `detalleprov` (`idDetalleProveedor`, `producto_codigo`, `proveedor_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE IF NOT EXISTS `detalleventa` (
  `id` int(11) NOT NULL,
  `factura` varchar(45) NOT NULL,
  `articulo_codigo2` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `usuario_idUsuario2` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `factura`, `articulo_codigo2`, `cant`, `fecha`, `usuario_idUsuario2`) VALUES
(1, '100001', 1, 12, '2015-10-27', 1),
(2, '100002', 1, 4, '2015-10-27', 2),
(3, '100003', 1, 1, '2015-10-27', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `idUsuario` int(11) NOT NULL,
  `usu` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `con` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `correo` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('c','a') COLLATE utf8_swedish_ci NOT NULL,
  `persona_idPersona` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idUsuario`, `usu`, `con`, `correo`, `fecha`, `tipo`, `persona_idPersona`) VALUES
(1, 'administrador', '12345', 'iris@gmail.com', '2014-11-05', 'a', 1),
(2, 'E001', '12345', 'evi_skorpion@hotmail', '2015-05-01', 'c', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `idEmpresa` int(11) NOT NULL,
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
  `anno` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `empresa`, `nit`, `direccion`, `pais`, `ciudad`, `tel`, `fax`, `web`, `correo`, `fecha`, `moneda`, `anno`) VALUES
(1, 'La Tiendita', 'XAXX010101000', 'Av. Encanto #71 Col. El mirador CP ', 'México', 'Xalapa', '2225655', '91170', 'www.tiendita-encanto.com', 'encanto@gmail.com', '2015-10-26', 'Pesos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL,
  `factura` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `factura`, `valor`, `fecha`, `estado`, `idUsuario`) VALUES
(1, '100001', '192', '2015-10-27', 's', 1),
(2, '100002', '64', '2015-10-27', 's', 2),
(3, '100003', '16', '2015-10-27', 's', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE IF NOT EXISTS `iva` (
  `idIva` int(11) NOT NULL,
  `nombreIva` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `iva`
--

INSERT INTO `iva` (`idIva`, `nombreIva`, `valor`, `estado`) VALUES
(1, 'Tasa 0', '0', 's'),
(2, 'IVA 16%', '16', 's'),
(3, 'IEPS', '23', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL,
  `deposito_idDeposito` int(11) NOT NULL,
  `articulo_codigo` int(11) NOT NULL,
  `cant` varchar(255) NOT NULL,
  `minima` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `deposito_idDeposito`, `articulo_codigo`, `cant`, `minima`) VALUES
(1, 1, 1, '3', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idPersona` int(11) NOT NULL,
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
  `empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `doc`, `nom`, `ape`, `fecha`, `tel`, `cel`, `sexo`, `dir`, `nota`, `fechar`, `estado`, `empresa_idEmpresa`) VALUES
(1, 'administrador', 'Elidia', 'Torres Palacios', '2014-11-05', '2281813637', '823610444', 'f', 'Av. Encanto #  71', 'mmmm', '2014-11-02', 's', 1),
(2, 'E001', 'Público General', '     ', '2015-05-01', '', '', 'm', '    ', '', '2015-05-13', 's', 1),
(3, 'C001', 'Eleazar', 'Fernandez Ramirez', '1990-01-01', '2288462124', '2288462124', 'm', 'Diana Laura', '', '2015-10-27', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `dir`, `tel`, `fax`, `nota`, `contacto`) VALUES
(1, 'Grupo Lala', 'Las Trancas', '2288968574', 'nestle.xal@gmail.com', 'Cada 3 días', 'Julian');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen`
--

CREATE TABLE IF NOT EXISTS `resumen` (
  `idResumen` int(11) NOT NULL,
  `corte` varchar(10) DEFAULT NULL,
  `concepto` varchar(150) DEFAULT NULL,
  `valor` varchar(15) DEFAULT NULL,
  `tipo` enum('Pendiente','Salida','Entrada') DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `user_idUsuario` int(11) DEFAULT NULL,
  `estado` char(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resumen`
--

INSERT INTO `resumen` (`idResumen`, `corte`, `concepto`, `valor`, `tipo`, `fecha`, `user_idUsuario`, `estado`) VALUES
(1, '100001', 'Venta al Contado Factura: 100001 por Valor de $ 192.00', '192', 'Entrada', '2015-10-27', 1, 's'),
(2, '100002', 'Venta al Contado Factura: 100002 por Valor de $ 64.00', '64', 'Entrada', '2015-10-27', 2, 's'),
(3, '100003', 'Venta al Contado Factura: 100003 por Valor de $ 16.00', '16', 'Entrada', '2015-10-27', 2, 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE IF NOT EXISTS `sucursal` (
  `idDeposito` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idDeposito`, `nombre`, `dir`, `tel`, `encargado`, `estado`) VALUES
(1, 'Sucursal Encanto', 'Encanto No. 12, Sumidero', '2288462124', 'Francisco', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE IF NOT EXISTS `unidad` (
  `idUnidad` int(11) NOT NULL,
  `nombreUnidad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `nombreUnidad`, `estado`) VALUES
(1, 'Pieza', 's'),
(2, 'N/A', 's'),
(3, 'Kilogramo', 's');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `unidad_idUnidad_idx` (`unidad_idUnidad`),
  ADD KEY `iva_ivacompra_idx` (`iva_ivacompra`),
  ADD KEY `iva_ivaVenta_idx` (`iva_ivaventa`),
  ADD KEY `departamento_idDepartamento` (`departamento_idDepartamento`);

--
-- Indices de la tabla `cajero`
--
ALTER TABLE `cajero`
  ADD KEY `usuario_idUsuario_idx` (`usuario_idUsuario3`),
  ADD KEY `deposito_idDeposito_idx` (`deposito_idDeposito3`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `persona_idPersona2` (`persona_idPersona2`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`),
  ADD KEY `empresa_idEmpresa_idx` (`empresa_idEmpresa1`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulo_codigo_idx` (`articulo_codigo1`),
  ADD KEY `usuario_idUsuario_idx` (`usuario_idUsuario1`);

--
-- Indices de la tabla `detalleprov`
--
ALTER TABLE `detalleprov`
  ADD PRIMARY KEY (`idDetalleProveedor`),
  ADD KEY `proveedor_id` (`proveedor_id`),
  ADD KEY `producto_codigo_idx` (`producto_codigo`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulo_codigo_idx` (`articulo_codigo2`),
  ADD KEY `usuario_idUsuario_idx` (`usuario_idUsuario2`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `persona_idPersona_idx` (`persona_idPersona`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario_idx` (`idUsuario`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`idIva`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposito_idDeposito_idx` (`deposito_idDeposito`),
  ADD KEY `articulo_codigo_idx` (`articulo_codigo`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `empresa_idEmpresa` (`empresa_idEmpresa`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resumen`
--
ALTER TABLE `resumen`
  ADD PRIMARY KEY (`idResumen`),
  ADD KEY `user_idUsuario` (`user_idUsuario`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idDeposito`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idUnidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalleprov`
--
ALTER TABLE `detalleprov`
  MODIFY `idDetalleProveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `idIva` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `resumen`
--
ALTER TABLE `resumen`
  MODIFY `idResumen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idDeposito` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `idUnidad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `departamento_idDepartamento` FOREIGN KEY (`departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iva_ivaVenta` FOREIGN KEY (`iva_ivaventa`) REFERENCES `iva` (`idIva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iva_ivacompra` FOREIGN KEY (`iva_ivacompra`) REFERENCES `iva` (`idIva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unidad_idUnidad` FOREIGN KEY (`unidad_idUnidad`) REFERENCES `unidad` (`idUnidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cajero`
--
ALTER TABLE `cajero`
  ADD CONSTRAINT `deposito_idDeposito3` FOREIGN KEY (`deposito_idDeposito3`) REFERENCES `sucursal` (`idDeposito`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_idUsuario3` FOREIGN KEY (`usuario_idUsuario3`) REFERENCES `empleado` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `persona_idPersona2` FOREIGN KEY (`persona_idPersona2`) REFERENCES `persona` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `empresa_idEmpresa1` FOREIGN KEY (`empresa_idEmpresa1`) REFERENCES `empresa` (`idEmpresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `articulo_codigo1` FOREIGN KEY (`articulo_codigo1`) REFERENCES `articulo` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_idUsuario1` FOREIGN KEY (`usuario_idUsuario1`) REFERENCES `empleado` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalleprov`
--
ALTER TABLE `detalleprov`
  ADD CONSTRAINT `producto_codigo` FOREIGN KEY (`producto_codigo`) REFERENCES `articulo` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `articulo_codigo2` FOREIGN KEY (`articulo_codigo2`) REFERENCES `articulo` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_idUsuario2` FOREIGN KEY (`usuario_idUsuario2`) REFERENCES `empleado` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `persona_idPersona` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `empleado` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `articulo_codigo` FOREIGN KEY (`articulo_codigo`) REFERENCES `articulo` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposito_idDeposito` FOREIGN KEY (`deposito_idDeposito`) REFERENCES `sucursal` (`idDeposito`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `empresa_idEmpresa` FOREIGN KEY (`empresa_idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resumen`
--
ALTER TABLE `resumen`
  ADD CONSTRAINT `user_idUsuario` FOREIGN KEY (`user_idUsuario`) REFERENCES `empleado` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
