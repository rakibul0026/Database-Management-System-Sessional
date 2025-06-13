SELECT emp_department.dpt_name
FROM emp_department
INNER JOIN emp_details
ON emp_department.dpt_code = emp_details.emp_dept
GROUP BY emp_department.dpt_name
HAVING COUNT(emp_idno) > 2;
