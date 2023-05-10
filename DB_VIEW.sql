USE ClassicModels;

CREATE VIEW Customer_View AS
SELECT CustomerNumber, CustomerName, Phone
FROM Customers;

SELECT * FROM Customer_View;

CREATE OR REPLACE VIEW Customer_View AS
SELECT CustomerNumber, CustomerName, ContactFirstName, ContactLastName
FROM Customers;

DROP VIEW Customer_View;