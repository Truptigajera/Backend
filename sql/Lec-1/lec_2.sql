-- BY Girish sir

-- \sql
-- \connect root@localhost:3306
-- show databases;
-- create database dbname;
-- use dbname;

--show tables;
create table user(
    firstname varchar(50),
    lastname varchar(50),
    age int
);

--describe user
-- desc user;

-- insert data
insert into user(firstname, lastname, age) values ('Trupti','Gajera','37');
insert into user(firstname, lastname, age) values ('Trupti','Gajera','37');

-- multiple data
insert into user(firstname, lastname, age)values('Kishor','Gajera','40'),('Parikshit','Gajera','11'),('Rakshit','Gajera','2');

-- read data
select * from user;
select firstname from user;
select firstname,age from user;
select firstname as "FullName", age from user;
select firstname "Name", age from user;
select concat(firstname," ",lastname)as "FullName",age from user;


