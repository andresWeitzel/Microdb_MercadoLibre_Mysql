
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
(1, "MLA", "Zapatillas Fila - Runner Prime", null, 1, "MLA109027", null, 26000, 26000, 26000
, 200, 180, now(), now()),
(2, "MLA", "Zapatillas Nike - Basquet", "Basquetball Pro Edition", 1, "MLA109029", null, 34000, 38000
, 38000 , 100, 90, now(), now()),
(3, "HAA", "Calza Deportiva Mujer", "Talle M - Pro Sport", 2, "HAA827811", null, 15000, 18000, 18000
, 50, 50, now(), now());


