
CREATE TABLE sales (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT,
    customer_name TEXT,
    city TEXT,
    product TEXT,
    category TEXT,
    quantity INTEGER,
    unit_price REAL
);

INSERT INTO sales VALUES
(1, '2026-01-05', 'Sara', 'Jeddah', 'Laptop', 'Electronics', 1, 3500),
(2, '2026-01-08', 'Mona', 'Riyadh', 'Headphones', 'Electronics', 2, 250),
(3, '2026-01-12', 'Lama', 'Jeddah', 'Keyboard', 'Accessories', 1, 180),
(4, '2026-02-02', 'Nora', 'Dammam', 'Laptop', 'Electronics', 1, 3500),
(5, '2026-02-10', 'Reem', 'Riyadh', 'Mouse', 'Accessories', 3, 90),
(6, '2026-02-15', 'Sara', 'Jeddah', 'Headphones', 'Electronics', 1, 250),
(7, '2026-03-01', 'Huda', 'Makkah', 'Keyboard', 'Accessories', 2, 180),
(8, '2026-03-05', 'Mona', 'Riyadh', 'Laptop', 'Electronics', 1, 3500),
(9, '2026-03-12', 'Lama', 'Jeddah', 'Mouse', 'Accessories', 2, 90),
(10, '2026-03-18', 'Nora', 'Dammam', 'Headphones', 'Electronics', 2, 250),
(11, '2026-04-02', 'Reem', 'Riyadh', 'Laptop', 'Electronics', 1, 3500),
(12, '2026-04-10', 'Huda', 'Makkah', 'Mouse', 'Accessories', 1, 90);


SELECT * FROM sales;


SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;


SELECT product, SUM(quantity) AS total_sold
FROM sales
GROUP BY product
ORDER BY total_sold DESC;


SELECT city, SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;


SELECT AVG(quantity * unit_price) AS average_order_value
FROM sales;


SELECT
    SUBSTR(order_date, 1, 7) AS month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
