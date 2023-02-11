create database assingment;
use assingment;
create table Department 
(
dep_id int primary key,
department_name varchar(30) NOT NULL ,
nameof_hod varchar(30)

);

create table Employees(
emp_id int primary key,
emp_name varchar(30),
emp_designation varchar(30),
emp_salary int,
foreign key(emp_id) references Department(dep_id)


);

alter table Employees add emp_email varchar(30);
select * from Employees;
create table adresses( 
pin_id int primary key,
city varchar(30),
state varchar(30),
country varchar(30),
foreign key(pin_id) references Employees(emp_id)

);

insert into  Department(dep_id,department_name,nameof_hod) values
(01,'computer science engineering','Prof. Jagdish '),
(02,'computer science engineering','Prof. vivek'),
(03,'computer science engineering','Prof. strange '),
(04,'computer science engineering','Prof. jagan ');
insert into  Employees values(01,'Shivam Kumar','Faculity',200,'akjsdk@gmail.com');
insert into Employees values(02,'Vivek Kumar','Trainer',100,'kajdlkfj');
insert into Employees values(03,'Jagan Kumar','Representer',1000,'jfsjdfl');
insert into Employees values(04,'Praneet Kumar','HOD',1000,'sdfkal');
insert into  adresses values(01,'Bokaro','Jharkhand','China');
insert into  adresses values(02,'supau;','Jharkhand','USA');
insert into  adresses values(03,'supaul','Bihar','India');
insert into  adresses values(04,'supaul','Bihar','SAUDI ARAB');

select * from Employees;
select * from Department;




select Employees.emp_id,Employees.emp_name,adresses.city,adresses.country
from adresses
inner join  Employees on Employees.emp_id=adresses.pin_id;


select nameof_hod
from Department
left join Employees
on Department.nameof_hod = Employees.emp_salary;

select pin_id
from adresses
right join Employees
on adresses.pin_id=Employees.emp_id;


select emp_name
from Employees
full  join adresses
on Employees.emp_name= city.adresses;

select * from adresses;
select * from department;
select * from employees;

















