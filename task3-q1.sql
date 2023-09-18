WITH RankedEmployees AS (
    SELECT
        e.*,
        RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) AS salary_rank
    FROM employees e
)

SELECT *
FROM RankedEmployees
WHERE salary_rank = 1
