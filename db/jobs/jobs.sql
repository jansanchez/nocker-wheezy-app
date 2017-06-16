-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: jobs_mysql_1
-- Tiempo de generación: 16-06-2017 a las 00:15:27
-- Versión del servidor: 5.7.17
-- Versión de PHP: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jobs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unnamed',
  `location` varchar(255) DEFAULT 'Anywhere',
  `image` varchar(255) NOT NULL DEFAULT 'none',
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Anywhere',
  `slug` varchar(255) DEFAULT 'anywhere'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `name`, `slug`) VALUES
(1, 'Anywhere', 'anywhere'),
(2, 'Ciudad de México, México', 'ciudad-de-mexico--mexico'),
(3, 'Jalisco, México', 'jalisco--mexico'),
(4, 'Nuevo León, México', 'nuevo-leon--mexico'),
(5, 'Puebla, México', 'puebla--mexico'),
(6, 'Veracruz, México', 'veracruz--mexico'),
(7, 'Yucatán, México', 'yucatan--mexico'),
(8, 'Guanajuato, México', 'guanajuato--mexico'),
(9, 'Querétaro, México', 'queretaro--mexico'),
(10, 'Sinaloa, México', 'sinaloa--mexico'),
(11, 'Quintana Roo, México', 'quintana--roo--mexico'),
(12, 'Michoacan, México', 'michoacan--mexico'),
(13, 'Baja California, México', 'baja--california--mexico'),
(14, 'Oaxaca, México', 'oaxaca--mexico'),
(15, 'Morelos, México', 'morelos--mexico'),
(16, 'Sonora, México', 'sonora--mexico'),
(17, 'Aguascalientes, México', 'aguascalientes--mexico'),
(18, 'Chihuahua, México', 'chihuahua--mexico'),
(19, 'Tabasco, México', 'tabasco--mexico'),
(20, 'Coahuila, México', 'coahuila--mexico'),
(21, 'Hidalgo, México', 'hidalgo--mexico'),
(22, 'San Luis Potosí, México', 'san-luis-potosi--mexico'),
(23, 'Chiapas, México', 'chiapas--mexico'),
(24, 'Tamaulipas, México', 'tamaulipas--mexico'),
(25, 'Guerrero, México', 'guerrero--mexico'),
(26, 'Madrid, España', 'madrid--espana'),
(27, 'Barcelona, España', 'barcelona--espana'),
(28, 'Valencia, España', 'valencia--espana'),
(29, 'Sevilla, España', 'sevilla--espana'),
(30, 'Zaragoza, España', 'zaragoza--espana'),
(31, 'Alcobendas, España', 'alcobendas--espana'),
(32, 'Valladolid, España', 'valladolid--espana'),
(33, 'Málaga, España', 'malaga--espana'),
(34, 'Palma, España', 'palma--espana'),
(35, 'Alicante, España', 'alicante--espana'),
(36, 'Bogotá, Colombia', 'bogota--colombia'),
(37, 'Antioquia, Colombia', 'antioquia--colombia'),
(38, 'Valle del Cauca, Colombia', 'valle-del-cauca--colombia'),
(39, 'Atlántico, Colombia', 'atlantico--colombia'),
(40, 'Bolívar, Colombia', 'bolivar--colombia'),
(41, 'Santander, Colombia', 'santander--colombia'),
(42, 'Risaralda, Colombia', 'risaralda--colombia'),
(43, 'Caldas, Colombia', 'caldas--colombia'),
(44, 'Tolima, Colombia', 'tolima--colombia'),
(45, 'Cundinamarca, Colombia', 'cundinamarca--colombia'),
(46, 'Cauca, Colombia', 'cauca--colombia'),
(47, 'Quindio, Colombia', 'quindio--colombia'),
(48, 'Cesar, Colombia', 'cesar--colombia'),
(49, 'Narino, Colombia', 'narino--colombia'),
(50, 'Boyaca, Colombia', 'boyaca--colombia'),
(51, 'Lima, Perú', 'lima--peru'),
(52, 'Cusco, Perú', 'atlantico--peru'),
(53, 'La Libertad, Perú', 'la-libertad--peru'),
(54, 'Arequipa, Perú', 'arequipa--peru'),
(55, 'Junín, Perú', 'puno--peru'),
(56, 'Piura, Perú', 'piura--peru'),
(57, 'Lambayeque, Perú', 'lambayeque--peru'),
(58, 'Tacna, Perú', 'tacna--peru'),
(59, 'Puno, Perú', 'puno--peru'),
(60, 'Ancash, Perú', 'ancash--peru'),
(61, 'San Martín, Perú', 'san-martin--peru'),
(62, 'Callao, Perú', 'callao--peru'),
(63, 'Ica, Perú', 'ica--peru'),
(64, 'Huánuco, Perú', 'huanuco--peru'),
(65, 'Cajamarca, Perú', 'cajamarca--peru'),
(66, 'Ucayali, Perú', 'ucayali--peru'),
(67, 'Loreto, Perú', 'loreto--peru'),
(68, 'Ayacucho, Perú', 'ayacucho--peru'),
(69, 'Huancavelica, Perú', 'huancavelica--peru'),
(70, 'Moquegua, Perú', 'moquegua--peru'),
(71, 'Madre de Dios, Perú', 'madre-de-dios--peru'),
(72, 'Apurimac, Perú', 'apurimac--peru'),
(73, 'Amazonas, Perú', 'amazonas--peru'),
(74, 'Tumbes, Perú', 'tumbes--peru'),
(75, 'Pasco, Perú', 'pasco--peru'),
(76, 'Ancón, Lima, Perú', 'ancon--lima--peru'),
(77, 'Santa Rosa, Lima, Perú', 'santa-rosa--lima--peru'),
(78, 'Ventanilla, Lima, Perú', 'ventanilla--lima--peru'),
(79, 'Callao, Lima, Perú', 'callao--lima--peru'),
(80, 'La Punta, Lima, Perú', 'la-punta--lima--peru'),
(81, 'Bellavista, Lima, Perú', 'bellavista--lima--peru'),
(82, 'La Perla, Lima, Perú', 'la-perla--lima--peru'),
(83, 'Carabayllo, Lima, Perú', 'carabayllo--lima--peru'),
(84, 'Puente Piedra, Lima, Perú', 'puente-piedra--lima--peru'),
(85, 'San Martín de Porres, Lima, Perú', 'san-martín-de-porres--lima--peru'),
(86, 'Los Olivos, Lima, Perú', 'los-olivos--lima--peru'),
(87, 'Comas, Lima, Perú', 'comas--lima--peru'),
(88, 'Independencia, Lima, Perú', 'independencia--lima--peru'),
(89, 'San Juan de Lurigancho, Lima, Perú', 'san-juan-de-lurigancho--lima--peru'),
(90, 'Lima, Lima, Perú', 'lima--lima--peru'),
(91, 'Breña, Lima, Perú', 'brena--lima--peru'),
(92, 'Rimac, Lima, Perú', 'rimac--lima--peru'),
(93, 'El Agustino, Lima, Perú', 'el-agustino--lima--peru'),
(94, 'San Miguel, Lima, Perú', 'san-miguel--lima--peru'),
(95, 'Pueblo Libre, Lima, Perú', 'pueblo-libre--lima--peru'),
(96, 'Jesús María, Lima, Perú', 'jesus-maria--lima--peru'),
(97, 'Magdalena del Mar, Lima, Perú', 'magdalena-del-mar--lima--peru'),
(98, 'Lince, Lima, Perú', 'lince--lima--peru'),
(99, 'La Victoria, Lima, Perú', 'la-victoria--lima--peru'),
(100, 'San Luis, Lima, Perú', 'san-luis--lima--peru'),
(101, 'San Isidro, Lima, Perú', 'san--isidro--lima--peru'),
(102, 'Miraflores, Lima, Perú', 'miraflores--lima--peru'),
(103, 'Surquillo, Lima, Perú', 'surquillo--lima--peru'),
(104, 'Barranco, Lima, Perú', 'barranco--lima--peru'),
(105, 'San Borja, Lima, Perú', 'san-borja--lima--peru'),
(106, 'Santiago de Surco, Lima, Perú', 'santiago-de-surco--lima--peru'),
(107, 'Chorrillos, Lima, Perú', 'chorrillos--lima--peru'),
(108, 'Santa Anita, Lima, Perú', 'santa-anita--lima--peru'),
(109, 'Ate, Lima, Perú', 'ate--lima--peru'),
(110, 'La Molina, Lima, Perú', 'la-molina--lima--peru'),
(111, 'Lurigancho-Chosica, Lima, Perú', 'lurigancho-chosica--lima--peru'),
(112, 'Chaclacayo, Lima, Perú', 'chaclacayo--lima--peru'),
(113, 'Cieneguilla, Lima, Perú', 'cieneguilla--lima--peru'),
(114, 'Pachacámac, Lima, Perú', 'pachacamac--lima--peru'),
(115, 'San Juan de Miraflores, Lima, Perú', 'san-juan-de-miraflores--lima--peru'),
(116, 'Villa María del Triunfo, Lima, Perú', 'villa-maria-del-triunfo--lima--peru'),
(117, 'Villa El Salvador, Lima, Perú', 'villa-el-salvador--lima--peru'),
(118, 'Lurín, Lima, Perú', 'lurin--lima--peru'),
(119, 'Punta Hermosa, Lima, Perú', 'punta-hermosa--lima--peru'),
(120, 'Punta Negra, Lima, Perú', 'punta-negra--lima--peru'),
(121, 'San Bartolo, Lima, Perú', 'san-bartolo--lima--peru'),
(122, 'Pucusana, Lima, Perú', 'pucusana--lima--peru'),
(123, 'Santa María del Mar, Lima, Perú', 'santa-maria-del-mar--lima--peru');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type`
--

INSERT INTO `type` (`id`, `name`, `slug`) VALUES
(1, 'Full Time', 'full-time'),
(2, 'Part Time', 'part-time'),
(3, 'Contract', 'contract'),
(4, 'Freelance', 'freelance'),
(5, 'Internship', 'internship'),
(6, 'Other', 'other');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indices de la tabla `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT de la tabla `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
