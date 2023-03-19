-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2023 a las 16:43:08
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `microdb_mercadolibre`
--
CREATE DATABASE IF NOT EXISTS `microdb_mercadolibre` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `microdb_mercadolibre`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(12) NOT NULL,
  `site_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `seller_id` int(20) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `official_store_id` varchar(100) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `base_price` int(10) NOT NULL,
  `original_price` int(10) NOT NULL,
  `initial_quantity` int(10) NOT NULL,
  `available_quantity` int(10) NOT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_details`
--

CREATE TABLE `products_details` (
  `id` int(12) NOT NULL,
  `product_id` int(12) NOT NULL,
  `status` varchar(20) NOT NULL,
  `warranty` varchar(20) NOT NULL,
  `sold_quantity` int(10) DEFAULT NULL,
  `buyind_mode` varchar(50) DEFAULT NULL,
  `listing_type_id` varchar(50) DEFAULT NULL,
  `product_condition` varchar(50) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `thumbnail_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `secure_thumbnail` varchar(255) DEFAULT NULL,
  `pictures_id` varchar(255) DEFAULT NULL,
  `pictures_url` varchar(255) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellers`
--

CREATE TABLE `sellers` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `status_billing_allow` tinyint(1) NOT NULL,
  `status_buy_allow` tinyint(1) NOT NULL,
  `status_sell_action_allow` tinyint(1) NOT NULL,
  `mercadopago_account_type` varchar(50) DEFAULT NULL,
  `mercadopago_tc_accepted` varchar(50) DEFAULT NULL,
  `site_status` varchar(50) DEFAULT NULL,
  `shopping_cart_buy` varchar(50) DEFAULT NULL,
  `shopping_cart_sell` varchar(50) DEFAULT NULL,
  `inmediate_payment` varchar(50) DEFAULT NULL,
  `shipping_market` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `status_billing_allow`, `status_buy_allow`, `status_sell_action_allow`, `mercadopago_account_type`, `mercadopago_tc_accepted`, `site_status`, `shopping_cart_buy`, `shopping_cart_sell`, `inmediate_payment`, `shipping_market`, `creation_date`, `update_date`) VALUES
(1, 1, 1, 0, 1, 'personal', '1', 'active', 'allowed', 'allowed', '0', 'accepted', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(2, 2, 0, 1, 0, 'personal', '1', 'inactive', 'not_allowed', 'now_allowed', '1', 'not_accepted', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(3, 3, 1, 1, 1, 'business', '1', 'active', 'allowed', 'allowed', '0', 'accepted', '2023-03-19 12:41:06', '2023-03-19 12:41:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `identification_type` varchar(15) NOT NULL,
  `identification_number` varchar(20) NOT NULL,
  `country_id` varchar(10) NOT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nickname`, `first_name`, `last_name`, `email`, `identification_type`, `identification_number`, `country_id`, `creation_date`, `update_date`) VALUES
(1, 'RAFA-CON', 'Rafael', 'Castro', 'rafael_castro88@gmail.com', 'DNI', '445938822', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:15'),
(2, 'JAVIER GONZALEZ', 'Javier', 'Gonzalez', 'javiBoquita@gmail.com', 'DNI', '2672268765', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(3, 'HECTOR SS G', 'Hector', 'Gomez', 'hectorGomez78@gmail.com', 'DNI', '2172265827', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(4, 'GABRIELA JIMENEZ', 'Gabriela', 'Jimenez', 'gabriela.consultas@hotmail.com', 'DNI', '410871223', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(5, 'GUSTA G K', 'Gustavo', 'Gomez', 'gustavo_andaluz@gmail.com', 'PASAPORTE', '748000221', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(6, 'JOSE_PEREZ', 'Jose', 'Perez', 'jose_consultasInternas@hotmail.com', 'DNI', '22287680', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(7, 'JULI54', 'Julieta', 'Bustos', 'julietaBustos@outlook.com', 'DNI', '3456271812', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(8, 'RAMÓN2022', 'Ramon', 'Castro', 'ramoncnc2022@gmail.com', 'DNI', '2271617711', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(9, 'LUIS_MATERA', 'Luis', 'Matera', 'luis_jose_matera_91@hotmail.com', 'DNI', '252441112', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(10, 'CARLOS MARTINEZ', 'Carlos', 'Martinez', 'carlos_etec_martinez@gmail.com', 'DNI', '2718181112', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(11, 'SOFIA PAZ', 'Sofia', 'Paz', 'sofi.paz.107@hotmail.com', 'DNI', '2617223234', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(12, 'ELENA FUKZEK', 'Elena', 'Fukzek', 'elenaFukzekLikert@gmail.com', 'PASAPORTE', '34522122', 'AR', '2023-03-19 12:41:06', '2023-03-19 12:41:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_addresses`
--

CREATE TABLE `users_addresses` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `address_line` varchar(100) NOT NULL,
  `floor` varchar(50) DEFAULT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `street_number` varchar(20) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_addresses`
--

INSERT INTO `users_addresses` (`id`, `user_id`, `address_line`, `floor`, `apartment`, `street_number`, `street_name`, `zip_code`, `city_id`, `city_name`, `creation_date`, `update_date`) VALUES
(1, 1, 'Guatemala 5100', '1', 'C22', '5100', 'Guatemala', '1200', 'TUxBQlBBTDI1MTVa', 'Palermo', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(2, 2, 'Av. San martin 12090', NULL, NULL, '12090', 'Av. San Martin', '2231', 'UWHAH9asnqKKSLAA', 'Los palos', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(3, 3, '691 Gelly y Obes', '5', '5B', '691', 'Gelly y Obes', '356', 'OOWA78SKLANNSAQQ', 'Bella Vista', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(4, 4, 'Concordia 524', NULL, NULL, '524', 'Concordia', '221', 'KKSIAHHHDYDYY88Q', 'Jose c paz', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(5, 5, 'Av Juan Gallardo 221', '2', '2f', '221', 'Av. Gallardo', '921', 'KJAKSDHJ2212JDAS', 'Parque Centenario', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(6, 6, 'Olleros 89', '12', '12H', '89', 'Olleros', '222', 'YUJABS8987ASA7S7', 'Palermo', '2023-03-19 12:41:06', '2023-03-19 12:41:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_addresses_details`
--

CREATE TABLE `users_addresses_details` (
  `id` int(12) NOT NULL,
  `user_address_id` int(12) NOT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `state_name` varchar(50) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `neighborhood_id` varchar(255) DEFAULT NULL,
  `neighborhood_name` varchar(50) DEFAULT NULL,
  `municipality_id` varchar(255) DEFAULT NULL,
  `municipality_name` varchar(50) DEFAULT NULL,
  `geolocation_type` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_addresses_details`
--

INSERT INTO `users_addresses_details` (`id`, `user_address_id`, `state_id`, `state_name`, `country_id`, `country_name`, `neighborhood_id`, `neighborhood_name`, `municipality_id`, `municipality_name`, `geolocation_type`, `latitude`, `longitude`, `creation_date`, `update_date`) VALUES
(1, 1, 'AR-C', 'Capital Federal', 'AR', 'Argentina', 'DFL', 'Floresta', NULL, NULL, 'RANGE_INTERPOLATED', '-34.6423233', '-58.4788987', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(2, 2, 'AR-W', 'Corrientes', 'AR', 'Argentina', 'KAL', 'Los Palos', NULL, NULL, 'RANGE_INTERPOLATED', '-22.7271822', '-82.9992112', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(3, 3, 'AR-B', 'Buenos Aires', 'AR', 'Argentina', 'AAP', 'Bella Vista', NULL, NULL, 'RANGE_INTERPOLATED', '-34.5551979', '-58.7088356', '2023-03-19 12:41:06', '2023-03-19 12:41:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_details`
--

CREATE TABLE `users_details` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `alternative_phone` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) NOT NULL,
  `points` int(10) NOT NULL,
  `site_id` varchar(10) NOT NULL,
  `permalink` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `contact`, `phone`, `alternative_phone`, `user_type`, `points`, `site_id`, `permalink`, `creation_date`, `update_date`) VALUES
(1, 1, 'Rafael', '11746349938', NULL, 'normal', 300, 'MSH', 'http://perfil.mercadolibre.com.ar/TEST2870021', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(2, 2, 'Javier', '1187265514', '1187265514', 'suscribed', 3500, 'KKSJA', 'http://perfil.mercadolibre.com.ar/TEST2870022', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(3, 3, 'Hector', '1187265523', '1187265563', 'normal', 7500, 'LLA', 'http://perfil.mercadolibre.com.ar/TEST2870023', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(4, 4, 'Gabriela', '11234514', NULL, 'suscribed', 7500, 'JJSGA', 'http://perfil.mercadolibre.com.ar/TEST2870024', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(5, 5, 'Gustavo', '113365514', NULL, 'normal', 1400, 'KSIU', 'http://perfil.mercadolibre.com.ar/TEST2870025', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(6, 6, 'Jose Perez', '117464533', NULL, 'suscribed', 2200, 'LSP', 'http://perfil.mercadolibre.com.ar/TEST2870026', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(7, 7, 'Julieta', '1162711182', NULL, 'normal', 1200, 'KAOA', 'http://perfil.mercadolibre.com.ar/TEST2870027', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(8, 8, 'Ramon', '11726383733', NULL, 'suscribed', 1300, 'LSP', 'http://perfil.mercadolibre.com.ar/TEST2870028', '2023-03-19 12:41:06', '2023-03-19 12:41:06'),
(9, 9, 'Luis', '1183739444', NULL, 'suscribed', 3400, 'LSP', 'http://perfil.mercadolibre.com.ar/TEST2870029', '2023-03-19 12:41:06', '2023-03-19 12:41:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_products_id` (`id`),
  ADD KEY `FK_products_seller_id` (`seller_id`);

--
-- Indices de la tabla `products_details`
--
ALTER TABLE `products_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_products_details_id` (`id`),
  ADD KEY `FK_products_details_product_id` (`product_id`);

--
-- Indices de la tabla `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_sellers_id` (`id`),
  ADD KEY `FK_sellers_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_users_id` (`id`),
  ADD UNIQUE KEY `UNIQUE_users_first_last_name` (`first_name`,`last_name`),
  ADD UNIQUE KEY `UNIQUE_users_identification` (`identification_type`,`identification_number`);

--
-- Indices de la tabla `users_addresses`
--
ALTER TABLE `users_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_users_addresses_id` (`id`),
  ADD KEY `FK_users_addresses_user_id` (`user_id`);

--
-- Indices de la tabla `users_addresses_details`
--
ALTER TABLE `users_addresses_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_users_address_details_id` (`id`),
  ADD KEY `FK_users_address_details_user_address_id` (`user_address_id`);

--
-- Indices de la tabla `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_users_details_id` (`id`),
  ADD UNIQUE KEY `UNIQUE_users_details_phone_user` (`phone`,`alternative_phone`),
  ADD KEY `FK_users_details_user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products_details`
--
ALTER TABLE `products_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users_addresses`
--
ALTER TABLE `users_addresses`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users_addresses_details`
--
ALTER TABLE `users_addresses_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products_details`
--
ALTER TABLE `products_details`
  ADD CONSTRAINT `FK_products_details_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `FK_sellers_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_addresses`
--
ALTER TABLE `users_addresses`
  ADD CONSTRAINT `FK_users_addresses_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_addresses_details`
--
ALTER TABLE `users_addresses_details`
  ADD CONSTRAINT `FK_users_address_details_user_address_id` FOREIGN KEY (`user_address_id`) REFERENCES `users_addresses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users_details`
--
ALTER TABLE `users_details`
  ADD CONSTRAINT `FK_users_details_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
