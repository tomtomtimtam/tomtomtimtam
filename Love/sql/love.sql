set names utf8;
set foreign_key_checks=0;
drop database if exists love;
create database if not exists love;
use love;

drop table if exists user_transaction;

create table user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
age int,
sex varchar(50),
insert_date datetime,
updated_date datetime
);

drop table if exists comments_transaction;

create table comments_transaction(
id int not null primary key auto_increment,
user_name varchar(50),
place varchar(50),
meet_time int,
comments varchar(255),
insert_date datetime
);

insert into user_transaction(id,login_id,login_pass) values(1,"taro","123");
insert into user_transaction(id,login_id,login_pass) values(2,"hanako","456");
insert into comments_transaction(id,user_name,place,meet_time,comments) values(1,"root","渋谷","17","飲みたい");