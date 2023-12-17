-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2023 a las 15:49:40
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
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `candidato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `candidato`) VALUES
(1, 'SUPERMAN'),
(2, 'SPIDER-MAN'),
(3, 'BATMAN'),
(4, 'AQUAMAN'),
(5, 'LINTERNA VERDE'),
(6, 'ANT-MAN'),
(7, 'IRON MAN'),
(8, 'HULK'),
(9, 'CAPITAN AMERICA'),
(10, 'DOCTOR STRANGE'),
(11, 'THOR'),
(12, 'FLASH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_comuna` int(11) NOT NULL,
  `comuna` varchar(200) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_comuna`, `comuna`, `id_region`) VALUES
(1101, 'Iquique', 1),
(1107, 'Alto Hospicio', 1),
(1401, 'Pozo Almonte', 1),
(1402, 'Camiña', 1),
(1403, 'Colchane', 1),
(1404, 'Huara', 1),
(1405, 'Pica', 1),
(2101, 'Antofagasta', 2),
(2102, 'Mejillones', 2),
(2103, 'Sierra Gorda', 2),
(2104, 'Taltal', 2),
(2201, 'Calama', 2),
(2202, 'Ollagüe', 2),
(2203, 'San Pedro de Atacama', 2),
(2301, 'Tocopilla', 2),
(2302, 'María Elena', 2),
(3101, 'Copiapó', 3),
(3102, 'Caldera', 3),
(3103, 'Tierra Amarilla', 3),
(3201, 'Chañaral', 3),
(3202, 'Diego de Almagro', 3),
(3301, 'Vallenar', 3),
(3302, 'Alto del Carmen', 3),
(3303, 'Freirina', 3),
(3304, 'Huasco', 3),
(4101, 'La Serena', 4),
(4102, 'Coquimbo', 4),
(4103, 'Andacollo', 4),
(4104, 'La Higuera', 4),
(4105, 'Paiguano', 4),
(4106, 'Vicuña', 4),
(4201, 'Illapel', 4),
(4202, 'Canela', 4),
(4203, 'Los Vilos', 4),
(4204, 'Salamanca', 4),
(4301, 'Ovalle', 4),
(4302, 'Combarbalá', 4),
(4303, 'Monte Patria', 4),
(4304, 'Punitaqui', 4),
(4305, 'Río Hurtado', 4),
(5101, 'Valparaíso', 5),
(5102, 'Casablanca', 5),
(5103, 'Concón', 5),
(5104, 'Juan Fernández', 5),
(5105, 'Puchuncaví', 5),
(5107, 'Quintero', 5),
(5109, 'Viña del Mar', 5),
(5201, 'Isla de Pascua', 5),
(5301, 'Los Andes', 5),
(5302, 'Calle Larga', 5),
(5303, 'Rinconada', 5),
(5304, 'San Esteban', 5),
(5401, 'La Ligua', 5),
(5402, 'Cabildo', 5),
(5403, 'Papudo', 5),
(5404, 'Petorca', 5),
(5405, 'Zapallar', 5),
(5501, 'Quillota', 5),
(5502, 'Calera', 5),
(5503, 'Hijuelas', 5),
(5504, 'La Cruz', 5),
(5506, 'Nogales', 5),
(5601, 'San Antonio', 5),
(5602, 'Algarrobo', 5),
(5603, 'Cartagena', 5),
(5604, 'El Quisco', 5),
(5605, 'El Tabo', 5),
(5606, 'Santo Domingo', 5),
(5701, 'San Felipe', 5),
(5702, 'Catemu', 5),
(5703, 'Llaillay', 5),
(5704, 'Panquehue', 5),
(5705, 'Putaendo', 5),
(5706, 'Santa María', 5),
(5801, 'Quilpué', 5),
(5802, 'Limache', 5),
(5803, 'Olmué', 5),
(5804, 'Villa Alemana', 5),
(6101, 'Rancagua', 6),
(6102, 'Codegua', 6),
(6103, 'Coinco', 6),
(6104, 'Coltauco', 6),
(6105, 'Doñihue', 6),
(6106, 'Graneros', 6),
(6107, 'Las Cabras', 6),
(6108, 'Machalí', 6),
(6109, 'Malloa', 6),
(6110, 'Mostazal', 6),
(6111, 'Olivar', 6),
(6112, 'Peumo', 6),
(6113, 'Pichidegua', 6),
(6114, 'Quinta de Tilcoco', 6),
(6115, 'Rengo', 6),
(6116, 'Requínoa', 6),
(6117, 'San Vicente', 6),
(6201, 'Pichilemu', 6),
(6202, 'La Estrella', 6),
(6203, 'Litueche', 6),
(6204, 'Marchihue', 6),
(6205, 'Navidad', 6),
(6206, 'Paredones', 6),
(6301, 'San Fernando', 6),
(6302, 'Chépica', 6),
(6303, 'Chimbarongo', 6),
(6304, 'Lolol', 6),
(6305, 'Nancagua', 6),
(6306, 'Palmilla', 6),
(6307, 'Peralillo', 6),
(6308, 'Placilla', 6),
(6309, 'Pumanque', 6),
(6310, 'Santa Cruz', 6),
(7101, 'Talca', 7),
(7102, 'Constitución', 7),
(7103, 'Curepto', 7),
(7104, 'Empedrado', 7),
(7105, 'Maule', 7),
(7106, 'Pelarco', 7),
(7107, 'Pencahue', 7),
(7108, 'Río Claro', 7),
(7109, 'San Clemente', 7),
(7110, 'San Rafael', 7),
(7201, 'Cauquenes', 7),
(7202, 'Chanco', 7),
(7203, 'Pelluhue', 7),
(7301, 'Curicó', 7),
(7302, 'Hualañé', 7),
(7303, 'Licantén', 7),
(7304, 'Molina', 7),
(7305, 'Rauco', 7),
(7306, 'Romeral', 7),
(7307, 'Sagrada Familia', 7),
(7308, 'Teno', 7),
(7309, 'Vichuquén', 7),
(7401, 'Linares', 7),
(7402, 'Colbún', 7),
(7403, 'Longaví', 7),
(7404, 'Parral', 7),
(7405, 'Retiro', 7),
(7406, 'San Javier', 7),
(7407, 'Villa Alegre', 7),
(7408, 'Yerbas Buenas', 7),
(8101, 'Concepción', 8),
(8102, 'Coronel', 8),
(8103, 'Chiguayante', 8),
(8104, 'Florida', 8),
(8105, 'Hualqui', 8),
(8106, 'Lota', 8),
(8107, 'Penco', 8),
(8108, 'San Pedro de la Paz', 8),
(8109, 'Santa Juana', 8),
(8110, 'Talcahuano', 8),
(8111, 'Tomé', 8),
(8112, 'Hualpén', 8),
(8201, 'Lebu', 8),
(8202, 'Arauco', 8),
(8203, 'Cañete', 8),
(8204, 'Contulmo', 8),
(8205, 'Curanilahue', 8),
(8206, 'Los Alamos', 8),
(8207, 'Tirúa', 8),
(8301, 'Los Angeles', 8),
(8302, 'Antuco', 8),
(8303, 'Cabrero', 8),
(8304, 'Laja', 8),
(8305, 'Mulchén', 8),
(8306, 'Nacimiento', 8),
(8307, 'Negrete', 8),
(8308, 'Quilaco', 8),
(8309, 'Quilleco', 8),
(8310, 'San Rosendo', 8),
(8311, 'Santa Bárbara', 8),
(8312, 'Tucapel', 8),
(8313, 'Yumbel', 8),
(8314, 'Alto Biobío', 8),
(9101, 'Temuco', 9),
(9102, 'Carahue', 9),
(9103, 'Cunco', 9),
(9104, 'Curarrehue', 9),
(9105, 'Freire', 9),
(9106, 'Galvarino', 9),
(9107, 'Gorbea', 9),
(9108, 'Lautaro', 9),
(9109, 'Loncoche', 9),
(9110, 'Melipeuco', 9),
(9111, 'Nueva Imperial', 9),
(9112, 'Padre Las Casas', 9),
(9113, 'Perquenco', 9),
(9114, 'Pitrufquén', 9),
(9115, 'Pucón', 9),
(9116, 'Saavedra', 9),
(9117, 'Teodoro Schmidt', 9),
(9118, 'Toltén', 9),
(9119, 'Vilcún', 9),
(9120, 'Villarrica', 9),
(9121, 'Cholchol', 9),
(9201, 'Angol', 9),
(9202, 'Collipulli', 9),
(9203, 'Curacautín', 9),
(9204, 'Ercilla', 9),
(9205, 'Lonquimay', 9),
(9206, 'Los Sauces', 9),
(9207, 'Lumaco', 9),
(9208, 'Purén', 9),
(9209, 'Renaico', 9),
(9210, 'Traiguén', 9),
(9211, 'Victoria', 9),
(10101, 'Puerto Montt', 10),
(10102, 'Calbuco', 10),
(10103, 'Cochamó', 10),
(10104, 'Fresia', 10),
(10105, 'Frutillar', 10),
(10106, 'Los Muermos', 10),
(10107, 'Llanquihue', 10),
(10108, 'Maullín', 10),
(10109, 'Puerto Varas', 10),
(10201, 'Castro', 10),
(10202, 'Ancud', 10),
(10203, 'Chonchi', 10),
(10204, 'Curaco de Vélez', 10),
(10205, 'Dalcahue', 10),
(10206, 'Puqueldón', 10),
(10207, 'Queilén', 10),
(10208, 'Quellón', 10),
(10209, 'Quemchi', 10),
(10210, 'Quinchao', 10),
(10301, 'Osorno', 10),
(10302, 'Puerto Octay', 10),
(10303, 'Purranque', 10),
(10304, 'Puyehue', 10),
(10305, 'Río Negro', 10),
(10306, 'San Juan de la Costa', 10),
(10307, 'San Pablo', 10),
(10401, 'Chaitén', 10),
(10402, 'Futaleufú', 10),
(10403, 'Hualaihué', 10),
(10404, 'Palena', 10),
(11101, 'Coyhaique', 11),
(11102, 'Lago Verde', 11),
(11201, 'Aysén', 11),
(11202, 'Cisnes', 11),
(11203, 'Guaitecas', 11),
(11301, 'Cochrane', 11),
(11302, 'O\'Higgins', 11),
(11303, 'Tortel', 11),
(11401, 'Chile Chico', 11),
(11402, 'Río Ibáñez', 11),
(12101, 'Punta Arenas', 12),
(12102, 'Laguna Blanca', 12),
(12103, 'Río Verde', 12),
(12104, 'San Gregorio', 12),
(12201, 'Cabo de Hornos', 12),
(12202, 'Antártica', 12),
(12301, 'Porvenir', 12),
(12302, 'Primavera', 12),
(12303, 'Timaukel', 12),
(12401, 'Natales', 12),
(12402, 'Torres del Paine', 12),
(13101, 'Santiago', 13),
(13102, 'Cerrillos', 13),
(13103, 'Cerro Navia', 13),
(13104, 'Conchalí', 13),
(13105, 'El Bosque', 13),
(13106, 'Estación Central', 13),
(13107, 'Huechuraba', 13),
(13108, 'Independencia', 13),
(13109, 'La Cisterna', 13),
(13110, 'La Florida', 13),
(13111, 'La Granja', 13),
(13112, 'La Pintana', 13),
(13113, 'La Reina', 13),
(13114, 'Las Condes', 13),
(13115, 'Lo Barnechea', 13),
(13116, 'Lo Espejo', 13),
(13117, 'Lo Prado', 13),
(13118, 'Macul', 13),
(13119, 'Maipú', 13),
(13120, 'Ñuñoa', 13),
(13121, 'Pedro Aguirre Cerda', 13),
(13122, 'Peñalolén', 13),
(13123, 'Providencia', 13),
(13124, 'Pudahuel', 13),
(13125, 'Quilicura', 13),
(13126, 'Quinta Normal', 13),
(13127, 'Recoleta', 13),
(13128, 'Renca', 13),
(13129, 'San Joaquín', 13),
(13130, 'San Miguel', 13),
(13131, 'San Ramón', 13),
(13132, 'Vitacura', 13),
(13201, 'Puente Alto', 13),
(13202, 'Pirque', 13),
(13203, 'San José de Maipo', 13),
(13301, 'Colina', 13),
(13302, 'Lampa', 13),
(13303, 'Tiltil', 13),
(13401, 'San Bernardo', 13),
(13402, 'Buin', 13),
(13403, 'Calera de Tango', 13),
(13404, 'Paine', 13),
(13501, 'Melipilla', 13),
(13502, 'Alhué', 13),
(13503, 'Curacaví', 13),
(13504, 'María Pinto', 13),
(13505, 'San Pedro', 13),
(13601, 'Talagante', 13),
(13602, 'El Monte', 13),
(13603, 'Isla de Maipo', 13),
(13604, 'Padre Hurtado', 13),
(13605, 'Peñaflor', 13),
(14101, 'Valdivia', 14),
(14102, 'Corral', 14),
(14103, 'Lanco', 14),
(14104, 'Los Lagos', 14),
(14105, 'Máfil', 14),
(14106, 'Mariquina', 14),
(14107, 'Paillaco', 14),
(14108, 'Panguipulli', 14),
(14201, 'La Unión', 14),
(14202, 'Futrono', 14),
(14203, 'Lago Ranco', 14),
(14204, 'Río Bueno', 14),
(15101, 'Arica', 15),
(15102, 'Camarones', 15),
(15201, 'Putre', 15),
(15202, 'General Lagos', 15),
(16101, 'Chillán', 16),
(16102, 'Bulnes', 16),
(16103, 'Chillán Viejo', 16),
(16104, 'El Carmen', 16),
(16105, 'Pemuco', 16),
(16106, 'Pinto', 16),
(16107, 'Quillón', 16),
(16108, 'San Ignacio', 16),
(16109, 'Yungay', 16),
(16201, 'Quirihue', 16),
(16202, 'Cobquecura', 16),
(16203, 'Coelemu', 16),
(16204, 'Ninhue', 16),
(16205, 'Portezuelo', 16),
(16206, 'Ranquil', 16),
(16207, 'Treguaco', 16),
(16301, 'San Carlos', 16),
(16302, 'Coihueco', 16),
(16303, 'Ñiquén', 16),
(16304, 'San Fabián', 16),
(16305, 'San Nicolás', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_region` int(11) NOT NULL,
  `region` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `region`) VALUES
(1, 'Tarapacá'),
(2, 'Antofagasta'),
(3, 'Atacama'),
(4, 'Coquimbo'),
(5, 'Valparaíso'),
(6, 'Libertador General Bernardo O\'Higgins'),
(7, 'Maule'),
(8, 'Biobío'),
(9, 'La Araucanía'),
(10, 'Los Lagos'),
(11, 'Aysén del General Carlos Ibáñez del Campo'),
(12, 'Magallanes y de la Antártica Chilena'),
(13, 'Metropolitana de Santiago'),
(14, 'Los Ríos'),
(15, 'Arica y Parinacota'),
(16, 'Ñuble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id_votacion` int(11) NOT NULL,
  `nombre_apellido` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `region` int(11) NOT NULL,
  `comuna` int(11) NOT NULL,
  `candidato` int(11) NOT NULL,
  `web` int(11) DEFAULT NULL,
  `tv` int(11) DEFAULT NULL,
  `rrss` int(11) DEFAULT NULL,
  `amigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id_votacion`, `nombre_apellido`, `alias`, `rut`, `correo`, `region`, `comuna`, `candidato`, `web`, `tv`, `rrss`, `amigo`) VALUES
(10, 'asadda', 'adasd25', '10701150-1', 'setraval@gmail.com', 8, 8301, 4, 1, 1, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `comunas_region` (`id_region`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id_votacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_comuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16306;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id_votacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_region` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
