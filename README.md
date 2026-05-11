# Zepto Databse Insights Using SQL

📌 Project Overview
The goal is to use SQL to:
✅ Set up a messy, real-world e-commerce inventory database
✅ Perform Exploratory Data Analysis (EDA)
✅ Implement Data Cleaning to handle null values, remove invalid entries, and convert pricing
✅ SQL queries to derive insights around pricing, inventory, stock availability, revenue and more

# 📁 Dataset Overview

Downloaded from Kaggle: https://www.kaggle.com/datasets/palvinder2006/zepto-inventory-dataset/data?select=zepto_v2.csv

Each row represents a unique SKU (Stock Keeping Unit) for a product. 
Duplicate product names exist because the same product may appear multiple times in different package sizes, weights, discounts, or categories to improve visibility – exactly how real catalog data looks.

🧾 Columns:

sku_id: Unique identifier for each product entry

name: Product name as it appears on the app

category: Product category like Fruits, Snacks, Beverages, etc.

mrp: Maximum Retail Price (Converted Paise->Rupees)

discountPercent: Discount applied on MRP

discountedSellingPrice: Final price after discount (Converted Paise->Rupees)

availableQuantity: Units available in inventory

weightInGms: Product weight in grams

outOfStock: Boolean flag indicating stock availability

quantity: Number of units per package (mixed with grams for loose produce)


# 🔧 Project Workflow
Here’s a step-by-step breakdown of what we do in this project:

1. Database & Table Creation
We start by creating a SQL table with appropriate data types.

2. Data Import
Loaded CSV using pgAdmin's import feature.

3. 🔍 Data Exploration
Counted the total number of records in the dataset
Viewed a sample of the dataset to understand structure and content
Checked for null values across all columns
Identified distinct product categories available in the dataset
Compared in-stock vs out-of-stock product counts
Detected products present multiple times, representing different SKUs

4. 🧹 Data Cleaning
Identified and removed rows where MRP or discounted selling price was zero
Converted mrp and discountedSellingPrice from paise to rupees for consistency and readability

5. 📊 Business Insights

Q1. Found top 10 best-value products based on discount percentage

Q2. Identified high-MRP products that are currently out of stock

Q3. Estimated potential revenue for each product category

Q4. Filtered expensive products (MRP > ₹500) with minimal discount

Q5. Ranked top 5 categories offering highest average discounts

Q6. Calculated price per gram to identify value-for-money products

Q7. Measured total inventory weight per product category
