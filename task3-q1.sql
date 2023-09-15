WITH TASK3_Q1 AS (
	SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
)

SELECT *
FROM employees e
JOIN TASK3_Q1 a ON e.DEPARTMENT_ID  = a.DEPARTMENT_ID AND e.salary = a.max_salary;
