create database vechilerental;
use vechilerental;

create table customers(
customer_id int primary key not null,
customer_name varchar(50),
email varchar(50),
phone_number int 
);

create table vechile(
vechile_id int primary key not null,
vechile_name varchar(50),
vechile_type varchar(50),
brand varchar(50),
rental_price float,
avaliblity varchar(50)
);
show tables;

