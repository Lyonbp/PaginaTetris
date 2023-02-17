-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2022 a las 18:29:12
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tetris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id`, `usuario`, `contrasenia`) VALUES
(1, '123', '$2y$10$cXnS8FGRwn2gGs.XcW.QwuPK9155fpuZlxCFsW/qalo'),
(2, 'Lyon', '$2y$10$BMjL5r4UWN5jUjFAHPMuvuAIdtW4J3BiNyB0oEJylAG'),
(3, 'admin', '$2y$10$4y3S0hxiBs4XgdjlGWc17Oyrj/7mMhgF5wNUyN.amSq'),
(4, '123', '$2y$10$AFjozTc1B25O3RMvDF6zV.9KiFwxahdaDioLz4y8Ixn'),
(5, '123', '$2y$10$VVr5zwdQUB/np4vAgHab8OH44tJVLn5aN0C5VU8xV6G'),
(6, '123', '$2y$10$5i8fXOUsgPBZpz0.qpYpQekUfdWuffNCcngPcIcg/Dv'),
(7, '123', '$2y$10$gSeGSYpvc2o55kET7jaJQOzZP/2TsmnR8ISC.rLzJk/'),
(8, 'Josesitogamer', '$2y$10$SEHN1sMoetXUUHsKDSwCvuhCmdm.PGIjCw0eqNiziOq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactanos`
--

CREATE TABLE `contactanos` (
  `codigocontac` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `apodo` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactanos`
--

INSERT INTO `contactanos` (`codigocontac`, `nombre`, `apellido`, `apodo`, `correo`, `telefono`, `fecha`, `comentarios`) VALUES
(1, 'noobmaster69', '', '', 'hitana@gmail.com', 960419848, '2022-04-01', 'asasa'),
(2, 'noobmaster69', 'luis', '', 'hitana@gmail.com', 960419848, '2022-04-01', 'sadada'),
(3, 'Jorge', 'landa', '', 'jorgl@hotmal.com', 964435644, '2022-04-01', 'nanana'),
(4, 'Favio', 'luis', '', 'jorgl@hotmal.com', 960419848, '2022-04-02', 'dasdada'),
(5, 'Favio', 'landa', '', 'hitana@gmail.com', 948523654, '2022-04-02', 'asdada'),
(6, 'lucas', 'landa', '', 'hitana@gmail.com', 960419848, '2022-04-01', 'sdadadasda'),
(7, 'favio', 'luis', '', 'hitana@gmail.com', 948523654, '2022-03-31', 'adadad'),
(8, 'noobmaster69', 'luis', '', 'hitana@gmail.com', 948523654, '2022-04-27', 'aea'),
(9, 'noobmaster69', 'luis', '', 'hitana@gmail.com', 948523654, '2022-06-01', 'aea'),
(10, 'favio', 'luis', '', 'hitana@gmail.com', 948523654, '2022-06-12', 'eaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numjuego`
--

CREATE TABLE `numjuego` (
  `idNumJuego` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `horas_juego` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  ADD PRIMARY KEY (`codigocontac`);

--
-- Indices de la tabla `numjuego`
--
ALTER TABLE `numjuego`
  ADD PRIMARY KEY (`idNumJuego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  MODIFY `codigocontac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `numjuego`
--
ALTER TABLE `numjuego`
  MODIFY `idNumJuego` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
