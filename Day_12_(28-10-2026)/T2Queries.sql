CREATE DATABASE OnlineRetailDB;

USE OnlineRetailDB;

SHOW DATABASES;

USE OnlineRetailDB;

CREATE TABLE online_retail (
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID BIGINT,
    Country VARCHAR(100),
    Revenue DECIMAL(12,2)
);

SHOW TABLES;

DESCRIBE online_retail;

USE OnlineRetailDB;

INSERT INTO online_retail
(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country, Revenue)
VALUES
('536365', '85123A', 'White Hanging Heart T-Light Holder', 6, '2025-01-05 08:26:00', 2.55, 17850, 'United Kingdom', 15.30),
('536365', '71053', 'White Metal Lantern', 6, '2025-01-05 08:26:00', 3.39, 17850, 'United Kingdom', 20.34),
('536366', '22633', 'Hand Warmer Union Jack', 6, '2025-01-06 09:15:00', 1.85, 17850, 'United Kingdom', 11.10),
('536367', '84879', 'Assorted Colour Bird Ornament', 32, '2025-01-06 10:20:00', 1.69, 13047, 'United Kingdom', 54.08),
('536367', '22745', 'Poppy Playhouse Bedroom', 6, '2025-01-06 10:20:00', 2.10, 13047, 'United Kingdom', 12.60),
('536368', '22960', 'Jam Making Set With Jars', 6, '2025-01-07 11:05:00', 4.25, 12583, 'France', 25.50),
('536369', '21756', 'Bath Building Block Word', 3, '2025-01-07 12:10:00', 5.95, 12583, 'France', 17.85),
('536370', '22728', 'Alarm Clock Bakelike Pink', 24, '2025-01-08 09:30:00', 3.75, 12431, 'Australia', 90.00),
('536370', '22727', 'Alarm Clock Bakelike Red', 24, '2025-01-08 09:30:00', 3.75, 12431, 'Australia', 90.00),
('536371', '22492', 'Mini Paint Set Vintage', 36, '2025-01-09 10:00:00', 0.65, 14688, 'United Kingdom', 23.40),
('536372', '22632', 'Hand Warmer Red Retrospot', 12, '2025-01-09 11:45:00', 2.10, 14688, 'United Kingdom', 25.20),
('536373', '85099B', 'Jumbo Bag Red Retrospot', 10, '2025-01-10 08:40:00', 1.95, 17850, 'United Kingdom', 19.50),
('536374', '22726', 'Alarm Clock Bakelike Green', 12, '2025-01-10 09:25:00', 3.75, 13748, 'Germany', 45.00),
('536375', 'POST', 'Postage', 1, '2025-01-11 10:15:00', 18.00, 13748, 'Germany', 18.00),
('536376', '22114', 'Hot Water Bottle Tea And Sympathy', 8, '2025-01-11 11:30:00', 3.95, 15100, 'United Kingdom', 31.60),
('536377', '22086', 'Paper Chain Kit 50s Christmas', 20, '2025-01-12 08:50:00', 2.55, 15100, 'United Kingdom', 51.00),
('536378', '22386', 'Jumbo Bag Pink Polkadot', 15, '2025-01-12 09:40:00', 1.95, 15291, 'Netherlands', 29.25),
('536379', '22411', 'Jumbo Shopper Vintage Red Paisley', 10, '2025-01-13 10:05:00', 1.65, 15291, 'Netherlands', 16.50),
('536380', '20725', 'Luncheon Plate Set', 4, '2025-01-13 11:20:00', 12.50, 15311, 'Spain', 50.00),
('536381', '84997B', 'Red 3 Piece Retrospot Cutlery Set', 6, '2025-01-14 12:00:00', 8.50, 15311, 'Spain', 51.00);

SELECT *
FROM online_retail

SELECT InvoiceNo, Description, Quantity, UnitPrice
FROM online_retail;

SELECT Description, UnitPrice
FROM online_retail
WHERE UnitPrice > 5;

SELECT Description, UnitPrice
FROM online_retail
ORDER BY UnitPrice DESC;

SELECT AVG(UnitPrice) AS Average_Price
FROM online_retail;

SELECT Country, SUM(Revenue) AS Total_Revenue
FROM online_retail
GROUP BY Country;	

SELECT Country, SUM(Revenue) AS Total_Revenue
FROM online_retail
GROUP BY Country
HAVING SUM(Revenue) > 50;



