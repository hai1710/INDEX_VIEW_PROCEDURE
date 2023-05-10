USE Demo;


-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE GetAll()

BEGIN
SELECT * FROM Products;
END //

DELIMITER ;

CALL GetAll;

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //

CREATE PROCEDURE AddNewProduct(in newId int,
								   newCode int ,
                                   newName VARCHAR(50),
                                   newPrice DOUBLE,
                                   newAmount INT,
                                   newDescription VARCHAR(50), 
                                   newStatus BOOLEAN)
BEGIN

INSERT INTO Products VALUE (newId,newCode,newName,newPrice,newAmount,newDescription,newStatus);
SELECT * FROM Products; 

END //

DELIMITER ;

CALL AddNewProduct('7','222','dua','20','10','ngon','1');

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //

CREATE PROCEDURE editProductInformation (in newId int,
								   newCode int ,
                                   newName VARCHAR(50),
                                   newPrice DOUBLE,
                                   newAmount INT,
                                   newDescription VARCHAR(50), 
                                   newStatus BOOLEAN)
BEGIN

UPDATE Products
SET ProductCode = newCode, ProductName = newName, productPrice = newPrice,
	productAmount = newAmount, productDescription = newDescription, productStatus = newStatus
WHERE Id = newId;

SELECT * FROM Products;

END //

DELIMITER ;

CALL editProductInformation('2','333','bimbim','23','0','gion','0');

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE deleteProduct(IN findId INT)

BEGIN 

DELETE FROM Products WHERE id = findId;
SELECT * FROM Products;

END //

DELIMITER ;

CAlL deleteProduct('3');