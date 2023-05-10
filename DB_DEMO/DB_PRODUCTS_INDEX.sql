USE demo;

SELECT * FROM products;

CREATE UNIQUE INDEX idx_ProductCode ON Products(ProductCode);

-- Explain truoc khi index la1
EXPLAIN SELECT * FROM Products
WHERE ProductCode = '161';

CREATE INDEX idx_NaneAndPrice ON products(ProductName,ProductPrice);

EXPLAIN SELECT * FROM Products
WHERE ProductName = 'Socola' AND ProductPrice = '50';

