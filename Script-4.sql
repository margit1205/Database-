create  schema pharmacy;
use pharmacy;
drop schema pharmacy;




create table customer(
 cusid int unique key,
 firstname varchar(90),
 lastname  varchar(90),
 phone     bigint(30),
 gender     varchar(30),
 address    varchar(90),
 dob        date

);


insert into customer(cusid,firstname,lastname,phone,gender,address,dob)values
(1,"asma","saheen",988888,"female","hydrabad","2001-08-12"),
(2,"ashok","poola",3337738,"male","hydrabad","2001-09-02"),
(3,"shivam","patida",1988888,"male","ujjain","2000-08-13"),
(4,"javed","khan",16368,"male","bihar","2001-03-08");






create table employee(
employeeid int primary key,
cusid int unique key,
firstname varchar(30),
lastname varchar(30),
role varchar(30),
salary int

);
insert into employee(employeeid,cusid,firstname,lastname,role,salary)values
(201,101,"john","key","helper",12000),
(202,102,"rohn","mey","helper",12000),
(203,103,"mohn","ley","helper",12000),
(204,104,"lohn","ney","helper",12000);


create table medicine(
drugname varchar(90),
medid int unique key,
manufacturer varchar(90),
stock int,
price int
);
insert into medicine(drugname,medid,manufacturer,stock,price)values
("paracetamol",401,"dolo",1000,400),
("benadryl",402,"bena",5000,600),
("cefixime 200mg ",403,"cefxi",9000,200),
("sinarest",404,"sina",1000,400);


create table prescription(
prescriptionid int unique key,
cusid int,
docid int,
prescriptiondate date,
foreign key(cusid)references customer(cusid)


);
insert into prescription(prescriptionid,cusid,docid,prescriptiondate)values
(501,1,486,"2023-12-12"),
(502,2,487,"2023-11-11"),
(503,3,488,"2023-10-10"),
(504,4,489,"2023-09-09");

create table orderlist(
orderid int(20) primary key,
prescriptionid int(30),
employeeid int(40),
medid int(50) unique key,
orderdate date,
foreign key (prescriptionid)references prescription(prescriptionid),
foreign key(medid)references medicine(medid),
foreign key(employeeid)references employee(employeeid)

);


insert into orderlist(orderid,prescriptionid,employeeid,medid,orderdate)values
(1001,501,201,401,"2023-12-01"),
(1002,502,202,402,"2023-12-01"),
(1003,503,203,403,"2023-12-01"),
(1004,504,204,404,"2023-12-01");

create table bill(
billno int primary key,
orderid int(40),
cusid int(30),
totalamount int(20),
foreign key (orderid)references orderlist(orderid),
foreign key (cusid)references customer(cusid)

);


insert into bill(billno,orderid,cusid,totalamount)values
(900,1001,1,12000),
(901,1002,2,13000),
(902,1003,3,14000),
(903,1004,4,15000);

