# 🛒 Zepto E-Commerce SQL Data Analysis Project

## Project Title / Headline

**Zepto E-Commerce SQL Data Analysis Project**

A SQL-based data analytics project that analyzes Zepto's inventory dataset to uncover insights related to pricing, discounts, inventory management, and revenue opportunities. The project simulates a real-world analyst workflow from database creation and data cleaning to exploratory analysis and business insight generation.

---

## Purpose

This project demonstrates how SQL can be used to transform raw e-commerce inventory data into actionable business insights. Through structured data exploration, cleaning, and analysis, the project evaluates pricing strategies, discount effectiveness, stock availability, and category-level performance.

---

## Tech Stack

The project was built using the following tools and technologies:

* 🗄️ **MySQL** – Database creation and query execution
* 💻 **MySQL Workbench** – SQL development environment
* 📄 **CSV Dataset** – Source data for analysis
* 🔗 **Git & GitHub** – Version control and project documentation

### Skills Demonstrated

* SQL Querying
* Database Design
* Data Cleaning
* Exploratory Data Analysis (EDA)
* Data Validation
* Inventory Analytics
* Revenue Analysis
* Business Insight Generation

---

## Data Source

**Source:** Kaggle – Zepto Inventory Dataset

The dataset contains inventory-level information for products listed on Zepto, including pricing, discounts, stock availability, product categories, and package sizes.

Each record represents a unique SKU (Stock Keeping Unit), enabling detailed analysis of inventory performance and pricing strategies across product categories.

---

## Project Overview

### Business Problem

E-commerce businesses manage thousands of products across multiple categories. Understanding pricing strategies, discount effectiveness, inventory availability, and revenue opportunities is critical for maximizing profitability and maintaining efficient inventory operations.

**Key Business Questions:**

* Which products offer the highest discounts?
* Which categories generate the highest potential revenue?
* Which products are expensive but receive minimal discounts?
* Which categories experience the highest stock-out rates?
* How much value do customers gain from discounts?

### Goal of the Analysis

* Design and create the inventory database structure.
* Clean and validate raw inventory data.
* Perform exploratory data analysis using SQL.
* Analyze pricing, discounts, and stock availability.
* Generate actionable business insights for decision-making.

### Project Workflow

#### Database Creation & Schema Design

* Created the `Zepto_SQL_Project` database from scratch.
* Designed the inventory table structure with appropriate data types.
* Defined `sku_id` as the primary key.

#### Data Preparation & Cleaning

* Identified missing values across key columns.
* Removed invalid records with zero MRP values.
* Converted pricing data from paise to rupees.
* Validated data consistency before analysis.

#### Data Exploration

* Analyzed product categories and SKU distribution.
* Evaluated in-stock versus out-of-stock products.
* Identified duplicate product names across multiple SKUs.
* Performed data quality checks and validation.

#### Business Analysis

* Analyzed discount trends across products and categories.
* Estimated category-wise revenue potential.
* Evaluated inventory distribution and stock availability.
* Compared product value using price-per-gram calculations.
* Measured customer savings generated through discounts.

### Key Insights

* Identified the top 10 products with the highest discount percentages.
* Estimated potential revenue contribution across product categories.
* Discovered high-MRP products with low discount levels.
* Calculated price-per-gram metrics to compare product value.
* Identified categories with the highest number of out-of-stock products.
* Measured total customer savings generated through discounts.
* Segmented products into Low, Medium, and Bulk categories based on weight.

---

## SQL Analysis Performed

* Data Exploration & Validation
* Missing Value Analysis
* Product Category Analysis
* Inventory Availability Analysis
* Discount Trend Analysis
* Revenue Estimation by Category
* Price-per-Gram Analysis
* Product Weight Segmentation
* Inventory Weight Analysis
* Customer Savings Analysis

---

## Conclusion

This project demonstrates how SQL can be used to solve real-world e-commerce business problems through structured data analysis. The insights generated can support pricing optimization, inventory planning, discount strategy evaluation, and data-driven business decision-making.
