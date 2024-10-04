USE CompanyDB
GO

ALTER TABLE Sales.OrderDetails
ADD CONSTRAINT FK_ORDERDETAILS_PRODUCTS
FOREIGN KEY(ProductID) REFERENCES Sales.products([ProductID]);

-- Update OrderDetails to set ProductID to NULL if it doesn't exist in Products
UPDATE Sales.OrderDetails
SET ProductID = NULL
WHERE ProductID NOT IN (SELECT ProductID FROM Sales.products);

-- Update OrderDetails to set UnitPrice based on Product price
UPDATE Sales.OrderDetails
SET UnitPrice = (SELECT Price FROM Sales.products WHERE Sales.products.ProductID = OrderDetails.ProductID)
WHERE ProductID IN (SELECT ProductID FROM Sales.products);