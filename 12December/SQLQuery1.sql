CREATE DATABASE TASK;

CREATE TABLE customers (

    customerID int not null,
    FirstName varchar(20),
	LastName varchar(20),
	Phone numeric,
	city varchar(20),
	email varchar(40),
);

CREATE TABLE Orders (
  
    OrderID int,
	customerID int,
	orderCity varchar(20),
	storeID int,
);

CREATE TABLE Product (

     ProductID int,
	 ProductName varchar(20),
	 modelYear numeric,

);

CREATE TABLE Employees (

    EmployeeID int,
    FirstName varchar(20),
	LastName varchar(20),
	Phone numeric,
	city varchar(20),
	email varchar(40),
  
);