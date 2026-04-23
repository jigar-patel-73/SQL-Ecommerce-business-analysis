/*==============================================================
 ECOMMERCE SALES & CUSTOMER ANALYSIS | SQL MASTER PROJECT
 Final Portfolio Version
 By Jigar Patel
==============================================================*/

/*==============================================================
 SECTION 1 : DATABASE SETUP
==============================================================*/

CREATE DATABASE Ecommerce_SQL_Analysis;

USE Ecommerce_SQL_Analysis;

/*==============================================================
 SECTION 2 : TABLE CREATION
==============================================================*/

CREATE TABLE Customers (
    CustomerID      INT PRIMARY KEY,
    CustomerName    VARCHAR(100),
    City            VARCHAR(50),
    Country         VARCHAR(30)
);

CREATE TABLE Orders (
    OrderID         INT PRIMARY KEY,
    CustomerID      INT,
    OrderDate       DATE,
    Amount          DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


/*==============================================================
 SECTION 3 : PREMIUM DATA INSERTION (50 CUSTOMERS)
==============================================================*/

INSERT INTO Customers VALUES
(1,'Rahul Shah','Ahmedabad','India'),
(2,'Priya Mehta','Mumbai','India'),
(3,'Amit Patel','Delhi','India'),
(4,'Neha Joshi','Pune','India'),
(5,'Karan Desai','Surat','India'),
(6,'John Smith','New York','USA'),
(7,'Emily Brown','Chicago','USA'),
(8,'David Wilson','Dallas','USA'),
(9,'Sophia Clark','Miami','USA'),
(10,'James Lee','Seattle','USA'),
(11,'Oliver King','London','UK'),
(12,'Emma Scott','Manchester','UK'),
(13,'Noah Hall','Liverpool','UK'),
(14,'Ava Green','Leeds','UK'),
(15,'Mason Young','Bristol','UK'),
(16,'Sara Khan','Dubai','UAE'),
(17,'Ali Hassan','Abu Dhabi','UAE'),
(18,'Fatima Noor','Sharjah','UAE'),
(19,'Omar Malik','Dubai','UAE'),
(20,'Lina Ahmed','Ajman','UAE'),
(21,'Lucas White','Toronto','Canada'),
(22,'Mia Adams','Vancouver','Canada'),
(23,'Ethan Baker','Ottawa','Canada'),
(24,'Ella Turner','Calgary','Canada'),
(25,'Logan Ward','Montreal','Canada'),
(26,'Leo Martin','Sydney','Australia'),
(27,'Chloe Evans','Melbourne','Australia'),
(28,'Jack Carter','Perth','Australia'),
(29,'Grace Hill','Brisbane','Australia'),
(30,'Henry Moore','Adelaide','Australia'),
(31,'Arjun Nair','Bengaluru','India'),
(32,'Riya Kapoor','Jaipur','India'),
(33,'Kabir Verma','Chennai','India'),
(34,'Anaya Roy','Kolkata','India'),
(35,'Vihaan Sinha','Lucknow','India'),
(36,'Daniel Cruz','Boston','USA'),
(37,'Harper Reed','Houston','USA'),
(38,'Matthew Bell','Phoenix','USA'),
(39,'Zoe Parker','Denver','USA'),
(40,'Sebastian Wood','Atlanta','USA'),
(41,'George Price','Oxford','UK'),
(42,'Lily Cook','York','UK'),
(43,'Oscar Reed','Bath','UK'),
(44,'Ruby Bell','Cambridge','UK'),
(45,'Harry Gray','Leicester','UK'),
(46,'Yusuf Kareem','Dubai','UAE'),
(47,'Mariam Saeed','Dubai','UAE'),
(48,'Adam Farooq','Sharjah','UAE'),
(49,'Nora Hamid','Abu Dhabi','UAE'),
(50,'Zaid Rahman','Dubai','UAE');


/*==============================================================
 SECTION 4 : RICH ORDERS DATA (100 ORDERS)
==============================================================*/

INSERT INTO Orders VALUES
(1001,1,'2024-01-05',500),(1002,1,'2024-03-08',700),
(1003,2,'2024-01-10',850),(1004,2,'2024-04-12',400),
(1005,3,'2024-02-11',950),(1006,3,'2024-05-14',650),
(1007,4,'2024-02-20',1200),(1008,4,'2024-06-18',300),
(1009,5,'2024-03-01',450),(1010,5,'2024-07-05',720),

(1011,6,'2024-01-08',1300),(1012,6,'2024-05-22',980),
(1013,7,'2024-02-09',610),(1014,7,'2024-06-11',530),
(1015,8,'2024-03-17',770),(1016,8,'2024-07-15',880),
(1017,9,'2024-01-25',430),(1018,9,'2024-05-19',620),
(1019,10,'2024-02-28',1500),(1020,10,'2024-06-25',990),

(1021,11,'2024-01-13',560),(1022,11,'2024-03-30',780),
(1023,12,'2024-02-18',430),(1024,12,'2024-06-02',690),
(1025,13,'2024-03-10',1400),(1026,13,'2024-07-08',500),
(1027,14,'2024-01-27',350),(1028,14,'2024-05-07',620),
(1029,15,'2024-02-16',900),(1030,15,'2024-06-20',740),

(1031,16,'2024-01-11',1100),(1032,16,'2024-05-03',760),
(1033,17,'2024-02-08',840),(1034,17,'2024-06-14',910),
(1035,18,'2024-03-06',390),(1036,18,'2024-07-09',450),
(1037,19,'2024-01-22',980),(1038,19,'2024-05-17',860),
(1039,20,'2024-02-19',420),(1040,20,'2024-06-28',600),

(1041,21,'2024-01-07',720),(1042,21,'2024-04-06',800),
(1043,22,'2024-02-12',510),(1044,22,'2024-06-09',650),
(1045,23,'2024-03-19',1350),(1046,23,'2024-07-01',780),
(1047,24,'2024-01-29',640),(1048,24,'2024-05-10',710),
(1049,25,'2024-02-22',480),(1050,25,'2024-06-16',520),

(1051,26,'2024-01-14',890),(1052,26,'2024-04-22',930),
(1053,27,'2024-02-15',470),(1054,27,'2024-06-04',680),
(1055,28,'2024-03-12',1450),(1056,28,'2024-07-03',990),
(1057,29,'2024-01-18',610),(1058,29,'2024-05-09',790),
(1059,30,'2024-02-25',530),(1060,30,'2024-06-23',620),

(1061,31,'2024-01-06',880),(1062,31,'2024-04-18',910),
(1063,32,'2024-02-07',350),(1064,32,'2024-06-08',420),
(1065,33,'2024-03-08',960),(1066,33,'2024-07-06',770),
(1067,34,'2024-01-26',540),(1068,34,'2024-05-20',690),
(1069,35,'2024-02-17',430),(1070,35,'2024-06-30',520),

(1071,36,'2024-01-09',1020),(1072,36,'2024-04-14',850),
(1073,37,'2024-02-13',590),(1074,37,'2024-06-12',610),
(1075,38,'2024-03-21',1480),(1076,38,'2024-07-10',920),
(1077,39,'2024-01-24',620),(1078,39,'2024-05-15',730),
(1079,40,'2024-02-27',510),(1080,40,'2024-06-27',640),

(1081,41,'2024-01-12',710),(1082,41,'2024-04-20',880),
(1083,42,'2024-02-10',390),(1084,42,'2024-06-07',540),
(1085,43,'2024-03-11',1320),(1086,43,'2024-07-04',760),
(1087,44,'2024-01-31',580),(1088,44,'2024-05-18',670),
(1089,45,'2024-02-20',460),(1090,45,'2024-06-21',510),

(1091,46,'2024-01-15',980),(1092,46,'2024-04-25',1020),
(1093,47,'2024-02-14',430),(1094,47,'2024-06-05',580),
(1095,48,'2024-03-16',1390),(1096,48,'2024-07-02',860),
(1097,49,'2024-01-28',650),(1098,49,'2024-05-16',720),
(1099,50,'2024-02-26',520),(1100,50,'2024-06-29',610);


/*==============================================================
 SECTION 5 : QUESTIONS 1 TO 25
==============================================================*/

-- SECTION 5(A): Basic SQL Questions (1-10)

-- Question 1: What is the total revenue generated from all orders?
-- This helps understand overall business performance

SELECT SUM(Amount) AS Total_Revenue
FROM Orders;


-- Question 2: What is the total amount spent by each customer?
-- This helps identify high-value customers

SELECT CustomerID, SUM(Amount) AS Total_Spent
FROM Orders
GROUP BY CustomerID;


-- Question 3: Who is the top customer by total spending?
-- This helps identify the highest-value customer

SELECT TOP 1 CustomerID, SUM(Amount) AS Total_Spent
FROM Orders
GROUP BY CustomerID
ORDER BY Total_Spent DESC;


-- Question 4: Show customer name along with total spending
-- This helps understand customer-wise revenue contribution

SELECT c.CustomerName, SUM(o.Amount) AS Total_Spending
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;


-- Question 5: What is the monthly revenue generated?
-- This helps identify revenue trends over time

SELECT 
    MONTH(OrderDate) AS Month,
    SUM(Amount) AS Monthly_Revenue
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY Month;


-- Question 6: Which customers have not placed any orders?
-- This helps identify inactive customers

SELECT *
FROM Customers c 
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


-- Question 7: What is the average order value per customer?
-- This helps understand customer purchasing behavior

SELECT CustomerID, AVG(Amount) AS Avg_Order_Value
FROM Orders
GROUP BY CustomerID;


-- Question 8: Which customers have placed more than 1 order?
-- This helps identify repeat customers

SELECT CustomerID, COUNT(OrderID) AS total_orders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1;


-- Question 9: What is the total revenue generated by each city?
-- This helps identify high-performing regions

SELECT c.City, SUM(o.Amount) AS City_Revenue
FROM Customers c
JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.City;


-- Question 10:
-- Which city has generated the highest revenue?
-- This helps identify the most profitable location

SELECT TOP 1 c.City, SUM(o.Amount) AS City_Revenue
FROM Customers c
JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.City
ORDER BY SUM(o.Amount) DESC;


-- SECTION 5(B): Intermediate (11-18)

-- Question 11: What is the total number of orders placed in each month?
-- This helps analyze order trends over time

SELECT 
    MONTH(OrderDate) AS Month,
    COUNT(OrderID) AS Total_Orders
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY Month;


-- Question 12: What is the average revenue per month?
-- This helps understand average monthly performance

SELECT AVG(Monthly_Revenue) AS Avg_Monthly_Revenue
FROM (
    SELECT 
        MONTH(OrderDate) AS Month,
        SUM(Amount) AS Monthly_Revenue
    FROM Orders
    GROUP BY MONTH(OrderDate)
) AS t;


-- Question 13: Which customer has placed the highest number of orders?
-- This helps identify the most active customer

SELECT TOP 1 CustomerID, COUNT(OrderID) AS No_of_Orders
FROM Orders
GROUP BY CustomerID
ORDER BY No_of_Orders DESC;


-- Question 14: What is the total revenue generated by each country?
-- This helps identify high-performing countries

SELECT c.Country, SUM(o.Amount) AS Generated_Revenue
FROM Customers c 
JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.Country;


select [CustomerID], sum([Amount]) as Total_Spenidng,
RANK() Over (order by sum([Amount]) desc) as Rank
from [dbo].[Orders]
group by [CustomerID]


-- Question 15: Rank customers based on total spending

WITH Customer_Spending AS (
    SELECT CustomerID, SUM(Amount) AS Total_Spending
    FROM Orders
    GROUP BY CustomerID
)

SELECT 
    CustomerID,
    Total_Spending,
    RANK() OVER (ORDER BY Total_Spending DESC) AS Rank
FROM Customer_Spending;


-- Question 16: Identify top 3 customers based on total spending
-- Purpose: Helps in recognizing high-value customers

WITH Customer_Total_Spending AS (
    SELECT 
        CustomerID, 
        SUM(Amount) AS Total_Spending
    FROM Orders
    GROUP BY CustomerID
),

Customer_Spending_Rank AS (
    SELECT 
        CustomerID,
        Total_Spending,
        RANK() OVER (ORDER BY Total_Spending DESC) AS Spending_Rank
    FROM Customer_Total_Spending
)

SELECT 
    CustomerID,
    Total_Spending,
    Spending_Rank
FROM Customer_Spending_Rank
WHERE Spending_Rank <= 3;


-- Question 17: Top 3 customers per month based on spending

WITH Customer_Monthly_Spending AS (
    SELECT 
        CustomerID, 
        MONTH(OrderDate) AS Month, 
        SUM(Amount) AS Total_Spending
    FROM Orders
    GROUP BY CustomerID, MONTH(OrderDate)
),

Customer_Monthly_Ranking AS (
    SELECT 
        CustomerID,
        Month,
        Total_Spending,
        RANK() OVER (
            PARTITION BY Month 
            ORDER BY Total_Spending DESC
        ) AS Spending_Rank
    FROM Customer_Monthly_Spending
)

SELECT *
FROM Customer_Monthly_Ranking
WHERE Spending_Rank <= 3;


-- Question 18: Customers whose total spending is above average

WITH Customer_Total_Spending AS (
    SELECT CustomerID, SUM(Amount) AS Total_Spending
    FROM Orders
    GROUP BY CustomerID
)

SELECT CustomerID, Total_Spending
FROM Customer_Total_Spending
WHERE Total_Spending > (
    SELECT AVG(Total_Spending)
    FROM Customer_Total_Spending
);


-- SECTION 5(C): Advanced (19-25)

-- Question 19: Which customers fall in the Top 25% based on total spending?

WITH Customer_Spending AS (
    SELECT 
        CustomerID,
        SUM(Amount) AS Total_Spending
    FROM Orders
    GROUP BY CustomerID
),

Customer_Percentile AS (
    SELECT 
        CustomerID,
        Total_Spending,
        PERCENT_RANK() OVER (
            ORDER BY Total_Spending DESC
        ) AS Spending_Percentile_Rank
    FROM Customer_Spending
)

SELECT 
    CustomerID,
    Total_Spending,
    Spending_Percentile_Rank
FROM Customer_Percentile
WHERE Spending_Percentile_Rank <= 0.25;

-- Question 20: Find the Top 2 highest spending customers in each country.

WITH Country_Customer_Spending AS (
    SELECT 
        c.CustomerID,
        c.CustomerName,
        c.Country,
        SUM(o.Amount) AS Total_Spending,

        RANK() OVER (
            PARTITION BY c.Country
            ORDER BY SUM(o.Amount) DESC
        ) AS Country_Spending_Rank

    FROM Customers AS c
    JOIN Orders AS o
        ON c.CustomerID = o.CustomerID

    GROUP BY 
        c.CustomerID,
        c.CustomerName,
        c.Country
)

SELECT 
    CustomerID,
    CustomerName,
    Country,
    Total_Spending,
    Country_Spending_Rank
FROM Country_Customer_Spending
WHERE Country_Spending_Rank <= 2;


-- Question 21: Find customers whose spending is above their own country’s average customer spending.

WITH Customer_Spending AS (
    SELECT 
        c.CustomerID,
        c.CustomerName,
        c.Country,
        SUM(o.Amount) AS Total_Spending
    FROM Customers c
    JOIN Orders o
        ON c.CustomerID = o.CustomerID
    GROUP BY 
        c.CustomerID,
        c.CustomerName,
        c.Country
),

Country_Average AS (
    SELECT 
        Country,
        AVG(Total_Spending) AS Avg_Country_Spending
    FROM Customer_Spending
    GROUP BY Country
)

SELECT 
    cs.CustomerID,
    cs.CustomerName,
    cs.Country,
    cs.Total_Spending,
    ca.Avg_Country_Spending
FROM Customer_Spending cs
JOIN Country_Average ca
    ON cs.Country = ca.Country
WHERE cs.Total_Spending > ca.Avg_Country_Spending;


-- Question 22 : Find each customer’s previous order amount and compare with current order amount.

SELECT 
    CustomerID,
    OrderDate,
    Amount,

    LAG(Amount) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS Previous_Order_Amount

FROM Orders;


-- Question 23: Find each customer’s next order amount.

SELECT 
   CustomerID,
   OrderDate,
   Amount,

   LEAD(Amount) OVER (
      PARTITION BY CustomerID 
      ORDER BY OrderDate
   ) AS Next_Order_Amount

FROM Orders;


-- Question 24: Find the running total spending of each customer over time.

SELECT 
   CustomerID,
   Amount,
   OrderDate,

   SUM(Amount) OVER(
      PARTITION BY CustomerID
      ORDER BY OrderDate
   ) AS Running_Total_Spending

FROM Orders;


-- Question 25: Find each customer’s highest single order amount and total spending together.

SELECT 
    CustomerID,
    MAX(Amount) AS Highest_Order_Amount,
    SUM(Amount) AS Total_Spending
FROM Orders
GROUP BY CustomerID; 