DROP DATABASE IF EXISTS 
    CarDealership;
CREATE database CarDealership;
-------------------------------
CREATE TABLE  Dealerships(
dealership_id int PRIMARY KEY NOT NULL auto_increment,
name          varchar(50),
address       varchar(50), 
phone         varchar(12));
----------------------------
CREATE TABLE Vehicles(
vin int PRIMARY KEY NOT NULL,
sold boolean,
model varchar(50),
color varchar(30));
------------------------------
CREATE TABLE Inventory( 
dealership_id int PRIMARY KEY NOT NULL auto_increment,
vin int NOT NULL,

);

