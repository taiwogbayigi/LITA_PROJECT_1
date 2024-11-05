select * from SalesData

--retrieve the total sales for each product category. 
select Product, sum(Sales) as TotalSales
from SalesData
group by Product;

-- Find the number of sales transactions in each region.
select Region, count(OrderID) as Transactions
from SalesData
group by Region;

-- find the highest-selling product by total sales value. 
select top 1 Product, sum(Sales) as TotalSales
from SalesData
group by Product
order by TotalSales desc;

--calculate total revenue per product. 
select Product, sum(Sales) as TotalRevenue
from SalesData
group by Product;

-- calculate monthly sales totals for the current year. 
select datename(month, OrderDate) as month, sum(Sales) as monthlySales
from SalesData
where year(OrderDate) = year(getdate())
group by datename(month, OrderDate), month(OrderDate)
order by month(OrderDate); 


-- find the top 5 customers by total purchase amount. 
select top 5 Customer_Id, sum(Sales) as TotalPurchaseAmount
from SalesData
group by Customer_Id
order by TotalPurchaseAmount desc;

-- calculate the percentage of total sales contributed by each region. 
select Region, 
       sum(Sales) as TotalSales,
       (sum(Sales) * 100.0 / (select sum(Sales) from SalesData)) as SalesPercentage
from SalesData
group by Region;

--identify products with no sales in the last quarter.  
select Product
from SalesData
where OrderDate between dateadd(quarter, -1, getdate()) AND getdate()
group by Product
having sum(Sales) = 0;