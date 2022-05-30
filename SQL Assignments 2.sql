-- ###################################################################### --
-- #                                                                    # --
-- #                  SQL Assignmen [APRIL2022]                         # --
-- #                    Author: Atanda Rilwan                           # --
-- #                                                                    # --
-- ###################################################################### --

--  DISCLAIMER
--  To the best of our knowledge, this data is fabricated, and it does not correspond to real people. 
--  Any similarity to existing people is purely coincidental.


DROP DATABASE IF EXISTS stores;
CREATE DATABASE IF NOT EXISTS stores; 
USE stores;

DROP TABLE IF EXISTS manufacturers,
                     products;


CREATE TABLE Manufacturers (
  id INT,
  manufacturer VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)   
);

CREATE TABLE Products (
  product_code INT,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL NOT NULL ,
  id INT NOT NULL,
  PRIMARY KEY(product_code), 
  FOREIGN KEY(id) REFERENCES Manufacturers(id)
);

INSERT INTO Manufacturers(id, manufacturer) VALUES(1,'HP');
INSERT INTO Manufacturers(id, manufacturer) VALUES(2,'Acer');
INSERT INTO Manufacturers(id, manufacturer) VALUES(3,'Dell');
INSERT INTO Manufacturers(id, manufacturer)VALUES(4,'Lenovo');
INSERT INTO Manufacturers(id, manufacturer) VALUES(5,'Apple');
INSERT INTO Manufacturers(id, manufacturer) VALUES(6,'Toshiba');

INSERT INTO Products(product_code, product_name, price, id) VALUES(1,'Hard drive',40000,5);
INSERT INTO Products(product_code, product_name, price, id) VALUES(2,'Memory',21000,6);
INSERT INTO Products(product_code, product_name, price, id) VALUES(3,'ZIP drive',26500,4);
INSERT INTO Products(product_code, product_name, price, id) VALUES(4,'Floppy disk',5000,6);
INSERT INTO Products(product_code, product_name, price, id) VALUES(5,'Monitor',42000,1);
INSERT INTO Products(product_code, product_name, price, id) VALUES(6,'DVD drive',14000,2);
INSERT INTO Products(product_code, product_name, price, id) VALUES(7,'CD drive',15750,2);
INSERT INTO Products(product_code, product_name, price, id)VALUES(8,'Printer',47250,3);
INSERT INTO Products(product_code, product_name, price, id) VALUES(9,'Toner cartridge',11550,3);
INSERT INTO Products(product_code, product_name, price, id) VALUES(10,'DVD burner',315000,2);

-- |---------------------------| --
-- |     List of Queries       | --
-- |---------------------------| --

-- 1: Select the names of all the products in the store.
-- 2: Select the names and the prices of all the products in the store.
-- 3: Select the name of the products with a price less than or equal to N35000.
-- 4: Select all the products with a price between N10000 and N30000.
-- 5: Select the product_name and price in dollar (i.e. the price must be divided by 400).
-- 6: Compute the average price of all the products.
-- 7: Compute the average price of all products with manufacturer id equal to 2.
-- 8: Compute the number of products with a price larger than or equal to N35000.
-- 9: Select the name and price of all products with a price larger than or equal to N35000, and sort first by price (in descending order), and then by product_name (in ascending order).
-- 10: Select all the data from the products, including all the data for each product's manufacturer.
-- 11: Select the product_name, price, and manufacturer name of all the products.
-- 12: Select the average price of each manufacturer's products, showing only the manufacturer's id.
-- 13: Select the average price of each manufacturer's products, showing the manufacturer's name.
-- 14: Select the names of manufacturer whose products have an average price larger than or equal to N25000.
-- 15: Select the name and price of the cheapest product.
-- 16: Select the name of each manufacturer along with the name and price of its most expensive product.
-- 17: Add a new product: Loudspeakers, N12500, manufacturer id 2.
-- 18: Update the name of product 8 to "Laser Printer".
-- 19: Apply a 10% discount to all products.
-- 20: Apply a 10% discount to all products with a price larger than or equal to N45000.
