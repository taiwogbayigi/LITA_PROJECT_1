# LITA_PROJECT_1
Project 1: Sales Performance Analysis for a Retail Store

## OVERVIEW
This project involved analyzing sales performance for a retail store to uncover key insights into top-selling products, regional sales performance, and monthly sales trends. The goal was to create an interactive Power BI dashboard that highlights these findings. The project utilized Excel, SQL, and Power BI to perform the data analysis and visualization.

## KEY TOOLS
- Microsift Excel for Data Exploration & Reporting
- Microsoft SQL Server for Querying & Data Extraction
- Microsoft Power BI for Data Visualization

### Excel Analysis
- Data Exploration: Performed an initial exploration of the retail sales dataset using Pivot Tables. 
- Key metrics such as total sales by product, region, and month were summarized.
- Formulas and Metrics: Used Excel formulas to calculate average sales per product, total revenue by region, and other relevant metrics.
- Reports: Created various reports to uncover insights into sales trends, product performance, and regional comparisons. This step helped identify patterns and trends in the data.
  
<img width="545" alt="p1excel" src="https://github.com/user-attachments/assets/cbadc5a1-241c-46b2-8f6e-fa396878bc8c">

## Deliverables

Pivot Tables summarizing sales by product, region, and month.


Calculations of key metrics, including average sales and total revenue.

Excel-based reports providing deeper insights into sales data.



### SQL Data Analysis:
Data Loading: Loaded the sales dataset into SQL Server to perform more complex queries.
Key Queries:
Total sales for each product category.
Number of sales transactions per region.
Highest-selling products based on total sales value.
Total revenue per product.
Monthly sales totals for the current year.
Top 5 customers by total purchase amount.
Percentage of total sales by region.
Products with no sales in the last quarter.
Deliverables:

SQL queries that extracted key insights based on various questions about sales performance.
Used aggregation and filtering techniques to generate reports for decision-making.
3. Power BI Dashboard:
Dashboard Creation: Designed an interactive Power BI dashboard to visualize the key insights derived from the Excel and SQL analysis.
Visualization Elements:
Sales overview, including total revenue, regional breakdown, and monthly sales trends.
Top-performing products, showcasing products with the highest sales.
Regional sales performance, allowing for in-depth comparison between different regions.
Deliverables:

Interactive Power BI dashboard with a user-friendly interface.
Real-time filtering capabilities for exploring the data by region, product category, and time period.
Key Takeaways:
Data Exploration: Gained hands-on experience in exploring and preparing retail sales data for analysis.
SQL & Data Querying: Developed and optimized SQL queries for extracting critical business insights from large datasets.
Data Visualization: Built an interactive Power BI dashboard to present and share findings with stakeholders in a visually compelling manner.
This project demonstrates my ability to perform end-to-end data analysis, from raw data exploration to advanced SQL querying and creating interactive dashboards to drive business decisions. The insights generated through this analysis can help a retail store optimize its sales strategies and improve overall performance.

![Screenshot 2024-11-04 214804](https://github.com/user-attachments/assets/a2910be5-fca9-4982-9b92-79718a942f9e)
![Screenshot 2024-11-04 214723](https://github.com/user-attachments/assets/9ac67167-8cb4-4840-bea1-ac7e9b044003)


	
#### STRUCTURED QUERY TOOL-SQL
SQL (Structured Query Language) was used to extract and analyze data from the retail store dataset.
1. Retrieve Total Sales for Each Product Category
Use SUM(sales_amount) to calculate total sales.
2. Group by category to get totals for each unique category.
Find the Number of Sales Transactions in Each Region
3. Use COUNT(*) to count all transactions.
Group by region for totals by region.
4. Find the Highest-Selling Product by Total Sales Value
Calculate total sales per product.
Use ORDER BY
5. Calculate Total Revenue per Product
Use SUM(sales_amount) and group by product_name.
6. Calculate Monthly Sales Totals for the Current Year
Filter by current year using WHERE.
Extract month with EXTRACT(MONTH FROM sale_date) and group by month.
7. Find the Top 5 Customers by Total Purchase Amount
Sum sales by customer_id.
Order by total in descending orde
8. Calculate the Percentage of Total Sales Contributed by Each Region
First, calculate regional sales using SUM.
Then divide by total sales using a subquery.
![Screenshot 2024-11-04 214853](https://github.com/user-attachments/assets/0fcd1714-7e54-40a0-aff7-a3cd46493203)![Screenshot 2024-11-04 214916](https://github.com/user-attachments/assets/60119811-7a54-4fe0-8318-40567106dfbe)


#### Data Preparation and Cleaning with Power Query
- Data Import: Import data from Excel
- Data Cleaning: Ensure unique records by removing duplicates, excluding irrelevant data through row filtering, and replacing or removing missing values if necessary.
- Data Transformation: Ensure consistency by changing data types (e.g date, number, text) and improving data structuring by merging columns.
- Data Normalization: Establish relationships between tables by defining primary and foreign keys.

#### Data Modeling
- Establish Relationships: Enable efficient querying and accurate visualizations by creating relationships between tables (one-to-many, many-to-many).
- Build a Date Table: Create a Date table with columns like Year, Quarter, Month, Day, etc., and relate it to the main data for time-based calculations (e.g., year-to-date, month-to-date).
- Use Star Schema or Snowflake Schema: Connect a sales fact table to dimension tables (e.g. Sales table linked to Product, Region, and Date tables).

#### CALCULATION AND ANALYSIS WITH DAX (Data Analysis Expressions)
- Creating Measures and Calculated Columns:
- Measures: Empower dynamic calculations based on report filters (e.g. total revenue, total quantity, and transaction).
- Calculated Columns: Utilize static calculations that don’t change based on report filters (e.g. Revenue, Day of week, Period of day).
- FORMULA USED:
- Revenue Calculation: Revenue = SUM(Sales[Quantity]) * SUM(Sales[Price per Unit])
- Total revenue: SUM('Sales Fact'[Revenue])
- Total of quantity: SUM('Sales Fact'[Quantity])
- Total orders: COUNT('Sales Fact'[Orders ID])

#### DATA VISUALIZATION
- Bar/Column Charts: Effectively compare quantities across categories.
- Line Charts: Clearly display trends over time.
- Donut Charts: Provide insights into percentage distribution.
- Tree Map: Offer detailed data views.
- Using Slicers and Filters: Enhance user-driven filtering by adding slicers (e.g., Region).
 
<img width="728" alt="p1pbix" src="https://github.com/user-attachments/assets/b0740f89-bc53-4800-bfdd-8b7928a867b4">

   
#### RECOMMENDATIONS
1.	Focus on Region-specific strategies
The best-selling Region should have a meeting to speak on how they make large sales and what they do differently
2.	Optimize operations by time of day
More hands-on deck on Tuesday and Thursday since there’s a higher purchase at that time
3.	Promote top-selling Product
Put in more Revenue in the top-selling pizza to generate more Revenue
4.	Revamp, Promote or Remove the least-selling pizza
A sort of promo to the least product to boost the revenue and review the product.
5.	Day-of-the-week promotions
 A promo for Monday and Friday to boost sales or have a discount during those days.
