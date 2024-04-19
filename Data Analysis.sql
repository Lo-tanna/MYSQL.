create database Data_Analysis;

use Data_Analysis;

create table Data_Analyst (
ID int primary key auto_increment,
Firstname varchar(50),
Lastname varchar(50),
Office varchar(50),
Level varchar(50));

select * from Data_Analyst;

insert into Data_Analyst (Firstname, Lastname, Office, Level)
values("Daniel", "Adesanya", "CEO", "Management"),
      ("Timi", "Samson","Director","Management"),
      ("Terry","Freeman","Secretary","Organisational"),
      ("Philip","Dreem","Security","Security"),
      ("Jack","Ryan","Web developer","IT");
      
alter table Data_Analyst;
insert into Data_Analyst (Firstname, Lastname, Office, Level)
	values("David", "Adesanya", "CEO", "Management"),
		   ("Tayo", "Samson","Director","Management"),
            ("Jerry","Dreem","Security","Security"),
             ("Mack","Ryan","Web developer","IT");

select * from Data_Analyst;

update Data_Analyst
set Office = "Admin"
where ID = 6;

drop table Data_Analyst;



select * from Data_Analyst;
select * from book1;
s