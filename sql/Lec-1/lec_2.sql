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
  ('C00002','Mamta Muzundar','b/202','light street','Madras','780001','TamilNadu','0'),
  ('C00003','Chhaya Bankar','c/001','borivali','Mumbai','400057','MAharashtra','5000'),
  ('C00004','Ashwini joshi','d/102','jelly street','Baglore','560001','Karnataka','0'),
  ('C00005','Hansel Coleco','B/202','Kandivali','Mumbai','400060','Maharastra','2000'),
  ('C00006','Deepak Sharma','C/505','angel park','Mangolre','560056','Karnataka','0');

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
    SalesmanNo varchar(6) primary key,
    SalesmanName varchar(20) not null,
    ADDRESS1 varchar(30) not null,
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE int,
    STATE varchar(20),
    SalAmt int not null,
    TrgToGet int not null,
    YTDSales int not null,
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
l
(4)
a.  update CLIENT_MASTER set CITY = 'Bangalore' where CLIENTNO = 'C0005';

b. update client_master set BalDue = 1000 where ClientNo = 'C00001';

c. update product_master set CostPrice = 950 where Description = 'Trousers';

d.  update salesman_master set City = 'Pune';


select * from customers;
select * from employees;

-- 2. Fetch & display employee details for the employees having job Title='Sales Rep' and Employee number between 1200 and 1500
select * from employees where jobTitle = "Sales Rep" and employeeNumber between 1200 and 1500;

-- 3. Fetch & display employee details for the employees having office code 2 or more than 2 and job title is not Sales Rep
select * from employees where officeCode >= 2 and jobtitle = 'Sales Rep';

-- 4. Fetch & display customers details(Customers table) who does not belongs to USA
select * from customers where country not in ("USA");

-- 5. Fetch & display customers details(Customers table)  having customer number not in the range 150 to 200
select *from customers where customerNumber not between 150 and 200;

--  6. List out last name, first name for all employees and rename  last name as “Name of the employee”, display as sorting order of their last name
select concat(lastname , "  ", firstname) as  Name_of_the_employees from employees order by lastname;

-- 7.  List out the customers having credit limit is more than 70000 display in descending order by their last name.
select * from customers where creditLimit > 70000 order by contactLastName desc;
 
 -- 8. List out all customers belongs to city Singapore, Liverpool or NYC
 select * from customers where city in ("stavern" , "NYC" , "Liverpool");
 
 -- 	9.List the details about customer first name “SMITH”
 select * from customers where contactlastName like "smith";
 
 -- 10. List out the employees who are working in office code 1, 3 , 5
 select * from employees where officeCode in (1,3,5);

-- 11. List out the customer having credit limit between 50000 and 95000
select * from customers where creditLimit between 50000 and 95000;

-- 12.12. List out the employees who are not working in office code 1 , 3
select * from employees where officeCode not in (1,3);

-- 13. List out the customers whose first name starts with “S”
select * from  customers where contactFirstName like "s%";

-- 14. List out the customers whose name start with “S” and end with “H”
select * from customers where contactFirstName like "s%h";

-- 15. List out the customers whose first name length is 5 and start with “S”
select contactfirstname from customers where contactFirstName like "S____";

-- 16. 16. List out the customers whose first name length is exactly 8
select contactfirstname from customers where contactFirstName like "________";

-- 17. List out the customers whose first name starting with a and ending with e
select contactfirstname from customers where contactFirstName like "a%e ";

-- 18. List out the customers whose first name contains ee
select contactFirstname from customers where contactFirstname like "ee%";

-- 19. Show Count of employees who are working in different office in the organization
select officeCode ,  count(officecode) from employees group by officeCode;

-- 20. List out the maximum credit limit of customers belongs to different states
select state , max(creditlimit) from customers group by state;
 
 















 

