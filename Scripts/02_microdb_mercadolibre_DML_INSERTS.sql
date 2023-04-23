
/* -------------------------------------
 * ------ MICRODB MERCADOLIBRE ---------
 * -------------------------------------
 * 
 * 
 * ========= DML INSERTS=============
 */



-- DATABASE
use microdb_mercadolibre;

-- TABLES
delete from users;
delete from users_details;
delete from users_addresses;
delete from users_addresses_details;
delete from sellers;
delete from products;
delete from products_details;

insert into users (id, nickname, first_name, last_name, email, identification_type
, identification_number, country_id, creation_date, update_date) values
(1, 'RAFA-CON', 'Rafael', 'Castro', 'rafael_castro88@gmail.com', 'DNI', '445938822', 'AR',  now(), now() ),
(2,'JAVIER GONZALEZ' , 'Javier', 'Gonzalez', 'javiBoquita@gmail.com' , 'DNI', '2672268765' , 'AR',  now() ,now()),
(3, 'HECTOR SS G', 'Hector', 'Gomez', 'hectorGomez78@gmail.com',  'DNI', '2172265827' ,  'AR',  now(), now() ),
(4, 'GABRIELA JIMENEZ' ,'Gabriela', 'Jimenez', 'gabriela.consultas@hotmail.com' , 'DNI', '410871223' , 'AR',  now(), now()),
(5, 'GUSTA G K' ,'Gustavo', 'Gomez', 'gustavo_andaluz@gmail.com', 'PASAPORTE', '748000221' , 'AR',  now(), now()),
(6, 'JOSE_PEREZ' ,'Jose', 'Perez', 'jose_consultasInternas@hotmail.com', 'DNI', '22287680' , 'AR',  now(), now()),
(7, 'JULI54' ,'Julieta', 'Bustos', 'julietaBustos@outlook.com', 'DNI', '3456271812' , 'AR',  now(), now()),
(8, 'RAMÓN2022' ,'Ramon', 'Castro', 'ramoncnc2022@gmail.com', 'DNI', '2271617711' , 'AR',  now(), now()),
(9, 'LUIS_MATERA' ,'Luis', 'Matera', 'luis_jose_matera_91@hotmail.com', 'DNI', '252441112' , 'AR',  now(), now()),
(10, 'CARLOS MARTINEZ' ,'Carlos', 'Martinez', 'carlos_etec_martinez@gmail.com', 'DNI', '2718181112' , 'AR',  now(), now()),
(11, 'SOFIA PAZ' ,'Sofia', 'Paz', 'sofi.paz.107@hotmail.com', 'DNI', '2617223234' , 'AR',  now(), now()),
(12, 'ELENA FUKZEK' ,'Elena', 'Fukzek', 'elenaFukzekLikert@gmail.com', 'PASAPORTE', '34522122' , 'AR',  now(), now());

insert into users_details (id, user_id, contact, phone
, alternative_phone, user_type, points, site_id, permalink
, creation_date, update_date ) values
(1, 1, 'Rafael', '11746349938', null , 'normal', 300, 'MSH'
, 'http://perfil.mercadolibre.com.ar/TEST2870021', now(), now()),
(2, 2, 'Javier', '1187265514', '1187265514' , 'suscribed', 3500, 'KKSJA'
, 'http://perfil.mercadolibre.com.ar/TEST2870022', now(), now()),
(3, 3, 'Hector', '1187265523', '1187265563' , 'normal', 7500, 'LLA'
, 'http://perfil.mercadolibre.com.ar/TEST2870023', now(), now()),
(4, 4, 'Gabriela', '11234514', null , 'suscribed', 7500, 'JJSGA'
, 'http://perfil.mercadolibre.com.ar/TEST2870024', now(), now()),
(5, 5, 'Gustavo', '113365514', null , 'normal', 1400, 'KSIU'
, 'http://perfil.mercadolibre.com.ar/TEST2870025', now(), now()),
(6, 6, 'Jose', '117464533', NULL , 'suscribed', 2200, 'LSP'
, 'http://perfil.mercadolibre.com.ar/TEST2870026', now(), now()),
(7, 7, 'Julieta', '1162711182', NULL , 'normal', 1200, 'KAOA'
, 'http://perfil.mercadolibre.com.ar/TEST2870027', now(), now()),
(8, 8, 'Ramon', '11726383733', NULL , 'suscribed', 1300, 'LSP'
, 'http://perfil.mercadolibre.com.ar/TEST2870028', now(), now()),
(9, 9, 'Luis', '1183739444', NULL , 'suscribed', 3400, 'LSP'
, 'http://perfil.mercadolibre.com.ar/TEST2870029', now(), now());


 insert into users_addresses (id, user_id, address_line , floor, apartment 
 , street_number, street_name, zip_code, city_id, city_name, creation_date
 , update_date) values
(1, 1, 'Guatemala 5100', '1', 'C22', '5100', 'Guatemala', '1200'
, 'TUxBQlBBTDI1MTVa', 'Palermo', now(), now()),
(2, 2, 'Av. San martin 12090', null, null, '12090', 'Av. San Martin', '2231'
,'UWHAH9asnqKKSLAA', 'Los palos', now(), now()),
(3, 3, '691 Gelly y Obes', '5', '5B', '691', 'Gelly y Obes', '356' 
,'OOWA78SKLANNSAQQ', 'Bella Vista', now(), now()),
(4, 4, 'Concordia 524', null, null, '524', 'Concordia', '221' 
,'KKSIAHHHDYDYY88Q', 'Jose c paz', now(), now()),
(5, 5, 'Av Juan Gallardo 221', '2', '2f', '221', 'Av. Gallardo', '921' 
,'KJAKSDHJ2212JDAS', 'Parque Centenario', now(), now()),
(6, 6, 'Olleros 89', '12', '12H', '89', 'Olleros', '222' 
,'YUJABS8987ASA7S7', 'Palermo', now(), now());


insert into users_addresses_details (id, user_address_id, state_id
, state_name, country_id , country_name, neighborhood_id, neighborhood_name
, municipality_id, municipality_name, geolocation_type , latitude
, longitude, creation_date, update_date) values
(1, 1, 'AR-C', 'Capital Federal','AR', 'Argentina', 'DFL', 'Floresta', null, null
, "RANGE_INTERPOLATED" , '-34.6423233', '-58.4788987' , now(), now()),
(2, 2, 'AR-W', 'Corrientes','AR', 'Argentina', 'KAL', 'Los Palos', null, null
, "RANGE_INTERPOLATED" , '-22.7271822', '-82.9992112' , now(), now()),
(3, 3, 'AR-B', 'Buenos Aires','AR', 'Argentina', 'AAP', 'Bella Vista', null, null
, "RANGE_INTERPOLATED" , '-34.5551979', '-58.7088356' , now(), now()),
(4, 4, 'AR-H', 'Catamarca','AR', 'Argentina', 'IOP', 'Las Marz', null, null
, "RANGE_INTERPOLATED" , '-38.55333979', '-19.74343356' , now(), now()),
(5, 5, 'AR-C', 'Capital Federal','AR', 'Argentina', 'DFL', 'Caballito', null, null
, "RANGE_INTERPOLATED" , '-37.2221979', '-57.33234446' , now(), now()),
(6, 6, 'AR-W', 'Corrientes','AR', 'Argentina', 'KAL', 'Barrio concepción', null, null
, "RANGE_INTERPOLATED" , '-20.522211', '-83.7088356' , now(), now());

insert into sellers (id, user_id, status_billing_allow, status_buy_allow
, status_sell_action_allow, mercadopago_account_type, mercadopago_tc_accepted
, site_status, shopping_cart_buy, shopping_cart_sell, inmediate_payment
, shipping_market, creation_date, update_date) values
(1, 1, 1, 0, 1, "personal", 1, "active", "allowed", "allowed", 0
,"accepted", now(), now()),
(2, 2, 0, 1, 0, "personal", 1, "inactive", "not_allowed", "now_allowed", 1
,"not_accepted", now(), now()),
(3, 3, 1, 1, 1, "business", 1, "active", "allowed", "allowed", 0
, "accepted", now(), now()),
(4, 4, 0, 1, 1, "business", 1, "active", "allowed", "allowed", 0
, "accepted", now(), now()),
(5, 5, 1, 1, 1, "business", 1, "inactive", "not_allowed", "allowed", 0
, "not_accepted", now(), now()),
(6, 6, 1, 0, 1, "business", 1, "active", "allowed", "not_allowed", 0
, "accepted", now(), now());


insert into products (id, site_id, title, subtitle, seller_id, category_id
, official_store_id, price, base_price, original_price, initial_quantity
, available_quantity, creation_date, update_date) values
(1, 'MLA', 'Zapatilla Fila Heating Mujer', null, 1, 'MLA109027', null, 26.000, 26.000, 26.000
, 200, 180, now(), now()),
(2, 'MLA', 'Lavavajillas Whirlpool WSFO3T2 de 10 cubiertos blanco 220V - 240V', 'MLA-89902122122', 2, 'MLA15293581', null, 152.999, 287.499, 287.499
, 320, 280, now(), now()),
(3, 'MLA', 'Smart Tv Noblex Dk43x7100pi Led 43'' Full Hd Con Android Tv', 'MLA-62172721822', 3, 'MLA19712050', null, 89.999, 
109.999, 109.999, 900, 450, now(), now()),
(4, 'MLA', 'Conjunto Deportivo Fila Sport Slim Training', 'MLA-1156522165', 3, 'MLA1222112', null, 20.679, 
20.679, 20.679, 300, 249, now(), now()),
(5, 'MLA', 'Bomba Sumergible Pozo Napa 2 Pulgadas 0,5 Hp 1000 L/h Cable', 'MLA-1106811056', 4, 'MLA1726621', null, 50.874, 
121.238, 121.238, 450, 320, now(), now());


insert into products_details(id, product_id, description,  status, warranty, sold_quantity, buyind_mode
, listing_type_id, product_condition, permalink, thumbnail_id, thumbnail, secure_thumbnail
, creation_date, update_date, stop_time
) values 
(1, 1, 'Las zapatillas Fila Heating fueron desarrolladas para satisfacer las necesidades del corredor principiante en busca de zapatos suaves y comodos. Tiene una entresuela ENERGIZED PLUS con lineas inspiradas en el modelo FLOAT FLY.'
,'active', 'active', 10, 'buy_it_now', 'gold_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1153631308-zapatilla-fila-heating-mujer-_JM#position=3&search_layout=grid&type=item&tracking_id=66f135cf-8c27-4525-8aca-ab25a135c330'
, 'D_NQ_NP_2X_617004-MLA51183451244_082022-F' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp'
, now(), now(), '2045-02-10 10:15'),
(2, 2, 'Whirpool es sinónimo de trayectoria y experiencia. Es una marca líder mundial en la comercialización de electrodomésticos que orienta su trabajo en la tecnología, el diseño y la innovación para mejorar la calidad de vida.'
,'active', 'active', 15, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/lavavajillas-whirlpool-wsfo3t2-de-10-cubiertos-blanco-220v-240v/p/MLA15293581?pdp_filters=deal:MLA779357-1#searchVariation=MLA15293581&position=2&search_layout=grid&type=product&tracking_id=f7a61904-12a1-402c-a295-d4a3151eadb2&c_id=/home/promotions-recommendations/element&c_element_order=2&c_uid=e3242406-63e4-4624-8070-b9d14e33b688'
, 'D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp'
, now(), now(), '2045-12-12 10:15'),
(3, 3, null, 'active', 'active', 240, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/smart-tv-noblex-dk43x7100pi-led-43-full-hd-con-android-tv/p/MLA19712050?pdp_filters=deal:MLA779357-1#searchVariation=MLA19712050&position=3&search_layout=grid&type=product&tracking_id=f7a61904-12a1-402c-a295-d4a3151eadb2&c_id=/home/promotions-recommendations/element&c_element_order=3&c_uid=26c49e51-fd1c-4bdc-803f-d6be35a64299'
, 'D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp'
, now(), now(), '2045-11-01 09:00'),
(4, 4, 'Conjunto Deportivo Fila Sport Slim Training', 'active', 'active', 30, 'buy_it_now', 'platinium_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1156522165-conjunto-deportivo-fila-sport-slim-training-_JM?variation=175090228881#reco_item_pos=1&reco_backend=machinalis-homes-pdp-boos&reco_backend_type=function&reco_client=home_second-best-navigation-trend-recommendations&reco_id=efaa8978-6ece-4c6a-80a6-fefce0e7c0a2&c_id=/home/second-best-navigation-trends-recommendations/element&c_element_order=2&c_uid=8ec615ac-f190-4ed5-8e25-20ed2e1cc785'
, 'D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp'
, now(), now(), '2030-02-12 07:00'),
(5, 5, 'Bomba De Agua Sumergible Para Pozo Femmto 2 Pulgadas - 0,5 HP - 55 Metros - 1000 Litros Por Hora', 'active', 'active', 56, 'buy_it_now', 'platinium_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1106811056-bomba-sumergible-pozo-napa-2-pulgadas-05-hp-1000-lh-cable-_JM#position=39&search_layout=grid&type=item&tracking_id=2aeefa8f-4654-42de-9e79-798f3cd80bff&c_id=/home/promotions-recommendations/element&c_element_order=10&c_uid=3b5a921f-1b12-4d4b-894f-f14050bc79a3'
, 'D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp'
, now(), now(), '2040-01-02 08:00');


