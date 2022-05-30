
CREATE DATABASE stores; 
USE stores;


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

# Query 1
SELECT 
    *
FROM
    products;
    
    # Query 2
    SELECT 
    product_name "names",
    price
FROM
    products;
    
    # Query 3
    SELECT 
    product_name 'Name of products', price
FROM
    products
WHERE
    price < 35000 OR price = 35000;
    
    # Query 4
    SELECT 
    product_name
FROM
    products
WHERE
    price BETWEEN 10000 AND 30000;
    
    # Query 5
    SELECT 
    product_name, price/400 'Price($)'
FROM
    products;
    # OR THIS FORMULA
  SELECT 
    product_name, price div 400 'Price($)'
FROM
    products;  
    
    #Query 6
    SELECT 
    AVG(price)
FROM
    products;
    
    #Query 7
     SELECT 
    AVG(price), manufacturers.id
FROM
    products,
    manufacturers
WHERE
    manufacturers.id = 2;
    
    
    #QUERY 8
   SELECT DISTINCT
    COUNT(product_name)
FROM
    products
WHERE
    price >= 35000;
    
#QUERY 9
SELECT 
    product_name, price
FROM
    products
WHERE
    price >= 35000
ORDER BY price DESC , product_name ASC;

#Query 10
SELECT 
    *
FROM
    products, manufacturers; 
    
    #QUERY 11
    SELECT 
    product_name, price, manufacturer
FROM
    products, manufacturers; 
    
    #QUERY 12
    SELECT
      manufacturers.id, AVG(distinct price)
FROM
	manufacturers, products
    group by product_name;
  
    #QUERY 13
    SELECT
      manufacturer, AVG(distinct price)
FROM
	manufacturers, products
    group by product_name;
    
    #QUERY 14
    SELECT 
    manufacturer
FROM
    manufacturers,
    products
HAVING AVG(price) >= 25000;

#QUERY 15
SELECT 
    product_name, price
FROM
    products
HAVING MIN(price);

#QUERY 16
SELECT 
    manufacturer, product_name, MAX(price)
FROM
    manufacturers,
    products
GROUP BY manufacturer;

#QUERY 17
Insert into products (product_name, price, product_code, id)
values ('Loudspeakers', 12500, 11, 2);

#Query 18
UPDATE products 
SET 
    product_name = 'Laser printer'
WHERE
    product_code = 8;

#Query 19
SELECT 
    product_name,
    ROUND(price - (price * 10 / 100)) 'Discounted Price (10%)'
FROM
    products;

#QUERY 20
SELECT 
    product_name,
    ROUND(price - (price * 10 / 100)) 'Discounted Price (10%)'
FROM
    products
WHERE
    price >= 45000;





