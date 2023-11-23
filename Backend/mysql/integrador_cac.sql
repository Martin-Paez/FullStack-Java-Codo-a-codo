-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 15:12:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

create database integrador_cac;
use integrador_cac;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `fecha_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Martina', 'González', 'martina.gonzalez@example.com', 'Innovación Tecnológica', '2023-11-24 10:30:00'),
(2, 'Lucas', 'Fernández', 'lucas.fernandez@example.com', 'Desarrollo Sostenible', '2023-11-25 11:45:00'),
(3, 'Valentina', 'Martínez', 'valentina.martinez@example.com', 'Inteligencia Artificial', '2023-11-26 14:00:00'),
(4, 'Matías', 'López', 'matias.lopez@example.com', 'Energías Renovables', '2023-11-27 16:15:00'),
(5, 'Camila', 'Rodríguez', 'camila.rodriguez@example.com', 'Medicina del Futuro', '2023-11-28 09:00:00'),
(6, 'Agustín', 'Sánchez', 'agustin.sanchez@example.com', 'Ciberseguridad', '2023-11-29 12:30:00'),
(7, 'Sofía', 'Díaz', 'sofia.diaz@example.com', 'Blockchain', '2023-11-30 15:45:00'),
(8, 'Nicolás', 'Romero', 'nicolas.romero@example.com', 'Realidad Virtual', '2023-12-01 08:30:00'),
(9, 'Mía', 'Hernández', 'mia.hernandez@example.com', 'Biotecnología', '2023-12-02 11:00:00'),
(10, 'Tomás', 'Pérez', 'tomas.perez@example.com', 'Automatización Industrial', '2023-12-03 13:15:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
