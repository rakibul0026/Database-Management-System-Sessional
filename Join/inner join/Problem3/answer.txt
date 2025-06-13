SELECT
customer.cust_name AS "Customer Name",
customer.city AS "Customer City",
salesman.name AS "Salesman",
salesman.commission
FROM customer
INNER JOIN salesman
ON customer.salesman_id = salesman.salesman_id
WHERE salesman.commission > 0.12;
