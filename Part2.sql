SELECT * from products;

SELECT * from orderdetails;


SELECT prod.productName 'Product Name', orderD.quantityOrdered 'Total # Order', (orderD.quantityOrdered * orderD.priceEach) AS 'Total Sale' 
FROM products prod 
JOIN orderdetails orderD 
ON prod.productCode=orderD.productCode
GROUP BY prod.productName
ORDER BY (orderD.quantityOrdered * orderD.priceEach) desc;