/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.19-nt : Database - Inventory/Sales System
*********************************************************************
Server version : 5.0.19-nt
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `AL BARKAAT JEWELLERS`;

USE `AL BARKAAT JEWELLERS`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `Customer` */

DROP TABLE IF EXISTS `Customer`;

CREATE TABLE `Customer` (
  `User_ID` varchar(40) NOT NULL default '',
  `Name` varchar(15) default NULL,
  `Phone_num` varchar(40) default NULL,
   `City` varchar(15) default NULL,
   `Loan` varchar(10),

  PRIMARY KEY  (`User_ID`) 

)ENGINE=InnoDB;

/*Data for the table `Customer` */

insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values ('1','Ayesha','Shafqat','0900-76662','rawalpindi','$500');
 insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values('2','Usema','Ishtiaq','0877-27778','rawalpndi','$988');
insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values ('3','sara','irfan','0900-74462','rawalpindi','$500');
 insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values('4','shagufta','Imran','0877-244478','rawalpndi','$988');
insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values ('5','farooq','baig','0900-76442','rawalpindi','$500');
 insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values('6','ali','rahman','0877-27778','rawalpndi','$988');
insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values ('7','anjum','ali','0900-76662','rawalpindi','$500');
 insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values('8','anum','umer','0877-27778','rawalpndi','$988');
insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values ('9','khalda','umair','0900-76662','rawalpindi','$500');
insert  into `Customer`(`User_ID`,`First_Name`,`Last_Name`,`Phone_num`,`City`,`loan` ) values('10','saba','kanwal','0877-27778','rawalpndi','$988');




/*Table structure for table `Order` */

DROP TABLE IF EXISTS `Order`;



CREATE TABLE `Order` (
  `Order_ID` varchar(40) NOT NULL default '',
  `Order_name` varchar(40) NOT NULL default '',
  `User_ID` varchar(40) NOT NULL default '',
   `limit` varchar(15) default NULL,
  `Weight` varchar(15) default NULL,
   `E_id` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`Order_ID`),
INDEX (User_ID),
        FOREIGN KEY (User_ID)
        REFERENCES Customer(User_ID),
        INDEX (E_id),
               FOREIGN KEY (E_id)
                 REFERENCES Employee(E_id)

) ENGINE=InnoDB;

/*Data for the table `Order` */

insert  into `Order`(`Order_ID`,`Order_name`,`User_ID`,`limit`,`Weight`,`E_id`) values ('1','Dimond',2,5000,'50 gm','5');
insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`weight`,`E_id`) values ('2','ring',3,6000,'48gm',6);
insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`Weight`,`E_id`) values ('3','Dimond',4,5000,'50 gm',8);
insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`weight`,`E_id`) values ('4','ring',7,6000,'48gm',7);


insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`Weight`,`E_id`) values ('5','Dimond',5,5000,'50 gm',3);
insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`weight`,`E_id`) values ('6','ring',6,6000,'48gm',11);


insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`Weight`,`E_id`) values ('7','Dimond',11,5000,'50 gm',14);
insert  into `Order`(`Order_ID`,`Order_name`,`limit`,`weight`,`E_id`) values ('8','ring',6,6000,'48gm',9);

/*Table structure for table `employees_information ` */

DROP TABLE IF EXISTS `employees_information `;


CREATE TABLE employees_information (
E_id int(11) NOT NULL ,
E_Name varchar(50) NOT NULL,
changes_in_data datetime DEFAULT NULL,
action varchar(50) DEFAULT NULL,
Salary varchar (50) DEFAULT NULL,
PRIMARY KEY (E_id));

/*Table structure for table `Invoice` */

DROP TABLE IF EXISTS `Invoice`;


CREATE TABLE `Invoice` (
  `Rec_Num` varchar(40) NOT NULL default '',
  `Date` varchar(40) NOT NULL default '',
`User_ID` varchar(40) NOT NULL default '',
  `Limit` varchar(40) NOT NULL default '',
`E_id` varchar(40) NOT NULL default '' ,
 
       PRIMARY KEY  (`Rec_Num`),
        INDEX (User_ID),
        FOREIGN KEY (User_ID)
        REFERENCES Customer(User_ID),
        INDEX (E_id),
               FOREIGN KEY (E_id)
                 REFERENCES Employee(E_id)
) ENGINE=InnoDB;

/*Data for the table `Invoice` */

insert  into `Invoice`(`Rec_Num`,`Date`,`User_Id`,`Limit`,`E_id`) values ('1','10-12-2011','9','7',1);

insert  into `Invoice`(`Rec_Num`,`Date`,`User_Id`,`Limit`,`E_id`) values ('2','11-12-2001','9','7',2);

insert  into `Invoice`(`Rec_Num`,`Date`,`User_Id`,`Limit`,`E_id`) values ('3','12-12-2009','9','7',5);

insert  into `Invoice`(`Rec_Num`,`Date`,`User_Id`,`Limit`,`E_id`) values ('4','13-12-2011','9','7',1);

insert  into `Invoice`(`Rec_Num`,`Date`,`User_Id`,`Limit`,`E_id`) values ('5','14-12-2011','9','7',1);




/*Table structure for table `Purchase` */

DROP TABLE IF EXISTS `Purchase`;


CREATE TABLE `Purchase` (
  `P_Num` varchar(40) NOT NULL default '',
`User_Id` varchar(40) NOT NULL default '',
  `Date` varchar(40) NOT NULL default '',
`Quality` varchar(40) NOT NULL default '',
 
  PRIMARY KEY  (`P_Num`),
INDEX (User_ID),
        FOREIGN KEY (User_ID)
        REFERENCES Customer(User_ID)

) ENGINE=InnoDB;

/*Data for the table `Purchase` */

insert  into `Purchase`(`P_Num`,`User_Id`,`Date`,`Quality`) values ('1','7','10-12-2011','good');

insert  into `Purchase`(`P_Num`,`User_Id`,`Date`,`Quality`) values ('2','6','10-12-2011','good');
insert  into `Purchase`(`P_Num`,`User_Id`,`Date`,`Quality`) values ('3','10','10-12-2011','good');
insert  into `Purchase`(`P_Num`,`User_Id`,`Date`,`Quality`) values ('4','8','10-12-2011','fine');
insert  into `Purchase`(`P_Num`,`User_Id`,`Date`,`Quality`) values ('5','9','10-12-2011','good');



/*Table structure for table `product` */

DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
  `P_id` varchar(40) NOT NULL default '',
`P_Price` varchar(40) NOT NULL default '',
  `P_Num` varchar(40) NOT NULL default '',
 
  PRIMARY KEY  (`P_id`),
INDEX (P_Num),
        FOREIGN KEY (P_Num)
        REFERENCES Purchase(P_Num)

) ENGINE=InnoDB;

/*Data for the table `product` */

insert  into `product`(`P_id`,`P_Price`,`P_Num`) values('110','21,300','1');

insert  into `product`(`P_id`,`P_Price`,`P_Num`) values('111','3,500','2');

insert  into `product`(`P_id`,`P_Price`,`P_Num`) values('112','10,000','3');

insert  into `product`(`P_id`,`P_Price`,`P_Num`) values('113','2100','4');

insert  into `product`(`P_id`,`P_Price`,`P_Num`) values('114','3,150','5');


/*Table structure for table `O` */

DROP TABLE IF EXISTS `Order_History`;

CREATE TABLE `Order_History` (
  `OdH_Id` int(11) NOT NULL default '0',
  `Od_Date` date default NULL,
  `Od_Delv_Date` date default NULL,
  `Od_Des` int(30) default NULL,
  `Order_ID` varchar(40) NOT NULL default '',

  PRIMARY KEY  (`OdH_Id`)

INDEX (Order_ID),
        FOREIGN KEY (Order_ID)
        REFERENCES Order(Order_ID)
) ENGINE=InnoDB;

/*Data for the table `Order_History` */

insert  into `Order_History`(`OdH_ID`,`Od_Date`,`Od_Delv_Date`,`Od_Des`,`Order_ID`) values (1,1,'2006-01-04','2006-02-04',033300876567,'1');
insert  into `Order_History`(`OdH_ID`,`Od_Date`,`Od_Delv_Date`,`Od_Des`,`Order_ID`) values(2,1,'2006-06-07','2006-007-30',03330986561,'2');
insert  into `Order_History`(`OdH_ID`,`Od_Date`,`Od_Delv_Date`,`Od_Des`,`Order_ID`) values(2,3,'2006-02-05','2006-02-28',030320896567,'3');

Table structure for table `Employee` */

DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee` (
  `E_ID` varchar(40) NOT NULL default '',
  `E_Name` varchar(15) default NULL,
  `Design` varchar(40) default NULL,
  `Address` varchar(40) default NULL,
   `Ph_Num` varchar(15) default NULL,
   `Limit` varchar(10) default NULL,
`Salary` varchar(10) default NULL,

  PRIMARY KEY  (`E_ID`) 

)ENGINE=InnoDB;

/*Data for the table `` */

insert  into `Employee`(`E_id`,`E_Name`,`Design`,`Address`,`Ph_Num`,`Limit`,`Salary`) values ('1',employee','Rawalapindi','03136789090','10 per day','Rs/5,000);
insert  into `Employee`(`E_id`,`E_Name`,`Design`,`Address`,`Ph_Num`,`Limit`,`Salary`) values ('2','Raza','Salesman','Satellite town Rawalapindi','03339868690','5 per day','RS/9,500');
insert  into `Employee`(`E_id`,`E_Name`,`Design`,`Address`,`Ph_Num`,`Limit`,`Salary`)values ('3','Qadir','temporary Worker','abbotabad','0333342690','5 per day','RS/8,000');


*Table structure for table `Vendor` */

DROP TABLE IF EXISTS `Vendor`;

CREATE TABLE `Vendor` (
`Vendor_No` varchar(40) NOT NULL default '',
  `Name` varchar(40) default NULL,
 `Limit`varchar(40) default NULL,
  `Address` varchar(40) default NULL,
   `Total` varchar(15) default NULL,
   `Paid` varchar(15) default NULL,
    `Loan` varchar(15) default NULL,
     `E_ID` varchar(40) default NULL,
    


  PRIMARY KEY  (`Vendor_No`),
        INDEX (E_ID),
               FOREIGN KEY (E_ID)
                 REFERENCES Employee(E_ID)
) ENGINE=InnoDB;

/*Data for the table `Vendor` */

insert  into `Vendor`(`Vendor_No`,`Name`,`Limit`,`Address`,`Total`,`Paid`,`Loan`,`E_id`) values ('1','Asim','123','Rawalapindi','Rs/25000','Rs/23000','Rs/2000',1);
insert  into `Vendor`(`Vendor_No`,`Name`,`Limit`,`Address`,`Total`,`Paid`,`Loan`,`E_id`) values('4','Adnan','233','Lahore','Rs/25,000','Rs/15,000','Rs/10,000',1);
insert  into `Vendor`(`Vendor_No`,`Name`,`Limit`,`Address`,`Total`,`Paid`,`Loan`,`E_id`) values('11','Khuram','893','Sialkot','Rs/70,000','Rs/55,000','Rs/15,000',1);


/*Table structure for table `Inventory` */

DROP TABLE IF EXISTS `Inventory`;


CREATE TABLE `INVENTORY`(
`Inv_id` varchar(40) NOT NULL default '',
   
    `Type` varchar(20) default NULL,
    `Items_in_stock` int(20) Default NULL,
   `P_id` int(10) NOT NULL defaulty,
     `E_ID` varchar(40) NOT NULL default ,
     `Vendor_No` varchar(40) NOT NULL default  ,
     


PRIMARY KEY(`Inv_id`),
INDEX (P_id),
        FOREIGN KEY (P_id)
        REFERENCES Product(P_id),
 INDEX (E_ID),
               FOREIGN KEY (E_ID)
                 REFERENCES Employee(E_ID),
INDEX (Vendor_No),
               FOREIGN KEY (Vendor_No)
                 REFERENCES Vendor(Vendor_No)

)Engine=InnoDB;

/*Data for the table `Inventory` */

insert into `Inventory`(`Inv_id`,`Type`,`Items_in_stock`,`P_id`,`E_id`) values (1,'Gold',2000,,110,1,1);
insert into `Inventory`(`Inv_id`,`Type`, `Items_in_stock`,`P_id`,`E_id`) values (2,'Silver',1500,213,1,4);
insert into `Inventory`(`Inv_id`,`Type`, `Items_in_stock`,`P_id`,`E_id`) values (3,'Diamonds',1250,134,1,11);
insert into `Inventory`(`Inv_id`,`Type`, `Items_in_stock`,`P_id`,`E_id`) values (4,'Others',1000,176,1,4);



/********************************************************************************************************/

/*Queries for TRIGGERS*/

DELIMITER $$
CREATE TRIGGER employee_update
BEFORE UPDATE ON Employee
FOR EACH ROW BEGIN
INSERT INTO employee_information
SET action = 'update',
E_id = OLD.E_id,
E_Name = OLD.E_Name,
changes_in_data = NOW(); END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER salary_update
BEFORE UPDATE ON Employee
FOR EACH ROW BEGIN
INSERT INTO employee_information
SET action = 'update',
E_id = OLD.E_id,
E_Name = OLD.E_Name,
changes_in_data = NOW(); END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER after_employee_update
AFTER UPDATE ON Employee
FOR EACH ROW BEGIN
INSERT INTO Employee_information
SET action = 'update',
Salary= OLD.Salary,
changes_in_data = NOW(); END$$
DELIMITER ;
DELIMITER $$




/********************************************************************************************************/
/*Queries for Views*/

CREATE VIEW product_purchase
AS
SELECT Pr.P_id,Pr.P_Price,Pu.P_Num
FROM Product Pr,Purchase Pu
WHERE Pr.P_Num=Pu.P_Num;




CREATE VIEW order_orderhis
AS
SELECT or.Order_id,oh.Od_date,oh.Od_Delv_Date
FROM Order or,Order_History oh
WHERE or.Order_ID=oh.Order_IDP_Num;



CREATE VIEW Vendor_Employee
AS
SELECT V.Vendor_No,V.Name,E.E_id,E.E_Name
FROM Vendor V,Employee E
WHERE V.E_id=E.E_id;



/********************************************************************************************************/

/*Queries for Procedures*/


DELIMITER$$
CREATE PROCEDURE myProc()
  
    BEGIN
     DROP TEMPORARY TABLE IF EXISTS employeeTemp;
     CREATE TEMPORARY TABLE employeeTemp AS
      SELECT id,start_date
       FROM Employee;
    END$$
DELIMITER;
CALL myProc();

DEMILMITER$$
CREATE PROCEDURE FindDesignation()

	BEGIN
	SELECT Design
FROM Employee;
END$$
DELIMITER;
CALL FindDesignation();


DELIMITER$$
CREATE PROCEDURE InvoiceRecord()

	BEGIN
	SELECT Rec_Num,Date
	FROM Invoice;
	END$$
DELIMITER;
CALL InvoiceRecord();