# 📊 E-Commerce Product Analysis (SQL Project)

## 📌 Project Overview
This project analyzes e-commerce product data using MySQL to uncover pricing strategy, product distribution patterns, and rating performance.  
The objective is to identify profit-driving categories, premium products, and high-performing items within each category using structured SQL queries.

This project demonstrates core SQL skills required for a Junior Data Analyst role.

---

## 🛠 Tools & Technologies
- MySQL
- phpMyAdmin
- SQL (SELECT, GROUP BY, HAVING, CASE WHEN, Subquery)
- CSV Dataset

---

## 🗄 Database Schema
Table: `products`

| Column Name           | Data Type        |
|-----------------------|-----------------|
| product_id            | TEXT            |
| product_name          | TEXT            |
| category              | TEXT            |
| discounted_price      | DECIMAL(12,2)   |
| actual_price          | DECIMAL(12,2)   |
| price_diff            | DECIMAL(12,2)   |
| discount_percentage   | DECIMAL(5,2)    |
| price_ratio           | DECIMAL(6,2)    |
| rating                | DECIMAL(3,2)    |
| rating_count          | INT             |

---

## 🔎 Key Analysis Performed

### 1️⃣ Average Price per Category
Identifies high-value categories that may act as potential profit drivers.

### 2️⃣ Product Distribution per Category
Determines which categories dominate product volume.

### 3️⃣ Products Above Overall Average Price
Segments premium products using subquery logic.

### 4️⃣ Products with Rating Above Category Average
Uses correlated subquery to detect outperforming products inside each category.

### 5️⃣ Price Segmentation (CASE WHEN)
Creates dynamic pricing tiers (Low, Medium, High) directly within SQL queries.

---

## 💡 Key Business Insights

### 🔹 High-Value Categories as Profit Drivers
Certain categories show significantly higher average prices.  
These categories have strong potential for margin optimization strategies.

---

### 🔹 Volume-Based Category Dominance
Some categories dominate in product count, suggesting a volume-based business approach.  
However, high volume does not always translate into high profitability.

---

### 🔹 Premium Product Identification
Products priced above the overall average form a premium segment.  
These items are ideal candidates for value-based positioning strategies.

---

### 🔹 Outperforming Products Within Category
Several products exceed their category's average rating.  
These products can be prioritized for promotion, visibility, and marketing focus.

---

### 🔹 Structured Pricing Tier Strategy
SQL-based price segmentation reveals a clear pricing hierarchy:
- Low Tier
- Medium Tier
- High Tier

This enables differentiated promotional strategies across segments.

---

## 📈 Conclusion
The analysis suggests a dual business model:

- High-volume categories drive distribution scale.
- High-price categories act as potential profit centers.

A balanced strategy focusing on both volume growth and margin optimization would likely maximize business performance.

---

## 📂 Project Structure
```
ecommerce-sql-analysis/
│
├── schema.sql
├── analysis_queries.sql
├── dataset.csv
├── README.md
└── screenshots/
```

---

## 🚀 Author
Kristian Gunawan  
Aspiring Data Analyst Enthusiast
