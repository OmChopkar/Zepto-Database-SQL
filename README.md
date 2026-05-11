# 🛒 Zepto Databse Insights Using SQL

## 📌 Project Overview
The goal is to use SQL to:

✅ Set up a messy, real-world e-commerce inventory database

✅ Perform Exploratory Data Analysis (EDA)

✅ Implement Data Cleaning to handle null values, remove invalid entries, and convert pricing

✅ SQL queries to derive insights around pricing, inventory, stock availability, revenue and more

## 📁 Dataset Overview

Downloaded from Kaggle: https://www.kaggle.com/datasets/palvinder2006/zepto-inventory-dataset/data?select=zepto_v2.csv

Load the CSV using pgAdmin's import feature, ensure the extension .csv and encoding UTF-8


Each row represents a unique SKU (Stock Keeping Unit) for a product. 

Duplicate product names exist because the same product may appear multiple times in different package sizes, weights, discounts, or categories to improve visibility – exactly how real catalog data looks.

### 🧾 Columns:

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


## 🔧 Project Workflow
Here’s a step-by-step breakdown of what we do in this project:

### 1. Database & Table Creation

### 2. Data Import

### 3. 🔍 Data Exploration

### 4. 🧹 Data Cleaning

### 5. 📊 Business Insights
