
/* -------------------------------------
 * ------ MICRODB MERCADOLIBRE ---------
 * -------------------------------------
 * 
 * 
 * ========= DML =============
 */



-- DATABASE
use microdb_mercadolibre;

-- TABLES
delete from users;
delete from users_details;
delete from users_addresses;
-- delete from products;
-- delete from products_details;

insert into users (id, nickname, first_name, last_name, email, identification_type
, identification_number, country_id, creation_date, update_date) values
(1, 'RAFA-CON', 'Rafael', 'Castro', 'rafael_castro88@gmail.com', 'DNI', '445938822', 'AR',  now(), now() ),
(2,'JAVIER GONZALEZ' , 'Javier', 'Gonzalez', 'javiBoquita@gmail.com' , 'DNI', '2672268765' , 'AR',  now() ,now()),
(3, 'HECTOR SS G', 'Hector', 'Gomez', 'hectorGomez78@gmail.com',  'DNI', '2172265827' ,  'AR',  now(), now() ),
(4, 'GABRIELA JIMENEZ' ,'Gabriela', 'Jimenez', 'gabriela.consultas@hotmail.com' , 'DNI', '410871223' , 'AR',  now(), now()),
(5, 'GUSTA G K' ,'Gustavo', 'Gomez', 'gustavo_andaluz@gmail.com', 'PASAPORTE', '748000221' , 'AR',  now(), now()),
(6, 'Jose Perez' ,'Jose', 'Perez', 'jose_consultasInternas@hotmail.com', 'DNI', '22287680' , 'AR',  now(), now());


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
, 'http://perfil.mercadolibre.com.ar/TEST2870026', now(), now());


 insert into users_addresses (id, user_id, address_line , floor, apartment 
 , street_number, street_name, zip_code, city_id, city_name, creation_date
 , update_date) values
(1, 1, 'Guatemala 5100', '1', 'C22', '5100', 'Guatemala', '1200'
, 'TUxBQlBBTDI1MTVa', 'Palermo', now(), now()),
(2, 2, 'Av. San martin 12090', null, null, '12090', 'Av. San Martin', '2231' 
,'UWHAH9asnqKKSLAA', 'Nuñez', now(), now()),
(3, 3, 'Los andes 356', '5', '5B', '356', 'Los andes', '356' 
,'OOWA78SKLANNSAQQ', 'Recoleta', now(), now());


-- insert into users_addresses_details (id, user_address_id, state_id, state_name
-- , country_id , country_name, neighborhood_id, neighborhood_name
-- , municipality_id, municipality_name, geolocation_type , latitude
-- , longitude, creation_date, update_date) values
-- (1, 1, 'TUxBQlBBTDI1MTVa', 'Palermo','TUxBQlBBTDI1MTVa', 'Palermo', now(), now()),
-- 
-- ;


