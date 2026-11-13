
-- ==================================================
-- PLP WEEK 4 DATABASE ASSIGNMENT
-- ADVANCED SQL QUERIES AND AGGREGATIONS
-- Student: Peter Ochihai Omiyang
-- ==================================================

-- QUESTION 1: TOTAL PAYMENT FOR EACH PAYMENT DATE
SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- QUESTION 2: AVERAGE CREDIT LIMIT FOR EACH CUSTOMER
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- QUESTION 3: TOTAL PRICE OF EACH PRODUCT
SELECT
    productCode,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode;

-- QUESTION 4: HIGHEST PAYMENT FOR EACH CHECK NUMBER
SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;

-- ==================================================
-- END OF WEEK 4 ASSIGNMENT
-- ==================================================
