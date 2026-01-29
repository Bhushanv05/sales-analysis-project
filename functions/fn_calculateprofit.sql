-- Function: Calculate Profit Percentage
-- Description: Calculates profit margin as a percentage

CREATE FUNCTION fn_CalculateProfit
(
    @SalesAmount DECIMAL(18,2),
    @Cost DECIMAL(18,2)
)
RETURNS DECIMAL(5,2)
AS
BEGIN
    DECLARE @Profit DECIMAL(5,2);
    
    IF @SalesAmount > 0
        SET @Profit = ((@SalesAmount - @Cost) / @SalesAmount) * 100;
    ELSE
        SET @Profit = 0;
    
    RETURN @Profit;
END
GO