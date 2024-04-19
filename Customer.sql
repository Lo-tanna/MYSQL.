create table Customer4(
customerID int primary key auto_increment,
fullname varchar(50),
points float not null);

create table orders4(
customerid int not null,
orderid int primary key auto_increment,
orderdate date not null,
Amount float not null,
foreign key (customerid) references customer4 (customerid)
);

select * from Customer4;

select * from orders4;

alter table Customer4
add column city varchar(50);



insert into Customer4 (fullname, points, city)
values("Timi Adesanya", 10, "lagos"),
	  ("John", 4, "Ondo");

update Customer4
 set city = "Warri"
 where customerID = 1;
 
select city, sum(points) from Customer4 group by city;
select * from Customer4;
select city from Customer4;