CREATE DATABASE DEMO;

USE DEMO;

CREATE TABLE Products
(
Id INT AUTO_INCREMENT,
ProductCode INT,
ProductName VARCHAR(50),
ProductPrice DOUBLE,
ProductAmount INT,
ProductDescription VARCHAR(100),
ProductStatus BOOLEAN,
PRIMARY KEY(Id)
);

INSERT INTO Products VALUE ('1','111','KEM','20.0','5','Lanh','1');
INSERT INTO Products VALUE ('2','121','KEO_DEO','10.0','18','Dai','1');
INSERT INTO Products VALUE ('3','131','Socola','50.0','0','ngot','0');
INSERT INTO Products VALUE ('4','141','Banh_quy','25.5','30','Gion','1');
INSERT INTO Products VALUE ('5','151','Cam','12.0','20','chua','1');
INSERT INTO Products VALUE ('6','161','Tao','16.2','0','tuy_loai','0');

SELECT * FROM Products;