-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2015 a las 03:47:31
-- Versión del servidor: 5.6.21-log
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `papeleria`
--
CREATE DATABASE IF NOT EXISTS `papeleria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `papeleria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

DROP TABLE IF EXISTS `articulo`;
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
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`codigo`, `nombre`, `departamento_idDepartamento`, `unidad_idUnidad`, `defecto`, `iva_ivacompra`, `iva_ivaventa`, `costo_prov`, `ocosto_prov`, `a_venta`, `b_venta`, `c_venta`, `d_venta`, `a_costo`, `b_costo`, `c_costo`, `d_costo`) VALUES
(1, 'Impresion a color ', 1, 1, 'A', 3, 3, '0', '0', '1', '0', '0', '0', '0.7', '0', '0', '0'),
(2, 'abacos infantil infa', 2, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '0', '0', '0', '0'),
(3, 'acuarelas pelikan ju', 3, 1, 'A', 3, 3, '0', '0', '52', '0', '0', '0', '44.8275862068966', '0', '0', '0'),
(4, 'acuarelas pelikan in', 3, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(5, 'acuarelas vina vina', 3, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(6, 'goma migajon factis', 4, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(7, 'goma migajon pelican', 4, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(8, 'corrector chico bic ', 4, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(9, 'corrector liquido li', 4, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(10, 'corrector grande liq', 4, 1, 'A', 3, 3, '0', '0', '28', '0', '0', '0', '24.1379310344828', '0', '0', '0'),
(11, 'goma figura china go', 4, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(12, 'corrector cinta bic ', 4, 1, 'A', 3, 3, '0', '0', '21', '0', '0', '0', '18.1034482758621', '0', '0', '0'),
(13, 'corrector cinta mala', 4, 1, 'A', 3, 3, '0', '0', '35', '0', '0', '0', '30.1724137931034', '0', '0', '0'),
(14, 'goma pelican grande ', 4, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(15, 'goma chica pelican p', 4, 1, 'A', 3, 3, '0', '0', '1', '0', '0', '0', '0.862068965517241', '0', '0', '0'),
(16, 'goma pelican duo br4', 4, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(17, 'brillantina chica', 5, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(18, 'brillantina grande', 5, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(19, 'canicas v/colores', 6, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(20, 'cheques cheques para', 7, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(21, 'baco mariposa #2', 8, 1, 'A', 3, 3, '0', '0', '40', '0', '0', '0', '34.4827586206897', '0', '0', '0'),
(22, 'baco mariposa #1', 8, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(23, 'colores mapita chico', 9, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(24, 'colores jungla chico', 9, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(25, 'colores pelikan gran', 9, 1, 'A', 3, 3, '0', '0', '70', '0', '0', '0', '60.3448275862069', '0', '0', '0'),
(26, 'colores colores norm', 9, 1, 'A', 3, 3, '0', '0', '110', '0', '0', '0', '94.8275862068966', '0', '0', '0'),
(27, 'colores norma 12pz', 9, 1, 'A', 3, 3, '0', '0', '62', '0', '0', '0', '53.448275862069', '0', '0', '0'),
(28, 'colores mapita grand', 9, 1, 'A', 3, 3, '0', '0', '22', '0', '0', '0', '18.9655172413793', '0', '0', '0'),
(29, 'colores vividel 12pz', 9, 1, 'A', 3, 3, '0', '0', '39', '0', '0', '0', '33.6206896551724', '0', '0', '0'),
(30, 'colores maped 24pz', 9, 1, 'A', 3, 3, '0', '0', '55', '0', '0', '0', '47.4137931034483', '0', '0', '0'),
(31, 'colores bic kids 12p', 9, 1, 'A', 3, 3, '0', '0', '35', '0', '0', '0', '30.1724137931034', '0', '0', '0'),
(32, 'compas presición com', 10, 1, 'A', 3, 3, '0', '0', '22', '0', '0', '0', '18.9655172413793', '0', '0', '0'),
(33, 'compas baco azules', 10, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(34, 'crayolas carmen tria', 11, 1, 'A', 3, 3, '0', '0', '32', '0', '0', '0', '27.5862068965517', '0', '0', '0'),
(35, 'crayolas pelikan jum', 11, 1, 'A', 3, 3, '0', '0', '30', '0', '0', '0', '25.8620689655172', '0', '0', '0'),
(36, 'navajas delgado', 12, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(37, 'cebra grueso', 12, 1, 'A', 3, 3, '0', '0', '11', '0', '0', '0', '9.48275862068966', '0', '0', '0'),
(38, 'cebra delgado', 12, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(39, 'navaja gruesa', 12, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(40, 'dvd sony original', 13, 1, 'A', 3, 3, '0', '0', '17', '0', '0', '0', '14.6551724137931', '0', '0', '0'),
(41, 'dvd sony sobre econo', 13, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(42, 'cd sobre economico', 13, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(43, 'cd caja plastica', 13, 1, 'A', 3, 3, '0', '0', '13', '0', '0', '0', '11.2068965517241', '0', '0', '0'),
(44, 'diurez chico scotch', 14, 1, 'A', 3, 3, '0', '0', '2', '0', '0', '0', '1.72413793103448', '0', '0', '0'),
(45, 'diurex cea 1210', 14, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(46, 'diurex cea 1220', 14, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(47, 'diurex cea 1833', 14, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(48, 'diurex tuk chico', 14, 1, 'A', 3, 3, '0', '0', '2', '0', '0', '0', '1.72413793103448', '0', '0', '0'),
(49, 'sinta metalica oro 1', 14, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(50, 'sinta metalica plata', 14, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(51, 'masking tape chica 1', 14, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(52, 'cinta adesiva decora', 14, 1, 'A', 3, 3, '0', '0', '2', '0', '0', '0', '1.72413793103448', '0', '0', '0'),
(53, 'masquin ', 14, 1, 'A', 3, 3, '0', '0', '25', '0', '0', '0', '21.551724137931', '0', '0', '0'),
(54, 'cinta adesiva decora', 14, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(55, 'cinta canela clara y', 14, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(56, 'porta gafete pinzas ', 15, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(57, 'porta gafete pinzas ', 15, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(58, 'micas para gafete gr', 15, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(59, 'micas para gafete ch', 15, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(60, 'cordon para gafete v', 15, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(61, 'gises vinci v/colore', 1, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(62, 'gises baco blancos', 16, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(63, 'gises baco v/colores', 16, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(64, 'grapas standard', 18, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(65, 's/transportador baco', 17, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(66, 's/rosa de los viento', 17, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(67, 's/regla metalica esc', 17, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(68, 's/regla metalica arl', 17, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(69, 's/regla plastico koa', 17, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(70, 's/regla madera arly ', 17, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(71, 's/escalimetro profec', 17, 1, 'A', 3, 3, '0', '0', '50', '0', '0', '0', '43.1034482758621', '0', '0', '0'),
(72, 'juego de geometria k', 17, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(73, 'juego de geometria k', 17, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(74, 'juego de geometria m', 17, 1, 'A', 3, 3, '0', '0', '60', '0', '0', '0', '51.7241379310345', '0', '0', '0'),
(75, 'puntillas 0,7', 19, 1, 'A', 3, 3, '0', '0', '9', '0', '0', '0', '7.75862068965517', '0', '0', '0'),
(76, 'bic diamante negro', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(77, 'escrimex mediano azu', 19, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(78, 'paper mate eraser ne', 19, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(79, 'bic clasico negro', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(80, 'bic diamante fino ro', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(81, 'bic bu2 grip azul', 19, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(82, 'bic cristal medium g', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(83, 'bic cristal medium g', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(84, 'estabilo point 88 de', 19, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(85, 'zebra z grip rojo', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(86, 'pilot G-2 05 azul', 19, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(87, 'zevra z grip negro', 19, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(88, 'bic cristal v/colore', 19, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(89, 'gel chiban v/colores', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(90, 'zebra ola cafe', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(91, 'tec rojo', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(92, 'resistol azul', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(93, 'zebra ola azul', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(94, 'zebra techno azul', 19, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(95, 'bic diamante azul', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(96, 'bic clasico azul', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(97, 'bic clasico rojo', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(98, 'bic punto fino azul', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(99, 'bic punto fino negro', 19, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(100, 'bic punto fino rojo', 19, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(101, 'lapiceros v/colors l', 19, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(102, 'lapicero gel gel cos', 19, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(103, 'lapicero ancho chino', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(104, 'bic cristal chico po', 19, 1, 'A', 3, 3, '0', '0', '7', '0', '0', '0', '6.03448275862069', '0', '0', '0'),
(105, 'lapicero zebra chico', 19, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(106, 'bic multicolor bic 4', 19, 1, 'A', 3, 3, '0', '0', '25', '0', '0', '0', '21.551724137931', '0', '0', '0'),
(107, 'lapicero paper rojo ', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(108, 'lapiceros gel paper ', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(109, 'lapiceros gel paper ', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(110, 'lapicero paper mate ', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(111, 'lapicero paper mate ', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(112, 'bic clasico verde', 19, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(113, 'mirado mirado 2', 20, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(114, 'mirado mirado 2 1/2', 20, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(115, 'bic 2b', 20, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(116, 'bic mentor 2', 20, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(117, 'cebra puntillas .5', 20, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(118, 'bic portaminas .5', 20, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(119, 'sport puntillas', 20, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(120, 'lapiz 2 classic', 20, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(121, 'lapiz hb 2b dibujo', 20, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(122, 'lapiz duo lapiz duo', 20, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(123, 'bicolor delgado', 20, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(124, 'lapiz entrenador mir', 20, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(125, 'puntillas 0,5', 20, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(126, 'puntillas 0,7', 20, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(127, 'puntillas .5 zebra', 20, 1, 'A', 3, 3, '0', '0', '9', '0', '0', '0', '7.75862068965517', '0', '0', '0'),
(128, 'lapiz boceto vinci', 20, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(129, 'lapiz cera rojo bero', 20, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(130, 'ligas chicas v/color', 21, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(131, 'ligas grandes delgad', 21, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(132, 'lupa glas mediana', 22, 1, 'A', 3, 3, '0', '0', '13', '0', '0', '0', '11.2068965517241', '0', '0', '0'),
(133, 'lupa barrilito chica', 22, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(134, 'lupa mini', 22, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(135, 'micas termicas 64 x ', 23, 1, 'A', 3, 3, '0', '0', '111', '0', '0', '0', '95.6896551724138', '0', '0', '0'),
(136, 'micas termicas 100 x', 23, 1, 'A', 3, 3, '0', '0', '111', '0', '0', '0', '95.6896551724138', '0', '0', '0'),
(137, 'micas termicas 120 x', 23, 1, 'A', 3, 3, '0', '0', '111', '0', '0', '0', '95.6896551724138', '0', '0', '0'),
(138, 'notas remicion grand', 24, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(139, 'notas remicion chica', 24, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(140, 'blok de notas blncas', 24, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(141, 'pagares pagares', 25, 1, 'A', 3, 3, '0', '0', '36', '0', '0', '0', '31.0344827586207', '0', '0', '0'),
(142, 'pegamento scotch de ', 26, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(143, 'pegamento bully chic', 26, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(144, 'pegamento bully gran', 26, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(145, 'pegamento resitol de', 26, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(146, 'pegamento prit chico', 26, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(147, 'pegamento prit grand', 26, 1, 'A', 3, 3, '0', '0', '34', '0', '0', '0', '29.3103448275862', '0', '0', '0'),
(148, 'pegamento blanco vin', 26, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(149, 'pegamento blanco vin', 26, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(150, 'pegamento blanco liq', 26, 1, 'A', 3, 3, '0', '0', '25', '0', '0', '0', '21.551724137931', '0', '0', '0'),
(151, 'pegamento blanco bul', 26, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(152, 'pegamneto blanco bul', 26, 1, 'A', 3, 3, '0', '0', '11', '0', '0', '0', '9.48275862068966', '0', '0', '0'),
(153, 'pegamneto blanco bul', 26, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(154, 'pegamneto blanco bul', 26, 1, 'A', 3, 3, '0', '0', '32', '0', '0', '0', '27.5862068965517', '0', '0', '0'),
(155, 'pegamneto blanco res', 26, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(156, 'pegamneto blanco res', 26, 1, 'A', 3, 3, '0', '0', '48', '0', '0', '0', '41.3793103448276', '0', '0', '0'),
(157, 'brocha chica', 27, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(158, 'brocha grandes', 27, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(159, 'pinceles v/colores', 27, 1, 'A', 3, 3, '0', '0', '4', '0', '0', '0', '3.44827586206897', '0', '0', '0'),
(160, 'sombra café 384 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(161, 'limon hanza 307 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(162, 'azul pastel 316 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(163, 'negro intenso 382 pi', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(164, 'turqueza 324 pintura', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(165, 'verde ciaro 312 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(166, 'verde olivo 330 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(167, 'crema 320 pintura po', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(168, 'amarillo pastel 129 ', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(169, 'azul ultramar 315 pi', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(170, 'rosa mexicano 337 pi', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(171, 'rosa pastel 326 pint', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(172, 'violeta cialo 311 pi', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(173, 'morado 334 pintura p', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(174, 'rojo oxido 305 pintu', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(175, 'rojo toluipina 309 p', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(176, 'gris 317 pintura pol', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(177, 'plata 701 pintura po', 28, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(178, 'caton 703 pintura po', 28, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(179, 'oro 700 pintura poli', 28, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(180, 'rosa 321 pintura pol', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(181, 'negro bujia 73 pintu', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(182, 'blanco p/letreros 72', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(183, 'café 57a pintura vin', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(184, 'azul ultramar 66 pin', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(185, 'rosa mexicano 59 pin', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(186, 'amarillo medio 51 pi', 28, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(187, 'politec 1/4 v/colore', 28, 1, 'A', 3, 3, '0', '0', '44', '0', '0', '0', '37.9310344827586', '0', '0', '0'),
(188, 'pinza acme 41mm', 29, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(189, 'pinza acme 51mm', 29, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(190, 'pinza acme 19mm', 29, 1, 'A', 3, 3, '0', '0', '1', '0', '0', '0', '0.862068965517241', '0', '0', '0'),
(191, 'plastilina playdoh v', 30, 1, 'A', 3, 3, '0', '0', '23', '0', '0', '0', '19.8275862068966', '0', '0', '0'),
(192, 'plastilina vinci 10p', 30, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(193, 'plastilina barra v/c', 30, 1, 'A', 3, 3, '0', '0', '8', '0', '0', '0', '6.89655172413793', '0', '0', '0'),
(194, 'plumon sharpie aceit', 31, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(195, 'plumon mega plumon a', 31, 1, 'A', 3, 3, '0', '0', '24', '0', '0', '0', '20.6896551724138', '0', '0', '0'),
(196, 'plumon perma crom pl', 31, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(197, 'plumon aceite extrem', 31, 1, 'A', 3, 3, '0', '0', '17', '0', '0', '0', '14.6551724137931', '0', '0', '0'),
(198, 'plumon plumon cd bic', 31, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(199, 'plumon dos puntas do', 31, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(200, 'plumon sharpie rojo', 31, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(201, 'plumon aceite signal', 31, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(202, 'plumon aceite grueso', 31, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(203, 'plumon 2 puntas plum', 31, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(204, 'plumon dos puntas az', 31, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(205, 'plumones v/color 2 p', 31, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(206, 'plumones stercbrook ', 31, 1, 'A', 3, 3, '0', '0', '25', '0', '0', '0', '21.551724137931', '0', '0', '0'),
(207, 'marcatextos faver ca', 31, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(208, 'marcatextos vicion j', 31, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(209, 'marcatextos vicio pl', 31, 1, 'A', 3, 3, '0', '0', '17', '0', '0', '0', '14.6551724137931', '0', '0', '0'),
(210, 'plumon agua crayola ', 31, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(211, 'plumon pizarron magi', 31, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(212, 'plumon pizarron aqua', 31, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(213, 'plumon acuacolor ber', 31, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(214, 'plumon de agua pelik', 31, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(215, 'plumon de agua scent', 31, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(216, 'plumon para billites', 31, 1, 'A', 3, 3, '0', '0', '22', '0', '0', '0', '18.9655172413793', '0', '0', '0'),
(217, 'plumon marca todo de', 31, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(218, 'plumon marca todo de', 31, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(219, 'plumones bic paquete', 31, 1, 'A', 3, 3, '0', '0', '25', '0', '0', '0', '21.551724137931', '0', '0', '0'),
(220, 'plumones vince paque', 31, 1, 'A', 3, 3, '0', '0', '30', '0', '0', '0', '25.8620689655172', '0', '0', '0'),
(221, 'recibos de dinero re', 32, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(222, 'recibo dinero recibo', 32, 1, 'A', 3, 3, '0', '0', '13', '0', '0', '0', '11.2068965517241', '0', '0', '0'),
(223, 'sacapuntas tortuga t', 33, 1, 'A', 3, 3, '0', '0', '20', '0', '0', '0', '17.2413793103448', '0', '0', '0'),
(224, 'sacapuntas basurero ', 33, 1, 'A', 3, 3, '0', '0', '12', '0', '0', '0', '10.3448275862069', '0', '0', '0'),
(225, 'sacapuntas sensillo ', 33, 1, 'A', 3, 3, '0', '0', '3', '0', '0', '0', '2.58620689655172', '0', '0', '0'),
(226, 'sacapuntas grande du', 33, 1, 'A', 3, 3, '0', '0', '5', '0', '0', '0', '4.31034482758621', '0', '0', '0'),
(227, 'sacapuntas chico duo', 33, 1, 'A', 3, 3, '0', '0', '6', '0', '0', '0', '5.17241379310345', '0', '0', '0'),
(228, 'sacapuntas sensillo ', 33, 1, 'A', 3, 3, '0', '0', '2', '0', '0', '0', '1.72413793103448', '0', '0', '0'),
(229, 'silbatos v/colores', 34, 1, 'A', 3, 3, '0', '0', '1', '0', '0', '0', '0.862068965517241', '0', '0', '0'),
(230, 'silicon barra barras', 34, 1, 'A', 3, 3, '0', '0', '2', '0', '0', '0', '1.72413793103448', '0', '0', '0'),
(231, 'silicon solidex 30ml', 35, 1, 'A', 3, 3, '0', '0', '14', '0', '0', '0', '12.0689655172414', '0', '0', '0'),
(232, 'tabla periodica secu', 36, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(233, 'tabla periodica bach', 36, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(234, 'tarjeta de trabajo 5', 37, 1, 'A', 3, 3, '0', '0', '30', '0', '0', '0', '25.8620689655172', '0', '0', '0'),
(235, 'tarjeta bibliografic', 37, 1, 'A', 3, 3, '0', '0', '15', '0', '0', '0', '12.9310344827586', '0', '0', '0'),
(236, 'tarjeta bristol 4" x', 37, 1, 'A', 3, 3, '0', '0', '30', '0', '0', '0', '25.8620689655172', '0', '0', '0'),
(237, 'tarjeta opalina traj', 37, 1, 'A', 3, 3, '0', '0', '1', '0', '0', '0', '0.862068965517241', '0', '0', '0'),
(238, 'barrilito punta roma', 38, 1, 'A', 3, 3, '0', '0', '16', '0', '0', '0', '13.7931034482759', '0', '0', '0'),
(239, 'barrilito metalica', 38, 1, 'A', 3, 3, '0', '0', '98', '0', '0', '0', '84.4827586206897', '0', '0', '0'),
(240, 'Rihan punta roma eco', 38, 1, 'A', 3, 3, '0', '0', '10', '0', '0', '0', '8.62068965517241', '0', '0', '0'),
(241, 'tinta azor rolaplica', 39, 1, 'A', 3, 3, '0', '0', '30', '0', '0', '0', '25.8620689655172', '0', '0', '0'),
(242, 'uhu 8ml uhu', 40, 1, 'A', 3, 3, '0', '0', '18', '0', '0', '0', '15.5172413793103', '0', '0', '0'),
(243, 'uhu 20ml uhu', 40, 1, 'A', 3, 3, '0', '0', '34', '0', '0', '0', '29.3103448275862', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

DROP TABLE IF EXISTS `cajero`;
CREATE TABLE IF NOT EXISTS `cajero` (
  `usuario_idUsuario3` int(11) NOT NULL,
  `deposito_idDeposito3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`usuario_idUsuario3`, `deposito_idDeposito3`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL,
  `doc` varchar(20) NOT NULL,
  `cupo` varchar(20) NOT NULL,
  `puntos` varchar(20) NOT NULL,
  `persona_idPersona2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `doc`, `cupo`, `puntos`, `persona_idPersona2`) VALUES
(0, '001', '0', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
`idDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(30) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `empresa_idEmpresa1` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `nombreDepartamento`, `estado`, `empresa_idEmpresa1`) VALUES
(1, 'Impresiones', 's', 1),
(2, 'abacos', 's', 1),
(3, 'acuarelas', 's', 1),
(4, 'borradores', 's', 1),
(5, 'brillantina', 's', 1),
(6, 'canicas', 's', 1),
(7, 'cheques', 's', 1),
(8, 'clip', 's', 1),
(9, 'colores', 's', 1),
(10, 'compas', 's', 1),
(11, 'crayolas', 's', 1),
(12, 'cuter', 's', 1),
(13, 'disco', 's', 1),
(14, 'diurex', 's', 1),
(15, 'gafete', 's', 1),
(16, 'gises', 's', 1),
(17, 'juego geometria', 's', 1),
(18, 'Grapas', 's', 1),
(19, 'lapiceros', 's', 1),
(20, 'lapices', 's', 1),
(21, 'ligas', 's', 1),
(22, 'lupas', 's', 1),
(23, 'micas termicas', 's', 1),
(24, 'notas', 's', 1),
(25, 'pagares', 's', 1),
(26, 'pegamento', 's', 1),
(27, 'pinceles', 's', 1),
(28, 'pinturas liquidas', 's', 1),
(29, 'pinza', 's', 1),
(30, 'plastilinas', 's', 1),
(31, 'plumones', 's', 1),
(32, 'recibos', 's', 1),
(33, 'sacapuntas', 's', 1),
(34, 'silbatos', 's', 1),
(35, 'silicon', 's', 1),
(36, 'tabala periodica', 's', 1),
(37, 'tarjetas', 's', 1),
(38, 'tijeras', 's', 1),
(39, 'tinta para sellos', 's', 1),
(40, 'uhu', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

DROP TABLE IF EXISTS `detalle`;
CREATE TABLE IF NOT EXISTS `detalle` (
`id` int(11) NOT NULL,
  `articulo_codigo1` int(11) NOT NULL,
  `ref` varchar(45) NOT NULL,
  `cant` int(11) NOT NULL,
  `usuario_idUsuario1` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleprov`
--

DROP TABLE IF EXISTS `detalleprov`;
CREATE TABLE IF NOT EXISTS `detalleprov` (
`idDetalleProveedor` int(11) NOT NULL,
  `producto_codigo` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
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
(1, 'admin', '12345', 'iris@gmail.com', '2014-11-05', 'a', 1),
(2, '001', '001', 'evi_skorpion@hotmail', '2015-05-01', 'c', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
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
(1, 'Papeleria Encanto', 'XAXX010101000', 'Av. Encanto #71 Col. El mirador CP ', 'México', 'Xalapa', '2225655', '91170', 'www.papeleria-encanto.com', 'encanto@gmail.com', '2015-05-13', 'Pesos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
`id` int(11) NOT NULL,
  `factura` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `factura`, `valor`, `fecha`, `estado`, `idUsuario`) VALUES
(1, '100000001', '15', '2015-05-13', 's', 1),
(2, '100000002', '16', '2015-05-14', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

DROP TABLE IF EXISTS `iva`;
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
(1, 'sin iva 0%', '0', 'n'),
(2, 'IVA 16%', '16', 's'),
(3, 'Tasa 0', '0', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
`id` int(11) NOT NULL,
  `deposito_idDeposito` int(11) NOT NULL,
  `articulo_codigo` int(11) NOT NULL,
  `cant` varchar(255) NOT NULL,
  `minima` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `doc`, `nom`, `ape`, `fecha`, `tel`, `cel`, `sexo`, `dir`, `nota`, `fechar`, `estado`, `empresa_idEmpresa`) VALUES
(1, 'admin', 'Elidia', 'Torres Palacios', '2014-11-05', '2281813637', '823610444', 'f', 'Av. Encanto #  71', 'mmmm', '2014-11-02', 's', 1),
(2, '001', 'Público General', '     ', '2015-05-01', '', '', 'm', '    ', '', '2015-05-13', 's', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `dir`, `tel`, `fax`, `nota`, `contacto`) VALUES
(1, 'Proveedor Generico', 'Diana Laura', '45451212788778', 'correo@hotmail.com', 'Viene cada 8 dias', '22885487745'),
(2, 'Impresoras HP', 'Avila Camacho No. 1020', '2255847879', 'correo@hotmail.com', 'HP', '2255847879');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
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

DROP TABLE IF EXISTS `unidad`;
CREATE TABLE IF NOT EXISTS `unidad` (
`idUnidad` int(11) NOT NULL,
  `nombreUnidad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `nombreUnidad`, `estado`) VALUES
(1, 'Pieza', 's');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
 ADD PRIMARY KEY (`codigo`), ADD KEY `unidad_idUnidad_idx` (`unidad_idUnidad`), ADD KEY `iva_ivacompra_idx` (`iva_ivacompra`), ADD KEY `iva_ivaVenta_idx` (`iva_ivaventa`), ADD KEY `departamento_idDepartamento` (`departamento_idDepartamento`);

--
-- Indices de la tabla `cajero`
--
ALTER TABLE `cajero`
 ADD KEY `usuario_idUsuario_idx` (`usuario_idUsuario3`), ADD KEY `deposito_idDeposito_idx` (`deposito_idDeposito3`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`idCliente`), ADD KEY `persona_idPersona2` (`persona_idPersona2`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
 ADD PRIMARY KEY (`idDepartamento`), ADD KEY `empresa_idEmpresa_idx` (`empresa_idEmpresa1`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
 ADD PRIMARY KEY (`id`), ADD KEY `articulo_codigo_idx` (`articulo_codigo1`), ADD KEY `usuario_idUsuario_idx` (`usuario_idUsuario1`);

--
-- Indices de la tabla `detalleprov`
--
ALTER TABLE `detalleprov`
 ADD PRIMARY KEY (`idDetalleProveedor`), ADD KEY `proveedor_id` (`proveedor_id`), ADD KEY `producto_codigo_idx` (`producto_codigo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
 ADD PRIMARY KEY (`idUsuario`), ADD KEY `persona_idPersona_idx` (`persona_idPersona`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
 ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
 ADD PRIMARY KEY (`id`), ADD KEY `idUsuario_idx` (`idUsuario`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
 ADD PRIMARY KEY (`idIva`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
 ADD PRIMARY KEY (`id`), ADD KEY `deposito_idDeposito_idx` (`deposito_idDeposito`), ADD KEY `articulo_codigo_idx` (`articulo_codigo`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`idPersona`), ADD KEY `empresa_idEmpresa` (`empresa_idEmpresa`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
 ADD PRIMARY KEY (`id`);

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
MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `detalleprov`
--
ALTER TABLE `detalleprov`
MODIFY `idDetalleProveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=243;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
MODIFY `idIva` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
MODIFY `idDeposito` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
MODIFY `idUnidad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
