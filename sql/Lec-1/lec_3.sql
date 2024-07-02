-->create database user1

--> show databases;

--> user user1;


create table students(
    firstname varchar(20),
    lastname varchar(20),
    age int,
    city varchar(10),
    maths int,
    eng int,
    guj int
);
-->desc students;

insert into students(firstname,lastname,age,city,maths,eng,guj) values
('Trupti','Gajera','37','Surat','80','95','70'),
('Tejaswi','Gelani','21','Bombay','85','75','80'),
('Harmi','Sutariya','23','pune','73','55','75'),
('Jagdish','Shiyal','24','mahuva','72','65','50'),
('Dev','Bhardwa','20','Surat','60','80','77'),
('Hit','Patel','27','Surat','80','65','90'),
('Harshit','kakadiya','25','pune','48','75','70'),
('Rakshit','Gajera','18','Bombay','88','90','75'),
('Vivek','Patil','22','ahmedabad','70','75','72'),
('prince','Bodar','19','Bardoli','48','45','50');

--> select * from students;

-- Operators
and

select * from students where maths>45 and city='surat';

Or

select * from students where eng>70 or city='bombay';

between

select * from students where guj between 50 and 80;

In (matches any value in the list)
select * from students where city in ('pune','bardoli');

NOT (To negate the given condition)
select * from students where city not in ('pune','bardoli');

set an upper limit on number of (tuples) rows to be return.
select * from students limit 3;

select maths,eng from students;
