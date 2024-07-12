// Question 1://

create database hospital_management;

use hospital_management;

// Question 2://

create table patients(
    patients_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    DOB date,
    gender varchar(10),
    doctor_id int
);


create table Doctors(
    doctor_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    specialization varchar(50)
);

// Question 3://

insert into patients values 
(1,"john","Doe","1985-04-23","Male",1),
(2,"jane","Smith","1990-06-15","Female",1),
(3,"Robert","Brown","1975-09-12","Male",2),
(4,"Emily","Davis","1988-11-22","Female",3),
(5,"Michael","wilson","1992-02-03","Male",1);

select * from patients;

insert into Doctors values
(1,"Alice","Johnson","Cardiology"),
 (2,"Michael","Clark","Neurology"),
 (3,"Laura","Admas","Dermatology"),
 (4,"James","Miller","Orthopedics"),
 (5,"Sarah","Taylor","Pediatrics");

 select * from Doctors;

 // Question 4://
 
 1. select * from patients where doctor_id = 1;

 2. select first_name, last_name from Doctors;

 // Question 5://

 create table Appointments(
    appointment_id int primary key auto_increment,
    appointment_date date,
    patient_id int,
    doctor_id int,
   
    FOREIGN KEY (patient_id) REFERENCES patients(patients_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
 );


 insert into Appointments values
(1,"2024-07-05",1,1),
(2,"2024-07-06",2,2),
(3,"2024-07-07",3,3),
(4,"2024-07-08",4,4),
(5,"2024-07-09",5,5);

      

 select a.appointment_id,a.appointment_date,concat(p.first_name," ",p.last_name) as Patients_Name,concat(d.first_name," ",d.last_name) as Doctor_Name
 from Appointments a
 join patients p on a.patient_id = p.patients_id
 join Doctors d on a.doctor_id = d.doctor_id;

 // Question 6://  

 1.  update patients set last_name = "Peter" where patients_id = 1;

 2.  update Doctors set specialization = "Orthopedics" where doctor_id = 2;

 // Question 7://

 1.  select count(gender) from patients;

 2.  select max(floor(datediff('2024-07-12',DOB) / 365)) as average_age from patients;

 // Question 8://

 1.  delete from patients where patients_id = 2;


 ERROR: 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`hospital_management`.`appointments`, CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patients_id`))

 2.  delete from Appointments where appointment_id = 2;





 


