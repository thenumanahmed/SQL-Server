-- inserting into company table
insert into Company values ( 001, 'Hyundai', '03000000001');
insert into Company values ( 002, 'Honda', '03000000002');
insert into Company values ( 003, 'Toyota', '03000000003');
insert into Company values ( 004, 'Tesla', '03000000004');
insert into Company values ( 005, 'Audi', '03000000005');

select * from Company;

--inserting into Car table
insert into Car values(0011,'ABC0011', 'XYZ0011' , 001 , 'Santro' , '2003' , 'ABCXYZ11', 1500000,1800000);
insert into Car values(0012,'ABC0012', 'XYZ0012' , 002 , 'City' , '2013' , 'ABCXYZ12', 1800000,2100000);
insert into Car values(0013,'ABC0013', 'XYZ0013' , 002 , 'Civic' , '2023' , 'ABCXYZ13', 6500000,6800000);
insert into Car values(0014,'ABC0014', 'XYZ0014' , 003 , 'Grande-1.8' , '2019' , 'ABCXYZ14', 5500000,5900000);
insert into Car values(0015,'ABC0015', 'XYZ0015' , 005 , 'A5' , '2018' , 'ABCXYZ15', 8500000,9000000);

select * from Car;


-- inserting into customer table
insert into Customer values(0101,'Ali','3520200001010',03000000101);
insert into Customer values(0102,'Amad','3520200001020',03000000102);
insert into Customer values(0103,'Akbar','3520200001030',03000000103);
insert into Customer values(0104,'Ahmad','3520200001040',03000000104);
insert into Customer values(0105,'Ilyas','3520200001050',03000000105);

select * from Customer;

-- inserting into Employee

insert into employee values(1001,'Imran','03000001001','3520200010010',25000,'Salesman');
insert into employee values(1002,'Iqbal','03000001002','3520200010020',35000,'Senior Salesman');
insert into employee values(1003,'Haider','03000001003','3520200010030',25000,'Salesman');
insert into employee values(1004,'Salman','03000001004','3520200010040',26000,'Salesman');
insert into employee values(1005,'Yousaf','03000001005','3520200010050',28000,'Salesman');

select * from Employee;


-- inserting into sales
insert into Sales values(10001,0101,0014,1002,5700000,'20101212');
insert into Sales values(10002,0101,0015,1003,7000000,'20220125');
insert into Sales values(10003,0102,0011,1002,1700000,'20170326');
insert into Sales values(10004,0105,0011,1003,1800000,'20191227');
insert into Sales values(10005,0104,0013,1003,6500000,'20181219');


select * from Sales;

-- inserting into pendingSale
insert into pendingSale values(0011,0101,200000);
insert into pendingSale values(0011,0102,500000);

select * from pendingSale;

