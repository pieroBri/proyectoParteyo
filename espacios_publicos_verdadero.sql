-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2021 a las 03:12:31
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `espacios publicos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_Admin` int(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_Admin`, `correo`, `contraseña`) VALUES
(1, 'admin@ad', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_Artistas` int(255) NOT NULL,
  `nombreReal` varchar(50) NOT NULL,
  `nombreArtista` varchar(50) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  `fotoDePerfilULR` text NOT NULL,
  `tipoDeDisplaytipoDeDisplay` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_Artistas`, `nombreReal`, `nombreArtista`, `correo`, `contrasena`, `nacionalidad`, `descripcion`, `fotoDePerfilULR`, `tipoDeDisplaytipoDeDisplay`) VALUES
(6, 'Usuario 2', 'Numero 2', 'usuario2@gmail.com', '12345', 'Austriaca', 'prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba ', 'beard-g206dab95f_1280.jpg', 2),
(7, 'Usuario 1', 'Numero 1', 'usuario1@gmail.com', '12345', 'Chilena', 'prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba ', 'paint-gdaff41df8_1280.jpg', 2),
(8, 'Usuario 3', 'Numero 3', 'usuario3@gmail.com', '12345', 'Chilena', 'prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba ', 'human-gcffcdf5b5_1280.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante`
--

CREATE TABLE `integrante` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `integrante`
--

INSERT INTO `integrante` (`id`, `nombre`, `cargo`, `descripcion`, `imagen`) VALUES
(2, 'Juan1', 'Artista grafico2222222222', 'dsffffffffffffffffffffffffffffffffffff3333333333', '20211001_092244572_001 (1).jpg'),
(3, 'Felipe', 'Programador', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'model-gdc5d0aad1_1280.jpg'),
(4, 'Alejandro', 'Diseñador grafico', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web', 'naomi-scott-4k-large-for-desktop-wallpaper-preview.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `titulo` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `id` int(255) NOT NULL,
  `imagenURL` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`titulo`, `texto`, `id`, `imagenURL`) VALUES
('Noticia Editar', 'URLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURL', 1, 'IMG_9829.jpg'),
('Noticia 2', 'dsfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 2, '20211001_092244572_001 (1).jpg'),
('Noticia 2.1', 'URLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURLURL', 3, '20211001_092244572_001 (1).jpg'),
('Noticia 2.7878787788', 'tuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu-label\">Foto De Noticia</label> <label for=\"fotoDePerfil\" class=\"form-label\">Foto De Noticia</label> <label for=\"fotoDePerfil\" class=\"form-label\">Foto De Noticia</label> <label for=\"fotoDePerfil\" class=\"form-label\">Foto De Noticia</label> <label for=\"fotoDePerfil\" class=\"form-label\">Foto De Noticia</label> <label for=\"fotoDePerfil\" class=\"form-label\">Foto De Noticia</label>', 4, 'GIRRAFE-IN-LANDSCAPE-1100x500-e1484733834484.png'),
('Noticia 2.4', 'formularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticiaformularioNoticia', 6, 'GIRRAFE-IN-LANDSCAPE-1100x500-e1484733834484.png'),
('Noticia 2.556545', 'resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();refghfghfghfghfgsetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();resetForm();', 7, 'IMG_9829.jpg'),
('Noticia 2.6', 'imagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrarimagenMostrar', 8, 'GIRRAFE-IN-LANDSCAPE-1100x500-e1484733834484.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `ulr` text NOT NULL,
  `id_DelArtista` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `nombre`, `descripcion`, `ulr`, `id_DelArtista`) VALUES
(3, 'nueva prueba', 'nueva prueba', 'IMG_9829.jpg', 6),
(0, 'pruba-1', 'prueba3.1', 'portada_1.jpg', 6),
(4, 'prueba 5', 'prueba 5', 'books-g88b34204c_1280.jpg', 6),
(1, 'Prueba2', 'Prueba2', 'obras_gratis_05.jpg', 6),
(0, 'prueba2.1', '1231231321', 'obras_gratis_05.jpg', 7),
(2, 'prueba23', 'descripción', 'composing-gfebddf9b2_1280.jpg', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_Admin`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_Artistas`),
  ADD UNIQUE KEY `nombreArtista` (`nombreArtista`,`correo`);

--
-- Indices de la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titulo` (`titulo`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`nombre`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_DelArtista` (`id_DelArtista`) USING BTREE;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`id_DelArtista`) REFERENCES `artistas` (`id_Artistas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
