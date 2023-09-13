WITH EmptyDepartments AS (
    SELECT D.DEPARTMENT_NAME 
    FROM HR."DEPARTMENTS" D
    LEFT JOIN HR."EMPLOYEES" E ON D."DEPARTMENT_ID" = E."DEPARTMENT_ID"
    WHERE E."DEPARTMENT_ID" IS NULL
)

SELECT DEPARTMENT_NAME AS dept_name, SUBSTR(DEPARTMENT_NAME, -3,3) AS "LAST_THREE_LETTERS"
 FROM EmptyDepartments;
