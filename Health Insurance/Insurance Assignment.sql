create schema insurance;



use insurance;

create table Employee_info(
emp_id int PRIMARY KEY,
emp_name varchar(30),
emp_dob year,
emp_mail varchar(30),
emp_phone int(20)

);

INSERT INTO  Employee_info(emp_id,emp_name,emp_dob,emp_mail,emp_phone) VALUES
(01,'SHUKLA TRIVEDI',1990,'employee1@gmail.com',5000000),
(02,'someone',1990,'employee2@gmail.com',80000000),
(03,'aditya',1990,'employee3@gmail.com',500000),
(04,'raj',1990,'employee4@gmail.com',500000000);	


create table gpap(
gpap_id int  primary key,
emp_id int,
nominee varchar(30),
nominee_dob date,
foreign key (emp_id) references Employee_info(emp_id)

);
INSERT INTO  Employee_info(emp_id,emp_name,emp_dob,emp_mail,emp_phone) VALUES
(01,'SHUKLA TRIVEDI',1990,'employee1@gmail.com',5000000),
(02,'someone',1990,'employee2@gmail.com',80000000),
(03,'aditya',1990,'employee3@gmail.com',500000),
(04,'raj',1990,'employee4@gmail.com',500000000);

create table insurance_com(
ins_id int PRIMARY KEY,
emp_id int,
emp_name varchar(30),
emp_dob year,
designation varchar(30),
insu_opted boolean,
insur_amount int,
top_upamount int

);
INSERT INTO  insurance_com(ins_id,emp_id,emp_name,emp_dob,designation,insu_opted,insur_amount,top_upamount) VALUES
(01,01,'SHUKLA TRIVEDI',1990,'employee',true,300000,3000),
(02,02,'someone',1990,'employee',false,00000,0000),
(03,03,'aditya',1990,'employee3',true,300000,3000),
(04,04,'raj',1990,'employee4',true,300000,3000);

create table insu_cyle(
cycle_id int  primary key,
ins_id int,
emp_id int,
cycle year,
total_amount int ,
foreign key (ins_id) references insurance_com(ins_id),
foreign key (emp_id) references Employee_info(emp_id)

);

INSERT INTO  insu_cyle(cycle_id,ins_id,emp_id,cycle,total_amount) VALUES
(01,01,01,2010,300000),
(02,02,02,2010,300000),
(03,03,03,2010,300000),
(04,04,04,2010,300000);


create table emp_cycle(
cycle_id int primary key,
ins_id int,
emp_id int,
foreign key (ins_id) references insurance_com(ins_id),
foreign key (emp_id) references Employee_info(emp_id)

);

INSERT INTO  emp_cycle(cycle_id,ins_id,emp_id) VALUES
(01,01,01),
(02,02,02),
(03,03,03),
(04,04,04);




create table relation(
Rel_id int primary key,
nameof_rel varchar(20)


);

insert into relation(Rel_id,nameof_rel)values
(101,"father"),
(102,"mother"),
(103,"spouse");

create table dependent_info(
Depn_id int primary key,
Rel_id int,
emp_id int,
Depn_name varchar(30),
Depn_dob date,
Depn_relation varchar(30),
foreign key (Rel_id) references relation(Rel_id),
foreign key (emp_id) references Employee_info(emp_id)
);

INSERT INTO dependent_info(Depn_id,Rel_id,emp_id,Depn_name,Depn_dob,Depn_relation)  VALUES
(201,101,01,'vivek','2000-06-12','father'),
(202,102,02,'shivani','2000-08-12','mother'),
(203,103,03,'someone','2000-05-12','friend'),
(204,102,04,'mohankkkkk','2000-02-12','brother');

















	

select * from insurance_com;











