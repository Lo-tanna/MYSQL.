-- create database
-- CRUD Method
-- Database is a container for storing data

create database TechStudio;
use techstudio;
-- creating a table in our database
-- int for numbers, varcher for text float for decimal number
create table techstudio (
studentid int,
firstname varchar(50),
lastname varchar(50)
);
select * from techStudio;

insert into techstudio (studentid, firstname, lastname)
values
(1,"Lotanna","Okwudili"),
(2,"Ada","Precious"),
(3,"Timi","Joy"),
(4,"James","Peter"),
(5,"Kelvin","Benson"),
(6,"Faya","Richard");

-- rename table
rename table techstudio to techstudio_students;

-- update record
update techstudio_students
set lastname = "Daniel"
where studentid = 3;

select * from techstudio_students;

-- delete

delete from techstudio_students
where studentid = 6;

select * from techstudio_students;

-- add column
alter table techstudio_students
add column score int;

alter table techstudio_students
add column fullname varchar(60);

select * from techstudio_students;

-- rename column
alter table techstudio_students
change column score point int;

-- change data type
alter table techstudio_students
modify column point float;

-- 30.3, 50.6, 45.8, 29.7, 30.9

update techstudio_students
set point = 30.3
where studentid = 1;

update techstudio_students
set point = 50.6
where studentid = 2;

update techstudio_students
set point = 45.8
where studentid = 3;

update techstudio_students
set point = 29.7
where studentid = 4;

update techstudio_students
set point = 30.9
where studentid = 5;



