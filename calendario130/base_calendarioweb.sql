-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2023 a las 20:00:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_calendarioweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `colortexto` varchar(7) DEFAULT NULL,
  `colorfondo` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `descripcion`, `inicio`, `fin`, `colortexto`, `colorfondo`) VALUES
(1, 'fiesta', 'nada', '2023-07-06 19:50:05', '2023-07-06 20:50:05', ' #09090', ' #3bed0'),
(2, 'nada', 'fiesta', '2023-07-06 19:53:28', '2023-07-06 21:53:28', ' #09090', '#3bed0f'),
(3, 'cose casa', 'que te importa', '2023-07-07 06:51:47', '2023-07-07 20:51:47', '#f4113a', ' #d6e30'),
(6, '', 'sdfdsfsdfsdfs', '2023-07-04 12:00:00', '2023-07-04 13:00:00', '#ffffff', '#3788d8'),
(7, '', 'solo una prueba', '2023-06-27 15:00:00', '2023-06-27 18:00:00', '#f9f573', '#56bd53'),
(8, 'Micaias', 'dsfsdfsdfdsfsdfsfsf', '2023-07-05 11:00:00', '2023-07-05 11:30:00', '#ffffff', '#3788d8'),
(9, 'Nada', 'algo hay que poner aca\nAsi que va esto', '2023-07-05 21:00:00', '2023-07-05 22:00:00', '#ffffff', '#3788d8'),
(10, 'prueba', 'algo', '2023-06-29 00:00:00', '2023-06-29 00:00:00', '#ffffff', '#3788d8'),
(18, 'digo', 'nada', '2023-07-03 00:00:00', '2023-07-03 00:00:00', '#00ff80', '#ff8000'),
(23, '', '', '2023-08-02 00:00:00', '2023-08-02 00:00:00', '#000000', '#000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventospredefinidos`
--

CREATE TABLE `eventospredefinidos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `colortexto` varchar(7) DEFAULT NULL,
  `colorfondo` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventospredefinidos`
--

INSERT INTO `eventospredefinidos` (`id`, `titulo`, `horainicio`, `horafin`, `colortexto`, `colorfondo`) VALUES
(1, 'cualquiercosa', '20:00:00', '22:28:00', '#090909', '#3bed0f'),
(2, 'Examen', '09:00:00', '10:00:00', '#FFFFFF', ' 	#3bed');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventospredefinidos`
--
ALTER TABLE `eventospredefinidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `eventospredefinidos`
--
ALTER TABLE `eventospredefinidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
