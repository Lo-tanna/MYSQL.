create database food;
use food;

create table company (
 Company_id int primary key,
 Company_name varchar (50),
 Company_city varchar(50)
 );
 
 create table foods (
 Item_id int,
 Item_name varchar(50),
 Item_unit varchar(50),
 Company_id int not null,
foreign key (company_id) references company (company_id) );

 
 
 
 select * from company;
  select * from foods;
  
  ----- Join, joins two tables---
  select * from company,foods where company.Company_id = foods.Company_id;
  
  select foods.item_name,foods.item_unit,company.company_name,company.company_city,company.company_id from company,foods where company.company_id = foods.company_id;
  
  ---- Inner join----
  select * from foods inner join company on company.company_id = foods.company_id;
  
  select foods.item_name,company.company_name from foods inner join company  on company.company_id = foods.company_id;
  
  
  ----- Right join-----
  select * from foods right join company on company.company_id = foods.company_id;
  
  
  --- Left Join -----
  select * from foods left join company on company.company_id = foods.company_id;
  
  
insert into foods(
Item_id,
 Item_name ,
 Item_unit, 
 Company_id ) values
 (1," Chex Mix ","pcs",16),
  (2,"Cheez-It","pcs",15),
   (3," BN Biscuit","pcs",15),
    (4,"Mighty Munch","pcs",16),
     (5," Pot Rice","pcs",17),
      (6,"Jaffa Cakes ","pcs",16);
      
      
insert into company(
 Company_id ,
 Company_name,
 Company_city ) values
 (16," Order All"," Boston"),
  (18,"Jack Hill Ltd","London"),
   (15," Akas Foods"," Delhi "),
    (17,"Foodies ","London"),
     (19," sip-n-Bite.","New York ");
     
	  create table table_A (
 A int,
 m varchar(1)
 );
 
   create table table_B (
 A int,
 n varchar(1)
 );
 
 select * from table_A;
  select * from table_B;
 
 insert into table_A  (A,m) values (1,"m"),(2,"n")
,(4,"o"); 
 insert into table_B (A,n) values (2,"p"),(3,"q")
,(5,"r"); 
     
     
     
