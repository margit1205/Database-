create database instagram;
use instagram;
create table person(
name varchar(30),
dob date,
gender char(1),
email varchar(30),
phone int(12),
descr varchar(40));
insert into person values ('Aftab','2000-05-12','M','aftab.raja@wavemaker.com',7061205179,'hello everyone');
select * from person;
alter table person;
SET SQL_SAFE_UPDATES = 0;
delete from person where name="Aftab";





