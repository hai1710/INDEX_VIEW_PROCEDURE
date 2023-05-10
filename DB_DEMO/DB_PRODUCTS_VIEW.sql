USE DEMO;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW Product_view AS
SELECT productCode, productName, productPrice, productStatus 
FROM Products;

SELECT * FROM Product_view; 

-- Tiến hành sửa đổi view 
CREATE OR REPLACE VIEW Product_view AS
SELECT productCode, productName, productPrice 
FROM Products;

-- Tiến hành xoá view-- 
DROP VIEW product_view;