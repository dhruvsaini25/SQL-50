1# Write your MySQL query statement below
2SELECT Product.product_name, year, price
3FROM Sales
4JOIN Product ON Sales.product_id=Product.product_id;