CREATE VIEW departments_total_salary (dept_name, total_salary) AS
SELECT dept_name, SUM(salary)
FROM instructor
GROUP BY dept_name;

or

CREATE VIEW departments_total_salary AS
SELECT dept_name AS dept_name, SUM(salary) AS total_salary
FROM instructor
GROUP BY dept_name;
