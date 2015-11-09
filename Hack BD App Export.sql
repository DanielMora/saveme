-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2015 a las 02:26:28
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Carlos', 'Lopez', 'Perez', 'CLJO126572', '2e1fc6c3ba9c8d6e086aee0b726f1d99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE IF NOT EXISTS `localizacion` (
`localizacion_id` int(11) NOT NULL,
  `latitud` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `donador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`localizacion_id`, `latitud`, `longitud`, `donador_id`) VALUES
(1, 18.803, -99.2215, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organo`
--

CREATE TABLE IF NOT EXISTS `organo` (
`organo_id` int(11) NOT NULL,
  `img` char(20) DEFAULT NULL,
  `organo` char(30) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `organo`
--

INSERT INTO `organo` (`organo_id`, `img`, `organo`, `descripcion`) VALUES
(1, NULL, 'Hígado', 'Órgano glandular del hombre y otros vertebrados, de forma aplanada, tamaño grande y color rojo oscuro, que interviene en la función digestiva, segrega la bilis, almacena sustancias nutrientes, elimina sustancias tóxicas y sintetiza enzimas, proteínas y glucosa; en el ser humano, se encuentra en la parte superior derecha del abdomen.'),
(2, NULL, 'Pulmón', 'Los pulmones humanos son estructuras anatómicas de origen embrionario endodérmico, pertenecientes al aparato respiratorio, se ubican en la caja torácica, delimitando a ambos lados el mediastino. Sus dimensiones varían, el pulmón derecho es más grande que su homólogo izquierdo (debido al espacio ocupado por el corazón).'),
(3, NULL, 'Corazón', 'El corazón (del latín cor) es el órgano muscular principal del aparato circulatorio en todos los animales que poseen un sistema circulatorio (incluyendo todos los vertebrados). En el ser humano es un músculo hueco y piramidal situado en la cavidad torácica. Funciona como una bomba aspirante e impelente, impulsando la sangre a todo el cuerpo.'),
(4, NULL, 'Tejidos', 'Los tejidos son materiales que están formados por células, iguales o no, posicionadas de una forma ordenada con un comportamiento fisiológico y origen embriológico común. Hay diferentes clases de tejidos como son el tejido muscular, el tejido nervioso, el tejido epitelial y el tejido conectivo, y dentro de cada clase encontramos diferentes subtipos.'),
(5, NULL, 'Huesos', 'El hueso es un tejido firme, duro y resistente que forma parte del endoesqueleto de los vertebrados. Está compuesto por tejidos duros y blandos. El principal tejido duro es el tejido óseo, un tipo especializado de tejido conectivo constituido por células (osteocitos) y componentes extracelulares calcificados. '),
(6, NULL, 'Córnea', 'La córnea es la parte frontal transparente del ojo humano que cubre el iris, la pupila y la cámara anterior. La córnea, junto con la cámara anterior y el cristalino, refracta la luz. La córnea es responsable de dos terceras partes de la potencia total del ojo.1 2 En humanos, el poder refractivo de la córnea es de aproximadamente 43 dioptrías. Aunque la córnea contribuye a la mayor parte del poder de enfoque del ojo, su enfoque es fijo. Por otro lado, la curvatura del cristalino se puede ajustar al enfoque dependiendo de la distancia al objeto.'),
(7, NULL, 'Riñón', 'Los riñones son los órganos más importantes del sistema urinario, se encargan de la filtración, absorción y reabsorción del agua, sales e iones que llegan para la producción de orina; son órganos pares con forma de judía o habichuela. En los seres humanos se ubican en los flancos, cada riñón tiene, aproximadamente, el tamaño de un puño cerrado y pesan entre 150g y 170g en un adulto promedio.');

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
MODIFY `donacion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `donador`
--
ALTER TABLE `donador`
MODIFY `donador_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `localizacion`
--
ALTER TABLE `localizacion`
MODIFY `localizacion_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `organo`
--
ALTER TABLE `organo`
MODIFY `organo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
