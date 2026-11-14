# Superstore Sales Analysis

## Project Overview

I worked on this project to improve my practical data analysis skills using Microsoft Excel, PostgreSQL, and Power BI.

For this project, I used the Sample Superstore dataset, which I downloaded from Kaggle. My goal was to explore the data and understand how the business performed in terms of sales, profit, products, customers, and shipping.

I wanted to find out which areas of the business were performing well, which products and regions were generating losses, and what the data could tell me about possible improvements.

I started by exploring and analyzing the data in Excel. After that, I used PostgreSQL to clean the dataset, write SQL queries, and validate my results. Finally, I built a Power BI dashboard to present my findings through charts and visualizations.

Working on this project helped me understand the different stages of data analysis and how data can be used to support better business decisions.

## Tools Used

- **Microsoft Excel:** I used Excel to explore the dataset, analyze sales and profits, and identify business trends.
- **PostgreSQL:** I used PostgreSQL to clean the data, perform SQL analysis, and validate my results.
- **Power BI:** I used Power BI to create interactive dashboards and present the results visually.

## Dataset

- **Dataset Name:** Sample Superstore
- **Source:** Kaggle
- **Original Records:** 9,994
- **Cleaned Records:** 9,993
- **Period Analyzed:** 2014–2017

I downloaded this dataset from Kaggle for learning and practice. Although the data covers 2014 to 2017, I used it to develop my analytical skills and gain hands-on experience with tools commonly used in data analysis.

The purpose of this project is to demonstrate my ability to work with data, identify useful insights, and present findings clearly rather than analyze current business performance.

## Project Objectives

I started this project with the goal of improving my data analysis skills by working on a complete project from beginning to end.

My main objectives were to:

- Understand how sales and profits changed over time.
- Identify the best-performing products, categories, and regions.
- Find products and locations where the business was losing money.
- Analyze customer segments and their contribution to sales and profit.
- Explore shipping performance and delivery times.
- Practice data cleaning, SQL queries, and data validation.
- Build a Power BI dashboard to make the results easier to understand.

Through this project, I wanted to gain practical experience and become more confident in using Excel, PostgreSQL, and Power BI to solve business-related problems.

## Data Cleaning and Analysis Process

### 1. Excel Analysis

I started by exploring the original dataset in Microsoft Excel, which contained 9,994 records.

I used Excel to analyze sales, profit, product categories, regions, customer segments, and shipping performance. I also created summaries to identify top-selling products, valuable customers, and sales trends over time.

This helped me understand the dataset before moving to SQL.

### 2. PostgreSQL Analysis

After working with Excel, I imported the dataset into PostgreSQL.

I kept the original table and created a separate cleaned table called `orders_clean`. During the cleaning process, I identified and removed one duplicate record, leaving 9,993 records for analysis.

I then wrote SQL queries to calculate sales, profit, profit margins, and other business metrics. I also analyzed products, customers, regions, categories, and shipping performance.

I compared important results between Excel and PostgreSQL to check the consistency of my analysis.

### 3. Power BI Dashboard

Finally, I connected Power BI to my PostgreSQL database and used the cleaned dataset to build an interactive dashboard.

I created DAX measures for key metrics, including total sales, total profit, profit margin, total orders, and average shipping days.

I organized the dashboard into eight pages covering sales performance, profitability, customers, products, shipping, and geographic analysis.

I also tested the dashboard's filtering and reviewed the charts to make sure the results were clear and easy to understand.

## Key Findings and Business Insights

After analyzing the cleaned Superstore dataset, I identified several important findings.

### 1. Overall Business Performance

- Total Sales: **$2,296,919.70**
- Total Profit: **$286,409.85**
- Profit Margin: **12.47%**
- Total Orders: **5,009**

The business generated approximately $2.30 million in sales, but its overall profit margin was only 12.47%. This showed me why it's important to analyze profitability alongside revenue.

### 2. Product Category Performance

Technology generated the highest sales and profit among the three product categories.

Furniture also generated substantial sales, but its profit margin was much lower. This suggests that the business should investigate factors affecting Furniture profitability.

### 3. Regional Performance

The West region generated the highest sales and profit, while the Central region had relatively weak profitability.

At the state level, California generated the highest sales, while Texas recorded the largest total loss.

These findings suggest that management should investigate why some geographic markets perform better than others.

### 4. Loss-Making Products

I found that Tables, Bookcases, and Supplies had negative profit margins.

This was an important finding because it showed that generating sales does not always mean a product is profitable.

I would recommend reviewing pricing, discounts, and costs in these subcategories to understand the reasons behind their losses.

### 5. Customer Segments

The Consumer segment generated the highest total sales and profit.

However, the Home Office segment had a higher profit margin in some regions, especially the East.

This showed me that customer segments can perform differently depending on the region.

### 6. Shipping Performance

Standard Class was the most frequently used shipping method, while Same Day had the shortest average shipping time.

The overall average shipping time was approximately **3.96 days**.

These findings could help the business better understand shipping patterns and evaluate delivery efficiency.

### 7. Discounts and Profitability

Furniture had the highest average discount among the product categories and also had the lowest profit margin.

Although this does not prove that discounts caused the low profitability, it suggests that Furniture's discounting strategy deserves further investigation.

## Business Recommendations

Based on my analysis, I would recommend:

- Reviewing loss-making products and subcategories to understand their costs and pricing.
- Investigating why Furniture has a low profit margin despite generating substantial sales.
- Examining losses in states such as Texas, Ohio, and Pennsylvania.
- Learning from high-performing regions and customer segments.
- Monitoring discounts and profit margins together rather than focusing only on sales.
- Using the Power BI dashboard to track performance and support business decisions.

These recommendations are based on patterns I identified in the historical dataset and would require further investigation before making real business decisions.

## Conclusion

This project gave me the opportunity to apply what I learned about data analysis using Excel, PostgreSQL, and Power BI.

One of the most important things I learned was that high sales do not always mean high profits. By comparing different products, regions, and customer segments, I was able to identify areas where the business performed well and areas that needed improvement.

I also gained experience in cleaning data, writing SQL queries, checking results across different tools, and creating dashboards to present my findings.

Overall, this project helped me become more confident in my analytical skills and gave me a better understanding of how data analysis can support business decisions.