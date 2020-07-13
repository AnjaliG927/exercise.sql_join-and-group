SELECT * FROM customers;

SELECT * FROM employees;


SELECT cus.customerName AS 'Customer Name',CONCAT(emp.firstName,' ',emp.lastName) AS 'Sales Rep'   
FROM customers cus JOIN employees emp ON cus.salesRepEmployeeNumber=emp.employeeNumber
ORDER BY cus.customerName ASC;
