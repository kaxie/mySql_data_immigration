drop database if exists kaxie_db;
create database kaxie_db;
use kaxie_db;
create table people(
	id integer(11) not null auto_increment,
	name varchar(30) not null,
	has_pet boolean not null,
	pet_name varchar(30),
	pet_age integer(10),
	primary key(id)
	
);

insert into people (name, has_pet, pet_name, pet_age)
values("Bob", true, "Rocky", 100);
insert into people (name, has_pet, pet_name, pet_age)
values("Jacob", true, "Misty", 10);
insert into people (name, has_pet, pet_name, pet_age)
values("Peter", true, "Zoe", 2);

select * from people 



