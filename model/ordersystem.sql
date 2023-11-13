-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-11-2023 a las 17:23:16
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ordersystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brandphone`
--

DROP TABLE IF EXISTS `brandphone`;
CREATE TABLE IF NOT EXISTS `brandphone` (
  `idBrandPhone` int NOT NULL AUTO_INCREMENT,
  `brandPhone` varchar(20) NOT NULL,
  PRIMARY KEY (`idBrandPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `service` varchar(20) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderdet`
--

DROP TABLE IF EXISTS `orderdet`;
CREATE TABLE IF NOT EXISTS `orderdet` (
  `idOrderDet` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idBrandPhone` int NOT NULL,
  `idUser` int NOT NULL,
  `idCategory` int NOT NULL,
  PRIMARY KEY (`idOrderDet`),
  KEY `idBrandPhone` (`idBrandPhone`),
  KEY `idUser` (`idUser`),
  KEY `idCategory` (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orderdet`
--
ALTER TABLE `orderdet`
  ADD CONSTRAINT `orderdet_ibfk_1` FOREIGN KEY (`idBrandPhone`) REFERENCES `brandphone` (`idBrandPhone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdet_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdet_ibfk_3` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
