/* this is the name of new database */
DROP database if exists `Super_m`;
CREATE DATABASE `Super_m`; 

USE `Super_m`; 

/* Table Structure for the table `Offices` */
DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
	`officeCode` VARCHAR(10) NOT NULL, 
	`city` VARCHAR(50) NOT NULL, 
	`phone` VARCHAR(20) NOT NULL, 
	`addressLine1` VARCHAR(50) NOT NULL, 
	`addressLine2` VARCHAR(50) NOT NULL, 
	`state` VARCHAR(50) NOT NULL, 
	`country` VARCHAR(50) NOT NULL, 
	`postCode` VARCHAR(15) NOT NULL, 
	`territory` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`officeCode`)
  
)ENGINE=INNODB DEFAULT CHARSET=utf8; 

INSERT INTO `offices`(
	`officeCode`,
	`city`,
	`phone`,
	`addressLine1`, 
	`addressLine2`,
	`state`, 
	`country`,
	`postCode`,
	`territory`) VALUES 

	(11,'saltLake',0944892,'276west_aite','mainStreet65','Utah','US',37642,'fs'), 
	(12,'saltLake',8373353,'284west_aitw','mainStewwww','Utah','US',37642,'fs'), 
	(13,'LosAngelos',83732572,'932_gate29l','ha_7363St','Calfornia','US',92846,'Flex');
	



/* Table Structure for the table `employees` */
DROP TABLE IF EXISTS `employees`; 

CREATE TABLE `employees` (
    `employeeNumber` INT(10) NOT NULL AUTO_INCREMENT, 
    `lastName` VARCHAR(50) NOT NULL,
    `firstName` VARCHAR(50) NOT NULL, 
    `extention` VARCHAR(50) NOT NULL, 
    `email` VARCHAR(50) NOT NULL, 
    `officeCode` VARCHAR(50) NOT NULL, 
    `reportsTo` INT(10) NOT NULL, 
    `jobTitle` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`employeeNumber`)

)ENGINE=INNODB DEFAULT CHARSET=utf8; 


INSERT INTO `employees` (
    `employeeNumber`, 
    `lastName`,
    `firstName`, 
    `extention`, 
    `email`, 
    `officeCode`, 
    `reportsTo`, 
    `jobTitle`) VALUES 

	(33,'Joseph','Steve','D_Manager','steveen.jd@gmail.com',8322,8809,'Office_dirctive'),
	(34,'Levar','Jbaem','Laue','Jabaem1@gmail.com',82731,83900,'dsigner'), 
	(35,'Gressy','Blati','Dva','Bla@gmail.com',92464,320421,'Data_Developer');



/* Table Structure for the table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE  `customers` (
	`customerNumber` INT(10) NOT NULL AUTO_INCREMENT, 
	`customerName` VARCHAR(50) NOT NULL, 
	`contactLastName`  VARCHAR(50) NOT NULL,
	`contactFisrtName` VARCHAR(50) NOT NULL, 
	`phone` VARCHAR(50) NOT NULL, 
	`addressLine1` VARCHAR(50) NOT NULL, 
	`addressLine2` VARCHAR(50) NOT NULL, 
	`city` VARCHAR(50) NOT NULL, 
	`state` VARCHAR(50) NOT NULL,
	`postCode` VARCHAR(15) NOT NULL, 
	`country` VARCHAR(50) NOT NULL, 
	`salesRepEmployeeNumber` INT(10) NOT NULL, 
	`crditLimit` INT(10) NOT NULL, 
    PRIMARY KEY (`customerNumber`)
     
)ENGINE=INNODB DEFAULT CHARSET=utf8; 



INSERT INTO `customers` (
	`customerNumber`, 
	`customerName`, 
	`contactLastName`,
	`contactFisrtName`, 
	`phone`, 
	`addressLine1`, 
	`addressLine2`, 
	`city`, 
	`state`,
	`postCode`, 
	`country`, 
	`salesRepEmployeeNumber`, 
	`crditLimit` ) VALUES 

   (15,'Vilodi','Deiver','Vilodi',03856393,'West736 38north selona','agd_384w','pafflow','NW',87333,'US',974337,08753739),
   (16,'Sara','Sparn','Sara',037356922,'North287-2828','West933','Robencity','Nevada',925445,'US',091737,001744584), 
   (17,'Swarez','Falllon','Swarez',92856533,'Easit3978_66','MainSt-282','Plamfadi','NewMaxico',386443,'US',972338,1088774844); 



/* Table Structure for the table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products`(
    `productsCode` INT(15) NOT NULL AUTO_INCREMENT, 
    `productName`VARCHAR(70) NOT NULL, 
    `productLine` VARCHAR(50) NOT NULL, 
    `productScale`VARCHAR(10) NOT NULL, 
    `productVender`VARCHAR(50) NOT NULL, 
    `productDescription`TEXT NOT NULL, 
    `quantityInStock`SMALLINT(6), 
    `buyPrice` DECIMAL(8,2), 
    `MSRP` DECIMAL(8,2), 
    PRIMARY KEY (`productsCode`)
	/* CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productsCode`) REFERENCES `employees` (`employeeNumber`) */
    
)ENGINE=INNODB DEFAULT CHARSET=utf8; 

INSERT INTO `products`(
    `productsCode`,
    `productName`, 
    `productLine`, 
    `productScale`, 
    `productVender`, 
    `productDescription`, 
    `quantityInStock`, 
    `buyPrice`, 
    `MSRP`) VALUES 
	(837,'IT','ELE','12Kilogram','Sony','DataShow Projector: Uses to show the data on the whiteboard',77,740.00,282.00), 
	(207,'IT','ELE','7Kilogram','Dell','ScreenMontor: This product is uses as screen for the PC',240,120.00,827.00), 
	(653,'IT','ELE','80Kilogram','Canon','Printer: This product uses to print office papers',41,580.22,927.50);



/* Table Structure for the table `productLines` */
DROP TABLE IF EXISTS `productLines`; 

CREATE TABLE `productLines` (
	`productLine` VARCHAR(50) NOT NULL, 
	`textDescription` VARCHAR(4000) NOT NULL, 
	`htmlDescription` TEXT, 
	`image` BLOB, 
	PRIMARY KEY (`productLine`)
	
	
)ENGINE=INNODB DEFAULT CHARSET=utf8; 

INSERT INTO `productLines` (
	`productLine`,
	`textDescription`,
	`htmlDescription`,
	`image` ) VALUES 
	('classic cars','Attention car enthusiasts: Make your wildest car ownership dreams come true.',NULL,NULL),
	('Motor Cycls','Our motorcycles are state of the art replicas of classic as well as contemporary motorcycle',NULL,NULL),
	('Ships','The perfect holiday or anniversary gift for executives, clients, friends, and family.',NULL,NULL);




/* Table Structure for the table `productDetails` */
DROP TABLE IF EXISTS `productDetails`; 

CREATE TABLE `productDetails` (
	`orderNumber` INT(10) NOT NULL, 
	`productCode` VARCHAR(15) NOT NULL, 
	`quantityOrdered` SMALLINT(5) NOT NULL, 
	`priceEach` DECIMAL(7,2) NOT NULL, 
	`orderLineNumber` TINYINT(3),
	PRIMARY KEY (`orderNumber`, `productCode`)
	
)ENGINE=INNODB DEFAULT CHARSET=utf8; 

INSERT INTO `productDetails` (
	`orderNumber`, 
	`productCode`, 
	`quantityOrdered`, 
	`priceEach`, 
	`orderLineNumber`) VALUES 
	(383,'927464',23,63.80,87), 
	(668,'2288',12,837.99,95), 
	(183,'87352',49,938.73,63); 



/* Table Structure for the table `payments` */
DROP TABLE IF EXISTS `payments`; 

CREATE TABLE `payments`(
	`customerNumber` INT(10) NOT NULL, 
	`checkNumber` VARCHAR(50) NOT NULL, 
	`paymentDate` DATE NOT NULL, 
	`amount` DECIMAL(8,2) NOT NULL, 
	PRIMARY KEY (`customerNumber`, `checkNumber`) 
    /* FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`) */

)ENGINE=INNODB DEFAULT CHARSET=utf8; 

INSERt INTO `payments`(
	`customerNumber`, 
	`checkNumber`, 
	`paymentDate`, 
	`amount`) VALUES 
	(726,'292','2008-01-18',654.88 ),
	(837,'282','2009-12-4',984.22),
	(224,'867','2010-02-04',537.00);








