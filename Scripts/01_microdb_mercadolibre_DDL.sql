
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
drop table if exists users_addresses_details;
drop table if exists sellers;
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
creation_date datetime not null,
update_date datetime not null


);

-- ======= Restricciones Tabla users ===========

-- UNIQUE ID
alter table users 
add constraint UNIQUE_users_id
unique(id);

-- UNIQUE FIRST_LASTNAME
alter table users 
add constraint UNIQUE_users_first_last_name
unique(first_name, last_name);

-- UNIQUE identification
alter table users 
add constraint UNIQUE_users_identification
unique(identification_type, identification_number);


-- CHECK UPDATE_DATE
alter table users
add constraint CHECK_users_update_date
check (update_date >= creation_date);

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
creation_date datetime not null,
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
references users(id)
ON DELETE CASCADE;

-- UNIQUE PHONE_USER
alter table users_details 
add constraint UNIQUE_users_details_phone_user
unique(phone, alternative_phone);


-- CHECK UPDATE_DATE
alter table users_details
add constraint CHECK_users_details_update_date
check (update_date >= creation_date);

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla users_addresses ===========


create table users_addresses(
	
id int(12) auto_increment primary key,
user_id int(12) not null,
address_line varchar(100) not null,
floor varchar(50) default null,
apartment varchar(50) default null,
street_number varchar(20) not null,
street_name varchar(100) not null,
zip_code varchar(50) default null,
city_id varchar(255) default null,
city_name varchar(50) default null,
creation_date datetime not null,
update_date datetime not null
);

-- ======= Restricciones Tabla users_addresses ===========

-- UNIQUE ID
alter table users_addresses 
add constraint UNIQUE_users_addresses_id
unique(id);

-- FK USER_ID
alter table users_addresses 
add constraint FK_users_addresses_user_id
foreign key(user_id)
references users(id)
ON DELETE CASCADE;

-- CHECK UPDATE_DATE
alter table users_addresses
add constraint CHECK_users_addresses_update_date
check (update_date >= creation_date);


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla users_addresses_details ===========


create table users_addresses_details(
	
id int(12) auto_increment primary key,
user_address_id int(12) not null,
state_id varchar(255) default null,
state_name varchar(50) default null,
country_id varchar(255) default null,
country_name varchar(50) default null,
neighborhood_id varchar(255) default null,
neighborhood_name varchar(50) default null,
municipality_id varchar(255) default null,
municipality_name varchar(50) default null,
geolocation_type varchar(100) default null,
latitude varchar(100) default null,
longitude varchar(100) default null,
creation_date datetime not null,
update_date datetime not NULL
);

-- ======= Restricciones Tabla users_addresses_details ===========

-- UNIQUE ID
alter table users_addresses_details 
add constraint UNIQUE_users_address_details_id
unique(id);

-- FK USER_ADDRESS
alter table users_addresses_details 
add constraint FK_users_address_details_user_address_id
foreign key(user_address_id)
references users_addresses(id)
ON DELETE CASCADE;


-- CHECK UPDATE_DATE
alter table users_addresses_details
add constraint CHECK_users_addresses_details_update_date
check (update_date >= creation_date);

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla sellers ===========


create table sellers(
	
id int(12) auto_increment primary key,
user_id int(12) not null,
status_billing_allow boolean not null,
status_buy_allow boolean not null,
status_sell_action_allow boolean not null,
mercadopago_account_type varchar(50) default null,
mercadopago_tc_accepted varchar(50) default null,
site_status varchar(50) default null,
shopping_cart_buy varchar(50) default null,
shopping_cart_sell varchar(50) default null,
inmediate_payment varchar(50) default null,
shipping_market varchar(50) default null,
creation_date datetime not null,
update_date datetime not NULL
);

-- ======= Restricciones Tabla sellers ===========

-- UNIQUE ID
alter table sellers 
add constraint UNIQUE_sellers_id
unique(id);

-- FK USER
alter table sellers 
add constraint FK_sellers_id
foreign key(user_id)
references users(id)
ON DELETE CASCADE;


-- CHECK UPDATE_DATE
alter table sellers
add constraint CHECK_sellers_update_date
check (update_date >= creation_date);

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products ===========


create table products(
	
id int(12) auto_increment primary key,
site_id varchar(20) NOT NULL,
title varchar(100) NOT NULL,
subtitle varchar(100) default NULL,
seller_id int(20) NOT NULL,
category_id varchar(100) not NULL,
official_store_id varchar(100) default NULL,
price decimal(6,3) NOT NULL,
base_price decimal(6,3) NOT NULL,
original_price decimal(6,3) NOT NULL,
initial_quantity decimal(6,3) NOT NULL,
available_quantity decimal(6,3) NOT NULL,
creation_date datetime not null,
update_date datetime not NULL
);

-- ======= Restricciones Tabla products ===========

-- UNIQUE ID
alter table products 
add constraint UNIQUE_products_id
unique(id);

-- FK SELLERS
alter table products 
add constraint FK_products_seller_id 
foreign key(seller_id)
references sellers(id)
ON DELETE CASCADE;


-- CHECK UPDATE_DATE
alter table products
add constraint CHECK_products_update_date
check (update_date >= creation_date);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products_details ===========


create table products_details(
	
id int(12) auto_increment primary key,
product_id int(12) NOT NULL,
description varchar(500),
status varchar(20) NOT NULL,
warranty varchar(20) NOT NULL,
sold_quantity int(10) default NULL,
buyind_mode varchar(50) DEFAULT NULL,
listing_type_id varchar(50) DEFAULT NULL,
product_condition varchar(50) DEFAULT NULL,
permalink varchar(500) DEFAULT NULL,
thumbnail_id varchar(500) DEFAULT NULL,
thumbnail varchar(500) DEFAULT NULL,
secure_thumbnail varchar(500) DEFAULT NULL,
creation_date datetime not null,
update_date datetime not null,
stop_time datetime not null
);

-- ======= Restricciones Tabla productos_details ===========

-- UNIQUE ID
alter table products_details 
add constraint UNIQUE_products_details_id
unique(id);

-- FK PRODUCTS
alter table products_details 
add constraint FK_products_details_product_id 
foreign key(product_id)
references products(id)
ON DELETE CASCADE;


-- CHECK UPDATE_DATE
alter table products_details
add constraint CHECK_products_details_update_date
check (update_date >= creation_date);


