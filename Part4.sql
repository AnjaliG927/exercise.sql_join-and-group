SELECT * FROM products;

SELECT * FROM orderdetails;

SELECT prod.productLine 'Product Line', count(orderD.quantityOrdered) '# Sold'
FROM products prod JOIN orderdetails orderD
ON prod.productCode = orderD.productCode
GROUP BY prod.productLine
ORDER BY count(orderD.quantityOrdered) desc ;