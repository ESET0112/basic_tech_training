-- TASK 0

-- Create Database 
create database Meter

-- Using the Database
use Meter


-- Creating table Customers
create table Customers(CustomerId int primary key,Customer_Name varchar(50),
Customer_Address varchar(100),Region varchar(20))


-- Insert values in table Customers
insert into Customers values
(101,'Nilanjan','Kolkata','East'),
(102,'Aniket','Mumbai','west'),
(103,'Brijesh','Uttarakhand','North'),
(104,'Soumyadip','Kolkata','East'),
(105,'surendra','Chennai','South')

-- Get all the records of Customers table
select * from Customers

-- Creating table SmartMeterReadings
create table SmartMeterReadings(MeterId int primary key,CustomerId int,
Location varchar(100), InstalledDate date, ReadingDatetime datetime, 
EnergyConsumed float,foreign key (CustomerId) references Customers (CustomerId))


-- Insert values in table SmartMeterReadings
insert into SmartMeterReadings values
(5001,101,'basement','2015-02-05','2025-08-04 11:23:00', 20),
(5002,102,'rooftop','2016-05-08','2024-03-16 09:44:00', 8),
(5003,103,'rooftop','2014-06-20','2025-03-20 13:35:00', 38),
(5004,104,'basement','2014-03-12','2024-05-09 11:26:00', 64),
(5005,105,'basement','2018-08-09','2025-07-28 10:12:00', 24),
(5006,101,'basement','2015-02-05','2025-08-20 11:23:00', 8),
(5007,104,'basement','2014-03-12','2024-07-20 12:27:00', 15)


-- Get all the records of SmartMeterReadings table
select * from SmartMeterReadings






-- TASK 1

-- Fetch all smart meter readings where EnergyConsumed is between 10 and 50 kWh
select * from SmartMeterReadings where EnergyConsumed between 10 and 50


-- Fetch all smart meter readings where ReadingDatetime is between 2024-01-01 and 2024-12-31
select * from SmartMeterReadings where ReadingDatetime between '2024-01-01 00:00:00' and '2024-12-31 23:59:59'

-- Fetch all smart meter readings exclude meters installed after '2024-06-30'
select * from SmartMeterReadings where InstalledDate <= '2024-06-30'



-- TASK 2

-- For each Customer,calculate: Average energy consumed per reading
select CustomerId,avg(EnergyConsumed) as Average_Energy_Consumed from SmartMeterReadings group by CustomerId

-- For each Customer,calculate: Maximum energy consumed in a single reading 
select CustomerId,max(EnergyConsumed) as Max_Energy_Consumed from SmartMeterReadings group by CustomerId

-- Only include readings from current year
select * from SmartMeterReadings where year(ReadingDatetime) =2025
