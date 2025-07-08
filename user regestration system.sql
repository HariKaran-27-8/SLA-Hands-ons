
-- ___________user registration system_______________
use practice;

create table users( id int auto_increment primary key ,
username varchar(20) not null ,
email varchar(40) unique ,
password varchar(8) not null,
age int check(age>=13),
country varchar(20) default "USA");

insert into users (id,username,email,password,age,country) values (26,'gopi','gopi@gmail.com','123jhgj5',21,'sivakasi');-- 
insert into users (id,username,email,password,age) values (27,'hari','hari@gmail.com','1234mnbv',22);
select * from users;