WITH TASK3_Q1 AS(
SELECT "DEPARTMENT_ID", MAX(SALARY)
FROM HR."EMPLOYEES"
GROUP BY "DEPARTMENT_ID" )

SELECT * FROM TASK3_Q1;
