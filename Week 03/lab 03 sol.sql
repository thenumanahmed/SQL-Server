
-- task 1 + 2
create database Sales;

create table tblShippers(
	ShipperId varchar(10) primary key,
	CompanyName varchar(10),
)

create table tblCustomer(
	CustomerID varchar(50) primary key,
	CompanyName varchar(50),
	ContactName varchar(50),
	ContactTitle varchar(50),
	Address varchar(150),
	City varchar(15),
	Region varchar(15),
	PostalCode int,
	Country varchar(15),
	Phone varchar(20),
	Fax varchar(20),
)


create table tblOrders(
	OrderID varchar(50) primary key,
	CustomerID varchar(50) references tblCustomer,
	EmployeeID varchar(50),
	ShipName varchar(50),
	ShipAddress varchar(50),
	ShipCity varchar(50),
	ShipRegion varchar(50),
	ShipPostalCode int,
	ShipCountry varchar(50),
	ShipVia varchar(10) references tblShippers,
	OrderDate date,
	RequestDate date,
	ShippedDate date,
	Freight varchar(50)

)

create table tblSupplier(
	SupplierID varchar(50) primary key  ,
	Name varchar(50),
	Address varchar(150),
	City varchar(15),
	Province varchar(15),
)

create table tblProducts(
	ProductID varchar(50) primary key,
	SupplierID varchar(50) references tblSupplier,
	CategoryID varchar(50),
	ProductName varchar(50),
	EnglishName varchar(50),
	QuantityPerUnit int,
	UnitPrice int,
	UnitsInStock int,
	UnitsOnOrder int,
	ReorderLevel int,
	Discontinued bit,
)


create table tblOrderDetails(
	OrderID varchar(50) references tblOrders,
	ProductId varchar(50) references tblProducts,
	UnitPrice int,
	Quantity int,
	Discount float,
)

--task 3

Insert into tblShippers values('0012','ABC');
Insert into tblShippers values('1212','DEF');
Insert into tblShippers values('0212','HIG');

Insert into tblCustomer values('300','Intel','Ali','Manager','flat 8','Lahore','region1', 64556,'Pakistan','03001234567','0998877665');
Insert into tblCustomer values('352','IBM','Ahmad','Emp','flat 32','Islamabad','region2', 62336,'Pakistan','03045671447','0996526435');
Insert into tblCustomer values('32','Amazon','Ijaz','Emp','flat 44','Karachi','region3', 42336,'Pakistan','03032562447','3296526435');

insert into tblOrders values('OO454','300','E001','Ship1','Karachi-Port','Karachi','region1',61466, 'Pakistan','0012','2022-10-10','2022-10-12','2022-10-11','Land');
insert into tblOrders values('1','352','E001','Ship3','Toronto-Port','Toronto','region2',65567, 'UK','0212','2022-09-10','2022-09-12','2022-09-11','Sea');
insert into tblOrders values('2','352','E001','Ship3','Toronto-Port','Toronto','region2',65366, 'UK','1212','2022-09-10','2022-09-12','2022-09-11','Sea');
insert into tblOrders values('12','32','E001','Ship12','Karachi-Port','Islamabad','region3',62466, 'Pakistan','0212','2022-08-10','2022-08-12','2022-08-11','Air');

insert into tblSupplier values('Sup01','Anwar','Flat 22', 'Lahore', 'Punjab');
insert into tblSupplier values('Sup02','Ijaz','Flat 232', 'Karachi', 'Sindh');
insert into tblSupplier values('Sup03','Haider','Flat 93', 'Lahore', 'Punjab');

insert into tblProducts values('P01','Sup01','C001','Dairy Milk','Dairy Milk',9,120,15,12,2,0);
insert into tblProducts values('P022','Sup02','C003','Bread','Bread',6,120,15,12,2,0);
insert into tblProducts values('P013','Sup03','C005','Jam','Jam',2,120,15,12,2,0);

insert into tblOrderDetails values('OO454','P01',125,15,5);
insert into tblOrderDetails values('1','P022',15,19,4);
insert into tblOrderDetails values('12','P013',700,13,7);


 --task 4
Alter table tblProducts ADD constraint check_quantity_per_unit Check (QuantityPerUnit between 1 and 10);

--task 5
DELETE FROM tblOrders WHERE OrderID = '1' AND ShipCountry = 'UK';

--task 6
update tblOrderDetails set Discount = 20 where UnitPrice >=100; 

