-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2022 a las 20:19:01
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `camioneros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camioneros`
--

CREATE TABLE `camioneros` (
  `DNI` int(15) NOT NULL,
  `Nombre y apellido` varchar(50) NOT NULL,
  `Telefono` int(30) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `Dirección` varchar(50) NOT NULL,
  `Salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camión`
--

CREATE TABLE `camión` (
  `Matricula` int(50) NOT NULL,
  `Modelo` varchar(40) NOT NULL,
  `Tipo` varchar(40) NOT NULL,
  `Potencia` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `Código` int(30) NOT NULL,
  `Descripción` varchar(50) NOT NULL,
  `Destinatario` varchar(50) NOT NULL,
  `Dirección del destinatario` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Código provincia` int(15) NOT NULL,
  `Dirección` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camioneros`
--
ALTER TABLE `camioneros`
  ADD PRIMARY KEY (`DNI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camioneros`
--
ALTER TABLE `camioneros`
  MODIFY `DNI` int(15) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
