
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

-- ======= Tabla users ===========


create table users(
	
id int(12) auto_increment primary key,
nickname varchar(50) not null,
first_name varchar(50) not null,last_name varchar(50) not null,
email varchar(100) not null,
identification_type varchar(15) not null,
identification_number varchar(20) not null,
country_id varchar(10) not null,
registration_date datetime not null,
update_date datetime not null

);

-- ======= Restricciones Tabla users ===========

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
add constraint CHECK_update_date
check (update_date >= registration_date);

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla users_details ===========


create table users_details(
	
id int(12) auto_increment primary key,
user_id int(12) not null,
contact varchar(50) default null,
phone varchar(50) not null,
alternative_phone varchar(50) default null,
user_type varchar(50) not null,
points int(10) not null,
site_id varchar(10) not null,
permalink varchar(50) not null,
update_date datetime not null

);

-- ======= Restricciones Tabla users_details ===========

-- UNIQUE ID
alter table users_details 
add constraint UNIQUE_users_details_id
unique(id);

-- FK USER_ID
alter table users_details 
add constraint FK_users_details_user_id
foreign key(user_id)
references users(id);

-- UNIQUE PHONE_USER
alter table users_details 
add constraint UNIQUE_phone_user
unique(phone, alternative_phone);


-- CHECK UPDATE_DATE
alter table users
add constraint CHECK_update_date
check (update_date >= now());

-- ---------------------------------------------------------------------------

