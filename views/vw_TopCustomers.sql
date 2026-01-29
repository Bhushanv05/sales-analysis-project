-- View: Top Customers by Sales
-- Description: Shows customers with highest total purchases

CREATE VIEW vw_TopCustomers
AS
SELECT TOP 100
    c.CustomerKey,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    g.City,
    g.CountryRegionCode,
    COUNT(f.SalesOrderNumber) AS TotalOrders,
    SUM(f.SalesAmount) AS TotalSales
FROM dbo.FactInternetSales f
INNER JOIN dbo.DimCustomer c ON f.CustomerKey = c.CustomerKey
INNER JOIN dbo.DimGeography g ON c.GeographyKey = g.GeographyKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName, g.City, g.CountryRegionCode
ORDER BY TotalSales DESC;
GO