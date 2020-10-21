-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-10-2019 a las 17:12:17
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
CREATE TABLE IF NOT EXISTS `tbl_categoria` (
  `cat_cod_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nom_categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_cod_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`cat_cod_categoria`, `cat_nom_categoria`) VALUES
(1, 'Televisores'),
(2, 'Smartphones'),
(3, 'Computadores'),
(4, 'Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
CREATE TABLE IF NOT EXISTS `tbl_producto` (
  `prod_codigo` int(11) NOT NULL,
  `prod_nombre` varchar(30) NOT NULL,
  `prod_precio` int(11) NOT NULL,
  `prod_cod_categoria` int(11) NOT NULL,
  PRIMARY KEY (`prod_codigo`),
  KEY `prod_cod_categoria` (`prod_cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`prod_codigo`, `prod_nombre`, `prod_precio`, `prod_cod_categoria`) VALUES
(45, 'Smartphone Samsung A30', 159990, 2),
(1155, 'Led Samsung 50in 4K Smart TV', 199900, 1),
(3487, 'Audí­fonos Bluetooth Azules', 12990, 4),
(4998, 'Laptop Lenovo ThinkPad P52s', 853990, 3),
(6577, 'Cable USB 2.0', 2990, 4),
(8943, 'Laptop HP ProBook 6440b', 199900, 3),
(9843, 'Cargador de celular Samsung', 4990, 4);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`prod_cod_categoria`) REFERENCES `tbl_categoria` (`cat_cod_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
