-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-04-2018 a las 01:58:31
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisconpark`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `documento` int(30) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` int(20) NOT NULL,
  `contrasena` varchar(60) NOT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=MyISAM AUTO_INCREMENT=123457 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`documento`, `nombre`, `correo`, `telefono`, `contrasena`) VALUES
(123, 'fer', 'fer@fer.comdfg', 45555, 'doc123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobrados`
--

DROP TABLE IF EXISTS `cobrados`;
CREATE TABLE IF NOT EXISTS `cobrados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(45) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `vehiculo` varchar(20) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `horaingreso` varchar(45) DEFAULT NULL,
  `horasalida` varchar(45) DEFAULT NULL,
  `duracion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `observacion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `documento` int(30) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `vehiculo` varchar(20) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `horaingreso` datetime DEFAULT NULL,
  `horasalida` datetime DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigilante`
--

DROP TABLE IF EXISTS `vigilante`;
CREATE TABLE IF NOT EXISTS `vigilante` (
  `documento` int(30) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` int(20) NOT NULL,
  `contrasena` varchar(60) NOT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=MyISAM AUTO_INCREMENT=1181157 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vigilante`
--

INSERT INTO `vigilante` (`documento`, `nombre`, `correo`, `telefono`, `contrasena`) VALUES
(1, 'vigilantes', 'correo@correos', 12345, '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
