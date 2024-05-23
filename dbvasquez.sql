-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2024 a las 21:24:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbvasquez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) UNSIGNED NOT NULL,
  `evento_id` int(11) DEFAULT NULL,
  `pago` decimal(10,2) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `evento_id`, `pago`, `dni`, `created_at`, `updated_at`) VALUES
(1, 1, 50.00, '12345678', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(2, 1, 50.00, '23456789', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(3, 2, 0.00, '34567890', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(4, 2, 0.00, '45678901', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(5, 3, 150.00, '56789012', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(6, 3, 150.00, '67890123', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(7, 4, 75.00, '78901234', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(8, 4, 75.00, '89012345', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(9, 5, 100.00, '90123456', '2024-05-23 19:14:51', '2024-05-23 19:14:51'),
(10, 5, 100.00, '01234567', '2024-05-23 19:14:51', '2024-05-23 19:14:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `descripcion`, `fecha_inicio`, `fecha_fin`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'Concierto de Rock', 'Un concierto de rock con las mejores bandas locales.', '2024-06-01 20:00:00', '2024-06-01 23:00:00', 50.00, '2024-05-23 19:13:10', '2024-05-23 19:13:10'),
(2, 'Feria del Libro', 'Una feria con editoriales nacionales e internacionales, presentaciones de libros y firmas de autores.', '2024-07-15 10:00:00', '2024-07-20 18:00:00', 0.00, '2024-05-23 19:13:10', '2024-05-23 19:13:10'),
(3, 'Conferencia de Tecnología', 'Una conferencia sobre las últimas tendencias en tecnología e innovación.', '2024-08-10 09:00:00', '2024-08-12 17:00:00', 150.00, '2024-05-23 19:13:10', '2024-05-23 19:13:10'),
(4, 'Festival de Cine', 'Proyección de películas de diferentes géneros y países, con la presencia de directores y actores.', '2024-09-05 14:00:00', '2024-09-10 22:00:00', 75.00, '2024-05-23 19:13:10', '2024-05-23 19:13:10'),
(5, 'Taller de Fotografía', 'Un taller práctico para mejorar tus habilidades fotográficas.', '2024-10-12 09:00:00', '2024-10-12 17:00:00', 100.00, '2024-05-23 19:13:10', '2024-05-23 19:13:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
