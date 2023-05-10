-- Tham số loại IN

DELIMITER //
CREATE PROCEDURE getCusById (IN cusNum INT)

BEGIN

SELECT * FROM  Customers WHERE customerNumber = cusNum ; 

END //
 
 DELIMITER ;
 
 call getCusById(175);
 
 DELIMITER //
  CREATE PROCEDURE GetCustomersCountByCity( 
  IN in_City VARCHAR(50),
  OUT total INT
  )
  
 BEGIN 
 
 SELECT COUNT(customerNumber)
 INTO total
 FROM Customers WHERE City = in_City;
 
 END //
 
 DELIMITER ; 
 
 CALL GetCustomersCountByCity('Lyon',@total);
 
 SELECT @total;
 
 
 DELIMITER //

CREATE PROCEDURE SetCounter(

INOUT Counter INT,
IN inc INT)

BEGIN
SET Counter = Counter + inc;
END//

DELIMITER 

SET @counter = 1;

CALL SetCounter(@counter,1); -- 2

CALL SetCounter(@counter,1); -- 3

CALL SetCounter(@counter,5); -- 8

SELECT @counter; -- 8

