

create table SALESMAN_MASTER1(
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


 CREATE TABLE SALES_ORDER ( 
    ORDERNO varchar(6) primary key, 
    clientNo varchar(6), 
    orderddate Date not null, 
    delyaddr varchar(25), 
    SalesmanNo varchar(6) , 
    delytype char(1), 
    billyn char(1), 
    delydate date, 
    orderstatus varchar(10), 
    
    FOREIGN  KEY (clientNo) REFERENCES client_master1(ClientNo), 
    FOREIGN KEY (SalesmanNo) REFERENCES SALESMAN_MASTER1(SalesmanNo) 
 ); 
 
 insert into SALES_ORDER (ORDERNO, clientno, orderddate, delyaddr, salesmanno, delytype, billyn, delydate, orderstatus) values  
('O19001', 'C00001' , '2004-06-12','Address 1','S00001' , 'F' , 'N','2004-06-20' , 'In Process'), 
('O19002', 'C00002' ,'2004-06-25','Address 2','S00002' , 'P' , 'N','2004-06-27' , 'Cancelled'), 
('O46865', 'C00003', '2004-02-18', 'Address 3','S00003' , 'F' , 'Y','2004-02-20' , 'Fulfiled'), 
('O19003', 'C00001' , '2004-04-03','Address 4','S00001' , 'F' , 'N','2004-04-07' , 'Fulfiled'), 
('O46866', 'C00004', '2004-05-20', 'Address 5','S00002' , 'P' , 'N','2004-05-22' , 'cancelled'), 
('O19008', 'C00005' , '2004-05-24','Address 6','S00004' , 'F' , 'N','2004-07-26' , 'In Process'); 
 
select * from SALES_ORDER;


insert into SALES_ORDER (ORDERNO, clientno, orderddate, delyaddr, salesmanno, delytype, billyn, delydate, orderstatus) values  
('O19001', 'C00001' , '2004-06-12','Address 1','S00001' , 'F' , 'N','2004-06-20' , 'In Process'), 
('O19002', 'C00002' ,'2004-06-25','Address 2','S00002' , 'P' , 'N','2004-06-27' , 'Cancelled'), 
('O46865', 'C00003', '2004-02-18', 'Address 3','S00003' , 'F' , 'Y','2004-02-20' , 'Fulfiled'), 
('O19003', 'C00001' , '2004-04-03','Address 4','S00001' , 'F' , 'N','2004-04-07' , 'Fulfiled'), 
('O46866', 'C00004', '2004-05-20', 'Address 5','S00002' , 'P' , 'N','2004-05-22' , 'cancelled'), 
('O19008', 'C00005' , '2004-05-24','Address 6','S00004' , 'F' , 'N','2004-07-26' , 'In Process'); 
 

create table sales_order_details(
OrderNo varchar(6),
ProductNo varchar(6),
Qtyordered int(8),
Qtydisp int(8),
ProductRate float(10 , 2)

FOREIGN  KEY (OrderNo) REFERENCES SALES_ORDER(ORDERNo), 
FOREIGN KEY (ProductNo) REFERENCES PRODUCT_MASTER1(ProductNo) 
);

insert into sales_order_details
values
("O19001" , "P00001" , 4 , 4 , 525),
("O19001" , "P07965" , 2 , 1 , 8400),
("O19001" , "P07885" , 2 , 1 , 5250),
("O19002" , "P00001" , 10 , 0 , 525),
("O46865" , "P07868" , 3 , 3 , 3150),
("O46865" , "P07885" , 3 , 1 , 5250),
("O46865" , "P00001" , 3 , 1 , 1050),
("O19003" , "P0345" , 2 , 2 , 1050),
("O19003" , "P06734" , 1 , 1 , 12000),
("O46866" , "P07975" , 1 , 0 , 8400),
("O46866" , "P07975" , 1 , 0 , 1050),
("O19008" , "P00001" , 10 , 5 , 525),
("O19008" , "P07975" , 5 , 3, 1050);   


use classicmodels;
 select * from offices;
 
 select * from employees;
 select employees.*, offices.city, offices.postalcode from employees
 inner join offices on offices.officecode = employees.officecode;
 
 select emp.*, ofc.city, ofc.postalcode from employees emp
 right join offices ofc on ofc.officecode =emp.officecode where ofc.officecode = 1;
 

-- 1. Find out the product, which have been sold to 'Lvan Byroos' 
select sod.* from sales_order_details sod 
JOIN sales_order so ON sod.orderNo = so.ORDERNO   
JOIN client_master cm ON so.clientno = cm.CLIENTNO
where cm.Name = 'Ivan Bayross';  

-- 2.find out the product and their quantites that will have to be deliverd in the current month 
select sod.ProductNo, SUM(sod.QUANTITY) as QuantityDeliverd   
from sales_order so  
 join sales_order_details sod  on so.orderNo = sod.orderNo
where month(SO.DELYDATE) = MONTH(CURDATE()) AND YEAR(SO.DELYDATE) = YEAR(CURDATE()) 
GROUP BY SOD.PRODUCT_ID; 


select e.enrillment_id, e.enrollment_date,concat(s.first_name,last_name)as 'FullName' 
from  enrollments e
join students s on e.students_id = s.students_id
join classes c on s.class_id = c.class_id;

select * from enrollments;
use student_management;

update students set last_name='singh' where student_id=1;

select * from students;

SELECT 
    MAX(DATEDIFF('2024-07-11', DOB) / 365) AS max_age
FROM 
    students;


update teacher set subject="physics" where teacher_id=2;
select * from teacher;

select count(gender) from students;

delete from students where student_id=5;

delete from enrollments where enrollment_id=4;