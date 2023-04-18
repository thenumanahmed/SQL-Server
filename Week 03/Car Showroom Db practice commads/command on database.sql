-- select all (*)
select * from Company;

-- select column
select compId from Company;

-- select multiple column
select compId,compName from Company;


-- select top 
select top 3 compId from Company;

-- select distinct
select distinct(compId) from Car;

-- select count
select count(compId) from Car;

-- select max
select max(carId) from Car;


-- select min
select min(carId) from Car;


-- select average
select avg(carId) from Car;



-- fully qualified names
select max(CarShowRoom.dbo.Car.carId) from  CarShowRoom.dbo.Car;

-- like 
select carId,compId,regNo,variantName,purchaseVal,saleVal from Car where variantName like 'gran%';


-- group by
select compId,count(compId) from Car group by compId;



-- order by
select carId ,compId, Model from Car order by compId desc;