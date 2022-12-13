CREATE TABLE customers (
	customerID INT IDENTITY(1,1),
	FirstName VARCHAR(20),
	LastName VARCHAR(20),
	Phone numeric,
	city varchar(20),
	email varchar(40),
	PRIMARY KEY(customerID)
);

CREATE TABLE orders (
	OrderID INT IDENTITY(1,1),
	customerID INT NOT NULL,
	theQuantity int,
	PRIMARY KEY(OrderID),
	FOREIGN KEY (customerID) REFERENCES customers
);

CREATE TABLE products (
	ProductID INT IDENTITY(1,1),
	OrderID INT,
	ProductName varchar(20) NOT NULL,
	modelYear numeric,
	price INT NOT NULL,
	PRIMARY KEY (ProductID),
	FOREIGN KEY (OrderID) REFERENCES orders
);

INSERT INTO customers (FirstName, LastName)
VALUES ('Mayyas','Obeidat'), ('Suhaib','Alrousan'), ('Yazeed','Aldamen');

INSERT INTO orders (CustomerID,theQuantity)
VALUES (1,2), (2,5), (1,3), (3,4);

INSERT INTO products (OrderID, ProductName, modelYear,price)
VALUES (1,'milk',2022,10), (1,'tea',2022,15), (2,'cheese',2022,12), (2,'apple',2022,40), (3,'bread',2022,5), (3,'suger',2022,30) ;

INSERT INTO customers (FirstName, LastName)
VALUES ('Ahmad','Odat');

select * from customers
JOIN orders ON customers.customerID = orders.customerID
JOIN products ON products.OrderID = orders.OrderID;


select * from customers
LEFT JOIN orders ON customers.customerID = orders.customerID
LEFT JOIN products ON products.OrderID = orders.OrderID;