DROP DATABASE IF EXISTS CarDealership;
CREATE database CarDealership;
USE CarDealership;
-------------------------------
CREATE TABLE  Dealership(
dealership_id int PRIMARY KEY NOT NULL auto_increment,
name          varchar(50),
address       varchar(50), 
phone         varchar(20));
----------------------------
CREATE TABLE Vehicles(
vin int PRIMARY KEY NOT NULL,
sold boolean,
make varchar (50),
model varchar(50),
color varchar(30),
price double);
------------------------------
CREATE TABLE Inventory( 
dealership_id int NOT NULL auto_increment,
vin int,
FOREIGN KEY (vin) REFERENCES Vehicles(vin),
FOREIGN KEY (dealership_id) REFERENCES Dealership(dealership_id));
------------------------------
CREATE TABLE Sales_Contracts(
id int PRIMARY KEY NOT NULL auto_increment,
numberOfContracts int,
saleDate DATE);


----------- Step 3: Populate Data ---------
INSERT INTO Dealership(
name, address, phone)
VALUES ("Denise Lopez","123 Liliana ln", "1800-300-0000"),
("Olivia Fields", "800 Lolita dr", "313-300-4112");

INSERT INTO Vehicles(
vin, sold, make, model, color, price)
VALUES (4424, true, "Ford", "Hybrid", "black", 40.000);

INSERT INTO Inventory(
vin, dealership_id)
VALUES (4424, 1);


INSERT INTO Sales_Contracts(
id, numberOfContracts, saleDate)
VALUES (234, 5, "2023-06-03");


