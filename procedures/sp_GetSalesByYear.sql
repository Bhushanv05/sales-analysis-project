-- Stored Procedure: Get Total Sales by Year
-- Description: Returns total sales amount grouped by year

CREATE PROCEDURE sp_GetSalesByYear
AS
BEGIN
    SELECT 
        d.CalendarYear,
        COUNT(f.SalesOrderNumber) AS TotalOrders,
        SUM(f.SalesAmount) AS TotalSales,
        AVG(f.SalesAmount) AS AverageSale
    FROM dbo.FactInternetSales f
    INNER JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
    GROUP BY d.CalendarYear
    ORDER BY d.CalendarYear;
END
GO