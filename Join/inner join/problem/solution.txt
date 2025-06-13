SELECT salesman.name As salesman,
      customer.cust_name AS customer,
     customer.city AS city
FROM salesman
INNER JOIN customer
 ON salesman.city= customer.city
      
