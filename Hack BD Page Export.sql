-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2015 a las 01:58:56
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hack`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donacion`
--

CREATE TABLE IF NOT EXISTS `donacion` (
  `donacion_id` int(11) NOT NULL,
  `donador_id` int(11) DEFAULT NULL,
  `organo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `donacion`
--

INSERT INTO `donacion` (`donacion_id`, `donador_id`, `organo_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donador`
--

CREATE TABLE IF NOT EXISTS `donador` (
  `donador_id` int(11) NOT NULL,
  `nombre` char(20) DEFAULT NULL,
  `paterno` char(20) DEFAULT NULL,
  `materno` char(20) DEFAULT NULL,
  `curp` char(18) DEFAULT NULL,
  `pass` char(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `donador`
--

INSERT INTO `donador` (`donador_id`, `nombre`, `paterno`, `materno`, `curp`, `pass`) VALUES
(1, 'Juan', 'X', 'X', '123456789', '123456789'),
(2, 'Daniel', 'X', 'X', '123456789', '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE IF NOT EXISTS `localizacion` (
  `localizacion_id` int(11) NOT NULL,
  `latitud` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `donador_id` int(11) DEFAULT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`localizacion_id`, `latitud`, `longitud`, `donador_id`, `comentario`) VALUES
(1, 18.811, -99.2215, 1, 'HOla soy el comentario del numero 11111111111111'),
(2, 18.8, -99.2215, 1, 'hola soy el comentario del numero 2'),
(3, 18.79, -99.2, 2, 'por ahi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organo`
--

CREATE TABLE IF NOT EXISTS `organo` (
  `organo_id` int(11) NOT NULL,
  `img` char(20) DEFAULT NULL,
  `organo` char(30) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `organo`
--

INSERT INTO `organo` (`organo_id`, `img`, `organo`, `descripcion`) VALUES
(1, '1.png', 'HÍGADO', 'Órgano glandular del hombre y otros vertebrados, de forma aplanada, tamaño grande y color rojo oscuro, que interviene en la función digestiva, segrega la bilis, almacena sustancias nutrientes, elimina sustancias tóxicas y sintetiza enzimas, proteínas y glucosa; en el ser humano, se encuentra en la parte superior derecha del abdomen.'),
(2, '2.png', 'PULMÓN', 'Órgano de la respiración de los animales vertebrados en el que se realiza el intercambio gaseoso entre el aire y la sangre; en el hombre son dos, situados en la cavidad torácica uno al lado del otro, blandos y esponjosos, y durante la respiración se contraen y se dilatan.'),
(3, '3.png', 'CORAZÓN', 'Órgano central de la circulación de la sangre, que en los animales inferiores es la simple dilatación de un vaso y en los superiores es musculoso, contráctil, y tiene dos, tres o cuatro cavidades.'),
(4, '4.png', 'MÉDULA ÓSEA', 'La médula ósea es un tipo de tejido que se encuentra en el interior de los huesos largos, vértebras, costillas, esternón, huesos del cráneo, cintura escapular y pelvis. Todas las células sanguíneas derivan de una célula madre hematopoyética pluripotencial ubicada en la médula ósea.'),
(5, '5.png', 'HUESOS', 'El hueso es un tejido firme, duro y resistente que forma parte del endoesqueleto de los vertebrados. Está compuesto por tejidos duros y blandos. El principal tejido duro es el tejido óseo.'),
(6, '6.png', 'CÓRNEA', 'Membrana transparente en forma de disco abombado, que constituye la parte anterior del globo ocular y se halla delante del iris.'),
(7, '7.png', 'RIÑÓN', 'Órgano glandular situado en la región lumbar que tiene la función de segregar la orina.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `donacion`
--
ALTER TABLE `donacion`
  ADD PRIMARY KEY (`donacion_id`), ADD KEY `donador_id` (`donador_id`), ADD KEY `organo_id` (`organo_id`);

--
-- Indices de la tabla `donador`
--
ALTER TABLE `donador`
  ADD PRIMARY KEY (`donador_id`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`localizacion_id`), ADD KEY `donador_id` (`donador_id`);

--
-- Indices de la tabla `organo`
--
ALTER TABLE `organo`
  ADD PRIMARY KEY (`organo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `donacion`
--
ALTER TABLE `donacion`
  MODIFY `donacion_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `donador`
--
ALTER TABLE `donador`
  MODIFY `donador_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  MODIFY `localizacion_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `organo`
--
ALTER TABLE `organo`
  MODIFY `organo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `donacion`
--
ALTER TABLE `donacion`
ADD CONSTRAINT `donacion_ibfk_1` FOREIGN KEY (`donador_id`) REFERENCES `donador` (`donador_id`),
ADD CONSTRAINT `donacion_ibfk_2` FOREIGN KEY (`organo_id`) REFERENCES `organo` (`organo_id`);

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
ADD CONSTRAINT `localizacion_ibfk_1` FOREIGN KEY (`donador_id`) REFERENCES `donador` (`donador_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
