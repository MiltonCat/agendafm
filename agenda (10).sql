-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2019 a las 20:14:56
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `start` date DEFAULT NULL,
  `start_hour` time DEFAULT NULL,
  `end` date DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `allDay` tinyint(1) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `title`, `start`, `start_hour`, `end`, `end_hour`, `allDay`, `fk_usuario`) VALUES
(1, 'cumpleaÃ±os', '2019-03-22', '00:00:00', '0000-00-00', '00:00:00', 1, 4),
(3, 'inicio de clases', '2019-03-13', '00:00:00', '0000-00-00', '00:00:00', 1, 5),
(6, 'Mi cumple', '2019-05-29', '00:00:00', '0000-00-00', '00:00:00', 1, 5),
(8, 'cumple de caro', '2019-04-09', '07:00:00', '0000-00-00', '07:00:00', 0, 5),
(9, 'cumple de cami', '2019-03-22', '00:00:00', '0000-00-00', '00:00:00', 1, 5),
(11, 'cumple de mateo', '2019-09-30', '00:00:00', '0000-00-00', '00:00:00', 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
