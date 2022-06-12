-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2022 a las 19:00:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL,
  `id_departamentos` int(11) DEFAULT NULL,
  `ciudades` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `id_departamentos`, `ciudades`) VALUES
(1, 1, 'Leticia'),
(2, 1, 'Puerto Nariño'),
(3, 2, 'Medellin'),
(4, 2, 'jericó'),
(5, 2, 'Bello'),
(6, 2, 'Santa Fé De Antioquia'),
(7, 2, 'Belmira'),
(8, 3, 'Barranquilla'),
(9, 3, 'Puerto Colombia'),
(10, 3, 'Soledad'),
(11, 3, 'Galapa'),
(12, 3, 'Baranoa'),
(13, 4, 'Bogotá'),
(14, 5, 'Cartagena'),
(15, 5, 'Magangué'),
(16, 5, 'Santa Catalina'),
(17, 5, 'Tubaco'),
(18, 5, 'Mompós'),
(19, 6, 'Popayán'),
(20, 6, 'Balboa'),
(21, 6, 'Suarez'),
(22, 6, 'Santa Rosa'),
(23, 6, 'Inza'),
(24, 7, 'Montería'),
(25, 7, 'Los Cordóbas'),
(26, 7, 'Ayapel'),
(27, 7, 'Lorica'),
(28, 7, 'Pueblo Nuevo'),
(29, 8, 'Zipaquirá'),
(30, 8, 'Cáqueza'),
(31, 8, 'Girardot'),
(32, 8, 'Soacha'),
(33, 8, 'Facatativá'),
(34, 9, 'Riohacha'),
(35, 9, 'Uribia'),
(36, 9, 'Maicao'),
(37, 9, 'Manaure'),
(38, 9, 'Dibulla'),
(39, 10, 'Riohacha'),
(40, 10, 'Uribia'),
(41, 10, 'Maicao'),
(42, 10, 'Manaure'),
(43, 10, 'Dibulla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

CREATE TABLE `quejas` (
  `queja` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quejas`
--

INSERT INTO `quejas` (`queja`) VALUES
('dscddddd'),
('Hola'),
('Profe tenga piedad de mi :D');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quejas`
--
ALTER TABLE `quejas`
  ADD PRIMARY KEY (`queja`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
