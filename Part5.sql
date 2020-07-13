


SELECT CONCAT(emp.lastName,' ',emp.firstName) AS 'Sales_Rep',
COUNT(orderD.quantityOrdered) AS '#_Orders',
IFNULL((orderD.quantityOrdered * orderD.priceEach), 0) AS 'Total_Sales'
FROM employees emp 
left JOIN customers cus ON emp.employeeNumber=cus.salesRepEmployeeNumber
left JOIN orders orde ON cus.customerNumber=orde.customerNumber
left JOIN orderDetails orderD on orde.orderNumber=orderD.orderNumber
WHERE emp.jobTitle='Sales Rep'
GROUP BY Sales_Rep
ORDER BY Total_Sales DESC ;


