/* -------------------------------------
 * ------ MICRODB MERCADOLIBRE ---------
 * -------------------------------------
 * 
 * 
 * ========= DML UPDATES=============
 */

-- DATABASE
use microdb_mercadolibre;


-- USERS
select * from users;

update users set update_date = now() where nickname = 'RAFA-CON';
update users set email = 'jose_consultasInternas@outlook.com' 
where (id = 6 and nickname='Jose Perez');


-- USERS_DETAILS
select * from users_details;

update users_details inner join users 
on users_details.user_id = users.id
set contact = 'Jose Perez' where user_id = 6;