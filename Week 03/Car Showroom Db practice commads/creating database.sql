create database CarShowRoom;

create table Company(
	compId int primary key,
	compName varchar(25),
	compPhoneNo varchar(15), -- ptcl
)

create table Car(
	carId int primary key,
	EngineNo varchar(20) not null,
	ChasisNo varchar(20) not null,
	compId int references Company,	--foreign key
	variantName varchar(30),
	model varchar(4),	--2023
	regNo varchar(15),
	purchaseVal int,
	saleVal int,
)

create table Customer(
	customerId int primary key,
	customerName varchar(25) not null,
	customerCNIC varchar(16),
	customerPhoneNo varchar(16),	--ptcl
)

create table Employee(
	empId int primary key,
	empName varchar(25) not null,
	empPhoneNo varchar(25),	--ptcl 
	empCNIC varchar(16),
	salary int,
	Designation varchar(20),		--manager/ sales person
)

create table Sales(
	receiptNo int primary key,
	customerId int references Customer,
	carId int references Car,
	empId int references Employee,	--who dealed the customer
	amount int null,
	dateOfSale date not null,
)

create table pendingSale(
	carId int references Car,
	customerId int references Customer,
	pendingAmount int not null,
)


