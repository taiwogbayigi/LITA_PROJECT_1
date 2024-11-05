# LITA_PROJECT_1
Project 1: Sales Performance Analysis for a Retail Store

## OVERVIEW
This project involved analyzing sales performance for a retail store to uncover key insights into top-selling products, regional sales performance, and monthly sales trends. The goal was to create an interactive Power BI dashboard that highlights these findings. The project utilized Excel, SQL, and Power BI to perform the data analysis and visualization.

## KEY TOOLS
- Microsift Excel for Data Exploration & Reporting
- Microsoft SQL Server for Querying & Data Extraction
- Microsoft Power BI for Data Visualization

## Excel Analysis
- Data Exploration: Performed an initial exploration of the retail sales dataset using Pivot Tables. 
- Key metrics such as total sales by product, region, and month were summarized.
- Formulas and Metrics: Used Excel formulas to calculate average sales per product, total revenue by region, and other relevant metrics.
- Reports: Created various reports to uncover insights into sales trends, product performance, and regional comparisons. This step helped identify patterns and trends in the data.
  
<img width="545" alt="p1excel" src="https://github.com/user-attachments/assets/cbadc5a1-241c-46b2-8f6e-fa396878bc8c">

### Deliverables

Pivot Tables summarizing sales by product, region, and month.

<img width="545" alt="p1excel2" src="https://github.com/user-attachments/assets/c9c3ceed-05f9-4415-bc94-8a5c2164fdb5">


Calculations of key metrics, including average sales per product and total revenue by region.

<img width="291" alt="p1excel3" src="https://github.com/user-attachments/assets/7607f5c3-6d27-4f16-bb3f-0e7b0f2d87aa">


Excel-based reports providing deeper insights into sales data.



## SQL Data Analysis

Data Loading: Loaded the sales dataset into SQL Server to perform more complex queries.

### Deliverables
- Retrieve the total sales for each product category. 
```SQL
select Product, sum(Sales) as TotalSales
from SalesData
group by Product
```

- Find the number of sales transactions in each region.
```SQL
select Region, count(OrderID) as Transactions
from SalesData
group by Region
```

- Find the highest-selling product by total sales value. 
```SQL
select top 1 Product, sum(Sales) as TotalSales
from SalesData
group by Product
order by TotalSales desc
```

- Calculate total revenue per product. 
```SQL
select Product, sum(Sales) as TotalRevenue
from SalesData
group by Product
```

- Calculate monthly sales totals for the current year. 
```SQL
select datename(month, OrderDate) as month, sum(Sales) as monthlySales
from SalesData
where year(OrderDate) = year(getdate())
group by datename(month, OrderDate), month(OrderDate)
order by month(OrderDate); 
```

- Find the top 5 customers by total purchase amount. 
```SQL
select top 5 Customer_Id, sum(Sales) as TotalPurchaseAmount
from SalesData
group by Customer_Id
order by TotalPurchaseAmount desc;
```

- Calculate the percentage of total sales contributed by each region. 
```SQL
select Region, 
       sum(Sales) as TotalSales,
       (sum(Sales) * 100.0 / (select sum(Sales) from SalesData)) as SalesPercentage
from SalesData
group by Region
```

- Identify products with no sales in the last quarter.  
```SQL
select Product
from SalesData
where OrderDate between dateadd(quarter, -1, getdate()) AND getdate()
group by Product
having sum(Sales) = 0
```

## Power BI Dashboard
Dashboard Creation: Designed an interactive Power BI dashboard to visualize the key insights derived from the Excel and SQL analysis.

### Visualization Elements
1. Sales overview, including total revenue, regional breakdown, and monthly sales trends.
2. Top-performing products, showcasing products with the highest sales.
3. Regional sales performance, allowing for in-depth comparison between different regions.

### Deliverables

<img width="728" alt="p1pbix" src="https://github.com/user-attachments/assets/b0740f89-bc53-4800-bfdd-8b7928a867b4">
   
## Key Takeaways 
1. Data Exploration: Gained hands-on experience in exploring and preparing retail sales data for analysis.
2. SQL & Data Querying: Developed and optimized SQL queries for extracting critical business insights from large datasets.
3. Data Visualization: Built an interactive Power BI dashboard to present and share findings with stakeholders in a visually compelling manner.
   
This project demonstrates my ability to perform end-to-end data analysis, from raw data exploration to advanced SQL querying and creating interactive dashboards to drive business decisions. The insights generated through this analysis can help a retail store optimize its sales strategies and improve overall performance.
