-- 1. Average Price per Category
-- Objective: Identify high-value categories (potential profit drivers)
SELECT 
    category,
    ROUND(AVG(actual_price),2) AS avg_price
FROM products
GROUP BY category
ORDER BY avg_price DESC;


-- 2. Product Distribution per Category
-- Objective: Understand which category dominates product volume
SELECT 
    category,
    COUNT(*) AS total_products
FROM products
GROUP BY category
ORDER BY total_products DESC;


-- 3. Products Above Overall Average Price
-- Objective: Identify premium segment products
SELECT 
    product_name,
    category,
    actual_price
FROM products
WHERE actual_price > (
    SELECT AVG(actual_price) FROM products
)
ORDER BY actual_price DESC;


-- 4. Products with Rating Above Category Average
-- Objective: Detect outperforming products inside each category
SELECT 
    p.product_name,
    p.category,
    p.rating
FROM products p
WHERE p.rating > (
    SELECT AVG(rating)
    FROM products
    WHERE category = p.category
)
ORDER BY p.category, p.rating DESC;


-- 5. Price Segmentation Analysis
-- Objective: Segment products into pricing tiers
SELECT 
    product_name,
    category,
    actual_price,
    CASE
        WHEN actual_price < 10000 THEN 'Low'
        WHEN actual_price < 50000 THEN 'Medium'
        ELSE 'High'
    END AS price_segment
FROM products
ORDER BY price_segment DESC;;