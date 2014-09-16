--Ejercicio 3
CREATE TRIGGER ejercicio3
ON [dbo].[Categories] AFTER DELETE
AS
DECLARE @catID int;
DECLARE @catNAME nvarchar(15);
SELECT @catID=I.CategoryID, @catNAME=I.CategoryName FROM inserted I 
INSERT INTO [dbo].[DeletedCategories] VALUES (@catID, @catNAME, GETDATE())

--Ejercicio 1
CREATE PROCEDURE ejercicio1
@empleado_int int, @cantidad int, @prod_id int, @cliente_id nchar(5)
AS
IF((SELECT P.UnitsInStock FROM Products P WHERE P.ProductID = @prod_id) >= @cantidad)
	BEGIN
		INSERT INTO DBO.Orders (CustomerID, EmployeeID, ShipCity) VALUES (@cliente_id, @empleado_int, (SELECT C.City FROM DBO.Customers C WHERE C.CustomerID=@cliente_id))
		INSERT INTO DBO.[Order Details] VALUES((SELECT TOP 1 OrderID FROM DBO.Orders ORDER BY OrderID DESC), @prod_id, (SELECT P.UnitPrice FROM DBO.Products P WHERE P.ProductID=@prod_id), @cantidad, (SELECT P.UnitPrice FROM DBO.Products P WHERE P.ProductID=@prod_id)*0.1)
		PRINT 'Orden del producto fue exitosa.'
	END
ELSE 
	BEGIN
		PRINT 'ERROR: No hay suficientes unidades del producto en existencia.'
	END

--Ejercicio 4
