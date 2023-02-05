
/* -------------------------------------
 * ------ MICRODB MERCADOLIBRE ---------
 * -------------------------------------
 * 
 * 
 * ========= DDL =============
 */

-- DATABASE
drop database if exists microdb_mercadolibre;

create database microdb_mercadolibre;

use microdb_mercadolibre;




-- TABLES
drop table if exists users;
drop table if exists users_details;
drop table if exists users_addresses;
drop table if exists products;
drop table if exists products_details;



-- ---------------------------------------------------------------------------

-- ======= TABLA USERS ===========


create table users(
	
id int(12) primary key,
nickname varchar(50) not null,
first_name varchar(50) not null,last_name varchar(50) not null,
email varchar(100) not null,
identification_type varchar(10) not null,
identification_number int(15) not null,
country_id varchar(10) not null,
registration_date datetime not null,
update_date datetime not null

);

-- ======= Restricciones Tabla inspecciones_inmuebles ===========

-- UNIQUE ID
alter table users 
add constraint UNIQUE_users_id
unique(id);

-- UNIQUE FIRST_LASTNAME
alter table users 
add constraint UNIQUE_first_last_name
unique(first_name, last_name);

-- UNIQUE identification
alter table users 
add constraint UNIQUE_identification
unique(identification_type, identification_number);


-- CHECK UPDATE_DATE
alter table users

-- ---------------------------------------------------------------------------


