USE ClassicModels;

EXPLAIN SELECT * FROM Customers WHERE CustomerName = 'Land Of Toys Inc.';

ALTER TABLE Customers ADD INDEX idx_customerName(CustomerName);

ALTER TABLE Customers ADD INDEX IDX_Full_Name(contactFirstName,contactLastName);

EXPLAIN SELECT * FROM Customers WHERE ContactFirstName = 'Jean' OR ContactLastName = 'King';

ALTER TABLE customers DROP INDEX idx_full_name;

