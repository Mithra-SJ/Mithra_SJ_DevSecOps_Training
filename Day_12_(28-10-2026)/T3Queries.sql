SELECT COUNT(*) AS Total_Records
FROM online_retail;

SELECT DISTINCT Country
FROM online_retail;

SELECT Description, Quantity
FROM online_retail
WHERE Quantity > 10;

SELECT MAX(Quantity) AS Highest_Quantity
FROM online_retail;

SELECT MIN(UnitPrice) AS Lowest_Unit_Price
FROM online_retail;

SELECT Country, COUNT(*) AS Total_Transactions
FROM online_retail
GROUP BY Country;

SELECT Country, COUNT(*) AS Total_Transactions
FROM online_retail
GROUP BY Country
HAVING COUNT(*) > 2;
