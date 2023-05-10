

DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN

SELECT * FROM Customers ;

END //

DELIMITER ;
call findAllCustomers();

DROP PROCEDURE findAllCustomers;

DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN 

SELECT * FROM Customers WHERE customerNumber = 175;

END //

 DELIMITER ;
 
 