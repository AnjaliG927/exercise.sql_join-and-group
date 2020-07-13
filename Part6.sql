

SELECT MonthName(paymentDate) 'Month',Year(paymentDate) 'Year', sum(amount) 'Payment_received'
FROM payments
GROUP BY MONTH ;

