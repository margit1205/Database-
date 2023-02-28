create schema oldhospital;
use hospital;



create table patient(
pid int primary key,
name varchar(30),
age int,
weight int,
gender varchar(30),
phone_no int(30),
disease varchar(30),
docid int 

);

insert  into patient(pid,name,age,weight,gender,phone_no,disease,docid) values
(1,"sam",19,45,"male",123123,"common-cold",1),
(2,"ram",29,55,"male",1213123,"common-cold",2),
(3,"neo",39,65,"male",1239123,"common-cold",3),
(4,"leo",49,65,"male",1231323,"common-cold",4),
(5,"jam",59,75,"male",1123123,"common-cold",5);

create table doctor(
docid int primary key,
docname varchar(30),
appointmentid int,
specialization varchar(20)

);

insert into doctor(docid,docname,specialization) values
(1,"Dr.Harry","child-specialist"),
(2,"Dr.Carry","physician"),
(3,"Dr.Marry","Bone"),
(4,"Dr.Jerry","Eyes"),
(5,"Dr.Love","psychology");

create table consult(
appointmentid int primary key,
docons date,
docid int,
pid int,
foreign key(pid) references patient(pid),
foreign key(docid) references doctor(docid)

);
insert into consult(appointmentid,docons,docid,pid)values(101,'2000-12-04',01,01),
(102,'2000-12-04',02,04),
(103,'2000-11-04',03,05),
(104,'2000-10-04',05,02),
(105,'2000-09-04',04,03);

create table lab(
labid int primary key,
docid int,
pid int ,
weight int,
ondate date,
pcateogry varchar(20),
amount int
);

insert into lab(labid,docid,pid,weight,ondate,pcateogry,amount)values
(101,1,1,50,'2000-06-01','typhoid',12000),
(102,2,2,50,'2000-06-08','maleria',12000),
(103,3,3,45,'2000-06-14','bloodtest',12000),
(104,4,4,45,'2000-06-22','xray',12000),
(105,5,5,55,'2000-06-12','typhoid',12000);

create table  oldpatient(
pid int primary key,
docid int,
labid int,
roomno int(10),
doadd date,
dodis date,
amountpaid int,
foreign key(labid)references lab(labid),
foreign key(pid) references patient(pid)
);
insert into oldpatient(pid,docid,labid,roomno,doadd,dodis,amountpaid)values
(1,1,101,21,'2022-04-03','2022-05-03',1000000),
(2,2,102,22,'2022-04-01','2022-05-30',1200000),
(3,3,103,23,'2022-04-03','2022-05-03',1500000),
(4,4,104,24,'2022-04-03','2022-05-03',100000),
(5,5,105,25,'2022-04-03','2022-04-15',10000);


create table newpatient(
 pid int primary key,
 doadd date,
 labid int,
 docid int,
 foreign key (labid) references lab(labid),
 foreign key (pid) references patient(pid)
);
insert into newpatient(pid,doadd,labid,docid)values
(01,'2023-01-12',101,1),
(02,'2023-01-12',102,2),
(03,'2023-01-12',103,3),
(04,'2023-01-12',104,4),
(05,'2023-01-12',105,5);

create table room(
roomno int primary key,
roomtype varchar(30),
status varchar(10),
pid int ,
foreign key (pid)references oldpatient(pid)

);

insert into room(roomno,roomtype,status,pid)values
(301,'emergency','isempty',01),
(302,'emergency','isempty',02),
(303,'emergency','isempty',03),
(304,'emergency','isempty',04),
(305,'emergency','isempty',05);



create table medicine(
medid int primary key,
medname varchar(30),
price int,
pid int,
docid int ,
foreign key(pid)references patient(pid)

);

insert into medicine(medid,medname,price,pid,docid) values(01,"paracetamol",200,02,03),
(02,"paracetamol",200,03,04),
(03,"paracetamol",200,04,05),
(04,"paracetamol",200,05,06),
(05,"paracetamol",200,01,07);


create table billinfo(
billno varchar(30) primary key,
medid int,
pid int ,
pcateogry varchar(30),
doctor_charge int ,
medicine_charge int,
room_charge int,
lab_charge int,
total_amount int,
foreign key(pid) references patient(pid)


);
insert into billinfo(billno,pid,pcateogry,doctor_charge,medicine_charge,room_charge,lab_charge,total_amount)values
('123345',01,'Eyes',12000,10000,15000,10000,47000),
('123346',02,'Eyes',12000,10000,15000,10000,47000),
('123347',03,'Eyes',12000,10000,15000,10000,47000),
('123348',04,'Eyes',12000,10000,15000,10000,47000),
('123349',05,'Eyes',12000,10000,15000,10000,47000);

create table staff(
sid int primary key,
docid int,
sname varchar(30),
stafftype varchar(40),
foreign key (docid) references doctor(docid)
);

insert into staff(sid,docid,sname,stafftype)values(01,02,"Ramesh","Cleaner"),
(02,03,"Suresh","Helper"),
(03,04,"Elena","Nurse"),
(04,05,"Heena","Nurse"),
(05,04,"Hope","Nurse");


























