SELECT
orders.ord_no,
orders.purch_amt,
customer.cust_name,
customer.city
FROM orders
INNER JOIN customer
ON orders.customer_id = customer.customer_id
WHERE orders.purch_amt BETWEEN 500 AND 2000;
