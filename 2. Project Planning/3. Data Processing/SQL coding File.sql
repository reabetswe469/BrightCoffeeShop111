---1.To check if the table is loaded correctly
SELECT *
FROM  workspace.default.bright_coffee_shop_sales
LIMIT 10;

--2.To check the start date
SELECT MIN(transaction_date) start_date
FROM  workspace.default.bright_coffee_shop_sales;


---3.Which day has the lowest revenue
SELECT *
FROM workspace.default.bright_coffee_shop_sales
ORDER BY unit_price ASC
LIMIT 1;

---4.Which day has the highest revenue
SELECT  MAX (unit_price) AS Highest_Revenue
FROM workspace.default.bright_coffee_shop_sales;

---5.Which shop makes the most sales per day.
SELECT  store_location,
        MAX(transaction_qty) AS Highest_Sales
FROM workspace.default.bright_coffee_shop_sales
GROUP BY store_location;

---6.Can find how many times each product appears
SELECT  product_detail,
        COUNT(*) AS Product_Count
FROM   workspace.default.bright_coffee_shop_sales
GROUP BY product_detail;


---7.Find the average transaction per day. 
SELECT  AVG(transaction_qty) AS Avg_Transaction
FROM   workspace.default.bright_coffee_shop_sales;


---8.Find the day with the highest number of transactions.
SELECT  transaction_date,
       MAX(transaction_qty) AS Highest_Transaction
FROM   workspace.default.bright_coffee_shop_sales
GROUP BY transaction_date;


---9.What is the total quantity sold
SELECT  SUM(transaction_qty) AS Total_Quantity_Sold
FROM  workspace.default.bright_coffee_shop_sales;

---10.What is the quantity sold per product.
SELECT product_detail,
       SUM(transaction_qty) AS product_quantity_sales
FROM   workspace.default.bright_coffee_shop_sales
GROUP BY product_detail;


---11.find the number of products sold per category.
SELECT  product_category,
        COUNT(product_id) AS Product_Sold
FROM    workspace.default.bright_coffee_shop_sales
GROUP BY product_category;

---12.Find the best selling product.
SELECT  product_detail,
        SUM(transaction_qty) AS Total_sold
FROM  workspace.default.bright_coffee_shop_sales
GROUP BY product_detail
ORDER BY Total_sold DESC
LIMIT 1;

---13.Find the location with the lowest sales.
SELECT store_location,
       SUM(transaction_qty) AS Total_sold
FROM  workspace.default.bright_coffee_shop_sales
GROUP BY store_location;

---14.Which product performs best in each category.
SELECT  product_category
        product_detail,
        SUM(transaction_qty) AS Total_sold
FROM    workspace.default.bright_coffee_shop_sales
GROUP BY product_category;
