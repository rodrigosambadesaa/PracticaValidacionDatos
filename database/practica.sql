-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-02-2018 a las 10:24:27
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
-- Base de datos: `practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE DATABASE IF NOT EXISTS `practica_insert_mysql` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `temas`;
CREATE TABLE IF NOT EXISTS `temas` (
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tema` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`correo`,`tema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`correo`, `tema`) VALUES
('usuario@dominio.com', 'Cine'),
('usuario@dominio.com', 'Estética'),
('usuario@dominio.com', 'Música'),
('usuario2@dominio.com', 'Cine'),
('usuario2@dominio.com', 'Deportes'),
('usuario2@dominio.com', 'Estética'),
('usuario2@dominio.com', 'Móviles'),
('usuario2@dominio.com', 'Música'),
('usuario2@dominio.com', 'Teatro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `clave` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(2) NOT NULL,
  `piso` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `poblacion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `provincia` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `codigo_postal` char(5) COLLATE utf8_spanish_ci NOT NULL,
  `estado_civil` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `web` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`correo`, `clave`, `nombre`, `calle`, `numero`, `piso`, `poblacion`, `provincia`, `codigo_postal`, `estado_civil`, `fecha_nacimiento`, `web`) VALUES
('usuario@dominio.com', 'ff11aae3a302e11c2c2dab902ee611ab', 'Anómimo Anómino Anónimo', 'Calle', 11, 'Piso', 'Población', '1', '11111', 'c', '1990-02-02', 'http://www.ejemplo.com'),
('usuario2@dominio.com', '31d8342ec88202a2f129bee5eb47c571', 'Anómimo Anómino Anónimo', 'Calle', 12, 'Piso', 'Población', '1', '12321', 's', '1991-12-12', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;