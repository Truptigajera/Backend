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

--\ clienat_master table name is create_master

database
create database user;
use user;


1.   select * from CLIENT_MASTER;

2.  create table CLIENT_MASTER(
    CLIENTNO varchar(6),
    NAME varchar (20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(15),
    PINCODE int,
    STATE varchar(15),
    BALDUE int
  );

3.  --\ desc CREATE_MASTER;

4.  insert into CLIENT_MASTER(CLIENTNO, NAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, BALDUE) values 
  insert into CLIENT_MASTER(CLIENTNO, NAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, BALDUE) values
  ('C00001','Ivan Bayross','a/102','gangajamna soc','surat','395006','Gujarat','15000'),
  ('C0002','Mamta Muzundar','b/202','light street','Madras','780001','TamilNadu','0'),
  ('C0003','Chhaya Bankar','c/001','borivali','Mumbai','400057','MAharashtra','5000'),
  ('C0004','Ashwini joshi','d/102','jelly street','Baglore','560001','Karnataka','0'),
  ('C0005','Hansel Coleco','B/202','Kandivali','Mumbai','400060','Maharastra','2000'),
  ('C0006','Deepak Sharma','C/505','angel park','Mangolre','560056','Karnataka','0');

1.  --\ create database PRODUCT_MASTER;

2.  --\show databases;
  
3.  --\use PRODUCT_MASTER;

4.  create table PRODUCT_MASTER(
    ProductNo varchar(6),
    Description varchar(15),
    ProfitPercent int,
    UnitMeasure varchar(10),
    QtyOnHand int,
    ReOrdedLVL int,
    SellPrice int,
    CostPrice int
  );


5.--\ desc PRODUCT_MASTER;

6. insert into PRODUCT_MASTER(ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReOrdedLVL,SellPrice,CostPrice) values
 ('P00001','T-Shirts','5','Piece','200','50','350','250'),
  ('P0345','Shirts','6','Piece','150','50','500','350'),
 ('P06734','Cotton Jeans','5','Piece','100','20','600','450'),
 ('P07865','Jeans','5','Piece','100','20','750','500'),
 ('P07868','Trousers','2','Piece','150','50','850','550'),
 ('P07885','Pull Overs','2.5','Piece','80','30','700','450'),
 ('P07965','Denim-Shirts','4','Piece','100','40','350','250'),
 ('P07975','Lycra-top','5','Piece','70','30','330','175'),
 ('P08685','Skirts','5','Piece','75','30','450','300');


7. select * from PRODUCT_MASTER;

1.  --\ create database SALESMAN_MASTER;

2.  --\show databases;

3.  create table SALESMAN_MASTER(
    SalesmanNo varchar(6),
    SalesmanName varchar(20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE int,
    STATE varchar(20),
    SalAmt int,
    TrgToGet int,
    YTDSales int,
    Remarks varchar (60)    
    );

4.--\desc SALESMAN_MASTER;

5.insert into SALESMAN_MASTER(SalesmanNo,SalesmanName,ADDRESS1,ADDRESS2,CITY,PINCODE,STATE,SalAmt,TrgToGet,YTDSales,Remarks) values
('S00001','Aman','A/14','Worli','Mumbai','400002','Maharashtra','3000','100','50','Good'),
('S00002','Omkar','65','Nariman','Mumbai','400001','Maharashtra','3000','200','100','Good'),
('S00003','Raj','p-7','Bandra','Mumbai','400032','Maharashtra','3000','200','100','Good'),
('S00004','Ashish','A/5','Juhu','Mumbai','400044','Maharashtra','3500','200','150','Good');

6.select * from SALESMAN_MASTER;

-- filter data
select * from product_master where qtyonhand = 100;

-- update
update product_master set qtyonhand = 10 where description = 'Trousers';
-- delete

delete from product_master where description = 'Shirts';


(3)a.  select NAME from CLIENT_MASTER;


b. select * from client_master;

c. select name,city,state from CLIENT_MASTER;

d. SELECT DESCRIPTION FROM PRODUCT_MASTER;

e. SELECT NAME FROM CLIENT_MASTER WHERE CITY = 'mumbai';

f. SELECT SalesmanName FROM SALESMAN_MASTER WHERE SalAmt = 3000;

(4)
a.  update CLIENT_MASTER set CITY = 'Bangalore' where CLIENTNO = 'C0005';

b. update client_master set BalDue = 1000 where ClientNo = 'C00001';

c. update product_master set CostPrice = 950 where Description = 'Trousers';

d.  update salesman_master set City = 'Pune';













 

