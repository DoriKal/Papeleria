-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: sql206.byethost3.com
-- Tiempo de generación: 30-10-2015 a las 03:13:04
-- Versión del servidor: 5.6.25-73.1
-- Versión de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `b3_15925110_tiendita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
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

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`codigo`, `nombre`, `departamento_idDepartamento`, `unidad_idUnidad`, `ubicacion_idUbicacion`, `defecto`, `iva_ivacompra`, `iva_ivaventa`, `costo_prov`, `ocosto_prov`, `a_venta`, `b_venta`, `c_venta`, `d_venta`, `a_costo`, `b_costo`, `c_costo`, `d_costo`) VALUES
('LALA001', 'Lala Semidescremada', 1, 1, 1, 'A', 1, 1, '13.56', '0', '16', '15.5', '', '', '13.5', '13', '', ''),
('COCA001', 'Refresco de Cola 2 L', 2, 1, 1, 'A', 1, 1, '18', '17', '15', '14', '', '', '12', '13', '', ''),
('LALA002', 'Leche Deslactosada 1', 1, 1, 1, 'A', 1, 1, '0', '0', '17', '16.5', '', '', '15', '14', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE IF NOT EXISTS `cajero` (
  `usuario_idUsuario3` int(11) NOT NULL,
  `deposito_idDeposito3` int(11) NOT NULL,
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario3`),
  KEY `deposito_idDeposito_idx` (`deposito_idDeposito3`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(20) NOT NULL,
  `cupo` varchar(20) NOT NULL,
  `puntos` varchar(20) DEFAULT NULL,
  `persona_idPersona2` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `persona_idPersona2` (`persona_idPersona2`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDepartamento` varchar(30) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `empresa_idEmpresa1` int(11) NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  KEY `empresa_idEmpresa_idx` (`empresa_idEmpresa1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo_codigo1` varchar(13) NOT NULL,
  `ref` varchar(45) NOT NULL,
  `cant` int(11) NOT NULL,
  `usuario_idUsuario1` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articulo_codigo_idx` (`articulo_codigo1`),
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleprov`
--

CREATE TABLE IF NOT EXISTS `detalleprov` (
  `idDetalleProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `producto_codigo` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`idDetalleProveedor`),
  KEY `proveedor_id` (`proveedor_id`),
  KEY `producto_codigo_idx` (`producto_codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `detalleprov`
--

INSERT INTO `detalleprov` (`idDetalleProveedor`, `producto_codigo`, `proveedor_id`) VALUES
(1, 1, 1),
(2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE IF NOT EXISTS `detalleventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` varchar(45) NOT NULL,
  `articulo_codigo2` int(13) NOT NULL,
  `cant` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `usuario_idUsuario2` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articulo_codigo_idx` (`articulo_codigo2`),
  KEY `usuario_idUsuario_idx` (`usuario_idUsuario2`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `factura`, `articulo_codigo2`, `cant`, `fecha`, `usuario_idUsuario2`) VALUES
(1, '100001', 1, 12, '2015-10-27', 1),
(2, '100002', 1, 4, '2015-10-27', 2),
(3, '100003', 1, 1, '2015-10-27', 2),
(4, '100004', 1, 4, '2015-10-29', 1),
(5, '100005', 1, 5, '2015-10-29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usu` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `con` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `correo` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('c','a') COLLATE utf8_swedish_ci NOT NULL,
  `persona_idPersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `persona_idPersona_idx` (`persona_idPersona`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idUsuario`, `usu`, `con`, `correo`, `fecha`, `tipo`, `persona_idPersona`) VALUES
(1, 'administrador', '12345', 'madrid@gmail.com', '2014-11-05', 'a', 1),
(2, 'E001', '12345', 'evi_skorpion@hotmail', '2015-05-01', 'c', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario_idx` (`idUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `factura`, `valor`, `fecha`, `estado`, `idUsuario`) VALUES
(1, '100001', '192', '2015-10-27', 's', 1),
(2, '100002', '64', '2015-10-27', 's', 2),
(3, '100003', '16', '2015-10-27', 's', 2),
(4, '100004', '64', '2015-10-29', 's', 1),
(5, '100005', '80', '2015-10-29', 's', 1),
(6, '100006', '48', '2015-10-29', 's', 1),
(7, '100007', '46', '2015-10-29', 's', 1),
(8, '100008', '282', '2015-10-29', 's', 1),
(9, '100009', '282', '2015-10-29', 's', 1),
(10, '100010', '330', '2015-10-29', 's', 1),
(11, '100011', '480', '2015-10-29', 's', 1),
(12, '100012', '330', '2015-10-29', 's', 1),
(13, '100013', '48', '2015-10-29', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE IF NOT EXISTS `iva` (
  `idIva` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIva` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idIva`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposito_idDeposito` int(11) NOT NULL,
  `articulo_codigo` varchar(13) NOT NULL,
  `cant` varchar(255) NOT NULL,
  `minima` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deposito_idDeposito_idx` (`deposito_idDeposito`),
  KEY `articulo_codigo_idx` (`articulo_codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `deposito_idDeposito`, `articulo_codigo`, `cant`, `minima`) VALUES
(1, 1, 'LALA001', '19', '3'),
(2, 1, 'COCA001', '19', '4'),
(3, 1, 'LALA002', '19', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `doc`, `nom`, `ape`, `fecha`, `tel`, `cel`, `sexo`, `dir`, `nota`, `fechar`, `estado`, `empresa_idEmpresa`) VALUES
(1, 'administrador', 'Joaquin', 'Madrid', '2014-11-05', '2281813637', '823610444', 'm', 'Av. Principal #  71', 'mmmm', '2014-11-02', 's', 1),
(2, 'E001', 'Público General', '     ', '2015-05-01', '', '', 'm', '    ', '', '2015-05-13', 's', 1),
(3, 'C001', 'Eleazar', 'Fernandez Ramirez', '1990-01-01', '2288462124', '2288462124', 'm', 'Diana Laura', '', '2015-10-27', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `resumen`
--

INSERT INTO `resumen` (`idResumen`, `corte`, `concepto`, `valor`, `tipo`, `fecha`, `user_idUsuario`, `estado`) VALUES
(1, '100001', 'Venta al Contado Factura: 100001 por Valor de $ 192.00', '192', 'Entrada', '2015-10-27', 1, 's'),
(2, '100002', 'Venta al Contado Factura: 100002 por Valor de $ 64.00', '64', 'Entrada', '2015-10-27', 2, 's'),
(3, '100003', 'Venta al Contado Factura: 100003 por Valor de $ 16.00', '16', 'Entrada', '2015-10-27', 2, 's'),
(4, '100004', 'Venta al Contado Factura: 100004 por Valor de $ 64.00', '64', 'Entrada', '2015-10-29', 1, 's'),
(5, '100005', 'Venta al Contado Factura: 100005 por Valor de $ 80.00', '80', 'Entrada', '2015-10-29', 1, 's'),
(6, '100006', 'Venta al Contado Factura: 100006 por Valor de $ 48.00', '48', 'Entrada', '2015-10-29', 1, 's'),
(7, '100007', 'Venta al Contado Factura: 100007 por Valor de $ 46.00', '46', 'Entrada', '2015-10-29', 1, 's'),
(8, '100008', 'Venta al Contado Factura: 100008 por Valor de $ 282.00', '282', 'Entrada', '2015-10-29', 1, 's'),
(9, '100009', 'Venta al Contado Factura: 100009 por Valor de $ 282.00', '282', 'Entrada', '2015-10-29', 1, 's'),
(10, '100010', 'Venta al Contado Factura: 100010 por Valor de $ 330.00', '330', 'Entrada', '2015-10-29', 1, 's'),
(11, '100011', 'Venta al Contado Factura: 100011 por Valor de $ 480.00', '480', 'Entrada', '2015-10-29', 1, 's'),
(12, '100012', 'Venta al Contado Factura: 100012 por Valor de $ 330.00', '330', 'Entrada', '2015-10-29', 1, 's'),
(13, '100013', 'Venta al Contado Factura: 100013 por Valor de $ 48.00', '48', 'Entrada', '2015-10-29', 1, 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE IF NOT EXISTS `sucursal` (
  `idDeposito` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idDeposito`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idDeposito`, `nombre`, `dir`, `tel`, `encargado`, `estado`) VALUES
(1, 'Sucursal Uno', 'Encanto No. 12, Sumidero', '2288462124', 'Francisco', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUbicacion` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`idUbicacion`, `nombreUbicacion`, `estado`) VALUES
(1, 'Mostrador', 's'),
(2, 'Almacen', 's'),
(3, 'Almacen Dos', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE IF NOT EXISTS `unidad` (
  `idUnidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUnidad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idUnidad`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `nombreUnidad`, `estado`) VALUES
(1, 'Pieza', 's'),
(2, 'Litro', 's'),
(3, 'Kilogramo', 's'),
(4, 'N/A', 's');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
