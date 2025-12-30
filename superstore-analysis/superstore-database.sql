CREATE TABLE superstore (
    item_id INTEGER PRIMARY KEY,
    item_name TEXT,
    category TEXT,
    price DECIMAL(10, 2),
    stock_quantity INTEGER,
    average_rating DECIMAL(3, 2)
);

INSERT INTO superstore (item_id, item_name, category, price, stock_quantity, average_rating)
VALUES
    (1, 'Stainless Steel Cookware Set', 'Kitchen Supplies', 89.99, 50, 4.6),
    (2, 'Memory Foam Mattress', 'Furnishings', 499.99, 30, 4.8),
    (3, 'Smart LED TV', 'Electronics', 549.00, 20, 4.5),
    (4, 'Robot Vacuum Cleaner', 'Appliances', 199.50, 40, 4.3),
    (5, 'Wireless Bluetooth Speaker', 'Electronics', 39.99, 60, 4.2),
    (6, 'Non-Stick Baking Set', 'Kitchen Supplies', 29.95, 80, 4.4),
    (7, 'Cotton Bedding Set', 'Furnishings', 89.00, 25, 4.7),
    (8, 'Smart Home Security Camera', 'Electronics', 79.95, 15, 4.1),
    (9, 'Air Purifier', 'Appliances', 129.50, 35, 4.6),
    (10, 'Premium Coffee Maker', 'Kitchen Supplies', 79.99, 50, 4.9),
    (11, 'Ergonomic Office Chair', 'Furnishings', 189.00, 20, 4.5),
    (12, 'Wireless Earbuds', 'Electronics', 49.99, 75, 4.3),
    (13, 'Slow Cooker', 'Appliances', 49.95, 30, 4.7),
    (14, 'Cutlery Set', 'Kitchen Supplies', 34.50, 40, 4.4),
    (15, 'Cozy Throw Blanket', 'Furnishings', 24.99, 100, 4.2);

#For this project, I used SQL to query the Superstore database to get information about items sold at the store and their prices. 

--query 1- Query that orders price low to high.
SELECT * 
FROM superstore
ORDER BY price; 

--query 2- How many items were sold per category?
SELECT count(item_name), category
FROM superstore
GROUP BY category


--query 3-  What is the max price for each category?
SELECT max(price), category
FROM superstore
GROUP BY category

--query 4- Which product has the maximum rating?
SELECT item_name, average_rating
FROM superstore
ORDER BY average_rating DESC
LIMIT 1;


--query 5- Which products tie up the most capital?
SELECT 
    item_name,
    price,
    stock_quantity,
    price * stock_quantity AS inventory_value
FROM superstore
ORDER BY inventory_value DESC;

--query 6- Which products preform the best of price and customer satisfaction?
SELECT 
    category,
    COUNT(*) AS total_products,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(average_rating), 2) AS avg_rating
FROM superstore
GROUP BY category
ORDER BY avg_rating DESC;

query 7- Overstolked items based on customer ratings
SELECT 
    item_name,
    stock_quantity,
    average_rating
FROM superstore
WHERE stock_quantity > 50
  AND average_rating < 4.3;

--query 8- Rating category for each item 
SELECT
    item_name,
    average_rating,
    CASE
        WHEN average_rating >= 4.7 THEN 'Excellent'
        WHEN average_rating >= 4.4 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS rating_category
FROM superstore;
