DROP database if exists test33;
CREATE DATABASE test33;

Use test33;



CREATE TABLE employees (

 employeeNumber int(15) NOT NULL,
 lastName VARCHAR(15) NOT NULL,
 firstName VARCHAR(15) NOT NULL,
 email VARCHAR(55) NOT NULL,
 officeCode int(55) NOT NULL,
 reportsTo VARCHAR(22) NOT NULL,
 jobTitle VARCHAR(55) NOT NULL,
 PRIMARY KEY (employeeNumber)

);





CREATE TABLE products (

	productCode int(55) NOT NULL,
	productName VARCHAR(55) NOT NULL,
	productLine VARCHAR(55) NOT NULL,
	productScale VARCHAR(55) NOT NULL,
	productvendor VARCHAR(55) NOT NULL,
	productDescription VARCHAR(1000) NOT NULL,
	quantityInStock int(77) NOT NULL,
	buyPrice int(25) NOT  NULL,
	MSRP VARCHAR(55) NOT NULL,
	PRIMARY KEY (productCode)

);


CREATE TABLE productsLine (

  productLine VARCHAR(55) NOT NULL,
  textDescription VARCHAR(1000) NOT NULL,
  htmlDescription text,
  image mediumblob,
  PRIMARY KEY (productLine)

);



 CREATE TABLE offices (

 	officeCode int(55) NOT NULL,
 	city VARCHAR(55) NOT NULL,
 	phone int(18) NOT NULL,
 	addressLine1 VARCHAR(55) NOT NULL,
 	addressLine2 VARCHAR(55) NOT NULL,
 	state VARCHAR(22) NOT NULL,
 	country VARCHAR(22) NOT NULL,
 	postCode int(8) NOT NULL,
 	territory VARCHAR(22) NOT NULL,
 	PRIMARY KEY (officeCode)

 	);



 CREATE TABLE customers (

 	customerNumber int(55) NOT NULL,
 	customerName VARCHAR(55) NOT NULL,
 	contactFisrtName VARCHAR(22) NOT NULL,
 	contactLasttName VARCHAR(55) NOT NULL,
 	phone int(18) NOT NULL,
 	addressLine1 VARCHAR(55) NOT NULL,
 	addressLine2 VARCHAR(55) NOT NULL,
 	city VARCHAR(22) NOT NULL,
 	state VARCHAR(22) NOT NULL,
 	postCode int(8) NOT NULL,
 	country VARCHAR(12) NOT NULL,
 	salesRepEmployeeNumber int(88) NOT NULL,
 	creditLimit decimal(55) NOT NULL,
 	PRIMARY KEY (customerNumber)

 	);



CREATE TABLE orderdetails (

	orderNumber int(88) NOT NULL,
	productCode int(88) NOT NULL,
	quantityOrdered int(55) NOT NULL,
	priceEach int(55) NOT NULL,
	orderLineNumber int(55) NOT NULL,
	PRIMARY KEY (orderNumber)

);




CREATE TABLE orders (

	orderNumber int(88) NOT NULL,
	orderDate date,
	requiredDate datetime,
	shippedDate datetime,
	status VARCHAR(88) NOT NULL,
	comments VARCHAR(122) NOT NULL,
	customerNamber int(18) NOT NULL,
	PRIMARY KEY (orderNumber)

);


insert into orders (orderNumber, orderDate, requiredDate,
shippedDate, status, comments, customerNamber) values 

(10100, '2003-01-06', '2003-01-13', '2003-01-10', 'Shipped','NOT NULL',363),

(10168,'2003-10-28','2003-11-03','2003-11-01','Shipped','NOT NULL',161),

(10169,'2003-11-04','2003-11-14','2003-11-09','Shipped','Check on availability.',276),

(10170,'2003-11-04','2003-11-12','2003-11-07','Shipped','NOT NULL',452),

(10171,'2003-11-05','2003-11-13','2003-11-07','Shipped','NOT NULL',233),

(10172,'2003-11-05','2003-11-14','2003-11-11','Shipped','NOT NULL',175);



CREATE TABLE payments (

	customerNumber int(18) NOT NULL,
	checkNumber int(16) NOT NULL,
	paymentDate date,
	amount int(55) NOT NULL,
	PRIMARY KEY (customerNumber)

);

