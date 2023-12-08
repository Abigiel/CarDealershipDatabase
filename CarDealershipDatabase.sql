DROP DATABASE IF EXISTS CarDealership; 
CREATE DATABASE IF NOT EXISTS CarDealership;


-- CREATING DEALERSHIPS TABLE 

CREATE TABLE Dealerships (
 Dealership_ID INT AUTO_INCREMENT,
 Name VARCHAR(50),
 Address VARCHAR(50),
 Phone VARCHAR(12),
 PRIMARY KEY (Dealership_ID)
);

-- CREATING VEHICLES TABLE 

CREATE TABLE Vehicles (
 VIN VARCHAR(17),
 Year INT,
 Make VARCHAR(20),
 Model VARCHAR(20),
 Odometer INT,
 Sold INT(1),
 PRIMARY KEY (VIN)
);

-- CREATING INVENTORY TABLE 

CREATE TABLE Inventory(
Dealership_ID INT,
VIN VARCHAR(17),
FOREIGN KEY(Dealership_ID) REFERENCES Dealerships(Dealership_ID),
FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);

-- CREATING SALES CONTRACTS TABLE 

CREATE TABLE Sales_contracts (
 Sale_ID INT AUTO_INCREMENT,
 VIN VARCHAR(17),
 FinalPrice DOUBLE,
 Date VARCHAR(8),
 PRIMARY KEY(Sale_ID),
 FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);

-- CREATING LEASE CONTRACTS TABLE 

CREATE TABLE Lease_contracts (
 Lease_ID INT AUTO_INCREMENT,
 VIN VARCHAR(17),
 FinalPrice DOUBLE,
 MonthlyPayment DOUBLE,
 Date VARCHAR(8),
 PRIMARY KEY(Lease_ID),
 FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);
 
USE CarDealership;

-- ADDING DETAILS OF CAR DEALERSHIPS

INSERT INTO Dealerships VALUES
(1, 'XYZ Auto Sales', "123 Main St, Cityville, California", '555-1234'),
(2, 'ABC Motors', "456 Oak Ave, Townsville, New York", '555-5678'),
(3, 'Sunny Cars Inc.', "789 Pine Rd, Villagetown, Texas", '555-9012'),
(4, 'Speedy Autos', "101 Maple Blvd, Hamlet City, Florida", '555-3456'),
(5, 'Elite Motors', "202 Cedar Lane, Countryside, Arizona", '555-7890'),
(6, 'Precision Vehicles', "303 Birch Street, Suburbia, Colorado", '555-2345'),
(7, 'Blue Sky Auto Mart', "404 Elm Avenue, Metropolis, Nevada", '555-6789'),
(8, 'Golden Wheels Dealership', "505 Spruce Road, Urbanville, Oregon", '555-0123');

-- ADDING DETAILS OF VEHICLES

INSERT INTO Vehicles VALUES
('1A2B3C4D5E6F7G8H', '2018', 'Toyota', 'Camry', 50000, 1),
('9I8J7K6L5M4N3O2P', '2020', 'Honda', 'Civic', 35000, 0),
('Q1W2E3R4T5Y6U7I8', '2019', 'Ford', 'Escape', 40000, 1),
-- ('O9I8U7Y6T5R4E3W2Q', '2022', 'Chevrolet', 'Malibu', 25000, 0),
('Z1X2C3V4B5N6M7K8L', '2017', 'Nissan', 'Altima', 60000, 1),
('A9S8D7F6G5H4J3K2L1', '2021', 'Hyundai', 'Sonata', 30000, 1),
-- ('M1N2B3V4C5X6Z7Q8W9', '2016', 'Kia', 'Optima', 70000, 0),
-- ('P9O8I7U6Y5T4R3E2W1Q', '2023', 'Volkswagen', 'Passat', 20000, 0),
('QAZWSXEDCRFVTGBYHNUJ', '2017', 'Subaru', 'Outback', 80000, 1),
('MIOLKJNHUBGVYFCTDXRZ', '2022', 'Mazda', 'CX-5', 18000, 0),
('ZAQ12WSX3EDC4RFV5TGB', '2019', 'Jeep', 'Cherokee', 45000, 1),
-- ('YHNUJMIKOLPQAZXSWEDC', '2020', 'BMW', 'X3', 30000, 0),
-- ('RFVTGBYHNUJMIKOLPQAZ', '2018', 'Mercedes-Benz', 'C-Class', 35000, 0),
('WSXEDC4RFVTGBYHNUJMI', '2021', 'Audi', 'A4', 22000, 0);

-- ADDING DETAILS FOR SALES CONTRACTS

INSERT INTO Sales_contracts VALUES
(1,'9I8J7K6L5M4N3O2P' ,38500, '20220915'),
(2,'WSXEDC4RFVTGBYHNUJMI',24200, '20210423'),
(3,'MIOLKJNHUBGVYFCTDXRZ',19,800, '20230307');


-- ADDING DETAILS FOR SALES CONTRACTS
-- leaseid, vin, finalp, mp, date

INSERT INTO Lease_contracts VALUES
(1,'O9I8U7Y6T5R4E3W2Q',27500, 471.78, '20230220' ),
(2,'M1N2B3V4C5X6Z7Q8W9', 77000, 1543.54, '20170908'),
(3,'P9O8I7U6Y5T4R3E2W1Q', 22000, 377.42,'20231205'),
(4,'YHNUJMIKOLPQAZXSWEDC', 33000, 565.13,'20220805'),
(5,'RFVTGBYHNUJMIKOLPQAZ',38500, 659.96, '20191014');


