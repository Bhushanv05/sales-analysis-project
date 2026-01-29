# Sales Analysis System

I built this project to practice writing T-SQL scripts and learn how to analyze sales data. It's a collection of stored procedures, functions, and views that work with the AdventureWorksDW database.

## What This Project Does

This project helps analyze sales data in different ways. You can see yearly sales trends, calculate profit margins, and find your top customers - all using reusable SQL scripts.

## What You'll Need

Before using these scripts, make sure you have:
- Microsoft SQL Server (I'm using 2014, but newer versions work too)
- The AdventureWorksDW sample database installed

## How It's Organized

I've organized the scripts into folders to keep things clean:

- **procedures/** - Stored procedures for analyzing data
- **functions/** - Helper functions for calculations
- **views/** - Views that make reporting easier
- **reports/** - (Coming soon) More complex analysis scripts

## What's Inside

### Sales By Year Procedure

This stored procedure shows you total sales for each year. It's really helpful for seeing trends over time.

To use it, just run:
```sql
EXEC sp_GetSalesByYear
```

You'll get back a table showing the year, how many orders there were, total sales, and the average order value. For example, in 2013 there were over 52,000 orders totaling $16 million!

### Profit Calculator Function

Sometimes you need to quickly calculate profit margins. This function does that for you - just give it the sales amount and the cost, and it returns the profit percentage.

Try it like this:
```sql
SELECT dbo.fn_CalculateProfit(1000, 600) AS ProfitPercentage
```

This tells you that selling something for $1000 that cost $600 gives you a 40% profit margin.

### Top Customers View

Want to know who your best customers are? This view ranks customers by how much they've spent. It shows their name, location, number of orders, and total spending.
```sql
SELECT TOP 10 * FROM vw_TopCustomers
```

I found it interesting that most of the top customers in the sample data are from France!

## How to Get Started

If you want to try these scripts yourself:

1. Download or clone this repository to your computer
2. Open SQL Server Management Studio
3. Make sure you're connected to a server that has AdventureWorksDW
4. Open any of the .sql files and run them
5. Start with the functions, then views, then procedures (in case there are dependencies)

## What I Learned

Working on this project helped me understand:
- How to write clean, reusable stored procedures
- When to use functions vs procedures
- How views can simplify complex queries
- The importance of organizing SQL scripts in a logical structure

## Technologies I Used

- T-SQL for all the scripts
- Microsoft SQL Server as the database
- AdventureWorksDW as the sample database
- Git and GitHub for version control

## About Me

I'm Bhushan, and I created this project while learning SQL and database development. Feel free to use these scripts for learning or as a starting point for your own projects!

## What's Next

I'm planning to add:
- More complex analysis procedures
- Triggers for data validation
- A complete sales report script
- Performance optimization examples

If you have suggestions, feel free to reach out!